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
    const array0 = new Float32Array([-0.5, 1.0, -0.5, 0.25, -0.25, -0.25, -0.25, 0.25, 0.0, -1.0, 0.5, 1.0, 0.25, -0.25, -0.5, -1.0, 0.0, 0.75, 0.0, -0.5, 1.0, -0.5, -0.75, 0.5, -0.75, 0.5, -0.25, -0.75, -0.5, -0.5, -0.5, 0.25, 0.5, 0.25, 0.75, -0.5, -0.5, 0.75, -0.5, 0.25, -0.75, 0.5, 0.5, 0.25, 0.75, -0.25, 1.0, -0.75, -0.5, -1.0, 1.0, 0.25, 0.5, -0.75, 1.0, 0.5, 0.75, 0.25, 0.75, -0.25, 0.25, -0.25, -0.5, 0.0, -0.25, -0.5, 0.25, -1.0, 0.75, -1.0, 0.0, -0.75, -1.0, 0.75, -0.5, -0.5, 0.0, 1.0, 1.0, 0.0, 0.5, 0.75, -0.25, 0.25, -1.0, 0.0, -0.25, 1.0, -0.75, 0.0, 0.0, -0.75, 0.75, -1.0, 0.0, -0.25, 1.0, 0.75, 0.0, -0.75, ]);
    
    const array1 = new Float32Array([0.5, -0.75, 0.0, -0.5, -1.0, -0.75, -0.5, -1.0, 0.5, -0.75, -0.25, 0.25, -0.25, -0.5, 0.5, -1.0, 0.25, 0.75, -1.0, -0.75, -0.75, 1.0, -0.25, -0.75, 0.75, 0.5, 0.25, -0.75, -0.25, 0.5, 0.0, -0.75, 0.75, -0.75, 0.5, -0.25, -1.0, 0.5, 1.0, -0.75, 0.75, 1.0, -0.75, -0.5, 1.0, 0.75, -0.5, 1.0, 1.0, 0.25, -0.25, -1.0, -1.0, -1.0, 0.25, -0.25, -0.75, 0.0, 0.0, -0.5, -1.0, -0.5, -1.0, 0.5, 0.0, 0.25, 0.25, -0.5, -0.25, 0.0, 0.25, -0.75, -0.5, 0.75, 0.25, 0.0, -0.75, -1.0, 1.0, 1.0, 0.0, -0.75, -0.5, -0.25, -0.5, -0.25, 0.25, -0.25, 1.0, -0.25, 0.0, -1.0, 0.0, 0.0, 0.75, 0.5, -0.5, 0.0, 0.0, 1.0, ]);
    
    const array2 = new Float32Array([0.0, 0.0, 0.75, -0.75, 0.25, -0.25, 0.75, 1.0, -0.75, -0.5, 0.75, 0.5, 0.0, -0.25, 0.5, 0.5, 0.0, -0.25, 0.75, 0.25, -0.75, 1.0, -1.0, -0.75, -1.0, 0.0, 0.5, 1.0, 0.75, -0.75, -1.0, 0.25, 0.0, 0.0, -0.5, 0.0, -0.5, 0.25, 0.75, -0.25, 1.0, 0.5, 1.0, 1.0, 0.0, -1.0, -0.75, -0.25, 0.25, 0.5, -0.5, 1.0, 1.0, -0.5, 0.5, 0.0, 0.5, -0.25, 1.0, 0.0, 0.25, -1.0, -0.75, 0.25, -0.5, 1.0, -1.0, -0.75, -0.25, 0.5, -0.25, 0.25, 0.75, 0.25, -0.5, -1.0, 0.5, -0.5, 0.0, 1.0, -0.5, -0.75, 1.0, 0.5, 0.5, 1.0, 0.25, 0.0, -0.5, -0.25, 0.75, -0.5, 0.75, 0.75, -0.5, 1.0, 0.0, 0.5, 0.0, 0.0, ]);
    const array3 = new Float32Array([0.75, 0.5, 1.0, -0.75, -0.25, -0.75, -1.0, 0.0, -1.0, -0.5, -1.0, -1.0, 0.0, 0.75, -1.0, -0.75, 0.5, 0.75, -1.0, 0.75, 1.0, -0.5, 0.0, -0.5, -0.5, -0.75, 0.25, 0.5, -1.0, 0.5, 0.0, -0.25, 0.25, -0.5, -0.75, 0.5, -0.5, 0.75, -1.0, 0.5, 0.5, -0.25, -0.75, 0.75, -1.0, 0.0, 0.5, 0.25, -0.75, 0.0, 0.5, -0.25, -0.5, -0.5, 0.5, -0.75, -0.75, -0.75, -0.75, -0.5, 0.0, 0.5, -1.0, -0.75, -1.0, -1.0, 0.0, -0.75, -0.25, 0.5, -0.5, -0.75, -0.75, -1.0, -0.75, 0.0, 0.5, -1.0, 0.0, -0.75, 0.75, -0.25, -0.25, 0.75, 0.0, -0.75, 0.5, -0.75, -0.75, 0.0, -0.5, 0.25, 1.0, 0.5, -1.0, 0.75, 0.75, 0.5, 0.5, -0.25, ]);
    const array4 = new Float32Array([0.0, -0.75, 0.0, 0.25, -0.75, -0.75, 0.0, -0.5, -0.5, 0.5, 0.0, -1.0, 1.0, -1.0, 0.25, -0.25, -0.5, 0.0, 0.0, 0.0, 0.75, -0.5, -0.75, 0.0, 0.75, 1.0, 0.5, -1.0, -0.75, -0.5, -0.5, -1.0, -0.25, 0.75, 0.5, 0.75, -0.75, -0.5, -1.0, -0.75, -0.75, 0.0, -0.75, 1.0, 0.75, 0.25, 0.5, 0.25, 1.0, 0.5, -0.75, 0.5, 0.25, 0.5, 0.75, 1.0, 0.5, -1.0, -0.75, 0.0, 0.25, -1.0, 0.25, -0.5, 1.0, -0.75, 0.0, 0.75, 0.25, -0.75, 0.75, 0.25, 0.5, 0.75, -0.5, -0.75, 0.0, 0.25, -0.75, -1.0, 0.25, 0.0, -0.5, -0.75, 1.0, 1.0, -0.5, 0.5, 0.5, -0.75, 0.25, 0.5, -0.75, -0.5, 1.0, -1.0, -0.5, -0.5, 0.25, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array5 = new Float32Array([0.25, 0.25, 1.0, 0.5, 0.5, -1.0, -0.25, 0.5, 0.5, -0.75, 0.0, 0.0, -1.0, -0.25, -1.0, 0.75, -0.25, -0.5, -0.5, 0.75, 1.0, -0.5, -0.5, -0.5, 0.5, -0.75, -0.5, -0.5, 0.25, 0.0, 0.5, -0.75, 0.5, 1.0, -0.75, 1.0, 0.0, 0.5, 1.0, 0.0, 0.5, 0.5, 0.0, -0.5, -0.25, 1.0, -0.25, 0.5, 0.25, -1.0, -0.75, -1.0, 0.0, 0.25, 0.75, 0.0, -0.5, 0.25, -0.75, -0.5, 1.0, 1.0, 0.0, -0.5, 0.0, 1.0, 0.75, -0.5, 0.25, -0.5, -0.75, -0.5, 1.0, 0.25, 0.0, 0.25, -0.75, -0.5, 0.5, 0.5, -1.0, -1.0, -0.75, 0.25, 0.0, 0.25, -0.25, -1.0, -0.5, 0.75, 0.0, 0.75, -0.75, 0.25, -1.0, 0.25, -0.75, 1.0, 0.25, -0.5, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("out-of-memory");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer100 = command_encoder100.finish();
    const array6 = new Float32Array([1.0, 1.0, 0.25, 0.25, 0.5, 1.0, -0.5, 0.0, -0.75, 1.0, 0.0, 0.0, -0.25, -0.75, -0.75, -1.0, -0.75, 0.0, 1.0, -0.25, 0.0, 0.0, 0.25, -1.0, -0.75, -0.5, -0.75, -0.25, -0.25, 0.75, -0.25, 0.0, 0.5, -0.5, -0.75, 0.0, -0.25, -1.0, 0.75, -1.0, -0.25, -0.5, -1.0, -0.25, -0.75, 0.0, -0.25, -0.5, -0.5, 0.0, 0.75, 0.75, -1.0, -0.75, -0.5, -1.0, -0.75, 0.75, -0.25, -0.75, -0.5, 0.75, -0.25, 0.5, -0.75, -1.0, 0.25, -0.75, 0.5, 0.25, -0.75, -0.5, 0.25, 1.0, 0.5, -0.5, -0.75, -0.75, 0.5, -0.75, 0.25, -1.0, 0.25, -1.0, -1.0, 1.0, 0.25, -0.25, -1.0, 0.0, -0.75, -0.75, 0.5, 0.25, 0.75, -0.25, 0.5, 0.0, -1.0, -0.75, ]);
    
    device00.pushErrorScope("internal");
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    buffer000.destroy()
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    
    device00.pushErrorScope("internal");
    
    texture000.destroy();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    const command_buffer000 = command_encoder000.finish();
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder001.pushDebugGroup("mygroupmarker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder003.insertDebugMarker("mymarker");
    const array7 = new Float32Array([0.25, -0.75, -1.0, 0.0, -0.5, 0.5, -0.5, -0.25, 0.25, -1.0, -0.25, 0.0, -0.75, -0.5, -1.0, 0.25, 0.75, -1.0, -0.75, 1.0, 0.5, -0.25, 0.75, -0.5, 0.75, -0.5, -0.5, 0.0, 0.5, 0.75, 0.0, 0.75, 0.25, 0.75, 1.0, 0.5, -0.25, 0.75, 0.75, 0.5, -0.5, 1.0, 0.75, -0.5, -1.0, 0.5, -0.75, -1.0, -0.25, -1.0, -0.75, 0.0, -0.25, 0.0, 1.0, -0.25, -0.5, 0.75, 0.5, 0.0, 1.0, 0.25, 0.75, -0.5, -0.25, -1.0, -0.25, -0.5, 0.0, -0.5, 0.5, -1.0, 0.25, 0.5, -0.25, 0.75, 0.0, 0.0, -0.25, -0.75, 1.0, -1.0, -0.5, -1.0, -0.75, -0.75, 0.0, -0.25, 0.25, -0.25, 0.25, 0.25, 0.5, 1.0, 0.25, 0.5, 0.5, 1.0, -0.25, 0.25, ]);
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    texture001.destroy();
    query001.destroy()
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array8 = new Float32Array([-0.5, -1.0, 0.5, 0.0, 1.0, 0.75, -0.75, -0.5, -0.25, -0.25, -0.25, 0.75, 0.75, -1.0, 0.25, 0.0, 1.0, -0.75, 0.75, 0.5, 0.25, -1.0, -1.0, 0.0, 1.0, -1.0, -0.5, 0.0, 0.0, 0.25, -1.0, 1.0, -0.75, -1.0, -0.5, -0.5, -0.75, 0.5, -0.25, -0.25, 0.5, -0.75, 0.25, -0.25, 0.0, 0.5, 0.5, -1.0, 0.5, -0.25, 0.75, -0.5, 0.75, 0.25, -1.0, -1.0, 0.5, -0.25, 0.5, -0.75, 0.5, 0.25, -0.5, -1.0, -0.25, 0.5, -0.25, 1.0, -1.0, 0.0, 0.0, -0.75, -1.0, 0.0, 0.75, 1.0, 0.75, 0.0, 0.75, 0.5, -0.75, -1.0, -1.0, 0.75, 0.0, 1.0, -0.25, -0.25, 0.75, 1.0, 0.25, -0.25, -1.0, 0.0, 0.0, -0.75, 0.25, 0.75, 1.0, 1.0, ]);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group000);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("internal");
    
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0030.setPipeline(compute_pipeline001);
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group001);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer004.destroy()
    const array9 = new Float32Array([0.5, 0.25, 0.0, -1.0, 0.5, -1.0, 1.0, -0.25, 1.0, -0.25, -0.25, -0.75, 0.25, -0.25, 0.25, 0.25, 0.75, 1.0, 0.5, -0.5, 0.5, -0.5, 0.0, 0.0, -0.25, 1.0, -0.5, -0.5, -0.5, -1.0, -0.5, 1.0, -1.0, -0.5, -1.0, 0.5, 0.75, -0.25, -0.25, 1.0, -0.25, -1.0, 0.0, 0.5, 0.25, -1.0, -1.0, -0.5, 0.0, 0.0, -0.75, 0.5, 0.75, 0.75, 0.25, -1.0, 0.5, 0.5, -0.5, -0.75, -0.5, -0.5, 1.0, -0.25, 1.0, -0.5, -0.5, 0.75, 1.0, 0.75, 1.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0.75, -0.75, -0.75, 0.5, -1.0, -1.0, -0.75, -0.75, 0.0, -1.0, 1.0, 0.0, -0.5, -1.0, 0.0, 0.0, 1.0, -0.25, 0.25, -0.75, -0.5, 0.25, 1.0, 1.0, ]);
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.popDebugGroup();
    query000.destroy()
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    buffer100.destroy()
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device00.queue.submit([command_buffer000, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query101.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setStencilReference(1);
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder0020.popDebugGroup()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
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
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    texture004.destroy();
    query000.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    device00.queue.writeTexture({ texture: texture005 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    
    compute_pass_encoder0020.end();
    
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query102.destroy()
    
    buffer002.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    query000.destroy()
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    
    buffer001.destroy()
    query000.destroy()
    texture002.destroy();
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.executeBundles([])
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query102.destroy()
    
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    
    device00.queue.writeTexture({ texture: texture006 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.destroy();
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setStencilReference(1);
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    query000.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.executeBundles([])
    device00.queue.writeTexture({ texture: texture006 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer003.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_buffer102 = command_encoder102.finish();
    query102.destroy()
    texture005.destroy();
    render_pass_encoder0010.setPipeline(render_pipeline000);
    render_pass_encoder0020.setPipeline(render_pipeline000);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query003.destroy()
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
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
    query002.destroy()
    const array10 = new Float32Array([0.0, 0.5, -0.25, -1.0, 0.5, -0.25, 0.75, 0.25, 0.25, 0.25, -1.0, 1.0, -1.0, 1.0, 1.0, 0.25, 0.25, 0.0, -1.0, 0.75, 0.75, 1.0, 0.0, -0.25, -0.5, -0.5, -0.75, 0.25, 0.75, -0.5, -0.5, 0.5, -0.5, -0.5, -0.25, 0.0, 0.75, 0.25, -0.25, -1.0, -1.0, 1.0, -0.5, -0.75, 0.0, 0.0, -0.25, 0.5, -1.0, 0.5, 1.0, -0.75, 1.0, -0.75, 0.75, 0.5, 1.0, -0.5, 0.75, -0.25, 1.0, 0.5, -0.25, -0.5, -0.5, 0.0, 0.5, 0.0, 0.0, 0.5, 0.0, -0.25, 0.75, 0.75, 1.0, -0.75, 0.0, 0.0, 0.25, 0.25, 0.5, 0.0, 1.0, -0.25, -1.0, -0.5, 0.75, 0.25, 0.75, 1.0, -1.0, 0.75, 0.5, 1.0, 0.0, 1.0, -1.0, -1.0, 0.0, 0.0, ]);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device00.queue.writeTexture({ texture: texture006 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    device00.queue.writeTexture({ texture: texture006 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture006 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    buffer103.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    query002.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    texture003.destroy();
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.pushErrorScope("validation");
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group004);
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query100.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    device00.queue.writeTexture({ texture: texture006 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer009.destroy()
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder0030.popDebugGroup()
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group005);
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
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
    device00.queue.writeTexture({ texture: texture006 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    texture006.destroy();
    
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    device30.pushErrorScope("out-of-memory");
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_buffer103 = command_encoder103.finish();
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    texture100.destroy();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    command_encoder501.insertDebugMarker("mymarker");
    
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer104.destroy()
    
    
    query102.destroy()
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query002.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder300.popDebugGroup()
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0013, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0013, 0);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer108, 0, array5, 0, array5.length);
    
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_buffer300 = command_encoder300.finish();
    buffer0012.destroy()
    
    
    buffer007.destroy()
    device10.queue.writeBuffer(buffer108, 0, array1, 0, array1.length);
    
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query003.destroy()
    render_pass_encoder0010.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    buffer008.destroy()
    device10.queue.writeBuffer(buffer108, 0, array2, 0, array2.length);
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
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
    device10.queue.writeBuffer(buffer108, 0, array9, 0, array9.length);
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    buffer0010.destroy()
    device50.pushErrorScope("internal");
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer108, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer108, 0, array0, 0, array0.length);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    device10.queue.submit([command_buffer102, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer500.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer300, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.popDebugGroup();
    const command_buffer501 = command_encoder501.finish();
    command_encoder500.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    const command_buffer104 = command_encoder104.finish();
    compute_pass_encoder0030.end();
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer003 = command_encoder003.finish();
    command_encoder101.popDebugGroup()
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group006);
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer103, ]);
}