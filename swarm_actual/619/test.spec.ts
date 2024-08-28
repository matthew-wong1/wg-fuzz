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
    
    const array0 = new Float32Array([1.0, -0.25, 1.0, 0.25, -0.75, 0.0, 0.75, 0.0, -0.5, 0.25, -0.5, -0.75, 0.5, -1.0, -0.5, 0.5, -0.25, 0.25, -0.25, -0.25, -0.5, 0.0, -0.25, -1.0, 1.0, -1.0, -0.25, 0.25, -1.0, -0.25, -0.25, 0.25, -0.5, 0.0, -0.25, 1.0, 1.0, 0.75, 0.0, -0.75, 0.25, 1.0, -0.5, -0.75, 0.75, -0.5, 0.0, 0.0, -0.25, 0.25, 0.75, 0.25, -0.25, 1.0, 1.0, 0.5, 0.5, -1.0, -0.75, -0.5, -0.75, -1.0, 1.0, -0.25, 0.0, -0.75, -0.5, -1.0, -1.0, -0.5, 0.0, -1.0, 0.0, 0.0, 0.5, 0.25, -0.75, 1.0, -0.25, 0.0, -0.75, -0.25, 0.0, 1.0, 0.5, -0.75, -0.75, -1.0, -0.5, -0.75, -1.0, 1.0, -0.5, -0.25, 0.5, -0.25, -0.25, -0.25, 1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    const array1 = new Float32Array([-0.75, 0.0, -0.75, -0.25, 0.25, 0.75, 0.75, 0.0, -0.5, -0.5, 0.5, -0.5, -0.5, -0.75, -1.0, -0.5, 1.0, 0.0, -0.25, 0.75, 0.5, -0.25, 0.75, -0.25, 0.5, -0.75, 0.5, 0.75, -0.5, 0.5, -0.75, -0.75, -0.5, 1.0, 0.25, -0.75, -1.0, -1.0, -1.0, 0.5, 0.25, 0.25, -0.25, -1.0, 0.75, -0.75, 0.0, 0.25, -1.0, 0.75, -0.25, -0.75, -0.5, -0.5, 0.5, 0.25, -1.0, 0.75, -0.25, 0.75, -0.25, -0.25, 0.5, 0.5, 1.0, 0.25, -0.75, 0.0, -1.0, 0.25, -0.5, 0.0, 0.5, -0.5, -0.5, 1.0, 1.0, 1.0, -0.5, -1.0, 1.0, -0.25, 0.0, 1.0, -1.0, 0.0, 0.25, -1.0, 0.25, -0.25, -1.0, 0.0, 0.5, -0.75, 0.25, -1.0, -1.0, 0.5, -0.75, 0.0, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const array2 = new Float32Array([0.0, -1.0, -0.25, 1.0, -0.25, -1.0, 0.0, 1.0, -0.5, 0.75, -0.5, -0.5, 0.25, 0.75, -1.0, 0.75, 0.25, -0.25, 0.75, -1.0, -0.5, -0.75, 0.5, 0.75, -0.5, -0.75, 0.5, -1.0, -0.5, -1.0, -1.0, 1.0, -1.0, -0.75, 0.75, 1.0, 0.5, -0.25, -1.0, 0.0, -0.5, 1.0, -1.0, -0.25, -1.0, 0.75, 0.25, -0.5, 0.0, 0.75, 0.25, 0.0, -1.0, -0.25, 0.75, 0.5, -0.5, -1.0, 0.0, -0.5, 0.25, -0.5, 0.25, -1.0, 0.0, -0.25, 0.5, -1.0, -0.75, -0.5, 1.0, 0.25, 0.5, -0.75, -0.5, 0.25, 0.0, -0.25, 0.0, 1.0, 0.25, -0.25, 1.0, -0.5, -0.25, -0.5, -1.0, -0.25, 1.0, 0.0, -1.0, 0.5, -0.75, 0.5, -0.75, 0.0, 1.0, 1.0, 0.75, 0.5, ]);
    
    
    
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    query001.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    query002.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    query001.destroy()
    const array3 = new Float32Array([0.25, -0.75, -0.75, 0.75, -0.25, -1.0, -0.25, 0.0, 1.0, -0.25, 0.75, 0.75, 0.25, -1.0, 0.75, -1.0, 0.25, 0.5, 0.75, 0.5, -0.25, 0.25, 0.0, 0.5, -0.5, -0.25, 0.5, -0.5, 0.25, 0.25, 0.5, -1.0, 0.5, 0.75, 0.0, 0.25, -0.75, 0.0, -0.25, 0.0, 0.75, -0.75, -0.75, -0.5, 0.5, -1.0, 1.0, 0.5, 1.0, -1.0, -1.0, 0.75, -0.25, -0.25, -0.25, 0.5, 1.0, 0.75, -0.75, 1.0, 0.5, 0.25, 0.25, 1.0, -0.25, -1.0, -0.25, 0.0, 1.0, -0.75, 0.75, 0.25, 0.5, -0.25, 0.0, 0.0, 1.0, 1.0, 0.5, 0.5, 0.25, 0.5, -0.25, 0.75, -1.0, 0.75, -0.75, 1.0, 0.0, 0.75, -0.25, -0.75, -0.5, 0.5, -1.0, -0.75, -0.75, -1.0, -1.0, -0.25, ]);
    query000.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query002.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query000.destroy()
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    query001.destroy()
    
    render_bundle_encoder200.popDebugGroup();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query000.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    query200.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    query003.destroy()
    query003.destroy()
    query201.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    query004.destroy()
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const array4 = new Float32Array([-0.75, 0.75, -0.75, -0.25, -0.25, 0.5, -0.25, 0.0, -0.25, -1.0, 1.0, -1.0, -0.5, 1.0, -1.0, -0.75, 1.0, 0.5, -0.5, -0.5, -0.5, 0.5, -0.5, -0.25, -0.25, 0.25, 0.75, 1.0, -0.25, -0.25, -1.0, -1.0, 0.25, 1.0, -0.75, 0.25, -0.5, -0.25, 1.0, 1.0, 1.0, 1.0, 0.25, 0.0, 0.75, -0.75, -0.5, 0.25, -0.75, 1.0, -0.5, 0.75, 0.25, -0.75, -1.0, 1.0, 0.5, -0.25, 0.25, -1.0, 0.75, 1.0, 0.25, -0.75, 0.5, -0.75, 1.0, -0.75, 0.5, 0.5, -1.0, 0.0, 1.0, 0.25, 0.5, 0.75, 0.25, 1.0, 1.0, 0.5, 0.5, 1.0, 0.25, 0.25, 1.0, 0.25, -0.5, -0.25, -1.0, -0.5, -1.0, 1.0, -1.0, 0.5, -0.25, -0.5, 1.0, -1.0, -0.75, 0.5, ]);
    
    query202.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    query201.destroy()
    
    
    query201.destroy()
    render_bundle_encoder300.popDebugGroup();
    query202.destroy()
    query003.destroy()
    
    
    render_bundle_encoder202.popDebugGroup();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([-0.25, -0.75, -0.5, 0.25, -0.25, 1.0, 0.5, -0.75, -0.5, -0.5, 1.0, 0.75, 0.0, 0.0, 0.75, 0.25, 0.75, 0.5, -0.5, 0.25, 0.0, 1.0, -1.0, 0.5, 0.0, 0.5, 0.0, -0.5, -0.5, -0.75, -1.0, 0.25, 0.75, -1.0, -1.0, 0.5, -0.25, -0.25, 1.0, -0.25, 0.75, 1.0, 0.75, 1.0, 0.75, 0.5, 1.0, 0.5, -0.75, 0.75, 0.5, -0.25, 0.0, -0.5, 0.25, 0.0, 0.5, -0.5, -0.25, 1.0, 0.5, -0.25, 0.5, -0.25, -1.0, -0.5, 0.0, 1.0, -1.0, -1.0, -0.75, 1.0, 0.5, 0.25, -0.75, -0.75, -0.75, -0.5, -0.75, 0.5, 0.5, 0.25, -0.25, 0.5, 0.5, 0.25, 1.0, -0.5, -0.25, -1.0, -0.5, 0.0, -1.0, 0.75, 0.0, 0.75, 0.25, 0.0, 0.5, -0.25, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query002.destroy()
    query401.destroy()
    query200.destroy()
    render_bundle_encoder300.popDebugGroup();
    query003.destroy()
    
    
    query200.destroy()
    query003.destroy()
    query003.destroy()
    
    
    query400.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    query200.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query301.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    render_bundle_encoder400.popDebugGroup();
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    query003.destroy()
    query204.destroy()
    render_bundle_encoder200.popDebugGroup();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query401.destroy()
    query001.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query000.destroy()
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    query004.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder301.popDebugGroup();
    query001.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.popDebugGroup();
    query201.destroy()
    query402.destroy()
    const array6 = new Float32Array([-0.75, 1.0, 1.0, 0.25, 0.75, -0.5, -0.5, -0.25, 0.75, 0.75, -0.75, -1.0, 0.5, 1.0, -1.0, -0.25, -0.75, 0.75, 0.25, 0.0, -1.0, -0.25, -0.75, 0.25, 0.0, -0.75, -0.75, -0.25, -0.5, -0.5, 0.75, 0.5, 0.75, 0.0, 1.0, 0.75, 0.5, 0.25, 0.25, -0.75, -0.75, -0.5, -0.5, 0.0, -0.75, -1.0, -0.25, 0.75, -0.25, 0.5, 1.0, -0.5, 0.25, -0.5, 1.0, 0.75, -0.25, -0.75, 1.0, -1.0, 0.5, 1.0, 0.25, 0.25, 0.75, 0.75, 0.75, -0.5, -0.75, -0.5, 0.5, 0.75, -1.0, 0.75, 0.75, 0.75, -0.5, 0.25, -0.75, 0.75, 0.75, 1.0, -0.5, 1.0, -0.25, 0.25, -1.0, 0.0, 0.5, 0.5, 0.0, 0.0, 0.75, 1.0, 0.0, 0.0, -0.5, 0.5, -0.5, -0.25, ]);
    render_bundle_encoder001.popDebugGroup();
    
    
    const array7 = new Float32Array([-0.25, 1.0, -0.75, -0.75, -1.0, -0.75, 0.5, -0.75, 1.0, -0.25, 0.25, 1.0, 0.75, 0.0, 0.0, -0.5, 0.75, 0.0, 0.25, -0.75, 1.0, 0.25, -1.0, 0.75, -0.75, -0.75, -0.75, -0.25, -0.75, -1.0, -1.0, -1.0, -0.5, -1.0, 0.75, -0.75, -0.25, 0.0, -0.5, -0.5, 1.0, -1.0, -1.0, 0.75, 0.75, -0.75, 1.0, 0.75, -0.25, 0.25, -1.0, 0.5, 0.75, 0.5, -0.75, -0.5, 0.5, -0.5, -0.75, -0.5, 0.5, -0.75, -1.0, 0.0, 0.5, 0.5, -0.75, 0.5, 0.5, -0.75, -1.0, -1.0, -1.0, 0.0, 0.75, 0.75, 0.0, 0.25, -1.0, -1.0, 0.25, 0.5, -0.5, -0.75, 0.75, 0.0, 1.0, 0.75, -1.0, -0.5, 0.75, 0.5, 0.75, 0.75, 0.75, -1.0, 0.75, 0.75, -0.25, 0.0, ]);
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    query502.destroy()
    
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    query202.destroy()
    query201.destroy()
    
    query000.destroy()
    query200.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.popDebugGroup();
    
    query203.destroy()
    query201.destroy()
    const array8 = new Float32Array([-0.5, 1.0, 1.0, -1.0, 0.0, -0.75, -0.25, -1.0, -0.25, -0.75, 0.25, 0.75, -0.25, 0.75, 0.75, -1.0, 0.75, 0.25, 1.0, 1.0, -0.25, 0.5, 0.5, 0.0, 0.75, 0.5, 0.75, 0.0, 0.0, -0.25, -0.25, 0.75, 0.25, 0.0, -0.25, 0.75, 0.75, 0.75, 1.0, -1.0, 0.0, -0.5, 1.0, 0.5, 0.0, 1.0, -0.5, 0.75, 0.0, 0.5, 0.0, -0.25, 1.0, 0.5, -0.25, -1.0, -1.0, 0.0, 0.0, 1.0, 1.0, 0.75, 0.5, -0.25, 0.5, 0.75, 0.5, 0.25, 1.0, 0.5, -0.25, 0.25, 0.5, 0.25, -0.5, -1.0, 1.0, -0.25, -0.5, -0.5, -0.25, -0.75, -0.5, -0.25, -0.5, 0.5, 0.25, 0.25, -1.0, -0.5, -0.75, 0.5, 1.0, -0.5, 0.5, -0.5, 0.0, -0.25, -1.0, -0.75, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    
    query401.destroy()
    query203.destroy()
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    query203.destroy()
    query003.destroy()
    
    
    render_bundle_encoder000.popDebugGroup();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query402.destroy()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    query003.destroy()
    const array9 = new Float32Array([-0.5, -0.25, 0.5, -1.0, 1.0, 0.5, 0.0, -0.75, 0.75, -0.5, -0.25, -1.0, 0.5, 0.5, 0.75, 0.5, 0.0, -1.0, -0.25, 0.5, -1.0, 0.0, -0.25, -0.5, 1.0, 0.75, 0.5, 0.5, -1.0, 0.5, 0.5, -0.25, 0.75, 0.75, -0.75, -1.0, -0.5, -0.25, 0.5, -0.5, 0.0, -0.75, -1.0, -0.5, 0.25, 1.0, 0.0, 0.0, 0.75, -0.25, -1.0, -1.0, 0.5, -0.75, 0.0, 1.0, 0.75, -0.75, 1.0, 0.5, 0.25, -0.5, -0.75, 1.0, 0.75, 0.25, -0.75, 0.75, -0.75, 0.5, -0.75, 0.75, 1.0, -1.0, -1.0, -0.25, -0.25, -1.0, -0.5, -0.5, 0.75, -1.0, 0.25, 0.25, -0.25, 0.25, -0.25, 0.5, -1.0, -0.25, 0.75, 0.0, -0.75, -0.5, -0.5, -0.5, -0.75, 0.5, 0.5, 0.5, ]);
    query000.destroy()
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    query204.destroy()
    query001.destroy()
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    query500.destroy()
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    query002.destroy()
    
    query502.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    query402.destroy()
    const array10 = new Float32Array([0.0, -0.25, -0.25, 0.75, 0.75, 0.0, 0.75, 0.75, -0.25, -0.5, -0.75, 0.0, -0.75, 1.0, 0.0, -1.0, 0.5, 1.0, -0.25, 0.0, 1.0, 0.5, 0.0, 0.25, -0.5, -1.0, -0.5, -0.5, 1.0, 0.0, 0.5, 0.25, 0.0, -0.75, 0.0, 0.25, -0.25, -0.5, 1.0, -0.75, 0.75, 0.0, 0.75, -0.25, 0.75, -0.5, -1.0, -1.0, -1.0, 0.5, -1.0, 0.0, 1.0, 0.0, 0.75, 0.75, 0.5, -1.0, -0.75, -0.5, -0.75, 0.5, 0.25, -0.5, -1.0, -0.25, -0.5, -1.0, -0.75, -1.0, 0.5, -1.0, -0.5, 0.75, 0.75, 0.25, 0.75, 0.5, 0.0, 0.5, 0.25, -1.0, 1.0, 0.25, -0.25, -1.0, -1.0, -0.75, -1.0, -0.25, -0.5, 0.0, -1.0, 0.25, 0.0, 0.0, 0.75, -1.0, -0.5, 0.0, ]);
    
    
    query300.destroy()
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const array11 = new Float32Array([-0.25, -0.5, 1.0, 0.75, 0.75, 1.0, 0.0, 0.25, 0.0, -0.5, 0.75, 0.25, 1.0, 0.5, 0.5, 0.75, 0.25, -1.0, 1.0, 0.25, 0.5, 0.75, -0.75, -0.5, 0.5, 0.5, -0.75, -0.5, -0.25, 1.0, 0.5, -0.25, 0.25, -0.25, -0.75, -0.25, 1.0, -1.0, 0.0, 0.0, 1.0, -0.5, 0.25, 0.75, 0.75, -1.0, 0.5, -1.0, -0.75, 0.25, -0.5, 0.0, -0.5, 1.0, 0.0, 1.0, -0.25, -0.5, -0.5, 0.0, -0.25, -0.25, 0.25, 0.5, -0.25, -0.25, -0.5, 0.5, -0.5, -1.0, -0.5, 0.25, -0.75, 0.25, -0.25, 0.75, 0.75, -0.25, -0.5, 0.0, -0.5, -0.25, -1.0, 1.0, 0.25, 0.75, -0.75, 1.0, -0.25, 0.25, 1.0, 0.25, -0.75, 0.75, 0.25, 0.0, 1.0, -1.0, 1.0, -0.75, ]);
    render_bundle_encoder002.popDebugGroup();
    query201.destroy()
    
    query205.destroy()
    query402.destroy()
    render_bundle_encoder001.popDebugGroup();
    query300.destroy()
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query201.destroy()
    query303.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    query502.destroy()
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder500.popDebugGroup();
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    query502.destroy()
    query300.destroy()
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    query207.destroy()
    query000.destroy()
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.popDebugGroup();
    query000.destroy()
    
    
    
    query206.destroy()
    render_bundle_encoder200.popDebugGroup();
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    query505.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    query501.destroy()
    query503.destroy()
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder502.popDebugGroup();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    
    query207.destroy()
    const array12 = new Float32Array([-0.25, 1.0, -0.5, -0.75, 0.25, 0.0, 0.5, -0.25, -0.75, 0.5, 0.0, -0.5, 0.75, -1.0, 0.75, -0.25, 0.5, 1.0, 0.5, -0.5, 0.75, -0.75, 0.5, 0.75, 0.5, 0.75, 0.75, -0.75, 0.75, 0.5, -0.5, 0.5, -0.25, 0.5, -0.25, 0.0, 0.0, 0.75, -1.0, 1.0, -0.75, 0.25, 0.75, -0.5, 0.75, 1.0, -0.75, 1.0, -0.25, 0.25, 1.0, 0.25, -0.75, 1.0, -0.75, -0.5, 0.5, -0.25, 0.5, 0.25, -1.0, 0.5, -0.25, -0.25, -0.25, 0.25, -1.0, 0.75, 1.0, -1.0, 0.0, 0.0, 1.0, 0.25, 1.0, -0.25, 0.75, 0.75, 1.0, 1.0, -0.25, 0.5, 0.0, 0.75, -0.25, 0.75, -1.0, -0.5, 0.0, -0.75, 0.25, -1.0, 1.0, 0.25, 1.0, -0.75, 1.0, -0.75, -0.25, 1.0, ]);
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query004.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    query204.destroy()
    
    query200.destroy()
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder501.popDebugGroup();
    
    query303.destroy()
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query500.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const array13 = new Float32Array([0.75, 1.0, -0.5, 0.5, -0.25, -1.0, 0.0, -0.75, 1.0, -1.0, -0.5, 0.5, 0.0, 1.0, 0.75, -0.25, 0.5, -1.0, 0.0, 0.5, -0.75, -1.0, 0.5, -0.75, -0.75, 0.5, -0.75, -0.5, 0.0, 0.0, 0.0, -0.5, 0.25, 1.0, 1.0, -1.0, 0.25, -0.75, 0.25, -0.5, -0.75, 0.0, -0.75, -1.0, 0.25, -1.0, 0.75, 0.75, 0.25, 0.5, 1.0, 1.0, 0.25, 1.0, 0.5, -0.5, -0.25, -0.5, -1.0, -1.0, 0.0, 0.75, 0.5, 0.75, -0.5, -1.0, -1.0, -1.0, 0.25, 0.0, 0.5, -0.5, 0.75, 0.75, -0.25, -1.0, 0.75, 0.0, -1.0, -0.75, 0.5, 1.0, -0.75, -1.0, -0.75, 0.5, -0.5, 1.0, -0.25, -0.75, 0.75, 1.0, 0.5, 0.5, -0.75, 0.0, 1.0, 0.0, -0.5, 0.5, ]);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query401.destroy()
    
    render_bundle_encoder801.pushDebugGroup("group_marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    query400.destroy()
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    query206.destroy()
    query205.destroy()
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    query204.destroy()
    query404.destroy()
    render_bundle_encoder802.pushDebugGroup("group_marker");
    
    query400.destroy()
    render_bundle_encoder600.popDebugGroup();
    query504.destroy()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    query700.destroy()
    render_bundle_encoder802.popDebugGroup();
    query401.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query404.destroy()
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    query207.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    query200.destroy()
    
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    query203.destroy()
    query504.destroy()
    
    
    query005.destroy()
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder502.popDebugGroup();
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.popDebugGroup();
    query301.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    query500.destroy()
    render_bundle_encoder001.popDebugGroup();
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    query205.destroy()
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const array14 = new Float32Array([-0.25, 0.0, -0.25, 1.0, 1.0, 0.5, 0.75, 0.5, -1.0, -0.5, 0.5, -0.25, -0.5, 1.0, -0.75, 0.0, -0.25, -1.0, -0.25, -1.0, 0.0, -0.75, 0.75, 0.75, -0.75, 0.75, 0.75, 0.0, -1.0, 0.25, -0.25, 1.0, 0.75, -1.0, 0.5, 0.75, 0.0, -0.5, -0.25, 0.0, 0.75, 0.75, 1.0, -0.5, -0.25, -0.25, 1.0, 0.75, 1.0, 0.75, -0.75, 0.75, 0.75, -0.25, -0.75, 0.5, 0.0, 0.75, -0.25, 0.5, -0.5, -0.5, 1.0, 0.75, -0.75, 0.25, 0.25, -0.75, -0.25, -0.25, 0.25, 0.75, 1.0, 0.75, -1.0, -0.75, 0.25, 0.75, -0.25, -0.25, -0.5, -0.5, -1.0, 0.25, 0.0, -0.5, -0.25, 0.0, 0.5, 0.25, -0.75, -0.5, 0.5, 0.0, 1.0, -0.75, -1.0, -0.25, 1.0, 0.5, ]);
    
    render_bundle_encoder501.popDebugGroup();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder401.popDebugGroup();
    query1000.destroy()
    render_bundle_encoder700.popDebugGroup();
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    query500.destroy()
    
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    
    query402.destroy()
    
    render_bundle_encoder801.popDebugGroup();
    query304.destroy()
    
    
    
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    query003.destroy()
    query203.destroy()
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    query206.destroy()
    query802.destroy()
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder800.popDebugGroup();
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    
    query500.destroy()
    
    
    query503.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.popDebugGroup();
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    query400.destroy()
    render_bundle_encoder1300.popDebugGroup();
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    query001.destroy()
    render_bundle_encoder202.popDebugGroup();
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder702.pushDebugGroup("group_marker");
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    query800.destroy()
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query401.destroy()
    query004.destroy()
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    query700.destroy()
    render_bundle_encoder500.popDebugGroup();
    query800.destroy()
    
    query205.destroy()
    
    
    
    
    
}