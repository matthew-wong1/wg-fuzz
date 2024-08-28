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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.destroy();
    const array0 = new Float32Array([-1.0, 1.0, 0.25, 0.25, 0.25, -0.75, -1.0, 0.25, 0.75, 0.75, 0.0, -1.0, -1.0, 0.25, 0.25, 0.25, 1.0, 0.25, -1.0, 0.0, 0.25, -1.0, 0.0, -0.25, 0.5, 0.25, 0.0, 0.25, 0.25, 0.25, -1.0, -0.5, -0.75, 0.75, 0.0, 0.25, -1.0, 0.75, -1.0, 0.25, 0.5, 1.0, -0.5, 0.5, 0.0, 0.0, 0.5, 0.25, 0.75, -1.0, -0.75, 0.5, -0.25, -0.25, -0.25, 0.75, -0.25, 0.25, -0.25, -0.5, 0.25, 1.0, -1.0, 0.5, 0.25, -0.5, -0.5, -0.25, -0.5, 1.0, 0.75, 1.0, 0.75, 0.75, 1.0, 0.75, -0.75, 0.5, 0.75, -0.75, 0.0, 0.25, -0.25, 0.5, 0.5, 0.25, 0.25, -0.5, -0.5, 0.25, -0.5, 0.25, 0.5, 1.0, -0.5, 0.0, 1.0, 0.25, 0.75, 1.0, ]);
    const array1 = new Float32Array([-0.75, 0.5, -0.5, -0.5, -0.75, 0.75, -0.25, -0.75, -0.75, -1.0, -0.5, 0.0, -1.0, -0.25, -0.25, 0.0, 0.0, -0.5, 0.75, -1.0, 0.5, 1.0, -1.0, 0.25, -0.25, -0.75, 0.0, 0.5, 0.0, 1.0, 0.5, -0.25, 0.75, 0.75, 0.75, 0.75, -0.5, 0.25, 0.0, 0.5, 0.75, 0.0, 0.25, 1.0, 1.0, -0.25, -0.5, 1.0, -0.25, -0.25, -0.5, -0.75, 0.25, -0.75, 0.5, 0.25, -0.75, 0.0, -0.75, 0.25, 0.75, -0.5, 0.25, 1.0, -1.0, 1.0, 0.0, 1.0, 0.25, 0.75, 1.0, -0.5, 0.75, 0.25, -0.5, 1.0, 1.0, 0.5, 0.0, 0.5, 0.5, -0.5, 0.5, -1.0, 0.0, 0.5, 0.25, 1.0, -0.5, 0.25, 0.25, 0.5, -1.0, 0.75, 1.0, 0.75, -0.5, -1.0, 0.0, 0.5, ]);
    
    
    
    
    
    
    
    
    
    
    const array2 = new Float32Array([-0.75, 0.25, 0.5, -0.25, -0.75, -1.0, -0.5, 0.25, 0.25, -0.75, 0.25, 0.5, 1.0, -0.5, -1.0, -1.0, -0.75, -1.0, -0.25, 0.0, -0.5, 0.5, -0.5, 0.25, 0.5, -1.0, 1.0, 1.0, -0.5, 0.25, 1.0, -0.5, -0.75, 0.5, -0.5, -0.75, 0.5, -1.0, -1.0, -0.75, 0.0, 0.25, 0.25, 0.75, 0.75, -0.5, -0.25, -0.75, -0.25, 0.5, 0.5, 0.5, 0.25, 1.0, 0.0, 0.75, -0.5, -0.25, -0.25, 0.75, -0.5, -1.0, -0.5, -0.75, 0.25, -0.5, 0.25, -1.0, -0.25, 0.25, -0.25, -1.0, -0.75, 1.0, -1.0, 0.25, 0.75, 1.0, -1.0, -0.5, -0.75, -0.25, -0.25, -0.5, 0.25, -0.5, -1.0, -0.25, 1.0, 0.75, -1.0, -1.0, -0.75, -0.75, 0.5, -0.75, 0.5, -0.25, -0.75, 1.0, ]);
    
    const array3 = new Float32Array([1.0, 0.75, 0.5, 0.0, -1.0, 0.75, -0.25, 0.5, 0.25, 0.25, 1.0, -0.75, 0.25, -0.25, -1.0, 0.5, 0.5, 0.0, -1.0, -0.75, 0.5, 0.5, 0.0, 0.25, -0.25, 0.25, 0.0, -1.0, -0.75, -0.75, 0.25, -1.0, 0.0, -0.5, 1.0, -0.25, 0.75, 0.5, -0.5, -0.75, 0.5, -0.5, 0.5, 0.75, 0.75, -0.25, 0.0, 0.75, 0.75, -1.0, -0.75, 0.25, 0.25, 0.25, 0.0, 0.5, 0.5, -0.25, 1.0, 0.25, -0.25, -1.0, 0.5, 0.75, 0.25, 0.25, 0.75, -0.25, 1.0, 0.75, -0.75, 0.5, -1.0, 1.0, 0.25, 0.5, 0.5, 0.75, -0.25, -0.75, 0.75, 0.5, -1.0, -0.25, -1.0, -1.0, 0.25, 1.0, -1.0, 0.0, -0.5, -1.0, 0.75, 0.75, 1.0, 1.0, 0.5, -0.75, -0.25, 0.5, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    device20.destroy();
    device10.pushErrorScope("validation");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query101.destroy()
    
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
    texture100.destroy();
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array4 = new Float32Array([0.75, 0.5, 0.5, 1.0, -0.75, -0.25, -0.25, 1.0, 0.75, -1.0, -1.0, 0.25, -0.5, -0.75, -0.5, 0.75, 1.0, 0.0, 1.0, 0.25, -0.75, 0.5, 1.0, 0.75, -1.0, 0.25, 0.5, -0.75, 0.75, 0.75, 0.25, 0.75, 1.0, 0.0, 0.0, 0.0, 0.75, 0.5, -0.5, 0.5, 0.75, -0.25, -1.0, -0.5, -0.5, 0.75, -0.5, 0.25, 0.5, 1.0, -0.75, -0.5, 0.0, -0.25, 0.5, 0.0, 0.25, 0.75, -0.25, -0.25, 0.5, -0.25, 0.0, -0.5, 0.0, -0.75, 0.0, 0.0, 0.5, 0.25, 0.25, 0.75, -0.75, 0.25, 0.5, -0.75, 1.0, -0.5, 0.25, -0.75, 1.0, -0.75, 0.25, -0.5, 0.25, -0.5, 0.5, 0.5, 0.0, -0.25, -0.75, -1.0, -1.0, -1.0, 0.75, -1.0, 1.0, 0.75, 0.75, 0.5, ]);
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
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
    device10.destroy();
    const array5 = new Float32Array([-0.25, 0.25, -0.75, -0.25, 0.25, -0.75, -0.25, -0.5, 0.75, 0.5, 0.5, 1.0, -0.75, -0.5, 1.0, -0.5, -0.25, 1.0, 0.5, -0.5, -0.25, -0.5, 0.75, 0.25, 0.75, 0.25, 0.75, 0.5, 1.0, 0.25, 0.25, 0.75, 0.5, 0.25, 0.25, -0.75, 0.25, 0.75, 0.75, 0.25, -0.25, 1.0, 1.0, 0.0, -1.0, 0.25, 0.25, -0.5, -0.5, 0.0, -0.25, -0.25, -1.0, 0.5, -0.75, 0.25, -0.25, 0.5, 0.25, -0.75, -0.25, -0.5, 0.0, -0.75, 0.5, -1.0, -0.25, 0.25, -1.0, 0.75, 1.0, -0.75, -0.75, 0.0, -0.5, -0.25, 1.0, 0.5, -0.75, -0.25, 0.75, 1.0, 1.0, 0.0, 1.0, 0.5, -0.5, 0.75, 0.0, 0.0, 0.75, -1.0, 0.5, 0.25, 0.5, 0.5, -1.0, 0.25, 0.25, -0.5, ]);
    const array6 = new Float32Array([0.5, -0.25, 0.75, 0.0, -1.0, -0.75, -0.25, -1.0, 0.75, 0.0, 1.0, 1.0, -0.5, 0.25, 0.75, 0.25, 0.5, -1.0, -1.0, 0.0, 0.25, 0.75, 0.25, -0.25, 0.5, 1.0, -0.25, 0.75, 0.75, 1.0, -0.5, 1.0, 1.0, 0.75, -0.25, 0.75, -1.0, 0.25, -1.0, -1.0, 0.25, -0.75, -0.75, -0.75, 0.75, -1.0, -0.25, 0.25, 1.0, -0.5, 1.0, 1.0, 0.5, -0.25, 0.0, 0.75, 0.25, 0.5, 0.75, -0.75, 0.5, 0.25, 0.75, 0.0, 1.0, 0.5, -0.75, -1.0, 0.0, -0.5, -0.75, -0.25, -0.25, 0.75, 0.75, 0.0, 0.5, 0.25, 1.0, 0.75, 0.25, -1.0, -1.0, -0.75, -1.0, -1.0, 0.25, -1.0, -0.5, -0.25, 0.75, 0.25, 0.75, 0.25, -1.0, -1.0, 0.0, 0.25, -1.0, -0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.pushErrorScope("internal");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
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
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("internal");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    texture401.destroy();
    
    
    const array7 = new Float32Array([-0.5, 0.0, 0.75, -0.25, -0.25, -0.5, 0.25, -0.25, -1.0, 1.0, 0.25, 0.25, 1.0, 0.75, 0.25, -0.25, 1.0, -0.5, 0.25, -1.0, 0.25, -1.0, 0.5, 0.0, 0.25, -1.0, 0.5, -0.5, 0.0, 0.5, -0.5, 1.0, 0.5, 0.5, -0.5, 1.0, 1.0, 0.0, 0.25, -1.0, 0.5, 0.75, -0.25, 0.0, 0.5, -1.0, 0.25, -1.0, -0.25, -1.0, 0.5, 1.0, -0.5, -0.25, -0.25, -0.5, 0.25, 0.25, -0.75, 0.0, 0.75, 0.0, -0.5, -0.75, -0.5, -1.0, 0.75, 0.0, 0.0, 0.25, -0.5, 0.0, 1.0, -0.25, -0.25, 0.0, 1.0, -1.0, 0.5, 1.0, 0.0, -1.0, 0.0, -0.25, 0.0, 0.25, -0.75, -0.25, -0.25, 0.25, 0.5, -0.5, -0.25, -0.25, 0.0, -1.0, -1.0, 0.5, 0.0, -0.25, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("validation");
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    render_bundle_encoder300.popDebugGroup();
    const command_buffer301 = command_encoder301.finish();
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
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    
    command_encoder400.clearBuffer(buffer401);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    const array8 = new Float32Array([-0.5, 0.0, -0.25, -0.25, 0.5, 0.75, 0.0, -1.0, -0.75, -0.75, -0.75, -1.0, 0.25, 0.5, 0.0, -0.75, -1.0, 0.0, 1.0, 0.0, -0.75, -0.25, -0.25, 0.0, -0.5, 1.0, 0.25, -0.5, 0.25, 0.75, -0.75, 1.0, 1.0, 0.0, 1.0, 0.5, -1.0, -0.5, -0.5, -0.5, 0.5, 0.0, -1.0, -0.75, -0.75, -0.75, 0.25, 1.0, 0.75, -0.5, 0.5, -0.75, 0.75, -0.5, 0.0, -0.5, 0.75, 0.5, 0.0, -0.25, 0.25, 0.0, -1.0, 0.5, 0.25, 0.25, -0.5, 1.0, -0.5, 0.5, 0.5, 0.25, -0.5, 0.25, 0.75, 0.0, 0.75, 0.5, 0.5, 0.25, 0.25, -0.25, 0.5, -1.0, -1.0, -0.25, 0.5, -0.5, -0.5, 1.0, -0.75, -0.75, -0.75, -0.25, 0.75, 1.0, 0.25, 0.25, 1.0, 0.5, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const array9 = new Float32Array([0.25, 0.25, -0.25, -1.0, 0.0, 0.0, 0.75, 0.5, 0.25, -1.0, -0.5, -1.0, 1.0, 0.5, 1.0, 0.5, 1.0, 0.75, 0.25, -0.25, 0.5, -0.25, -0.5, 1.0, 1.0, 1.0, -0.25, 0.0, -0.75, -0.5, -0.75, 0.25, 0.25, 0.25, 0.25, -0.75, -0.5, 0.75, 0.5, 0.75, 0.75, -0.25, -0.75, -0.75, -0.5, -0.5, -0.75, 0.0, 0.75, 0.5, -0.25, -0.75, -1.0, -1.0, -0.75, -1.0, 0.5, -0.5, 0.0, -0.25, 0.0, 0.75, 0.25, 0.75, 1.0, -0.75, -0.25, 0.5, -0.25, -0.5, -0.25, -1.0, 0.0, 0.75, -1.0, -1.0, 1.0, 0.5, 1.0, -1.0, -0.75, 0.5, 0.0, 0.75, -0.75, 0.25, 0.0, -0.25, 0.5, 0.25, 0.0, 1.0, 0.25, -0.75, -0.75, -0.5, 0.5, 0.0, -0.75, -0.75, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    buffer401.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    query400.destroy()
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    
    render_bundle_encoder400.popDebugGroup();
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    buffer400.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.pushErrorScope("validation");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    texture300.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device50.pushErrorScope("out-of-memory");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout406,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const array10 = new Float32Array([-1.0, -0.5, 0.25, 0.25, 1.0, 0.5, 0.0, 0.75, -1.0, -0.75, -1.0, 0.25, 1.0, -0.5, 0.75, 0.0, 0.5, 0.0, 0.75, 0.0, 0.5, 0.25, 0.25, 0.5, 1.0, -1.0, 0.5, 1.0, 0.75, 0.75, 0.5, 0.0, 0.75, 0.5, 0.75, -0.25, 0.25, -0.25, -0.5, 1.0, 0.75, -1.0, 0.25, 0.0, 0.0, 0.5, -0.5, -1.0, 0.75, 0.25, 0.75, 0.5, 0.0, 0.5, 0.25, -0.75, -1.0, -0.75, 0.5, -0.5, 0.25, -0.5, 1.0, 0.75, -0.75, 0.0, -1.0, 1.0, 0.75, -0.75, 0.25, 0.75, 0.25, -0.5, -0.5, -1.0, -0.5, -0.75, -0.75, 0.0, 1.0, 1.0, -0.25, 0.25, 0.0, 0.5, -0.75, 0.5, 0.0, 0.5, -0.75, 1.0, 0.5, 0.0, -1.0, 1.0, 0.75, 0.25, -1.0, -0.75, ]);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    render_bundle_encoder301.popDebugGroup();
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture_view4023 = texture402.createView({ label: "texture_view4023" });
    
    compute_pass_encoder4010.setPipeline(compute_pipeline408);
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout406,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout402]
    });
    buffer300.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4000.pushDebugGroup("group_marker");
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
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device40.pushErrorScope("internal");
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    render_pass_encoder4000.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout404,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder4000.setStencilReference(1);
    
    compute_pass_encoder4010.popDebugGroup()
    
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device30.pushErrorScope("internal");
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout408,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout407,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout408,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.insertDebugMarker("marker");
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout407,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout408,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout406,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout407,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout408,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4047 = device40.createComputePipeline({
        label: "compute_pipeline4047",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4048 = device40.createComputePipeline({
        label: "compute_pipeline4048",
        layout: pipeline_layout407,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4049 = device40.createComputePipeline({
        label: "compute_pipeline4049",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    const compute_pipeline4050 = device40.createComputePipeline({
        label: "compute_pipeline4050",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4051 = device40.createComputePipeline({
        label: "compute_pipeline4051",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4052 = device40.createComputePipeline({
        label: "compute_pipeline4052",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4000.insertDebugMarker("marker");
    
    const compute_pipeline4053 = device40.createComputePipeline({
        label: "compute_pipeline4053",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder3000.popDebugGroup()
    const compute_pipeline4054 = device40.createComputePipeline({
        label: "compute_pipeline4054",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    texture404.destroy();
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline408.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    const compute_pipeline4055 = device40.createComputePipeline({
        label: "compute_pipeline4055",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4056 = device40.createComputePipeline({
        label: "compute_pipeline4056",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4057 = device40.createComputePipeline({
        label: "compute_pipeline4057",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const compute_pipeline4058 = device40.createComputePipeline({
        label: "compute_pipeline4058",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4059 = device40.createComputePipeline({
        label: "compute_pipeline4059",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.setStencilReference(1);
    
    const compute_pipeline4060 = device40.createComputePipeline({
        label: "compute_pipeline4060",
        layout: pipeline_layout403,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    buffer403.destroy()
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const compute_pipeline4061 = device40.createComputePipeline({
        label: "compute_pipeline4061",
        layout: pipeline_layout408,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4062 = device40.createComputePipeline({
        label: "compute_pipeline4062",
        layout: pipeline_layout402,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4063 = device40.createComputePipeline({
        label: "compute_pipeline4063",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4064 = device40.createComputePipeline({
        label: "compute_pipeline4064",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    buffer402.destroy()
    const compute_pipeline4065 = device40.createComputePipeline({
        label: "compute_pipeline4065",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    
    device70.destroy();
    const compute_pipeline4066 = device40.createComputePipeline({
        label: "compute_pipeline4066",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4067 = device40.createComputePipeline({
        label: "compute_pipeline4067",
        layout: pipeline_layout408,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer404, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer404, 0);
    
    const array11 = new Float32Array([-0.5, -1.0, 0.75, -0.25, -0.5, 0.0, -0.75, 0.0, 0.0, 0.25, 0.75, -0.25, 0.0, 0.0, -0.25, -1.0, 0.75, -0.25, 1.0, -0.5, -0.25, 0.75, 1.0, 0.25, 0.0, 0.0, 0.75, -0.25, -0.75, 0.75, 0.5, 0.0, 1.0, -0.75, 1.0, 1.0, -0.25, -0.5, 0.75, 0.0, -0.75, -1.0, -0.5, -0.75, -0.75, 0.0, 1.0, 0.25, -0.75, -1.0, -1.0, -0.75, -1.0, 0.25, 0.5, 0.25, -1.0, -0.75, 1.0, -0.5, 0.25, -0.75, -0.75, -1.0, 1.0, 0.25, 0.75, -1.0, -0.25, 0.75, 0.75, 0.25, 1.0, 0.0, 0.0, 0.0, 0.75, 0.25, -0.75, 0.0, 0.75, 0.25, -0.75, -0.25, 0.75, -0.75, -0.75, 1.0, 0.25, -0.25, 0.0, -0.5, 0.75, 0.75, 0.25, 0.0, 0.5, -0.25, -1.0, -1.0, ]);
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4021,
            },
        ],
        occlusionQuerySet: query400
    });
    const compute_pipeline4068 = device40.createComputePipeline({
        label: "compute_pipeline4068",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer404, 0, array2, 0, array2.length);
    
    device30.pushErrorScope("internal");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline4069 = device40.createComputePipeline({
        label: "compute_pipeline4069",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder4020.setStencilReference(1);
    render_pass_encoder4000.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    render_pass_encoder4000.setPipeline(render_pipeline400);
    const compute_pipeline4070 = device40.createComputePipeline({
        label: "compute_pipeline4070",
        layout: pipeline_layout406,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer404, 0, array10, 0, array10.length);
    const compute_pipeline4071 = device40.createComputePipeline({
        label: "compute_pipeline4071",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4072 = device40.createComputePipeline({
        label: "compute_pipeline4072",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4073 = device40.createComputePipeline({
        label: "compute_pipeline4073",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.end();
    
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    render_pass_encoder4020.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline4074 = device40.createComputePipeline({
        label: "compute_pipeline4074",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.popDebugGroup();
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const compute_pipeline4075 = device40.createComputePipeline({
        label: "compute_pipeline4075",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4076 = device40.createComputePipeline({
        label: "compute_pipeline4076",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4023,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline4077 = device40.createComputePipeline({
        label: "compute_pipeline4077",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder302.setPipeline(render_pipeline300);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const compute_pipeline4078 = device40.createComputePipeline({
        label: "compute_pipeline4078",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4079 = device40.createComputePipeline({
        label: "compute_pipeline4079",
        layout: pipeline_layout408,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4080 = device40.createComputePipeline({
        label: "compute_pipeline4080",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer404, 0, array2, 0, array2.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_buffer500 = command_encoder500.finish();
    const compute_pipeline4081 = device40.createComputePipeline({
        label: "compute_pipeline4081",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const compute_pipeline4082 = device40.createComputePipeline({
        label: "compute_pipeline4082",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query400.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder4010.setStencilReference(1);
    
    
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    buffer301.destroy()
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout303,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline4083 = device40.createComputePipeline({
        label: "compute_pipeline4083",
        layout: pipeline_layout408,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer404, 0, array8, 0, array8.length);
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const compute_pipeline4084 = device40.createComputePipeline({
        label: "compute_pipeline4084",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4085 = device40.createComputePipeline({
        label: "compute_pipeline4085",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const array12 = new Float32Array([-0.75, 0.0, 1.0, -0.75, -1.0, 1.0, 0.25, -0.25, 1.0, -1.0, -0.5, 0.75, 0.25, -0.5, -0.75, -0.75, -1.0, 0.75, 0.0, -0.75, -1.0, 0.25, -0.25, 0.0, 0.25, -0.25, 0.25, 0.75, 0.25, -0.5, -1.0, 0.0, -0.5, 0.0, 0.0, 0.25, -0.75, 0.0, 1.0, 1.0, 0.0, 0.0, -1.0, 1.0, -0.25, -0.25, -0.75, 0.5, 0.0, -0.5, -0.5, 1.0, -0.75, -0.75, 0.25, 0.25, -1.0, 0.75, -1.0, 0.25, -0.5, 0.25, 0.0, 0.75, 0.25, -0.75, 0.0, -0.25, -0.75, 0.5, -0.25, 0.75, 0.25, -0.25, 0.25, -0.75, 0.0, -0.25, 1.0, -1.0, 0.75, -0.5, 0.5, -0.75, -0.25, -0.5, 0.75, 1.0, 0.25, 0.0, -0.25, 0.75, 0.5, 0.0, 1.0, -0.5, 1.0, 1.0, -0.75, -1.0, ]);
    render_bundle_encoder402.setPipeline(render_pipeline401);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    buffer405.destroy()
    
    const compute_pipeline4086 = device40.createComputePipeline({
        label: "compute_pipeline4086",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const compute_pipeline4087 = device40.createComputePipeline({
        label: "compute_pipeline4087",
        layout: pipeline_layout408,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
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
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group401);
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout303,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer404, 0, array2, 0, array2.length);
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout403]
    });
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4010.setPipeline(render_pipeline400);
    device50.queue.submit([command_buffer500, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group402);
    render_pass_encoder4020.setPipeline(render_pipeline400);
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group403);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer307, 0);
    device30.queue.submit([command_buffer301, ]);
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group404);
    compute_pass_encoder3000.end();
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, ]);
}