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
    
    
    const array0 = new Float32Array([-0.5, -0.5, 1.0, 0.0, 0.25, -0.25, -0.5, 0.75, -0.25, -0.75, 0.75, 0.25, -1.0, 0.5, 0.5, -1.0, 0.25, 0.25, 0.0, 0.25, -1.0, 1.0, -0.5, 0.5, -0.5, -1.0, 0.25, -0.25, -1.0, -0.25, -0.75, 0.0, 0.75, -0.75, -0.25, -0.25, 0.25, 0.75, -0.5, -1.0, 0.75, 0.25, -0.5, 0.25, 0.75, 0.5, -0.5, 0.25, 0.5, -0.75, 1.0, 1.0, 0.75, -0.5, 0.5, -0.5, 0.0, 0.75, -0.25, 0.75, -1.0, 0.75, 0.25, 1.0, 0.25, 0.75, 0.25, 0.5, -1.0, -0.75, 0.75, 0.5, 1.0, 0.0, 0.75, 1.0, -0.75, -0.75, -0.5, -0.75, 0.0, -0.25, -0.75, 0.75, 0.0, -0.75, 0.75, 0.25, 0.5, 0.75, 0.5, 1.0, -0.75, 0.25, -0.75, -1.0, 0.75, -0.5, 0.0, -1.0, ]);
    
    const array1 = new Float32Array([1.0, -0.25, -0.5, -1.0, -0.25, 0.25, 0.75, -1.0, 0.0, 0.0, -1.0, 1.0, -0.25, 1.0, 0.75, -0.25, -0.25, -0.25, -1.0, 0.25, 0.75, -0.5, 1.0, -0.25, -1.0, 1.0, -0.25, -0.5, 0.75, -0.25, 0.0, -0.5, -1.0, -0.25, -0.5, 0.5, 1.0, 1.0, 0.5, -0.25, 0.0, -1.0, 0.5, 0.5, -1.0, 0.25, -0.25, 1.0, 0.0, -0.75, -1.0, 0.25, -0.5, -0.5, 1.0, 0.75, -0.25, 0.75, -0.5, -0.5, 0.5, 0.75, -1.0, 0.0, -0.25, -0.5, -0.5, 0.0, 1.0, -0.5, 0.0, 0.75, 0.25, 0.0, 0.75, -0.5, 0.25, -0.25, 0.25, 0.75, 0.75, -0.5, 0.5, -0.5, 0.25, 0.5, -1.0, 0.75, -0.25, 0.0, -0.75, 0.0, -0.25, -0.75, 1.0, 0.5, 0.5, 1.0, -0.25, 0.75, ]);
    const array2 = new Float32Array([0.25, -0.75, -0.25, 0.5, 0.5, -0.5, -0.75, -0.5, -0.25, 0.25, 0.75, 0.0, 0.0, -0.25, 1.0, -0.25, 0.0, -0.25, 0.0, 0.25, 0.0, 0.25, 0.25, 1.0, 0.75, -1.0, 0.5, -0.75, -0.75, 0.75, 0.25, 0.75, -0.75, 0.5, 0.75, -0.5, -1.0, -0.25, -0.75, -1.0, -1.0, -1.0, 0.25, -0.75, 0.75, -1.0, 0.75, -0.25, -0.5, -0.25, 0.25, -0.5, -0.75, -0.5, 0.25, 0.75, 1.0, 1.0, 1.0, 0.25, -0.75, -0.75, 0.75, -0.25, 0.0, -1.0, -1.0, 1.0, 0.0, 1.0, 1.0, -0.25, 1.0, 0.0, 1.0, -0.75, 0.25, 0.0, 0.0, -1.0, -1.0, -0.5, -0.5, 1.0, -0.25, 0.75, 0.0, 0.25, 0.25, 0.0, 0.5, 0.5, 0.25, 0.25, 0.0, 0.25, 0.0, 0.0, -0.75, 1.0, ]);
    
    
    const array3 = new Float32Array([-0.75, 0.5, -0.25, -0.5, -0.75, -0.5, 1.0, -1.0, 0.5, 1.0, -0.5, 0.25, 0.25, -0.5, -0.25, -0.5, 0.0, 0.75, 0.25, 0.5, 0.5, -1.0, 1.0, 0.0, -0.75, -0.5, -0.25, -0.25, -0.25, 0.0, 0.25, -1.0, 0.25, 0.0, 0.0, 0.0, 0.5, -0.75, -0.75, -0.5, 1.0, 0.75, -0.5, -0.5, -0.25, 0.25, -0.5, 0.5, -1.0, -0.5, -0.75, -0.75, -0.5, -0.75, -0.25, -1.0, 1.0, 0.25, -1.0, -0.25, 0.75, 0.0, 0.5, 0.75, -0.25, -0.25, 0.5, -0.5, -0.75, -0.25, 1.0, 0.25, 0.25, 0.5, -0.5, -0.25, 0.0, 0.25, 0.0, -0.75, 1.0, 0.0, -1.0, 0.5, 0.0, -0.25, -0.5, 0.75, -0.5, 0.5, -1.0, 0.0, -0.75, 0.5, -1.0, -0.5, 0.75, -0.25, 0.0, 0.75, ]);
    const array4 = new Float32Array([1.0, -0.5, 1.0, -0.25, 0.0, -0.75, 0.75, 0.25, -0.75, -0.5, 1.0, 0.25, 1.0, 0.0, -0.75, -0.5, 1.0, -1.0, -0.5, 1.0, 0.25, -1.0, -0.75, -0.25, -0.25, -1.0, 1.0, 0.5, 0.75, -0.5, 1.0, 0.75, -0.25, -0.5, -0.5, 0.25, 1.0, 0.5, 0.25, 0.5, -0.25, -0.25, 0.25, 1.0, 0.0, 0.25, 1.0, 0.5, -1.0, 0.0, 0.5, 0.75, 0.0, 1.0, 0.25, -0.25, 0.75, -0.5, -0.5, 0.25, -0.75, -0.25, -1.0, -1.0, -0.25, 0.0, -0.25, 0.75, 0.75, -0.5, -1.0, 0.5, 0.0, -1.0, 0.0, 0.5, 0.5, 0.75, -0.25, -0.75, 0.5, 0.0, 0.0, 0.25, 0.5, 0.75, 0.75, 0.25, -1.0, -0.75, 0.0, 0.25, 0.0, -0.25, 0.0, -0.5, -0.75, 0.25, 0.75, 0.25, ]);
    const array5 = new Float32Array([0.5, -0.25, 0.0, 1.0, 0.5, -0.75, -0.75, -0.5, -0.5, 1.0, -1.0, -0.5, 1.0, 0.0, -0.5, 0.75, 0.0, -0.25, 0.5, 0.0, -0.5, 0.25, 1.0, 0.75, 0.5, 0.5, 0.0, -0.5, 0.75, 1.0, 0.0, 0.0, -0.5, -0.75, 0.25, 0.25, -0.5, 0.0, -0.75, -1.0, 0.75, -0.25, 0.0, 0.0, -1.0, 0.5, 0.25, 0.75, 1.0, -0.25, 0.0, -0.75, 0.75, 0.5, 0.5, -1.0, -0.5, 0.75, -0.75, 0.0, 1.0, 0.5, -0.75, -0.75, -0.5, 0.25, -0.75, 0.75, 0.0, 0.25, 0.75, 0.0, -1.0, -1.0, -0.75, -0.75, 0.75, -1.0, -0.25, 1.0, -0.25, -1.0, 0.0, 0.75, -0.5, 1.0, 1.0, 0.75, -0.25, -0.25, 0.5, 1.0, -0.25, 0.5, -1.0, -0.5, -1.0, -0.5, 0.25, -0.75, ]);
    const array6 = new Float32Array([-1.0, -0.5, -0.75, 1.0, 0.25, -0.75, 0.75, -0.75, -1.0, 0.5, -0.75, -1.0, -0.25, 0.25, 0.0, -1.0, 0.5, 0.5, 0.25, 1.0, -1.0, -0.5, -0.75, -0.5, -0.75, 1.0, -1.0, -0.75, -0.75, -0.75, 0.5, 1.0, 0.25, -0.25, 0.0, 0.25, 0.0, 0.5, 0.0, -0.5, 0.75, -0.25, 0.25, 0.5, 0.75, 1.0, 0.25, 0.0, -0.25, 0.0, 0.75, -0.75, -0.5, -1.0, 0.75, 0.5, 0.25, -0.75, 0.0, -0.75, -0.75, 0.75, -1.0, -1.0, 0.0, -0.75, 1.0, 0.25, 1.0, -1.0, 0.25, -0.25, 0.0, 0.5, -1.0, -0.75, 0.25, 0.5, -0.5, -1.0, -0.5, 0.0, 0.0, -1.0, 0.25, -0.25, 0.5, 0.75, -0.75, -0.5, 0.0, 0.5, 0.5, -0.75, -1.0, 0.0, -0.5, 0.5, 0.25, -1.0, ]);
    
    
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    
    
    const array7 = new Float32Array([0.0, -0.25, -0.75, 0.5, 0.75, -0.5, 0.5, -0.75, 1.0, 0.75, 0.0, 0.5, -0.75, -0.75, -0.75, 0.5, 0.75, 0.25, -0.75, -0.75, 0.0, -0.25, 0.75, 0.75, -1.0, 1.0, 0.25, 0.0, -0.25, 0.25, 0.5, -1.0, -0.25, -0.5, 0.0, 0.25, -0.75, 0.0, -0.25, -1.0, 0.25, 0.25, 0.5, 0.0, 1.0, 0.0, 1.0, 0.0, 0.75, -0.25, 0.75, -0.75, 0.0, -0.75, 0.75, 0.0, -1.0, 0.25, -0.5, -0.25, -0.25, -1.0, -0.5, -0.5, -0.5, -0.5, 0.75, -0.5, -1.0, 0.75, -0.75, -1.0, -0.75, 0.0, 0.0, 1.0, -0.75, -0.25, 1.0, 0.5, -0.75, -0.75, 0.75, 0.25, 0.75, -1.0, 0.0, 0.25, 0.0, 1.0, -1.0, -0.5, -0.5, 0.75, 1.0, 1.0, 0.5, 1.0, 0.75, 0.75, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder000.insertDebugMarker("mymarker");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const command_buffer000 = command_encoder000.finish();
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array8 = new Float32Array([-1.0, -1.0, 0.5, -0.5, -0.25, -0.5, -0.25, 0.5, 0.25, 0.75, 1.0, 0.25, 1.0, -0.5, -0.25, -0.75, -1.0, -0.5, -0.75, -0.25, 0.75, 0.5, -0.5, 1.0, 0.75, 1.0, -0.25, -0.75, 0.25, 0.25, 0.0, -0.75, -1.0, -0.75, -1.0, -0.5, 0.75, 0.5, 0.0, -0.25, -1.0, 0.0, 0.75, -0.25, 0.0, 0.25, -0.5, 1.0, 0.25, -0.25, 0.5, 0.25, -0.25, -0.25, 0.75, 0.75, 0.0, -0.75, 0.75, -0.25, 0.0, -0.75, -1.0, -0.75, 0.25, 0.0, -0.75, -0.5, 0.5, -0.5, 1.0, 0.75, -0.25, -0.75, 0.5, -0.25, -0.25, 0.75, 0.0, -0.5, 1.0, 0.25, 0.25, 0.0, 0.5, -0.75, 0.25, -1.0, 0.75, 0.0, -1.0, -1.0, -1.0, -0.75, 0.0, -0.5, 1.0, -0.75, 0.75, 0.75, ]);
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array9 = new Float32Array([-0.25, 0.5, 0.0, -0.25, -1.0, -1.0, -1.0, -1.0, -0.25, 1.0, -0.75, -0.75, 1.0, -0.25, 1.0, -0.5, 0.5, 1.0, 0.75, 0.5, 0.75, 0.75, 0.5, -0.5, -0.25, -1.0, -0.25, 0.25, 0.25, 0.75, 1.0, 0.25, -1.0, -0.25, 0.25, 1.0, 0.75, 0.75, -0.75, -0.25, 0.25, 1.0, -0.75, 0.5, 0.0, 0.25, -1.0, 1.0, 1.0, 1.0, -0.75, 1.0, 0.5, 1.0, -0.25, 1.0, 0.25, -1.0, 1.0, 0.5, 0.0, -1.0, -0.5, 0.5, 0.5, -0.5, -0.5, 1.0, 0.25, -0.25, -0.5, -0.75, -0.25, 0.0, -0.25, 0.75, -0.5, 0.0, 0.75, -1.0, 1.0, -0.25, 0.5, -0.75, -1.0, 0.5, -0.75, 0.5, 0.0, 0.0, 1.0, -0.25, 0.0, 0.75, 0.75, 0.25, -1.0, 0.0, -0.75, 1.0, ]);
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8sint",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("validation");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
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
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture000.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device00.pushErrorScope("out-of-memory");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
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
    
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    render_pass_encoder0020.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    texture400.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture401.destroy();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array10 = new Float32Array([-0.5, 0.25, -1.0, 1.0, -0.5, -0.5, 0.0, -0.75, 0.25, -0.5, -1.0, 0.5, -0.75, 1.0, -0.75, 0.0, 0.25, 0.0, -1.0, 0.0, 1.0, 0.5, 0.5, -1.0, 0.25, 0.5, 0.25, 0.5, 0.75, 0.0, 0.5, 0.75, 0.0, -0.25, 0.75, 1.0, 1.0, 0.5, 0.5, 0.75, 1.0, 0.75, -1.0, 0.5, 0.25, -0.75, 1.0, -1.0, 0.5, -0.5, -0.25, 0.0, -1.0, -0.25, 1.0, 1.0, 1.0, 1.0, 0.0, 0.75, -0.75, -1.0, -0.25, 0.5, 0.0, 0.25, -0.25, 0.0, 0.75, -0.5, 0.5, 0.0, -0.25, 1.0, -0.75, 0.0, -0.5, -0.5, -0.75, 1.0, -0.5, 0.75, 0.0, 0.75, 0.75, 0.25, -0.25, -1.0, 0.5, 0.75, 0.5, 1.0, -0.5, 0.0, 0.75, 0.5, 0.0, -0.5, 0.75, 0.5, ]);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
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
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    texture403.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const command_buffer203 = command_encoder203.finish();
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    render_pass_encoder0020.executeBundles([])
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer001, 0, array10, 0, array10.length);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder0020.executeBundles([])
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    texture402.destroy();
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
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
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder005.copyBufferToBuffer(
        buffer004,
        0,
        buffer001,
        0,
        400
    );
    command_encoder005.copyBufferToBuffer(
        buffer003,
        0,
        buffer001,
        0,
        400
    );
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const command_buffer005 = command_encoder005.finish();
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    command_encoder004.copyBufferToBuffer(
        buffer004,
        0,
        buffer001,
        0,
        400
    );
    
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.submit([command_buffer203, ]);
    
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_buffer301 = command_encoder301.finish();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    texture002.destroy();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture200.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device40.pushErrorScope("validation");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    command_encoder006.clearBuffer(buffer001);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    command_encoder006.insertDebugMarker("mymarker");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    command_encoder006.copyBufferToBuffer(
        buffer004,
        0,
        buffer001,
        0,
        400
    );
    
    texture201.destroy();
    const texture_view4051 = texture405.createView({ label: "texture_view4051" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    texture001.destroy();
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture404.destroy();
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
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_buffer401 = command_encoder401.finish();
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    
    command_encoder300.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer300 = command_encoder300.finish();
    
    texture300.destroy();
    command_encoder501.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    device40.queue.submit([command_buffer401, ]);
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    device30.pushErrorScope("validation");
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
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
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const array11 = new Float32Array([1.0, -0.25, -1.0, 0.75, 0.25, -0.75, -0.5, 0.5, 0.75, -0.25, -0.5, 0.75, -0.75, 1.0, -1.0, 1.0, -0.5, -1.0, -0.25, 1.0, -1.0, 0.75, 0.5, -0.25, -0.25, 1.0, -0.25, -0.75, 0.5, 0.5, -1.0, -0.25, -0.75, -1.0, 0.5, -0.5, 0.75, 0.0, 0.5, 0.75, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0, -0.75, -1.0, -0.5, -0.5, 0.25, 0.5, -0.5, 0.75, 0.0, -1.0, -0.25, 0.75, -0.5, 0.75, -1.0, 0.75, -0.5, -0.5, 0.0, -0.25, 0.75, -0.25, -0.25, -0.25, 0.75, -0.25, -0.25, -1.0, 0.5, -0.25, -1.0, 0.0, 1.0, -0.25, -1.0, -1.0, -1.0, -1.0, -1.0, 0.75, 1.0, -1.0, -1.0, -1.0, 1.0, -1.0, -0.25, 0.75, 0.25, -0.75, -0.5, 0.0, 0.5, 0.75, ]);
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const command_buffer501 = command_encoder501.finish();
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
    texture003.destroy();
    
    
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    texture405.destroy();
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    command_encoder402.insertDebugMarker("mymarker");
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    command_encoder402.insertDebugMarker("mymarker");
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    device00.queue.writeBuffer(buffer006, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer001, 0, array11, 0, array11.length);
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer006, 0, array8, 0, array8.length);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.submit([command_buffer005, ]);
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer402, ]);
    device50.queue.submit([command_buffer501, ]);
    device00.queue.submit([command_buffer000, ]);
    const command_buffer403 = command_encoder403.finish();
    device40.queue.submit([command_buffer403, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
}