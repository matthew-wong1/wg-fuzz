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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const array0 = new Float32Array([1.0, 0.0, -0.25, 0.0, -1.0, 0.5, 1.0, 0.5, 0.0, 1.0, 0.0, 0.0, 0.5, 1.0, -0.5, -0.25, -0.75, -0.5, 0.75, 0.25, -0.25, 0.0, 0.5, 0.25, -0.25, 0.25, 0.25, -0.5, 0.75, -0.5, 0.25, -1.0, -0.25, -0.25, 0.0, -0.25, -0.25, -0.5, -0.75, 0.75, 0.5, 0.75, 0.25, 1.0, 0.0, 0.25, -1.0, 0.5, 0.0, 0.25, 0.75, -0.5, 0.25, 1.0, -1.0, 0.75, 1.0, -0.5, 0.0, 0.75, 1.0, -0.75, -0.75, -1.0, 0.75, -0.5, -0.75, -0.5, -1.0, 0.25, 0.0, 0.5, 0.0, -0.25, -1.0, 0.25, -1.0, 0.5, -1.0, -1.0, -0.75, 0.75, -0.75, 0.25, -1.0, -0.25, 0.25, -0.75, 1.0, -0.75, -0.25, 1.0, -0.25, -0.5, 0.75, -0.5, -0.75, 0.5, 0.25, 0.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    query000.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    query001.destroy()
    query300.destroy()
    const array1 = new Float32Array([-0.5, 0.25, -0.25, 0.25, 0.75, 0.25, 0.75, -0.5, 1.0, -0.5, 1.0, 0.5, -0.25, 0.5, -0.75, -0.75, -1.0, 0.5, -0.25, 0.5, -0.25, -0.5, 1.0, 0.25, 0.5, 0.5, 1.0, 0.0, 1.0, 0.0, 1.0, -1.0, -0.75, -1.0, 0.75, 0.75, 0.5, -0.5, 0.0, -0.25, -0.5, -0.25, 0.75, 1.0, 0.5, 0.25, -0.75, 1.0, 0.5, 0.25, -1.0, -0.25, -0.25, 0.75, -1.0, -0.75, -1.0, 0.25, 0.25, -1.0, 0.5, -0.75, 1.0, 0.25, 0.5, 0.75, -1.0, 0.75, 0.25, -0.25, 0.0, 1.0, 0.5, -1.0, 0.0, -0.25, -0.5, 1.0, 0.0, 1.0, 1.0, 0.5, -0.5, 0.5, -1.0, -0.5, 0.25, 0.75, 1.0, 0.0, 0.0, 0.25, -0.5, 1.0, 0.5, -0.5, -0.25, -0.75, -0.75, 1.0, ]);
    query100.destroy()
    query101.destroy()
    query000.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    
    
    query101.destroy()
    query001.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    query100.destroy()
    query002.destroy()
    query003.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([-1.0, -1.0, 0.75, 0.5, 0.0, 0.75, 0.25, -0.5, 1.0, -0.5, 0.0, -1.0, -0.5, 0.5, -1.0, 0.0, 0.75, -0.25, 0.25, 0.75, -0.5, 1.0, -0.25, -0.5, 0.5, 1.0, -1.0, 0.25, 0.25, 0.5, -0.25, -0.5, 0.25, 0.25, -0.25, 0.25, 0.25, 0.25, -0.75, -0.75, -0.25, -0.25, 1.0, -0.25, 0.5, -0.5, 1.0, 1.0, 0.5, 0.75, 0.5, -0.75, 0.25, -0.25, -1.0, -1.0, 0.5, -1.0, 1.0, -0.5, 0.0, 0.25, -1.0, 0.25, 0.0, 1.0, 0.75, 0.75, 0.0, -0.5, 0.5, 1.0, 0.5, -1.0, 1.0, -1.0, 0.0, -1.0, 0.25, -0.75, 1.0, 0.5, 0.5, 0.5, -1.0, -1.0, 0.25, -0.75, -1.0, -1.0, 0.0, 0.5, -0.75, 1.0, -0.75, -0.75, -1.0, 0.0, 0.0, -1.0, ]);
    query102.destroy()
    query100.destroy()
    query200.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query301.destroy()
    query202.destroy()
    query200.destroy()
    query001.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    query100.destroy()
    query004.destroy()
    query201.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    query004.destroy()
    query202.destroy()
    query101.destroy()
    query301.destroy()
    query002.destroy()
    query201.destroy()
    query202.destroy()
    query202.destroy()
    query000.destroy()
    query102.destroy()
    query101.destroy()
    query101.destroy()
    query001.destroy()
    query300.destroy()
    query300.destroy()
    query001.destroy()
    query004.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query202.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    query301.destroy()
    query400.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    query103.destroy()
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    query201.destroy()
    query102.destroy()
    query301.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    query200.destroy()
    query100.destroy()
    query500.destroy()
    query204.destroy()
    query101.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    query003.destroy()
    query302.destroy()
    query001.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    query502.destroy()
    query400.destroy()
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    query500.destroy()
    query500.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-1.0, 0.75, 0.5, 0.5, -0.5, 0.0, 1.0, 0.25, 1.0, 0.0, 1.0, 0.75, 1.0, -0.5, 0.75, 0.25, 0.0, 0.5, 1.0, -0.5, -0.5, 0.0, 0.5, -0.5, -0.5, 1.0, 0.25, -0.25, -0.25, 0.0, 0.5, 0.5, 0.75, 1.0, 1.0, -0.5, 1.0, 0.75, -0.5, -1.0, -1.0, 0.25, -0.25, -0.75, -1.0, -0.25, -0.5, 1.0, -0.25, -0.75, 0.5, 1.0, 1.0, -1.0, -0.75, -1.0, -0.5, 1.0, 0.25, 0.75, 1.0, -0.5, -1.0, 0.25, -1.0, -0.5, 0.25, 0.0, -0.75, -0.5, 0.5, -1.0, 0.75, -1.0, -1.0, -0.5, 0.25, 1.0, -0.75, 0.25, 1.0, -0.75, 0.0, 0.5, -0.25, -0.5, 0.25, 0.5, 0.5, -0.25, 0.75, 0.75, -0.5, -0.25, -0.75, 1.0, 1.0, 0.75, 0.25, 0.25, ]);
    query302.destroy()
    query501.destroy()
    query104.destroy()
    query202.destroy()
    query100.destroy()
    query104.destroy()
    query301.destroy()
    query004.destroy()
    query102.destroy()
    query401.destroy()
    query301.destroy()
    query300.destroy()
    query202.destroy()
    query200.destroy()
    query302.destroy()
    query301.destroy()
    query202.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    query101.destroy()
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query304.destroy()
    query503.destroy()
    query002.destroy()
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    query002.destroy()
    query102.destroy()
    query501.destroy()
    query203.destroy()
    query300.destroy()
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    query100.destroy()
    query200.destroy()
    query505.destroy()
    query003.destroy()
    query001.destroy()
    query302.destroy()
    query202.destroy()
    query302.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    query100.destroy()
    query104.destroy()
    query003.destroy()
    query200.destroy()
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    query505.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    query004.destroy()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    query001.destroy()
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    query700.destroy()
    query202.destroy()
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    query601.destroy()
    query500.destroy()
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    query304.destroy()
    query302.destroy()
    query205.destroy()
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    query602.destroy()
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    query602.destroy()
    query206.destroy()
    query401.destroy()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query103.destroy()
    query100.destroy()
    query502.destroy()
    query403.destroy()
    query304.destroy()
    const array4 = new Float32Array([-0.5, 0.0, -1.0, -0.75, -1.0, 0.0, -0.5, 0.75, -0.5, -1.0, 0.75, -0.25, -0.75, -0.25, 0.75, 0.75, -0.25, -0.75, 0.25, 0.5, 0.75, 0.25, -0.5, 0.25, 0.5, -0.25, 1.0, 1.0, 0.0, -0.75, -0.75, -0.5, 0.75, -0.5, -1.0, 0.5, -0.25, -0.75, 0.5, 0.75, -0.5, -0.5, -1.0, -1.0, -0.5, 1.0, -0.25, -0.25, -0.5, -0.5, 0.0, 0.75, -1.0, 0.0, 0.75, 0.75, 0.75, 1.0, -0.25, -0.25, -0.75, 0.5, -0.5, -0.75, -0.25, 0.0, -1.0, 0.5, -1.0, 1.0, -0.25, 1.0, 0.0, -1.0, -0.25, 0.25, -0.5, -0.5, 0.25, -0.25, -0.25, 0.25, -0.5, 0.0, 1.0, -0.5, -0.5, -0.5, 0.0, -1.0, 0.75, 1.0, 0.5, 0.0, -0.25, 0.5, 1.0, 0.0, -0.25, 0.5, ]);
    query601.destroy()
    query702.destroy()
    query204.destroy()
    query506.destroy()
    query306.destroy()
    query501.destroy()
    query302.destroy()
    query100.destroy()
    query500.destroy()
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    query004.destroy()
    query404.destroy()
    query502.destroy()
    query201.destroy()
    query400.destroy()
    query002.destroy()
    query103.destroy()
    query402.destroy()
    query601.destroy()
    query201.destroy()
    query600.destroy()
    query002.destroy()
    query406.destroy()
    query103.destroy()
    query501.destroy()
    query700.destroy()
    query202.destroy()
    const query507 = device50.createQuerySet({
        label: "query507",
        type: "occlusion",
        count: 32,
    });
    query506.destroy()
    query506.destroy()
    query603.destroy()
    query100.destroy()
    query404.destroy()
    query602.destroy()
    query206.destroy()
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query407.destroy()
    query604.destroy()
    query201.destroy()
    query106.destroy()
    query103.destroy()
    query307.destroy()
    query101.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const query508 = device50.createQuerySet({
        label: "query508",
        type: "occlusion",
        count: 32,
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    query107.destroy()
    query701.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query603.destroy()
    query307.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query203.destroy()
    query300.destroy()
    query602.destroy()
    query303.destroy()
    query502.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    query402.destroy()
    query307.destroy()
    query701.destroy()
    const query308 = device30.createQuerySet({
        label: "query308",
        type: "occlusion",
        count: 32,
    });
    query702.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query305.destroy()
    query306.destroy()
    query604.destroy()
    query503.destroy()
    query604.destroy()
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    query501.destroy()
    query200.destroy()
    query301.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    query004.destroy()
    query107.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    query105.destroy()
    query603.destroy()
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    query402.destroy()
    query400.destroy()
    query600.destroy()
    query402.destroy()
    query508.destroy()
    query701.destroy()
    query104.destroy()
    query205.destroy()
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query900.destroy()
    query603.destroy()
    query202.destroy()
    query006.destroy()
    query203.destroy()
    query700.destroy()
    query603.destroy()
    query404.destroy()
    query603.destroy()
    query102.destroy()
    const query509 = device50.createQuerySet({
        label: "query509",
        type: "occlusion",
        count: 32,
    });
    query304.destroy()
    query500.destroy()
    query101.destroy()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query304.destroy()
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    query603.destroy()
    query402.destroy()
    query404.destroy()
    query1100.destroy()
    query304.destroy()
    query502.destroy()
    query206.destroy()
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    query305.destroy()
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const query5010 = device50.createQuerySet({
        label: "query5010",
        type: "occlusion",
        count: 32,
    });
    query700.destroy()
    query302.destroy()
    query100.destroy()
    query800.destroy()
    query502.destroy()
    query205.destroy()
    const query606 = device60.createQuerySet({
        label: "query606",
        type: "occlusion",
        count: 32,
    });
    query507.destroy()
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    query604.destroy()
    query401.destroy()
    query104.destroy()
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    query801.destroy()
    query006.destroy()
    query403.destroy()
    query305.destroy()
    query601.destroy()
    query604.destroy()
    query003.destroy()
    const query5011 = device50.createQuerySet({
        label: "query5011",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    query307.destroy()
    query801.destroy()
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    query700.destroy()
    query400.destroy()
    query306.destroy()
    query105.destroy()
    query100.destroy()
    const query5012 = device50.createQuerySet({
        label: "query5012",
        type: "occlusion",
        count: 32,
    });
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    query504.destroy()
    query800.destroy()
    query000.destroy()
    query900.destroy()
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    query504.destroy()
    query500.destroy()
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query508.destroy()
    query605.destroy()
    query104.destroy()
    query602.destroy()
    query407.destroy()
    query504.destroy()
    query1101.destroy()
    query305.destroy()
    query402.destroy()
    const query408 = device40.createQuerySet({
        label: "query408",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    query700.destroy()
    query100.destroy()
    query203.destroy()
    query800.destroy()
    query206.destroy()
    query208.destroy()
    query005.destroy()
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    query900.destroy()
    query005.destroy()
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    query405.destroy()
    query005.destroy()
    query401.destroy()
    query401.destroy()
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query800.destroy()
    query202.destroy()
    query1000.destroy()
    query600.destroy()
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    query308.destroy()
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    query303.destroy()
    query701.destroy()
    query900.destroy()
    query003.destroy()
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query502.destroy()
    query801.destroy()
    query303.destroy()
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query409 = device40.createQuerySet({
        label: "query409",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    query605.destroy()
    query002.destroy()
    query703.destroy()
    query200.destroy()
    query704.destroy()
    const query309 = device30.createQuerySet({
        label: "query309",
        type: "occlusion",
        count: 32,
    });
    query700.destroy()
    query701.destroy()
    const query3010 = device30.createQuerySet({
        label: "query3010",
        type: "occlusion",
        count: 32,
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query301.destroy()
    query101.destroy()
    query501.destroy()
    query407.destroy()
    query701.destroy()
    query506.destroy()
    query602.destroy()
    query703.destroy()
    query100.destroy()
    query106.destroy()
    const query607 = device60.createQuerySet({
        label: "query607",
        type: "occlusion",
        count: 32,
    });
    query409.destroy()
    query406.destroy()
    query205.destroy()
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    query701.destroy()
    const query2011 = device20.createQuerySet({
        label: "query2011",
        type: "occlusion",
        count: 32,
    });
    query902.destroy()
    query007.destroy()
    query102.destroy()
    query900.destroy()
    query503.destroy()
    query605.destroy()
    query507.destroy()
    query900.destroy()
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    query204.destroy()
    query607.destroy()
    query505.destroy()
    const query905 = device90.createQuerySet({
        label: "query905",
        type: "occlusion",
        count: 32,
    });
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    query000.destroy()
    const query2012 = device20.createQuerySet({
        label: "query2012",
        type: "occlusion",
        count: 32,
    });
    query308.destroy()
    query104.destroy()
    query101.destroy()
    query404.destroy()
    query606.destroy()
    query403.destroy()
    query603.destroy()
    const query5013 = device50.createQuerySet({
        label: "query5013",
        type: "occlusion",
        count: 32,
    });
    query503.destroy()
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    query005.destroy()
    query606.destroy()
    query801.destroy()
    query1101.destroy()
    query300.destroy()
    query1100.destroy()
    query203.destroy()
    query1000.destroy()
}