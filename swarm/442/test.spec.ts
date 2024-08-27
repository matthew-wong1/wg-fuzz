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
    const array0 = new Float32Array([-0.25, 0.25, -0.5, -0.75, 0.5, -0.25, 0.0, 0.5, 0.25, 0.5, 0.75, -1.0, -0.5, -0.5, 0.25, 0.25, -0.25, -0.25, -0.25, 1.0, 0.0, 1.0, 0.0, -1.0, -0.75, 0.25, 0.5, 0.5, 0.5, -0.75, -0.25, 0.5, -1.0, 0.75, 0.5, -0.5, -0.75, 1.0, -1.0, 0.0, 0.75, -0.5, -0.5, 0.75, -0.5, -0.75, -0.5, 0.75, 0.5, 0.5, 0.25, 0.0, 0.0, 0.25, 1.0, -0.25, 0.5, -0.5, 0.5, 0.25, 0.25, -0.75, -0.75, 0.75, 0.0, 0.0, 0.0, -1.0, 0.25, -0.5, -0.75, -0.5, -0.75, 0.75, -1.0, 0.0, -0.75, -0.5, 0.0, -0.75, -0.25, 0.5, 0.75, -0.75, 1.0, 0.25, -0.5, 0.75, 0.25, 0.0, 0.5, -0.5, 0.0, 0.75, 0.25, 1.0, 0.25, 0.75, -0.5, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array1 = new Float32Array([0.25, -0.5, 1.0, 0.5, 0.75, -1.0, -1.0, 0.0, -0.75, -0.25, 0.75, 0.0, -1.0, -1.0, 0.25, -0.75, -1.0, 0.0, -0.75, 0.0, 1.0, -1.0, 0.75, -0.25, 1.0, -0.75, 0.5, 1.0, 0.5, 0.25, 0.0, -0.25, 0.5, 0.75, -1.0, 0.75, -0.25, -0.5, 0.5, -0.25, 0.75, -0.5, 0.25, -0.75, -1.0, -0.5, -0.5, -0.75, 0.75, 0.0, -0.25, -0.5, -0.25, -0.25, 0.5, 0.25, 0.0, 0.75, 1.0, 0.5, -1.0, 0.5, 0.25, -1.0, 0.0, 0.5, 0.75, 0.25, 0.25, -1.0, 0.25, -0.25, 0.0, 0.25, -1.0, 1.0, 0.5, -0.75, 0.25, 0.25, 1.0, 0.0, 0.0, -0.5, -0.25, -0.75, 0.75, -0.75, 0.75, 0.0, 0.25, 1.0, 0.75, 0.0, 1.0, 0.25, 0.25, -1.0, 0.5, 0.25, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array2 = new Float32Array([-0.75, 0.75, -0.5, -0.5, -0.25, -0.75, 0.5, 0.25, 0.75, 0.5, 0.25, 0.25, 0.0, -1.0, 1.0, 0.75, 0.0, 0.25, -1.0, -0.75, -0.25, 1.0, -0.25, -0.5, 1.0, 1.0, -0.75, -1.0, 0.25, -0.75, -0.25, 1.0, 0.75, 1.0, 0.5, -0.75, 0.5, 1.0, 0.5, 1.0, -0.75, 1.0, -1.0, -0.5, -0.5, 0.0, -0.75, 0.5, 0.5, 0.0, 0.75, -0.75, 0.75, -0.25, 1.0, 0.75, 0.75, 0.75, -0.5, 0.0, -0.75, 1.0, -1.0, 0.5, 0.5, 0.5, -1.0, 0.25, -1.0, 0.0, 1.0, -1.0, 0.5, -0.75, -0.75, 0.0, 0.0, 0.75, -0.25, 0.25, -0.5, -1.0, -1.0, -0.25, 1.0, 0.25, 0.5, -0.75, -1.0, 0.25, -0.5, -1.0, 0.25, 0.25, 0.75, -0.75, 0.0, -0.75, 0.25, 1.0, ]);
    
    
    
    const array3 = new Float32Array([1.0, -0.5, -1.0, -0.25, 1.0, -0.5, -0.75, -0.5, -0.5, -0.75, -1.0, -0.5, -1.0, -1.0, 0.75, 1.0, 0.25, -1.0, 1.0, 1.0, -1.0, 0.5, 0.5, 1.0, -0.75, -0.75, 0.5, -1.0, -0.5, -0.75, 1.0, -0.5, -0.75, -0.25, 0.5, -1.0, -1.0, 0.0, -0.25, -0.5, -0.25, 0.0, -0.25, 0.25, 0.75, 0.75, 0.5, -0.75, -0.5, 0.0, 0.25, -0.25, 0.5, -0.25, -1.0, -0.5, 0.5, -0.5, -0.5, -0.75, -1.0, 0.75, -0.5, -0.75, -0.25, 0.75, 0.5, 1.0, 0.75, 1.0, 0.75, 1.0, -1.0, 0.75, -0.25, 0.75, 0.0, 0.75, 0.0, 1.0, -0.25, 0.5, 0.0, -0.75, -0.5, -0.25, 0.0, 0.5, -0.25, 0.25, 0.25, -1.0, -0.75, 1.0, -0.25, 0.5, 1.0, -0.5, -0.5, 1.0, ]);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    device00.pushErrorScope("out-of-memory");
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const array4 = new Float32Array([1.0, 0.25, 1.0, -0.75, -1.0, -0.25, -1.0, -0.75, 0.25, -1.0, -0.75, 1.0, 1.0, 0.75, -0.5, -0.25, 0.25, 0.5, -0.75, -0.75, 0.75, 0.75, 1.0, 0.75, 0.5, -0.5, -0.5, 0.75, -0.75, 0.25, -0.5, -1.0, -0.5, -0.75, -0.5, 0.25, -1.0, -0.5, -1.0, 1.0, -0.75, 0.25, 0.5, 0.75, -0.25, -0.5, -0.75, 0.5, -0.5, 0.25, -0.25, 0.25, 0.75, -0.75, -0.75, 0.0, 0.5, -0.25, -0.75, 1.0, 0.75, -0.75, -0.25, 0.75, -1.0, -0.25, 0.75, 0.25, 0.5, -1.0, 0.25, 0.25, 0.0, -0.75, -0.75, 0.0, 1.0, 0.5, 0.5, -0.25, 0.5, 0.25, -0.5, 0.0, 0.5, 1.0, 0.75, 1.0, 0.25, -0.25, 1.0, 0.5, -0.75, -0.75, 0.0, 1.0, -0.75, -1.0, 0.5, -1.0, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder002.insertDebugMarker("mymarker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const array5 = new Float32Array([0.25, -1.0, -0.75, 0.0, 0.0, 1.0, -0.25, -0.5, 0.0, -0.75, 0.75, 1.0, 0.0, -0.75, -0.25, 1.0, 1.0, 1.0, 0.0, -0.25, -0.5, 0.0, 0.75, 0.75, 0.25, 0.5, 0.5, 0.75, 0.5, 1.0, -0.75, -0.5, 0.75, 0.75, 1.0, -0.25, -0.5, 0.75, 0.5, -0.5, -1.0, -0.25, 1.0, 0.25, 0.25, -0.75, 0.25, 1.0, -0.75, 0.0, 0.25, 0.0, 1.0, 0.5, 0.0, -0.25, -0.75, -0.5, 0.75, 0.0, -0.25, 1.0, 1.0, 1.0, 1.0, 0.25, -0.75, -1.0, -0.25, -0.5, -1.0, -0.5, 0.75, 0.0, -1.0, 1.0, 0.25, -0.5, 1.0, -1.0, 0.0, 0.75, -0.5, -0.75, -0.75, -0.75, -0.5, -0.75, 0.0, 1.0, 0.75, -0.5, -0.5, -1.0, 0.25, 0.75, -0.25, 1.0, -1.0, 1.0, ]);
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    
    command_encoder003.insertDebugMarker("mymarker");
    
    const command_buffer003 = command_encoder003.finish();
    query000.destroy()
    
    const command_buffer002 = command_encoder002.finish();
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const array6 = new Float32Array([-0.5, 0.0, -0.5, 0.75, -1.0, -1.0, 0.5, 0.5, 1.0, 0.5, 0.25, 0.75, -1.0, -1.0, 0.75, 0.0, -0.25, -0.5, 0.25, -0.75, 0.75, 0.25, 0.75, 1.0, 0.5, -1.0, 0.75, 1.0, 0.5, -0.75, 0.0, 0.5, -0.5, 0.0, 0.5, 0.25, 0.75, 0.0, -0.5, 0.0, 0.75, 0.5, -0.5, 0.5, 1.0, 1.0, -1.0, -0.25, 0.75, 1.0, -1.0, -0.25, 0.75, 0.25, -0.75, 0.5, 0.5, 0.0, -0.25, -0.5, 0.0, 0.0, -0.25, -1.0, -0.5, -1.0, 0.25, 0.75, 0.0, 1.0, 0.0, 0.75, 0.5, -0.5, 0.5, 0.75, -1.0, 0.5, 0.0, -0.5, -0.75, 1.0, -0.5, -0.75, 1.0, -1.0, -0.75, 0.25, 0.0, -1.0, 0.25, 0.75, -0.5, -0.25, -1.0, 0.25, -1.0, -0.5, 1.0, 1.0, ]);
    
    query001.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device00.queue.submit([command_buffer002, ]);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    query002.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    
    compute_pass_encoder0010.popDebugGroup()
    query003.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    device30.destroy();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    compute_pass_encoder0000.popDebugGroup()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query003.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query001.destroy()
    
    command_encoder004.insertDebugMarker("mymarker");
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([0.75, 0.75, -0.5, 0.0, -0.5, -1.0, 0.25, 0.25, -0.25, 0.5, -1.0, -1.0, -0.75, 1.0, -1.0, -0.25, -1.0, -1.0, 1.0, -0.5, 0.75, 0.5, -0.5, -0.5, -0.75, -0.5, 0.75, -1.0, -0.5, 0.25, 0.75, 0.75, -0.75, 0.75, -1.0, 0.0, -0.25, 0.25, -0.5, -0.5, 0.25, -0.25, 0.75, 0.5, -0.25, 0.5, -1.0, 0.75, -1.0, -0.5, 0.0, -0.25, -0.75, -0.25, 0.0, 0.0, 0.5, -0.5, -0.25, 0.75, -0.25, -0.75, -0.5, 0.75, 0.75, 0.25, -0.75, 0.0, -0.75, -0.5, 0.25, -0.75, -1.0, -1.0, 0.25, -0.25, -0.75, -0.5, 0.75, 0.5, -0.5, 0.0, 0.5, 0.75, -0.5, 0.75, 1.0, 0.75, -0.75, -1.0, 0.5, 1.0, -0.25, -0.75, 0.75, -0.75, -1.0, 0.0, 0.75, 0.5, ]);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    query000.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.destroy();
    command_encoder100.insertDebugMarker("mymarker");
    const command_buffer100 = command_encoder100.finish();
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query004.destroy()
    
    
    
    
    
    
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device10.queue.submit([command_buffer100, ]);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device40.destroy();
    
    query003.destroy()
    
    
    query005.destroy()
    
    
    
    
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query002.destroy()
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    query002.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    
    
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    query000.destroy()
    query000.destroy()
    
    query000.destroy()
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    compute_pass_encoder0000.popDebugGroup()
    query001.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    query006.destroy()
    
    
    
    
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    device10.pushErrorScope("internal");
    
    
    command_encoder005.pushDebugGroup("mygroupmarker")
    const array8 = new Float32Array([1.0, 0.75, -0.5, 0.0, 0.0, 1.0, -0.5, -0.25, 0.75, 0.75, -0.25, -0.75, -1.0, 0.0, 0.0, 0.5, 0.75, -1.0, 1.0, 0.75, -1.0, 0.5, 1.0, 0.5, 1.0, 0.25, -0.25, 0.25, -0.5, 0.0, -0.5, -0.5, 0.5, 1.0, -1.0, -0.25, 0.75, -0.25, 1.0, 1.0, 0.0, -1.0, 0.25, 0.0, -1.0, -0.75, -0.5, 0.5, 0.25, -1.0, 1.0, -0.5, -0.5, -0.25, -0.75, 0.0, 0.75, 0.75, 0.5, -0.75, -0.5, -0.5, 0.0, 0.5, 1.0, -0.5, -0.25, 0.25, 0.75, 0.25, -0.75, 0.0, 0.0, 0.25, -0.25, 1.0, 0.5, 0.25, 1.0, 0.75, 0.0, 0.0, -1.0, -0.5, 1.0, 1.0, -0.75, 0.5, 0.0, -0.75, 1.0, -1.0, 1.0, 1.0, 0.75, 0.25, 0.75, -0.5, 0.25, -0.75, ]);
    query001.destroy()
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device50.pushErrorScope("out-of-memory");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    query001.destroy()
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    command_encoder005.popDebugGroup()
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query005.destroy()
    
    
    const command_buffer005 = command_encoder005.finish();
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query100.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    query004.destroy()
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const command_buffer501 = command_encoder501.finish();
    device50.queue.submit([command_buffer501, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    device60.destroy();
    query000.destroy()
    query006.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    var shader_module0015_code = "";
    try {
        shader_module0015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0015 = await device00.createShaderModule({ label: "shader_module0015", code: shader_module0015_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query002.destroy()
    compute_pass_encoder0010.popDebugGroup()
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    query005.destroy()
    
    query005.destroy()
    
    
    
    
    query003.destroy()
    
    query005.destroy()
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    
    query005.destroy()
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    
    
    
    
    var shader_module0016_code = "";
    try {
        shader_module0016_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0016.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0016 = await device00.createShaderModule({ label: "shader_module0016", code: shader_module0016_code })
    
    compute_pass_encoder5000.popDebugGroup()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder502.clearBuffer(buffer504);
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder503.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    
    
    
    
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query003.destroy()
    query006.destroy()
    
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder503.resolveQuerySet(
        query500,
        0,
        32,
        buffer502,
        0
    )
    
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    
    
    
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const compute_pass_encoder5050 = command_encoder505.beginComputePass({ label: "compute_pass_encoder5050" });
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder506.insertDebugMarker("mymarker");
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder503.clearBuffer(buffer504);
    compute_pass_encoder5040.insertDebugMarker("marker")
    query001.destroy()
    
    
    
    
    query500.destroy()
    compute_pass_encoder5020.insertDebugMarker("marker")
    command_encoder503.insertDebugMarker("mymarker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.destroy();
    command_encoder506.resolveQuerySet(
        query501,
        0,
        32,
        buffer502,
        0
    )
    
    
    
    
    
    compute_pass_encoder5020.insertDebugMarker("marker")
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    
    
    command_encoder506.insertDebugMarker("mymarker");
    
    
    
    
    command_encoder506.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    
    
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    
    var shader_module0017_code = "";
    try {
        shader_module0017_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0017 = await device00.createShaderModule({ label: "shader_module0017", code: shader_module0017_code })
    compute_pass_encoder5050.insertDebugMarker("marker")
    query001.destroy()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder5030.insertDebugMarker("marker")
    
    command_encoder506.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    const array9 = new Float32Array([-1.0, 0.75, 0.25, -0.25, -0.25, 0.25, -1.0, -1.0, -1.0, -0.75, 0.25, -0.25, 0.25, 0.5, -0.25, 0.0, -1.0, 1.0, -1.0, 0.0, 1.0, -0.75, -1.0, 0.5, -0.75, 0.25, -0.25, 1.0, 1.0, 0.0, 1.0, -0.25, 0.0, -0.25, -0.25, 0.0, 0.0, -0.75, -0.5, -0.75, -1.0, 0.25, -1.0, -0.5, 0.75, -0.5, 0.5, -0.5, 0.5, 0.25, 0.75, -1.0, 0.25, 0.5, 1.0, -0.25, -0.25, 0.0, 1.0, 0.75, 0.25, 1.0, -1.0, -0.75, -1.0, 0.0, 0.75, -1.0, -1.0, -0.5, 1.0, 0.0, 0.75, -0.75, 0.5, 1.0, 0.75, -0.75, -0.25, -0.25, 0.75, -0.25, 0.0, 0.0, -0.25, 1.0, -1.0, -0.75, 0.5, 0.5, -0.5, 0.25, 0.75, 0.25, 0.5, 1.0, -0.5, -1.0, 0.25, 1.0, ]);
    
    query002.destroy()
    command_encoder506.resolveQuerySet(
        query501,
        0,
        32,
        buffer502,
        0
    )
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    compute_pass_encoder0000.popDebugGroup()
    
    command_encoder506.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    query008.destroy()
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder506.pushDebugGroup("mygroupmarker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder506.resolveQuerySet(
        query501,
        0,
        32,
        buffer506,
        0
    )
    query500.destroy()
    
    compute_pass_encoder5030.popDebugGroup()
    
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_encoder507 = device50.createCommandEncoder({ label: "command_encoder507" });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const compute_pass_encoder5060 = command_encoder506.beginComputePass({ label: "compute_pass_encoder5060" });
    query008.destroy()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    compute_pass_encoder5020.popDebugGroup()
    
    const command_buffer006 = command_encoder006.finish();
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    const command_buffer507 = command_encoder507.finish();
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    device50.queue.submit([command_buffer507, ]);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer003, ]);
}