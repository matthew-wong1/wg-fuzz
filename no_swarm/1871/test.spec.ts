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
    const array0 = new Float32Array([-0.5, -0.5, -1.0, -1.0, -1.0, 0.0, -0.75, 0.25, -0.25, 1.0, -0.25, -0.25, -1.0, -0.75, -0.75, -0.75, 1.0, -0.5, 0.25, 0.5, 0.0, -0.25, -0.75, 0.75, 1.0, -1.0, -0.75, 0.0, 0.25, 1.0, 0.0, -1.0, 0.5, 0.0, 0.5, 0.25, -0.25, 0.25, -0.5, 0.0, -1.0, 0.25, 1.0, 0.5, 0.5, 1.0, -1.0, 0.25, 0.25, 0.25, 0.75, 0.25, 1.0, -0.5, 0.0, -0.25, 1.0, 0.0, -0.25, 1.0, -0.5, -0.5, 1.0, 0.5, 0.25, 0.0, -0.5, 0.75, 0.5, -0.75, -1.0, -0.25, 0.0, -1.0, 0.0, -0.5, 0.25, -1.0, -0.5, -1.0, 0.75, 0.5, -0.5, -0.75, 0.0, 0.0, -0.25, 0.25, 0.25, -0.75, 0.0, 0.75, -1.0, -0.75, 0.75, 1.0, 1.0, -0.25, 0.0, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.5, 0.75, 0.25, -0.5, 0.75, 1.0, 0.5, 0.75, -1.0, 1.0, 1.0, 0.0, -0.25, -1.0, 1.0, -1.0, -1.0, -0.5, -0.5, -0.75, 0.75, 0.0, -0.5, -0.75, -0.75, -1.0, 0.75, -1.0, 0.5, 0.75, 0.25, 0.0, 0.25, 0.25, 0.25, -1.0, -0.75, 0.75, 0.0, -0.75, -0.5, 1.0, 1.0, -0.25, -1.0, 0.25, 0.5, -0.5, 0.5, 0.75, 0.75, -0.75, 0.0, 0.0, -0.75, 0.25, 0.0, -1.0, 0.25, 0.25, -0.75, 1.0, 0.0, 0.25, 1.0, -0.25, -1.0, 1.0, 0.25, -0.75, 0.75, -0.25, 0.75, 1.0, 0.75, 0.25, -0.25, 0.0, 0.5, 0.0, -0.75, 1.0, 0.75, -0.5, -0.75, 0.0, -0.5, 0.25, 0.5, 0.25, 0.25, -0.25, 0.25, 0.0, 0.75, 0.75, -0.25, -1.0, -0.75, 0.0, ]);
    
    const array2 = new Float32Array([0.75, 0.0, 1.0, 0.25, 0.75, -0.25, 0.0, 1.0, 0.0, 0.25, 0.25, -0.75, -0.5, -0.25, -0.75, -0.25, 0.0, 0.0, 1.0, -1.0, 0.0, 0.5, 0.25, 0.5, -0.25, 1.0, 1.0, -0.25, 0.5, 0.25, -0.5, 0.0, 0.5, 0.25, -0.25, -1.0, 0.25, -0.75, 1.0, -0.5, -1.0, -0.75, 0.75, 0.5, 0.5, -0.75, -0.5, 0.75, 0.25, 0.25, -1.0, 1.0, 0.0, 0.25, -0.75, -0.5, -1.0, -1.0, -0.5, 0.75, 0.0, 0.75, 0.0, 0.0, -0.5, -0.25, 0.25, 0.5, -1.0, 0.0, -1.0, 0.75, -0.75, -0.75, 0.75, -0.75, 1.0, -1.0, 0.0, -0.5, -0.25, 0.75, -0.75, 0.5, -0.5, -0.75, -0.75, -1.0, 1.0, 0.75, 1.0, 0.75, -0.5, 0.75, -0.25, 0.0, -0.75, 0.5, 0.25, 0.5, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    const array3 = new Float32Array([0.25, -0.75, 0.0, -0.5, -1.0, -0.75, 0.0, -1.0, 0.0, -1.0, 0.25, -0.5, 0.5, 0.25, 0.0, 0.0, -0.75, 1.0, -1.0, 0.5, 0.75, -0.5, 1.0, -1.0, 0.0, 1.0, -0.5, -1.0, 0.5, -0.75, 0.25, -0.25, -0.25, 0.5, 0.0, -0.25, -0.25, -0.5, 1.0, 0.25, 0.25, 0.5, -0.5, 0.25, 0.5, 0.0, 0.25, 0.75, 0.25, -1.0, 0.0, 0.75, -0.25, 0.5, 0.75, -0.25, 1.0, 0.25, 0.5, -1.0, -0.75, 0.75, 1.0, 0.75, 0.25, 0.0, 1.0, -0.75, 1.0, -0.25, 0.0, -0.5, 0.75, 0.5, 1.0, 1.0, -0.25, -0.75, 1.0, 1.0, -0.25, -0.5, -0.25, 1.0, 0.75, 1.0, 0.0, 0.25, 0.25, -0.5, 1.0, -0.75, 0.75, -0.5, -0.75, -0.5, -0.75, 0.5, 0.5, -0.5, ]);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    device20.destroy();
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    texture100.destroy();
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query100.destroy()
    
    device40.pushErrorScope("out-of-memory");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    buffer100.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    texture300.destroy();
    
    
    
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array4 = new Float32Array([-0.75, -0.25, 0.25, 0.5, 1.0, 1.0, -0.25, 1.0, 0.0, 1.0, 0.75, 0.0, 0.75, 0.75, 0.5, 0.5, -0.25, 1.0, 0.0, -0.75, -0.75, -0.75, 0.25, 0.75, 1.0, 0.5, -1.0, -0.5, 0.0, -1.0, 0.25, 0.75, 0.75, 1.0, -0.25, 0.5, -0.25, 0.75, 1.0, -0.75, 1.0, 0.75, -0.25, -0.25, 0.25, -1.0, 1.0, 1.0, 0.5, 1.0, -0.5, 0.25, 0.5, 0.5, -0.75, -0.25, 0.75, -0.25, 1.0, -0.5, -0.75, 0.75, -0.25, 1.0, 0.0, -0.25, -0.5, 0.25, 0.75, 1.0, 0.25, -0.5, -0.25, 0.25, 0.25, -0.75, 0.5, 1.0, 0.0, 0.5, -0.25, 0.5, -1.0, 1.0, -0.5, 0.5, -0.25, -0.5, -0.75, 1.0, 0.75, -1.0, 0.75, -1.0, -0.25, -0.75, 0.5, 0.0, 0.25, -0.75, ]);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer401 = command_encoder401.finish();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    buffer401.destroy()
    buffer100.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    device30.pushErrorScope("internal");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
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
    
    const command_buffer300 = command_encoder300.finish();
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder400.insertDebugMarker("marker");
    texture103.destroy();
    device00.pushErrorScope("validation");
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device10.pushErrorScope("internal");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    query300.destroy()
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query000.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device60.destroy();
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    buffer101.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    query100.destroy()
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
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
    
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    buffer400.destroy()
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.queue.submit([command_buffer401, ]);
    
    
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query500.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    command_encoder102.pushDebugGroup("mygroupmarker")
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    buffer402.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.setStencilReference(1);
    buffer001.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout105]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    device10.queue.submit([]);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    render_bundle_encoder400.popDebugGroup();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.popDebugGroup();
    texture104.destroy();
    
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    device50.pushErrorScope("internal");
    render_pass_encoder1020.insertDebugMarker("marker");
    texture102.destroy();
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer002.destroy()
    
    
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    
    
    
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_bundle_encoder500.insertDebugMarker("marker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder4000.popDebugGroup()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    query000.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    buffer000.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    query001.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    texture400.destroy();
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    query400.destroy()
    render_bundle_encoder502.pushDebugGroup("group_marker");
    query303.destroy()
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder1010.setPipeline(render_pipeline101);
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.setPipeline(render_pipeline101);
    render_bundle_encoder401.popDebugGroup();
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    compute_pass_encoder1030.setPipeline(compute_pipeline100);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    render_bundle_encoder300.setPipeline(render_pipeline301);
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    texture301.destroy();
    
    
    
    
    command_encoder500.copyBufferToBuffer(
        buffer500,
        0,
        buffer500,
        0,
        400
    );
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    texture500.destroy();
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
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
    
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    query301.destroy()
    query300.destroy()
    compute_pass_encoder1001.insertDebugMarker("marker")
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query501
    });
    query400.destroy()
    render_bundle_encoder502.popDebugGroup();
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    query304.destroy()
    
    query304.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    query501.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder301.popDebugGroup()
    query500.destroy()
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    texture105.destroy();
    device30.pushErrorScope("validation");
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder5000.insertDebugMarker("marker");
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    query101.destroy()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder001.popDebugGroup();
    query100.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.submit([command_buffer300, ]);
    device70.destroy();
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    render_pass_encoder1000.setPipeline(render_pipeline102);
    query502.destroy()
    const render_pass_encoder5001 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5011,
            },
        ],
        occlusionQuerySet: query500
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    render_pass_encoder1011.insertDebugMarker("marker");
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("out-of-memory");
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder1001.setPipeline(compute_pipeline100);
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer501.destroy()
    
    command_encoder502.insertDebugMarker("mymarker");
    render_pass_encoder1011.setPipeline(render_pipeline102);
    render_pass_encoder5001.setPipeline(render_pipeline500);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_pass_encoder5001.setBindGroup(0, bind_group500);
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group102);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1020.setVertexBuffer(0, buffer107);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer109, 0);
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group301);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group103);
    render_pass_encoder5001.setVertexBuffer(0, buffer500);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group105);
    render_pass_encoder1011.setVertexBuffer(0, buffer100);
    render_pass_encoder5001.draw(3);
    render_pass_encoder1011.draw(3);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group106);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer305, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer305, 0);
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer400 = command_encoder400.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.setVertexBuffer(0, buffer1010);
    render_pass_encoder1020.end();
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
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
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group302);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
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
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    render_pass_encoder1011.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1018, 0);
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    compute_pass_encoder1030.popDebugGroup()
    device60.queue.submit([]);
    compute_pass_encoder1030.popDebugGroup()
    device80.queue.submit([]);
    command_encoder102.popDebugGroup()
    compute_pass_encoder3010.end();
    render_pass_encoder1000.setVertexBuffer(0, buffer1014);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4000.end();
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1019, 0);
    compute_pass_encoder2000.popDebugGroup()
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group107);
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    render_pass_encoder5001.draw(3);
    render_pass_encoder5010.setPipeline(render_pipeline500);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1022, 0);
    render_pass_encoder5010.popDebugGroup();
    compute_pass_encoder1001.end();
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    render_pass_encoder5001.endOcclusionQuery()
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group501);
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder1030.end();
    render_pass_encoder5001.end();
    const command_buffer301 = command_encoder301.finish();
    command_encoder101.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1010.end();
    command_encoder103.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder3010.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1000.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder4000.end();
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    const command_buffer101 = command_encoder101.finish();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder5000.setPipeline(render_pipeline500);
    render_pass_encoder1020.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([]);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group502);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.drawIndirect(buffer106, 0);
    render_pass_encoder1010.end();
    render_pass_encoder5010.setVertexBuffer(0, buffer506);
    device80.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
    compute_pass_encoder1030.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5010.drawIndirect(buffer502, 0);
    compute_pass_encoder3010.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder5000.setVertexBuffer(0, buffer506);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer102, 0);
    device40.queue.submit([]);
    render_pass_encoder5000.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder5010.draw(3);
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer501, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder1000.end();
    device30.queue.submit([]);
    render_pass_encoder5000.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder5010.end();
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1023, 0);
    render_pass_encoder5000.end();
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder5001.setIndexBuffer(buffer503, "uint16");
    compute_pass_encoder1000.end();
    device70.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    device50.queue.submit([command_buffer501, ]);
    device00.queue.submit([]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1000.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1010.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1020.end();
    device30.queue.submit([command_buffer301, ]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5010.drawIndirect(buffer502, 0);
    render_pass_encoder5000.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1020.end();
    compute_pass_encoder1001.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder5000.end();
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    compute_pass_encoder3010.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5010.popDebugGroup();
    compute_pass_encoder4000.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1020.draw(3);
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder3010.popDebugGroup()
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group304);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder5001.drawIndexed(3);
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group402);
    device40.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder5010.setIndexBuffer(buffer506, "uint16");
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer409, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer409, 0);
    compute_pass_encoder4000.end();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder5010.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1024, 0);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder5010.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1025, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1025, 0);
    device50.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer105, 0);
    device80.queue.submit([]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5001.draw(3);
    render_pass_encoder1000.drawIndirect(buffer107, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    device80.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    device40.queue.submit([command_buffer400, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4010, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4010, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder5000.endOcclusionQuery()
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1011.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.draw(3);
    device00.queue.submit([]);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer501, ]);
    device20.queue.submit([]);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    device50.queue.submit([command_buffer501, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group108);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder5010.end();
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder5001.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4011, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4011, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder4000.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1022, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer502, 0);
    render_pass_encoder5010.setIndexBuffer(buffer507, "uint16");
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1028, 0);
    compute_pass_encoder3010.end();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group109);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3012, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3012, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder5010.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5000.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    device50.queue.submit([]);
    render_pass_encoder5001.setIndexBuffer(buffer504, "uint16");
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer102, ]);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder5001.setIndexBuffer(buffer500, "uint16");
    device40.queue.submit([command_buffer400, ]);
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer502, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder5010.draw(3);
    device50.queue.submit([]);
    compute_pass_encoder1001.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder5010.popDebugGroup();
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
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group403);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1010);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1033, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1033, 0);
    render_pass_encoder5001.drawIndirect(buffer503, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder5010.draw(3);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder1011.end();
    render_pass_encoder5010.end();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3013, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3013, 0);
    device10.queue.submit([]);
    render_pass_encoder5000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
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
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group305);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4014, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4014, 0);
    device50.queue.submit([command_buffer502, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    compute_pass_encoder3010.end();
    device30.queue.submit([command_buffer300, ]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder5001.drawIndirect(buffer505, 0);
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1011);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1012);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder5001.end();
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndexed(3);
    compute_pass_encoder4000.end();
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder5000.drawIndexed(3);
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
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group306);
    render_pass_encoder5010.draw(3);
    render_pass_encoder1011.drawIndexed(3);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5000.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5001.drawIndexed(3);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3018, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3018, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndirect(buffer1023, 0);
    render_pass_encoder1011.drawIndirect(buffer1025, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1038, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1038, 0);
    device10.queue.submit([command_buffer101, ]);
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group307);
    render_pass_encoder5001.endOcclusionQuery()
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder5001.draw(3);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1039, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder5000.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5010.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder5001.end();
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder5010.end();
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group404);
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    render_pass_encoder5000.setIndexBuffer(buffer506, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    device00.queue.submit([]);
    render_pass_encoder1011.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1014);
    render_pass_encoder5010.drawIndexed(3);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1027, "uint16");
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder5001.drawIndexedIndirect(buffer506, 0);
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group405);
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1044, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder5001.drawIndirect(buffer506, 0);
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group308);
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4019, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4019, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder5010.drawIndirect(buffer501, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    compute_pass_encoder4000.popDebugGroup()
    device10.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1015);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1030.end();
    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1048,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1016);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1049, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndirect(buffer1049, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    device30.queue.submit([]);
    render_pass_encoder5000.drawIndirect(buffer500, 0);
    render_pass_encoder1000.drawIndirect(buffer1038, 0);
    render_pass_encoder1020.draw(3);
    device00.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    render_pass_encoder5000.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder5010.drawIndirect(buffer501, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder1001.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder5000.endOcclusionQuery()
    render_pass_encoder5001.drawIndexed(3);
    compute_pass_encoder1001.end();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1034, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder1001.end();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4020, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4020, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    device50.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndirect(buffer1038, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer506, 0);
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group309);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1010.end();
    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4022,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group406);
    render_pass_encoder5000.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    device30.queue.submit([]);
    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4024,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group407);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1051,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1017);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1052, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1010.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    render_pass_encoder5000.drawIndirect(buffer504, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5001.popDebugGroup();
    compute_pass_encoder3010.end();
    compute_pass_encoder3010.popDebugGroup()
    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1054,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1018);
    render_pass_encoder5001.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device00.queue.submit([]);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1055, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1055, 0);
    render_pass_encoder5001.end();
    device50.queue.submit([]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4025, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4025, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4027,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group408);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1019);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1044, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    compute_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1059,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1020);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1011.drawIndirect(buffer1042, 0);
    render_pass_encoder5000.end();
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1000.popDebugGroup();
    device30.queue.submit([]);
    device10.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1060, 0);
    device80.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    device40.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder5001.drawIndirect(buffer505, 0);
    compute_pass_encoder4000.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3010);
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4029,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group409);
    render_pass_encoder1011.drawIndexed(3);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1010.end();
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1011.drawIndirect(buffer1023, 0);
    compute_pass_encoder1030.end();
    device00.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder5001.endOcclusionQuery()
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder5010.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1061, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1061, 0);
    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4031,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4010);
    device40.queue.submit([]);
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3011);
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4033,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4011);
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1062, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1062, 0);
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer102, ]);
    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3030,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3012);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    device50.queue.submit([]);
    render_pass_encoder5001.setIndexBuffer(buffer501, "uint16");
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4035,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4012);
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder5001.drawIndexed(3);
    render_pass_encoder5000.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer103, ]);
    device20.queue.submit([]);
    device80.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder5000.popDebugGroup();
    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3032,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3013);
    render_pass_encoder5001.end();
    render_pass_encoder5000.end();
    device40.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1022, 0);
    render_pass_encoder5010.end();
    render_pass_encoder5000.end();
    render_pass_encoder5000.setIndexBuffer(buffer504, "uint16");
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1021);
    render_pass_encoder1000.drawIndirect(buffer1038, 0);
    render_pass_encoder5010.draw(3);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1020.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    device80.queue.submit([]);
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1059, 0);
    device10.queue.submit([]);
    render_pass_encoder5010.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1066,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1022);
    device00.queue.submit([]);
    render_pass_encoder5001.drawIndexed(3);
    render_pass_encoder1020.popDebugGroup();
    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1068,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1023);
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1011.drawIndirect(buffer1025, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.end();
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder1010.end();
    compute_pass_encoder1001.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder5001.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5001.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder5010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer102, 0);
    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1070,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1024);
    render_pass_encoder1011.drawIndirect(buffer1022, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4036, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4036, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    device00.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    compute_pass_encoder1001.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder5010.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder5000.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder5000.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5000.drawIndirect(buffer501, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1072,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1025);
    render_pass_encoder5000.end();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4037, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4037, 0);
    render_pass_encoder5010.draw(3);
    render_pass_encoder1000.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder1001.end();
    device50.queue.submit([command_buffer501, ]);
    device40.queue.submit([]);
    render_pass_encoder1011.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder5000.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1024, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3033, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3033, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1010.drawIndirect(buffer1061, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder5010.drawIndirect(buffer503, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1051, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1001.end();
    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1074,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1026);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder5001.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder5001.end();
    device30.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1000.popDebugGroup();
    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3035,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3014);
    device00.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder5010.draw(3);
    compute_pass_encoder4000.end();
    render_pass_encoder1000.drawIndirect(buffer1071, 0);
    render_pass_encoder5001.popDebugGroup();
    device00.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder1000.end();
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1075, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1075, 0);
    render_pass_encoder1010.drawIndirect(buffer1061, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder5000.draw(3);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3037,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3015);
    render_pass_encoder1011.drawIndexedIndirect(buffer1049, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4038, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4038, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1077,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1027);
    render_pass_encoder1011.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    device70.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1000.draw(3);
    compute_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1010.end();
    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3039,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3016);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder5010.end();
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1078, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1078, 0);
    device30.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1079, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1079, 0);
    render_pass_encoder1011.drawIndirect(buffer1022, 0);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder1020.draw(3);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3040, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3040, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5010.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1039, 0);
    device10.queue.submit([command_buffer101, ]);
    device40.queue.submit([]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder5000.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder5000.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1061, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder1010.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder5010.drawIndexedIndirect(buffer507, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3041, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3041, 0);
    render_pass_encoder1020.popDebugGroup();
    device80.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1020.end();
    device30.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    device00.queue.submit([]);
    render_pass_encoder5010.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder5010.end();
    render_pass_encoder1020.end();
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder5010.setIndexBuffer(buffer501, "uint16");
    device30.queue.submit([command_buffer300, ]);
}