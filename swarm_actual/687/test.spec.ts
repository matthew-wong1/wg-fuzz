export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device20.destroy();
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query101.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query100.destroy()
    device10.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device40.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device50.destroy();
    device60.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    
    device80.destroy();
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device70.destroy();
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    
    query1001.destroy()
    device100.destroy();
    
    device90.destroy();
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device110.destroy();
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    
    device120.destroy();
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    device130.destroy();
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    device170.destroy();
    
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query1502 = device150.createQuerySet({
        label: "query1502",
        type: "occlusion",
        count: 32,
    });
    query1400.destroy()
    
    
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    query1502.destroy()
    
    
    
    
    
    const query1402 = device140.createQuerySet({
        label: "query1402",
        type: "occlusion",
        count: 32,
    });
    query1500.destroy()
    device160.destroy();
    const query1503 = device150.createQuerySet({
        label: "query1503",
        type: "occlusion",
        count: 32,
    });
    query1501.destroy()
    
    query1502.destroy()
    
    
    device150.destroy();
    query1402.destroy()
    query1400.destroy()
    
    const query1403 = device140.createQuerySet({
        label: "query1403",
        type: "occlusion",
        count: 32,
    });
    
    
    query1401.destroy()
    
    
    
    
    
    
    
    query1400.destroy()
    query1403.destroy()
    query1401.destroy()
    
    const query1404 = device140.createQuerySet({
        label: "query1404",
        type: "occlusion",
        count: 32,
    });
    
    
    query1401.destroy()
    const query1405 = device140.createQuerySet({
        label: "query1405",
        type: "occlusion",
        count: 32,
    });
    query1402.destroy()
    
    query1403.destroy()
    query1402.destroy()
    query1401.destroy()
    const query1406 = device140.createQuerySet({
        label: "query1406",
        type: "occlusion",
        count: 32,
    });
    query1406.destroy()
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    query1402.destroy()
    query1401.destroy()
    query1400.destroy()
    query1404.destroy()
    query1401.destroy()
    query1401.destroy()
    query1401.destroy()
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query1400.destroy()
    query1403.destroy()
    query1406.destroy()
    query1405.destroy()
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    query1403.destroy()
    device140.destroy();
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    
    
    
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const query1900 = device190.createQuerySet({
        label: "query1900",
        type: "occlusion",
        count: 32,
    });
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    const query1801 = device180.createQuerySet({
        label: "query1801",
        type: "occlusion",
        count: 32,
    });
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    
    query1800.destroy()
    
    query1801.destroy()
    const query1802 = device180.createQuerySet({
        label: "query1802",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const query1803 = device180.createQuerySet({
        label: "query1803",
        type: "occlusion",
        count: 32,
    });
    device180.destroy();
    const query1901 = device190.createQuerySet({
        label: "query1901",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query1902 = device190.createQuerySet({
        label: "query1902",
        type: "occlusion",
        count: 32,
    });
    device200.destroy();
    query1900.destroy()
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query1902.destroy()
    query1900.destroy()
    
    query1900.destroy()
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    const query1903 = device190.createQuerySet({
        label: "query1903",
        type: "occlusion",
        count: 32,
    });
    const query1904 = device190.createQuerySet({
        label: "query1904",
        type: "occlusion",
        count: 32,
    });
    const query1905 = device190.createQuerySet({
        label: "query1905",
        type: "occlusion",
        count: 32,
    });
    
    query1904.destroy()
    query1903.destroy()
    
    query1903.destroy()
    query1902.destroy()
    query1900.destroy()
    query1903.destroy()
    
    const query1906 = device190.createQuerySet({
        label: "query1906",
        type: "occlusion",
        count: 32,
    });
    
    const adapter22 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    query1905.destroy()
    const adapter23 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device210.destroy();
    const adapter24 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query1905.destroy()
    device190.destroy();
    const device240 = await adapter24!.requestDevice({ label: "device240" });
    device240.destroy();
    const adapter25 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device250 = await adapter25!.requestDevice({ label: "device250" });
    
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    
    
    
    
    
    
    
    const adapter26 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter27 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device260 = await adapter26!.requestDevice({ label: "device260" });
    const device270 = await adapter27!.requestDevice({ label: "device270" });
    device230.destroy();
    const query2700 = device270.createQuerySet({
        label: "query2700",
        type: "occlusion",
        count: 32,
    });
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    const query2200 = device220.createQuerySet({
        label: "query2200",
        type: "occlusion",
        count: 32,
    });
    query2700.destroy()
    const query2600 = device260.createQuerySet({
        label: "query2600",
        type: "occlusion",
        count: 32,
    });
    device270.destroy();
    
    const query2601 = device260.createQuerySet({
        label: "query2601",
        type: "occlusion",
        count: 32,
    });
    
    query2200.destroy()
    query2200.destroy()
    
    
    const query2602 = device260.createQuerySet({
        label: "query2602",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter28 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device280 = await adapter28!.requestDevice({ label: "device280" });
    const query2603 = device260.createQuerySet({
        label: "query2603",
        type: "occlusion",
        count: 32,
    });
    query2603.destroy()
    
    query2601.destroy()
    const query2800 = device280.createQuerySet({
        label: "query2800",
        type: "occlusion",
        count: 32,
    });
    const query2201 = device220.createQuerySet({
        label: "query2201",
        type: "occlusion",
        count: 32,
    });
    
    query2200.destroy()
    const query2500 = device250.createQuerySet({
        label: "query2500",
        type: "occlusion",
        count: 32,
    });
    query2601.destroy()
    
    
    device250.destroy();
    const query2604 = device260.createQuerySet({
        label: "query2604",
        type: "occlusion",
        count: 32,
    });
    const query2202 = device220.createQuerySet({
        label: "query2202",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    query2604.destroy()
    
    query2202.destroy()
    const query2203 = device220.createQuerySet({
        label: "query2203",
        type: "occlusion",
        count: 32,
    });
    
    
    device220.destroy();
    
    query2601.destroy()
    query2800.destroy()
    
    
    const query2801 = device280.createQuerySet({
        label: "query2801",
        type: "occlusion",
        count: 32,
    });
    device260.destroy();
    const query2802 = device280.createQuerySet({
        label: "query2802",
        type: "occlusion",
        count: 32,
    });
    query2800.destroy()
    
    
    query2801.destroy()
    const query2803 = device280.createQuerySet({
        label: "query2803",
        type: "occlusion",
        count: 32,
    });
    
    const query2804 = device280.createQuerySet({
        label: "query2804",
        type: "occlusion",
        count: 32,
    });
    const adapter29 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device290 = await adapter29!.requestDevice({ label: "device290" });
    
    const query2900 = device290.createQuerySet({
        label: "query2900",
        type: "occlusion",
        count: 32,
    });
    
    query2802.destroy()
    
    
    query2802.destroy()
    device280.destroy();
    const adapter30 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query2901 = device290.createQuerySet({
        label: "query2901",
        type: "occlusion",
        count: 32,
    });
    
    
    query2901.destroy()
    const adapter31 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device290.destroy();
    const device300 = await adapter30!.requestDevice({ label: "device300" });
    const adapter32 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device310 = await adapter31!.requestDevice({ label: "device310" });
    
    
    
    const device320 = await adapter32!.requestDevice({ label: "device320" });
    
    
    
    
    
    device310.destroy();
    device300.destroy();
    
    
    
    
    const query3200 = device320.createQuerySet({
        label: "query3200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const query3201 = device320.createQuerySet({
        label: "query3201",
        type: "occlusion",
        count: 32,
    });
    
    
    device320.destroy();
    const adapter33 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter34 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device330 = await adapter33!.requestDevice({ label: "device330" });
    const adapter35 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device340 = await adapter34!.requestDevice({ label: "device340" });
    
    device340.destroy();
    device330.destroy();
    
    
    const device350 = await adapter35!.requestDevice({ label: "device350" });
    
    const adapter36 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter37 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device360 = await adapter36!.requestDevice({ label: "device360" });
    const query3500 = device350.createQuerySet({
        label: "query3500",
        type: "occlusion",
        count: 32,
    });
    
    device350.destroy();
    device360.destroy();
    const device370 = await adapter37!.requestDevice({ label: "device370" });
    
    
    
    
    const adapter38 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter39 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device370.destroy();
    
    const device380 = await adapter38!.requestDevice({ label: "device380" });
    const query3800 = device380.createQuerySet({
        label: "query3800",
        type: "occlusion",
        count: 32,
    });
    
    
    const query3801 = device380.createQuerySet({
        label: "query3801",
        type: "occlusion",
        count: 32,
    });
    const device390 = await adapter39!.requestDevice({ label: "device390" });
    query3800.destroy()
    
    
    
    
    
    
    
    const query3802 = device380.createQuerySet({
        label: "query3802",
        type: "occlusion",
        count: 32,
    });
    device380.destroy();
    
    const adapter40 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    
    const query3900 = device390.createQuerySet({
        label: "query3900",
        type: "occlusion",
        count: 32,
    });
    
    const query3901 = device390.createQuerySet({
        label: "query3901",
        type: "occlusion",
        count: 32,
    });
    
    const device400 = await adapter40!.requestDevice({ label: "device400" });
    
    
    
    const adapter41 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    query3901.destroy()
    query3901.destroy()
    query3901.destroy()
    
    
    const adapter42 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query4000 = device400.createQuerySet({
        label: "query4000",
        type: "occlusion",
        count: 32,
    });
    
    query4000.destroy()
    const query3902 = device390.createQuerySet({
        label: "query3902",
        type: "occlusion",
        count: 32,
    });
    query3900.destroy()
    const query3903 = device390.createQuerySet({
        label: "query3903",
        type: "occlusion",
        count: 32,
    });
    const query3904 = device390.createQuerySet({
        label: "query3904",
        type: "occlusion",
        count: 32,
    });
    device400.destroy();
    
    query3904.destroy()
    const device420 = await adapter42!.requestDevice({ label: "device420" });
    
    const adapter43 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query3900.destroy()
    device420.destroy();
    query3901.destroy()
    query3903.destroy()
    query3902.destroy()
    device390.destroy();
    
    const device430 = await adapter43!.requestDevice({ label: "device430" });
    const device410 = await adapter41!.requestDevice({ label: "device410" });
    
    
    
    
    
    const query4300 = device430.createQuerySet({
        label: "query4300",
        type: "occlusion",
        count: 32,
    });
    
    const query4301 = device430.createQuerySet({
        label: "query4301",
        type: "occlusion",
        count: 32,
    });
    
    device430.destroy();
    
    
    const query4100 = device410.createQuerySet({
        label: "query4100",
        type: "occlusion",
        count: 32,
    });
    device410.destroy();
    const adapter44 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device440 = await adapter44!.requestDevice({ label: "device440" });
    
    const query4400 = device440.createQuerySet({
        label: "query4400",
        type: "occlusion",
        count: 32,
    });
    
}