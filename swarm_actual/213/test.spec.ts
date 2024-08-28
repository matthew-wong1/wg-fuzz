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
    
    const array0 = new Float32Array([1.0, 0.25, -1.0, -0.75, 0.75, 1.0, -0.5, -0.5, 0.75, 0.5, 1.0, 0.5, 0.0, 0.5, 1.0, -0.5, 0.75, -0.25, -0.25, -0.25, -0.25, -1.0, 0.75, 0.0, -0.25, -0.25, 1.0, 1.0, 0.5, 0.75, 0.75, 1.0, 0.25, -0.5, -0.25, -0.25, -0.5, -1.0, -0.25, 0.75, -0.5, -1.0, 0.75, 0.25, -0.25, 0.0, 0.25, -0.5, 1.0, 0.75, 0.5, -0.25, 1.0, 0.0, -0.75, -0.25, -0.25, 0.5, -0.75, -0.5, 0.0, 0.25, -0.25, -1.0, 0.5, -0.75, -0.25, 0.25, 0.75, -0.75, 0.5, 0.75, -1.0, 0.75, -1.0, 1.0, -1.0, 1.0, -0.5, -0.25, 0.0, 0.0, 0.0, 0.5, 0.25, 0.5, 1.0, 0.5, 0.75, -1.0, 1.0, 0.75, -0.25, 1.0, 0.5, -0.75, -0.25, 0.5, 0.5, 0.75, ]);
    const array1 = new Float32Array([0.75, 0.0, -0.75, 1.0, -0.75, 0.75, 0.25, 0.5, -0.5, 0.75, 0.75, 0.75, 0.25, -0.5, 0.25, 1.0, 0.25, -0.5, -0.25, 1.0, -0.75, 0.75, 0.25, 0.25, 0.75, 0.25, 0.25, 0.25, 1.0, -1.0, 1.0, -0.75, 0.75, 0.25, 0.25, -0.25, 0.75, 0.0, 0.0, 0.25, -1.0, -0.75, -0.5, -0.75, -0.25, 1.0, -0.5, 0.75, 0.75, 0.75, 0.5, 1.0, -0.5, 0.75, -0.75, 1.0, 0.75, -1.0, 0.5, 0.75, -0.5, 0.75, 0.0, 1.0, 1.0, -0.5, 0.5, -0.25, -1.0, 0.0, 1.0, 0.25, -0.25, -0.5, 0.75, 1.0, 0.25, 1.0, 0.5, 0.0, 0.0, 0.0, -0.5, 0.75, -0.5, -0.75, -0.75, -0.5, -0.25, -0.75, -0.75, -0.25, 0.25, -0.75, 0.0, -0.75, -1.0, -0.5, 0.0, 1.0, ]);
    const array2 = new Float32Array([-0.5, -0.75, 0.5, -0.25, -1.0, 0.5, 0.5, 0.5, -1.0, 0.75, 0.0, 0.0, -0.5, 0.0, 1.0, -0.75, 0.0, 1.0, 1.0, 1.0, 0.25, -0.5, 1.0, 0.0, -0.75, -0.5, -1.0, -1.0, -0.5, 0.25, 0.75, 0.25, 0.25, 0.0, 0.0, -0.5, -0.75, 0.25, 0.0, -0.25, -0.75, 0.75, -0.25, 0.25, 1.0, 0.25, 0.5, -0.5, 1.0, 0.0, 0.25, 0.75, 0.5, -0.5, -0.5, -0.25, -0.75, -1.0, 0.75, 0.25, 0.25, -1.0, -0.75, 1.0, 0.0, 0.75, 0.0, -1.0, -0.25, 0.25, -0.75, 0.5, 0.75, 0.5, -0.25, 0.5, -1.0, 0.75, -1.0, 0.25, -0.5, 0.0, -0.25, 0.5, -0.5, 0.5, -0.5, -0.5, 1.0, 0.0, -0.75, 1.0, -0.25, 0.75, 0.5, 0.25, 0.0, 0.0, 0.0, -0.25, ]);
    const array3 = new Float32Array([0.0, -0.25, 1.0, 1.0, 1.0, -1.0, 0.25, 0.5, 0.75, 1.0, -0.25, -1.0, 0.0, 0.25, 0.5, 0.0, -0.75, -0.5, 1.0, -0.25, 0.75, -0.75, 0.25, 0.0, 0.5, 0.5, -0.5, -1.0, -0.75, 0.0, 0.0, -0.25, -0.25, -0.75, 0.5, 1.0, 0.25, 0.5, 0.0, 0.25, 0.0, -1.0, -0.75, 0.0, 0.0, -0.25, 1.0, -0.75, 1.0, 0.25, -0.25, -0.75, -0.5, -0.5, 1.0, -0.75, -0.25, -0.25, -0.75, -0.75, -0.75, -0.75, 0.25, 0.5, -0.75, -1.0, 0.0, -0.5, -0.25, -1.0, 0.0, 1.0, 0.75, -0.5, 0.75, 1.0, -0.25, 0.75, -1.0, 1.0, -1.0, 0.75, 0.5, 0.75, 0.5, 0.0, -0.75, 0.75, 1.0, 0.5, -0.75, 0.0, 0.25, -0.5, 0.75, 0.75, 0.0, 0.5, -0.75, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([-0.75, 0.5, -0.5, -0.5, -0.5, 0.75, 1.0, 0.25, -0.25, 0.5, -1.0, 1.0, -0.75, 0.5, -0.25, 0.25, -0.5, -1.0, -1.0, 0.25, 0.0, 0.5, 0.25, -0.25, -1.0, -0.5, 0.0, -1.0, -0.5, -0.75, 0.0, 0.5, -0.75, 0.0, -0.5, -1.0, 0.25, 0.25, 0.5, -0.25, -0.75, 1.0, -0.75, -0.75, 0.0, 0.25, -1.0, 0.25, -0.25, -0.5, -0.25, -0.25, 0.25, -0.25, -0.5, -0.75, -1.0, 0.25, -1.0, -0.75, -0.5, 0.75, 0.75, 0.5, 0.0, 1.0, 0.0, 1.0, -0.25, 0.0, 0.0, -1.0, -1.0, 0.5, -0.75, -0.75, 1.0, -0.5, -1.0, -0.5, -0.75, 0.0, 0.5, 0.75, 0.25, -0.75, 0.25, 0.0, 0.75, 0.5, 0.25, -0.75, -1.0, 0.5, 0.0, 0.5, 1.0, 0.5, 0.75, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("out-of-memory");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array5 = new Float32Array([0.0, 0.5, -1.0, 0.75, 0.75, 0.5, -0.5, -0.5, 0.25, 0.0, 0.75, 0.75, 0.25, -1.0, -0.5, -0.75, 0.25, -1.0, 0.0, -0.75, -0.25, 0.25, 1.0, -0.5, 0.75, 0.5, 0.25, -0.5, 0.25, 0.5, 0.25, 1.0, 1.0, -0.75, 1.0, -1.0, 0.25, 0.0, 0.75, -0.5, 0.25, 0.25, 0.25, -0.5, 0.25, -0.75, -1.0, -0.25, 0.25, 1.0, 1.0, -0.75, 1.0, -0.75, -1.0, 0.25, 0.75, 0.0, -0.25, 1.0, -1.0, -1.0, 0.75, -1.0, -0.75, -0.75, 0.25, 0.75, -0.25, -1.0, 0.5, 0.5, 1.0, -0.75, 0.0, 0.75, -0.5, 1.0, -1.0, -0.5, -0.5, 0.75, -0.5, 0.75, -0.75, 0.0, 1.0, -1.0, -0.25, -1.0, -1.0, 0.5, 0.5, -0.25, 0.75, 0.75, 0.0, 1.0, -0.25, -0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer000.destroy()
    device10.pushErrorScope("internal");
    const array6 = new Float32Array([0.75, -1.0, -0.75, 1.0, -0.25, 0.0, 0.75, -0.5, 1.0, -0.75, 0.75, 0.5, -0.25, -0.25, -0.5, 0.75, -0.75, -0.75, -0.25, 1.0, 0.0, -0.5, 0.0, 0.25, 0.5, -0.25, 1.0, 0.5, 0.75, 0.5, -1.0, -0.5, -0.25, -0.25, 0.75, -0.25, 1.0, -0.5, 0.25, 0.5, 0.0, -1.0, -0.25, -0.25, -0.25, -0.5, 1.0, 0.75, 0.0, 1.0, 0.25, 0.5, -0.25, 0.75, 0.5, 0.5, 0.0, -0.25, 1.0, 1.0, 0.75, 0.5, -1.0, -0.25, 0.5, -0.5, 0.0, 1.0, -0.5, 0.0, 0.25, 0.5, 0.5, 1.0, 0.75, 1.0, 1.0, -0.5, -0.5, -0.75, 0.5, -1.0, -1.0, -1.0, 0.25, -0.5, 0.25, -0.25, -0.75, 0.0, -1.0, 0.25, -0.75, -0.75, -0.75, 0.0, -0.25, -0.25, 0.5, -0.25, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer100.destroy()
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const array7 = new Float32Array([-1.0, 0.25, 1.0, 0.25, 0.75, -0.5, 0.0, -1.0, -0.25, -0.25, 0.5, -0.5, 1.0, -1.0, -0.5, 0.0, -1.0, 0.25, -0.5, 1.0, -0.75, 1.0, 0.75, 1.0, -0.25, -0.25, -0.75, -0.75, -0.5, 1.0, -0.5, 0.5, 0.5, 0.25, 0.75, -0.5, 0.5, -1.0, 0.75, -0.75, 0.0, 1.0, 0.75, 1.0, 0.75, -0.5, 0.5, 1.0, 0.75, -0.5, -0.5, 1.0, 0.5, -0.5, 0.5, 1.0, 1.0, 1.0, 0.25, 0.25, 0.5, 1.0, -0.5, 0.25, -0.5, 0.75, -0.75, -1.0, -0.75, 0.5, 0.75, 0.0, 0.75, -0.75, -0.5, -0.75, 0.75, 0.0, 0.25, 0.75, -0.25, 0.75, -0.25, 0.75, 0.25, 0.0, -1.0, 0.75, 1.0, -1.0, -0.5, -0.5, 0.0, -1.0, 0.0, 0.0, 0.0, 0.25, 0.75, 0.5, ]);
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device20.destroy();
    buffer102.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("validation");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    device30.destroy();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
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
    
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    buffer101.destroy()
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const array8 = new Float32Array([0.5, -0.25, -0.5, -0.5, 0.0, 0.0, -0.5, 0.5, 0.5, -0.25, 0.25, -0.75, 0.25, 0.0, -0.25, 1.0, 0.75, 0.25, 0.75, -0.5, 0.5, -0.5, 0.25, 1.0, 0.5, 0.5, 0.0, 0.5, 0.75, -0.75, 0.75, 0.75, 0.5, 0.25, -0.25, -0.75, -0.75, -0.5, 0.0, 1.0, -0.5, -0.75, 1.0, 0.5, 0.75, -0.25, 1.0, 0.75, 0.0, -0.75, 0.25, -0.25, 0.75, -0.25, -0.5, 0.0, 1.0, 0.75, -0.5, -1.0, -0.25, -1.0, -1.0, 0.5, -1.0, -0.5, 0.25, 0.25, -1.0, -0.75, -0.5, 1.0, 1.0, 0.25, 0.0, 0.25, -0.5, -0.75, 0.25, 0.0, -0.75, 0.75, 0.5, 0.0, -0.75, -0.25, -0.5, 0.0, -0.5, 0.75, 1.0, -0.25, -1.0, 1.0, 1.0, 0.0, -0.75, -0.25, -0.75, -1.0, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer103.destroy()
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    compute_pass_encoder1000.popDebugGroup()
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device50.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.popDebugGroup();
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder401.copyBufferToBuffer(
        buffer401,
        0,
        buffer400,
        0,
        400
    );
    command_encoder401.copyBufferToBuffer(
        buffer401,
        0,
        buffer400,
        0,
        400
    );
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder400.popDebugGroup()
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
    buffer400.destroy()
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout403]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    buffer401.destroy()
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    
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
    const array9 = new Float32Array([0.25, 0.25, 0.25, 0.0, -0.75, 1.0, 0.0, -1.0, 0.5, 1.0, 1.0, 0.5, -0.5, 0.75, -1.0, -0.25, 0.25, 0.5, -1.0, 0.25, 0.75, 0.75, 0.0, -1.0, 1.0, 0.0, 0.0, 1.0, 0.25, 0.75, 0.0, -0.5, -0.5, -0.75, 1.0, -0.75, 0.5, -0.75, 1.0, -0.5, 0.25, 1.0, 0.5, 1.0, 0.75, 0.0, -0.5, 0.75, 0.5, 0.75, 1.0, 0.5, 1.0, 0.25, 0.25, 0.25, 1.0, -0.25, -0.5, 1.0, 0.0, 0.75, -0.25, -0.5, 0.25, -0.5, -0.25, 0.0, -0.5, -0.75, -0.25, 0.25, 0.0, -0.5, 0.75, 0.25, 0.5, -0.75, 1.0, 0.0, 0.75, 1.0, -0.25, 0.25, -0.5, 0.5, 0.0, -0.5, 0.75, 0.75, -0.25, 0.25, 0.0, -0.5, 0.75, -0.25, -0.25, -1.0, 1.0, 1.0, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    buffer403.destroy()
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device40.pushErrorScope("out-of-memory");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.popDebugGroup();
    
    
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder401.popDebugGroup();
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    buffer105.destroy()
    
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const array10 = new Float32Array([-0.75, -1.0, -0.75, 1.0, -0.75, 0.25, 0.0, -1.0, 0.5, -0.25, -0.25, 0.5, -0.5, 0.0, -1.0, 0.5, 0.5, 1.0, 0.5, 0.75, -0.5, -0.25, -0.75, -0.25, 0.75, 1.0, -1.0, -0.75, -0.75, 0.5, -0.25, 0.5, 0.75, 0.75, 1.0, 0.0, -0.5, 0.0, 0.0, 0.25, 1.0, -0.75, 0.5, 0.75, -0.25, 0.75, -0.75, -1.0, 0.25, 0.5, 0.75, 0.75, -0.25, 1.0, 0.0, 0.25, 0.0, -0.5, 0.75, 0.25, -0.25, 0.25, 0.75, -0.75, 0.5, -0.25, 0.25, -0.75, -0.25, 0.25, 1.0, -0.5, -0.25, 0.25, -0.5, -0.75, 0.0, 0.0, 0.5, 0.5, 0.5, -0.75, -0.25, -1.0, 0.0, 0.5, -0.25, -1.0, -0.25, -0.5, 0.25, -0.5, -1.0, 0.25, -1.0, 0.75, 0.0, -0.5, -0.75, 0.5, ]);
    const array11 = new Float32Array([1.0, -0.75, 0.75, -1.0, -1.0, 0.25, 0.5, -0.25, -1.0, 0.75, 0.0, 0.5, 0.75, 0.25, 0.0, 0.25, -0.5, 1.0, 0.5, -0.5, -0.75, 1.0, 0.75, 0.5, 0.25, -0.5, -0.75, 0.75, 0.0, -1.0, -0.5, -0.25, -0.25, 0.0, 0.0, 0.5, -0.75, -0.5, -0.5, 0.25, -0.25, -0.75, -0.25, -0.25, -1.0, 0.5, 1.0, 1.0, 0.25, -0.75, -0.25, -0.75, 0.25, -0.25, -0.25, 0.25, 1.0, 0.75, 0.0, 0.25, -0.25, 0.75, -1.0, -0.25, 1.0, 0.5, -1.0, -0.5, -0.5, -0.25, -1.0, -0.75, -0.5, -0.5, 1.0, 0.75, -0.5, -1.0, 0.5, -0.75, -0.25, -0.25, 1.0, -0.5, 0.25, 0.75, -0.5, 0.75, -0.5, 0.0, 0.5, 0.5, 0.5, 0.75, -0.25, 1.0, 0.25, 1.0, -0.5, 0.0, ]);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    const array12 = new Float32Array([0.75, -0.25, -0.5, -0.75, 1.0, -0.75, 0.25, 0.0, -0.75, -1.0, 1.0, 0.5, 0.25, 0.0, 0.25, -1.0, -0.25, -0.75, 0.25, -0.25, -0.5, -0.25, 0.25, 0.0, 0.0, 0.25, -0.25, -0.5, -1.0, -0.5, 0.75, -1.0, 0.0, -0.5, -0.5, -0.25, 0.75, 0.75, 0.25, 0.0, -1.0, -1.0, -1.0, 0.75, 0.0, 0.75, 0.0, 1.0, -0.5, 0.75, 0.25, -1.0, -1.0, -0.25, -0.25, -1.0, 1.0, -0.25, -0.5, 0.5, 0.0, -0.25, -0.5, 1.0, -0.75, 0.25, -1.0, 0.5, -1.0, -1.0, -0.75, -0.5, 0.5, 0.75, -0.25, 0.25, 0.0, 0.5, -1.0, 1.0, -0.25, 0.0, 0.25, -1.0, -0.5, -0.5, -0.25, -0.25, 1.0, -1.0, -0.5, 1.0, 0.0, 0.5, 1.0, 0.25, -1.0, 0.0, 1.0, -1.0, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder400.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    device10.pushErrorScope("internal");
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder4010.popDebugGroup()
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    device60.pushErrorScope("validation");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    render_bundle_encoder101.popDebugGroup();
    {
        await buffer602.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer602.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer602.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout103]
    });
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout104]
    });
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout403]
    });
    const array13 = new Float32Array([0.25, -1.0, 0.75, -0.5, -0.75, 0.75, 0.25, -1.0, -0.25, 0.25, -0.25, 0.0, -0.75, 0.5, 0.5, -0.75, -0.75, -0.5, 1.0, 1.0, 1.0, 0.0, -1.0, -1.0, 0.25, 0.5, -0.5, 1.0, 0.5, 1.0, -0.75, 0.25, -0.25, -0.75, -0.5, -0.75, -0.75, 0.75, -1.0, -0.5, 1.0, -0.5, 1.0, 0.0, 0.5, 0.0, -0.75, 0.0, 0.5, -0.5, -0.5, 0.75, -1.0, -0.5, 0.0, 0.0, -1.0, 0.25, 0.75, 0.0, -0.25, 0.5, 0.5, 0.75, 1.0, -1.0, 0.25, -0.25, 0.75, -0.5, -0.75, -0.25, 1.0, 0.0, -0.5, -0.25, 0.0, 1.0, -0.75, 1.0, -1.0, -0.5, 1.0, -1.0, -1.0, 0.0, -0.5, 0.25, -0.5, 0.0, -1.0, 0.0, 0.25, 0.25, -0.75, 0.5, -0.75, 0.75, 0.25, -0.75, ]);
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout400]
    });
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout403]
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device60.queue.writeBuffer(buffer602, 0, array4, 0, array4.length);
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    command_encoder600.popDebugGroup()
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    
    device60.queue.writeBuffer(buffer602, 0, array10, 0, array10.length);
    buffer402.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder402.pushDebugGroup("group_marker");
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer601.destroy()
    buffer106.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder4020.insertDebugMarker("marker")
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout105]
    });
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    compute_pass_encoder4000.popDebugGroup()
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    device60.queue.writeBuffer(buffer602, 0, array7, 0, array7.length);
    device60.queue.writeBuffer(buffer602, 0, array9, 0, array9.length);
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout105]
    });
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout102]
    });
    device60.queue.writeBuffer(buffer602, 0, array11, 0, array11.length);
    
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    buffer602.destroy()
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const array14 = new Float32Array([0.25, -1.0, 1.0, -0.75, -0.5, 0.75, 1.0, 0.25, 0.25, -0.75, -1.0, -0.75, 0.5, 0.75, -1.0, -0.25, -0.25, 0.25, 0.0, -0.75, -0.5, -0.5, -0.75, 1.0, 0.0, 0.0, -0.5, 0.0, 0.25, 0.0, 0.25, 1.0, -0.25, 0.5, 0.5, 0.0, 1.0, 1.0, 0.25, 0.5, -0.25, 0.75, -0.75, 0.0, 1.0, 0.0, 0.5, -0.75, 0.25, 0.75, 0.75, 0.75, 0.0, 0.0, -0.25, 0.0, 0.75, 0.25, 0.25, 1.0, -0.75, 0.0, 0.0, 0.75, 1.0, -0.25, 0.25, 0.5, 0.75, 0.75, -0.25, 0.0, -1.0, 0.25, 0.5, 0.0, 1.0, 0.0, -1.0, 0.25, 0.0, 0.25, 0.0, -1.0, 0.75, 0.5, -0.25, 0.75, -0.25, 0.5, 0.75, -0.25, 0.5, 0.0, 0.25, 0.25, 0.5, 0.5, -0.25, -0.75, ]);
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder101.popDebugGroup();
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    buffer600.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    buffer405.destroy()
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    buffer104.destroy()
    
    
    
    
    
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.pushErrorScope("internal");
    render_bundle_encoder600.insertDebugMarker("marker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_bundle_encoder601.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder600.popDebugGroup();
    
    
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout405]
    });
    buffer604.destroy()
    
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout405]
    });
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    render_bundle_encoder602.insertDebugMarker("marker");
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    device60.pushErrorScope("validation");
    
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    buffer404.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    const pipeline_layout4016 = device40.createPipelineLayout({ 
        label: "pipeline_layout4016",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    render_bundle_encoder601.popDebugGroup();
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1020.popDebugGroup()
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const array15 = new Float32Array([-0.25, 0.75, 0.0, 0.5, -1.0, -0.25, -0.75, 0.75, 1.0, 0.75, 0.0, 0.75, -0.5, 0.0, -0.5, -1.0, -0.25, 0.5, 0.25, 0.5, 0.5, -0.75, 0.0, -0.5, 1.0, 0.5, 1.0, -1.0, 1.0, -1.0, -0.75, -0.5, 0.75, 0.25, -1.0, 0.0, 0.75, 0.0, 0.0, 1.0, 0.75, -0.25, 0.25, 0.5, 0.75, -0.5, 0.0, -1.0, -0.5, 0.5, 0.5, 0.5, 0.25, -1.0, 0.25, -0.5, 1.0, 0.5, -1.0, 1.0, -1.0, 0.0, 0.75, -0.5, -0.5, -0.75, 0.25, -0.5, 1.0, 0.25, -1.0, -1.0, -1.0, 0.25, 0.25, -0.5, -0.5, 0.25, 1.0, 0.75, 0.5, 0.75, -0.75, -1.0, 0.25, -0.25, -0.5, 0.25, 1.0, 0.5, 0.75, 1.0, 0.0, 0.0, -0.5, 0.75, -0.75, 0.0, 1.0, 0.25, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder1010.popDebugGroup()
    
    buffer603.destroy()
    compute_pass_encoder4010.insertDebugMarker("marker")
    const pipeline_layout4017 = device40.createPipelineLayout({ 
        label: "pipeline_layout4017",
        bindGroupLayouts: [bind_group_layout403]
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout106]
    });
    compute_pass_encoder4010.popDebugGroup()
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const pipeline_layout4018 = device40.createPipelineLayout({ 
        label: "pipeline_layout4018",
        bindGroupLayouts: [bind_group_layout402]
    });
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder4040.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    compute_pass_encoder4040.insertDebugMarker("marker")
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const command_buffer405 = command_encoder405.finish();
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout106]
    });
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
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
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder4020.insertDebugMarker("marker")
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout105]
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    compute_pass_encoder4040.popDebugGroup()
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    buffer605.destroy()
    
    
    const pipeline_layout4019 = device40.createPipelineLayout({ 
        label: "pipeline_layout4019",
        bindGroupLayouts: [bind_group_layout401]
    });
    compute_pass_encoder4040.insertDebugMarker("marker")
    
    const compute_pass_encoder4060 = command_encoder406.beginComputePass({ label: "compute_pass_encoder4060" });
    device70.destroy();
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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
    device40.queue.submit([command_buffer405, ]);
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const bind_group_layout109 = device10.createBindGroupLayout({ 
        label: "bind_group_layout109",
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
    render_bundle_encoder600.popDebugGroup();
    
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer407 = command_encoder407.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer407, ]);
}