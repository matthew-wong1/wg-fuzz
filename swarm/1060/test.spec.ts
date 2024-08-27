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
    
    const array0 = new Float32Array([0.5, -0.75, -0.75, -0.5, 0.75, -0.25, -1.0, -0.25, -0.5, -0.25, -0.75, 1.0, -1.0, -0.5, 0.75, 0.5, 0.75, 0.75, -0.75, 0.5, 0.5, 1.0, 0.75, -1.0, 0.75, -0.25, -0.5, 0.75, 0.5, -0.75, 0.0, 1.0, 0.0, 0.75, -1.0, -0.25, -0.25, -1.0, 0.75, -1.0, 1.0, 0.0, -0.5, -1.0, 0.5, -0.5, 0.5, 0.5, -0.25, -1.0, 0.25, -0.5, -0.25, -0.5, 0.75, -1.0, -0.75, 0.25, 1.0, -0.25, -0.5, 0.75, -0.25, 0.25, 0.75, -0.75, 0.5, -0.75, 0.5, 1.0, -1.0, 1.0, -0.25, -0.75, -1.0, -1.0, 0.75, -0.25, -0.25, -0.25, -0.25, -0.25, -1.0, 0.0, -1.0, -0.5, -0.5, 0.25, -1.0, 1.0, -0.75, -1.0, 0.75, 1.0, 0.75, 0.75, 0.0, 0.5, 0.0, -0.75, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.5, -0.5, -1.0, 0.5, -0.5, 0.75, 1.0, 0.25, 0.75, 1.0, -0.75, -0.75, -1.0, 0.0, 0.25, -0.5, 1.0, -1.0, -0.5, -0.5, 0.25, 0.5, -0.5, -0.75, -1.0, 0.75, -0.5, 0.25, 1.0, 0.5, -1.0, 0.5, 1.0, 0.25, -0.75, 0.0, -0.5, -0.5, -0.75, -0.25, 0.5, -0.5, -0.5, 0.5, 1.0, 1.0, 1.0, 0.25, -0.25, 0.75, 1.0, 0.75, -1.0, 0.25, 1.0, 0.25, -0.75, -0.75, 0.75, 0.25, 0.25, 0.75, -0.5, -0.5, 0.5, 0.75, -1.0, -0.25, 0.25, 1.0, -0.25, 0.5, -0.75, 1.0, 0.25, 0.0, 0.25, -0.5, 0.0, 0.25, 1.0, 0.75, -0.75, 0.75, 0.25, -0.75, 0.25, -0.25, 0.75, 1.0, 0.25, 0.25, 0.25, -1.0, -1.0, 1.0, -1.0, -1.0, -0.25, 1.0, ]);
    const array2 = new Float32Array([-0.75, -0.75, 1.0, -0.5, -0.25, 0.75, 0.75, 0.25, 1.0, 0.5, -0.5, 1.0, 0.75, 0.5, -1.0, 0.25, -0.25, 1.0, -0.75, -0.25, -0.5, 1.0, 0.75, -1.0, 0.75, -0.5, 0.0, 1.0, 0.75, -1.0, -1.0, -0.25, 0.5, 0.75, 0.0, -0.25, 1.0, -0.25, -0.5, 1.0, 0.75, -0.75, -0.75, 1.0, 0.0, 0.0, 0.0, 1.0, 0.5, 0.0, 0.5, 0.0, 1.0, -0.25, 0.25, -0.5, 0.0, -0.25, 0.75, -1.0, 0.25, -0.75, 1.0, 0.75, 0.0, 0.5, 1.0, -1.0, 1.0, 0.0, 1.0, -0.25, 0.0, 1.0, -0.75, -1.0, 0.5, 0.0, 0.5, -0.25, -0.75, -0.25, 0.25, -1.0, -1.0, 1.0, 0.0, 0.0, -1.0, 0.5, -0.75, 0.25, 1.0, 1.0, -0.5, -0.75, -1.0, 0.75, 0.75, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array3 = new Float32Array([0.25, -0.5, -0.75, 0.25, 0.25, 1.0, -0.75, -0.75, 0.5, 0.5, 0.75, 0.5, 1.0, 0.0, 0.0, -0.25, -1.0, -0.25, 1.0, 0.75, -0.75, 0.0, 0.5, 0.5, -1.0, 0.0, -0.5, 0.75, 1.0, -0.25, 0.0, 0.25, 1.0, -0.25, 0.75, -0.25, 0.75, 0.5, -1.0, -0.75, -0.25, 0.75, 0.75, 0.0, 0.75, -0.75, 0.25, -0.75, 0.0, 1.0, 0.25, 0.25, 0.5, -1.0, -1.0, -0.25, -0.5, 1.0, 1.0, 1.0, -0.25, -0.75, -1.0, 0.5, 1.0, -0.25, 0.5, -0.75, -0.5, -1.0, 1.0, 0.0, -0.25, 1.0, -1.0, -0.5, -0.25, -0.25, -0.5, 0.25, 1.0, 0.75, -0.75, 0.5, -0.5, 0.25, 0.0, 0.0, -1.0, -0.25, -0.75, 0.25, 0.0, -1.0, -0.75, 0.5, 1.0, 0.0, 1.0, -1.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array4 = new Float32Array([-0.75, 0.5, 0.25, -0.25, -1.0, 0.25, -0.5, 0.0, 0.75, -1.0, -1.0, 0.25, 1.0, -0.75, -1.0, 0.0, 0.75, 0.25, 0.25, -0.5, -0.25, 0.25, -0.75, -1.0, -0.25, 0.25, 1.0, 1.0, 0.0, 0.25, -0.5, 0.0, 0.75, 1.0, -1.0, 0.75, 0.25, -0.5, -0.75, 0.75, 0.5, 0.75, 1.0, 0.5, 1.0, -1.0, 0.75, 0.5, -0.25, -0.25, -1.0, -0.75, 0.5, -0.5, -0.25, -0.5, 0.25, 0.25, -0.25, -0.25, -0.25, -1.0, -1.0, -0.5, 1.0, -0.5, 0.0, 0.25, 1.0, -0.25, 0.0, -0.25, -0.25, 0.25, 1.0, 0.75, -0.75, 0.25, 0.0, 0.25, -1.0, 1.0, 0.0, 0.75, 0.75, 1.0, 1.0, 0.75, 0.0, 0.75, -0.25, 0.25, 0.25, -0.75, 0.5, 1.0, 0.75, 0.75, -0.5, 0.75, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    
    buffer001.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    query002.destroy()
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    const array5 = new Float32Array([1.0, 0.5, 0.0, -0.75, -0.5, -1.0, 0.25, 0.5, 0.25, -0.75, 1.0, 0.0, 1.0, -0.5, -0.5, -0.25, -0.5, 0.5, -0.25, -0.5, -1.0, -0.75, -0.25, -0.5, -1.0, -1.0, -1.0, 0.0, 0.5, 0.5, -1.0, 0.75, -0.25, 0.25, -0.75, 0.0, 0.25, -0.25, 0.0, 1.0, 0.25, -1.0, 1.0, 0.5, 0.75, 0.5, 0.75, 0.75, -0.5, -1.0, -1.0, -0.5, 0.0, -0.75, 1.0, 0.0, -1.0, 1.0, -1.0, 0.0, 0.75, -0.5, -0.75, -0.5, -0.5, 0.0, -0.75, 0.0, -1.0, 1.0, -0.75, -0.25, 0.5, 1.0, -0.75, -0.75, 0.5, 0.0, 0.5, -0.75, 0.25, 1.0, -0.25, 1.0, -0.25, 0.25, -1.0, -0.75, 0.25, -1.0, 0.75, 0.0, 0.25, -0.75, 0.25, 0.75, 1.0, -0.5, 0.5, -1.0, ]);
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    
    const command_buffer000 = command_encoder000.finish();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_buffer001 = command_encoder001.finish();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    const command_buffer002 = command_encoder002.finish();
    const array6 = new Float32Array([1.0, 0.75, -1.0, -0.75, 0.75, 0.75, 0.0, -1.0, 0.25, 1.0, -0.5, 0.5, -0.75, -0.25, -0.5, 0.75, 0.75, 0.5, -0.25, 0.75, 0.0, -1.0, -0.25, -1.0, 0.5, -0.25, 0.0, 0.5, -0.75, -0.25, 0.0, 0.5, -0.5, 0.75, -0.25, -0.25, 0.0, 1.0, 1.0, 0.0, 0.0, 0.0, -0.75, -0.25, -0.5, -0.5, -0.75, -0.75, -0.5, 0.0, -0.75, 0.75, -1.0, 0.25, -0.75, -0.75, 1.0, -0.5, 0.0, 0.0, 0.5, 0.5, -0.25, -0.75, 0.5, -0.25, 0.25, 1.0, 0.25, 0.0, 0.75, -0.75, 0.25, 0.75, -1.0, 0.5, -0.75, 0.5, -0.5, -0.25, 0.25, -0.75, 0.25, -0.25, -0.75, 1.0, 0.0, 0.5, -0.5, 0.75, 0.0, -0.5, -0.25, -0.5, -1.0, 0.75, 0.75, -0.25, -0.25, -0.25, ]);
    device10.destroy();
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer002.destroy()
    device00.queue.submit([command_buffer001, ]);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    query001.destroy()
    buffer003.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query000.destroy()
    query003.destroy()
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query005.destroy()
    query004.destroy()
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.queue.submit([command_buffer000, ]);
    query007.destroy()
    query003.destroy()
    render_bundle_encoder001.popDebugGroup();
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder003.insertDebugMarker("mymarker");
    query002.destroy()
    query008.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_buffer003 = command_encoder003.finish();
    query003.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.destroy();
    
    query007.destroy()
    buffer200.destroy()
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    buffer000.destroy()
    render_bundle_encoder002.popDebugGroup();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query002.destroy()
    const array7 = new Float32Array([-0.5, -0.75, 1.0, -0.5, 0.25, -0.5, 0.25, 0.0, -0.25, -0.25, 0.75, -1.0, 0.0, 0.0, -1.0, -0.5, -1.0, -0.5, -1.0, -1.0, 0.25, -0.5, 0.5, 0.5, 0.75, -0.75, -0.25, 0.25, 0.25, -1.0, 0.25, -0.25, 1.0, -0.5, -0.5, -1.0, 1.0, 0.5, -0.5, 0.5, -1.0, 1.0, 0.75, 0.0, 0.0, 1.0, -0.5, -1.0, 0.0, 0.25, 1.0, -1.0, 0.75, -1.0, 0.5, -1.0, -1.0, 0.0, 0.0, -1.0, -1.0, 1.0, 1.0, -0.75, 0.5, 1.0, 1.0, 0.25, -0.25, 1.0, 0.0, 0.25, 0.75, 0.25, 0.0, 0.0, -1.0, -1.0, 0.75, 0.5, 1.0, 1.0, 0.5, 0.25, -0.75, 0.25, -1.0, 0.0, 0.0, -1.0, 1.0, -1.0, 0.5, -0.25, -0.25, 0.75, -0.75, 0.5, -0.75, 0.0, ]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_bundle_encoder001.popDebugGroup();
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder200.copyBufferToBuffer(
        buffer201,
        0,
        buffer201,
        0,
        400
    );
    buffer003.destroy()
    query007.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer202,
        0,
        400
    );
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder200.popDebugGroup()
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    query002.destroy()
    const command_buffer201 = command_encoder201.finish();
    
    query006.destroy()
    query009.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const array8 = new Float32Array([-0.25, 0.25, -0.25, 0.5, 0.5, -1.0, 0.0, 0.5, -0.5, 1.0, 0.5, -1.0, -0.25, -0.25, 0.75, -0.25, -0.75, -0.25, 0.0, 0.5, -0.5, 0.75, -0.5, 1.0, 0.5, 0.75, 0.0, 0.5, 0.25, 0.0, -0.25, 1.0, -0.25, 0.5, 0.0, 1.0, 0.0, 0.0, -0.5, 0.0, -1.0, -1.0, 0.0, 0.0, 1.0, 0.5, -0.25, 0.75, -0.25, -0.5, 0.0, 0.75, -1.0, -1.0, 0.25, 1.0, 0.5, 0.75, 0.5, 0.25, -0.25, -1.0, -0.75, -0.25, -0.75, 0.25, 0.5, -0.5, 0.25, 0.5, 0.75, 0.0, 0.75, 0.25, 0.0, -0.75, 0.5, -0.5, 0.75, 1.0, 0.0, 0.75, -0.25, 0.0, 1.0, 0.0, 0.75, 0.5, -0.25, 1.0, -0.5, -1.0, 0.5, -0.75, -0.75, 0.5, 0.5, 0.5, -0.5, -0.5, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder202.copyBufferToBuffer(
        buffer202,
        0,
        buffer200,
        0,
        400
    );
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer004.destroy()
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    buffer201.destroy()
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer201,
        0,
        400
    );
    buffer200.destroy()
    buffer203.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    
    query000.destroy()
    query008.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query0010.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    buffer202.destroy()
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([]);
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const command_buffer200 = command_encoder200.finish();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.submit([command_buffer200, ]);
    query005.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.popDebugGroup();
    
    render_bundle_encoder300.popDebugGroup();
    command_encoder202.pushDebugGroup("mygroupmarker")
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    
    buffer300.destroy()
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder203.insertDebugMarker("mymarker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder203.popDebugGroup()
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.popDebugGroup();
    buffer302.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder300.insertDebugMarker("mymarker");
    const command_buffer300 = command_encoder300.finish();
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    buffer201.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    query300.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device50.queue.submit([]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder004.pushDebugGroup("mygroupmarker")
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder004.resolveQuerySet(
        query009,
        0,
        32,
        buffer000,
        0
    )
    const command_buffer600 = command_encoder600.finish();
    
    buffer301.destroy()
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    query303.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder302.resolveQuerySet(
        query303,
        0,
        32,
        buffer301,
        0
    )
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder203.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    command_encoder004.resolveQuerySet(
        query005,
        0,
        32,
        buffer000,
        0
    )
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query202.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_buffer400 = command_encoder400.finish();
    const command_buffer302 = command_encoder302.finish();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    render_bundle_encoder202.popDebugGroup();
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.popDebugGroup();
    const command_buffer301 = command_encoder301.finish();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device80.destroy();
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    command_encoder303.resolveQuerySet(
        query304,
        0,
        32,
        buffer301,
        0
    )
    command_encoder303.resolveQuerySet(
        query303,
        0,
        32,
        buffer303,
        0
    )
    device30.destroy();
    render_bundle_encoder200.popDebugGroup();
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([0.25, 0.5, 0.25, 0.5, -0.25, -1.0, -0.75, 0.75, 0.25, 0.25, -0.25, 0.75, -0.5, 0.0, -0.75, 1.0, 0.0, 0.25, -1.0, 1.0, 0.75, 1.0, 0.25, 0.25, 0.0, 0.75, 0.5, -0.75, 0.75, 0.75, 0.75, -1.0, 1.0, -0.25, 0.0, 0.75, -0.75, -0.75, 0.75, -0.25, 0.5, -0.75, -0.25, 0.75, 0.25, 0.75, 0.0, 0.75, -0.75, 0.75, 0.5, 0.75, 0.75, -0.75, 0.75, 0.5, -0.5, -1.0, -0.5, -0.5, 0.5, 0.75, -0.5, -0.25, 0.5, 0.75, 0.25, 0.0, 0.25, 1.0, 1.0, 0.0, -0.75, 0.0, -1.0, -0.5, 1.0, 0.25, 0.75, 0.25, -0.5, -0.25, 1.0, 1.0, -1.0, -0.75, 1.0, -0.75, 0.75, 0.5, 1.0, 0.25, -0.5, -0.5, 0.0, -0.75, -0.5, -1.0, 0.0, 0.25, ]);
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    
    device40.queue.submit([command_buffer400, ]);
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer601.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    command_encoder204.insertDebugMarker("mymarker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer204 = command_encoder204.finish();
    buffer600.destroy()
    buffer602.destroy()
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    query600.destroy()
    
    command_encoder202.popDebugGroup()
    device40.destroy();
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device70.destroy();
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer201,
        0
    )
    query202.destroy()
    buffer500.destroy()
    query203.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    const command_buffer202 = command_encoder202.finish();
    command_encoder601.insertDebugMarker("mymarker");
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query200.destroy()
    command_encoder205.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    command_encoder601.pushDebugGroup("mygroupmarker")
    device60.queue.submit([command_buffer600, ]);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder201.popDebugGroup();
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    
    query602.destroy()
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    query201.destroy()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer501.destroy()
    const command_buffer601 = command_encoder601.finish();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    buffer002.destroy()
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer204.destroy()
    query203.destroy()
    
    
    
    device20.queue.submit([command_buffer202, ]);
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    command_encoder205.pushDebugGroup("mygroupmarker")
    command_encoder500.copyBufferToBuffer(
        buffer502,
        0,
        buffer503,
        0,
        400
    );
    command_encoder500.copyBufferToBuffer(
        buffer502,
        0,
        buffer500,
        0,
        400
    );
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    command_encoder004.resolveQuerySet(
        query008,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder001.popDebugGroup();
    command_encoder203.resolveQuerySet(
        query204,
        0,
        32,
        buffer200,
        0
    )
    
    
    buffer502.destroy()
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder602.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    query603.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    command_encoder602.pushDebugGroup("mygroupmarker")
    command_encoder602.insertDebugMarker("mymarker");
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    
    query200.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device80.destroy();
    render_bundle_encoder201.popDebugGroup();
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    query204.destroy()
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    
    command_encoder501.insertDebugMarker("mymarker");
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_buffer203 = command_encoder203.finish();
    render_bundle_encoder600.popDebugGroup();
    query500.destroy()
    command_encoder502.insertDebugMarker("mymarker");
    render_bundle_encoder200.popDebugGroup();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device80.destroy();
    command_encoder205.resolveQuerySet(
        query205,
        0,
        32,
        buffer200,
        0
    )
    command_encoder602.resolveQuerySet(
        query602,
        0,
        32,
        buffer602,
        0
    )
    command_encoder303.insertDebugMarker("mymarker");
    buffer503.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    query202.destroy()
    query202.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const command_buffer500 = command_encoder500.finish();
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    query604.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    command_encoder502.pushDebugGroup("mygroupmarker")
    device40.destroy();
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query601.destroy()
    query604.destroy()
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer303,
        0
    )
    query604.destroy()
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_bundle_encoder602.pushDebugGroup("group_marker");
    command_encoder206.pushDebugGroup("mygroupmarker")
    query302.destroy()
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query602.destroy()
    buffer204.destroy()
    
    buffer505.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    command_encoder501.copyBufferToBuffer(
        buffer500,
        0,
        buffer502,
        0,
        400
    );
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer504,
        0
    )
    
    command_encoder005.pushDebugGroup("mygroupmarker")
    const command_buffer501 = command_encoder501.finish();
    render_bundle_encoder200.popDebugGroup();
    
    render_bundle_encoder602.popDebugGroup();
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    query502.destroy()
    
    const command_buffer503 = command_encoder503.finish();
    command_encoder602.popDebugGroup()
    command_encoder205.popDebugGroup()
    command_encoder206.popDebugGroup()
    const command_buffer205 = command_encoder205.finish();
    command_encoder502.popDebugGroup()
    command_encoder005.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    const command_buffer206 = command_encoder206.finish();
    const command_buffer602 = command_encoder602.finish();
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    device20.queue.submit([command_buffer201, command_buffer206, ]);
    device50.queue.submit([command_buffer500, command_buffer503, ]);
    const command_buffer005 = command_encoder005.finish();
    device50.queue.submit([command_buffer501, command_buffer503, ]);
    device20.queue.submit([]);
    device50.queue.submit([command_buffer502, ]);
    device10.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    device60.queue.submit([command_buffer602, ]);
    device50.queue.submit([command_buffer500, ]);
    command_encoder004.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    device90.queue.submit([]);
}