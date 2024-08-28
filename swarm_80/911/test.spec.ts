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
        powerPreference: "low-power"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array0 = new Float32Array([1.0, 0.25, -0.5, 0.75, -0.25, 0.5, -0.25, -0.5, -0.5, 1.0, 0.25, 1.0, -0.25, 0.25, 0.5, 1.0, 0.25, 0.5, 0.5, -0.5, -0.25, 0.5, 1.0, 0.5, 0.5, 0.25, -0.75, -0.25, 0.0, -0.25, 0.5, 0.25, -0.5, -0.75, 0.5, -1.0, -1.0, 0.25, 0.0, -0.75, 0.25, -0.25, 0.25, -0.75, -0.5, 0.5, 0.25, -0.25, -0.25, 0.0, -0.75, 0.5, 0.5, -0.75, -1.0, 0.75, 1.0, -0.5, 1.0, -0.25, 0.75, -0.5, -0.25, -0.25, -1.0, -0.25, -0.75, 0.25, -1.0, -0.25, -0.5, -1.0, 0.0, 0.75, 0.0, -1.0, -1.0, 0.75, -0.5, 1.0, -0.25, -0.75, -0.25, 0.75, -0.25, -1.0, 0.0, -0.5, -0.75, 1.0, 0.5, 0.5, -0.5, 0.75, 0.0, 1.0, 0.0, -1.0, -1.0, 0.75, ]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
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
    
    device40.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const array1 = new Float32Array([1.0, 1.0, -0.5, -1.0, -1.0, 0.0, -0.75, 0.0, 0.0, -0.5, -0.75, -0.75, -1.0, 1.0, -1.0, -1.0, 0.0, 0.25, 0.25, 0.25, -0.75, 1.0, -1.0, -0.25, 0.75, 0.25, 0.5, 0.5, -1.0, -0.5, -0.25, -1.0, 0.25, -0.75, 0.75, 0.75, 0.5, 0.0, 0.5, -1.0, -1.0, 0.0, -0.25, -1.0, -0.5, 0.75, 1.0, 0.5, -0.25, -0.25, -0.5, 0.5, 0.5, 0.0, 0.25, 0.25, -0.25, 0.25, 0.5, 0.0, 1.0, 0.25, 0.5, 1.0, -0.25, -0.5, -1.0, 0.5, 1.0, 0.5, 0.0, 0.5, 0.75, 0.25, 0.75, 1.0, -1.0, 0.25, -1.0, 1.0, -1.0, 0.0, -0.25, 0.75, -0.5, -0.5, -0.5, -0.5, 0.5, 0.5, -1.0, 0.5, 0.5, 0.5, 0.5, 0.5, 1.0, 1.0, -0.75, -1.0, ]);
    
    
    
    device10.destroy();
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
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
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device30.destroy();
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const array2 = new Float32Array([0.5, -1.0, -0.75, 0.5, -0.75, -0.25, -1.0, -1.0, -0.75, 0.5, -0.5, 0.5, -0.25, -0.25, 0.0, -0.5, -0.75, -0.25, 0.75, -0.75, -1.0, 0.75, -1.0, 0.0, 0.5, 0.75, 0.75, -1.0, 1.0, -0.5, -0.75, 1.0, 0.5, -0.75, 1.0, 0.75, 1.0, 0.75, -0.25, 0.0, -0.5, -0.75, 1.0, 0.0, 0.25, 0.0, 0.5, -0.5, 1.0, 0.5, -0.25, -0.5, 1.0, 0.5, 0.75, 0.5, -0.5, -1.0, 0.75, -1.0, -1.0, 0.75, 0.25, 0.25, 0.25, 0.5, -0.75, -0.75, 0.5, 0.75, -0.75, -0.25, -0.25, 0.75, 0.25, -0.25, 0.0, 0.75, -0.75, -0.5, -0.5, -1.0, 0.75, 0.25, 0.5, 0.75, 0.5, 0.75, -1.0, -0.5, -0.25, 0.75, 0.75, 1.0, -0.25, 0.0, 0.0, -1.0, -0.25, 0.25, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder200.popDebugGroup()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device50.destroy();
    
    const array3 = new Float32Array([-0.25, 1.0, -0.75, 0.0, 0.75, -0.5, -0.5, -0.75, 1.0, -0.25, 1.0, 0.5, 0.25, 0.75, 0.0, -0.5, -0.5, -0.25, 0.5, -0.75, 0.75, -0.25, -0.75, 0.5, 0.75, -1.0, -1.0, 0.0, -0.75, -0.5, 0.25, 0.25, 0.75, 0.75, -1.0, 0.75, 0.0, -0.25, -0.75, 1.0, 0.5, 0.25, -0.75, -1.0, -0.75, -0.75, -0.25, 0.25, 1.0, -0.25, 0.0, -0.5, 1.0, -0.75, 0.0, 0.75, -1.0, -0.25, -0.75, -0.5, 0.75, 1.0, 1.0, 0.75, -0.25, -0.5, 0.0, -0.75, 0.25, 0.75, 0.0, -0.5, -0.5, 1.0, -0.25, 0.5, -0.25, 0.75, -1.0, 0.5, -1.0, -1.0, 0.0, 0.75, 0.5, 0.0, 0.25, 0.25, -0.25, -0.5, 0.0, 0.25, -1.0, -0.25, -0.25, 0.75, 1.0, 0.5, 0.75, 0.5, ]);
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    const array4 = new Float32Array([0.5, 1.0, -0.25, 0.0, -0.25, 1.0, -0.25, -0.75, -0.75, 0.0, 0.0, -1.0, 0.0, -0.5, -0.5, -0.75, -0.5, -0.5, 1.0, 0.75, 0.25, 1.0, 0.75, -0.5, -0.25, 0.75, 0.5, -1.0, 0.75, 1.0, 0.0, 0.5, 0.0, -0.5, 0.5, 1.0, -0.5, 0.0, 0.5, -1.0, 0.25, -0.75, -0.25, -1.0, 0.0, 0.75, -0.75, 0.75, -0.5, -0.75, 0.0, -0.5, 0.75, 0.0, 1.0, -0.25, 1.0, -0.75, -0.75, -0.75, 1.0, 0.25, 0.75, -0.25, -1.0, 0.75, -0.75, 0.5, -0.75, 0.75, -1.0, 0.25, -0.75, 0.0, 0.0, 0.25, 0.5, -0.5, 0.75, 0.25, 0.75, -0.75, 1.0, -1.0, 0.25, 0.75, 0.75, 0.5, -1.0, -0.25, -0.25, -0.5, 0.75, -0.5, -0.25, 0.75, 0.5, -0.25, -1.0, 0.25, ]);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_bundle_encoder202.popDebugGroup();
    
    device60.pushErrorScope("validation");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder200.clearBuffer(buffer201);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
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
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device00.pushErrorScope("out-of-memory");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder200.clearBuffer(buffer201);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    buffer000.destroy()
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder200.clearBuffer(buffer200);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer200,
        0,
        400
    );
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder203.copyBufferToBuffer(
        buffer202,
        0,
        buffer201,
        0,
        400
    );
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    buffer002.destroy()
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
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
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    const command_buffer600 = command_encoder600.finish();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
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
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer200,
        0,
        400
    );
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const command_buffer204 = command_encoder204.finish();
    
    buffer201.destroy()
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    command_encoder205.clearBuffer(buffer200);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    buffer202.destroy()
    
    compute_pass_encoder2010.popDebugGroup()
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
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
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    command_encoder200.popDebugGroup()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    compute_pass_encoder0000.popDebugGroup()
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
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
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    
    
    
    
    
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder7000.setPipeline(compute_pipeline700);
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    
    
    
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const array5 = new Float32Array([0.75, -1.0, 0.25, 0.5, 1.0, 0.75, 1.0, 0.75, 1.0, -0.5, -1.0, -0.5, -0.75, -1.0, -0.5, -0.5, 0.5, -0.5, -0.25, 0.5, -1.0, 0.0, -0.75, 0.5, -0.25, -0.75, 0.75, 0.5, 1.0, 0.0, -0.75, 0.5, 0.25, 1.0, -1.0, 0.25, 1.0, 0.5, -0.5, -0.75, -0.25, -1.0, -1.0, 0.25, -0.75, -0.75, 0.5, 0.5, -0.75, 0.0, -0.25, -0.75, -0.75, 0.5, -0.25, -0.25, 0.0, 0.0, 0.5, -0.75, -0.75, 0.0, 1.0, 0.5, -0.25, -1.0, -0.75, 0.75, 0.75, -0.25, -0.5, 0.25, -1.0, 0.25, -1.0, 1.0, 0.25, -1.0, -0.75, 0.0, 0.25, -1.0, 0.0, 0.0, -0.25, -0.25, -0.75, -1.0, 0.75, -1.0, -0.75, -1.0, -0.75, -0.5, -0.25, -0.25, 1.0, -0.5, 0.0, 0.75, ]);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2050.setPipeline(compute_pipeline200);
    buffer001.destroy()
    
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const command_buffer001 = command_encoder001.finish();
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    compute_pass_encoder2010.popDebugGroup()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    compute_pass_encoder2030.setPipeline(compute_pipeline202);
    buffer203.destroy()
    
    compute_pass_encoder2010.setPipeline(compute_pipeline202);
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group200);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    
    device70.pushErrorScope("internal");
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    buffer200.destroy()
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const array6 = new Float32Array([-1.0, 0.25, 0.25, 0.25, -0.75, 0.25, 0.0, 0.5, 0.0, -0.25, 0.5, 1.0, -1.0, -0.75, 0.0, -1.0, -0.25, -1.0, 0.5, 0.75, 1.0, 0.25, 0.25, 0.5, 0.5, -0.5, 0.0, 0.0, 0.0, -1.0, 1.0, -0.5, 0.25, 0.75, -1.0, -0.75, -0.75, 0.5, 0.25, -0.5, -0.5, 0.75, -0.5, -0.25, 0.5, -0.5, -0.75, 1.0, 0.25, 0.5, 0.5, 0.25, -1.0, -0.75, -0.5, -0.75, 0.5, 0.25, -0.75, 0.75, -0.75, 0.75, 0.5, 0.75, 1.0, 0.5, -0.75, 0.75, 0.25, 1.0, 1.0, -0.5, 0.0, 0.0, -1.0, 1.0, 0.25, 0.25, -1.0, -0.75, 0.0, 1.0, 1.0, -0.5, 0.25, 1.0, 1.0, 0.5, -0.25, 0.75, -1.0, 0.25, 1.0, -0.5, -1.0, 0.25, 0.25, 0.25, -0.75, 0.0, ]);
    render_bundle_encoder200.popDebugGroup();
    
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    compute_pass_encoder2000.setPipeline(compute_pipeline205);
    
    
    
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    buffer601.destroy()
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout603]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder206.pushDebugGroup("mygroupmarker")
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    device60.queue.submit([command_buffer600, ]);
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder2020.setPipeline(compute_pipeline203);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout203]
    });
    compute_pass_encoder2050.popDebugGroup()
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    buffer206.destroy()
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout208,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout701]
    });
    compute_pass_encoder2050.insertDebugMarker("marker")
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout606,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout603]
    });
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.popDebugGroup();
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    
    compute_pass_encoder2050.popDebugGroup()
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout204,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array7 = new Float32Array([1.0, 0.0, -0.75, -0.25, 0.0, 0.0, 0.5, 0.0, -0.25, -0.5, -0.25, 0.25, 1.0, 0.75, 0.5, 0.75, 1.0, -0.25, 0.75, 0.75, -1.0, -1.0, -0.5, 0.25, -0.75, -0.75, 0.75, 0.75, -1.0, 0.75, -0.5, 0.5, -0.25, 0.5, 0.25, 0.75, -0.25, 0.75, -0.75, 1.0, 0.75, -0.25, 0.25, 0.25, 0.0, 0.0, 1.0, 0.25, 0.75, 0.0, 0.5, 0.0, 1.0, -0.25, 0.5, -0.25, 0.25, -0.5, -0.75, 0.5, -0.25, 0.25, -0.25, -0.75, 0.75, -0.25, 0.75, -0.25, -0.5, -0.5, -0.25, 0.0, 1.0, -0.5, 0.25, -1.0, 0.25, -0.5, 0.25, -0.75, 0.5, -1.0, 0.25, -0.5, -0.75, -0.25, -0.75, 1.0, 0.75, -0.25, 0.75, -0.5, 0.75, 0.0, 1.0, -0.75, -1.0, -0.5, -1.0, 0.5, ]);
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile(__dirname + '/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    command_encoder601.pushDebugGroup("mygroupmarker")
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout705,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    
    
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    compute_pass_encoder7000.insertDebugMarker("marker")
    command_encoder206.popDebugGroup()
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout702,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout705,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7011 = device70.createComputePipeline({
        label: "compute_pipeline7011",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout607,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pipeline7012 = device70.createComputePipeline({
        label: "compute_pipeline7012",
        layout: pipeline_layout705,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6020.setPipeline(compute_pipeline605);
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout208,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.dispatchWorkgroups(100);
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    const compute_pipeline7013 = device70.createComputePipeline({
        label: "compute_pipeline7013",
        layout: pipeline_layout703,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    buffer2011.destroy()
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline7014 = device70.createComputePipeline({
        label: "compute_pipeline7014",
        layout: pipeline_layout705,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7015 = device70.createComputePipeline({
        label: "compute_pipeline7015",
        layout: pipeline_layout701,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    buffer700.destroy()
    
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder2010.end();
    command_encoder601.popDebugGroup()
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder2050.dispatchWorkgroups(100);
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline605.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group600);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group203);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group204);
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    compute_pass_encoder2020.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2017, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2017, 0);
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer703,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group700);
    const command_buffer003 = command_encoder003.finish();
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer704, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer704, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder7000.end();
    const command_buffer206 = command_encoder206.finish();
    compute_pass_encoder2020.end();
    compute_pass_encoder2030.end();
    const command_buffer202 = command_encoder202.finish();
    device60.queue.submit([command_buffer601, ]);
    device00.queue.submit([command_buffer003, ]);
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer606, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer606, 0);
    const command_buffer700 = command_encoder700.finish();
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder2050.end();
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder6020.end();
    const command_buffer602 = command_encoder602.finish();
    device60.queue.submit([command_buffer602, ]);
    const command_buffer203 = command_encoder203.finish();
    const command_buffer205 = command_encoder205.finish();
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer203, command_buffer204, command_buffer206, ]);
}