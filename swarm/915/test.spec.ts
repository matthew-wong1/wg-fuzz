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
    const array0 = new Float32Array([-0.5, 0.75, -0.5, -0.25, 0.75, -0.25, -0.75, 1.0, 0.0, -0.5, -0.75, 0.5, -0.75, 1.0, 1.0, 0.25, 0.5, -0.25, -0.25, 0.5, 0.25, -1.0, -0.5, 0.75, 0.25, 0.75, 1.0, 0.25, 0.75, -0.75, 0.5, 1.0, 0.5, 0.0, 1.0, 0.75, 1.0, -0.5, 0.75, -0.75, 0.25, 0.5, -1.0, -1.0, 0.25, 1.0, 0.5, 0.25, -0.5, -0.75, 0.0, -0.75, -1.0, 0.25, 0.25, 0.25, -0.5, 0.25, 0.25, -0.75, 0.0, -0.5, -1.0, -0.25, 0.0, -0.75, 0.75, 1.0, -1.0, -0.75, 0.75, 0.5, -1.0, -1.0, 0.75, -0.5, 1.0, 0.5, -1.0, 0.75, -1.0, 0.0, 0.0, 0.5, 0.75, 1.0, 0.5, -0.5, 0.0, -1.0, 0.5, 0.0, 0.75, 0.5, -0.25, -0.75, 0.5, 1.0, 1.0, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-1.0, -0.25, -0.5, 1.0, 0.0, 1.0, 0.75, 0.0, -0.75, -0.75, -1.0, 1.0, -0.75, 0.5, -1.0, 1.0, 0.25, 1.0, 0.25, -0.5, 0.25, 0.5, 0.75, -1.0, 0.5, 0.0, 0.25, -0.75, 1.0, -0.25, -1.0, 0.75, -0.25, 0.0, 1.0, 0.5, 0.25, -0.75, -0.75, 1.0, 0.25, -1.0, -0.5, 0.25, 0.5, -0.25, -0.25, 1.0, -1.0, -1.0, 1.0, 0.5, 0.25, 0.25, 0.0, -0.25, 0.0, -0.25, -0.75, -0.5, -1.0, 1.0, 0.75, -0.5, 0.0, 0.0, -0.5, 0.75, -1.0, 0.0, 0.5, -0.25, 0.5, 0.25, 0.25, -1.0, 0.75, -1.0, 0.0, -0.25, 0.5, -1.0, -1.0, 0.0, -0.5, 0.5, 1.0, 0.0, 0.5, 0.25, -1.0, -0.5, -0.75, -0.25, 0.25, 1.0, 0.0, 1.0, 0.5, -0.75, ]);
    
    const array2 = new Float32Array([0.5, -0.5, 0.5, -0.5, -1.0, 0.0, 0.5, -0.25, 0.75, 1.0, 0.25, -0.25, 1.0, 0.0, -0.5, 0.75, 0.0, -0.5, 1.0, 0.25, 0.25, 0.75, -0.25, 0.0, -0.75, -0.5, 0.0, 0.0, 1.0, 0.0, 0.5, 0.25, 0.5, 0.25, 0.25, -0.75, 0.75, -1.0, -0.25, -0.5, 1.0, 0.5, 0.5, 0.0, -0.75, -0.75, -0.5, 0.75, 0.75, 0.0, 0.75, -0.75, 0.5, 0.75, 0.75, -0.75, -0.75, -0.75, -0.25, 0.75, -1.0, 0.25, 1.0, 0.75, 0.75, -0.75, 0.5, 0.0, -0.25, -0.25, 0.5, -0.5, 0.5, -0.75, 0.5, 0.0, -1.0, 0.25, -0.5, -1.0, 0.25, 0.5, -0.5, -1.0, -1.0, -0.25, -0.25, 0.25, -0.25, -0.75, -0.75, 0.75, 0.5, -0.75, -0.25, -0.25, -0.75, -0.25, 1.0, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer000.destroy()
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const array3 = new Float32Array([-0.25, -0.5, 0.5, 0.5, -0.5, -1.0, -0.5, 0.25, 0.0, -0.25, -0.75, -0.25, -1.0, -0.75, 1.0, -0.75, -1.0, 1.0, 1.0, -0.25, -0.25, 0.75, -0.75, 1.0, 0.0, 0.0, 0.25, 0.25, -0.5, 0.75, 0.25, -0.75, 0.75, -1.0, 1.0, -1.0, -0.75, 0.0, 0.5, 0.25, 0.0, 0.75, 0.75, -0.75, -0.5, -1.0, 0.75, 0.75, -0.75, -0.75, -0.5, -0.25, -1.0, -0.5, 0.0, 0.25, 0.5, 0.25, -1.0, 0.5, 0.25, 0.75, -1.0, 0.25, 1.0, 0.75, -0.25, 0.0, 0.25, 0.0, 0.0, 0.25, -0.5, 0.75, -1.0, 0.25, 0.75, 0.25, -1.0, -0.75, 0.25, -0.75, 0.0, 0.0, -0.25, 0.5, 1.0, 0.5, 0.0, 0.75, 0.0, 1.0, 0.5, -0.75, -0.25, 0.75, 0.75, -0.5, 0.5, -1.0, ]);
    command_encoder000.insertDebugMarker("mymarker");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer002.destroy()
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const array4 = new Float32Array([1.0, 0.5, 0.5, 1.0, 0.0, -0.75, -0.75, 1.0, 1.0, 0.25, -1.0, -1.0, 0.75, -1.0, -0.5, 0.25, -0.75, 0.75, 0.5, 0.5, -1.0, -1.0, -0.5, 0.75, 0.25, -0.5, 0.5, 0.0, 0.25, -0.75, -1.0, 1.0, -0.25, -0.75, -0.5, -1.0, 0.75, -0.75, 0.25, 1.0, -0.5, 0.5, -1.0, 1.0, -1.0, 0.5, -0.75, -1.0, -0.75, 1.0, -0.5, 0.75, -1.0, 0.0, -1.0, 0.5, -0.75, 0.25, -0.25, -1.0, 0.5, 0.75, -0.25, 0.5, 0.75, 0.0, -0.75, 0.25, 1.0, 1.0, 0.5, 0.75, -0.75, 0.5, -0.5, 0.25, 0.5, -0.75, 0.5, -0.25, 0.0, 0.5, -0.25, 0.0, 1.0, 0.25, 1.0, 1.0, -0.25, -0.25, 0.25, -0.25, 1.0, -0.25, -0.5, -0.5, 0.0, -0.75, -0.75, -1.0, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query000.destroy()
    buffer001.destroy()
    
    
    
    
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    texture001.destroy();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    query001.destroy()
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    command_encoder002.insertDebugMarker("mymarker");
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query000.destroy()
    query001.destroy()
    device00.pushErrorScope("internal");
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    texture000.destroy();
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    command_encoder100.insertDebugMarker("mymarker");
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder003.insertDebugMarker("mymarker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    query001.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    buffer003.destroy()
    query100.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const array5 = new Float32Array([-0.25, 0.5, -0.75, -0.5, 0.5, -0.5, 1.0, 0.25, 0.75, 0.0, -1.0, 0.25, 0.75, -0.5, -0.5, 0.25, 1.0, 0.75, -0.25, -0.75, -0.5, 0.5, 0.5, -1.0, -0.5, -1.0, -0.75, 0.5, -0.75, -0.75, -0.25, 0.25, 1.0, 0.75, -0.25, -0.25, 1.0, -0.5, 0.75, 0.0, 0.75, -0.5, 0.75, 0.25, -1.0, -1.0, 0.0, 0.5, 0.5, -0.5, 0.5, -0.5, 0.0, 1.0, -0.25, 0.5, 0.25, 0.25, 0.75, 0.75, -1.0, 0.25, -1.0, -0.25, -1.0, -0.75, 0.0, -1.0, -0.25, 0.25, 1.0, -0.5, -0.5, 0.0, 0.75, -0.75, -0.25, -1.0, 0.25, 1.0, -0.25, 0.5, 1.0, -0.5, -0.75, 0.5, 0.25, 0.0, 0.75, -0.25, 0.5, 0.5, 1.0, -0.25, -0.75, 1.0, 1.0, -0.5, -1.0, -1.0, ]);
    query100.destroy()
    const command_buffer101 = command_encoder101.finish();
    
    
    
    
    query100.destroy()
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    command_encoder003.insertDebugMarker("mymarker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    texture002.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_buffer100 = command_encoder100.finish();
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture003.destroy();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    
    device10.pushErrorScope("validation");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    query000.destroy()
    device00.pushErrorScope("validation");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder006.insertDebugMarker("mymarker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    command_encoder004.insertDebugMarker("mymarker");
    
    query100.destroy()
    command_encoder005.insertDebugMarker("mymarker");
    query001.destroy()
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const command_buffer005 = command_encoder005.finish();
    query001.destroy()
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    
    compute_pass_encoder0000.popDebugGroup()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    command_encoder003.clearBuffer(buffer004);
    device20.destroy();
    command_encoder004.copyBufferToBuffer(
        buffer005,
        0,
        buffer004,
        0,
        400
    );
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    command_encoder003.copyBufferToBuffer(
        buffer005,
        0,
        buffer004,
        0,
        400
    );
    
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    
    
    const array6 = new Float32Array([-1.0, 0.0, 0.5, 1.0, -0.25, 0.0, -0.75, 0.75, 0.0, 1.0, -0.5, -0.75, 0.5, 0.5, -0.5, 0.0, -0.25, -0.75, -1.0, -0.5, -0.75, -0.25, 0.25, 0.75, 0.75, 0.75, -0.75, 0.25, -1.0, -1.0, 0.0, -0.75, 0.25, -0.5, 0.75, -0.75, 0.25, 0.0, -0.75, -0.5, 0.25, -0.75, -0.25, -0.5, 0.75, -0.5, 0.75, 1.0, 1.0, 1.0, 0.25, 0.0, 0.25, 0.25, 1.0, -0.5, 0.0, 1.0, 1.0, 0.75, -0.75, 0.5, 0.0, -1.0, -1.0, 0.0, -0.75, -0.5, 0.75, 0.5, 0.25, 0.75, 0.0, 0.5, 0.5, -0.75, 0.5, 0.5, -0.25, 0.75, 0.0, 0.0, -0.25, -0.75, 0.5, 0.0, 0.25, 0.5, -0.5, 0.0, 0.0, -0.25, 0.0, 0.5, 0.75, -0.25, -1.0, -0.75, 0.25, 0.75, ]);
    command_encoder001.clearBuffer(buffer004);
    command_encoder003.clearBuffer(buffer004);
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    texture100.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_buffer003 = command_encoder003.finish();
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module007,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module007,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query000.destroy()
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module101,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    query100.destroy()
    
    
    
    const command_buffer001 = command_encoder001.finish();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    buffer005.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    texture101.destroy();
    
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    device10.queue.submit([command_buffer101, ]);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const command_buffer007 = command_encoder007.finish();
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    compute_pass_encoder0040.popDebugGroup()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder0020.popDebugGroup()
    device10.pushErrorScope("internal");
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module004,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module004,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module101,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    compute_pass_encoder0060.popDebugGroup()
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout005]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module004,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module004,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query000.destroy()
    
    
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    
    texture103.destroy();
    const array7 = new Float32Array([-1.0, 0.75, 0.25, 0.5, -1.0, 0.5, -1.0, 1.0, 0.75, -1.0, 0.5, 0.25, -0.5, 0.25, 1.0, -1.0, 1.0, -0.75, 0.5, 0.0, 0.25, 0.5, 0.5, 0.0, -0.5, 0.75, 0.0, -0.75, -0.5, -1.0, 0.75, 0.75, -0.25, -0.5, -0.5, 0.0, 0.25, 0.75, -0.25, 0.25, 0.75, -0.75, -0.25, 1.0, 0.25, -0.75, -1.0, -1.0, 0.5, 0.5, -0.25, 1.0, 0.25, 1.0, 0.0, 0.75, 0.75, -0.75, 0.0, 0.75, -0.25, -0.25, 0.5, 0.25, -0.5, -0.5, 0.75, -0.5, 0.0, -0.25, 0.25, 1.0, -0.75, -1.0, -0.25, 0.0, 1.0, -0.75, 0.25, -0.25, 0.25, 0.5, -0.25, -0.75, 1.0, -1.0, -0.75, 0.0, 0.75, -0.5, -0.25, -0.5, 0.25, -0.5, 0.5, 0.5, -0.25, 0.75, -1.0, 0.75, ]);
    const array8 = new Float32Array([-0.75, -1.0, 0.0, -0.75, 0.5, 1.0, 0.75, 0.25, 1.0, -1.0, 0.25, 1.0, -0.5, 0.75, -0.75, 1.0, -0.5, -0.75, 0.75, 0.75, 1.0, 0.5, -0.25, 0.5, -0.25, -0.5, 0.5, -0.5, 0.25, -0.5, 0.5, -0.5, -0.25, -0.5, 0.25, 0.5, 0.25, 0.5, -1.0, 1.0, 0.0, 0.25, -0.75, -0.5, -0.5, 0.25, 0.5, -0.5, -0.75, 0.5, -0.25, 0.75, 0.75, -0.75, 0.25, 0.5, -0.75, -0.25, 0.5, 1.0, -0.5, -0.75, 0.5, 1.0, 1.0, -0.25, 1.0, -0.5, -0.25, 0.0, 0.25, -1.0, -0.5, 0.25, -0.75, 0.0, 0.5, -0.5, 1.0, -1.0, 0.25, -0.75, 0.25, 0.75, 1.0, 0.75, 0.25, -1.0, 0.0, -0.5, -0.25, 1.0, -0.75, 1.0, 1.0, -0.75, -1.0, -0.25, -0.75, 0.5, ]);
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    query101.destroy()
    
    device00.pushErrorScope("out-of-memory");
    
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module007,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module007,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    query001.destroy()
    
    
    
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    texture102.destroy();
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder0060.popDebugGroup()
    
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0020.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query001.destroy()
    buffer006.destroy()
    
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    query001.destroy()
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout002]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    query102.destroy()
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    query102.destroy()
    
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout005]
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1020.popDebugGroup()
    buffer007.destroy()
    
    query003.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    query101.destroy()
    compute_pass_encoder1030.insertDebugMarker("marker")
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    buffer004.destroy()
    query102.destroy()
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module007,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module007,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder008.insertDebugMarker("mymarker");
    device00.pushErrorScope("out-of-memory");
    
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module106,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module106,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    
    const array9 = new Float32Array([-0.75, -1.0, -0.25, -0.75, 0.0, -0.5, -0.5, -0.75, 0.0, -0.25, 0.75, 0.0, -0.25, -0.25, -0.25, -0.25, 0.0, 1.0, -1.0, -0.25, -0.25, 0.75, -0.5, 0.75, 0.75, 0.0, 0.0, 0.25, 0.5, 0.0, -0.75, 1.0, -0.5, 0.75, 0.0, 0.0, 0.75, 0.0, -1.0, -1.0, 0.25, 0.25, 0.25, 0.5, -0.5, 0.25, 1.0, -1.0, 0.0, -1.0, 0.5, -0.25, 0.75, -1.0, -1.0, 0.75, 0.0, 0.5, -0.75, 1.0, 0.0, 0.0, 0.25, 0.75, -0.75, -0.25, 0.0, 1.0, -1.0, 0.75, 0.0, 0.75, 0.5, 1.0, 0.75, -1.0, -0.75, 1.0, -0.5, 0.75, 0.25, -0.75, -1.0, -1.0, -1.0, 0.25, 0.5, 1.0, 0.75, 0.5, 1.0, -1.0, 0.75, -1.0, 0.25, 0.25, -0.75, 1.0, -1.0, -1.0, ]);
    compute_pass_encoder0000.popDebugGroup()
    query101.destroy()
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module1011,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1011,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    
    
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    const array10 = new Float32Array([-0.25, -0.5, 0.5, 0.0, 0.0, 0.25, -1.0, 0.25, 0.75, 0.5, -0.75, 0.0, 0.5, 1.0, -1.0, 0.75, -0.5, 0.0, -0.5, -0.25, -0.25, 0.5, -1.0, -0.25, -0.25, 0.25, 0.25, 0.5, -0.25, 0.75, -0.75, -0.25, -0.25, -0.5, -0.75, -0.25, 0.0, 0.25, -0.5, 0.0, -0.25, 0.75, 0.25, -1.0, 1.0, -0.5, 0.75, 0.0, 0.75, 0.0, -0.25, -0.75, -0.25, -0.5, 1.0, 1.0, -1.0, 1.0, -0.75, 1.0, -0.25, 0.75, -0.25, 0.5, 0.25, -0.5, -0.75, -0.25, 1.0, 0.75, -1.0, -0.75, 0.5, -0.5, 0.25, -0.75, -0.25, -0.25, 0.5, 0.75, -0.75, -0.5, 0.5, 0.5, -1.0, -1.0, 0.5, 1.0, 0.5, 0.75, -1.0, -0.25, 1.0, -0.75, -0.5, 1.0, 0.75, 0.75, -0.25, 0.75, ]);
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module1011,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1011,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module007,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module007,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder0060.insertDebugMarker("marker")
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module004,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module004,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    texture004.destroy();
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    
    
    device10.queue.submit([command_buffer100, ]);
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query003.destroy()
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout001]
    });
    device10.queue.writeTexture({ texture: texture104 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const array11 = new Float32Array([-0.25, 0.25, -1.0, 0.5, -0.25, 0.5, 0.75, -0.75, -0.5, 0.0, 0.75, 1.0, 0.75, 0.0, -0.25, -0.75, -0.5, 0.0, 0.5, -0.25, -0.5, -0.5, 0.25, -0.75, 0.0, 0.5, 0.0, -0.75, 0.5, 0.75, 0.0, 0.25, 0.75, 0.75, 0.0, -1.0, 0.5, 0.0, -0.5, -1.0, 1.0, 0.75, 0.75, 0.75, 0.0, 1.0, 0.0, -0.75, 0.5, 1.0, -0.5, 0.5, 0.5, -0.5, 0.0, 0.25, 0.75, 1.0, 0.25, -0.5, -0.25, -0.5, 0.5, -0.75, -0.25, 1.0, -0.5, 0.75, 0.0, 0.75, -0.5, 0.0, 0.0, -0.25, -0.25, -0.25, -0.25, -0.25, 0.25, -1.0, -1.0, 0.5, 0.5, -0.5, 0.75, -0.5, 0.0, 1.0, 0.5, 1.0, 0.75, 0.25, 1.0, 0.5, 1.0, 0.0, 1.0, 0.25, -0.75, 1.0, ]);
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("validation");
    
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module106,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module106,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    
    
    
    device30.destroy();
    
    query102.destroy()
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    device10.queue.writeTexture({ texture: texture104 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module008,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module008,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query102.destroy()
    
    
    
    query101.destroy()
    
    device10.queue.writeTexture({ texture: texture104 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder1030.popDebugGroup()
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array12 = new Float32Array([0.25, -0.75, -0.5, -0.75, 1.0, 0.75, -0.25, -1.0, 0.75, -0.75, -0.25, 0.25, -1.0, 1.0, 1.0, -1.0, 1.0, 0.0, -1.0, 0.75, 0.25, -0.5, -0.5, -0.25, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, -0.5, -0.5, -0.25, 0.75, 0.75, 0.75, 0.5, 1.0, 0.0, 0.5, 1.0, -0.25, -0.75, 0.75, 0.25, -0.5, 0.5, 0.75, -0.5, 0.5, -0.5, 0.5, 0.75, -0.25, 0.5, -1.0, -0.75, -1.0, 0.5, -0.5, -0.25, -1.0, -0.25, 0.0, -0.75, -1.0, 0.5, 0.75, -1.0, 0.75, 0.5, -0.5, -1.0, -1.0, -0.5, -0.75, 0.75, 0.75, 0.0, -0.25, -0.5, -1.0, -0.25, 1.0, 0.25, 1.0, -0.5, 0.5, 0.5, 0.75, 0.25, 0.0, -1.0, 0.0, -1.0, 0.5, -0.5, 0.5, 0.0, -0.75, ]);
    
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device10.queue.writeTexture({ texture: texture104 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture104 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    texture104.destroy();
    query004.destroy()
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query003.destroy()
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    
    texture005.destroy();
    compute_pass_encoder0060.insertDebugMarker("marker")
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    query101.destroy()
    query102.destroy()
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    buffer100.destroy()
    query002.destroy()
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module106,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module106,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query102.destroy()
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module004,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module004,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query100.destroy()
    
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer008 = command_encoder008.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer104 = command_encoder104.finish();
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer009 = command_encoder009.finish();
    compute_pass_encoder0060.popDebugGroup()
    device00.queue.submit([command_buffer009, ]);
    device00.queue.submit([command_buffer008, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer104, ]);
    device00.queue.submit([command_buffer007, ]);
}