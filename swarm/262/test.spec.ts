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
    
    
    const array0 = new Float32Array([0.75, 1.0, -1.0, -0.5, -1.0, 0.5, -0.5, 0.25, -0.5, 0.5, 0.0, -0.5, 0.25, 0.25, 1.0, -0.25, 0.75, 0.25, 0.5, -0.75, 0.0, -0.75, -0.25, 0.0, 0.25, -0.75, 0.25, -0.75, 0.25, 0.75, -0.25, 1.0, -1.0, -1.0, -1.0, 1.0, 0.5, -0.5, 0.75, -0.75, 0.5, 0.5, -0.5, -0.75, 1.0, 0.5, -0.75, -0.75, -1.0, 0.0, 0.75, -0.25, -0.25, 0.75, -0.75, -0.75, -1.0, 0.25, -0.25, 0.0, 0.5, -0.5, -0.5, 0.25, -1.0, -1.0, 0.0, -0.5, 0.75, -1.0, -1.0, 1.0, 0.5, 0.25, 1.0, -0.75, 1.0, 0.25, 0.0, 0.5, 0.0, 0.5, -0.25, 0.25, -0.75, 0.75, 0.5, 0.0, 0.75, 1.0, 0.75, -0.25, 1.0, -0.5, 1.0, 0.0, 0.5, 0.75, 1.0, 1.0, ]);
    const array1 = new Float32Array([-1.0, 0.5, 0.25, 0.25, -0.75, -0.75, -0.75, 0.5, -1.0, 0.0, -1.0, -0.25, -0.5, 1.0, 0.5, 0.5, 0.5, -1.0, -1.0, 0.5, -1.0, -0.75, 0.5, -0.75, -0.5, -0.75, 0.5, -0.25, 0.25, 1.0, 0.25, 0.75, -0.25, 0.75, -1.0, -0.75, -0.5, 0.25, 0.25, 1.0, 1.0, -0.5, -1.0, -0.75, 0.5, 0.0, -1.0, 0.0, -0.25, -1.0, 0.75, -0.5, 1.0, -1.0, 0.75, 1.0, 0.75, 1.0, 0.25, 0.5, -0.5, -1.0, -0.5, 0.0, -0.5, 0.75, -0.25, 1.0, -1.0, -0.75, 0.5, -0.75, 1.0, -0.75, -0.25, 0.5, -1.0, -1.0, 1.0, 0.5, -0.25, 0.0, 0.5, -0.75, 0.75, -0.75, -1.0, 1.0, -0.5, 0.0, -1.0, 0.25, -1.0, 0.5, 0.5, 0.5, 0.25, 0.75, 0.0, 1.0, ]);
    const array2 = new Float32Array([0.25, 0.25, -0.25, -1.0, 0.5, 0.75, 1.0, -0.75, -1.0, 0.0, -0.5, -0.75, 0.0, 0.0, 0.5, 0.75, -1.0, 0.5, -1.0, 1.0, 0.0, -0.5, 0.5, 1.0, -1.0, 0.5, 0.75, -1.0, -1.0, -0.5, -0.75, 0.75, 1.0, 1.0, -1.0, 0.5, -0.75, -0.5, 0.75, 0.75, 0.25, -0.5, -1.0, -0.75, -0.5, -0.25, -0.75, -0.25, -1.0, -0.75, 0.5, 0.5, 0.5, 0.0, -0.25, 0.0, 0.5, 1.0, -0.5, -0.5, 0.75, -0.75, -1.0, 0.75, -0.75, 0.75, -0.75, -0.25, -0.75, 0.0, -0.75, 0.5, -0.75, 0.25, 0.5, 0.5, 0.25, 1.0, 0.0, -0.75, 0.75, 0.0, 1.0, -0.5, -1.0, -0.75, 0.0, -0.5, 1.0, -0.25, -0.5, -0.25, -0.5, -0.75, 0.5, -0.25, -0.75, 0.25, 0.25, -0.5, ]);
    
    const array3 = new Float32Array([-1.0, 0.25, 1.0, 0.0, 0.25, -0.25, 1.0, -0.5, -0.5, -0.75, -1.0, 0.5, -0.25, 0.25, -1.0, 0.75, 0.5, -0.5, 0.0, 0.5, 0.0, 0.25, -0.5, 0.0, 0.75, 0.0, 0.0, 0.5, 1.0, -0.5, 1.0, 1.0, 0.0, 1.0, 1.0, 0.75, -1.0, 0.25, 0.75, -0.75, 0.0, 0.75, -0.75, 1.0, -0.5, -1.0, -0.75, -1.0, -0.25, -1.0, 0.0, -0.25, 0.5, -0.25, 0.0, 1.0, -0.75, 0.5, -0.25, -1.0, 0.25, -0.25, 0.75, 1.0, -0.5, -0.5, 0.75, 0.0, 0.0, 0.75, 0.25, 0.75, 0.5, 0.75, -0.5, -0.25, 0.25, 0.0, 0.0, -0.25, 0.0, 0.0, -0.75, 0.25, -0.75, 0.0, 0.5, -1.0, -0.75, 1.0, 0.25, 0.5, -0.25, 1.0, 0.5, 0.75, 0.25, 0.5, 0.5, 1.0, ]);
    
    const array4 = new Float32Array([-0.5, -0.25, -0.5, 0.5, 0.5, 0.5, 1.0, -0.75, -0.25, 1.0, 0.75, 0.75, 1.0, -0.5, 0.5, -1.0, -0.75, 0.5, 0.75, 0.0, 0.5, -0.5, -0.25, 0.75, 1.0, 0.5, -1.0, 1.0, -0.75, 0.0, -1.0, -1.0, 0.25, -0.5, 0.25, -0.5, 1.0, -1.0, 0.5, 0.25, -0.5, -1.0, -0.75, -0.5, 0.0, 0.0, -0.5, -0.25, 1.0, -1.0, -1.0, -0.25, 1.0, -0.75, 0.75, 0.75, -0.5, 0.75, -0.5, 1.0, -0.25, 0.75, 0.25, 0.5, -0.25, 0.0, 0.25, -0.5, 1.0, 0.75, -1.0, -1.0, 0.5, -0.25, 1.0, 0.75, -0.5, 1.0, -0.5, 0.5, 0.5, 0.5, 1.0, 0.5, -0.25, 0.75, 0.25, 0.75, -0.25, -0.25, 0.0, -0.5, 0.25, 1.0, -1.0, -1.0, -0.5, 1.0, -0.25, -0.25, ]);
    
    const array5 = new Float32Array([1.0, -0.5, 0.25, 1.0, -0.25, 0.75, 0.0, 0.75, 0.5, 0.75, 0.5, -1.0, 0.25, 1.0, 1.0, 0.5, 0.25, 0.25, 0.75, 0.25, 0.75, -0.25, 0.5, -1.0, -1.0, -1.0, 1.0, -0.5, -0.5, -0.5, -0.5, -0.25, -0.5, -0.75, -0.75, 1.0, -0.75, 0.5, -1.0, -0.75, -1.0, 0.25, 0.5, -0.75, -0.5, 1.0, 0.0, 0.75, 0.0, 0.0, -1.0, 0.0, -0.25, -1.0, -0.5, 1.0, 0.75, -0.5, 0.75, 1.0, -0.25, 0.5, 0.0, 0.75, 1.0, -1.0, 0.25, 0.75, -1.0, 1.0, 0.5, 0.0, 0.0, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0, 0.75, 0.75, 1.0, 0.0, 0.5, -0.75, -0.5, -0.5, 0.0, 0.5, -0.25, -0.75, -1.0, 1.0, -0.5, 0.0, 0.25, -0.5, -0.5, 0.5, 0.75, ]);
    const array6 = new Float32Array([0.75, 0.75, 0.5, 0.25, 1.0, -0.25, 0.5, 1.0, -0.5, 0.0, 0.25, -1.0, 0.75, -0.75, -1.0, -0.5, -1.0, -0.25, -0.5, -0.75, 0.25, -0.25, -1.0, -0.5, 0.25, -0.25, 0.75, 1.0, 0.0, 1.0, -0.5, 0.0, 0.75, 0.5, 0.25, 0.0, 0.75, 0.75, -0.75, -0.25, -0.75, 0.5, -0.75, 0.0, 0.25, -0.5, 0.75, -0.25, 0.75, -1.0, 0.5, -0.75, -0.75, -1.0, -1.0, 1.0, 1.0, -0.5, 1.0, -0.25, 0.75, 0.0, 0.5, 0.25, -0.75, 1.0, -0.75, 1.0, -0.25, 0.25, -0.5, 0.75, -0.5, -0.5, -0.5, 0.0, -0.25, 0.5, -0.5, 0.5, 0.5, 0.0, -1.0, 0.0, 0.0, 0.0, 1.0, 0.5, 0.75, 0.0, 0.25, -0.5, 0.5, 0.0, 1.0, 1.0, -0.5, 0.0, 1.0, -0.75, ]);
    const array7 = new Float32Array([-0.5, 0.5, 0.0, 0.0, -0.25, 0.0, 1.0, -0.75, 0.25, 0.5, 0.5, -0.25, 1.0, -0.25, 0.75, -0.75, 0.75, 1.0, 0.75, 0.5, -0.5, -0.5, -1.0, -0.25, 1.0, 0.75, 0.0, -1.0, 0.75, -0.25, -1.0, 1.0, -0.25, 0.5, 1.0, -1.0, 0.0, -0.25, -0.75, -0.5, 0.75, -1.0, 1.0, -0.5, -0.75, 0.75, 0.75, -0.75, 0.0, -0.25, 0.25, 0.5, -0.75, -1.0, -1.0, -1.0, 0.0, 0.5, -1.0, 0.5, 0.5, 0.25, -0.25, -0.75, 0.25, -0.5, 1.0, 0.0, 0.5, 0.25, 0.25, 0.75, 0.0, 0.75, -0.75, -0.75, -0.75, -0.25, -0.5, -0.75, -0.5, -0.25, 1.0, -1.0, -0.5, 0.25, -0.5, 0.25, 1.0, 0.75, 0.75, 0.5, 0.0, -0.75, -1.0, 0.25, 0.25, 0.25, -0.25, -0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array8 = new Float32Array([0.75, 0.75, -0.5, -0.25, 0.5, -0.75, 1.0, 0.5, 0.5, 1.0, -1.0, -0.5, 1.0, 0.0, -0.25, 0.25, -1.0, 0.5, -0.5, 0.25, -1.0, 0.25, 0.5, 0.5, -0.5, -0.25, 0.25, 0.0, 0.75, -0.25, 0.0, 0.75, 0.25, -0.5, 1.0, 0.75, 0.75, -0.5, 0.5, 0.5, 1.0, -0.75, 0.25, 0.75, 1.0, 0.25, 0.5, -0.5, 0.25, -0.25, -1.0, -0.75, 1.0, 0.25, 0.0, 0.5, 0.75, 1.0, -0.5, 0.0, -0.75, 0.75, 0.75, 1.0, 0.5, 0.25, -0.75, -0.25, 0.5, 0.0, 0.5, 1.0, -1.0, -0.25, -0.5, 0.0, -0.25, 0.75, -0.5, 0.0, 0.5, -0.25, 1.0, 0.25, 0.5, 0.0, 0.0, 0.0, 0.25, -0.75, 0.0, -0.75, -0.75, 0.0, 0.0, -1.0, -0.5, 0.75, -1.0, -0.5, ]);
    buffer000.destroy()
    
    device00.pushErrorScope("internal");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    
    buffer002.destroy()
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array9 = new Float32Array([-0.75, -0.75, 0.0, 0.5, 0.75, 0.0, -0.75, 0.75, 0.5, -1.0, 0.0, 0.5, 0.25, -0.5, 1.0, 0.25, -0.25, -0.5, -1.0, 0.25, 0.5, -0.75, 0.75, -0.75, 0.25, 0.0, -1.0, 1.0, 0.75, 0.0, -1.0, 0.25, -0.5, 1.0, 0.5, 0.5, 0.0, -0.75, 1.0, 0.5, -1.0, -1.0, -1.0, 0.25, 0.5, -0.5, 0.0, 0.75, -0.75, -1.0, 0.0, -1.0, -0.5, 0.0, 0.75, 0.75, -0.25, 0.5, -0.25, 0.25, 0.25, -1.0, 0.5, 0.75, 0.5, -0.5, 0.0, 0.0, -0.25, -0.5, -0.75, 0.25, -0.5, 0.25, -0.75, -0.25, 0.0, 1.0, -0.25, -1.0, 0.0, 1.0, -1.0, -0.25, -0.5, 0.0, -1.0, 0.0, -0.25, -0.25, -0.5, -1.0, 0.0, 0.75, 0.75, 0.25, 0.5, 0.25, -0.25, 1.0, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array10 = new Float32Array([0.5, -0.5, -0.5, 0.25, -0.5, -0.5, -0.5, 1.0, 0.25, -0.5, -1.0, 0.5, 0.25, 0.5, -0.5, 0.5, 0.0, 0.5, -1.0, 1.0, 0.75, -0.25, -0.25, 1.0, -0.5, 0.25, -1.0, -0.5, -0.25, 0.0, -0.75, 0.25, 1.0, -0.75, 1.0, 0.75, -0.25, -0.25, -0.5, 0.0, -0.75, 0.5, -0.5, 0.5, -1.0, 0.0, 0.5, 0.75, -0.5, -1.0, 0.5, 0.25, -0.25, -0.5, 0.25, 0.25, -0.5, 0.5, 0.75, -1.0, 0.5, 0.5, -1.0, -0.5, 1.0, -0.5, 1.0, 0.75, -0.25, -1.0, 1.0, 1.0, -1.0, -0.25, 0.75, 0.0, -0.75, 0.0, -0.5, 0.75, -0.5, 1.0, -1.0, -0.25, 0.75, 0.5, 0.0, -0.75, 0.0, 0.75, 0.75, -0.25, -0.25, -1.0, -0.5, -0.5, 0.5, 1.0, -0.75, 0.5, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array11 = new Float32Array([1.0, 0.5, -0.25, 0.0, 0.5, 1.0, 0.5, -0.5, -1.0, -0.75, 0.5, -0.5, -1.0, 0.5, -0.5, 0.25, 0.5, 0.75, -0.75, 0.5, -0.5, 0.5, 0.75, 0.75, -1.0, 0.25, -0.5, 0.25, -0.75, -0.25, -0.75, 0.25, -0.75, -0.5, 0.25, 1.0, -0.25, 0.5, 1.0, -0.5, 0.0, 0.0, 0.75, -0.25, -0.75, -0.25, 1.0, 0.5, 0.25, 0.75, 0.75, 0.25, 0.5, 0.5, 0.5, 0.5, -1.0, 0.75, -0.5, 0.75, 0.25, 0.0, 1.0, 0.25, -0.25, -0.25, -0.5, -0.25, 0.75, 1.0, 0.0, -1.0, 0.0, 1.0, -0.25, -1.0, -0.25, 0.0, 0.25, 0.0, 0.25, 0.5, 0.5, 0.25, -0.75, 0.5, 0.5, 0.25, 1.0, -0.75, 1.0, -0.25, -1.0, -1.0, -0.75, 0.0, -0.25, 0.0, -1.0, 0.75, ]);
    device20.pushErrorScope("validation");
    command_encoder200.insertDebugMarker("mymarker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array12 = new Float32Array([0.0, -1.0, -0.25, 1.0, -0.5, -0.25, 0.5, -0.5, 0.0, 0.5, -1.0, 1.0, 0.0, -0.25, -0.25, -0.75, -0.75, 0.75, 1.0, 1.0, -0.25, 0.25, 0.0, 0.5, -0.5, -0.5, 1.0, 1.0, 1.0, -1.0, 0.0, 0.25, -0.75, 0.75, 0.0, -0.25, -1.0, -0.25, 1.0, -0.25, -0.5, 0.25, -1.0, -0.75, -0.75, -0.5, 0.25, -0.25, 0.75, -1.0, -0.25, 0.5, 0.5, -0.75, -0.5, -1.0, -0.5, -0.75, -0.25, -0.5, -0.75, 1.0, 0.0, 1.0, -0.5, 0.0, -0.75, 1.0, -0.25, 0.25, 0.5, -0.25, -0.5, 1.0, 0.0, -0.5, 0.5, -0.25, -0.25, -1.0, 0.5, 0.0, -0.5, -0.25, -0.25, -0.75, -0.75, 0.0, 0.25, -0.25, 0.5, -0.75, -0.75, -0.5, -0.5, -0.5, -1.0, 1.0, -0.75, -1.0, ]);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    texture201.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const command_buffer200 = command_encoder200.finish();
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    buffer100.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture200.destroy();
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    const array13 = new Float32Array([-0.25, 0.75, -0.5, 0.5, 0.25, 0.0, -0.25, 0.75, 0.0, -1.0, -1.0, 0.75, 0.25, 0.25, -0.75, -0.75, -1.0, -0.75, -0.25, -0.75, -1.0, -0.25, 0.0, -1.0, -0.25, -1.0, 0.25, -0.25, 0.25, -0.75, 0.75, -0.75, -0.25, -0.25, -0.25, -0.25, -1.0, -1.0, -0.5, 0.75, 0.5, -1.0, -1.0, 1.0, -1.0, 0.0, -0.75, 0.25, -0.25, 0.25, -0.25, -1.0, -0.25, 0.0, 0.5, 0.0, -0.5, 1.0, 0.5, -0.5, 1.0, 0.75, 0.75, 0.5, 0.0, -1.0, -0.75, 0.25, 0.5, -1.0, -1.0, 0.0, 1.0, 0.75, -0.5, 0.25, -0.25, -0.5, 0.0, 0.5, 0.25, 0.0, 0.25, 1.0, -1.0, 0.0, 0.25, 0.75, 0.25, 0.75, -0.25, 1.0, 0.75, 0.75, -0.75, -0.5, -0.75, 0.75, -0.25, 0.5, ]);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
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
    texture202.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
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
    
    
    device10.destroy();
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    device30.destroy();
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder2020.popDebugGroup()
    buffer200.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.submit([command_buffer200, ]);
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array14 = new Float32Array([-1.0, 0.25, -1.0, 0.5, 0.0, 0.25, 1.0, -0.25, -0.75, -0.5, 0.0, -1.0, -0.25, -1.0, 0.5, -0.25, -0.5, 0.75, 0.75, -0.25, -0.75, 0.75, -0.5, 1.0, -0.25, 1.0, 1.0, -0.75, 1.0, -0.75, 0.0, -0.75, -1.0, -0.75, -0.75, 1.0, -0.5, 0.75, 0.25, -0.75, -0.25, -0.5, -0.5, -0.5, -0.75, 0.75, 0.0, 0.25, 0.75, 0.5, 0.5, 0.0, 0.0, -0.5, 0.25, -0.75, 0.5, -0.25, 0.5, -0.25, 1.0, -1.0, -0.25, 0.25, -1.0, -0.25, 0.25, -0.25, 0.5, -0.5, 1.0, 1.0, -1.0, 0.5, -0.75, 0.5, -0.5, 0.25, -0.25, -0.25, -0.25, -1.0, -0.25, 0.5, -1.0, 0.0, 1.0, -1.0, 0.0, -0.75, -1.0, -0.75, 0.75, -0.25, -0.75, -0.5, -0.25, 0.75, 0.5, 0.5, ]);
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder203.insertDebugMarker("mymarker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    compute_pass_encoder2010.popDebugGroup()
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.pushErrorScope("internal");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2010.popDebugGroup()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    command_encoder204.insertDebugMarker("mymarker");
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    device20.pushErrorScope("internal");
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const command_buffer204 = command_encoder204.finish();
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder2030.popDebugGroup()
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2020.popDebugGroup()
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    
    
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    
    
    
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    
    compute_pass_encoder2010.popDebugGroup()
    
    
    const pipeline_layout2020 = device20.createPipelineLayout({ 
        label: "pipeline_layout2020",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    const pipeline_layout2021 = device20.createPipelineLayout({ 
        label: "pipeline_layout2021",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    texture203.destroy();
    device20.queue.writeBuffer(buffer203, 0, array10, 0, array10.length);
    
    
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer203, 0, array13, 0, array13.length);
    
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    device20.queue.writeBuffer(buffer203, 0, array10, 0, array10.length);
    
    device20.queue.writeBuffer(buffer203, 0, array8, 0, array8.length);
    
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    buffer203.destroy()
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.submit([command_buffer204, ]);
    buffer204.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer202.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture_view2042 = texture204.createView({ label: "texture_view2042" });
    const array15 = new Float32Array([1.0, 1.0, 0.5, -0.5, 0.25, -0.5, 0.75, -0.25, -1.0, -0.25, 0.0, -1.0, 0.5, -1.0, 0.75, 0.75, 0.25, 0.0, 0.0, 0.25, 0.75, -0.25, 0.75, 1.0, -0.5, -0.75, -1.0, -0.25, -0.5, 1.0, -0.5, 1.0, 0.25, -0.5, -0.75, 0.25, 0.5, 0.0, 0.25, -0.5, -0.75, 1.0, 1.0, 0.0, 0.75, -1.0, -0.25, -0.5, -0.5, 0.0, 0.5, 1.0, 0.25, 0.75, -1.0, 1.0, 1.0, 0.25, -0.5, 1.0, -0.5, -0.75, 0.5, 0.25, 0.75, -0.25, 0.25, 0.5, 1.0, 0.25, 0.25, 0.75, -0.75, -0.75, 0.75, -1.0, 0.75, -1.0, 1.0, 0.0, 0.75, 0.5, 0.5, 1.0, -0.25, -1.0, -0.75, -0.5, 0.75, -1.0, 0.0, -0.75, -0.25, -0.75, 0.5, -0.75, 0.5, 0.75, 0.0, -0.5, ]);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    
    const array16 = new Float32Array([0.75, -1.0, 0.5, 0.25, 1.0, -1.0, 0.75, 1.0, 0.0, 1.0, 0.25, -0.5, 0.75, -1.0, -0.75, -0.25, 0.0, 0.0, 1.0, -0.5, 1.0, -0.5, 0.75, 0.5, 1.0, 0.0, -0.5, -0.75, -0.5, 0.5, -1.0, 1.0, -0.5, 1.0, -1.0, -0.25, -0.5, -0.75, -1.0, -0.25, 1.0, -0.5, 0.25, -1.0, -0.25, -0.5, -0.75, 0.25, 0.25, 0.25, 1.0, 0.75, -0.5, -0.75, 0.75, 0.5, 0.75, 0.5, 0.5, 0.0, 0.75, -0.75, -0.25, 0.5, 1.0, 0.25, 0.5, 0.25, 0.0, -0.25, 0.0, 1.0, 0.25, 0.5, 0.0, 1.0, 0.25, -1.0, 0.75, 1.0, 0.25, 0.5, 0.25, -0.5, 1.0, -1.0, -0.25, 0.0, 0.25, 0.0, -0.25, -0.25, -0.25, -0.75, -0.75, 1.0, 1.0, 0.0, 0.5, -1.0, ]);
    
    
    device40.pushErrorScope("internal");
    const array17 = new Float32Array([-0.5, 0.25, 0.75, 0.75, 0.25, 0.75, -0.25, -0.25, -0.25, -0.5, 0.75, 0.75, 0.75, 0.75, 0.0, 0.25, 0.5, 0.75, -0.75, 0.75, -1.0, -1.0, -1.0, 0.75, -1.0, 0.0, -0.5, 0.25, 0.25, 0.0, 0.25, 0.5, 0.5, 1.0, 1.0, 0.25, -1.0, 1.0, 0.5, 0.75, 0.75, 1.0, 0.25, -0.75, -1.0, -1.0, 1.0, 0.75, 0.0, 0.75, -0.5, -0.75, -0.5, -0.5, 0.5, 0.0, 0.25, -0.75, 0.0, 0.25, -0.5, 0.25, -0.25, 0.25, -1.0, -1.0, 0.5, 1.0, 1.0, -1.0, 0.0, 0.0, 0.0, 0.5, -1.0, -0.75, 0.75, -0.5, -0.75, 0.75, 0.75, 0.0, 0.0, -0.25, 0.75, 0.25, -0.25, 1.0, -0.25, 1.0, 1.0, -0.75, 1.0, 0.25, 0.5, 1.0, 0.0, 0.0, 0.75, -1.0, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const array18 = new Float32Array([0.25, -0.25, -0.25, -0.75, 0.75, 0.75, -0.5, 0.25, -0.25, -0.75, 1.0, 0.75, 0.75, 1.0, -0.5, 1.0, -1.0, -0.75, -1.0, -1.0, -0.75, 0.75, 0.5, 0.0, -0.5, 0.25, 1.0, 1.0, -0.75, 0.0, -0.25, 0.0, 1.0, 0.75, 0.5, -1.0, -0.25, -0.75, -0.75, 0.5, -0.75, 0.25, 0.25, 1.0, 0.75, -0.75, 1.0, 0.75, 1.0, -0.75, 1.0, 0.75, -0.5, 0.5, -0.75, -0.5, 0.75, 0.0, -1.0, -0.25, 0.75, 1.0, -1.0, 1.0, -0.75, 0.75, 1.0, 0.75, 0.75, -0.5, 0.0, 0.25, -0.5, 0.0, -0.75, 0.25, -1.0, 0.75, 1.0, -0.25, -0.5, 0.75, 1.0, 0.75, -0.5, -0.25, -0.5, 0.0, 0.75, -0.75, 0.25, 0.5, -0.75, 0.25, -0.75, -0.25, -0.75, -0.5, 1.0, -0.75, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    device40.pushErrorScope("internal");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    const pipeline_layout2022 = device20.createPipelineLayout({ 
        label: "pipeline_layout2022",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout2023 = device20.createPipelineLayout({ 
        label: "pipeline_layout2023",
        bindGroupLayouts: [bind_group_layout204]
    });
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module2012,
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
            module: shader_module2012,
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
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    
    const pipeline_layout2024 = device20.createPipelineLayout({ 
        label: "pipeline_layout2024",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("validation");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture400.destroy();
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    buffer205.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout2025 = device20.createPipelineLayout({ 
        label: "pipeline_layout2025",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    compute_pass_encoder2020.popDebugGroup()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    texture204.destroy();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder2030.popDebugGroup()
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    
    const compute_pass_encoder2080 = command_encoder208.beginComputePass({ label: "compute_pass_encoder2080" });
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array19 = new Float32Array([0.75, -0.25, 0.25, -0.75, 1.0, 0.5, -0.75, 0.0, -0.25, 0.75, -0.5, -0.25, 0.5, -0.25, 0.25, -0.75, 0.5, 0.5, 0.25, 0.25, 0.5, -0.25, -1.0, 0.75, 0.0, 0.25, -1.0, 0.5, -0.25, -0.5, 0.75, -0.25, -0.25, -0.5, 0.75, 1.0, 0.25, 0.25, 1.0, 1.0, -0.25, -1.0, -0.75, 0.25, 0.5, -0.75, -1.0, 0.0, -0.75, -0.25, 0.75, 0.0, 1.0, -0.5, 0.5, -0.5, 0.75, 0.75, 0.75, -1.0, 0.25, 0.0, -0.25, -0.75, -0.25, 1.0, 0.25, -0.25, -0.25, -0.25, 1.0, 0.25, -1.0, -0.75, -0.25, 1.0, -0.25, -0.5, -0.5, -0.75, -1.0, -1.0, 0.25, 1.0, -0.5, 0.75, 1.0, 0.5, -1.0, 0.0, 1.0, 0.25, 0.25, -1.0, -1.0, -1.0, 0.25, 0.0, 0.25, 0.75, ]);
    const array20 = new Float32Array([-0.25, 0.0, -0.25, 1.0, 0.25, -0.5, 0.0, 0.0, -0.75, -1.0, -0.5, 0.75, -0.5, 0.75, -0.75, 0.0, 1.0, 1.0, 0.75, 0.5, -1.0, 0.25, -0.5, -0.5, 0.75, 0.5, -1.0, 0.0, -1.0, 0.75, 0.75, 0.75, 0.75, 0.25, 0.75, 1.0, 0.75, -1.0, -0.75, -0.75, 0.25, -0.25, -0.75, -1.0, -0.5, 0.25, -0.5, 1.0, 0.75, 1.0, 0.5, -0.25, 0.5, 0.25, 0.75, 0.0, -0.75, 0.25, 0.0, -0.75, -0.75, 1.0, 0.0, 0.5, -0.5, 1.0, -0.25, -1.0, 1.0, -0.5, -0.5, 0.5, 0.0, -0.75, 0.75, 1.0, 0.75, 0.75, 0.5, 0.0, -0.25, -0.25, 0.5, -0.75, 0.25, -0.5, 1.0, -0.75, 0.75, 0.75, -0.75, 0.25, -1.0, 0.75, 0.5, 0.5, 0.0, -0.5, -0.5, 0.0, ]);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module2013_code = "";
    try {
        shader_module2013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2013 = await device20.createShaderModule({ label: "shader_module2013", code: shader_module2013_code })
    compute_pass_encoder2060.pushDebugGroup("group_marker")
    
    
    buffer401.destroy()
    const command_encoder209 = device20.createCommandEncoder({ label: "command_encoder209" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture402 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder209.insertDebugMarker("mymarker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
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
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device40.queue.writeTexture({ texture: texture402 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture402 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    texture402.destroy();
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
        vertex: {
            module: shader_module2010,
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
            module: shader_module2010,
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const command_buffer400 = command_encoder400.finish();
    device40.pushErrorScope("out-of-memory");
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    
    buffer402.destroy()
    var shader_module2014_code = "";
    try {
        shader_module2014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2014 = await device20.createShaderModule({ label: "shader_module2014", code: shader_module2014_code })
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    
    
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    const command_buffer209 = command_encoder209.finish();
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    
    const pipeline_layout2026 = device20.createPipelineLayout({ 
        label: "pipeline_layout2026",
        bindGroupLayouts: [bind_group_layout202]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder2060.popDebugGroup()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout2027 = device20.createPipelineLayout({ 
        label: "pipeline_layout2027",
        bindGroupLayouts: [bind_group_layout203]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    const pipeline_layout2028 = device20.createPipelineLayout({ 
        label: "pipeline_layout2028",
        bindGroupLayouts: [bind_group_layout203]
    });
    const command_buffer207 = command_encoder207.finish();
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    compute_pass_encoder2080.pushDebugGroup("group_marker")
    device20.queue.submit([command_buffer209, ]);
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    command_encoder401.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer206, 0, array4, 0, array4.length);
    const array21 = new Float32Array([0.0, -1.0, 1.0, -1.0, 0.5, -0.75, 0.25, 0.75, 0.5, -0.25, 1.0, 0.5, 0.0, 0.25, -1.0, 0.75, -1.0, 0.75, -0.25, 0.5, 1.0, 0.5, -0.75, 0.25, -1.0, -0.25, -0.75, 0.0, 1.0, -1.0, -0.5, 1.0, -0.25, -0.5, -1.0, -0.25, 0.5, 0.5, -1.0, -0.75, -0.75, 0.0, 0.5, -1.0, 1.0, -0.5, -1.0, 0.0, -0.25, -0.25, -0.75, 1.0, -1.0, -0.5, -1.0, 1.0, 0.5, 0.75, 0.25, -0.5, 0.75, 0.5, -0.75, 0.25, 0.0, 0.75, 1.0, -0.5, -0.25, 0.0, 0.75, -0.5, -0.25, 0.0, -0.75, -1.0, -0.25, 0.75, -0.5, -0.25, -1.0, -0.25, -1.0, -0.75, 0.0, -1.0, 0.75, -0.75, 0.5, -0.25, 1.0, 0.75, 0.75, 0.25, -0.25, -0.5, 0.25, 0.5, -0.5, 0.75, ]);
    
    device20.queue.writeBuffer(buffer206, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer206, 0, array21, 0, array21.length);
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device20.pushErrorScope("out-of-memory");
    device20.queue.writeBuffer(buffer206, 0, array18, 0, array18.length);
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    const pipeline_layout2029 = device20.createPipelineLayout({ 
        label: "pipeline_layout2029",
        bindGroupLayouts: [bind_group_layout201]
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    var shader_module2015_code = "";
    try {
        shader_module2015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2015 = await device20.createShaderModule({ label: "shader_module2015", code: shader_module2015_code })
    device20.queue.writeBuffer(buffer206, 0, array15, 0, array15.length);
    
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    
    
    
    
    device20.queue.writeBuffer(buffer206, 0, array16, 0, array16.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    const array22 = new Float32Array([-0.25, -0.5, 1.0, -0.75, -0.5, -0.75, -0.25, 0.0, 0.5, 0.0, 0.25, 0.25, -0.5, -0.75, 0.75, 0.5, -0.25, -0.75, -0.25, -0.75, 0.75, 0.75, -0.75, 1.0, -1.0, 0.5, 0.0, 0.5, -0.5, -0.75, -0.5, 0.0, -0.25, 0.75, 0.0, 0.0, -1.0, 0.0, 0.0, -1.0, -1.0, -1.0, 0.5, -0.25, 0.0, 0.0, -1.0, 0.25, 0.25, 0.25, -0.25, 0.5, 0.5, -0.25, 1.0, -0.5, 0.25, 0.5, 0.5, 0.0, -0.25, 0.75, 1.0, -0.25, -0.75, 0.5, -0.75, 0.5, 0.25, 1.0, 0.5, 1.0, 0.75, 0.5, 0.0, 0.5, 0.0, -1.0, -1.0, 0.25, 0.0, -1.0, 1.0, -0.25, 1.0, 0.25, -0.5, 0.5, 0.5, -1.0, -0.5, 0.5, -1.0, 0.0, 0.25, -0.25, -0.25, 0.0, -0.25, -0.75, ]);
    command_encoder600.insertDebugMarker("mymarker");
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const pipeline_layout2030 = device20.createPipelineLayout({ 
        label: "pipeline_layout2030",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pipeline2016 = device20.createRenderPipeline({
        label: "render_pipeline2016",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    buffer400.destroy()
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
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device20.queue.submit([command_buffer207, ]);
    
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    {
        await buffer206.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer206.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer206.unmap();
        console.log(new Float32Array(data));
    }
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer600.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array23 = new Float32Array([-1.0, -0.5, -0.5, -0.25, 0.0, -0.5, -0.5, 0.75, -0.75, 0.5, 0.25, 0.0, 0.0, 0.25, 0.5, 1.0, 0.75, 0.25, 0.0, 0.5, 1.0, 0.25, 1.0, -0.25, 1.0, 0.5, 0.25, -0.75, -1.0, -0.5, -0.75, 0.5, 1.0, 0.0, 0.75, 0.25, 0.0, -0.25, 0.0, -1.0, -0.5, 0.25, 1.0, 0.25, -0.75, -0.75, 0.25, 0.5, 0.5, 1.0, 0.75, 0.0, -1.0, 0.25, 0.25, 0.0, -1.0, 0.5, -0.5, -0.75, -0.5, -0.5, 0.25, -0.75, -0.75, 0.75, -0.25, -1.0, -0.5, -1.0, 0.5, 0.75, 0.5, -1.0, 1.0, -1.0, 0.0, -1.0, -0.25, -0.25, -0.25, 0.0, 0.25, 0.25, 0.5, 0.0, -0.75, 0.75, -0.5, 0.25, -0.5, -0.5, 0.5, 0.75, -0.25, -0.25, 0.75, -0.75, 0.25, 1.0, ]);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const command_buffer700 = command_encoder700.finish();
    compute_pass_encoder2080.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    device70.queue.submit([command_buffer700, ]);
    device40.queue.submit([command_buffer401, ]);
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder2010.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer501 = command_encoder501.finish();
}