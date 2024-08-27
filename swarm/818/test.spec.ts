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
    const array0 = new Float32Array([0.75, -1.0, -0.25, 0.25, 1.0, 0.25, -0.75, -0.5, -0.75, 0.75, 0.75, 1.0, 0.5, 1.0, 1.0, -0.5, 0.25, -1.0, -1.0, -0.25, -1.0, 1.0, -0.75, -1.0, -0.25, -1.0, 0.5, -0.25, 0.0, -1.0, -0.25, 0.75, 0.0, 0.0, 0.75, -0.5, 0.25, -0.5, -0.25, 0.75, 0.75, 1.0, 0.5, -1.0, 0.25, 0.5, -0.5, -1.0, 1.0, -1.0, -0.5, -0.75, 1.0, 0.0, 0.0, 0.25, 0.25, -0.75, -0.5, 0.25, 0.5, 0.25, 1.0, 0.75, 0.5, 0.25, -0.75, -1.0, 1.0, -0.5, 0.75, -1.0, 0.5, 0.75, -0.75, 1.0, 0.25, 1.0, 0.0, -0.25, 0.75, 0.25, -0.75, 0.25, -1.0, -0.75, -1.0, 0.75, -1.0, -0.25, -1.0, -0.5, 0.5, 0.75, 0.0, 0.25, -1.0, 0.0, -0.5, 1.0, ]);
    const array1 = new Float32Array([1.0, 1.0, -0.5, -0.25, 0.0, -0.25, -1.0, -0.75, 0.75, 1.0, -0.25, -0.75, -0.25, 0.75, 0.0, 0.25, -0.5, 0.0, 0.5, 0.25, -0.5, 0.75, 0.5, 0.75, 0.25, 0.5, -1.0, 0.5, -0.75, 1.0, -1.0, 0.75, 0.75, -1.0, 0.0, 1.0, -0.5, 0.25, 1.0, 0.5, 0.0, 0.25, 1.0, 1.0, -1.0, 0.0, 1.0, 0.75, 0.0, -1.0, 0.5, -0.25, -0.75, -0.75, 1.0, 0.5, 0.0, -0.25, 1.0, -1.0, 0.5, 1.0, 1.0, -0.5, -0.75, 0.5, 0.5, 0.75, -0.75, -0.25, -0.25, 1.0, 0.25, 0.25, -0.5, 1.0, -0.75, 0.0, 0.25, 0.25, 0.0, 0.5, 0.25, -0.75, -0.25, 0.0, -0.75, 0.5, -1.0, 0.5, -0.5, 1.0, 0.25, -0.75, -1.0, -0.25, 0.75, -0.75, -0.5, 0.5, ]);
    
    
    const array2 = new Float32Array([0.5, 0.75, 0.25, 1.0, -0.25, -0.25, 1.0, 1.0, 0.75, 0.0, -0.75, -1.0, 0.25, 0.25, 0.25, -0.75, 0.75, -0.5, 0.75, 0.75, 0.25, 0.5, -1.0, 0.0, -0.25, 0.25, 0.0, 0.25, -0.75, 0.0, -1.0, 1.0, -0.5, 1.0, -0.75, 0.5, 1.0, 0.25, 0.0, -0.25, 0.0, -0.25, 0.75, 0.25, 0.0, -1.0, -1.0, 0.5, -0.75, -1.0, -0.5, 0.0, 0.75, -1.0, -1.0, -0.5, 0.0, 0.5, 0.5, 0.25, 0.0, -1.0, 0.5, -1.0, -0.5, 0.0, 0.5, -0.75, 1.0, -0.75, -0.75, -0.25, -1.0, -0.25, -0.25, -0.75, -1.0, 0.25, -1.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0, 0.25, -0.75, -0.5, 0.25, 0.75, -0.5, -0.75, 0.25, 0.75, 0.25, 0.0, 0.25, 0.5, 0.0, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
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
    const array3 = new Float32Array([-1.0, 1.0, -0.75, -0.75, 0.25, -0.25, 0.0, -1.0, -0.25, 0.0, -0.75, 0.5, -0.5, 0.5, 0.75, 1.0, 0.5, 0.75, 0.0, -0.25, 0.25, -0.5, 0.5, -1.0, 0.25, 0.75, 0.5, 0.5, 1.0, -0.25, 0.25, 0.5, -0.5, -0.75, 0.5, -1.0, 0.5, 0.75, 0.5, 0.5, 0.25, -0.5, 0.0, 0.25, -0.75, 1.0, 1.0, 0.0, -1.0, 0.25, 0.5, 0.0, 0.75, 0.0, 0.0, -0.5, 0.0, 0.5, 1.0, 0.5, 1.0, -0.75, 1.0, 0.75, -1.0, 1.0, -0.5, -1.0, -1.0, -1.0, 0.75, -0.75, -1.0, -0.5, 0.5, 0.5, 0.0, -1.0, -0.25, 0.75, 0.0, -1.0, 0.25, -0.5, 0.0, 1.0, -0.25, -0.5, 0.25, -0.5, -0.5, 0.25, -1.0, 1.0, -0.25, 1.0, -0.25, -0.25, -0.5, -0.75, ]);
    query001.destroy()
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array4 = new Float32Array([0.5, -0.5, -0.5, 0.25, 0.5, -0.75, -1.0, 0.0, 0.5, 0.5, -0.25, -1.0, 0.75, 0.5, -0.5, 0.75, -1.0, 0.25, -0.5, 0.5, 1.0, -0.25, 0.25, 0.0, 1.0, 0.25, 1.0, 0.0, 0.5, 0.5, -0.25, 0.0, 1.0, 0.25, 0.75, 0.0, -0.25, 0.25, 0.75, 0.5, 0.75, -0.75, 0.5, 0.5, -1.0, -0.5, -0.75, 0.25, 0.5, -1.0, -1.0, 0.25, -0.75, -0.25, 0.75, 0.25, -0.25, -0.75, -0.25, 0.25, -0.5, -0.75, -0.25, 0.75, 0.75, 0.25, 1.0, 0.5, -0.25, -1.0, 0.5, 1.0, -1.0, 0.0, -0.75, 0.5, 0.5, -1.0, 0.5, -0.5, 0.25, -1.0, 0.0, 0.0, 0.75, -0.25, -1.0, -1.0, -1.0, 0.75, -0.25, -0.75, -0.5, -0.5, -1.0, -0.75, 0.0, 0.0, -1.0, -0.25, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    device10.destroy();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder000.setPipeline(render_pipeline008);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device00.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query201.destroy()
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([0.25, -0.25, 0.5, -0.75, -0.25, -0.75, 0.0, 0.0, -0.25, 0.0, 0.5, -0.75, 0.75, 0.5, 0.5, -0.5, 0.75, -0.5, 1.0, 0.0, 1.0, -0.75, -0.5, -0.5, -0.5, -1.0, 0.0, -1.0, 0.0, 0.5, 1.0, 0.5, -0.25, 0.25, 0.75, -0.5, -1.0, -0.5, -1.0, 1.0, -0.25, 1.0, 0.0, 1.0, 1.0, -1.0, 0.25, -0.25, 0.25, -0.25, 0.75, 0.5, 0.25, 0.25, -0.5, 0.25, 1.0, 0.25, 0.75, 0.0, -0.75, -0.5, 0.75, 0.0, -0.75, 0.0, -1.0, -1.0, 0.75, 1.0, 0.5, 0.5, -0.75, 0.5, 0.25, -1.0, -0.5, -0.25, 0.25, -1.0, 0.0, 0.75, 0.25, -0.25, -0.5, 0.25, -0.75, -0.5, -0.5, 0.25, -0.5, -1.0, -0.5, -0.25, -0.5, 0.0, 1.0, 0.25, -0.25, 0.25, ]);
    device20.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    device40.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    device50.destroy();
    
    
    
    
    const array6 = new Float32Array([0.0, 0.25, -0.75, -0.5, 0.5, 0.25, -1.0, 0.75, -0.25, 0.5, -1.0, -0.5, 0.25, 0.0, 0.5, 0.25, 0.25, 0.25, 0.0, 0.75, 0.75, 1.0, 0.5, 0.5, 0.25, -0.5, 0.5, -0.75, 1.0, 0.75, 0.5, 0.5, 0.25, -0.25, -0.75, 0.75, 0.25, 0.5, 0.0, 1.0, -0.75, -0.5, 0.75, -1.0, 1.0, -1.0, 1.0, 0.25, 1.0, 1.0, 1.0, -1.0, -1.0, -0.75, -1.0, -0.5, -0.5, 0.0, 0.5, 0.5, -0.75, -0.5, 0.25, -0.75, 0.75, -0.25, 0.25, -1.0, -0.25, -0.25, 0.0, 1.0, -0.75, 0.0, -1.0, 0.75, -0.25, 0.75, 1.0, -1.0, -0.75, -1.0, -0.75, -0.75, 0.75, 1.0, 0.25, 0.0, -0.75, 0.25, 1.0, -0.75, 1.0, 1.0, 0.75, 0.0, -1.0, -0.25, -0.75, 0.0, ]);
    
    
    
    const array7 = new Float32Array([0.25, 0.25, 0.75, -0.25, 0.5, 0.25, -1.0, -0.5, 0.25, 0.75, -1.0, -1.0, 0.0, 0.5, 0.25, -0.75, -0.75, -1.0, 0.5, -0.25, 0.5, 0.75, 0.5, 0.5, -0.75, 1.0, 1.0, -0.5, -0.5, 0.5, 1.0, 0.0, -0.25, -0.25, -0.75, 1.0, -0.75, 0.25, -1.0, 0.25, 1.0, 0.75, 1.0, 1.0, 0.5, -0.25, -0.5, 0.75, -0.5, 0.75, 1.0, 0.75, 0.5, -0.25, 0.0, 0.5, -0.25, 1.0, 0.0, 1.0, 0.0, 0.25, 0.25, 0.0, -0.25, 1.0, 0.75, 0.0, 0.5, 0.75, 0.5, 0.75, -1.0, -0.5, -0.5, 0.0, 1.0, 0.0, -0.25, 0.75, 0.25, -0.25, 0.5, 0.75, 0.0, 0.0, -0.25, -0.75, -1.0, -0.75, 0.25, 0.5, -0.5, 0.75, 0.5, -0.5, 0.5, 0.75, 0.75, 0.5, ]);
    
    
    const array8 = new Float32Array([0.0, 0.25, 0.25, -0.5, 0.75, -1.0, 1.0, 0.0, 0.75, 0.5, -0.25, -0.25, 0.75, -1.0, 0.5, 1.0, 0.25, -0.75, -0.75, -0.25, 0.5, 0.75, 0.5, 0.25, -0.25, 0.25, 0.0, 0.5, -1.0, 0.5, -1.0, -1.0, 0.25, -0.25, 0.75, -1.0, 0.75, 0.75, 1.0, -1.0, 0.25, 0.25, 0.75, 1.0, -0.5, 1.0, 0.0, -0.25, 0.0, 0.0, -0.5, 1.0, -0.75, -1.0, -1.0, 0.0, 0.75, -0.25, 0.25, 0.0, -1.0, -0.75, 0.25, 0.75, 1.0, 1.0, -1.0, -0.25, -1.0, 1.0, 0.75, 0.25, 1.0, 0.75, 0.75, -0.5, 0.25, -1.0, 0.25, 0.25, 0.0, 0.75, 0.5, 0.75, -0.25, -1.0, -1.0, -0.5, -1.0, 0.25, 1.0, 1.0, -0.75, 1.0, -0.25, -0.5, 0.5, 1.0, 0.25, -0.25, ]);
    
    
    
    
    
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
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
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    device70.destroy();
    render_bundle_encoder600.popDebugGroup();
    device60.pushErrorScope("validation");
    
    
    
    
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    buffer600.destroy()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    buffer601.destroy()
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device60.destroy();
    
    
    
    
    
    
    
    
    const array9 = new Float32Array([0.0, -0.75, 0.25, -1.0, -0.25, -1.0, 0.5, 0.0, 0.75, 0.0, -0.5, -1.0, 0.75, -0.5, 0.0, 1.0, 0.5, 0.75, -0.25, 0.75, 1.0, -0.25, -0.75, 0.5, -1.0, -1.0, 0.0, 0.0, -0.5, -0.5, -1.0, 0.25, 0.0, -0.5, -0.75, -0.25, -0.25, 0.25, 0.0, 0.5, 0.0, 0.0, -0.75, 0.75, -0.5, 0.0, 0.5, 0.5, 1.0, 0.75, 0.5, 0.75, 0.0, -0.75, 0.5, 0.25, -0.5, 0.25, -0.5, 0.75, 0.5, 0.25, -1.0, -0.5, -1.0, -0.5, 0.25, -0.25, 0.75, 0.75, -0.75, 0.0, -0.75, -0.5, -0.25, 0.75, -1.0, -0.75, 0.0, 1.0, -1.0, -1.0, 1.0, 0.75, -0.75, 0.75, 0.75, 0.0, 0.0, -0.25, 0.5, -0.75, 0.5, -0.75, 0.0, -0.5, -1.0, 1.0, 0.25, 0.0, ]);
    
    
    
    const array10 = new Float32Array([-0.25, 0.5, -1.0, 1.0, 0.25, -0.75, 1.0, 0.5, 1.0, -1.0, -1.0, 0.75, -0.25, 0.75, 0.0, 1.0, -1.0, 1.0, 0.25, 0.0, 0.25, -1.0, 0.0, -0.5, 0.75, -1.0, -1.0, -0.25, -0.75, 0.0, -0.25, -0.75, 0.25, -0.25, -0.75, 0.75, -0.75, 0.75, 0.75, 0.25, -0.75, 0.5, -0.25, -1.0, 0.5, 0.75, 0.0, -1.0, 0.5, -0.5, -0.25, -0.75, 0.0, 0.25, 0.25, 1.0, 0.75, 0.25, -0.5, 0.25, 1.0, 1.0, 1.0, 0.75, -0.75, -0.5, 0.75, -0.5, 1.0, -0.75, 0.5, 0.0, 0.25, -0.75, -0.5, 0.25, -0.25, 0.75, -0.5, 0.75, 0.5, 0.0, 1.0, 1.0, -0.5, 1.0, -0.5, -0.25, 0.25, 1.0, 0.25, 0.0, -0.25, 0.5, 0.25, -1.0, -0.5, 0.0, 0.0, -0.25, ]);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device80.destroy();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device90.destroy();
    
    
    
    
    device100.destroy();
    
    
    
    
    
    
    const array11 = new Float32Array([0.5, 0.25, -1.0, 0.75, 0.0, 0.0, 0.25, 0.25, 1.0, -1.0, -0.5, -0.75, 0.25, -0.5, 0.75, 0.5, 0.75, -1.0, 0.5, -0.75, 0.0, 1.0, 1.0, -0.75, -1.0, -0.25, -1.0, 0.75, 0.25, -0.25, 0.75, -0.25, 0.75, 0.5, -0.25, -0.5, -0.25, 0.5, -0.75, 1.0, 0.75, 1.0, -1.0, -0.25, -0.75, -0.5, 0.0, 0.0, -0.5, -0.5, 0.75, -1.0, -0.25, -0.75, -0.25, 1.0, 0.5, 1.0, -0.5, 0.5, 0.25, 0.25, 0.75, 0.75, 0.5, 1.0, 1.0, 0.0, 0.5, -1.0, 0.0, -0.75, 0.5, 1.0, 0.25, 0.75, -0.5, -1.0, 1.0, 0.0, 0.0, -0.25, 0.5, -0.5, 1.0, 0.75, -1.0, -0.5, 0.75, -0.25, 1.0, 0.0, -0.5, 1.0, -0.75, -0.5, 0.5, -0.75, 0.5, 1.0, ]);
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array12 = new Float32Array([0.25, -0.5, -0.5, 0.0, 1.0, -0.25, -0.25, 0.25, -0.5, -0.5, -0.75, -0.5, -1.0, 0.0, 0.75, -0.5, -0.75, 0.25, -0.25, 1.0, -0.75, 1.0, -0.25, -0.75, -0.5, 0.25, -0.25, 0.5, 0.0, -0.5, -0.5, -0.25, 0.5, 1.0, 0.5, -0.5, -0.75, -0.25, -0.25, 0.75, 1.0, -1.0, 0.25, -0.75, -0.75, -0.5, -0.75, 0.0, 1.0, 0.5, 1.0, 0.25, -0.75, 0.5, 0.5, 1.0, 0.25, 0.5, 0.25, 0.0, -0.5, -0.25, -0.75, 0.25, 0.0, 0.5, -0.5, -1.0, -0.75, -0.5, 0.25, 0.0, 0.25, -0.25, 0.5, 1.0, -0.25, 0.25, 0.75, -0.5, 0.0, -1.0, -0.75, -0.25, 0.0, 1.0, -0.5, -0.25, 0.25, 1.0, 0.0, 0.75, 0.75, 1.0, -0.5, 1.0, 0.75, 0.25, -0.5, -1.0, ]);
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    
    
    
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    device120.pushErrorScope("validation");
    
    
    
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device110.destroy();
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1200,
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
            module: shader_module1200,
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
    
    
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    
    const render_pipeline1201 = device120.createRenderPipeline({
        label: "render_pipeline1201",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query1200.destroy()
    
    
    
    query1200.destroy()
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    
    
    
    
    const render_pipeline1202 = device120.createRenderPipeline({
        label: "render_pipeline1202",
        vertex: {
            module: shader_module1201,
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
            module: shader_module1201,
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
    const render_pipeline1203 = device120.createRenderPipeline({
        label: "render_pipeline1203",
        vertex: {
            module: shader_module1201,
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
            module: shader_module1201,
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
    
    
    device120.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device130.queue.writeBuffer(buffer1301, 0, array9, 0, array9.length);
    
    device130.queue.writeBuffer(buffer1301, 0, array4, 0, array4.length);
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
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
    const array13 = new Float32Array([-1.0, -0.5, 0.75, -0.25, 0.5, 0.25, 1.0, -0.5, -0.5, -0.75, 0.0, -0.5, 0.75, -0.5, -0.5, -0.25, -0.5, -0.75, 0.5, 0.25, 0.0, -0.25, 1.0, -0.25, -1.0, -0.75, -0.5, 0.75, -0.75, 0.0, -0.5, 0.25, 0.5, -0.25, 0.75, -1.0, -0.75, 0.25, -1.0, 0.0, 0.0, 0.0, -0.75, 1.0, -0.5, -0.75, 0.5, -0.5, 0.0, 1.0, -1.0, -0.5, 0.5, 0.75, -0.75, 1.0, -0.75, -1.0, 0.25, 1.0, 0.75, -0.75, -0.25, -1.0, -0.5, -1.0, -0.5, 0.5, 0.75, 0.5, -0.75, 0.5, 0.25, 0.25, 0.5, 1.0, 1.0, -0.5, -0.25, -0.75, -0.25, -1.0, -0.25, 1.0, 0.5, -0.25, 0.0, 0.75, -0.25, -0.5, 0.5, -0.5, -1.0, 0.5, 0.25, 0.5, -0.5, 0.0, -0.75, 0.0, ]);
    const array14 = new Float32Array([-0.75, 1.0, -1.0, -0.75, 0.75, 0.25, -1.0, -1.0, 0.0, 1.0, 0.25, 0.0, 0.75, -0.75, -0.75, 0.25, 0.75, 1.0, -0.25, 0.25, -0.75, 0.75, -0.25, 0.0, -0.75, 0.0, -1.0, 0.5, -0.25, 0.5, -0.25, -0.25, -1.0, -0.5, 0.25, 0.25, -0.75, 1.0, -0.75, -0.25, 0.25, 1.0, -1.0, -0.5, -1.0, 1.0, -0.75, 0.25, 1.0, 0.5, 0.25, 0.0, -0.5, 0.0, -0.25, 0.25, 0.0, -0.5, 0.25, 0.0, -1.0, 0.25, 0.5, -0.25, -0.5, 0.0, 0.25, 1.0, 0.25, -0.25, -0.5, 0.25, -0.5, 1.0, -1.0, 0.5, -0.5, 1.0, -0.5, -0.75, 0.0, -0.75, 0.5, 1.0, -0.5, -0.75, 1.0, 0.5, -0.5, 0.0, 0.0, -0.25, -0.25, 0.5, 0.75, 0.25, -0.25, 0.5, 0.75, 0.75, ]);
    device130.queue.writeBuffer(buffer1301, 0, array14, 0, array14.length);
    
    device130.queue.writeBuffer(buffer1301, 0, array0, 0, array0.length);
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    device130.pushErrorScope("out-of-memory");
    
    device140.destroy();
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    device130.queue.writeBuffer(buffer1301, 0, array1, 0, array1.length);
    
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    device130.queue.writeBuffer(buffer1301, 0, array0, 0, array0.length);
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1301]
    });
    query1300.destroy()
    
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    
    
    device130.queue.writeBuffer(buffer1301, 0, array14, 0, array14.length);
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    {
        await buffer1301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1301.unmap();
        console.log(new Float32Array(data));
    }
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const render_pipeline1300 = device130.createRenderPipeline({
        label: "render_pipeline1300",
        vertex: {
            module: shader_module1301,
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
            module: shader_module1301,
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
    
    
    const query1302 = device130.createQuerySet({
        label: "query1302",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1301 = device130.createPipelineLayout({ 
        label: "pipeline_layout1301",
        bindGroupLayouts: [bind_group_layout1300]
    });
    device130.queue.writeBuffer(buffer1301, 0, array13, 0, array13.length);
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    const pipeline_layout1600 = device160.createPipelineLayout({ 
        label: "pipeline_layout1600",
        bindGroupLayouts: [bind_group_layout1600]
    });
    device150.destroy();
    device130.queue.writeBuffer(buffer1301, 0, array12, 0, array12.length);
    query1302.destroy()
    query1301.destroy()
    device130.queue.writeBuffer(buffer1301, 0, array8, 0, array8.length);
    
    const render_pipeline1301 = device130.createRenderPipeline({
        label: "render_pipeline1301",
        vertex: {
            module: shader_module1302,
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
            module: shader_module1302,
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
    
    const bind_group_layout1302 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1302",
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
    device130.queue.writeBuffer(buffer1301, 0, array1, 0, array1.length);
    const pipeline_layout1302 = device130.createPipelineLayout({ 
        label: "pipeline_layout1302",
        bindGroupLayouts: [bind_group_layout1301]
    });
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    device130.queue.writeBuffer(buffer1301, 0, array5, 0, array5.length);
    device130.queue.writeBuffer(buffer1301, 0, array10, 0, array10.length);
    
    
    device130.queue.writeBuffer(buffer1301, 0, array5, 0, array5.length);
    
    device130.queue.writeBuffer(buffer1301, 0, array4, 0, array4.length);
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    buffer1301.destroy()
    const pipeline_layout1303 = device130.createPipelineLayout({ 
        label: "pipeline_layout1303",
        bindGroupLayouts: [bind_group_layout1301]
    });
    query1302.destroy()
    const query1601 = device160.createQuerySet({
        label: "query1601",
        type: "occlusion",
        count: 32,
    });
    
    const sampler1302 = device130.createSampler( { label: "sampler1302" } );
    
    
    
    
    buffer1300.destroy()
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    
    const sampler1303 = device130.createSampler( { label: "sampler1303" } );
    
    query1600.destroy()
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query1600.destroy()
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout1303 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1303",
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
    var shader_module1303_code = "";
    try {
        shader_module1303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1303 = await device130.createShaderModule({ label: "shader_module1303", code: shader_module1303_code })
    
    var shader_module1601_code = "";
    try {
        shader_module1601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1601 = await device160.createShaderModule({ label: "shader_module1601", code: shader_module1601_code })
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1601 = device160.createPipelineLayout({ 
        label: "pipeline_layout1601",
        bindGroupLayouts: [bind_group_layout1600]
    });
    
    
    query1301.destroy()
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler1601 = device160.createSampler( { label: "sampler1601" } );
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    query1600.destroy()
    const adapter20 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout1304 = device130.createPipelineLayout({ 
        label: "pipeline_layout1304",
        bindGroupLayouts: [bind_group_layout1300]
    });
    query1600.destroy()
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    var shader_module1900_code = "";
    try {
        shader_module1900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1900 = await device190.createShaderModule({ label: "shader_module1900", code: shader_module1900_code })
    const render_pipeline1302 = device130.createRenderPipeline({
        label: "render_pipeline1302",
        vertex: {
            module: shader_module1302,
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
            module: shader_module1302,
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
    
    
    device130.pushErrorScope("validation");
    const sampler1304 = device130.createSampler( { label: "sampler1304" } );
    const pipeline_layout1305 = device130.createPipelineLayout({ 
        label: "pipeline_layout1305",
        bindGroupLayouts: [bind_group_layout1302]
    });
    device190.pushErrorScope("internal");
    const render_pipeline1303 = device130.createRenderPipeline({
        label: "render_pipeline1303",
        vertex: {
            module: shader_module1301,
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
            module: shader_module1301,
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
    const pipeline_layout1306 = device130.createPipelineLayout({ 
        label: "pipeline_layout1306",
        bindGroupLayouts: [bind_group_layout1303]
    });
    const sampler1305 = device130.createSampler( { label: "sampler1305" } );
    var shader_module1602_code = "";
    try {
        shader_module1602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1602 = await device160.createShaderModule({ label: "shader_module1602", code: shader_module1602_code })
    const texture1800 = device180.createTexture({
        label: "texture1800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array15 = new Float32Array([-1.0, -0.25, -1.0, 0.5, 1.0, -1.0, 0.0, 0.5, -1.0, 0.75, 0.75, 0.25, 0.25, -1.0, 0.75, -0.5, 0.5, -1.0, -0.5, -0.75, 1.0, -0.5, 1.0, 0.75, -0.25, 0.5, 1.0, 1.0, 0.75, -0.75, -1.0, -1.0, -0.75, -0.5, 0.0, -1.0, 0.5, 0.0, -0.25, -1.0, 0.5, 0.5, 0.5, -0.75, 0.25, 0.75, 1.0, -1.0, -0.25, 0.0, 0.5, -0.5, 1.0, 1.0, 1.0, 0.75, -0.25, -0.25, -0.25, -0.75, -1.0, -1.0, 1.0, -0.75, -1.0, -0.5, 1.0, 0.0, -0.25, 0.75, 0.0, 0.0, -0.75, 0.5, -1.0, 0.0, 0.75, 0.5, 1.0, 0.25, 0.0, 0.0, 0.75, 1.0, 0.0, -1.0, 0.75, 0.5, -0.75, 1.0, -0.5, -0.25, 1.0, 0.25, -1.0, 0.25, -1.0, 0.0, 1.0, 0.0, ]);
    const render_bundle_encoder1601 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1307 = device130.createPipelineLayout({ 
        label: "pipeline_layout1307",
        bindGroupLayouts: [bind_group_layout1303]
    });
    
    render_bundle_encoder1300.setPipeline(render_pipeline1301);
    
    render_bundle_encoder1601.insertDebugMarker("marker");
    
    
    const query1303 = device130.createQuerySet({
        label: "query1303",
        type: "occlusion",
        count: 32,
    });
    const query1304 = device130.createQuerySet({
        label: "query1304",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1800 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1800",
        colorFormats: ["bgra8unorm"]
    });
    
    const bind_group_layout1800 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1800",
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
    
    
    const query1602 = device160.createQuerySet({
        label: "query1602",
        type: "occlusion",
        count: 32,
    });
    const sampler1306 = device130.createSampler( { label: "sampler1306" } );
    
    
    
    
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1303 = device130.createBuffer({
        label: "buffer1303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1300 = device130.createBindGroup({
        label: "bind_group1300",
        layout: render_pipeline1301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1303,
                },
            },
        ],
    });

    render_bundle_encoder1300.setBindGroup(0, bind_group1300);
    
    device160.pushErrorScope("out-of-memory");
    const render_pipeline1600 = device160.createRenderPipeline({
        label: "render_pipeline1600",
        vertex: {
            module: shader_module1602,
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
            module: shader_module1602,
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
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    
    
    query1302.destroy()
    
    const buffer1601 = device160.createBuffer({
        label: "buffer1601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query1602.destroy()
    render_bundle_encoder1600.pushDebugGroup("group_marker");
    
    device190.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module1304_code = "";
    try {
        shader_module1304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1304 = await device130.createShaderModule({ label: "shader_module1304", code: shader_module1304_code })
    
    const buffer1900 = device190.createBuffer({
        label: "buffer1900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder1600.popDebugGroup();
    query1302.destroy()
    
    query1304.destroy()
    query1602.destroy()
    
    const bind_group_layout1801 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1801",
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
    
    
    
    
    const pipeline_layout1800 = device180.createPipelineLayout({ 
        label: "pipeline_layout1800",
        bindGroupLayouts: [bind_group_layout1801]
    });
    query1602.destroy()
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture1601 = device160.createTexture({
        label: "texture1601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query1602.destroy()
    
    const buffer1304 = device130.createBuffer({
        label: "buffer1304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query1900 = device190.createQuerySet({
        label: "query1900",
        type: "occlusion",
        count: 32,
    });
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}