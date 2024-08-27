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
    
    
    const array0 = new Float32Array([1.0, 0.25, 0.75, -0.25, 0.5, 0.75, -0.25, 1.0, 0.5, 0.5, -0.75, 0.0, 0.0, 0.0, 0.75, 0.0, -0.25, -1.0, -0.75, -0.75, -0.25, 0.5, 0.0, 0.5, 0.0, 0.5, 0.0, 0.75, 0.0, 0.75, 0.25, -0.25, 0.0, 1.0, -1.0, 1.0, -0.5, -0.75, 0.0, 1.0, 0.75, 1.0, -0.75, 1.0, -0.5, -1.0, -0.5, -0.25, 0.5, 1.0, -1.0, 1.0, 0.0, -0.75, 0.5, 0.25, 0.25, 0.5, -0.25, -1.0, 0.5, -0.5, 0.25, 0.25, 0.5, -0.5, -0.75, 0.5, -0.75, 0.25, -0.25, 1.0, -0.25, -0.25, -0.5, 0.5, -0.5, -0.75, 0.5, 0.25, -0.5, 0.75, 0.25, -1.0, 1.0, 0.0, 0.0, 0.0, 0.5, -0.5, 0.0, 0.25, 0.5, -0.75, -0.25, 0.0, -1.0, 0.0, 1.0, 0.5, ]);
    const array1 = new Float32Array([-1.0, -0.25, 0.75, 0.0, 1.0, 0.25, -0.75, -0.25, -0.75, -0.25, -1.0, 0.75, 0.75, 0.25, -0.5, 1.0, 0.0, 1.0, 0.25, -0.5, 1.0, -0.5, 0.25, 0.0, 0.0, -0.25, 0.25, -0.5, 0.0, 0.0, -0.5, 0.5, 0.75, -0.5, 1.0, 0.25, -1.0, 0.75, -0.25, 0.0, -0.75, 0.5, 1.0, -0.5, 0.75, 0.25, 0.0, 0.25, 0.75, 0.5, 0.25, 0.0, 0.25, -1.0, -0.5, -1.0, 0.5, -0.75, 0.0, -0.25, -0.25, 1.0, 1.0, 1.0, 0.25, -0.5, 1.0, -0.25, 0.25, 0.0, -0.5, -0.75, -1.0, 0.0, 1.0, 1.0, 0.75, -0.25, 0.75, -0.75, -0.75, -1.0, -1.0, 0.25, -0.75, -0.5, 1.0, 1.0, 1.0, 0.25, 0.25, -0.5, 1.0, 0.0, -0.75, 1.0, -0.75, 0.25, -1.0, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([-0.25, -0.75, 0.25, 1.0, -0.75, -0.5, -0.75, 1.0, 1.0, 0.75, -0.5, 0.5, -0.5, 0.0, -1.0, -0.75, -1.0, -1.0, -0.75, 0.25, -1.0, 0.5, -0.5, -1.0, 1.0, 1.0, -0.5, -0.25, 0.0, -1.0, 1.0, 0.0, 0.75, -0.25, -0.25, 0.75, 0.0, 0.75, -0.75, 0.25, -0.25, 0.75, -0.25, 0.5, 0.25, -0.75, -0.25, -0.75, -0.25, -0.25, 0.25, -1.0, 1.0, 0.0, 0.0, -0.75, 0.75, 0.0, -0.5, -0.75, 0.25, 0.5, 0.5, 0.75, 0.25, 0.25, 0.75, -0.25, -0.5, 1.0, 0.75, -0.25, 0.75, 0.5, 1.0, -0.75, -0.75, 0.5, -0.25, 0.75, -1.0, -0.75, -1.0, 0.25, -1.0, 0.0, -0.5, 1.0, -1.0, 0.0, 0.25, 0.5, -0.5, 0.0, -1.0, 0.0, 0.5, 0.0, -0.25, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture000.destroy();
    const array3 = new Float32Array([0.25, -0.25, 0.0, -0.5, 1.0, -0.75, -0.5, 0.25, -0.5, 0.25, -0.5, -0.25, -0.25, 0.25, 0.75, -0.75, 0.0, 0.0, -0.5, 0.5, -0.25, 0.25, 1.0, 0.5, -0.5, 0.5, 0.75, -1.0, 0.25, -1.0, 0.25, 0.5, -1.0, 0.75, 0.25, 0.75, -0.75, -1.0, -0.75, -0.25, -0.75, -0.25, 0.0, 0.25, 1.0, -0.5, 0.75, 0.75, -0.25, -0.5, -1.0, -1.0, 1.0, 0.75, 1.0, 0.0, 0.5, 0.25, -0.5, -0.75, -1.0, 1.0, 0.75, -1.0, -0.5, 1.0, 0.25, 0.0, -0.5, -0.5, 0.0, -0.75, 0.5, 0.0, 1.0, 0.5, 0.5, 0.0, 0.0, 0.5, -1.0, 0.25, 0.5, -0.25, 0.75, 0.0, -0.5, -0.75, 0.0, -0.25, 0.5, 0.75, 1.0, -0.75, -0.5, -0.75, -0.25, 0.25, 0.75, 0.0, ]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const array4 = new Float32Array([-0.25, 1.0, 0.25, 0.25, -0.5, 0.75, 1.0, -0.5, 0.0, 0.0, 1.0, 0.75, -1.0, 0.5, 1.0, 0.0, -0.75, 0.5, 1.0, -0.5, -0.25, -0.25, -0.25, 0.25, 0.0, 0.5, 0.0, 0.75, 0.25, 0.5, 0.5, 0.25, -1.0, 0.0, 1.0, 0.5, 0.25, 0.25, -0.25, 0.25, -0.75, 1.0, -0.5, 0.25, -1.0, 0.5, 0.75, -0.5, 0.0, -0.5, 0.0, -0.25, 0.5, 0.25, 1.0, 1.0, -0.5, 0.75, 0.0, 0.75, 0.25, 0.0, 1.0, 0.5, 1.0, -0.5, -1.0, 1.0, 0.5, 0.0, 0.75, 0.25, 1.0, 0.25, -0.25, -1.0, 1.0, -0.75, 0.5, -0.25, -0.25, 0.75, 0.25, -0.25, -0.75, 1.0, -1.0, 0.5, 0.25, 0.5, 0.5, 0.75, 0.0, 0.0, 0.0, 0.75, -1.0, -0.5, 0.0, -0.25, ]);
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    device00.pushErrorScope("internal");
    
    command_encoder001.insertDebugMarker("mymarker");
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
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const array5 = new Float32Array([0.0, 0.25, 0.75, 0.75, 0.0, -0.25, -1.0, 1.0, 0.25, 0.75, -1.0, 0.75, 0.0, 0.0, 0.75, -0.75, 1.0, 1.0, -0.75, 0.5, -1.0, 0.0, -0.5, -0.5, -0.25, 0.0, -0.75, 0.0, 0.75, 0.5, -0.75, -1.0, 0.5, -0.75, 0.75, -0.25, -1.0, 1.0, -0.5, -0.75, -0.5, 0.25, 0.25, 1.0, 0.25, -0.75, -1.0, 0.5, 0.5, 0.0, 0.75, 1.0, -1.0, 0.0, 0.5, 0.0, 1.0, 0.25, -0.5, 0.0, 0.75, 0.75, 0.75, 0.5, 0.0, 0.0, -0.75, 0.25, -0.25, 0.75, -0.75, 1.0, -1.0, -0.75, 0.0, 0.5, 0.75, -0.75, -0.5, -0.25, 0.25, -0.75, 0.75, -1.0, -0.75, -0.75, 1.0, 0.0, -1.0, -0.25, 0.75, -0.5, -0.25, -0.25, 0.5, -0.5, 0.0, 0.5, 0.0, -1.0, ]);
    
    buffer002.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    buffer001.destroy()
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array6 = new Float32Array([-1.0, -0.5, -0.75, -0.5, 0.25, 0.75, 0.75, -1.0, 0.5, 0.0, -0.25, 1.0, 0.75, -0.25, -0.25, -1.0, -0.75, -0.75, -0.75, 0.0, 0.75, 1.0, 0.5, -0.5, 0.0, -0.75, 0.75, -0.25, 0.0, 1.0, 0.75, 0.0, 0.0, -0.25, 1.0, 0.25, 0.5, -0.5, 0.25, -0.25, 0.75, -0.25, -0.5, -0.75, 1.0, 0.75, -1.0, 0.0, 0.5, 1.0, -0.75, -0.75, -0.5, 0.0, -0.5, 0.0, -0.75, 0.5, -0.25, -0.75, 0.25, -0.25, -0.25, 0.5, 1.0, -0.75, 1.0, -0.75, 0.25, 1.0, -1.0, -0.25, -0.5, -0.75, 0.25, 0.75, 1.0, 0.75, 1.0, -0.25, 0.75, 0.25, 0.75, 0.25, 0.25, 0.0, -1.0, -1.0, -0.25, 1.0, 0.5, 0.25, -0.25, -0.25, 0.0, -0.5, -0.5, -0.25, 0.0, -0.75, ]);
    
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
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    buffer000.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
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
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    command_encoder000.clearBuffer(buffer003);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.destroy();
    
    const array7 = new Float32Array([0.0, -0.75, -1.0, -0.75, -0.75, -0.5, -0.5, 0.75, -0.75, -0.75, 0.75, -0.75, -0.5, 0.25, 0.75, 0.25, 0.75, -0.25, 0.75, 1.0, -0.75, 0.75, 0.0, 0.0, 0.5, 1.0, -0.5, 0.25, -0.75, -0.75, -1.0, 0.25, -0.25, 1.0, 0.25, 0.5, 0.75, 0.25, -0.75, -0.25, -0.25, -0.75, 1.0, 0.5, -1.0, -0.75, 0.0, -0.25, -0.5, 0.25, 0.0, 0.75, 0.75, -0.75, 0.0, 0.75, -0.25, -0.5, 1.0, -1.0, 0.25, -0.75, -0.75, 0.25, 1.0, 0.25, 1.0, 0.0, 1.0, 0.25, 0.0, 0.5, -0.5, 0.5, -0.75, 1.0, -0.75, -0.5, 0.25, 0.5, 0.0, 0.0, -0.5, 1.0, 0.0, -1.0, -0.5, -0.75, -1.0, 0.25, 0.75, -0.25, -0.25, 0.0, -1.0, 0.25, -0.25, -0.25, -1.0, -1.0, ]);
    const array8 = new Float32Array([-0.75, -0.5, 0.25, -0.25, 0.25, -1.0, -0.25, 0.25, 0.0, -0.5, -0.5, -0.5, 1.0, 0.25, 0.0, 1.0, 0.75, 0.5, -0.25, 0.0, -0.75, 0.0, -0.75, 0.0, 1.0, 0.5, -1.0, -1.0, 0.25, 0.0, 0.25, -0.25, 0.75, 1.0, 0.25, -1.0, 0.5, -0.5, 0.75, 0.75, -0.25, 0.0, 0.0, 0.75, 0.25, 0.25, -0.25, -0.25, 0.75, 0.25, -0.75, 0.5, -0.75, 0.5, -0.75, 0.25, 1.0, -1.0, -1.0, 0.5, -0.75, 0.0, 0.75, -0.75, -0.25, 1.0, 0.75, 0.25, 0.0, -0.25, -0.25, -0.5, 0.25, 0.75, 0.5, 0.5, -1.0, -0.75, -0.75, -0.75, 0.25, -0.5, 1.0, 1.0, -0.75, 0.5, 1.0, 0.0, 0.75, -0.25, 1.0, 1.0, 0.5, 0.75, 0.5, -0.5, -0.75, -0.5, 0.75, -0.75, ]);
    
    const array9 = new Float32Array([0.25, 0.0, -0.5, 0.75, 0.25, 0.75, -0.25, -0.5, 0.25, 0.75, 0.25, -0.25, -0.75, -0.5, -0.75, -0.25, -0.25, 0.25, 0.5, 0.75, -0.25, 0.0, -1.0, -0.75, -1.0, 0.5, 0.0, -0.5, -0.75, 0.0, -0.25, 1.0, 0.0, -1.0, 0.0, 0.25, -0.75, 0.5, 0.0, -0.25, 0.0, 0.75, 0.25, 0.75, 0.0, -0.75, 1.0, 0.5, 0.25, -0.5, -0.75, 1.0, -0.25, -0.25, -0.75, -0.5, -0.75, -0.75, 0.5, 0.5, 0.5, -0.5, 0.0, 0.0, 0.75, -0.75, -0.25, -0.25, 1.0, -0.5, -1.0, 0.75, 0.5, -0.5, 0.5, -0.25, 0.25, 0.25, 0.5, 0.5, -1.0, 0.25, -0.5, 0.0, 0.25, 1.0, -1.0, -0.5, -0.25, -0.75, -0.75, -0.5, 0.5, 0.0, -0.25, -1.0, 1.0, -0.5, -0.75, -0.25, ]);
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array10 = new Float32Array([0.0, -0.75, -0.5, -0.25, -0.5, -1.0, 0.25, -0.75, -1.0, 0.75, -1.0, 0.5, -0.75, 1.0, 0.75, 0.0, -0.25, 0.5, 0.0, 0.75, -0.75, 1.0, 1.0, -1.0, -0.5, 0.75, 0.0, 0.75, 0.75, 1.0, -1.0, -0.25, -1.0, 0.0, -0.5, 0.75, 0.75, 0.25, 0.25, -0.25, 0.5, 0.25, 0.0, 1.0, -0.75, -0.25, 0.25, -1.0, -0.5, 0.25, 1.0, 0.0, 1.0, -0.75, -0.75, -1.0, 0.75, 0.25, 0.5, -1.0, 0.0, 0.25, 0.25, -1.0, -0.5, -0.75, -0.5, 0.5, -0.25, 0.0, 0.0, 0.75, -1.0, -0.25, -0.25, 0.75, -0.5, -0.25, 0.0, -1.0, 0.5, 0.25, 0.25, 0.75, 0.0, -0.5, -0.25, 0.5, 0.25, -0.25, -0.25, 0.25, 0.75, -0.25, 0.25, 0.25, 0.0, -1.0, 0.75, -1.0, ]);
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.destroy();
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    
    const array11 = new Float32Array([-0.5, -0.5, -0.5, -0.25, -0.75, 0.75, 0.75, -0.25, -0.75, 0.0, 0.75, 1.0, -0.25, -0.25, -0.5, 0.25, -0.75, -0.5, -1.0, 0.25, 0.5, 0.5, -1.0, 0.25, 0.5, 0.25, 0.0, -0.75, -0.25, -0.5, 1.0, -1.0, 0.0, -0.25, 0.5, 0.5, -0.25, 0.5, 0.0, -0.25, 0.75, -0.25, -0.25, -0.25, -0.25, 1.0, 0.5, -1.0, 0.5, 0.0, -0.5, 0.75, -1.0, 0.75, 0.75, -0.5, 1.0, -0.5, -0.75, -1.0, 0.75, 0.75, 0.5, -0.75, -1.0, -0.5, 1.0, -0.5, 0.5, 1.0, -1.0, -1.0, -0.5, 0.75, 0.75, 0.5, -0.5, 1.0, -0.5, 1.0, -0.25, -0.75, 0.5, -0.75, 0.25, -0.75, 0.5, 0.5, -1.0, -1.0, -0.75, -1.0, 1.0, 0.0, -1.0, -0.25, -1.0, 0.25, 0.0, 0.75, ]);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8snorm",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
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
    texture401.destroy();
    
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture402 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture402 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture402.destroy();
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    
    
    
    
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture101.destroy();
    device40.queue.writeTexture({ texture: texture403 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device70.pushErrorScope("out-of-memory");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device70.queue.writeTexture({ texture: texture700 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    device20.destroy();
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    
    
    device70.queue.writeTexture({ texture: texture700 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.queue.writeTexture({ texture: texture700 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.pushErrorScope("internal");
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
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
    
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const array12 = new Float32Array([-0.75, 1.0, -1.0, -0.25, -0.25, -0.25, 0.5, -1.0, -0.25, -1.0, 1.0, 1.0, 1.0, -0.5, 0.25, 1.0, 0.0, 0.25, 0.75, 1.0, -0.25, 0.0, -1.0, 0.75, -1.0, 1.0, -0.5, -1.0, 0.5, -1.0, 0.0, -1.0, 1.0, -0.25, 0.5, 0.75, -0.5, -0.5, -1.0, 0.0, -0.75, -0.25, 0.25, 0.75, -0.25, -0.5, -0.75, 0.5, 0.25, 0.5, 0.75, 0.5, -0.75, 0.25, -0.75, -0.25, -0.5, 1.0, -1.0, 0.25, -0.25, 0.75, 0.25, 0.0, 0.5, -0.75, -1.0, 1.0, -0.25, -0.5, -0.75, 0.75, -0.25, 0.75, 0.5, 0.75, -1.0, 0.75, -0.25, 1.0, 0.5, -1.0, 0.0, 1.0, -1.0, -0.75, -0.25, -0.5, 0.25, 0.5, 0.5, 0.0, -0.75, -0.75, -0.25, -0.75, -0.75, 0.5, 1.0, -0.25, ]);
    
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture700 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer401.destroy()
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device00.queue.writeBuffer(buffer005, 0, array7, 0, array7.length);
    device70.pushErrorScope("internal");
    device70.queue.writeTexture({ texture: texture700 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture700 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture700.destroy();
    
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    texture700.destroy();
    const array13 = new Float32Array([0.75, 0.5, 0.5, 0.0, 0.25, -0.75, -1.0, -0.25, 0.0, 0.5, 0.5, 1.0, -1.0, -0.25, 0.25, -0.75, 0.0, -0.5, -0.5, 0.75, 1.0, 0.25, 0.0, 1.0, -0.5, -0.5, 0.25, 0.25, 0.25, 0.25, 0.5, 0.0, 0.75, -1.0, 0.25, -1.0, 1.0, -1.0, 0.5, 0.5, 1.0, 0.25, -1.0, -0.5, -0.75, -0.75, 1.0, -1.0, 1.0, -0.75, 0.0, -0.25, -0.25, 1.0, 0.0, 0.75, 0.75, -1.0, -0.25, -1.0, 0.0, -0.5, -0.25, 1.0, 1.0, 1.0, -1.0, 0.75, -0.5, 0.75, -0.75, -0.25, -0.5, 0.0, -0.25, 0.0, -0.75, -0.5, -0.5, 0.5, -1.0, 0.5, 0.75, 0.0, 0.25, 0.0, 1.0, 0.75, -0.5, -1.0, -0.5, -0.25, 0.5, 0.75, -0.25, -0.75, -1.0, 0.25, 0.25, 0.0, ]);
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    
    device00.queue.writeBuffer(buffer005, 0, array12, 0, array12.length);
    texture400.destroy();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    buffer402.destroy()
    texture700.destroy();
    
    render_pass_encoder4000.insertDebugMarker("marker");
    texture100.destroy();
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_pass_encoder4000.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    device00.queue.writeBuffer(buffer003, 0, array11, 0, array11.length);
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    render_pass_encoder4000.executeBundles([])
    render_pass_encoder4000.insertDebugMarker("marker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    texture403.destroy();
    const array14 = new Float32Array([-0.25, 0.0, 0.0, 0.0, 0.0, -0.25, -0.75, 1.0, 1.0, 0.75, 0.75, 0.0, -0.75, -1.0, 0.5, 0.0, 0.25, -0.25, 0.0, 0.0, 1.0, -0.5, 0.5, 1.0, -0.75, -0.25, 0.0, -0.75, 0.5, -0.25, -0.75, -0.5, -0.5, -1.0, -0.25, -1.0, 0.0, -0.5, 0.0, 1.0, 1.0, -0.25, 1.0, -0.25, 0.0, -1.0, 0.75, 0.25, 1.0, 0.0, 0.0, -0.75, 0.5, 0.0, -1.0, -1.0, -0.75, -0.75, 0.25, -0.5, 1.0, 0.25, 1.0, 0.25, -0.75, -0.5, -0.25, -0.75, -0.75, 0.0, -0.75, 0.5, -1.0, -0.25, 0.75, -0.5, -0.25, 0.25, 0.5, 0.75, 1.0, -0.75, 0.75, 1.0, -0.25, 0.25, -0.25, 0.25, 0.5, 1.0, -0.75, -0.5, 0.5, 0.75, -0.25, -0.5, 0.5, -1.0, -0.75, 1.0, ]);
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    render_pass_encoder4000.executeBundles([])
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    render_pass_encoder4000.setPipeline(render_pipeline404);
    
    
    
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
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
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
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4031,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array13, 0, array13.length);
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
    device60.destroy();
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    render_pass_encoder4000.insertDebugMarker("marker");
    
    
    
    device70.queue.writeTexture({ texture: texture701 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view7012 = texture701.createView({ label: "texture_view7012" });
    render_pass_encoder4010.setPipeline(render_pipeline404);
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer400.destroy()
    device00.queue.writeBuffer(buffer005, 0, array12, 0, array12.length);
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    render_pass_encoder4000.setStencilReference(1);
    render_pass_encoder4010.setStencilReference(1);
    texture701.destroy();
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder4010.pushDebugGroup("group_marker");
    buffer004.destroy()
    device40.queue.writeBuffer(buffer405, 0, array5, 0, array5.length);
    
    
    
    
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group400);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    buffer406.destroy()
    device40.queue.writeBuffer(buffer404, 0, array10, 0, array10.length);
    
    texture701.destroy();
    buffer407.destroy()
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    device40.queue.writeBuffer(buffer405, 0, array4, 0, array4.length);
    render_pass_encoder4000.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    
    device40.queue.writeBuffer(buffer405, 0, array4, 0, array4.length);
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    device90.destroy();
    
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device40.queue.writeBuffer(buffer405, 0, array3, 0, array3.length);
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
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    const array15 = new Float32Array([0.75, -0.25, -0.25, -1.0, 0.5, 1.0, -0.25, 1.0, -0.75, 0.5, 0.75, -0.25, -0.5, 0.75, -1.0, 0.0, 0.5, 0.0, 0.5, -1.0, 0.0, -0.25, 0.25, 0.25, 1.0, -0.25, -0.25, -0.5, 0.75, -0.5, -0.5, -0.5, -0.5, -0.5, -1.0, 1.0, -0.75, 0.25, -0.75, 0.75, -0.5, -1.0, -0.25, 0.25, -0.5, 0.0, -0.25, 1.0, -0.75, 0.75, -0.25, 1.0, 0.25, -0.25, -0.5, -0.5, 0.25, -1.0, 0.75, -1.0, 0.0, -0.75, 0.5, 0.0, -0.25, -0.75, 0.75, -0.5, -0.75, 1.0, -0.75, -0.5, -0.75, 1.0, 0.75, 0.5, 0.75, -1.0, -0.75, -0.5, -1.0, 0.5, -1.0, 0.25, 1.0, 0.0, -0.75, 0.0, 0.75, 0.75, -0.25, 0.75, 0.0, -0.25, 0.75, 0.5, 0.0, 1.0, 0.5, 0.5, ]);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    texture402.destroy();
    
    
    
    
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4000.setStencilReference(1);
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    
    render_pass_encoder4010.popDebugGroup();
    buffer405.destroy()
    
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: undefined
    });
    device40.queue.writeTexture({ texture: texture405 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer405, 0, array14, 0, array14.length);
    render_pass_encoder4001.setPipeline(render_pipeline400);
    device40.queue.writeBuffer(buffer404, 0, array11, 0, array11.length);
    
    const array16 = new Float32Array([-0.75, -0.75, 0.5, -0.25, -0.5, -1.0, 0.25, -0.5, 1.0, -0.25, 0.5, 1.0, 0.75, 1.0, -0.75, 0.0, 0.0, -1.0, -0.75, 0.75, -0.75, -1.0, 0.0, 0.5, -0.5, -1.0, 1.0, 0.0, 0.75, -0.75, -1.0, 1.0, -0.5, -1.0, -1.0, -0.25, 0.5, 0.0, 0.5, 0.75, -0.5, -0.75, 0.5, -1.0, 0.75, 0.25, -1.0, 1.0, -1.0, 0.5, -1.0, -0.5, 1.0, 0.0, 0.5, -0.5, 0.5, 0.5, -0.5, -0.25, -0.5, 0.75, -0.75, -0.25, -0.5, -0.5, -1.0, 1.0, 0.0, 0.25, 0.5, -0.25, -1.0, -0.25, -1.0, -0.75, 1.0, -1.0, 0.0, -0.5, 1.0, -0.5, 1.0, 0.25, 1.0, 1.0, 0.25, -0.75, -0.25, 0.25, 0.25, 0.5, 1.0, -0.5, -0.75, 0.5, -0.5, 0.25, 0.5, 0.75, ]);
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_pass_encoder4010.setStencilReference(1);
    render_pass_encoder4001.pushDebugGroup("group_marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    render_pass_encoder4010.insertDebugMarker("marker");
    command_encoder402.copyTextureToTexture(
        {
            texture: texture402
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    device40.queue.writeBuffer(buffer406, 0, array1, 0, array1.length);
    
    render_pass_encoder4000.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    device00.queue.writeBuffer(buffer005, 0, array15, 0, array15.length);
    device40.queue.writeBuffer(buffer408, 0, array13, 0, array13.length);
    render_pass_encoder4010.insertDebugMarker("marker");
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4031,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4000.popDebugGroup();
    buffer408.destroy()
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4000.insertDebugMarker("marker");
    
    device90.pushErrorScope("out-of-memory");
    render_pass_encoder4020.setPipeline(render_pipeline401);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4011.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture405 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture200.destroy();
    render_pass_encoder4000.setVertexBuffer(0, buffer406);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.queue.writeBuffer(buffer005, 0, array11, 0, array11.length);
    device40.queue.writeTexture({ texture: texture405 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture404.destroy();
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    
    render_pass_encoder4001.pushDebugGroup("group_marker");
    
    device30.pushErrorScope("validation");
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture702.destroy();
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    device40.queue.writeTexture({ texture: texture406 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    
    
    
    
    device40.queue.writeTexture({ texture: texture406 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture406 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group401);
    const texture_view4051 = texture405.createView({ label: "texture_view4051" });
    device40.queue.writeTexture({ texture: texture406 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    device70.pushErrorScope("internal");
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    render_pass_encoder4011.setPipeline(render_pipeline404);
    
    
    const render_pipeline706 = device70.createRenderPipeline({
        label: "render_pipeline706",
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
    buffer404.destroy()
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture406 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device40.queue.writeTexture({ texture: texture405 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture406 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline707 = device70.createRenderPipeline({
        label: "render_pipeline707",
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
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: undefined
    });
    device40.queue.writeBuffer(buffer409, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer403, 0, array11, 0, array11.length);
    
    device70.queue.writeTexture({ texture: texture700 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture406 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline708 = device70.createRenderPipeline({
        label: "render_pipeline708",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    texture102.destroy();
    render_pass_encoder4021.setPipeline(render_pipeline407);
    render_pass_encoder4020.insertDebugMarker("marker");
    render_pass_encoder4010.pushDebugGroup("group_marker");
    render_pass_encoder4001.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    device70.queue.writeTexture({ texture: texture700 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.insertDebugMarker("mymarker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
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
    render_pass_encoder4001.setStencilReference(1);
    buffer409.destroy()
    render_pass_encoder4020.setVertexBuffer(0, buffer402);
    render_pass_encoder4020.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4000.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4000.setIndexBuffer(buffer408, "uint16");
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    render_pass_encoder4001.setBindGroup(0, bind_group402);
    render_pass_encoder4020.drawIndexedIndirect(buffer405, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4000.setIndexBuffer(buffer402, "uint16");
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline407.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    render_pass_encoder4021.setBindGroup(0, bind_group403);
    render_pass_encoder4001.setVertexBuffer(0, buffer4010);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4020.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4021.setVertexBuffer(0, buffer4011);
    render_pass_encoder4001.setIndexBuffer(buffer402, "uint16");
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
        layout: render_pipeline404.getBindGroupLayout(0),
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

    render_pass_encoder4010.setBindGroup(0, bind_group404);
    render_pass_encoder4000.draw(3);
    render_pass_encoder4001.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4001.drawIndexedIndirect(buffer409, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4021.setIndexBuffer(buffer4013, "uint16");
    render_pass_encoder4021.draw(3);
    render_pass_encoder4001.end();
    render_pass_encoder4010.setVertexBuffer(0, buffer4014);
    render_pass_encoder4010.drawIndirect(buffer401, 0);
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
        layout: render_pipeline404.getBindGroupLayout(0),
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

    render_pass_encoder4011.setBindGroup(0, bind_group405);
    render_pass_encoder4001.drawIndexedIndirect(buffer408, 0);
    render_pass_encoder4000.end();
    render_pass_encoder4020.end();
    render_pass_encoder4010.end();
    render_pass_encoder4021.end();
    render_pass_encoder4020.drawIndexedIndirect(buffer404, 0);
    render_pass_encoder4000.draw(3);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4011.setVertexBuffer(0, buffer402);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4011.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder4011.drawIndexedIndirect(buffer409, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4011.end();
    render_pass_encoder4000.end();
    render_pass_encoder4011.end();
    render_pass_encoder4011.drawIndirect(buffer400, 0);
    render_pass_encoder4001.drawIndexedIndirect(buffer4011, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4000.drawIndexedIndirect(buffer402, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4021.drawIndexedIndirect(buffer400, 0);
    render_pass_encoder4010.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4021.draw(3);
    render_pass_encoder4011.end();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4011.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder4011.drawIndirect(buffer407, 0);
    render_pass_encoder4010.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4001.popDebugGroup();
}