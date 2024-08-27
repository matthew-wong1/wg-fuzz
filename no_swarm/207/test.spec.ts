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
    
    const array0 = new Float32Array([-0.5, 0.75, -0.25, 0.5, 1.0, 0.5, -1.0, -0.75, 0.0, -0.5, 0.0, 0.5, -0.25, 0.25, 0.25, -0.25, -0.5, -0.25, 0.5, -0.5, -1.0, -1.0, 1.0, 0.0, 0.25, 0.5, 0.25, -0.25, 1.0, 0.75, -0.75, -0.25, -0.5, 0.0, 0.75, 0.5, 0.75, 0.5, 1.0, 0.75, -0.25, 1.0, 0.0, 0.5, -0.25, 0.25, 0.0, -0.25, 0.25, -0.75, 1.0, -0.25, -0.75, 1.0, 0.75, 0.0, -0.5, 0.5, -0.75, -0.25, -0.25, -1.0, -0.25, -0.25, 1.0, -1.0, -0.25, 0.75, 0.0, -0.75, 0.5, 0.25, -0.5, -0.75, 0.75, 0.0, 0.0, 0.0, 0.75, -0.75, 0.0, -0.25, 1.0, 0.75, 1.0, -0.5, 0.25, 0.25, 0.75, 0.75, 0.0, 0.5, 1.0, 0.75, -0.25, 0.75, 0.75, 0.5, 1.0, -0.25, ]);
    
    const array1 = new Float32Array([0.0, -0.75, -1.0, -1.0, 0.25, -0.75, 0.75, 0.5, 0.5, -0.25, -0.75, 0.75, 0.5, 0.5, -0.5, 0.0, 0.75, 0.75, 1.0, 0.5, -1.0, -0.75, -0.5, -0.5, -0.5, -1.0, 0.75, 0.5, 0.25, 1.0, 0.75, -0.5, -1.0, -0.75, -0.5, 1.0, -0.25, -0.5, 0.75, -1.0, -0.5, -1.0, -0.5, -1.0, -1.0, 0.0, -0.5, -1.0, 0.25, -1.0, -0.75, -0.25, -0.25, 1.0, -1.0, 1.0, -0.5, 0.75, 0.25, 0.25, -0.25, -1.0, 0.0, -1.0, -1.0, -1.0, 1.0, 0.25, 0.0, 0.0, -0.5, -1.0, 0.75, 1.0, -0.5, -0.25, 0.75, -0.75, 0.75, 0.25, -0.5, 0.0, 0.75, -0.75, 0.75, -1.0, 0.0, 0.25, 0.25, 0.75, 0.25, 0.5, -0.5, 0.75, -0.5, 0.0, 0.75, -0.25, -1.0, -0.5, ]);
    const array2 = new Float32Array([-0.25, 0.25, 0.0, 0.5, -0.5, 0.25, -1.0, -0.75, 0.25, 0.0, -1.0, 0.0, 0.5, 0.75, -1.0, 1.0, 0.25, -0.75, 0.5, 0.0, 0.0, 0.5, 0.5, 0.5, -0.75, 0.0, -0.25, -1.0, -0.5, -0.5, -0.75, 0.0, -1.0, 0.75, 1.0, -1.0, -1.0, 0.75, 0.75, -0.75, -1.0, 0.5, 0.5, 1.0, -1.0, 1.0, 1.0, -0.5, 0.5, -0.5, 0.0, 0.5, 1.0, -0.25, -0.25, 0.75, 0.75, -1.0, 0.25, 0.5, 0.75, 0.75, 0.5, -0.75, -0.5, 1.0, 1.0, -0.5, 0.75, 0.0, 0.5, 0.25, 1.0, -0.75, 1.0, -1.0, 1.0, -0.5, -0.5, -0.25, 0.75, 0.0, 0.0, -0.75, -0.75, 1.0, 0.25, -1.0, -1.0, 0.0, -0.25, -1.0, -0.75, 0.0, 0.25, 0.25, -0.25, 0.5, -0.75, -0.75, ]);
    
    const array3 = new Float32Array([-0.25, 0.75, 0.0, -1.0, 0.5, -1.0, -1.0, 0.0, 0.75, 0.75, 1.0, 0.25, 0.5, 0.25, -0.25, 0.75, 1.0, 0.25, 0.75, 0.0, -0.75, 0.75, -1.0, -1.0, -0.25, 0.75, 0.5, 0.0, 0.25, 0.0, 0.25, 0.75, -1.0, -0.25, -0.25, 1.0, 0.75, 0.25, 1.0, -0.5, 0.0, -1.0, 0.25, -0.25, -1.0, -0.25, 0.0, 0.25, 0.5, 1.0, 0.75, 1.0, 0.25, 0.75, 1.0, 0.5, -1.0, 0.25, -0.5, -1.0, 0.75, 1.0, -0.75, 0.0, -0.25, 0.25, -0.25, -0.5, -1.0, 0.75, -0.5, 0.25, 0.0, 0.75, 0.0, 0.25, -0.5, 0.25, 0.0, 0.0, 0.0, 0.0, -0.75, -0.25, -1.0, 0.5, 0.5, -0.5, 0.0, 0.5, 0.25, 0.75, 0.25, 0.25, -0.5, -0.25, -0.5, 0.5, -1.0, 0.25, ]);
    
    
    
    
    
    const array4 = new Float32Array([0.75, 1.0, -1.0, 1.0, 1.0, -1.0, -0.5, 0.0, -0.5, -0.25, 0.5, -1.0, 1.0, 0.5, -0.25, -0.5, -0.75, 1.0, -0.25, -0.25, 0.0, -1.0, 0.5, -0.75, -0.25, 0.75, -1.0, 0.5, -1.0, 1.0, 1.0, -0.25, -1.0, 0.0, -0.25, -0.75, -1.0, -0.5, -1.0, 0.0, 0.75, 0.0, 0.75, -0.5, -1.0, 0.75, -1.0, -0.25, 1.0, -0.75, -1.0, 0.0, -0.75, -0.5, 1.0, 0.5, 0.75, 1.0, 1.0, -0.25, 0.25, 0.25, -0.5, 0.0, -0.75, -0.5, -1.0, 0.5, 0.25, 0.75, -0.5, -0.5, -0.25, 1.0, -0.75, -0.5, 0.0, -0.5, 0.25, -0.25, 0.75, 0.75, 1.0, -0.5, 0.5, 1.0, -1.0, 0.5, 0.75, -1.0, 1.0, -0.5, 1.0, -0.25, 0.75, -0.25, 0.5, 0.75, 1.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array5 = new Float32Array([0.25, -1.0, 0.75, -1.0, 1.0, -0.25, 0.25, -0.75, -0.25, 0.0, 0.5, 0.0, 0.5, 0.5, 0.25, -0.25, 0.25, -0.5, -0.25, -0.75, -0.25, -0.5, 1.0, 0.0, 0.0, 0.25, -0.75, 0.0, 0.5, -0.5, 0.75, 0.5, 0.75, -1.0, 0.0, -0.75, -1.0, -0.75, -0.5, 0.75, -0.5, -0.5, -1.0, -1.0, 0.75, -1.0, 0.0, -0.25, 1.0, 0.25, 0.5, 0.25, 1.0, -0.25, -1.0, -0.5, -0.25, -0.25, 0.25, 0.0, -0.25, -1.0, 0.5, -0.75, -1.0, 0.5, -1.0, -0.5, 0.0, 0.0, -1.0, 0.5, 0.25, -0.25, 0.25, -1.0, -0.75, 1.0, -1.0, 0.25, 0.25, -0.75, 0.75, 0.5, 0.5, -1.0, 1.0, -0.5, 0.5, -1.0, 1.0, 0.0, -1.0, 0.5, 1.0, -0.75, 0.75, 0.75, -0.5, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.destroy();
    const array6 = new Float32Array([0.0, 0.75, -0.75, -0.75, -0.75, 1.0, -1.0, 0.0, -0.75, 1.0, -0.5, 1.0, -1.0, 1.0, 0.75, 1.0, 0.0, 0.0, 0.75, 1.0, -0.25, -0.5, -0.5, 0.25, -0.75, 0.25, -1.0, 0.75, 0.0, -0.75, -0.75, -1.0, 0.25, -0.5, -0.25, 0.25, -0.5, -1.0, 0.25, 0.0, 0.25, -1.0, 0.5, 0.25, 0.25, 0.25, 0.5, -0.5, -0.5, 0.5, 0.25, 0.25, 0.0, 0.0, 0.75, 0.75, -0.25, 0.5, -0.5, -0.75, -0.5, 1.0, -0.25, 0.5, 0.75, 1.0, -1.0, 0.75, 0.0, -0.5, -1.0, 0.75, -0.25, 0.25, 0.25, 0.75, 0.25, 0.75, -1.0, 0.75, -0.5, -0.25, -0.5, 1.0, -0.5, 0.0, -1.0, 0.0, 0.0, -0.25, 0.75, 1.0, -1.0, 0.5, 0.75, 0.0, -0.25, 0.0, -0.75, -0.75, ]);
    
    const array7 = new Float32Array([-0.5, 1.0, -0.75, -0.75, 1.0, -0.5, 0.75, 1.0, 0.25, 0.0, -0.5, 0.75, 0.75, 0.0, 0.25, 0.75, -0.25, -1.0, 1.0, 1.0, 0.0, 0.75, 1.0, -1.0, -0.25, 0.5, -0.25, 0.0, -0.5, 0.25, -0.5, 0.75, 0.0, 0.0, -0.25, -0.5, -0.75, -0.5, -0.25, 0.25, 1.0, -0.75, -1.0, -0.5, -1.0, 0.25, 0.25, 0.75, -0.25, 0.25, -1.0, 0.75, 0.25, -0.75, 0.5, 0.5, -0.25, 1.0, 0.0, 1.0, 1.0, 0.5, 0.75, -0.75, 0.0, -0.75, -0.25, 0.5, 0.5, 0.5, -0.75, -0.25, 1.0, 0.5, 1.0, 0.75, -1.0, -1.0, -0.75, -0.75, -0.25, -0.5, 0.5, 0.0, 1.0, -1.0, -1.0, 0.75, 0.75, -1.0, 0.5, 0.5, 0.0, 1.0, -0.25, 0.25, -0.75, 0.75, -0.75, 1.0, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query101.destroy()
    const array8 = new Float32Array([-1.0, 0.25, 0.75, -0.25, 0.5, 0.75, 1.0, -0.25, 0.0, 0.25, -0.5, 0.75, -0.75, 0.5, 0.5, 1.0, -0.25, 1.0, 0.0, -0.25, 0.25, 0.5, 0.0, 0.75, 0.75, 0.0, -0.75, 0.25, -0.5, -1.0, 1.0, 0.25, -0.25, 0.5, -1.0, 0.5, 0.75, 0.0, 0.5, 0.25, -1.0, -0.25, -1.0, 0.0, 0.5, 1.0, 0.0, 1.0, 0.75, -0.75, 0.75, -0.25, 0.5, -0.75, 1.0, -0.5, -0.25, -1.0, -0.25, 1.0, 1.0, 0.0, -0.75, 0.0, -1.0, 0.75, 0.25, 0.5, 0.0, 0.5, 0.5, 0.5, -0.5, 0.5, 0.25, -1.0, 0.0, 0.5, -0.5, -1.0, 0.75, 0.0, 0.75, -0.25, -0.25, -1.0, 0.75, -0.25, 0.0, -0.5, 1.0, 1.0, 0.75, 0.0, 0.0, -1.0, 0.0, 0.5, 0.5, -0.75, ]);
    
    device10.pushErrorScope("out-of-memory");
    texture101.destroy();
    const array9 = new Float32Array([0.0, 0.75, -0.75, 0.0, 0.75, -0.25, 0.25, 0.0, -0.5, 0.75, 0.25, 0.25, 0.5, -0.5, -1.0, 0.75, 0.0, -0.75, 0.0, -0.25, 0.25, -0.5, 0.25, 0.0, -0.25, -0.25, 0.0, -0.5, -1.0, -1.0, -0.75, -1.0, -1.0, 0.25, -0.75, 0.25, -0.75, 0.75, 1.0, 1.0, 1.0, -0.75, 1.0, 0.0, -0.5, 0.75, 0.0, 0.25, -1.0, 0.25, 1.0, -1.0, -0.25, 1.0, 1.0, 0.0, -0.25, -0.75, -1.0, 0.75, 1.0, 0.75, -1.0, -1.0, 0.5, -0.5, -0.5, 0.75, -0.5, -0.5, 0.75, -0.5, -0.25, 0.5, 1.0, 0.5, -0.25, 0.0, 1.0, 0.75, -1.0, 1.0, -0.75, -0.25, 0.5, 0.25, 0.5, 0.75, -1.0, 0.0, -1.0, 0.0, 0.0, -1.0, 0.5, 0.0, -1.0, 0.75, -1.0, 0.5, ]);
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
    query100.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query101.destroy()
    const array10 = new Float32Array([-0.75, 0.5, 1.0, -0.25, -1.0, -0.75, -1.0, 0.75, 0.5, 0.5, -0.75, 0.25, 0.75, -1.0, 0.5, 0.0, 0.5, 0.0, -1.0, -0.75, 0.5, -0.75, -0.5, 1.0, -0.75, -0.75, -0.75, 0.25, -1.0, 1.0, -1.0, -1.0, -1.0, -0.25, -0.75, 0.25, 0.5, 0.75, 0.0, 0.5, -0.5, 1.0, -1.0, 0.75, 0.0, -0.25, -1.0, -0.25, 0.25, 0.5, 0.0, 0.75, 0.5, -0.75, 1.0, 0.25, 0.25, -0.5, -0.5, -0.5, -0.75, 0.5, 1.0, -0.75, 0.75, -0.75, 0.5, 0.75, 0.75, -0.5, 0.75, 0.75, 0.0, 0.0, -0.25, 0.5, 0.75, 0.5, 1.0, 1.0, 0.25, -0.25, 0.5, 0.5, 0.75, 0.75, 0.75, 1.0, -1.0, -1.0, -1.0, 0.75, -0.5, -0.25, 1.0, -0.75, 0.75, -0.5, 0.25, 0.25, ]);
    
    
    query100.destroy()
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
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    query100.destroy()
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const array11 = new Float32Array([-1.0, 0.75, 1.0, 1.0, -0.25, 0.25, 1.0, 1.0, 0.0, 0.0, 0.5, -0.25, -0.75, -0.25, -0.75, 1.0, 0.75, 1.0, -0.25, 0.25, -1.0, -0.75, 0.0, 0.75, 0.75, -0.5, 0.0, 0.0, 0.0, 0.25, -0.75, 0.75, 0.5, 0.25, -1.0, -0.25, 0.75, -0.75, -1.0, 0.5, -0.5, 0.25, 1.0, -1.0, 0.75, -1.0, 1.0, -0.25, -0.75, 0.0, -0.75, -1.0, -0.25, 0.75, 0.75, -0.75, 0.0, -0.75, 0.5, 0.0, 0.75, -0.25, 0.0, 0.0, -0.25, 1.0, 0.25, 0.75, 0.75, 0.5, 0.75, 0.0, -0.75, -0.25, 0.75, -0.5, -0.75, 1.0, 0.75, 0.5, -0.75, -0.25, 1.0, -0.5, 0.5, -1.0, 0.25, 1.0, 0.0, -1.0, -0.75, 0.25, 1.0, -0.5, -0.5, -1.0, -1.0, -0.5, -0.75, -0.75, ]);
    device10.pushErrorScope("out-of-memory");
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    texture100.destroy();
    
    
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder1000.executeBundles([])
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const array12 = new Float32Array([-1.0, 0.0, 0.0, 0.75, 0.25, 1.0, -0.75, 0.75, -0.5, -0.5, 0.75, -0.25, -1.0, 1.0, -1.0, 0.0, 0.25, 1.0, 0.5, -0.5, 0.5, -1.0, -0.75, -0.5, -0.25, 1.0, 0.75, 0.75, 0.0, 0.0, 0.75, 0.5, -1.0, 1.0, 0.25, -0.25, 1.0, 0.25, -0.25, 0.0, 0.0, 0.75, 0.25, -0.75, 0.25, -0.5, 1.0, -0.75, 0.75, 0.25, -1.0, -0.5, -0.5, -0.75, -1.0, -0.75, -1.0, 0.75, 0.0, 1.0, 0.5, 0.25, -0.75, 1.0, -1.0, -0.25, 0.0, 0.0, -0.25, 0.25, -0.25, -0.5, -1.0, -1.0, 1.0, -1.0, 0.5, 0.0, -0.75, 1.0, 0.0, 0.75, 0.0, 0.25, 1.0, 0.0, 0.0, -0.25, 0.0, -0.5, 1.0, -0.5, 1.0, -0.25, -0.75, -1.0, -1.0, 0.25, 0.0, -1.0, ]);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array13 = new Float32Array([-0.25, 0.0, 0.5, 0.5, 0.0, 0.5, 1.0, 0.0, -0.25, 0.25, 0.5, -1.0, 0.0, -0.25, -1.0, -0.5, 0.75, 0.5, -0.25, -0.25, 0.75, 0.75, 0.75, 1.0, -1.0, 0.5, 1.0, -0.5, 0.0, -0.25, -0.25, -1.0, 0.25, 0.75, -0.25, -0.25, -0.75, 0.0, 1.0, -0.5, -0.25, 0.0, -0.75, 0.75, 0.0, -1.0, -0.75, -1.0, -0.5, -0.5, 0.0, 0.5, -0.25, 0.25, 0.0, 1.0, 0.0, -0.25, -0.5, -0.25, 1.0, 0.75, 0.75, 0.25, 0.75, 1.0, -1.0, -0.25, 0.75, -0.5, -0.25, -1.0, -0.5, -1.0, -0.75, 0.75, -0.75, 0.75, -1.0, 0.5, 0.75, 0.25, 0.5, 0.25, -0.75, 0.75, -0.5, 0.75, 0.5, 0.25, 1.0, 0.5, 0.0, 0.25, 0.0, 0.25, -0.75, -0.75, -0.25, -0.25, ]);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    render_pass_encoder1000.executeBundles([])
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
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query102.destroy()
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
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    
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
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout104]
    });
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
    query103.destroy()
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    query101.destroy()
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1020.setPipeline(render_pipeline104);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    query301.destroy()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1000.popDebugGroup();
    
    
    query101.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer101.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.popDebugGroup()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    command_encoder103.insertDebugMarker("mymarker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    render_pass_encoder1000.setStencilReference(1);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query103.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query104
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    texture302.destroy();
    query103.destroy()
    
    query100.destroy()
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.beginOcclusionQuery(0)
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    device30.pushErrorScope("out-of-memory");
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1030.endOcclusionQuery()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout103]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    query104.destroy()
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1030.setPipeline(render_pipeline100);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    
    texture301.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
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
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    query302.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    query103.destroy()
    device10.pushErrorScope("internal");
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    texture300.destroy();
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query106.destroy()
    const array14 = new Float32Array([1.0, 0.25, -0.75, 0.0, 0.25, 0.25, -1.0, -0.25, -0.75, 1.0, -0.25, 0.0, -1.0, 0.0, 1.0, -0.75, 1.0, -0.25, 0.0, 0.5, -0.5, 0.5, 0.75, 0.25, -0.25, -0.5, 0.0, 0.0, -0.75, 0.5, 0.5, 1.0, 0.75, 0.5, -1.0, -0.75, 0.75, -0.75, -0.25, -0.75, -1.0, 0.5, -0.5, -1.0, -0.5, 0.75, 0.5, -0.25, -0.5, 0.5, 0.75, 1.0, -0.75, -0.5, -0.75, 0.75, -0.75, 0.0, -0.25, 0.25, 1.0, -0.75, 0.75, 0.75, -0.5, 0.5, -0.75, -0.5, 1.0, 0.5, 0.75, 0.5, 0.75, 1.0, -0.75, -1.0, 0.75, -1.0, -0.5, -0.75, 0.25, -1.0, -0.5, 0.75, -0.5, 0.25, -1.0, -1.0, 0.5, 0.25, 0.0, 0.25, -0.75, -0.75, 0.5, 0.75, 0.75, 0.25, -0.25, -1.0, ]);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    texture102.destroy();
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
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
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    
    texture303.destroy();
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    query100.destroy()
    
    render_pass_encoder1020.popDebugGroup();
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder1000.setStencilReference(1);
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_buffer104 = command_encoder104.finish();
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout109,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    query500.destroy()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer104, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer104, 0);
    
    buffer300.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder1020.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture105.destroy();
    device10.queue.writeBuffer(buffer104, 0, array14, 0, array14.length);
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout103]
    });
    device40.destroy();
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    render_pass_encoder1000.setStencilReference(1);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout107,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    query105.destroy()
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const array15 = new Float32Array([0.0, 0.5, 0.75, -0.75, 0.25, -0.25, 0.5, -0.25, -0.75, -0.25, 0.75, 0.25, 1.0, -0.5, 0.5, -1.0, 0.75, 1.0, -0.5, -1.0, 0.5, -0.5, 0.75, -0.5, 1.0, -1.0, 0.75, 0.0, -0.25, 1.0, 1.0, -0.75, -0.25, 0.25, 0.75, -0.75, -0.5, 1.0, 0.25, -0.75, -1.0, 1.0, -1.0, -0.5, 1.0, -0.5, -1.0, -1.0, 0.25, -0.25, 0.75, -0.75, 0.25, 0.0, -0.5, -0.5, 0.25, 0.0, 0.25, -0.5, -0.5, 0.25, 0.0, -1.0, 0.0, -0.25, 0.0, -1.0, 1.0, 0.5, -0.5, -1.0, 0.75, -1.0, 0.25, 0.0, -1.0, -0.5, -0.5, 0.25, 0.75, 0.25, 0.5, 0.75, 0.75, 0.75, 0.0, -1.0, 0.75, -0.5, -0.25, -0.5, 0.0, 0.25, -0.75, -0.75, 1.0, 1.0, -1.0, -1.0, ]);
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query303.destroy()
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device50.pushErrorScope("internal");
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout105,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    command_encoder501.insertDebugMarker("mymarker");
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
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
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query105.destroy()
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
    
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout105,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query200.destroy()
    texture103.destroy();
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    query301.destroy()
    
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout304]
    });
    command_encoder501.insertDebugMarker("mymarker");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query501.destroy()
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    
    
    compute_pass_encoder3000.popDebugGroup()
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout108,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout109,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.popDebugGroup()
    const array16 = new Float32Array([-0.25, -1.0, -1.0, 0.0, 0.75, 0.25, 0.75, 0.0, 1.0, -1.0, 0.25, -0.75, 0.75, 0.0, 0.5, -1.0, -1.0, 0.25, -1.0, 1.0, -0.75, -0.75, 0.75, -1.0, 0.0, -0.75, -0.25, -0.25, -1.0, 0.0, -1.0, -0.25, 0.25, 0.25, -1.0, -0.75, -0.75, 0.75, 0.75, 0.0, 0.75, -1.0, -1.0, -1.0, 0.75, 0.5, -1.0, 0.0, 1.0, 0.5, 0.0, -0.25, 0.75, 0.75, 0.5, 1.0, -0.25, -1.0, 1.0, -0.25, -0.5, 0.0, 0.0, -0.5, 0.0, 0.25, -0.25, 1.0, 1.0, 0.5, -0.5, -0.5, 0.0, -0.25, 0.5, 0.25, -0.25, 0.0, 0.75, -0.25, -0.5, -0.75, -0.25, 0.75, -1.0, 0.75, 0.75, -0.75, -0.25, -0.75, -0.5, -0.75, 0.0, 0.5, 0.0, 1.0, 0.25, -0.5, 1.0, -0.5, ]);
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout104,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder302.setPipeline(render_pipeline301);
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    device30.pushErrorScope("validation");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    query300.destroy()
    query105.destroy()
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setStencilReference(1);
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout108,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    query302.destroy()
    query103.destroy()
    const command_buffer501 = command_encoder501.finish();
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout107,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout107,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    texture104.destroy();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query104.destroy()
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout104,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder1030.popDebugGroup();
    buffer105.destroy()
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    render_bundle_encoder300.popDebugGroup();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array17 = new Float32Array([-0.75, 0.75, 0.75, -1.0, 0.75, -1.0, -0.25, 0.75, 0.0, -0.25, 0.0, -1.0, 1.0, 0.5, 0.75, 0.0, -0.25, 0.75, 0.25, 1.0, -0.75, 0.0, -1.0, -1.0, -1.0, 1.0, -0.75, -0.75, -0.25, 0.25, 0.5, -0.75, -0.75, -0.25, -0.75, 1.0, -0.25, 0.0, -0.5, 0.0, 1.0, -0.75, -0.5, 0.75, -0.25, -1.0, 0.0, -0.5, -1.0, 0.0, -0.5, -0.5, 0.0, -1.0, -0.25, 0.5, -0.5, 1.0, -1.0, -0.25, 0.25, -0.75, -0.5, -0.75, -0.5, 0.0, -0.5, 0.25, -0.25, -0.5, 1.0, -1.0, -0.25, 1.0, 0.25, 0.0, 0.25, -0.75, -0.75, 0.5, -1.0, 0.25, 0.25, -0.5, 0.5, -0.75, -0.75, 0.25, -0.5, -0.75, 0.5, 0.5, -0.75, -0.25, 0.75, -0.75, 0.0, 1.0, 1.0, 0.25, ]);
    const array18 = new Float32Array([0.5, 0.75, -1.0, -0.25, 0.25, -0.75, -0.5, 1.0, 1.0, 0.25, -0.5, -1.0, -0.75, 0.0, -1.0, 0.25, 0.5, -1.0, -0.5, 0.75, 0.75, -0.5, -1.0, -1.0, 1.0, 0.75, 0.75, -0.5, 0.25, -1.0, 0.25, 1.0, -0.25, -1.0, -0.25, 0.5, 0.25, -0.5, -0.75, -1.0, -0.25, 0.5, -0.75, -0.75, 0.0, -0.75, 0.75, -1.0, -0.25, 0.5, 0.25, -0.25, 0.75, 0.0, -0.25, 0.0, -1.0, 0.0, 0.25, -0.75, 0.5, -1.0, 0.75, -1.0, 0.25, 0.5, 0.0, -0.75, 0.5, 0.0, -0.5, -0.5, -0.5, 0.75, 0.5, -0.5, 0.75, -0.75, 0.25, -0.25, 0.5, 0.75, -0.5, -0.75, 0.0, 0.5, 0.0, -1.0, 0.25, 0.25, -0.25, 1.0, -0.25, 0.5, 0.0, -0.75, 0.5, 0.0, 0.75, 0.5, ]);
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout104,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
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
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer100.destroy()
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
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline105);
    
    render_bundle_encoder302.popDebugGroup();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.end();
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer105 = command_encoder105.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder3000.end();
    command_encoder500.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    const command_buffer500 = command_encoder500.finish();
    const command_buffer101 = command_encoder101.finish();
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1000.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    device10.queue.submit([command_buffer105, ]);
    const command_buffer300 = command_encoder300.finish();
}