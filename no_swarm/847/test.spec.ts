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
    const array0 = new Float32Array([-0.25, 0.5, 0.0, 0.0, 1.0, 0.0, -0.5, 1.0, -0.75, 0.5, 0.5, -1.0, 1.0, 0.25, -0.75, 1.0, 0.0, -0.5, 0.0, 0.5, 0.25, 0.0, -0.5, -0.5, -0.25, 0.75, 0.5, -0.5, -0.75, -0.75, 1.0, -1.0, 1.0, -1.0, 0.25, 0.75, 1.0, 0.25, -1.0, 0.25, -0.25, 0.25, 0.5, -0.75, 0.0, 0.75, 1.0, 1.0, -0.75, -0.25, -0.25, -1.0, -0.25, 0.5, -0.5, -0.25, -0.75, 1.0, -0.5, 0.5, -0.75, -0.5, 0.25, 0.75, 0.0, 0.5, 0.0, 0.0, 0.25, 0.25, -0.5, 0.75, 0.5, -0.25, 0.75, 0.75, 1.0, 0.0, -0.25, -0.25, -0.75, -0.25, -0.25, -0.5, -0.5, 0.25, -0.5, -0.75, -1.0, 0.5, -1.0, 0.25, 0.0, -0.25, -0.25, 0.25, -0.5, 0.75, 1.0, 0.0, ]);
    
    const array1 = new Float32Array([0.75, -0.25, 0.0, -0.75, -1.0, 0.25, 1.0, 1.0, 0.5, -0.5, 0.0, 0.25, 0.75, -0.75, 0.25, -0.25, 0.75, 1.0, -1.0, 0.75, 0.5, 0.75, -0.75, 0.25, 1.0, 0.25, 1.0, -0.75, 0.75, -0.25, -0.25, 0.5, 0.75, -0.5, 0.25, 1.0, 0.5, -0.5, 1.0, -0.25, 0.5, -0.5, 0.5, 0.25, 0.0, 0.75, 0.5, 0.25, -0.75, -0.25, 0.5, 0.0, 0.25, 0.25, -0.25, 0.25, 0.25, 0.25, 1.0, -0.75, -1.0, 0.5, -0.25, -0.25, -0.75, 0.5, -0.75, -1.0, -0.25, 0.5, -0.5, 0.0, -1.0, 0.25, 0.0, 0.5, -1.0, 0.0, 0.0, 1.0, -1.0, -0.5, 0.75, 0.5, 0.5, 1.0, 0.0, -1.0, 0.5, 0.75, -0.5, 0.5, 0.0, -0.75, 1.0, 0.5, -0.5, -0.5, -0.5, -0.75, ]);
    const array2 = new Float32Array([-1.0, 0.0, -1.0, 0.25, 0.25, -0.5, -1.0, -0.5, 0.0, -0.5, 0.75, 0.75, 0.0, 0.0, 0.0, 0.25, 0.75, 0.5, -0.5, -0.5, 1.0, 0.5, -0.25, 1.0, 0.5, 0.5, -0.25, -0.75, 0.25, 0.75, -0.5, 0.0, 0.5, -1.0, -1.0, -0.5, -1.0, 0.0, -0.75, 0.75, 0.5, -0.5, -1.0, -0.75, 1.0, 0.0, 0.5, 0.25, -0.75, 1.0, -0.5, -1.0, -1.0, 0.5, 0.25, 1.0, -0.25, 1.0, -1.0, 0.0, -1.0, -1.0, -0.75, -1.0, 0.25, -0.25, -0.25, -0.5, -0.25, 0.5, -1.0, -0.25, -1.0, 1.0, 1.0, -0.75, -0.25, -0.25, 1.0, 0.25, 0.0, 0.75, -0.5, -0.75, 0.25, 0.75, -0.25, 0.5, 0.5, 1.0, -0.25, 0.5, -0.25, -0.5, 1.0, 0.75, 0.0, 1.0, -0.5, 0.5, ]);
    const array3 = new Float32Array([0.0, 1.0, 0.75, 1.0, -0.5, 0.25, -1.0, 0.0, -0.5, 0.75, 0.25, -0.5, 0.25, 0.25, -1.0, 0.5, -0.5, 0.75, -0.5, 1.0, 0.5, 0.75, -1.0, 0.25, -1.0, 0.25, 0.5, -0.25, 0.25, -0.75, 1.0, -0.75, 0.0, 0.5, 0.5, 0.75, 1.0, 0.0, -1.0, 0.0, 0.0, -0.25, -0.25, 0.75, -0.75, -0.75, 0.75, -0.25, 0.25, -0.75, 0.75, 0.0, 0.0, 1.0, -0.5, 0.5, 0.5, -0.75, -1.0, 0.5, -1.0, -0.75, 0.75, -0.5, 1.0, -0.75, 1.0, 0.75, -0.5, 1.0, 1.0, -0.5, 0.75, -0.75, 1.0, 0.75, -0.75, 0.25, -0.25, -1.0, -1.0, -0.25, 0.25, 0.75, -0.5, 1.0, -1.0, 0.0, -1.0, 0.5, -0.5, 0.5, 1.0, 1.0, 0.5, -0.25, -0.5, 0.0, -0.25, 0.5, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array4 = new Float32Array([0.75, 0.5, 1.0, -0.25, 0.75, -0.25, 1.0, 0.5, 0.25, -1.0, -0.5, 0.5, 0.75, -1.0, 0.25, -1.0, -0.75, 0.0, 1.0, 0.25, -0.75, -0.75, 0.75, -0.25, -0.5, -0.25, 0.5, 1.0, -0.25, 0.25, -0.75, 0.25, 1.0, -0.75, -0.25, 0.75, 0.75, 1.0, 0.5, 0.5, -0.5, 0.0, 1.0, -0.75, 0.5, -0.75, 1.0, 0.75, -0.25, 0.25, 0.25, 1.0, 0.5, 1.0, -0.5, 0.75, 0.75, 0.25, -0.75, 1.0, 1.0, 0.75, 0.0, 0.5, 0.0, 0.75, 0.0, -1.0, -0.75, -0.25, -0.25, 0.25, -1.0, -0.5, -1.0, -0.5, -1.0, 0.75, -0.25, 0.5, 0.0, -0.25, -0.75, 1.0, 0.75, -0.5, -0.25, -0.5, -0.25, 0.5, -0.75, 0.5, -0.25, 0.25, -0.5, 0.75, 0.5, 0.75, 0.0, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.destroy();
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const array5 = new Float32Array([-0.75, 0.75, -0.75, 1.0, -0.75, 0.5, 0.75, 0.25, -0.25, -0.5, 0.25, -0.25, -0.25, 1.0, 0.0, 0.0, 0.0, -0.5, -0.75, -0.75, 0.25, 0.0, 0.25, 0.75, -0.75, -0.5, 0.0, 0.5, 0.0, 1.0, 1.0, -1.0, 0.75, -0.75, -0.75, 0.75, 1.0, -0.75, 1.0, -0.75, -0.5, -0.5, -0.25, -0.25, 0.5, -0.25, -0.75, 0.75, 0.5, 0.75, 0.0, -0.25, 0.5, -1.0, -0.5, 0.0, -1.0, 0.5, 1.0, 0.25, -1.0, -0.5, 0.0, 0.5, 0.0, 0.75, 0.25, 1.0, 0.75, -1.0, 0.25, -0.25, -1.0, 0.75, -1.0, 1.0, -0.5, -0.75, -0.75, 0.75, -0.25, -0.75, 0.25, -0.25, 0.0, 0.5, -0.75, 0.25, 1.0, -0.75, 0.5, 0.75, 0.25, -0.75, -0.25, 0.75, 0.25, 0.5, -0.5, -0.75, ]);
    device00.destroy();
    
    
    
    const array6 = new Float32Array([-0.25, -0.5, -1.0, -0.25, -0.5, -0.75, -0.75, 0.75, 0.0, 1.0, -0.25, -0.75, -0.75, -0.5, -0.75, -1.0, -0.25, 0.75, 0.5, -1.0, -0.25, 0.75, 0.0, 0.0, 0.75, -1.0, -0.25, -0.75, 0.0, 0.75, 0.75, 0.75, -0.25, -0.75, 0.75, 0.0, -1.0, -1.0, -1.0, -0.5, 1.0, 0.75, -0.25, -1.0, 0.25, -0.5, 0.25, 0.0, 0.25, 0.25, -0.5, 0.75, -1.0, -1.0, -0.75, -1.0, -0.75, -1.0, -0.5, 0.25, 0.5, 0.5, 0.5, -0.75, 0.75, -0.5, -0.75, -0.75, 1.0, 0.5, 0.5, 0.25, -0.75, 0.5, 0.25, -1.0, 0.75, 0.5, 0.5, -0.5, 0.25, -0.5, -0.25, -1.0, 0.25, 0.75, -0.75, 1.0, -1.0, -1.0, -1.0, 0.25, -1.0, 0.5, 1.0, 0.5, 0.0, 0.75, -0.75, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    
    
    
    
    
    
    
    
    
    
    const array7 = new Float32Array([0.0, -0.5, -0.25, -0.75, 0.75, -0.75, 0.0, 0.5, -0.75, -1.0, 0.5, -0.25, 0.75, -0.75, 0.0, 1.0, 0.5, 0.5, -0.25, -0.5, 0.75, -0.75, -0.25, 0.5, -1.0, -0.5, 0.75, -0.5, -1.0, -0.75, -0.25, -0.5, 0.5, 1.0, 0.0, 1.0, 0.25, -0.25, -0.75, 0.5, -0.75, -0.25, -0.5, 0.5, -0.5, 0.75, 0.0, 1.0, 0.0, 0.75, 0.75, 1.0, 0.0, 0.5, -0.5, -0.25, 0.5, 1.0, -0.75, -1.0, 0.5, 0.75, 0.5, 0.5, -0.5, -0.5, 0.25, 0.0, 0.25, -1.0, -0.25, -0.5, 0.25, 1.0, -1.0, 0.5, -0.25, 0.75, -0.25, 1.0, 1.0, 0.5, -0.25, -1.0, -0.5, -0.75, -0.75, -1.0, 0.25, 0.75, -0.75, 0.75, -0.5, 0.5, -0.75, -0.75, 0.0, -1.0, 0.0, 0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array8 = new Float32Array([1.0, 0.5, -0.5, 1.0, 0.0, 0.75, 0.25, -0.25, 1.0, 1.0, 1.0, -0.5, -0.75, 0.25, 1.0, 0.0, -1.0, -1.0, 0.5, -0.25, -0.5, 0.5, 0.25, -0.25, 0.5, -0.25, 0.25, 0.25, 0.25, -1.0, -0.5, -1.0, 0.25, 0.5, 0.0, 0.25, -1.0, -1.0, 0.0, 0.75, 1.0, -0.5, -0.25, -0.25, 0.5, -0.5, -0.25, 0.0, 0.5, 0.75, 1.0, 0.5, -0.25, -0.25, 0.75, 1.0, 0.5, -0.25, 0.0, -0.25, -0.25, -1.0, 0.25, 0.75, -0.75, 0.5, 1.0, 0.0, -1.0, -0.25, -1.0, -0.75, -0.75, -1.0, 0.25, 0.0, 0.25, 0.5, 0.25, 0.0, 1.0, 1.0, -1.0, -0.25, 1.0, 0.75, 0.25, -1.0, 0.25, 0.5, -0.25, 0.0, 0.25, 0.0, -0.5, -0.25, -1.0, 0.0, -1.0, 1.0, ]);
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array9 = new Float32Array([0.0, -0.75, -0.75, 0.25, -0.5, -1.0, 0.25, -0.75, 1.0, 0.0, -0.5, 1.0, -0.25, -0.75, 0.75, 0.0, -1.0, 0.5, 0.0, -0.5, -0.25, -1.0, 0.25, -1.0, -0.5, -0.25, -0.25, -0.5, 0.0, 0.0, -0.25, -0.75, 1.0, 0.0, -0.5, 0.25, -0.75, 0.25, -0.25, 0.5, 0.75, -0.5, 0.5, -0.75, -1.0, -0.5, 0.5, -1.0, 0.5, 0.5, -0.5, 0.0, -0.75, 0.5, 0.75, 0.25, 0.25, 0.75, 0.25, 0.25, -0.5, -0.75, 1.0, 1.0, -0.5, -1.0, -0.25, -0.5, 0.75, 0.5, 1.0, 0.25, 0.25, -0.5, -0.25, 0.75, -0.5, 0.25, -0.25, -0.75, -1.0, -0.75, 0.25, -0.75, 0.0, -0.25, -0.5, -1.0, 0.5, 0.0, -0.5, 0.25, -1.0, -0.25, 0.0, 0.75, -0.25, 1.0, -1.0, 0.0, ]);
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.insertDebugMarker("mymarker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const command_buffer300 = command_encoder300.finish();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const array10 = new Float32Array([1.0, -1.0, 0.0, 0.75, -0.5, 0.5, 1.0, -0.5, -1.0, 1.0, -0.5, 0.75, 0.25, 0.75, 0.25, 0.75, -0.5, 0.5, 0.5, -1.0, -1.0, 0.75, 0.25, 0.75, 0.5, 0.75, -0.5, 0.5, 0.0, -0.75, -1.0, -1.0, 0.25, -0.5, 0.5, 0.25, -0.25, 0.75, -0.5, 0.75, 0.0, -1.0, 1.0, -0.25, -0.25, -0.25, -0.5, -1.0, 0.5, -0.75, 0.25, -0.25, 0.25, 0.0, 0.25, 1.0, -0.25, 0.0, 0.0, -0.5, 0.75, -0.5, 1.0, -1.0, 0.5, 0.0, 0.0, 0.75, -0.25, 0.25, 0.75, 0.0, 0.5, 0.75, -1.0, 1.0, -0.25, -0.75, 1.0, -0.75, -1.0, -1.0, -0.25, 1.0, 0.5, -1.0, -1.0, -0.75, -0.5, 1.0, -0.25, -0.25, 1.0, -1.0, 0.0, -1.0, -0.25, 0.25, 0.75, -0.75, ]);
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    buffer301.destroy()
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    query300.destroy()
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer302.destroy()
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    query300.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query300.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    buffer300.destroy()
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query301.destroy()
    
    
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder301.setPipeline(render_pipeline301);
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer304.destroy()
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
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
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    compute_pass_encoder3020.setPipeline(compute_pipeline303);
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    query300.destroy()
    
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile(__dirname + '/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    buffer307.destroy()
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile(__dirname + '/shader_module3011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout301,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout303,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    buffer303.destroy()
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer308.destroy()
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    var shader_module3012_code = "";
    try {
        shader_module3012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3012 = await device30.createShaderModule({ label: "shader_module3012", code: shader_module3012_code })
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout302,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group302);
    
    
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    
    compute_pass_encoder3030.setPipeline(compute_pipeline3030);
    query302.destroy()
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module309,
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
            module: shader_module309,
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
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group303);
    
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout304,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout301,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module309,
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
            module: shader_module309,
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
    
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device30.pushErrorScope("validation");
    
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout303,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
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
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module3012,
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
            module: shader_module3012,
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
    
    device40.pushErrorScope("out-of-memory");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder300.setVertexBuffer(0, buffer302);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout303,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout304,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3030.popDebugGroup()
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module309,
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
            module: shader_module309,
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
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const compute_pipeline3052 = device30.createComputePipeline({
        label: "compute_pipeline3052",
        layout: pipeline_layout302,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3053 = device30.createComputePipeline({
        label: "compute_pipeline3053",
        layout: pipeline_layout301,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3054 = device30.createComputePipeline({
        label: "compute_pipeline3054",
        layout: pipeline_layout301,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
    buffer309.destroy()
    
    
    const array11 = new Float32Array([-1.0, 0.0, -0.75, 0.5, 1.0, -0.75, -0.75, 0.0, 0.0, 1.0, 0.25, -0.75, 1.0, 0.0, 1.0, -0.25, -1.0, 0.25, -0.75, -1.0, 0.5, 0.25, 0.75, 0.0, 1.0, 0.0, 0.0, -0.75, 1.0, -0.75, -0.75, -0.75, 0.75, 1.0, -0.25, 1.0, -1.0, 0.75, -1.0, -0.5, -0.5, 1.0, -0.25, -0.25, 1.0, 0.5, 0.0, -0.5, -0.75, -0.75, 0.0, -0.5, 1.0, 0.25, 0.0, 0.25, 0.0, -0.25, -1.0, 0.0, -0.75, 0.0, 0.75, -1.0, 0.25, 0.25, 0.25, 0.0, 0.0, -0.25, 0.75, 0.0, 0.5, 0.5, -0.5, -0.75, -0.5, -0.25, 0.0, -0.5, 0.25, 0.0, 1.0, -0.25, 0.25, 0.75, 0.5, 0.25, -0.75, -1.0, 0.75, -0.5, -0.5, 0.5, 1.0, 0.75, -1.0, 0.5, -0.5, 0.75, ]);
    const compute_pipeline3055 = device30.createComputePipeline({
        label: "compute_pipeline3055",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3056 = device30.createComputePipeline({
        label: "compute_pipeline3056",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3057 = device30.createComputePipeline({
        label: "compute_pipeline3057",
        layout: pipeline_layout303,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3058 = device30.createComputePipeline({
        label: "compute_pipeline3058",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3059 = device30.createComputePipeline({
        label: "compute_pipeline3059",
        layout: pipeline_layout304,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    const compute_pipeline3060 = device30.createComputePipeline({
        label: "compute_pipeline3060",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline3061 = device30.createComputePipeline({
        label: "compute_pipeline3061",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3062 = device30.createComputePipeline({
        label: "compute_pipeline3062",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3063 = device30.createComputePipeline({
        label: "compute_pipeline3063",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3064 = device30.createComputePipeline({
        label: "compute_pipeline3064",
        layout: pipeline_layout303,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.drawIndirect(buffer300, 0);
    const compute_pipeline3065 = device30.createComputePipeline({
        label: "compute_pipeline3065",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3020.popDebugGroup()
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pipeline3066 = device30.createComputePipeline({
        label: "compute_pipeline3066",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer305.destroy()
    compute_pass_encoder3010.dispatchWorkgroups(100);
    
    const compute_pipeline3067 = device30.createComputePipeline({
        label: "compute_pipeline3067",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
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
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer3013, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer3013, 0, array2, 0, array2.length);
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline3068 = device30.createComputePipeline({
        label: "compute_pipeline3068",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer3013, 0, array3, 0, array3.length);
    compute_pass_encoder3020.insertDebugMarker("marker")
    texture301.destroy();
    
    const compute_pipeline3069 = device30.createComputePipeline({
        label: "compute_pipeline3069",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
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
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    
    device30.queue.writeBuffer(buffer3013, 0, array3, 0, array3.length);
    
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
    
    device30.queue.submit([command_buffer300, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    compute_pass_encoder3020.dispatchWorkgroups(100);
    
    query301.destroy()
    const compute_pipeline3070 = device30.createComputePipeline({
        label: "compute_pipeline3070",
        layout: pipeline_layout304,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    buffer306.destroy()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline3071 = device30.createComputePipeline({
        label: "compute_pipeline3071",
        layout: pipeline_layout305,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3072 = device30.createComputePipeline({
        label: "compute_pipeline3072",
        layout: pipeline_layout300,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3073 = device30.createComputePipeline({
        label: "compute_pipeline3073",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3074 = device30.createComputePipeline({
        label: "compute_pipeline3074",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    query302.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer3013, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer3013, 0, array7, 0, array7.length);
    const compute_pipeline3075 = device30.createComputePipeline({
        label: "compute_pipeline3075",
        layout: pipeline_layout304,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module309,
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
            module: shader_module309,
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
    const compute_pipeline3076 = device30.createComputePipeline({
        label: "compute_pipeline3076",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer3013, 0, array2, 0, array2.length);
    var shader_module3013_code = "";
    try {
        shader_module3013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3013 = await device30.createShaderModule({ label: "shader_module3013", code: shader_module3013_code })
    
    
    const compute_pipeline3077 = device30.createComputePipeline({
        label: "compute_pipeline3077",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    const compute_pipeline3078 = device30.createComputePipeline({
        label: "compute_pipeline3078",
        layout: pipeline_layout305,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3079 = device30.createComputePipeline({
        label: "compute_pipeline3079",
        layout: pipeline_layout300,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    const compute_pipeline3080 = device30.createComputePipeline({
        label: "compute_pipeline3080",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    query303.destroy()
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group304);
    
    
    query400.destroy()
    
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module309,
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
            module: shader_module309,
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline3081 = device30.createComputePipeline({
        label: "compute_pipeline3081",
        layout: pipeline_layout301,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.popDebugGroup()
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    device30.queue.writeBuffer(buffer3013, 0, array6, 0, array6.length);
    const compute_pipeline3082 = device30.createComputePipeline({
        label: "compute_pipeline3082",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    const compute_pipeline3083 = device30.createComputePipeline({
        label: "compute_pipeline3083",
        layout: pipeline_layout302,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline3084 = device30.createComputePipeline({
        label: "compute_pipeline3084",
        layout: pipeline_layout305,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3085 = device30.createComputePipeline({
        label: "compute_pipeline3085",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const compute_pipeline3086 = device30.createComputePipeline({
        label: "compute_pipeline3086",
        layout: pipeline_layout300,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    const compute_pipeline3087 = device30.createComputePipeline({
        label: "compute_pipeline3087",
        layout: pipeline_layout301,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
        vertex: {
            module: shader_module3013,
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
            module: shader_module3013,
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
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    const compute_pipeline3088 = device30.createComputePipeline({
        label: "compute_pipeline3088",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device30.queue.writeBuffer(buffer3013, 0, array7, 0, array7.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer3010.destroy()
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
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
        vertex: {
            module: shader_module3013,
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
            module: shader_module3013,
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
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    const compute_pipeline3089 = device30.createComputePipeline({
        label: "compute_pipeline3089",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer3013, 0, array10, 0, array10.length);
    const compute_pipeline3090 = device30.createComputePipeline({
        label: "compute_pipeline3090",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    buffer3012.destroy()
    
    const compute_pipeline3091 = device30.createComputePipeline({
        label: "compute_pipeline3091",
        layout: pipeline_layout303,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const compute_pipeline3092 = device30.createComputePipeline({
        label: "compute_pipeline3092",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer3013, 0, array6, 0, array6.length);
    const compute_pipeline3093 = device30.createComputePipeline({
        label: "compute_pipeline3093",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3094 = device30.createComputePipeline({
        label: "compute_pipeline3094",
        layout: pipeline_layout305,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3095 = device30.createComputePipeline({
        label: "compute_pipeline3095",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3030.popDebugGroup()
    const compute_pipeline3096 = device30.createComputePipeline({
        label: "compute_pipeline3096",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline3097 = device30.createComputePipeline({
        label: "compute_pipeline3097",
        layout: pipeline_layout300,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    const compute_pipeline3098 = device30.createComputePipeline({
        label: "compute_pipeline3098",
        layout: pipeline_layout305,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    
    const compute_pipeline3099 = device30.createComputePipeline({
        label: "compute_pipeline3099",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline30100 = device30.createComputePipeline({
        label: "compute_pipeline30100",
        layout: pipeline_layout301,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout304]
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline30101 = device30.createComputePipeline({
        label: "compute_pipeline30101",
        layout: pipeline_layout301,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline30102 = device30.createComputePipeline({
        label: "compute_pipeline30102",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    compute_pass_encoder3020.end();
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    device30.queue.writeBuffer(buffer3013, 0, array0, 0, array0.length);
    
    
    device50.pushErrorScope("internal");
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline3030.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group305);
    
    
    device30.queue.writeBuffer(buffer3013, 0, array0, 0, array0.length);
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: query300
    });
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder3030.popDebugGroup()
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline30103 = device30.createComputePipeline({
        label: "compute_pipeline30103",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline30104 = device30.createComputePipeline({
        label: "compute_pipeline30104",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const compute_pipeline30105 = device30.createComputePipeline({
        label: "compute_pipeline30105",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device50.queue.submit([command_buffer500, ]);
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    render_pass_encoder3020.setPipeline(render_pipeline305);
    
    const compute_pipeline30106 = device30.createComputePipeline({
        label: "compute_pipeline30106",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline30107 = device30.createComputePipeline({
        label: "compute_pipeline30107",
        layout: pipeline_layout306,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group306);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer402, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer402, 0);
    render_pass_encoder3020.setVertexBuffer(0, buffer302);
    compute_pass_encoder3010.end();
    render_pass_encoder3020.drawIndirect(buffer300, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3020, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3020, 0);
    render_pass_encoder3020.end();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.end();
    command_encoder302.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder3030.end();
    const command_buffer400 = command_encoder400.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer302 = command_encoder302.finish();
    const command_buffer303 = command_encoder303.finish();
    device30.queue.submit([command_buffer302, command_buffer303, ]);
}