  getSleepHours = day => {
  if( day === 'Monday'){
    return 8;
  }else if( day === 'Tuesday'){
    return 9;
  }else if ( day === 'Wednesday'){
    return 7;
  }else if ( day === 'Thursday'){
    return 7.5;
  }else if ( day === 'Friday'){
    return 8.5;
  }else if ( day === 'Saturday'){
    return 9.5;
  }else if ( day === 'Sunday'){
    return 10;
  }
};
console.log(getSleepHours('Monday'));

const getActualSleepHours = () =>
  getSleepHours('Monday') + getSleepHours('Tuesday') + getSleepHours('Wednesday')+ getSleepHours('Thursday') + getSleepHours('Friday') + getSleepHours('Saturday') + getSleepHours('Sunday')
;
const getIdealSleepHours = ()=>{
  const idealHours = 8;
  return idealHours * 7;
};
console.log(getActualSleepHours());
console.log(getIdealSleepHours());

const calculateSleepDebt = () => {
 actualSleepHours = getActualSleepHours();
 idealSleepHours = getIdealSleepHours();
if (actualSleepHours === idealSleepHours) {
  console.log('You have got ideal sleep.');
} else if (actualSleepHours > idealSleepHours) {
  console.log('You sleep more than needed.');
} else {
  console.log('You should get some rest.');
}
};
console.log(calculateSleepDebt());
