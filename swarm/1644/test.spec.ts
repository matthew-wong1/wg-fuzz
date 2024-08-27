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
    
    const array0 = new Float32Array([0.75, -0.5, 0.75, -0.75, 0.0, -0.75, -0.25, 1.0, -1.0, -0.75, -0.75, -0.25, -0.75, 0.25, -1.0, 0.0, -0.75, 0.75, 0.25, -0.75, 0.75, 0.0, -0.25, -0.5, -0.75, 0.5, 0.75, 1.0, 0.0, 0.75, 0.0, 0.0, -0.25, 0.25, 1.0, -0.75, 0.5, -0.25, 0.75, -0.75, -0.75, 0.75, 0.25, -0.5, -0.25, 0.0, 1.0, 0.5, -0.25, 0.25, 0.75, 0.25, 0.25, -0.5, 1.0, 1.0, 1.0, 1.0, -0.75, -0.25, 0.75, 0.25, -0.25, 0.75, 0.25, -1.0, -1.0, 0.5, 1.0, -0.75, 0.25, -0.25, 1.0, 0.5, -0.75, -0.25, -0.75, 0.75, -0.5, 0.25, 1.0, -1.0, 0.25, 0.0, 1.0, 0.0, 0.5, -0.5, 0.0, -0.25, 0.5, -0.75, 1.0, -0.5, 0.25, 1.0, -1.0, 0.75, -0.5, 0.25, ]);
    const array1 = new Float32Array([0.75, 0.0, -0.5, 0.75, -0.25, 0.5, 1.0, -0.75, 0.0, -0.75, 0.5, 1.0, -0.5, 0.25, 1.0, -0.25, -0.75, -0.5, 0.0, -0.5, -0.25, -1.0, -1.0, -0.25, 0.5, -0.75, 0.5, -0.5, 0.5, 1.0, -0.5, -0.75, 0.75, 0.75, 0.0, -0.75, 0.0, -1.0, 1.0, 0.0, 0.5, 1.0, -1.0, -1.0, 1.0, 0.75, 1.0, -0.75, -0.25, 1.0, 1.0, 0.0, 0.5, -0.5, 0.25, 0.75, 1.0, -1.0, 0.75, -0.25, 0.75, 0.25, 0.25, -0.25, 0.5, -0.5, 0.25, 0.5, 0.25, 0.5, 1.0, 0.0, 0.25, 0.0, 1.0, -1.0, -0.25, 0.5, 0.0, -0.5, -1.0, 0.0, 0.75, 0.25, 0.5, -0.5, 0.5, 0.25, 0.0, -0.5, -0.75, -1.0, 0.75, -0.5, 0.25, 0.75, 0.0, 1.0, 0.5, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const array2 = new Float32Array([0.25, -0.75, -0.5, 0.25, 0.25, -0.75, -0.5, -0.25, -0.75, 0.5, 0.0, -1.0, 0.75, -1.0, -1.0, 1.0, 0.5, -0.75, -0.25, -0.5, 1.0, -1.0, 0.25, 0.5, -0.75, 0.25, 1.0, 0.5, -0.25, -0.5, 0.5, -0.75, -0.75, 1.0, -1.0, -0.75, 0.0, 0.0, -0.75, 0.25, -0.25, -1.0, 0.0, 0.25, 0.0, -0.75, -0.75, -0.5, -1.0, -0.25, -0.75, -1.0, -0.25, -0.25, -0.75, 1.0, 0.75, 0.5, -0.75, 0.75, -1.0, -0.25, 0.5, -0.25, -0.75, -0.25, -0.25, -1.0, -0.5, 0.5, -0.75, 0.25, 0.0, -0.5, -0.25, -0.75, 0.75, 0.5, 0.0, 1.0, 0.5, -0.25, 1.0, 0.75, 0.0, -0.75, 0.5, 0.0, -0.5, -0.5, -0.5, -0.75, -0.25, -0.25, 0.5, -0.75, 0.0, 0.75, 0.25, -0.25, ]);
    
    const array3 = new Float32Array([-1.0, 0.75, 0.25, -0.75, -0.5, -0.5, 0.75, -1.0, 0.25, -0.25, 0.0, -0.5, -0.25, 0.0, -0.25, -0.75, 0.25, 0.75, 0.5, -0.25, 0.25, 0.25, -0.75, -0.5, 0.75, 0.75, 0.25, 0.75, -1.0, 1.0, -0.25, 0.5, -0.75, -1.0, 0.0, -1.0, 0.25, -1.0, -0.25, -1.0, -0.75, -0.25, -0.5, -0.5, 1.0, 1.0, 0.5, 0.0, -0.5, 0.5, 0.25, 1.0, 0.75, -0.5, 1.0, -0.75, 0.5, 0.75, 0.25, -0.5, 0.0, -0.25, -0.5, 0.5, -1.0, -0.5, 1.0, 0.25, 0.75, 0.5, 0.75, 0.25, -0.75, 0.0, 0.25, -0.75, -1.0, 0.75, -1.0, 0.25, -0.5, 0.0, 0.25, 0.0, 0.0, 0.0, -0.75, 0.5, -0.5, -1.0, 0.5, 0.75, 0.75, 0.0, 0.75, 0.25, 0.25, 0.5, 0.0, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    texture000.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("out-of-memory");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8uint",
        dimension: "2d"
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    
    
    
    texture002.destroy();
    render_bundle_encoder000.popDebugGroup();
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
    render_bundle_encoder000.insertDebugMarker("marker");
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
        usage: GPUBufferUsage.INDEX
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    query002.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture003.destroy();
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
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
    const array4 = new Float32Array([0.0, -0.5, -1.0, 0.75, 0.25, -0.25, 0.25, -0.75, 0.25, 0.5, 0.25, -0.5, 0.0, 1.0, -0.75, 0.75, -0.75, 0.5, 1.0, -0.25, 0.5, 0.25, 0.25, 0.25, -0.75, 0.75, 0.25, 0.75, 0.75, 0.75, 0.25, -0.25, -1.0, -1.0, -1.0, 0.25, 1.0, 0.5, -1.0, 0.0, -1.0, 0.5, 0.75, -0.5, 0.25, 0.5, -0.5, 0.75, -0.25, -0.5, 1.0, 0.0, 0.5, -0.25, -0.25, -0.75, 1.0, 0.5, 0.0, 0.75, -0.5, 0.25, 0.25, -1.0, 0.0, 1.0, 0.5, -0.75, 0.5, -0.75, -0.75, 0.5, 0.0, -0.75, -0.25, -0.75, -0.25, -1.0, -0.5, -0.5, 1.0, -0.5, 1.0, 0.5, -0.5, 0.75, -0.5, 0.0, -0.25, -0.5, 0.5, -0.75, -1.0, -0.5, 0.0, -1.0, 0.75, 0.25, -0.75, -1.0, ]);
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query001.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    device00.destroy();
    
    const array5 = new Float32Array([0.25, 0.0, 0.75, -0.5, 1.0, 0.5, -0.75, -0.25, 0.75, -0.75, 0.25, -0.25, -1.0, 0.25, -1.0, -0.75, 0.75, 1.0, 0.75, -1.0, 0.75, 0.5, -0.75, -0.25, -1.0, -1.0, -0.25, -0.5, -1.0, -0.25, -0.5, -0.5, 0.5, 1.0, -1.0, 1.0, -0.75, 0.75, 0.0, -1.0, -1.0, 0.75, -0.25, 0.75, -0.5, 0.5, 0.5, -0.25, 0.25, -0.5, 0.25, 0.25, 1.0, -0.75, 0.75, 0.75, -0.25, -0.75, -0.25, -0.75, 1.0, -0.25, -0.75, -1.0, -0.75, -0.5, 0.25, 0.25, -0.25, -1.0, 1.0, 0.0, 0.75, -0.75, 1.0, 0.75, 0.0, -0.5, 0.75, 1.0, -1.0, 0.5, -0.25, -0.25, -0.5, 0.75, 1.0, 1.0, 0.5, 0.0, 0.5, -0.5, -0.25, 1.0, -0.5, -0.5, -0.75, -1.0, 0.5, -0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("out-of-memory");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device30.pushErrorScope("out-of-memory");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array6 = new Float32Array([-0.75, -1.0, -0.5, 1.0, -0.75, 0.5, -1.0, 1.0, 0.25, 1.0, 0.25, -0.5, -0.5, 0.25, -0.5, -0.25, 1.0, 0.75, 0.25, 0.75, -0.75, 0.75, -0.25, -1.0, -1.0, 0.25, 1.0, 0.5, 1.0, -1.0, 0.75, 0.5, -0.75, 0.75, 1.0, -0.5, -0.75, 0.75, -0.25, 0.0, 0.5, 0.75, -1.0, 0.75, 0.25, -0.25, 0.5, -1.0, -0.5, 0.0, 1.0, -1.0, 0.5, 0.5, 0.5, 0.5, 0.75, 0.5, 1.0, 0.75, 0.75, 0.0, 1.0, 1.0, -0.75, 0.0, 0.25, -0.5, -0.75, 0.75, 0.75, 0.25, 0.75, 1.0, -1.0, 1.0, 0.25, 0.25, -0.75, -0.25, -0.5, -0.75, -0.25, 0.0, -0.75, 1.0, 1.0, 0.0, 0.25, -1.0, 0.5, -0.5, -0.75, 1.0, 0.25, -0.5, -1.0, 1.0, 0.75, 0.5, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.destroy();
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device30.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([-0.75, 0.75, 0.0, -0.5, 0.75, -0.25, -0.25, -0.75, -1.0, -0.25, 0.0, -0.75, -1.0, 0.0, 1.0, -0.25, -0.75, 0.5, 0.0, 0.25, 1.0, 0.5, -0.75, -0.75, 0.25, 0.25, 0.25, -0.5, -0.25, -0.5, -0.75, -1.0, 0.5, 0.0, 1.0, 0.75, -1.0, -0.25, 0.25, 0.25, -1.0, -0.5, 0.5, -0.5, 0.5, 1.0, 0.0, -0.5, 1.0, -0.5, 0.75, 0.5, -0.75, 1.0, 1.0, 0.0, 0.0, 0.25, -0.5, -0.5, -1.0, -0.25, -0.25, 0.75, -0.25, 0.25, 0.5, 0.75, -0.5, 0.25, 0.75, 1.0, 0.5, 1.0, -0.5, -0.5, 0.75, -0.75, -1.0, -0.5, -0.5, 0.5, 0.25, 1.0, 0.5, 0.75, 0.75, 0.0, 0.25, -0.75, 0.75, 0.5, -0.25, -0.25, 0.5, -1.0, 1.0, -0.75, -0.75, -1.0, ]);
    
    device10.destroy();
    
    
    
    const array8 = new Float32Array([-0.25, -0.5, -0.75, -0.75, -1.0, 0.0, -0.5, -0.25, 0.75, 0.25, -0.25, 0.0, 0.0, -0.75, 0.0, 0.75, 0.5, -1.0, -1.0, -0.5, 0.0, -0.5, 1.0, -0.75, -0.75, 1.0, 0.25, -0.75, 0.25, 0.25, -1.0, 0.0, -0.5, 0.5, 0.0, -0.75, -0.5, 0.25, 0.0, -0.5, 0.0, -0.5, 0.5, -1.0, -0.25, 0.25, 1.0, -0.25, -1.0, -0.75, 0.5, 0.75, -1.0, 0.75, 0.75, 0.75, 1.0, -0.25, -0.25, -0.25, -0.75, 1.0, -0.75, 0.25, -0.5, 0.5, 0.0, -0.25, 0.5, 1.0, 1.0, 0.5, -0.5, 1.0, 0.0, 0.5, -0.5, 0.25, -0.5, -0.5, 0.0, 0.0, 1.0, -0.25, 0.25, 0.0, 0.25, 1.0, 0.75, -0.25, 0.75, -0.5, -0.5, 0.5, 0.75, 0.75, -0.25, -0.75, 0.25, 0.0, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    
    const array9 = new Float32Array([-1.0, -0.25, 0.5, -0.25, 0.5, 0.25, -0.75, -0.75, 0.75, 0.75, 1.0, -0.75, -0.5, 0.0, -0.5, -0.25, 0.0, -1.0, 0.0, -1.0, -0.75, 0.5, -0.75, -0.5, -0.25, 1.0, -0.75, 0.5, -0.5, -1.0, 0.0, 0.0, 0.25, -1.0, -0.25, 0.0, -0.25, 1.0, -0.75, 1.0, -1.0, -1.0, 0.75, -0.5, 1.0, 1.0, -0.5, 0.75, -1.0, 0.25, 1.0, 1.0, 0.0, 0.25, 0.25, -0.5, 0.5, 1.0, -1.0, -0.25, 0.0, -0.5, -0.5, -0.75, -1.0, 0.0, 0.0, 1.0, 0.75, -0.75, -0.25, 0.25, 0.25, 0.5, 0.25, 0.5, -0.25, 0.5, -0.5, -1.0, -0.25, 0.75, 0.5, -0.25, 0.25, 0.25, -1.0, -0.75, 0.5, 0.5, -0.5, 0.75, 1.0, 0.75, -1.0, -0.75, 0.0, -0.25, 0.5, 1.0, ]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array10 = new Float32Array([1.0, -0.5, -0.5, -0.5, 0.75, -0.75, 0.5, 0.0, 0.5, -0.25, 1.0, -0.25, 0.75, 0.0, 1.0, -0.5, 0.75, -0.75, 0.0, 0.75, -1.0, 0.25, 0.25, 0.0, 0.25, 0.5, 0.5, 0.0, -0.75, -1.0, -1.0, -0.75, 0.75, 0.0, 0.25, 0.75, 1.0, -0.75, -0.5, 1.0, 0.0, 0.75, 1.0, 0.0, -1.0, -0.25, -1.0, 0.75, 0.75, -0.5, 0.5, 0.25, 0.25, 1.0, 0.0, 1.0, -0.75, 0.0, -0.75, 0.25, 0.5, 0.75, -0.5, 0.75, 0.0, -0.75, 0.5, -1.0, -0.25, 0.5, -0.5, 1.0, 0.25, 0.0, 1.0, 0.0, -0.5, 1.0, 0.5, -0.25, -1.0, -1.0, -0.75, -0.25, 0.75, 1.0, 0.25, 0.5, -0.5, 0.25, 1.0, 0.25, -0.25, 1.0, 0.5, 0.25, 0.25, 0.0, 0.5, -0.25, ]);
    
    
    
    
    device00.pushErrorScope("out-of-memory");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    texture100.destroy();
    
    device10.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    texture200.destroy();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const array11 = new Float32Array([-0.5, -1.0, -0.25, -1.0, 0.25, 0.25, 0.75, -0.75, 0.0, -0.25, 0.5, -0.25, 0.5, -0.5, -1.0, 0.0, -0.25, -0.75, -0.5, 0.25, 0.25, -0.75, 0.0, -0.75, 1.0, 0.75, -0.75, -0.75, 1.0, 1.0, 0.25, -0.5, 1.0, -0.5, 0.75, 0.0, -0.5, -0.75, 0.0, 0.0, -0.25, 0.0, 1.0, 0.25, -0.25, 0.75, -0.5, -1.0, 1.0, -0.5, -1.0, 0.75, 0.5, -0.25, 0.5, -1.0, 0.5, 0.0, 1.0, 1.0, -1.0, 0.25, 0.5, 0.25, 1.0, -0.5, 0.25, -0.75, -0.25, -0.75, 1.0, 0.5, 0.0, 1.0, -0.5, 0.75, 0.75, -0.25, -1.0, 0.75, -0.5, -0.5, -0.5, -0.5, -0.25, -0.25, 1.0, 0.5, -0.75, 1.0, 0.25, -0.25, 0.25, -0.5, 0.0, 0.75, 0.25, -0.5, 0.5, -1.0, ]);
    device60.destroy();
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture500.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device50.pushErrorScope("internal");
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
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device70.destroy();
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device00.queue.writeTexture({ texture: texture004 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    query500.destroy()
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    query501.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    device50.pushErrorScope("out-of-memory");
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    
    
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    query501.destroy()
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device50.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device60.destroy();
    device80.pushErrorScope("out-of-memory");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array12 = new Float32Array([1.0, 0.0, -0.5, -0.25, -0.25, 0.0, -0.5, 0.25, 0.75, 0.75, -0.5, 0.75, 0.0, 0.25, -0.5, -0.25, -0.75, -1.0, 1.0, -0.5, 0.75, -1.0, 1.0, 0.25, -0.25, -0.25, -0.25, 0.0, 0.5, -1.0, -1.0, 0.75, 1.0, -0.5, -0.5, -1.0, 0.25, 0.5, 0.75, 1.0, 0.75, -0.25, 0.75, -1.0, -0.75, 0.0, -0.75, -1.0, 0.5, -0.75, 0.75, 0.5, 0.75, 1.0, 0.0, 1.0, 0.5, -0.75, -0.25, -0.25, 0.5, 0.5, 0.25, 1.0, -1.0, -1.0, -1.0, 0.5, 0.75, 0.25, -0.25, 1.0, 1.0, -0.75, 0.0, 0.25, -0.25, -0.75, 0.25, 0.25, 0.75, 0.25, -0.25, 0.5, 0.0, -1.0, -0.25, 0.0, 0.75, 0.0, -0.5, 0.0, 1.0, -0.75, -0.25, 0.5, 0.25, 0.25, 0.25, -0.75, ]);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    const array13 = new Float32Array([-0.5, 0.75, 1.0, 1.0, 0.5, -0.25, 0.25, -0.5, 1.0, 0.25, 1.0, -0.5, -0.25, 0.25, 0.25, -0.75, -0.5, 0.5, -0.25, 0.25, 0.75, 0.0, 0.0, 0.25, 1.0, 1.0, -0.25, 0.5, 0.5, 0.25, 0.75, -0.25, 0.5, 0.25, 0.5, 0.75, 0.25, -0.5, 1.0, -0.5, -0.5, -0.25, -0.75, 0.5, -0.75, -0.5, -0.25, -0.25, 0.0, -0.25, 0.25, -0.75, -0.5, 0.75, -1.0, -1.0, -0.25, -0.25, -0.25, -1.0, -0.75, -1.0, 1.0, -0.75, 1.0, -0.75, -1.0, -1.0, 0.75, 0.25, -1.0, -0.25, -0.25, 0.5, 0.25, 0.25, 0.25, -1.0, -0.25, 0.25, -0.25, -0.5, -0.75, 1.0, -1.0, 0.5, -1.0, -0.75, -0.75, 1.0, 0.5, -0.75, -0.75, -1.0, -1.0, -0.75, -0.75, 0.75, -0.5, -0.5, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_bundle_encoder800.popDebugGroup();
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
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
    device60.pushErrorScope("internal");
    
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device80.destroy();
    
    
    device30.pushErrorScope("internal");
    const array14 = new Float32Array([0.25, 0.0, -0.75, 0.0, 0.25, 1.0, -0.25, -0.5, 0.5, 0.75, -0.25, 0.25, -0.75, 1.0, 1.0, 0.25, 0.5, 0.0, -0.75, 0.0, 0.25, 0.75, 0.75, -0.75, -0.5, 0.5, 1.0, 0.25, 0.25, -0.5, 0.25, 0.5, 0.75, 0.5, -0.25, 0.75, -0.25, -1.0, 0.25, -0.75, 0.75, 1.0, 0.75, 0.5, 0.75, 0.0, 0.5, 0.25, 0.75, 0.25, 1.0, -0.75, 0.75, 0.5, 0.0, -0.5, -0.5, -0.5, -0.5, -0.25, -1.0, -0.5, 0.75, 0.0, 0.5, -0.25, -1.0, 1.0, -1.0, 0.5, -0.75, -0.5, 0.75, 0.0, 0.75, -0.75, -0.75, -0.25, -0.5, 0.75, -1.0, 0.75, 0.25, -1.0, 0.0, 0.5, -1.0, -0.25, 0.25, -0.75, 0.0, 0.25, -0.75, -0.75, -0.25, 0.75, 0.0, -0.75, -0.5, 0.0, ]);
    
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
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
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    const array15 = new Float32Array([0.0, -0.25, -0.75, -0.75, 0.25, -0.25, 0.75, -1.0, 0.25, 0.25, 0.5, 0.75, 1.0, 0.75, -0.25, 0.0, -0.75, 0.5, -0.75, 0.75, 0.0, -0.75, 1.0, 1.0, 0.0, 0.25, 0.25, 0.25, -0.25, 1.0, 0.25, -0.25, -0.25, 0.25, 1.0, 0.75, -0.25, -1.0, 0.25, -1.0, 0.25, 0.25, 0.5, 0.5, 1.0, 0.0, 0.75, 0.25, -0.75, -0.75, 0.25, 0.75, 0.0, -0.25, 0.25, 0.75, -1.0, -0.25, -1.0, 0.25, -0.75, 0.25, -0.25, -0.5, -0.5, -1.0, -0.25, -0.5, -0.5, 1.0, 0.0, 1.0, -0.5, 0.5, 0.0, -0.75, 0.25, 0.0, 1.0, -0.5, -0.75, -0.25, -0.25, 0.5, 0.25, 0.0, -0.25, 0.5, 0.25, -0.5, -0.5, -0.75, 1.0, -0.25, -0.75, -0.75, -0.75, -1.0, 1.0, 0.75, ]);
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device90.pushErrorScope("internal");
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const array16 = new Float32Array([0.5, -1.0, -0.25, 0.25, 0.75, -0.5, 0.25, 0.0, 1.0, -0.25, -0.75, -0.25, 1.0, -0.75, 0.0, -0.5, 0.75, -1.0, -0.25, -0.25, -0.75, -0.5, 1.0, -1.0, 0.5, 0.75, 0.25, -1.0, 1.0, -0.5, -1.0, -0.5, 0.75, 1.0, 1.0, -0.75, 0.0, -0.75, -0.5, 0.25, -0.75, 1.0, 0.75, -0.5, -0.25, -0.25, 0.75, 1.0, -0.5, 0.75, 0.5, 0.5, -0.75, -1.0, -0.5, 0.5, -0.75, 0.75, 0.0, 0.0, 1.0, 0.5, 1.0, -0.75, -0.25, 0.75, 0.0, -0.75, 0.0, -1.0, 0.75, 0.5, 1.0, 0.25, 0.75, 0.5, -1.0, -0.5, 0.75, 1.0, 0.0, 1.0, 0.0, 1.0, -0.75, 0.0, -0.75, 0.25, 0.25, 0.0, 0.0, -0.5, 0.25, -0.5, -0.5, 0.75, -0.75, -1.0, -0.5, -0.5, ]);
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("out-of-memory");
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.destroy();
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
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
    
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array17 = new Float32Array([0.0, 1.0, -0.25, 0.25, -0.25, 0.5, 0.75, 0.5, 0.25, 0.75, 0.75, -0.25, 0.75, 0.75, 0.5, -0.75, -0.75, 0.0, -1.0, 1.0, 0.75, 1.0, -0.5, 0.5, -1.0, -1.0, 0.25, -0.5, -0.5, -0.75, 0.5, 0.25, 0.5, 0.0, 0.5, -1.0, 1.0, -0.75, 1.0, -1.0, -1.0, -1.0, -0.25, 0.75, -1.0, 0.75, 1.0, 0.25, 0.0, 0.25, 0.75, -0.75, -1.0, -0.75, 0.0, -0.75, 0.25, 0.5, 0.25, -0.75, -1.0, 1.0, -0.25, -1.0, 0.0, 1.0, 0.5, -0.25, 0.0, -1.0, 0.0, 0.25, 0.5, 0.25, 0.25, -0.5, -0.75, 0.75, 0.5, 0.75, -0.25, -0.75, -0.5, -0.5, -1.0, 0.75, 0.25, -0.5, -1.0, -0.75, -1.0, 0.5, -1.0, 0.25, 0.5, 0.0, 1.0, -1.0, 0.75, 0.75, ]);
    
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    query1001.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    texture201.destroy();
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    device100.queue.writeBuffer(buffer1000, 0, array13, 0, array13.length);
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
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
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    query1001.destroy()
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
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
    device30.queue.writeBuffer(buffer300, 0, array15, 0, array15.length);
    
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    
    const bind_group_layout1003 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1003",
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
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
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
    device90.queue.writeBuffer(buffer900, 0, array12, 0, array12.length);
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    device100.queue.writeBuffer(buffer1000, 0, array14, 0, array14.length);
    
    device90.pushErrorScope("out-of-memory");
    
    
    const render_pipeline1300 = device130.createRenderPipeline({
        label: "render_pipeline1300",
        vertex: {
            module: shader_module1300,
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
            module: shader_module1300,
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
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_pipeline1301 = device130.createRenderPipeline({
        label: "render_pipeline1301",
        vertex: {
            module: shader_module1300,
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
            module: shader_module1300,
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
    const render_pipeline1302 = device130.createRenderPipeline({
        label: "render_pipeline1302",
        vertex: {
            module: shader_module1300,
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
            module: shader_module1300,
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
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device90.queue.writeBuffer(buffer901, 0, array5, 0, array5.length);
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
    device90.queue.writeBuffer(buffer901, 0, array14, 0, array14.length);
    device100.queue.writeTexture({ texture: texture1000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query1001.destroy()
    device100.queue.writeBuffer(buffer1000, 0, array14, 0, array14.length);
    device90.queue.writeBuffer(buffer901, 0, array15, 0, array15.length);
    device100.queue.writeTexture({ texture: texture1000 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.writeBuffer(buffer901, 0, array4, 0, array4.length);
    device100.queue.writeTexture({ texture: texture1000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
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
    device100.queue.writeTexture({ texture: texture1000 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.writeBuffer(buffer901, 0, array14, 0, array14.length);
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device90.queue.writeBuffer(buffer901, 0, array5, 0, array5.length);
    device90.queue.writeBuffer(buffer901, 0, array2, 0, array2.length);
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.writeBuffer(buffer901, 0, array5, 0, array5.length);
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder1301.insertDebugMarker("marker");
    
    device100.queue.writeBuffer(buffer1000, 0, array7, 0, array7.length);
    query1001.destroy()
    
    
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.writeBuffer(buffer901, 0, array0, 0, array0.length);
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    const render_bundle_encoder1302 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1302",
        colorFormats: ["bgra8unorm"]
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device100.queue.writeTexture({ texture: texture1000 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeBuffer(buffer901, 0, array0, 0, array0.length);
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device130.pushErrorScope("internal");
    device90.queue.writeBuffer(buffer901, 0, array2, 0, array2.length);
    
    {
        await buffer901.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer901.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer901.unmap();
        console.log(new Float32Array(data));
    }
    query1000.destroy()
    query002.destroy()
    device90.queue.writeBuffer(buffer901, 0, array10, 0, array10.length);
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder003.pushDebugGroup("group_marker");
    device100.queue.writeTexture({ texture: texture1000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device100.queue.writeTexture({ texture: texture1000 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.pushErrorScope("validation");
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    device90.queue.writeBuffer(buffer901, 0, array6, 0, array6.length);
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device100.queue.writeTexture({ texture: texture1000 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    device90.queue.writeBuffer(buffer901, 0, array10, 0, array10.length);
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    render_bundle_encoder1300.popDebugGroup();
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device90.queue.writeBuffer(buffer901, 0, array8, 0, array8.length);
    
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    device90.queue.writeBuffer(buffer901, 0, array2, 0, array2.length);
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module904,
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
            module: shader_module904,
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
    device90.queue.writeBuffer(buffer901, 0, array2, 0, array2.length);
    device90.queue.writeBuffer(buffer901, 0, array16, 0, array16.length);
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    
    device90.queue.writeBuffer(buffer901, 0, array8, 0, array8.length);
    
    device100.queue.writeBuffer(buffer1002, 0, array10, 0, array10.length);
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
    device100.pushErrorScope("validation");
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    device110.queue.writeBuffer(buffer1100, 0, array1, 0, array1.length);
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    query900.destroy()
    device100.queue.writeTexture({ texture: texture1000 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.destroy();
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device90.queue.writeBuffer(buffer900, 0, array15, 0, array15.length);
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeBuffer(buffer901, 0, array12, 0, array12.length);
    render_bundle_encoder1301.insertDebugMarker("marker");
    
    
    
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    render_bundle_encoder1302.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device100.queue.writeTexture({ texture: texture1000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.queue.writeBuffer(buffer901, 0, array3, 0, array3.length);
    device100.queue.writeBuffer(buffer1001, 0, array11, 0, array11.length);
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    device90.queue.writeBuffer(buffer901, 0, array4, 0, array4.length);
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
    device100.queue.writeTexture({ texture: texture1000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeBuffer(buffer901, 0, array3, 0, array3.length);
    device100.queue.writeBuffer(buffer1000, 0, array17, 0, array17.length);
    render_bundle_encoder1002.insertDebugMarker("marker");
    
    texture1000.destroy();
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}