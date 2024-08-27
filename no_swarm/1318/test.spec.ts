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
    
    
    const array0 = new Float32Array([-0.5, -0.5, 0.0, -0.5, -1.0, 1.0, 0.75, -1.0, 0.5, 1.0, -0.5, 0.75, -0.5, 1.0, 0.75, 0.0, -0.25, -0.75, 0.25, 1.0, 0.5, -0.25, -1.0, -0.75, 0.25, 0.5, -0.75, 0.5, -0.5, 1.0, 0.25, -0.25, 0.25, -0.5, 1.0, 0.75, 1.0, 1.0, 0.0, 0.0, -0.75, -1.0, -0.25, -0.75, 0.75, -0.5, -1.0, -0.25, -1.0, 0.0, 0.25, 1.0, -0.75, 0.0, 1.0, -0.5, 0.25, -0.5, 0.5, 0.0, -0.75, 0.0, 0.5, 0.75, -1.0, -1.0, 0.5, 0.5, 0.0, -0.75, 0.25, -0.25, 0.0, 0.5, 0.5, 1.0, -0.75, 1.0, 0.25, -0.5, -0.5, 0.75, -0.25, -0.5, 0.75, 1.0, -0.75, -0.25, -0.75, -0.5, 0.0, -0.5, -0.5, 0.75, 0.5, -0.25, -0.75, 0.5, 1.0, 0.5, ]);
    const array1 = new Float32Array([-1.0, 0.0, -0.75, 0.25, -0.75, 0.0, -0.25, 0.5, 0.0, 0.5, -0.5, -0.75, 0.5, 1.0, -1.0, -0.75, 1.0, -0.75, 0.25, -0.5, 0.0, 0.5, -0.5, 1.0, -1.0, -0.25, -0.5, -1.0, 1.0, 0.75, 0.25, 0.75, -0.75, 0.25, 0.75, 0.0, 1.0, 0.75, 0.5, -0.5, -0.75, 0.25, -0.75, -0.25, -0.25, 0.75, -1.0, 1.0, -0.25, 0.75, -0.25, 0.25, 0.25, -1.0, -1.0, 0.5, 0.5, -1.0, 0.25, -0.75, 0.5, -1.0, -1.0, 0.25, 0.5, 0.5, -1.0, 0.5, -1.0, 1.0, -1.0, 0.75, 1.0, -0.5, 0.5, 0.5, -0.5, 0.5, 0.0, 0.75, -0.5, -1.0, 1.0, 0.25, -1.0, 0.25, -1.0, 0.75, -0.75, 1.0, -0.25, 0.5, -0.5, 0.0, 1.0, -0.75, -1.0, -0.75, -0.25, 0.5, ]);
    const array2 = new Float32Array([0.25, -1.0, 1.0, -0.5, -0.25, -0.5, 0.25, 1.0, -1.0, 0.25, 0.5, 0.25, 1.0, -1.0, -1.0, -0.75, 1.0, -1.0, 0.5, 0.5, -0.75, 0.25, -0.75, 1.0, -1.0, -0.75, -0.5, 0.0, 1.0, -1.0, 0.0, 0.75, -0.25, 0.75, -0.5, 1.0, 1.0, -0.25, 0.5, -0.5, -0.75, -0.75, -0.5, 0.5, -0.5, -0.25, 0.25, 0.5, 0.0, 0.5, 0.0, 0.0, 0.75, -0.5, -0.5, -0.25, 0.75, -0.75, -1.0, 1.0, 0.5, -0.25, -0.5, 1.0, -0.5, 0.25, -0.5, -0.5, 0.75, 0.75, -0.5, -1.0, 1.0, -0.5, -0.5, -0.75, -0.25, 0.0, -0.25, -0.5, -0.5, -0.75, 1.0, -0.5, -0.25, 0.0, -1.0, 0.25, 0.5, -1.0, 0.75, 0.25, 0.5, -0.75, 0.75, 0.75, 0.25, -0.25, -0.5, -0.75, ]);
    
    const array3 = new Float32Array([-0.25, -0.75, -0.75, -0.5, -0.75, 0.5, 0.25, -0.25, 0.0, -1.0, -1.0, -0.5, -0.25, 1.0, -0.5, 0.75, 0.5, -0.75, -0.5, -0.5, 0.25, 0.0, -0.75, 1.0, 0.5, 0.5, -1.0, -0.75, -0.5, -0.75, 0.75, 0.75, 0.25, -0.75, -0.75, 0.75, 0.0, 0.25, -0.5, -0.75, 0.0, 0.25, -0.5, -0.5, 0.75, 0.0, -0.5, 1.0, 0.25, -0.75, -1.0, 1.0, -0.25, -0.25, -0.75, 1.0, 0.0, 0.25, -0.5, 0.25, 1.0, 0.0, -0.5, 0.0, -1.0, -0.75, 0.0, -1.0, -0.75, 0.25, 0.75, -0.75, -0.75, 0.5, -0.5, 0.0, 0.5, -1.0, 0.25, -0.25, 1.0, 0.5, 0.25, 0.0, 0.75, -0.5, 0.75, 0.0, -1.0, -0.25, 0.25, 1.0, 0.75, 0.5, -1.0, 0.5, -0.5, 1.0, -0.75, 1.0, ]);
    const array4 = new Float32Array([0.75, 0.5, -0.75, 1.0, -0.75, 0.0, -0.75, -1.0, 0.25, 0.0, -0.75, 0.5, -0.75, 0.0, -0.75, -0.5, 1.0, 1.0, -0.25, -0.5, 1.0, -0.75, -0.75, 1.0, -0.5, 0.75, 0.0, 0.5, -0.5, -0.75, -0.5, 1.0, -0.5, 0.0, -0.25, -0.25, -0.75, 0.0, 0.75, -0.75, 0.5, 0.25, 1.0, -0.25, 1.0, -0.25, -0.25, -0.5, 1.0, 0.5, -0.75, -0.5, 0.0, 0.75, 0.75, 0.5, 1.0, 0.75, 0.25, -0.75, 0.0, 0.25, 0.5, 0.0, 0.25, -0.25, 1.0, 0.5, -0.5, -0.75, -0.25, 0.0, 0.25, 0.5, 0.5, -0.5, 0.0, 0.0, -0.5, 0.25, 0.5, 0.75, -0.5, 0.5, -0.75, -1.0, -1.0, 0.5, 0.75, 1.0, -0.75, -1.0, 0.5, -0.75, 0.0, 0.5, 0.75, -1.0, -0.25, 0.0, ]);
    const array5 = new Float32Array([-0.5, 0.5, 0.75, 0.25, -0.25, 1.0, 0.0, 0.75, 0.75, -0.25, 0.0, -1.0, -0.25, -0.25, -0.5, -0.5, 0.75, -0.5, 0.25, 0.75, -1.0, 1.0, 1.0, -0.25, -0.25, -0.5, 0.5, 1.0, 0.25, 0.5, -0.5, -1.0, -0.25, -0.25, 0.25, 0.0, 0.0, -0.5, -0.75, 0.0, 0.75, -0.5, 0.75, 0.0, 0.75, 0.75, 0.25, -0.25, 0.5, 0.0, 0.0, -0.25, -0.75, 1.0, 0.25, 0.5, 0.5, 0.75, 0.0, -0.75, 1.0, 1.0, -1.0, -0.5, -0.5, 0.0, -0.75, -0.5, -1.0, 0.75, -0.25, -0.5, 0.5, 0.75, 0.25, 1.0, -0.5, 1.0, 0.25, -0.5, 0.0, 0.5, 0.0, 0.5, 0.75, -1.0, -0.5, -1.0, 0.25, -0.25, 0.5, 0.75, 0.25, 0.5, -0.5, 0.75, 0.0, 1.0, 0.75, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array6 = new Float32Array([-1.0, 0.75, -0.25, 0.25, -0.75, 0.0, -0.25, 1.0, 1.0, 0.0, -0.75, 0.0, -0.25, 0.25, -0.5, -0.75, 0.25, 0.75, 0.5, -0.75, 1.0, -1.0, 0.0, -0.25, -1.0, 1.0, 0.75, -1.0, -0.5, 0.25, 0.0, 0.25, -0.25, 1.0, 0.5, 0.75, 1.0, 0.25, -0.5, -0.5, -1.0, 0.0, -1.0, -0.25, 0.5, -0.5, 0.75, 0.75, 0.75, 0.25, 0.25, 0.75, -0.5, 0.5, 0.5, -1.0, -1.0, -0.25, -0.5, -0.25, 1.0, -0.5, 1.0, -0.75, -1.0, -1.0, 0.75, -0.75, -0.5, 0.0, 0.25, -0.75, 0.0, 0.75, -0.75, 0.75, 0.75, 1.0, -0.25, 0.25, 0.5, -0.25, -0.75, 0.25, -0.25, -0.75, -0.25, -0.5, 0.5, -1.0, 0.5, -0.25, -0.25, 0.5, 1.0, -0.25, 1.0, -0.25, -1.0, 0.5, ]);
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    const array7 = new Float32Array([-0.5, 0.5, -0.75, 1.0, -1.0, 1.0, 0.25, -0.5, 1.0, -0.75, 0.5, -1.0, 1.0, -0.75, 0.25, 0.75, 1.0, 0.0, 1.0, 0.0, 0.5, 0.75, -1.0, 0.5, -1.0, -0.25, 0.75, 0.75, 0.0, -0.75, -0.5, -0.5, 0.0, -0.5, 1.0, -0.5, -0.25, 0.75, 0.25, 0.25, -0.75, 0.5, -0.5, -0.5, 1.0, -0.75, 0.0, -0.25, -1.0, -0.75, -0.75, 0.75, 0.75, -0.5, -0.5, -1.0, -1.0, -0.5, 1.0, 1.0, 0.0, -0.25, 0.25, -0.25, 0.5, 1.0, 0.0, 0.75, -0.75, 0.5, 0.0, 0.0, -0.75, 0.75, -0.75, -0.5, -1.0, 0.75, -0.5, 0.75, 0.25, 0.0, 1.0, 0.5, -0.5, 1.0, 0.75, -1.0, 0.25, 0.75, 0.75, 1.0, -1.0, 0.75, 0.0, 0.0, -1.0, 0.75, 0.0, -1.0, ]);
    command_encoder000.insertDebugMarker("mymarker");
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    query000.destroy()
    buffer000.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.pushErrorScope("internal");
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const array8 = new Float32Array([0.0, -0.5, 1.0, 0.5, 0.75, 0.0, 0.25, 0.75, 1.0, 0.25, 1.0, -0.75, -0.75, -0.25, 1.0, -0.5, -0.5, 0.75, -0.75, -0.25, 0.25, -0.25, -1.0, 0.5, -0.75, 0.5, -0.5, -0.75, 0.75, -1.0, 0.75, -1.0, 0.0, -0.75, -0.75, 0.5, 0.0, -0.75, -0.75, -0.75, -0.25, -1.0, 0.0, 0.5, -0.75, -0.75, -0.5, 0.25, -1.0, -0.5, 0.25, 0.0, 0.5, -0.25, 0.25, -0.75, -0.5, 0.75, 0.75, -0.5, 0.25, 1.0, 0.25, -0.5, 1.0, 0.5, -0.75, -0.5, -0.5, 0.25, 0.5, -0.75, -0.75, -0.25, 0.75, -0.25, 0.0, 0.0, -0.25, 0.5, 1.0, -0.25, -0.25, -0.25, 0.5, 0.25, 0.25, 0.5, 1.0, -0.5, 1.0, -0.5, 0.5, 0.0, 0.25, 0.75, 0.0, 0.5, 1.0, 0.0, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.pushDebugGroup("mygroupmarker")
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
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture000.destroy();
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    query000.destroy()
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    command_encoder002.insertDebugMarker("mymarker");
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    
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
    render_bundle_encoder000.setPipeline(render_pipeline000);
    compute_pass_encoder0001.insertDebugMarker("marker")
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    
    
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
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
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder001.setPipeline(render_pipeline008);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query000.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device00.pushErrorScope("out-of-memory");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query100.destroy()
    query001.destroy()
    buffer001.destroy()
    query002.destroy()
    buffer002.destroy()
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.popDebugGroup();
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    compute_pass_encoder0001.popDebugGroup()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    device30.destroy();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer100 = command_encoder100.finish();
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer003.destroy()
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    
    const array9 = new Float32Array([-0.5, 0.75, -1.0, 1.0, -0.25, 0.0, 0.0, 0.75, 0.75, 0.25, 0.25, 0.0, -1.0, 0.25, -0.25, -0.5, 1.0, 0.75, -0.5, 0.75, -0.25, 0.0, 1.0, -1.0, -1.0, 0.0, -0.25, 1.0, -1.0, 0.5, -0.5, 0.25, 0.5, 0.25, 1.0, -0.75, 0.0, 0.0, 0.75, 1.0, 0.5, -0.25, -0.25, -1.0, 0.5, 0.5, 0.75, 0.5, -0.75, 0.0, 0.5, -0.5, 0.0, 0.75, 0.75, 0.75, 0.25, -0.5, -0.5, 0.75, -1.0, -0.25, -0.25, 0.25, 0.0, 0.25, 0.0, -0.5, -0.75, 1.0, -0.5, -1.0, 0.0, 0.0, 0.0, 0.75, -0.5, 0.75, -1.0, -0.75, -0.25, -0.75, -0.5, 1.0, 0.5, -0.5, 0.75, -0.25, 0.0, 0.25, -0.5, -0.25, 0.5, 0.75, -0.5, 0.25, 0.0, -0.25, 0.5, -0.25, ]);
    
    
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    query100.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const array10 = new Float32Array([0.0, -0.75, 0.75, 0.75, 0.0, -0.25, 0.25, -0.75, 0.75, -1.0, -0.25, 0.25, 0.25, 0.5, -0.25, -0.75, 0.0, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0, 1.0, -0.75, -0.75, 1.0, 0.0, 0.0, 0.75, 0.75, -1.0, -1.0, -1.0, 0.75, -0.5, 0.75, 1.0, 0.0, -1.0, -0.25, -0.75, 0.75, 0.0, 0.75, 0.25, -1.0, 1.0, 0.75, -0.5, -0.25, 0.75, -1.0, -0.5, 0.5, 0.75, -0.25, 1.0, 0.0, -0.75, -0.25, 0.25, 0.25, -0.25, 0.25, 0.25, 1.0, 0.0, -0.5, 0.0, -0.75, 0.75, -0.25, -0.25, 0.25, -0.25, -0.75, -0.75, 0.25, 1.0, 1.0, 0.75, 0.25, 0.0, 0.75, 1.0, 0.0, -1.0, 0.0, -1.0, 0.0, -1.0, 0.75, -0.25, 0.5, 0.5, 0.25, 0.75, -0.25, -0.75, ]);
    
    render_bundle_encoder102.insertDebugMarker("marker");
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    compute_pass_encoder0020.popDebugGroup()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    query100.destroy()
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query001.destroy()
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder001.setVertexBuffer(0, buffer003);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    query001.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    device00.queue.writeBuffer(buffer003, 0, array10, 0, array10.length);
    query102.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    render_bundle_encoder001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0000.setPipeline(render_pipeline007);
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    const command_buffer101 = command_encoder101.finish();
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query003.destroy()
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
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
    
    render_bundle_encoder001.drawIndirect(buffer002, 0);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query003.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    query103.destroy()
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    query000.destroy()
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
    buffer004.destroy()
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
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    device00.queue.writeBuffer(buffer007, 0, array4, 0, array4.length);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer002.destroy()
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer009,
        0
    )
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder0040.insertDebugMarker("marker")
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    
    
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
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
    texture001.destroy();
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    buffer007.destroy()
    
    query100.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline101);
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
    device00.queue.writeBuffer(buffer005, 0, array7, 0, array7.length);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer009,
        0
    )
    command_encoder004.resolveQuerySet(
        query005,
        0,
        32,
        buffer009,
        0
    )
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    query102.destroy()
    const render_pipeline0020 = device00.createRenderPipeline({
        label: "render_pipeline0020",
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16sint",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder001.drawIndirect(buffer002, 0);
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    buffer005.destroy()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_bundle_encoder102.popDebugGroup();
    const render_pipeline0021 = device00.createRenderPipeline({
        label: "render_pipeline0021",
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0040.setPipeline(render_pipeline002);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0001.insertDebugMarker("marker")
    
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    render_bundle_encoder000.setVertexBuffer(0, buffer003);
    render_bundle_encoder000.draw(3);
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group003);
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    device00.queue.writeBuffer(buffer009, 0, array7, 0, array7.length);
    query000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0050.setPipeline(render_pipeline003);
    query101.destroy()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer008.destroy()
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    
    command_encoder005.copyBufferToBuffer(
        buffer0011,
        0,
        buffer004,
        0,
        400
    );
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.setPipeline(render_pipeline102);
    query100.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query006
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder102.setPipeline(render_pipeline101);
    
    render_pass_encoder0040.setVertexBuffer(0, buffer003);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder006.resolveQuerySet(
        query006,
        0,
        32,
        buffer006,
        0
    )
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder006.resolveQuerySet(
        query006,
        0,
        32,
        buffer008,
        0
    )
    query002.destroy()
    
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query004
    });
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    command_encoder000.clearBuffer(buffer009);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder0001.setPipeline(render_pipeline0015);
    render_bundle_encoder001.drawIndexedIndirect(buffer002, 0);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    device00.queue.writeBuffer(buffer0011, 0, array2, 0, array2.length);
    
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0001.setStencilReference(1);
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    buffer0011.destroy()
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0060.setPipeline(render_pipeline000);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0051.setPipeline(render_pipeline0014);
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
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture101 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group004);
    texture101.destroy();
    query104.destroy()
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0060.setStencilReference(1);
    
    compute_pass_encoder0040.popDebugGroup()
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    query105.destroy()
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0051.setStencilReference(1);
    render_bundle_encoder002.setVertexBuffer(0, buffer003);
    render_pass_encoder0041.setPipeline(render_pipeline0013);
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder0001.insertDebugMarker("marker")
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0060.insertDebugMarker("marker");
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    query006.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0001.pushDebugGroup("group_marker");
    
    
    const render_pipeline0022 = device00.createRenderPipeline({
        label: "render_pipeline0022",
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
    render_pass_encoder0051.pushDebugGroup("group_marker");
    
    
    
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    render_pass_encoder0001.insertDebugMarker("marker");
    
    render_bundle_encoder002.drawIndirect(buffer002, 0);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_pass_encoder0041.setStencilReference(1);
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
    
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0013, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0000.setVertexBuffer(0, buffer003);
    render_pass_encoder0040.drawIndirect(buffer0012, 0);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline0015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group005);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline0013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0041.setBindGroup(0, bind_group006);
    compute_pass_encoder1010.popDebugGroup()
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group007);
    device00.queue.submit([]);
    render_pass_encoder0041.setVertexBuffer(0, buffer003);
    render_pass_encoder0060.setVertexBuffer(0, buffer0019);
    render_pass_encoder0001.popDebugGroup();
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline0014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0051.setBindGroup(0, bind_group008);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0041.drawIndirect(buffer001, 0);
    render_pass_encoder0051.setVertexBuffer(0, buffer004);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0041.end();
    compute_pass_encoder0000.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0051.draw(3);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0051.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0040.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group009);
    render_pass_encoder0040.drawIndirect(buffer0019, 0);
    render_pass_encoder0050.setVertexBuffer(0, buffer000);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0060.drawIndirect(buffer0010, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0050.end();
    render_pass_encoder0050.setIndexBuffer(buffer0010, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0001.setVertexBuffer(0, buffer003);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0001.drawIndirect(buffer0011, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0041.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndirect(buffer0022, 0);
    render_pass_encoder0041.endOcclusionQuery()
    command_encoder002.popDebugGroup()
    command_encoder004.popDebugGroup()
    render_pass_encoder0001.end();
    render_pass_encoder0051.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0001.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0001.end();
    const command_buffer005 = command_encoder005.finish();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0051.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0051.end();
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    render_pass_encoder0041.drawIndirect(buffer0015, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0051.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer0017, "uint16");
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0041.setIndexBuffer(buffer0018, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0000.end();
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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
    render_pass_encoder0060.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0001.popDebugGroup();
    command_encoder000.popDebugGroup()
    render_pass_encoder0000.end();
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
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
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0051.setIndexBuffer(buffer0017, "uint16");
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0023, "uint16");
    const command_buffer004 = command_encoder004.finish();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0051.end();
    render_pass_encoder0050.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0000.drawIndirect(buffer009, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0051.drawIndirect(buffer007, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0051.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0010, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.draw(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    device00.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0000.draw(3);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder0050.drawIndirect(buffer009, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0051.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0000.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0051.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0041.end();
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
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
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
    render_pass_encoder0000.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0040.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([]);
    render_pass_encoder0060.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0016, "uint16");
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0041.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0041.drawIndexed(3);
}