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
    
    
    const array0 = new Float32Array([-0.75, 0.25, -0.25, -1.0, 0.75, -0.25, 0.25, -0.5, 0.5, -0.75, 0.0, -0.5, -0.75, -0.5, 0.0, -0.5, 0.25, -1.0, 0.75, 0.0, 0.75, 0.75, 0.25, 0.25, 0.0, -0.25, 0.25, 0.25, 1.0, 0.25, -0.25, -0.5, 0.75, 0.5, 0.5, -1.0, -1.0, -0.75, -1.0, 0.25, -0.5, 0.75, -0.75, 0.5, -0.75, 0.25, 0.5, 0.75, -1.0, 1.0, -0.25, 0.5, -0.5, 0.5, -0.75, 0.0, 1.0, 1.0, -0.75, -0.5, -0.25, 0.75, 1.0, 0.75, 1.0, -0.5, -0.75, -0.75, 0.25, 0.75, 0.75, 1.0, 0.75, 0.25, 0.25, 1.0, -0.5, 0.25, 0.5, 0.25, -0.5, -0.75, 0.5, 0.25, 1.0, -0.75, 0.5, -1.0, -0.25, 0.0, 0.0, 0.0, 0.0, -1.0, 1.0, 0.25, 0.0, 0.0, 0.5, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array1 = new Float32Array([-0.25, -0.5, 0.5, 0.75, 0.5, 1.0, 0.25, 0.5, 0.0, -0.25, -0.75, 0.5, -0.25, -0.75, 0.5, 0.0, -0.75, 0.25, -1.0, -0.5, 0.25, 0.5, 1.0, 0.0, -0.25, -1.0, 0.5, 0.75, 1.0, -0.25, 0.25, 0.0, -0.25, 1.0, -1.0, 0.5, -0.5, 0.25, 0.0, 0.0, -1.0, -0.5, -0.25, -1.0, -0.75, 0.25, 0.0, -0.75, 0.25, -1.0, 0.25, -1.0, 0.25, 0.75, -0.25, 0.5, -0.25, 0.5, 1.0, -0.25, -0.75, 0.0, 0.0, 0.0, 0.0, 0.0, -0.5, 0.25, 0.5, -0.25, -0.5, 0.5, 0.75, 0.0, -0.75, 0.5, -0.75, 0.75, 0.5, 0.0, 1.0, 0.5, 1.0, 0.75, 0.25, 0.25, 0.5, 0.5, -0.5, 0.0, -0.25, -1.0, -0.25, -0.75, -0.5, -0.5, 0.75, 0.25, 0.75, 0.75, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array2 = new Float32Array([1.0, -0.75, 1.0, -0.5, -1.0, 0.0, -1.0, -0.75, 0.5, 1.0, 0.0, 0.5, 0.5, -0.25, -1.0, -0.25, 0.5, -0.75, 0.5, 0.75, -0.5, 0.5, 1.0, 0.5, 1.0, -0.5, 0.25, 0.75, -0.75, 0.5, 0.25, -1.0, 0.0, -1.0, -1.0, -0.75, 1.0, -0.5, -0.5, -0.25, 1.0, -0.25, 0.0, 0.25, 0.75, 0.0, -1.0, 0.75, 0.75, -0.5, 0.5, 1.0, 0.5, -0.75, 0.5, 0.5, -0.25, 0.75, 0.75, 0.5, -0.75, 1.0, -0.75, -0.25, 0.75, -0.75, 0.5, 0.25, 0.0, 0.5, -1.0, -0.5, 1.0, 0.5, 0.75, 0.0, -1.0, -1.0, -0.25, 0.75, 0.0, -1.0, -0.5, 0.0, -0.25, -0.75, 0.0, -0.75, 0.0, -0.75, 0.0, 1.0, -0.25, 0.5, 0.5, -1.0, -0.5, -0.75, 1.0, -0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([-0.5, 0.25, 0.25, -0.25, 0.5, -0.75, 0.75, -0.75, 1.0, 0.25, 0.5, 0.5, 0.5, -0.5, -0.25, -0.5, 0.75, 1.0, 0.0, -0.25, -0.5, -0.75, -0.5, 0.75, 0.0, -0.75, 0.5, -0.5, -0.75, 0.25, -0.25, 1.0, -0.25, -0.5, 0.0, 1.0, 0.5, -1.0, -0.25, 0.5, -1.0, -0.75, 0.5, 1.0, 0.25, -1.0, -0.5, 0.5, -1.0, 1.0, -0.25, 1.0, -1.0, 0.0, 0.25, 0.0, -1.0, -1.0, 0.0, 0.25, 0.75, -0.25, -0.75, -0.25, 1.0, 0.0, 0.5, 0.75, 0.25, -0.75, 0.75, -0.75, -0.25, -0.5, 0.5, -0.75, -0.25, 0.25, -0.25, 0.0, 1.0, 0.5, 0.75, -1.0, -0.5, 0.75, 0.5, 0.0, -0.75, -0.75, 1.0, 0.25, 0.5, 0.25, 0.25, 0.5, 0.75, -0.5, 0.75, -0.5, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device20.destroy();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    query000.destroy()
    
    query300.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query000.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query301.destroy()
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device00.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    query300.destroy()
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const array4 = new Float32Array([0.5, -0.5, 0.5, -0.25, -1.0, 1.0, 0.0, -0.75, -0.75, -0.5, 0.25, 0.5, 0.25, -0.75, 0.5, 0.75, -0.25, -0.75, 0.0, 1.0, 0.25, 0.0, -0.25, 1.0, 0.75, -0.5, 0.0, 0.0, -0.5, 0.0, -0.5, 1.0, -0.25, -0.5, -1.0, -0.75, 0.75, 0.5, -0.5, 0.5, 1.0, 0.0, -0.75, 1.0, 0.0, -1.0, 0.75, 0.75, -0.25, -0.25, -0.75, 0.25, -0.75, -1.0, 0.75, -0.25, -0.75, -1.0, -0.25, -0.75, 0.5, 0.75, -0.5, 0.75, -0.25, 0.75, -1.0, 1.0, -0.75, 0.75, -0.75, 1.0, 0.25, -0.25, 0.5, 0.5, 0.0, -0.75, -0.5, -1.0, 0.5, -0.25, 0.25, 0.25, -0.25, 1.0, 0.5, 1.0, 0.25, 1.0, 0.75, 0.5, 0.0, 0.75, 0.0, 0.5, 0.5, -0.25, 0.25, -1.0, ]);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    
    device10.destroy();
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    device30.destroy();
    
    
    
    
    
    
    const array5 = new Float32Array([-0.75, 0.0, 0.5, 0.75, 0.25, 0.75, -0.5, 1.0, 0.5, -1.0, 0.0, 1.0, -1.0, -0.75, -1.0, -0.25, -0.75, 0.75, 0.0, -0.75, 0.5, -0.5, 0.25, -0.75, 0.5, 0.5, -0.5, 1.0, -0.75, 1.0, -0.25, -1.0, 0.75, 0.0, 1.0, 0.0, -0.5, 0.75, 1.0, 1.0, 0.75, 1.0, -0.25, 1.0, 0.75, -0.5, -1.0, 0.25, 0.0, -0.75, 0.75, -1.0, -0.5, -0.5, 0.25, -1.0, 0.25, 0.5, 0.0, -0.75, 1.0, 0.25, -1.0, -0.75, -0.25, 1.0, 1.0, 0.5, 0.0, -0.25, -0.75, 0.5, 0.25, -0.75, -0.75, -0.25, 0.25, 0.0, 0.75, 0.5, 1.0, -0.25, -0.5, 0.25, -1.0, 0.5, 0.5, -0.25, 0.0, -0.75, 0.0, -0.5, -0.25, -0.75, -0.5, 0.75, 0.75, -1.0, -1.0, 0.25, ]);
    
    
    
    
    const array6 = new Float32Array([0.25, 0.0, 1.0, -1.0, -0.5, -0.25, -0.25, -1.0, -0.25, -0.75, -1.0, 0.0, 1.0, 0.5, -0.25, -0.75, -1.0, -0.5, 0.75, 0.0, 0.5, 0.0, 0.75, -0.75, 0.5, 0.75, -1.0, -0.5, -0.5, 0.5, 0.5, -0.25, 0.5, 0.0, -0.25, -0.25, -1.0, 0.0, -0.25, -0.75, -0.75, 1.0, 1.0, -1.0, 1.0, 0.25, -1.0, 1.0, -0.5, 0.25, -1.0, -0.5, 1.0, 0.25, 0.5, 0.25, -0.75, -1.0, 1.0, 0.5, -1.0, -0.5, -0.25, -0.25, 0.25, 0.5, -0.25, -0.25, 0.75, -0.5, 0.0, -0.75, 1.0, -1.0, 0.5, -1.0, 0.25, -1.0, 0.0, 1.0, 0.25, -1.0, 0.25, -0.5, -0.25, 0.0, 0.75, -0.5, 1.0, 1.0, -0.75, -1.0, 0.75, 1.0, 0.0, 0.0, -0.25, -1.0, -0.5, -0.5, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array7 = new Float32Array([0.5, 1.0, 0.75, 0.25, 1.0, 0.5, 0.25, -0.25, -0.75, 0.25, -0.5, 0.25, -0.5, 0.0, -0.5, -0.75, 0.75, 0.25, 0.0, -1.0, -0.75, -0.75, -0.25, -0.25, 1.0, 1.0, -0.75, 0.5, -0.5, 0.75, 1.0, 1.0, -0.75, -1.0, -0.25, 0.0, -0.75, -0.25, -1.0, 0.25, -0.5, -0.5, 1.0, 0.75, -0.25, 1.0, -0.75, 0.75, -0.75, 0.0, 0.25, 1.0, 0.75, 0.25, 0.75, 0.0, 1.0, 0.5, -1.0, -1.0, 0.25, 0.0, -0.5, -1.0, -0.5, 0.5, 0.75, 0.75, 0.75, 0.0, -1.0, 0.0, 0.75, 0.0, 1.0, 0.25, 0.5, 0.5, 1.0, -0.75, -0.75, -0.25, -1.0, -0.25, 1.0, -0.25, -0.25, 0.25, 0.5, 1.0, -0.5, 0.0, -0.5, 0.75, -0.25, 0.75, -0.75, -0.5, 0.0, -1.0, ]);
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const array8 = new Float32Array([0.5, 0.0, -1.0, 0.5, 0.25, 0.75, -0.75, 1.0, -0.5, 0.25, -0.25, 0.75, 0.5, 0.5, 0.0, 1.0, 0.25, -0.25, -1.0, 0.5, 0.25, -0.75, 0.5, 1.0, 0.25, 0.5, -1.0, 0.0, -0.25, 0.25, 0.25, -0.25, -1.0, -1.0, -1.0, -0.25, -1.0, 0.75, 1.0, 0.5, 0.75, 0.0, 0.5, 0.25, 1.0, -0.25, 0.25, 0.5, 0.25, 0.25, -1.0, 0.0, 1.0, -1.0, 0.75, 0.0, 0.75, 1.0, -0.5, -0.5, -0.25, -0.25, 0.5, -0.75, 0.25, 0.25, -0.5, 1.0, 0.25, 0.75, -1.0, 0.5, 1.0, 0.5, -0.5, 1.0, -0.75, -0.25, -0.5, -0.25, -0.5, 0.0, -1.0, -0.75, 1.0, 0.0, 0.5, 0.0, -1.0, -0.25, -1.0, 0.75, -0.25, -0.5, 0.5, 1.0, -1.0, 0.0, 0.0, -1.0, ]);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const array9 = new Float32Array([0.25, -0.5, -0.75, 0.25, -0.25, -0.75, -1.0, -0.5, 0.25, 0.5, -0.75, 1.0, 0.0, -0.25, -0.75, -0.5, 1.0, -0.25, -0.75, 0.0, 0.25, 0.5, 1.0, 0.25, -1.0, -0.5, -0.75, -1.0, 0.5, 1.0, 0.0, 0.75, -0.25, 0.25, 0.0, 0.75, -0.5, -0.75, -0.25, 0.0, 0.5, 1.0, -0.5, -0.25, -0.5, -0.25, 0.75, 0.5, -0.5, 0.25, -0.75, 1.0, -0.25, 0.75, 0.0, 0.5, -1.0, -0.75, 0.25, 1.0, 1.0, 0.75, -1.0, 0.0, 0.75, -0.75, 0.25, 0.5, -1.0, 0.25, 0.0, 0.5, 0.25, -0.75, 0.75, 0.25, -1.0, -1.0, -1.0, 1.0, 0.5, -0.5, 0.5, -0.5, 1.0, 0.5, -1.0, 0.75, 1.0, 0.0, -0.5, -0.5, 0.5, -0.5, 0.0, 0.75, -1.0, 0.75, 1.0, 0.0, ]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    const sampler504 = device50.createSampler( { label: "sampler504" } );
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
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
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
    
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
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
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    device50.destroy();
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    
    
    
    
    
    query600.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    query600.destroy()
    query600.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    
    query600.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    
    
    
    
    query601.destroy()
    query600.destroy()
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.queue.writeBuffer(buffer604, 0, array4, 0, array4.length);
    
    
    device60.queue.writeBuffer(buffer604, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer604, 0, array9, 0, array9.length);
    device60.queue.writeBuffer(buffer604, 0, array2, 0, array2.length);
    query601.destroy()
    device60.queue.writeBuffer(buffer604, 0, array5, 0, array5.length);
    
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer604, 0, array3, 0, array3.length);
    
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    const array10 = new Float32Array([0.75, 0.25, -0.5, 1.0, 0.0, -0.75, 0.75, -0.75, 1.0, -0.5, 0.0, -0.75, 0.75, 0.25, 1.0, -1.0, -1.0, 0.0, 1.0, -1.0, 0.75, -1.0, 0.75, 0.75, -0.5, -1.0, 0.75, 0.0, 0.0, 0.25, 1.0, -0.75, 0.75, -0.5, -0.5, 1.0, -0.25, 0.75, -0.25, -0.25, 0.0, -0.5, -0.25, -0.75, 0.0, -0.5, -0.25, -1.0, -0.25, 0.0, 0.75, -0.5, -0.25, 0.75, -1.0, 0.0, -0.75, 0.0, -0.5, 0.25, 0.75, 0.25, -0.25, 1.0, -0.5, 0.5, -0.75, 0.0, 0.25, -0.5, 0.75, -0.5, 1.0, 1.0, 0.25, 0.0, -0.75, 0.75, 0.5, 0.0, 0.75, -0.75, 0.25, 0.25, 1.0, 1.0, -0.75, -0.75, 0.75, 0.0, -1.0, -1.0, -0.5, 0.0, 0.5, 0.75, -0.25, 0.75, 1.0, -0.5, ]);
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    device60.queue.writeBuffer(buffer604, 0, array2, 0, array2.length);
    
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    device60.queue.writeBuffer(buffer604, 0, array7, 0, array7.length);
    device60.queue.writeBuffer(buffer604, 0, array0, 0, array0.length);
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    device60.queue.writeBuffer(buffer604, 0, array2, 0, array2.length);
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    
    device60.queue.writeBuffer(buffer604, 0, array5, 0, array5.length);
    query600.destroy()
    
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    render_bundle_encoder600.setPipeline(render_pipeline601);
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module608.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    device60.queue.writeBuffer(buffer604, 0, array0, 0, array0.length);
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    const array11 = new Float32Array([-0.75, 0.0, 0.25, -0.5, -0.5, 0.0, 0.75, 0.25, -1.0, 0.0, 0.5, 0.25, 0.5, -1.0, 0.5, 0.25, 0.5, 1.0, -1.0, -0.75, 0.5, -0.5, -0.5, 0.25, -0.5, 0.25, -0.5, -0.75, -0.25, 0.25, 0.0, -0.25, 0.0, 0.5, -0.75, -0.5, 0.75, -0.75, 0.25, -0.25, -0.5, 1.0, -1.0, -1.0, 0.75, -0.75, 1.0, 0.25, 0.25, 0.0, 0.0, -0.5, -0.75, 0.75, -0.75, -1.0, -0.5, -1.0, -0.75, 0.25, -1.0, -0.25, 1.0, 0.5, -1.0, 0.75, 1.0, 0.25, 0.0, -0.5, -0.75, 1.0, -0.75, 0.75, 0.75, 0.25, -0.25, -0.25, 0.25, 0.75, -0.25, 0.5, 0.0, -1.0, -0.75, -1.0, 0.5, 0.5, 1.0, 0.0, 0.25, -0.75, 0.25, 1.0, -0.25, 1.0, 0.5, 0.75, 0.75, 0.0, ]);
    device60.queue.writeBuffer(buffer604, 0, array1, 0, array1.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    device60.destroy();
    
    const array12 = new Float32Array([-1.0, -1.0, -1.0, -0.5, 0.75, 0.5, 0.25, -1.0, -0.75, 1.0, 0.25, -0.75, -0.25, 0.5, -1.0, -0.75, -1.0, -0.5, 0.25, -0.75, 0.5, 0.0, -0.5, -0.75, -0.75, 0.25, -1.0, 1.0, -1.0, 0.75, 0.5, -0.75, -0.75, 0.5, 1.0, -1.0, -1.0, -0.5, -0.75, -0.75, -1.0, 0.5, 0.0, 0.5, 0.25, -0.25, 0.25, 1.0, -1.0, -1.0, -0.5, -0.5, -0.25, -0.75, 0.5, 0.25, 1.0, -0.5, -1.0, 0.25, 0.0, -0.25, -1.0, -0.75, -0.25, 0.5, 0.0, -0.75, -0.25, 0.5, 0.25, 0.0, 0.25, 0.25, 0.25, -1.0, -0.5, 0.0, -0.5, 0.75, 0.75, 0.75, 1.0, -0.5, 0.5, 1.0, 0.0, 1.0, 0.75, 0.5, -0.25, 0.75, 1.0, -0.5, 1.0, 0.75, 0.5, 0.25, 0.25, -0.25, ]);
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    const array13 = new Float32Array([1.0, -0.25, 0.25, 0.75, -0.75, 1.0, -0.75, -0.5, -1.0, 0.0, -0.5, 0.0, 0.5, 0.5, -0.75, -0.5, -0.25, 0.75, 0.0, 1.0, 1.0, -1.0, -0.75, 1.0, 0.25, 0.5, 0.0, -0.5, -1.0, -0.25, -0.25, 1.0, 1.0, -0.25, 1.0, 0.5, 0.0, 0.25, -1.0, 0.0, 1.0, 1.0, -1.0, -1.0, 0.25, 0.25, 1.0, 0.25, -0.75, -1.0, 0.25, -0.5, 0.5, -0.5, -0.75, 1.0, 0.75, 0.25, -0.5, -0.25, 0.0, -0.75, 1.0, 0.0, -0.75, -1.0, -1.0, 0.75, 0.25, -0.25, -0.75, -0.25, 0.25, 1.0, 0.5, 1.0, -0.5, 0.0, 0.0, 1.0, 0.0, 1.0, -1.0, 0.25, -0.25, 0.5, -0.75, 0.25, -0.75, 0.25, -1.0, 0.75, 0.5, 1.0, 0.5, -1.0, -0.75, 0.25, -0.75, -0.5, ]);
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const array14 = new Float32Array([-0.5, -0.25, 0.5, -0.75, -1.0, -0.75, -1.0, 1.0, 0.75, 1.0, 0.5, 0.25, -0.75, 0.5, 0.75, 0.0, 1.0, -1.0, 0.75, -0.75, 0.0, 0.5, -0.75, -0.25, -0.25, 1.0, 0.25, -0.25, -0.5, 0.5, 1.0, -1.0, -0.5, -0.5, -0.25, 0.0, 0.0, 1.0, -1.0, -0.5, 1.0, 1.0, -0.5, -0.5, -0.5, -0.75, 1.0, 0.75, 1.0, 0.25, -1.0, 0.25, 0.75, 0.25, -0.25, 1.0, -0.5, 0.75, 1.0, -1.0, -0.25, -1.0, 0.25, 1.0, 0.0, 0.0, 0.5, -0.75, -0.75, 0.5, -0.25, -0.75, -0.5, 0.75, -0.75, -0.75, -0.75, -1.0, -0.5, 0.75, 0.75, 0.75, 0.75, 0.25, 0.5, -1.0, 0.5, 0.75, 0.5, 0.25, 0.0, 0.75, 0.0, 0.75, -0.25, -0.75, -0.25, -1.0, 0.75, 0.0, ]);
    
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder700.popDebugGroup();
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    const array15 = new Float32Array([-1.0, 0.25, 0.0, -1.0, -0.75, 0.5, -0.25, -0.25, 0.75, 0.0, 0.0, -0.5, 1.0, -1.0, -1.0, -0.75, 0.75, -0.75, -1.0, 1.0, 0.5, -1.0, -1.0, 0.0, 1.0, 0.25, 0.0, 0.75, -0.75, -1.0, -0.25, -0.25, 0.75, 0.75, 0.75, -0.25, -0.25, -0.75, 1.0, 0.0, -1.0, 0.0, -0.25, -0.75, -0.75, 0.0, 0.75, -0.25, -0.25, 0.0, 0.75, 0.0, 0.75, -0.25, 0.75, 0.0, 0.0, 1.0, -0.5, 0.75, -1.0, 0.5, 1.0, -0.75, -0.75, -0.5, -0.75, 0.25, 1.0, -0.25, -0.5, 0.75, 1.0, 1.0, 1.0, 0.75, -0.75, 0.25, 0.75, 0.75, -1.0, 0.75, 0.0, -0.25, -0.25, -0.25, -1.0, 1.0, -0.5, 0.0, 0.25, -1.0, 0.25, -1.0, 1.0, 1.0, -0.5, 0.5, -0.25, 0.75, ]);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    
    
    const array16 = new Float32Array([-0.25, -1.0, -0.75, 0.75, 0.5, 1.0, 0.75, 1.0, -0.5, -0.5, 1.0, 0.75, 0.5, -0.25, -0.75, 0.75, -0.25, -0.5, -0.25, 0.0, 1.0, 0.5, 1.0, -1.0, -0.75, -1.0, -0.5, 0.0, -0.75, 0.0, -1.0, 0.5, -0.25, 1.0, 0.0, -1.0, 0.25, 0.75, -0.75, 1.0, 1.0, -1.0, 0.5, -0.5, 0.0, -0.5, -1.0, -0.5, 0.5, 0.75, -0.25, -0.75, -0.75, 0.5, 0.25, -0.5, -0.75, -1.0, 0.75, 1.0, -1.0, 0.75, 0.75, -0.75, 0.5, 0.25, -0.75, 1.0, 0.5, 0.25, 0.5, 0.0, -1.0, 1.0, 0.0, 0.5, -0.5, -0.75, 0.25, 0.0, 1.0, 0.0, 0.5, 0.5, 0.5, -0.75, -0.5, -0.75, -0.75, 0.25, -0.5, 0.0, -0.5, 0.5, 0.5, 0.25, 0.0, 1.0, -0.25, 0.75, ]);
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
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
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    render_bundle_encoder700.popDebugGroup();
    const texture_view7003 = texture700.createView({ label: "texture_view7003" });
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
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    query704.destroy()
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder700.setPipeline(render_pipeline700);
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    
    
    
    query700.destroy()
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    query705.destroy()
    query700.destroy()
    
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.destroy();
    const array17 = new Float32Array([0.75, 1.0, 0.0, 1.0, 0.5, -1.0, 0.0, 1.0, 0.75, 0.5, 0.0, -0.5, 0.25, 0.0, -1.0, 0.75, -0.75, -0.25, -0.25, 0.75, -0.5, -0.5, 0.5, -0.5, -1.0, 0.75, -0.25, 0.0, 0.75, -0.25, 0.0, 1.0, -0.25, 0.0, -0.25, -0.75, 0.75, -0.25, -0.75, 0.5, 0.75, -0.75, 0.75, 0.0, 1.0, 1.0, 0.5, -0.5, 0.5, -0.75, 1.0, 0.5, -0.75, 0.0, -0.75, 0.0, 0.75, -0.5, -0.25, -0.75, 0.0, -1.0, -0.75, -0.5, 0.0, 0.5, -1.0, -0.75, -0.5, 1.0, 0.25, -0.5, -0.75, 0.25, -0.25, -0.5, -1.0, -0.5, -0.75, 0.5, 0.25, 0.75, 0.25, 1.0, -1.0, -0.75, -0.25, 1.0, 0.75, -0.75, 0.75, 0.75, -0.5, 0.75, 0.5, -1.0, -0.5, 1.0, -0.25, 0.25, ]);
    const array18 = new Float32Array([0.25, 0.0, 0.75, 0.75, 0.75, 0.5, -0.5, -0.5, -0.5, -1.0, 0.75, 0.25, 0.75, 0.75, 0.75, 0.0, -0.75, 0.25, 1.0, -0.75, 0.25, 1.0, -0.5, 0.75, 0.75, -0.75, -0.75, 0.0, -0.25, 0.0, 0.75, -1.0, 0.75, 1.0, -1.0, -0.75, 0.75, -0.75, 0.25, 0.0, -1.0, -0.75, -1.0, 0.5, -0.75, -0.25, -0.5, 0.75, 0.5, -0.5, -0.75, -0.25, 0.75, -0.5, 1.0, -0.5, 0.0, 0.25, 0.0, 0.0, -0.75, -0.25, 0.0, 0.25, -1.0, -0.5, 0.25, 0.25, 0.0, 0.5, -0.25, 0.25, -0.5, 0.0, 1.0, 0.75, -0.5, -1.0, 1.0, 0.5, -1.0, -0.5, -0.75, 1.0, 0.5, 1.0, -0.5, -0.25, -0.5, -0.5, -0.25, 1.0, 0.25, 0.75, -0.75, -0.25, -0.75, 0.25, 0.25, -0.5, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    
    device80.destroy();
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    
    
    device100.destroy();
    
    
    const array19 = new Float32Array([0.75, 0.5, 0.25, 1.0, 0.25, -1.0, -0.25, 1.0, -0.5, -1.0, -1.0, -0.25, -0.25, 0.75, -1.0, -1.0, 0.5, -1.0, 0.0, 1.0, 0.5, -0.25, -0.75, 0.5, 0.0, 0.0, 1.0, -0.75, 0.5, 0.75, 0.5, 0.5, -1.0, 0.75, -0.5, -0.25, -0.75, -0.75, 0.0, -0.5, 0.5, 0.25, -0.75, 0.5, 0.75, 0.25, -0.5, 0.0, -0.5, 0.5, -1.0, 0.75, -0.75, 1.0, 0.5, -0.25, 0.5, 0.5, -0.75, 1.0, 0.5, -0.75, -0.25, -0.5, 0.75, -0.75, 0.75, 0.0, 0.5, -1.0, 0.5, 1.0, -0.25, 0.75, -0.75, 0.5, -1.0, -0.5, 1.0, 0.0, -0.75, 0.75, 1.0, -0.75, -0.25, 0.5, 1.0, -0.5, -0.5, 0.25, 0.25, 0.0, 0.75, -0.5, 0.5, 0.5, 0.25, -1.0, -0.5, 0.75, ]);
    
    
    
    
    
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const array20 = new Float32Array([-1.0, 0.5, 0.75, 0.75, -1.0, 0.5, 0.0, 0.0, -0.5, 0.25, 0.5, 0.0, -0.75, 0.25, -0.25, 0.0, 0.5, -1.0, 0.25, 1.0, 0.0, 0.25, -0.25, 0.5, 0.5, 0.5, 0.5, 0.75, 1.0, -0.5, 0.25, 0.0, 1.0, -0.25, 0.5, -0.25, -1.0, -0.5, -0.5, -0.25, 1.0, -1.0, 0.5, -0.75, -0.5, -0.75, -1.0, 0.0, -0.75, -1.0, -0.5, 0.5, 1.0, -0.25, 0.0, 0.25, 0.5, 1.0, 0.75, 1.0, 0.5, -0.5, 0.25, -0.75, 0.75, -0.75, 0.0, -0.5, -0.25, 0.25, -0.25, 0.75, -1.0, 1.0, 0.25, 0.25, -0.5, 0.0, -0.75, -0.5, -0.25, 0.25, 1.0, 1.0, -0.75, -1.0, 0.25, 0.5, -1.0, -0.5, 0.0, -0.5, 0.75, -0.5, 0.5, 0.75, 0.0, -1.0, -0.75, -0.5, ]);
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    
    
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    query901.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
}