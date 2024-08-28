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
    const array0 = new Float32Array([-0.5, 0.5, 0.5, 0.5, -0.5, -1.0, 0.5, 0.75, 0.75, 0.75, -1.0, -1.0, -0.75, 0.0, -1.0, -0.5, 0.75, 0.5, 0.75, -0.5, -1.0, 0.0, -0.75, -0.5, -1.0, -0.25, 0.0, -0.25, -0.5, -0.75, -0.75, 0.75, -0.5, 1.0, -0.5, 0.25, 0.25, 1.0, 0.5, 1.0, 0.75, -0.25, 0.5, 0.75, 0.5, 0.75, 0.75, 0.75, 0.5, -0.75, -0.25, 0.75, -0.5, 0.25, 0.5, 1.0, -0.75, -0.5, -0.5, -0.5, 0.25, -0.5, 0.5, 0.25, 0.0, 0.0, 0.0, -0.25, -0.75, -0.5, -0.25, 0.25, 1.0, -0.75, -1.0, -0.5, -0.5, 1.0, -1.0, -0.75, -0.75, 1.0, 0.0, -0.5, 1.0, 0.5, 0.5, 0.0, -0.25, -0.25, -0.75, 1.0, 0.0, 0.75, -1.0, 0.75, 0.75, 0.0, -0.75, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array1 = new Float32Array([0.75, -0.5, 1.0, -0.25, -0.5, 0.5, -1.0, -0.25, -0.5, -1.0, 0.75, -1.0, 0.5, 1.0, 0.0, -0.75, 1.0, 0.5, -0.25, 0.75, 0.0, -1.0, 0.5, -0.75, 0.5, 0.75, 0.25, 0.25, 0.25, 0.0, -0.75, 1.0, 0.0, -1.0, 0.0, -0.75, 0.0, -0.5, -0.5, 0.75, 0.0, 0.5, -0.75, -0.75, -1.0, -0.25, -0.75, -1.0, 0.5, 0.5, 0.5, 0.5, 0.25, 0.25, 0.25, -0.25, -0.25, -0.25, 0.75, -0.75, 0.5, 0.75, -0.25, -1.0, 0.75, 1.0, 0.0, 0.0, 0.5, -0.25, -1.0, -0.75, 0.75, -1.0, 0.5, 1.0, 0.75, -1.0, 0.75, 1.0, 1.0, -0.25, -0.5, -0.75, 0.25, -0.75, -0.5, -0.25, 0.75, 0.5, -0.75, 0.0, 0.0, 0.75, -0.75, -0.25, -0.25, -0.25, -0.75, -0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array2 = new Float32Array([-1.0, 0.25, 0.75, 1.0, -1.0, -0.75, -1.0, 0.25, -0.75, 0.0, 0.75, 0.0, -0.25, 0.25, -0.5, 1.0, -0.75, -0.75, 1.0, -0.5, -0.25, -1.0, 0.5, -0.5, -1.0, 0.0, 0.75, 0.25, 1.0, 0.5, -0.5, -0.75, -0.75, 0.25, -0.75, -0.5, 1.0, 0.75, -1.0, -0.5, 1.0, 0.75, 0.5, 0.0, 0.5, -1.0, -0.5, 1.0, 0.5, 0.0, 0.75, 1.0, -0.5, 0.0, 1.0, 0.75, -0.5, -0.25, 0.5, -0.75, -0.75, -0.75, 0.5, 0.75, -0.25, 0.75, 0.5, 0.25, -1.0, -0.25, 0.25, -1.0, 0.5, 0.0, -0.75, 0.25, 0.75, 0.0, 1.0, 1.0, 0.25, -0.5, -0.5, 0.0, 0.25, -1.0, 0.5, 0.25, -0.25, -0.5, -1.0, 0.0, -0.75, 0.0, -0.25, 1.0, 1.0, 0.25, -1.0, -1.0, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device20.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.pushErrorScope("out-of-memory");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer100.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1000.popDebugGroup()
    const array3 = new Float32Array([0.0, -0.25, -0.75, 0.75, 0.75, 0.0, -0.5, -0.25, 1.0, 0.25, 0.5, -0.5, 0.0, 0.0, 0.75, 1.0, 0.75, 0.0, -0.5, 0.0, -0.5, -0.75, 0.5, 0.25, 0.0, 0.0, -1.0, 1.0, -0.25, -1.0, -0.5, -1.0, -0.5, -0.75, -0.75, 0.0, -0.5, -0.25, -0.75, -0.25, 1.0, -0.5, -0.5, 0.25, 0.25, 0.75, 0.5, 0.75, -0.5, -1.0, 0.25, 0.0, 1.0, 1.0, 1.0, 1.0, 0.25, -0.5, 0.0, 0.0, -0.75, 1.0, 0.0, -0.75, 0.0, -1.0, 0.5, -0.75, 0.5, 0.25, 0.0, -0.5, -1.0, -0.75, 1.0, 0.0, 0.5, 0.25, -0.5, -0.25, -0.75, -0.25, -0.25, -0.25, 0.25, 0.75, 0.0, -0.25, 0.5, 0.0, 1.0, 0.75, 0.0, 0.0, -0.5, -0.25, 0.0, 0.75, -0.5, 0.25, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer101.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.insertDebugMarker("mymarker");
    render_bundle_encoder100.popDebugGroup();
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder102.insertDebugMarker("mymarker");
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("out-of-memory");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array4 = new Float32Array([-0.75, -0.5, 0.75, 1.0, 0.0, 1.0, -0.75, -0.75, -1.0, -0.5, 0.75, 0.75, -0.5, -1.0, 0.0, -0.25, 0.25, -0.75, -0.5, -0.75, 1.0, 1.0, 1.0, 1.0, -0.25, -0.5, 0.75, 0.25, 1.0, 0.0, 0.0, -0.5, 0.25, -0.75, -0.75, 0.0, -1.0, 0.5, 0.0, -0.75, -0.25, -0.5, 1.0, 0.75, -0.75, -1.0, -0.25, 0.0, -0.75, 0.5, -0.75, 0.0, -0.5, 0.75, -0.25, -0.25, 0.25, -0.5, 0.75, -0.25, 0.5, 0.25, -0.75, 0.5, 0.5, -0.5, -0.5, 1.0, 0.0, 0.25, 1.0, 0.0, -1.0, 0.25, 0.5, 0.0, -0.25, -0.5, 0.0, 0.5, 0.5, -1.0, -1.0, -0.75, 0.5, 0.5, 0.0, 0.25, 0.0, 0.0, 0.75, -0.75, 0.75, 0.5, -1.0, 0.75, -1.0, 1.0, 0.0, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    compute_pass_encoder1010.pushDebugGroup("group_marker")
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
    compute_pass_encoder1020.popDebugGroup()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    device10.pushErrorScope("out-of-memory");
    device00.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    texture100.destroy();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const array5 = new Float32Array([-0.5, -0.5, -0.25, -0.75, 0.0, 0.0, -0.25, -1.0, 0.75, 0.75, 1.0, 0.0, -0.5, -0.25, -1.0, 0.0, -0.5, 0.5, 0.5, 0.5, -0.75, 0.0, 0.0, -0.75, 0.5, -0.25, -0.5, -0.5, 1.0, -1.0, -0.75, 0.25, 1.0, -0.75, -0.5, -0.25, 0.75, -0.25, 1.0, 0.0, -0.5, 0.25, -0.5, 1.0, 0.75, 0.25, 0.25, -0.5, 0.5, -0.5, 0.5, -0.75, -0.75, -1.0, -0.75, -1.0, 0.0, 0.0, -0.25, -0.75, -0.75, 1.0, 0.5, 0.0, -0.5, 0.75, 0.0, 1.0, 0.0, -0.75, -0.25, 0.0, -0.75, 1.0, -0.75, -0.25, -1.0, 1.0, 0.0, 0.5, 0.75, 1.0, -0.25, -0.5, -0.5, 1.0, 0.5, -0.5, 0.25, -0.75, -1.0, -0.25, 0.5, 1.0, 0.25, 0.25, 0.5, 1.0, 1.0, 0.75, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout104]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.popDebugGroup();
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    device10.pushErrorScope("internal");
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout104]
    });
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
    const array6 = new Float32Array([-0.5, 0.25, 1.0, 0.5, 0.5, 0.5, -0.75, 1.0, 0.0, -0.5, -1.0, 0.25, 0.25, 0.0, 0.5, 0.25, 0.0, -0.75, -0.25, 0.5, 0.75, 1.0, -0.25, -1.0, 0.75, 1.0, 0.5, 0.5, -0.25, 0.0, -0.5, -0.75, -0.5, 0.75, -0.75, 0.5, 0.5, 1.0, 0.5, 0.75, 1.0, -0.5, -1.0, -1.0, 0.75, 0.5, -1.0, 0.0, 0.0, 0.75, 0.5, -0.75, 0.5, -0.5, 0.25, -0.75, -0.25, 1.0, 0.75, -1.0, -0.25, 0.75, 0.25, 0.25, -0.75, 0.75, 0.5, 0.5, -0.75, 1.0, 0.25, 1.0, -0.75, 0.0, 0.75, 0.25, 1.0, 0.0, 0.75, 0.25, -0.75, 0.0, -0.5, -0.5, -0.25, -0.75, 0.0, 0.0, 1.0, 0.75, 0.5, -0.25, 0.0, 0.75, -0.75, -0.25, -1.0, 0.5, -0.5, -1.0, ]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder1010.popDebugGroup()
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
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
    texture400.destroy();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer301.destroy()
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.destroy();
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout104]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    buffer303.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder100.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("internal");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout105]
    });
    compute_pass_encoder1000.popDebugGroup()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder3000.popDebugGroup()
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout104]
    });
    texture101.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer102.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1010.popDebugGroup()
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout102]
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder100.popDebugGroup();
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer304.destroy()
    device40.pushErrorScope("validation");
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
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
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    buffer305.destroy()
    
    command_encoder103.copyBufferToBuffer(
        buffer104,
        0,
        buffer103,
        0,
        400
    );
    
    
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    const command_buffer103 = command_encoder103.finish();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout106]
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture301.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture303.destroy();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer104.destroy()
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([0.75, 0.75, -0.5, -0.25, -0.25, -0.5, -0.25, 0.5, 0.75, -0.75, 1.0, -1.0, 0.0, -0.5, 0.5, 0.5, 0.5, -0.25, -1.0, 0.75, 0.75, 0.0, 0.0, -0.5, 0.75, -1.0, 1.0, -0.25, 0.25, -0.5, -0.75, 0.5, 0.75, -0.25, 1.0, -0.75, 1.0, 0.75, -0.75, -0.25, 0.75, 0.25, 0.0, 0.75, -0.75, 1.0, 0.75, 0.75, 0.75, 0.25, -0.25, 0.25, 0.25, 0.5, 1.0, 0.25, -0.75, -1.0, 0.75, 1.0, 0.25, -0.5, -0.25, 0.0, 0.75, -1.0, 0.0, 0.75, 0.0, -0.5, 0.75, 1.0, -0.5, -1.0, -0.25, -0.5, 0.0, -0.75, -1.0, 0.75, -0.75, 1.0, -1.0, 1.0, 0.75, 0.5, 0.75, 1.0, -0.75, 0.75, 0.75, -0.5, -0.5, 0.75, -0.75, -0.5, -0.75, -0.75, 0.5, 1.0, ]);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    texture401.destroy();
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_bundle_encoder401.popDebugGroup();
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    texture403.destroy();
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder400.popDebugGroup();
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    texture402.destroy();
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer302.destroy()
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout106]
    });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout105]
    });
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device40.destroy();
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    buffer103.destroy()
    device60.destroy();
    
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    compute_pass_encoder3000.popDebugGroup()
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder101.popDebugGroup();
    
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
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout106]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder100.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder102.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout108]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout107]
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder1040.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    buffer300.destroy()
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
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
    
    render_bundle_encoder102.popDebugGroup();
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    compute_pass_encoder1020.insertDebugMarker("marker")
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
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const pipeline_layout1028 = device10.createPipelineLayout({ 
        label: "pipeline_layout1028",
        bindGroupLayouts: [bind_group_layout106]
    });
    
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1040.insertDebugMarker("marker");
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1029 = device10.createPipelineLayout({ 
        label: "pipeline_layout1029",
        bindGroupLayouts: [bind_group_layout106]
    });
    const pipeline_layout1030 = device10.createPipelineLayout({ 
        label: "pipeline_layout1030",
        bindGroupLayouts: [bind_group_layout108]
    });
    
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const pipeline_layout1031 = device10.createPipelineLayout({ 
        label: "pipeline_layout1031",
        bindGroupLayouts: [bind_group_layout101]
    });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1032 = device10.createPipelineLayout({ 
        label: "pipeline_layout1032",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout1033 = device10.createPipelineLayout({ 
        label: "pipeline_layout1033",
        bindGroupLayouts: [bind_group_layout107]
    });
    device70.destroy();
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.queue.submit([command_buffer103, ]);
    
    const pipeline_layout1034 = device10.createPipelineLayout({ 
        label: "pipeline_layout1034",
        bindGroupLayouts: [bind_group_layout104]
    });
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder102.popDebugGroup();
    texture302.destroy();
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1035 = device10.createPipelineLayout({ 
        label: "pipeline_layout1035",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const pipeline_layout1036 = device10.createPipelineLayout({ 
        label: "pipeline_layout1036",
        bindGroupLayouts: [bind_group_layout104]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout302]
    });
    buffer306.destroy()
    
    const pipeline_layout1037 = device10.createPipelineLayout({ 
        label: "pipeline_layout1037",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout1038 = device10.createPipelineLayout({ 
        label: "pipeline_layout1038",
        bindGroupLayouts: [bind_group_layout105]
    });
    const array8 = new Float32Array([-1.0, 0.25, -0.5, -0.5, 0.0, 0.5, 0.75, -0.25, 0.0, -0.75, 1.0, -0.25, -1.0, 0.5, -0.75, -0.75, -0.5, 0.0, -0.75, 1.0, -1.0, -0.25, 0.25, 0.0, 0.25, 1.0, 0.5, -0.75, 1.0, 1.0, -0.5, -0.25, 1.0, 0.75, 0.25, -0.5, -0.25, 1.0, 0.5, 0.25, -0.5, -0.25, 0.5, -1.0, 1.0, -0.75, 0.0, 0.0, -0.5, 0.0, -0.75, 1.0, 0.75, -1.0, -0.5, -0.75, -0.75, 0.0, 0.25, -0.25, 0.5, -0.75, 0.75, 1.0, 0.25, 0.25, 0.75, 0.0, -1.0, 0.5, -1.0, 0.5, 1.0, -0.75, 1.0, -1.0, -0.75, 0.0, -0.75, -0.75, 1.0, 0.0, -0.75, 0.75, 1.0, 1.0, -0.5, 0.5, 0.5, 0.0, -0.25, 0.25, -0.75, 0.0, 0.5, 0.25, 1.0, -0.25, 0.75, 0.5, ]);
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder1040.setStencilReference(1);
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout1010 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1010",
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
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    const pipeline_layout1039 = device10.createPipelineLayout({ 
        label: "pipeline_layout1039",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    device30.queue.submit([command_buffer301, ]);
}