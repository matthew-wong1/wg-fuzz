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
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder001.popDebugGroup()
    command_encoder003.pushDebugGroup("mygroupmarker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder002.popDebugGroup()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    command_encoder005.pushDebugGroup("mygroupmarker")
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder007.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query000.destroy()
    query000.destroy()
    buffer001.destroy()
    command_encoder004.pushDebugGroup("mygroupmarker")
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    
    buffer100.destroy()
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const command_buffer005 = command_encoder005.finish();
    device10.destroy();
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const command_buffer008 = command_encoder008.finish();
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.pushErrorScope("internal");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    buffer003.destroy()
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    query001.destroy()
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder00100 = command_encoder0010.beginComputePass({ label: "compute_pass_encoder00100" });
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    command_encoder007.pushDebugGroup("mygroupmarker")
    query001.destroy()
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    query001.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_buffer009 = command_encoder009.finish();
    command_encoder0010.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0020.popDebugGroup()
    query000.destroy()
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    query000.destroy()
    {
        await buffer005.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer005.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer005.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0030.popDebugGroup()
    buffer005.destroy()
    
    
    
    compute_pass_encoder0020.popDebugGroup()
    
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    command_encoder0011.copyBufferToBuffer(
        buffer002,
        0,
        buffer001,
        0,
        400
    );
    buffer004.destroy()
    
    
    compute_pass_encoder00100.pushDebugGroup("group_marker")
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder0040.popDebugGroup()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    compute_pass_encoder00100.popDebugGroup()
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    const compute_pass_encoder00110 = command_encoder0011.beginComputePass({ label: "compute_pass_encoder00110" });
    compute_pass_encoder0070.popDebugGroup()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device00.queue.submit([command_buffer009, ]);
    
    compute_pass_encoder0000.popDebugGroup()
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder00100.pushDebugGroup("group_marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.pushErrorScope("internal");
    query001.destroy()
    
    buffer002.destroy()
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder0030.popDebugGroup()
    query000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer000.destroy()
    
    
    
    render_bundle_encoder001.popDebugGroup();
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder00100.popDebugGroup()
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    compute_pass_encoder00110.popDebugGroup()
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    query002.destroy()
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer200.destroy()
    compute_pass_encoder00100.pushDebugGroup("group_marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder00100.popDebugGroup()
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    command_encoder0011.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    compute_pass_encoder0001.popDebugGroup()
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    const command_buffer200 = command_encoder200.finish();
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pass_encoder00111 = command_encoder0011.beginComputePass({ label: "compute_pass_encoder00111" });
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    query002.destroy()
    command_encoder0012.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder0012.clearBuffer(buffer002);
    
    compute_pass_encoder00100.pushDebugGroup("group_marker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    compute_pass_encoder00100.popDebugGroup()
    command_encoder0012.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query000.destroy()
    
    query003.destroy()
    device20.queue.submit([command_buffer200, ]);
    buffer006.destroy()
    query001.destroy()
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0060.popDebugGroup()
    device30.queue.submit([]);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder0041 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0041" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder007.clearBuffer(buffer007);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder0012.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder0012.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    command_encoder0010.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder00111.pushDebugGroup("group_marker")
    device00.queue.submit([command_buffer008, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    
    
    
    compute_pass_encoder00110.pushDebugGroup("group_marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    
    
    query002.destroy()
    buffer300.destroy()
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder002.clearBuffer(buffer007);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    query001.destroy()
    compute_pass_encoder0010.popDebugGroup()
    
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    query002.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query003.destroy()
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer009,
        0
    )
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder001.insertDebugMarker("marker");
    query003.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    command_encoder0012.resolveQuerySet(
        query001,
        0,
        32,
        buffer009,
        0
    )
    command_encoder007.clearBuffer(buffer007);
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    buffer009.destroy()
    
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer009,
        0
    )
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer009,
        0
    )
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    query003.destroy()
    command_encoder0011.resolveQuerySet(
        query005,
        0,
        32,
        buffer009,
        0
    )
    
    
    command_encoder0011.clearBuffer(buffer008);
    compute_pass_encoder2020.popDebugGroup()
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder003.popDebugGroup()
    query000.destroy()
    
    query001.destroy()
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    buffer202.destroy()
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query004.destroy()
    command_encoder0012.resolveQuerySet(
        query000,
        0,
        32,
        buffer009,
        0
    )
    query003.destroy()
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer006 = command_encoder006.finish();
    command_encoder203.pushDebugGroup("mygroupmarker")
    compute_pass_encoder00110.popDebugGroup()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer009,
        0
    )
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder0011.copyBufferToBuffer(
        buffer003,
        0,
        buffer002,
        0,
        400
    );
    
    query100.destroy()
    
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer009,
        0
    )
    query005.destroy()
    command_encoder0012.resolveQuerySet(
        query004,
        0,
        32,
        buffer009,
        0
    )
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder0012.copyBufferToBuffer(
        buffer003,
        0,
        buffer007,
        0,
        400
    );
    device20.pushErrorScope("validation");
    
    
    
    query001.destroy()
    buffer201.destroy()
    command_encoder0012.resolveQuerySet(
        query001,
        0,
        32,
        buffer009,
        0
    )
    
    command_encoder0012.resolveQuerySet(
        query000,
        0,
        32,
        buffer009,
        0
    )
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder0012.resolveQuerySet(
        query005,
        0,
        32,
        buffer009,
        0
    )
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pass_encoder2031 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2031" });
    command_encoder301.clearBuffer(buffer302);
    query001.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder0041.pushDebugGroup("group_marker")
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder0012.resolveQuerySet(
        query005,
        0,
        32,
        buffer009,
        0
    )
    command_encoder0012.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2031.pushDebugGroup("group_marker")
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0070.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_bundle_encoder501.popDebugGroup();
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query201.destroy()
    buffer006.destroy()
    command_encoder0012.copyBufferToBuffer(
        buffer0010,
        0,
        buffer000,
        0,
        400
    );
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer008,
        0
    )
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer009,
        0
    )
    
    
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    query003.destroy()
    buffer003.destroy()
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer004,
        0
    )
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    command_encoder007.clearBuffer(buffer006);
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer007,
        0
    )
    render_bundle_encoder501.insertDebugMarker("marker");
    compute_pass_encoder00100.pushDebugGroup("group_marker")
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0041.popDebugGroup()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder00100.popDebugGroup()
    command_encoder0012.resolveQuerySet(
        query002,
        0,
        32,
        buffer008,
        0
    )
    device00.queue.submit([command_buffer005, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder003.copyBufferToBuffer(
        buffer0010,
        0,
        buffer000,
        0,
        400
    );
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    query200.destroy()
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    
    command_encoder0012.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query200.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder201.clearBuffer(buffer202);
    
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    
    
    query000.destroy()
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer008,
        0
    )
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    command_encoder0012.resolveQuerySet(
        query003,
        0,
        32,
        buffer009,
        0
    )
    device40.queue.submit([]);
    command_encoder0012.clearBuffer(buffer007);
    device00.pushErrorScope("out-of-memory");
    compute_pass_encoder2030.popDebugGroup()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer008.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder0000.popDebugGroup()
    command_encoder0012.clearBuffer(buffer001);
    device20.pushErrorScope("internal");
    
    compute_pass_encoder0030.popDebugGroup()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder0010.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder0013.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    command_encoder0012.clearBuffer(buffer007);
    command_encoder0012.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    command_encoder0013.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    device40.pushErrorScope("validation");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder0012.copyBufferToBuffer(
        buffer007,
        0,
        buffer002,
        0,
        400
    );
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    command_encoder0013.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder0012.resolveQuerySet(
        query005,
        0,
        32,
        buffer009,
        0
    )
    compute_pass_encoder00100.pushDebugGroup("group_marker")
    compute_pass_encoder00110.pushDebugGroup("group_marker")
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    command_encoder0012.copyBufferToBuffer(
        buffer0010,
        0,
        buffer007,
        0,
        400
    );
    
    command_encoder0012.resolveQuerySet(
        query005,
        0,
        32,
        buffer009,
        0
    )
    command_encoder0013.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder0013.resolveQuerySet(
        query003,
        0,
        32,
        buffer009,
        0
    )
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2030.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer0011 = command_encoder0011.finish();
    compute_pass_encoder2031.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder00111.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder00110.popDebugGroup()
    compute_pass_encoder0041.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer009, command_buffer0011, ]);
    device40.queue.submit([]);
    const command_buffer0012 = command_encoder0012.finish();
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder00111.popDebugGroup()
    const command_buffer0013 = command_encoder0013.finish();
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder00100.popDebugGroup()
    command_encoder001.popDebugGroup()
    command_encoder204.popDebugGroup()
    compute_pass_encoder00111.popDebugGroup()
    command_encoder007.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2030.popDebugGroup()
    const command_buffer204 = command_encoder204.finish();
    device40.queue.submit([]);
    device00.queue.submit([command_buffer000, command_buffer008, command_buffer009, command_buffer0013, ]);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder00111.popDebugGroup()
    device00.queue.submit([command_buffer008, command_buffer0011, command_buffer0012, ]);
    compute_pass_encoder0040.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    device20.queue.submit([]);
    compute_pass_encoder00111.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer006, ]);
    device00.queue.submit([command_buffer000, command_buffer008, command_buffer009, ]);
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0070.popDebugGroup()
    command_encoder203.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.submit([]);
    compute_pass_encoder2020.popDebugGroup()
    device00.queue.submit([command_buffer006, command_buffer009, ]);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    const command_buffer007 = command_encoder007.finish();
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder00110.popDebugGroup()
    compute_pass_encoder00111.popDebugGroup()
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    device00.queue.submit([command_buffer002, command_buffer008, command_buffer0011, ]);
    compute_pass_encoder0041.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    const command_buffer003 = command_encoder003.finish();
    device00.queue.submit([]);
    compute_pass_encoder0070.popDebugGroup()
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    command_encoder0010.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder00110.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder00111.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder00111.popDebugGroup()
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder00100.popDebugGroup()
    const command_buffer0010 = command_encoder0010.finish();
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer0010, ]);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    command_encoder004.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    device40.queue.submit([]);
    device00.queue.submit([command_buffer007, command_buffer0013, ]);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder00110.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    device50.queue.submit([]);
    const command_buffer500 = command_encoder500.finish();
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder00100.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([]);
    const command_buffer001 = command_encoder001.finish();
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer201, command_buffer203, command_buffer204, ]);
    device00.queue.submit([command_buffer001, command_buffer009, command_buffer0010, ]);
    compute_pass_encoder00100.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([]);
    device40.queue.submit([]);
    device00.queue.submit([command_buffer003, command_buffer009, command_buffer0013, ]);
    compute_pass_encoder0001.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer005, command_buffer006, command_buffer007, ]);
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer001, command_buffer007, command_buffer009, ]);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer204, ]);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    compute_pass_encoder2040.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer0012, ]);
    compute_pass_encoder2010.popDebugGroup()
    device00.queue.submit([command_buffer008, ]);
    compute_pass_encoder5000.popDebugGroup()
    device00.queue.submit([command_buffer0011, ]);
    compute_pass_encoder0040.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder00110.popDebugGroup()
    device00.queue.submit([command_buffer0012, ]);
    const command_buffer004 = command_encoder004.finish();
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder00111.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0040.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder3000.popDebugGroup()
    device00.queue.submit([command_buffer0011, ]);
    compute_pass_encoder00100.popDebugGroup()
    compute_pass_encoder0041.popDebugGroup()
    compute_pass_encoder2031.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder0070.popDebugGroup()
    device00.queue.submit([command_buffer004, command_buffer0013, ]);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder0020.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder00110.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    device00.queue.submit([command_buffer0010, ]);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder2031.popDebugGroup()
    compute_pass_encoder00111.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    device40.queue.submit([]);
    device00.queue.submit([]);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    compute_pass_encoder00100.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer0010, ]);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder0060.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    device00.queue.submit([command_buffer0013, ]);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0041.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0001.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer008, ]);
    compute_pass_encoder0070.popDebugGroup()
    device00.queue.submit([command_buffer008, command_buffer0010, ]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2031.popDebugGroup()
    device00.queue.submit([]);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder00110.popDebugGroup()
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer204, ]);
    device20.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder00100.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2031.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer0011, ]);
    compute_pass_encoder0070.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer008, ]);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder00110.popDebugGroup()
    device00.queue.submit([command_buffer008, command_buffer0010, ]);
    compute_pass_encoder0040.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device50.queue.submit([]);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder0040.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    device00.queue.submit([command_buffer001, command_buffer005, command_buffer007, ]);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder0041.popDebugGroup()
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0041.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2031.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
}