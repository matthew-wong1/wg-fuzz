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
    const array0 = new Float32Array([-0.25, -0.75, -1.0, -0.75, -1.0, 0.75, 0.5, 0.5, 0.5, 0.0, 0.0, -0.5, -0.5, 0.75, 1.0, 0.5, -0.75, 1.0, 1.0, -0.75, 0.5, 0.75, -0.25, -1.0, 0.5, 0.5, -1.0, 0.25, 0.25, 0.0, 1.0, -0.75, -0.5, -0.5, 1.0, -0.5, -0.5, 0.5, -0.25, 0.5, -0.5, -0.25, -0.5, 0.75, 0.75, 0.5, 0.75, 0.75, 0.75, 0.25, -0.75, -0.25, 0.75, -1.0, 1.0, 0.25, 0.5, -0.25, -0.75, 1.0, -0.25, 0.0, -0.25, 0.0, 0.75, -0.5, 0.5, -1.0, -0.5, 0.75, 0.25, -0.5, -0.75, 0.25, 0.75, 0.5, -0.25, 1.0, 0.25, 0.25, 0.75, -0.5, 0.75, 0.5, -0.75, -0.25, -0.25, -0.75, -0.5, 1.0, 0.5, 1.0, 0.25, -1.0, -0.25, -0.25, -0.5, 0.75, 0.0, -0.25, ]);
    
    const array1 = new Float32Array([-0.25, -0.25, 0.25, -0.75, 0.75, -1.0, 1.0, 0.25, 0.0, 0.0, -1.0, 0.75, -0.5, 0.25, 0.25, -1.0, -0.25, 0.75, -0.75, -0.5, 0.0, 0.5, -1.0, 0.25, -1.0, 0.0, -0.5, 0.5, 0.0, -0.25, 0.5, -1.0, 1.0, -0.25, -1.0, -0.25, 0.0, 1.0, -1.0, 1.0, 0.5, 0.0, -1.0, 1.0, 1.0, -0.75, -1.0, -0.5, 0.25, 0.75, 0.75, 0.25, 0.75, -0.75, 1.0, -0.25, 1.0, 0.25, 0.5, -0.25, 0.0, -0.5, -1.0, 0.5, 0.0, -0.25, -0.25, -0.75, -0.25, -1.0, -1.0, 0.75, 0.75, -0.5, 0.5, 1.0, -0.25, -1.0, -0.5, 0.75, 0.0, -0.75, -0.75, -0.75, 0.0, -0.75, 0.5, 0.25, 0.25, -1.0, 1.0, -1.0, -0.25, 0.75, 0.25, 0.25, -0.75, 1.0, 0.5, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    const array2 = new Float32Array([0.5, 0.5, 0.25, 0.0, 0.75, 1.0, 0.5, 0.25, -0.75, 1.0, 1.0, 0.0, 0.25, -0.25, -0.25, 1.0, 0.0, 0.5, -1.0, 0.0, 0.75, 1.0, 0.5, 1.0, 0.75, -0.75, 0.0, 1.0, 0.75, 0.75, -1.0, 0.75, 0.75, 0.0, 0.5, -0.25, -0.75, -0.25, -0.75, 1.0, 1.0, -0.25, -1.0, -0.25, -0.75, 0.75, 0.5, 0.5, -0.5, 0.25, -0.75, -0.5, -1.0, 0.75, 0.5, -0.5, -0.25, 0.0, -0.75, -0.25, 0.75, 0.0, 0.75, 0.25, 0.25, 0.0, -0.75, 0.5, 0.5, -0.25, 0.5, -0.75, -0.5, -0.5, 0.5, -0.5, 0.25, 0.25, 0.25, 0.0, -1.0, 0.25, -1.0, 1.0, 1.0, 0.75, 1.0, -0.75, -0.75, -1.0, -0.25, -0.25, -0.5, 0.0, -1.0, 0.5, -0.75, 0.75, -0.25, -1.0, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.pushErrorScope("out-of-memory");
    const array3 = new Float32Array([0.25, 1.0, -1.0, 0.75, -0.75, -0.75, -0.75, 0.5, -0.5, 1.0, 0.5, -1.0, -0.25, 0.25, -0.5, 0.0, 0.75, 0.5, 0.25, 1.0, -1.0, 0.5, 0.75, 1.0, 0.25, 1.0, 0.75, -0.25, 0.25, 0.75, -1.0, 0.25, 1.0, 0.75, 0.25, -0.75, -1.0, 1.0, 0.25, 1.0, 1.0, -0.25, -1.0, -0.5, 0.75, -0.5, -1.0, 0.0, 0.25, 0.25, -0.5, -0.5, 0.0, 0.0, 0.0, 1.0, 0.0, -1.0, 0.25, 0.0, -0.75, 0.75, -1.0, -1.0, -0.75, 0.0, -0.75, 1.0, -0.5, -0.25, -0.5, -1.0, 0.0, -1.0, -1.0, 0.75, -0.5, -0.5, 0.75, 0.75, 0.75, -0.5, -1.0, 1.0, -1.0, 0.5, -1.0, 0.25, 0.5, -0.75, 0.25, -1.0, 1.0, 0.25, -0.5, -1.0, 0.75, 1.0, 1.0, 0.0, ]);
    const array4 = new Float32Array([0.75, -0.75, 0.5, -0.25, 0.0, -1.0, 0.0, -0.25, 0.0, 0.75, 0.25, 0.5, 0.5, -0.25, -0.25, -0.75, -1.0, -1.0, -0.5, 0.25, 0.25, -0.75, 1.0, -0.75, 0.0, 0.75, -1.0, 0.75, 0.0, 1.0, -1.0, -0.5, -1.0, -0.25, -0.5, 1.0, -0.25, -1.0, -0.5, 1.0, -0.25, 0.25, 0.25, -0.75, 1.0, 0.25, -0.75, 0.75, 0.25, 1.0, -0.75, -0.75, -0.75, 0.5, 0.0, -0.25, -0.75, -0.75, -0.25, 0.75, -0.5, 1.0, -1.0, 0.0, -1.0, -0.5, 0.25, 0.5, -0.25, -0.5, 1.0, -0.75, -0.75, -0.25, 1.0, 0.75, -0.25, -1.0, 0.25, 0.25, 1.0, -0.25, 0.25, 0.0, 0.25, -1.0, 0.75, -0.75, -0.75, 1.0, -1.0, 0.75, -0.25, -0.25, -1.0, -0.75, -0.25, -0.25, -1.0, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer000.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    const array5 = new Float32Array([0.25, -0.75, 0.0, 0.5, 0.0, -0.75, -0.5, -0.75, -1.0, -0.5, -1.0, 0.25, 0.5, -1.0, 1.0, 0.0, -0.25, -0.5, 0.25, 0.75, 1.0, -0.25, 0.75, 1.0, 0.75, -1.0, -0.5, 0.0, 1.0, -0.25, -0.25, 1.0, -1.0, -0.25, 0.25, 1.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.75, 1.0, -0.25, 0.75, -1.0, 1.0, 0.5, -1.0, 0.5, -0.75, -1.0, 0.0, 0.0, 1.0, -0.75, 0.25, -0.5, 0.25, 0.5, -1.0, -0.25, -1.0, 1.0, 1.0, -1.0, 1.0, -1.0, -0.75, 0.25, -1.0, 0.5, -1.0, 0.0, -0.25, -0.25, 0.25, 0.0, -0.5, -0.25, -1.0, 0.5, 0.5, -0.5, 0.5, -0.75, -1.0, 0.25, -1.0, 0.75, -0.5, -0.5, 1.0, 0.25, 0.75, 0.25, 0.25, -0.75, 0.75, 0.25, ]);
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture000.destroy();
    device00.queue.submit([]);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer000 = command_encoder000.finish();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8sint",
        dimension: "2d"
    });
    query000.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    const array6 = new Float32Array([0.75, 0.25, 0.75, 0.0, 0.75, 0.25, 0.25, -0.25, 0.5, 0.0, -0.75, 1.0, -0.5, -1.0, -0.75, -1.0, -1.0, 1.0, -0.5, 1.0, -0.75, 0.5, -0.75, 0.75, 0.0, 1.0, -1.0, 0.5, 1.0, -0.25, 0.25, -1.0, -0.25, -0.75, -0.5, 0.25, -0.25, 1.0, 0.75, 1.0, -0.75, 0.0, -1.0, 0.0, -1.0, -0.25, 0.25, -1.0, -0.75, 0.0, 0.5, 0.5, -0.25, 0.5, -0.25, 1.0, -0.75, -0.25, -0.75, 0.25, 0.0, -1.0, 1.0, 0.0, -0.25, -0.75, -1.0, 0.0, -0.25, -0.75, 1.0, 0.75, 0.5, 0.5, 0.0, 0.75, 0.25, 0.0, 0.25, -1.0, 1.0, -0.25, 1.0, -0.5, -1.0, 0.5, -0.5, 1.0, -0.5, -1.0, 1.0, 0.75, 0.0, -0.5, 1.0, -0.25, -0.75, -1.0, 0.75, -0.25, ]);
    const array7 = new Float32Array([-1.0, -0.75, 0.25, 0.5, 1.0, -1.0, 1.0, -0.5, 0.5, 0.75, 0.0, -0.5, 0.0, 0.25, 0.25, 1.0, -0.75, -0.25, 0.25, 0.25, -1.0, 0.0, -0.25, -1.0, 0.5, 0.5, 1.0, 0.0, 0.0, -0.75, -0.5, -1.0, 0.75, 1.0, 0.75, -0.5, 1.0, 0.0, 0.25, 0.5, -1.0, -0.25, 0.25, -1.0, -0.5, -1.0, 1.0, 0.25, 0.75, 0.25, 0.25, 0.0, 0.75, -0.25, 1.0, 1.0, 0.5, -0.25, 0.75, -1.0, 0.25, -0.5, 0.0, -0.5, 0.25, 0.25, 0.5, 0.75, -0.75, -0.75, 1.0, -0.75, -0.75, 0.5, 0.75, 0.0, 0.0, 0.25, -0.25, 0.5, 0.5, 0.5, 1.0, 0.0, 1.0, 0.25, 0.25, -0.25, -0.25, -0.5, 1.0, -1.0, 0.0, -0.75, 1.0, -1.0, -1.0, 0.5, 0.5, -0.25, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    command_encoder001.insertDebugMarker("mymarker");
    texture200.destroy();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    query000.destroy()
    const command_buffer200 = command_encoder200.finish();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
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
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const array8 = new Float32Array([0.75, -1.0, 0.25, 0.75, 0.0, -0.25, 1.0, 0.75, 0.5, -0.25, -1.0, 0.75, -1.0, -1.0, -1.0, -1.0, -0.5, -0.75, 0.25, 1.0, 0.5, 0.25, -1.0, 0.0, 0.25, 0.5, -0.75, 0.0, -1.0, 0.75, 0.0, 0.0, -0.5, -0.25, -0.75, 0.0, -1.0, 0.75, 1.0, -0.5, -0.75, -0.5, -0.75, 0.75, -0.75, 0.75, -0.5, 0.25, 0.25, -0.75, 1.0, -0.75, 0.5, -0.5, 0.75, -0.5, 0.5, -0.25, 0.0, 0.0, 0.25, 0.75, 1.0, 0.25, -0.75, 0.75, -0.25, 0.0, 0.5, 0.25, -0.75, 0.0, -0.25, -1.0, 0.5, -0.75, 0.5, -0.25, 1.0, 0.5, 0.75, 1.0, 1.0, -0.5, -0.25, 0.75, -0.75, 0.0, -0.25, -0.5, 0.75, -0.25, 0.75, 0.75, -0.25, -0.25, -0.5, -0.5, 0.5, 1.0, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    texture202.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([-0.75, 0.25, 0.25, -0.25, 0.75, -0.5, 0.5, 1.0, -0.25, -0.75, 1.0, -1.0, 1.0, 0.75, -0.75, 0.75, -0.5, -0.25, 0.5, -0.25, 0.5, 0.25, 1.0, -0.5, 0.5, 0.5, 0.5, 0.5, 0.0, -0.75, 0.5, -0.25, -1.0, -0.5, -0.75, 1.0, -0.25, -1.0, 0.5, 0.5, 0.75, -1.0, -0.75, -0.5, -0.5, 0.75, -0.5, -1.0, -1.0, 0.0, -0.5, 0.75, 0.75, -0.25, -0.25, -0.75, 0.0, -1.0, -0.25, 0.0, 0.0, -1.0, 0.5, -0.5, 0.5, -1.0, -1.0, -0.5, 0.75, 0.0, 0.75, 0.5, -0.25, -0.5, 0.0, 1.0, 0.5, 0.5, 1.0, 0.0, 0.0, -0.25, 0.5, -0.25, -0.75, 1.0, -0.5, -1.0, 0.25, 0.25, 0.25, 0.0, 0.0, -0.5, 0.75, 0.75, -1.0, -0.5, 0.25, 0.0, ]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    
    device00.queue.submit([command_buffer000, ]);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    command_encoder201.copyTextureToTexture(
        {
            texture: texture203
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.pushErrorScope("validation");
    
    const array10 = new Float32Array([-0.25, -1.0, 0.0, 1.0, -0.25, 0.5, 0.0, -0.75, -1.0, -0.5, 0.75, 0.5, -0.5, 0.75, 0.5, 0.0, 0.75, -1.0, 0.75, -0.25, 0.25, -0.25, 1.0, 0.25, 0.0, -0.75, 0.25, -1.0, -1.0, 0.25, 0.5, 1.0, 0.0, 0.5, 0.5, -0.5, 0.25, -0.5, -0.75, -0.5, 0.0, -0.75, 0.5, 1.0, -1.0, 0.5, 1.0, 0.25, 0.5, -0.25, -0.75, -0.75, 0.75, -1.0, 0.5, 0.75, -0.75, -1.0, 0.5, 0.25, 1.0, 1.0, -0.75, -0.5, -0.5, 0.5, 1.0, 0.25, 0.0, -0.75, -0.75, 1.0, -0.75, 0.25, -1.0, 0.0, -0.75, 0.0, 0.0, 1.0, -1.0, -1.0, 0.5, 0.5, -0.5, -0.5, 0.75, 0.0, 0.75, -1.0, -0.25, 0.5, 0.0, 0.5, -0.5, 0.75, -0.25, 0.5, 0.5, -0.25, ]);
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.writeTexture({ texture: texture203 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer001.destroy()
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer203, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer204, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer204, 0, array8, 0, array8.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0010.popDebugGroup()
    const array11 = new Float32Array([0.5, -0.5, 0.25, 0.75, 0.25, 1.0, 0.0, -0.5, 0.75, 0.75, 0.5, -1.0, -0.75, 0.0, -0.5, 1.0, 0.0, 0.25, 0.0, 0.0, 0.0, 0.75, 0.0, -0.25, -1.0, -0.75, 0.0, -0.25, 1.0, -0.25, -0.75, -0.75, -0.25, 0.5, -0.25, 0.25, -1.0, 0.5, 0.25, 0.0, 0.75, -0.25, -1.0, -1.0, -0.25, -1.0, 0.5, 0.0, -0.75, 0.0, 0.25, -0.25, -0.75, 0.75, 0.5, -0.25, 0.0, -1.0, 0.5, 1.0, 0.0, 0.25, -1.0, 0.5, -0.5, -1.0, -0.25, 0.75, -0.5, 0.75, -0.25, -0.25, 0.25, -0.75, 0.5, 1.0, 0.25, 0.5, -0.25, -0.25, -0.5, -0.25, -0.75, -0.25, 0.25, 0.0, -0.25, -0.75, -0.5, -0.5, -1.0, 0.5, -0.75, 0.5, 0.0, 0.25, -1.0, -0.25, 0.0, 0.0, ]);
    buffer002.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
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
    device20.queue.writeBuffer(buffer205, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    texture001.destroy();
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer204, 0, array11, 0, array11.length);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    render_bundle_encoder001.popDebugGroup();
    
    
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const array12 = new Float32Array([-1.0, -0.25, -0.25, 0.75, 0.25, -0.25, -1.0, 0.25, -0.25, 1.0, 0.75, 0.25, -0.25, 0.5, 0.75, -0.75, 1.0, -1.0, 0.75, 0.5, 0.75, -0.25, -0.25, 0.75, 0.5, -0.5, 0.0, -1.0, -0.75, 0.75, 0.25, 0.25, 0.75, 0.0, 1.0, -0.5, -0.5, 1.0, -0.5, 0.0, -0.75, -0.25, 0.0, 0.25, 0.5, -0.25, -0.5, 0.0, -0.5, -0.25, 0.5, -1.0, -0.75, -0.75, -0.5, 0.0, 1.0, 0.75, 1.0, 0.75, 0.25, -1.0, -0.25, -1.0, 0.5, -0.5, -0.75, -1.0, -0.25, 0.0, 0.5, 0.75, 1.0, -0.75, -0.75, -0.75, 0.25, 0.0, -0.75, 0.5, -0.75, -0.5, -1.0, 0.75, 0.25, -0.75, -0.25, 0.0, 0.5, 1.0, 0.5, -0.25, -0.75, -0.25, 0.0, 1.0, -1.0, -0.5, 0.75, 1.0, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    texture201.destroy();
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
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
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    render_bundle_encoder200.setVertexBuffer(0, buffer201);
    
    
    device20.queue.writeBuffer(buffer203, 0, array10, 0, array10.length);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    
    buffer203.destroy()
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer205, 0, array12, 0, array12.length);
    query000.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
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
    device20.queue.writeTexture({ texture: texture203 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query201
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer005.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.queue.writeTexture({ texture: texture205 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array13 = new Float32Array([-0.25, -0.75, -1.0, 1.0, -1.0, 0.5, -0.5, 0.25, -1.0, -0.25, 1.0, 1.0, 0.0, -0.5, -0.75, 0.75, -0.25, 0.75, 1.0, 0.5, 0.25, -0.75, 0.5, -1.0, 0.0, 0.5, -0.25, 0.25, 0.25, 0.0, -0.25, 0.5, 0.75, 0.0, -1.0, -0.25, -0.5, 1.0, 1.0, -0.25, -0.5, 0.75, 0.0, 0.0, 0.25, 0.5, 0.25, 1.0, 0.75, -0.75, 0.5, -1.0, -1.0, -1.0, 1.0, 0.25, 0.0, 0.0, -1.0, 0.0, -0.25, -0.25, -0.75, -0.75, -1.0, -0.75, -0.5, -0.25, -1.0, -0.25, -0.75, -1.0, 0.25, -1.0, -1.0, -0.25, -0.75, -0.75, 0.0, 0.5, -0.25, -0.5, -0.25, -0.25, -0.5, -0.5, -0.25, 0.0, 0.25, 0.25, -0.25, 1.0, -1.0, 0.75, -0.25, 0.0, 1.0, 1.0, -0.5, -0.25, ]);
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    const array14 = new Float32Array([-0.75, 0.0, 0.0, -0.75, -0.5, 0.0, 1.0, -0.25, -0.75, -0.25, 0.75, 0.75, 0.5, 0.5, 0.25, -1.0, 0.75, 0.0, -0.75, 0.0, 0.5, 0.5, 1.0, -0.5, -1.0, -0.5, 1.0, 0.0, -0.5, -1.0, -1.0, 1.0, 0.5, 0.5, -1.0, -1.0, 1.0, 0.25, 1.0, 0.25, -0.5, 0.0, -0.25, 0.0, -0.75, 0.0, -0.25, -0.5, 1.0, 1.0, 0.25, -1.0, 1.0, 0.0, -1.0, -0.25, -0.75, -0.25, 1.0, 0.25, 0.5, 1.0, -1.0, 0.5, 1.0, -1.0, 0.75, 0.75, 1.0, 0.5, -0.25, 0.75, -0.5, 0.25, -0.25, -1.0, 0.5, 1.0, -1.0, 0.25, 0.0, -0.5, -0.5, -0.75, 0.5, -0.5, 0.75, 0.5, -0.25, 0.5, -0.75, -0.25, -1.0, 1.0, -0.75, 1.0, -0.5, -0.5, -1.0, 0.25, ]);
    render_pass_encoder2010.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer204, 0, array11, 0, array11.length);
    
    render_pass_encoder2010.beginOcclusionQuery(0)
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    render_bundle_encoder200.insertDebugMarker("marker");
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
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const array15 = new Float32Array([0.25, -0.5, -0.75, 0.5, 0.5, -0.75, -0.25, -0.5, 1.0, -0.25, 0.0, 0.0, 0.0, 0.75, -0.5, -0.5, -0.25, -0.5, -0.5, 1.0, -0.5, 0.0, -0.25, 0.75, -0.25, -0.75, -0.5, -0.25, -0.25, -0.75, 0.75, 0.75, -0.5, 0.25, -1.0, -0.75, -0.5, 0.5, 0.5, -0.75, 0.5, -0.75, 0.0, 0.0, 0.0, 1.0, 0.0, -1.0, 0.75, -0.75, 1.0, 1.0, 1.0, -0.75, 0.25, 0.5, -0.25, 0.75, 0.75, -0.5, -0.5, 1.0, 0.5, 0.0, 0.0, 0.25, -1.0, 1.0, 0.0, -1.0, -0.5, 0.5, 1.0, -0.25, 0.0, -1.0, -0.25, 1.0, 0.25, -0.5, -0.25, 1.0, -0.75, -1.0, -0.5, 0.0, 0.25, -1.0, -0.5, 0.75, 0.25, -1.0, -1.0, 1.0, -0.75, -0.75, 0.5, -0.75, -0.75, -0.5, ]);
    
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture204 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    texture002.destroy();
    command_encoder001.popDebugGroup()
    render_pass_encoder0020.insertDebugMarker("marker");
    buffer205.destroy()
    device20.queue.writeTexture({ texture: texture203 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view2042 = texture204.createView({ label: "texture_view2042" });
    render_bundle_encoder200.popDebugGroup();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    buffer204.destroy()
    buffer004.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture205 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    render_pass_encoder2010.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    render_pass_encoder0020.setPipeline(render_pipeline000);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    render_bundle_encoder001.setPipeline(render_pipeline002);
    render_bundle_encoder200.setIndexBuffer(buffer202, "uint16");
    
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder0020.insertDebugMarker("marker");
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.draw(3);
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device20.destroy();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
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
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group002);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    render_bundle_encoder002.setPipeline(render_pipeline002);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder000.setPipeline(render_pipeline001);
    {
        await buffer009.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer009.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer009.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder001.setVertexBuffer(0, buffer000);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder001.popDebugGroup();
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
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query001.destroy()
    buffer001.destroy()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder001.popDebugGroup();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    device00.queue.writeBuffer(buffer007, 0, array5, 0, array5.length);
    
    command_encoder300.insertDebugMarker("mymarker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.drawIndirect(buffer008, 0);
    buffer003.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setPipeline(render_pipeline002);
    device00.queue.writeBuffer(buffer0011, 0, array11, 0, array11.length);
    
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0031.setPipeline(render_pipeline001);
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
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
    
    device00.queue.writeTexture({ texture: texture003 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    render_pass_encoder0021.setPipeline(render_pipeline005);
    buffer007.destroy()
    
    query300.destroy()
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer009, 0, array11, 0, array11.length);
    
    texture003.destroy();
    device00.queue.writeBuffer(buffer0010, 0, array3, 0, array3.length);
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture201.destroy();
    device00.queue.writeBuffer(buffer004, 0, array11, 0, array11.length);
    render_pass_encoder0040.setPipeline(render_pipeline001);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer0010, 0, array13, 0, array13.length);
    device30.pushErrorScope("internal");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    render_bundle_encoder000.popDebugGroup();
    command_encoder001.clearBuffer(buffer009);
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    
    render_pass_encoder0050.setPipeline(render_pipeline005);
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer009, 0, array12, 0, array12.length);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    render_bundle_encoder001.finish();
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0041.setPipeline(render_pipeline005);
    
    query300.destroy()
    query300.destroy()
    render_pass_encoder0020.popDebugGroup();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0031.popDebugGroup();
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer0011
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query300.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer0010, 0, array11, 0, array11.length);
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0012, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0012, 0);
    device00.queue.writeBuffer(buffer003, 0, array11, 0, array11.length);
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    buffer0011.destroy()
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group003);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.setStencilReference(1);
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    
    query301.destroy()
    
    query301.destroy()
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    command_encoder006.copyBufferToBuffer(
        buffer000,
        0,
        buffer0013,
        0,
        400
    );
    command_encoder006.clearBuffer(buffer0011);
    device00.queue.writeBuffer(buffer009, 0, array15, 0, array15.length);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    buffer202.destroy()
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0010, 0, array15, 0, array15.length);
    command_encoder006.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer0012, 0, array5, 0, array5.length);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0041.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array12, 0, array12.length);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.popDebugGroup();
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group004);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0030.setVertexBuffer(0, buffer001);
    render_pass_encoder0031.setVertexBuffer(0, buffer0011);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    render_pass_encoder0060.setPipeline(render_pipeline005);
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group005);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0015, 0);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0060.setVertexBuffer(0, buffer0011);
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    render_pass_encoder0060.drawIndirect(buffer0012, 0);
    device00.queue.submit([]);
    render_pass_encoder0060.end();
    render_pass_encoder0020.popDebugGroup();
    const command_buffer006 = command_encoder006.finish();
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0041.setBindGroup(0, bind_group006);
    render_pass_encoder0041.setVertexBuffer(0, buffer0011);
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0041.draw(3);
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.end();
    const command_buffer004 = command_encoder004.finish();
    command_encoder001.popDebugGroup()
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder0030.draw(3);
    device40.queue.submit([]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer302, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer302, 0);
    render_pass_encoder0060.end();
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group007);
    render_pass_encoder0031.end();
    render_pass_encoder0040.setVertexBuffer(0, buffer003);
    render_pass_encoder0050.popDebugGroup();
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group008);
    render_pass_encoder0040.setIndexBuffer(buffer002, "uint16");
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder0040.endOcclusionQuery()
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0020.setVertexBuffer(0, buffer0011);
    render_pass_encoder0060.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0060.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    render_pass_encoder0020.end();
    const command_buffer001 = command_encoder001.finish();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder0060.draw(3);
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group009);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, ]);
    render_pass_encoder0050.setVertexBuffer(0, buffer001);
    render_pass_encoder0031.drawIndirect(buffer0017, 0);
    render_pass_encoder0050.drawIndirect(buffer0011, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0041.end();
    render_pass_encoder0040.draw(3);
    const command_buffer005 = command_encoder005.finish();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0041.drawIndirect(buffer0012, 0);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group0010);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0031.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0021.setVertexBuffer(0, buffer001);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0014, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.draw(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0060.drawIndirect(buffer0019, 0);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0021.drawIndirect(buffer0012, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0031.drawIndirect(buffer0012, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder0041.popDebugGroup();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0020.end();
    render_pass_encoder0050.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_pass_encoder0060.drawIndirect(buffer0015, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0031.draw(3);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    device00.queue.submit([command_buffer002, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer208, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0026, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer004, 0);
    device00.queue.submit([command_buffer002, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer303, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer303, 0);
    device30.queue.submit([]);
    render_pass_encoder0050.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0021.endOcclusionQuery()
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0031.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0028, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0060.drawIndirect(buffer0011, 0);
    device30.queue.submit([]);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0021.end();
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0060.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0050.drawIndirect(buffer007, 0);
    render_pass_encoder0021.end();
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0011);
    render_pass_encoder0041.drawIndirect(buffer0016, 0);
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

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0012, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer308, 0);
    render_pass_encoder0060.drawIndirect(buffer0016, 0);
    compute_pass_encoder2010.end();
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    device00.queue.submit([]);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0012, 0);
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0040.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0021.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0060.drawIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndirect(buffer0012, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0021.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0041.drawIndirect(buffer002, 0);
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
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    render_pass_encoder0021.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer004, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder0041.drawIndirect(buffer0011, 0);
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0020, 0);
    device00.queue.submit([command_buffer002, ]);
    device40.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0012);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndirect(buffer0012, 0);
    render_pass_encoder0050.drawIndirect(buffer0027, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0020.end();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0031.end();
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0013);
    render_pass_encoder0031.drawIndirect(buffer0016, 0);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.setIndexBuffer(buffer008, "uint16");
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
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    render_pass_encoder0040.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0012, 0);
    render_pass_encoder0021.drawIndirect(buffer0012, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    device00.queue.submit([]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0033, 0);
    compute_pass_encoder3000.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0021.setIndexBuffer(buffer0016, "uint16");
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3013, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3013, 0);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder3000.end();
    compute_pass_encoder3000.popDebugGroup()
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group202);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    compute_pass_encoder2010.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.drawIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexed(3);
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0014);
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    device40.queue.submit([]);
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0027, "uint16");
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3014, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3014, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
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
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    render_pass_encoder0050.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0022, "uint16");
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    device40.queue.submit([]);
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    device30.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    device40.queue.submit([]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0033, "uint16");
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
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
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.drawIndirect(buffer0036, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0060.drawIndirect(buffer0031, 0);
    device00.queue.submit([]);
    render_pass_encoder0031.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0016, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([]);
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0015);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer006, ]);
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

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0019, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer009, 0);
}