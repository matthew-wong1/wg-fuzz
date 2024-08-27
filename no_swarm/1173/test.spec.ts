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
    const array0 = new Float32Array([-1.0, -1.0, -0.5, -1.0, -1.0, -0.5, 0.5, 1.0, 0.5, -0.5, 0.0, -0.75, 0.25, -0.5, -0.25, -0.75, 0.25, -0.75, -0.75, 0.0, -0.25, -1.0, -0.75, -1.0, -0.75, -0.25, 0.25, -0.25, 0.75, -0.25, -1.0, -1.0, 0.0, -0.5, 0.0, 0.25, -0.25, -0.75, 0.5, -0.5, 0.5, 0.75, -0.5, 0.75, 0.0, 0.25, -0.25, 0.25, 1.0, -0.75, 0.25, -0.75, -1.0, 0.0, 0.25, -0.75, 1.0, 0.0, 0.5, 0.0, 1.0, 0.25, -1.0, -1.0, -0.5, -0.25, 0.25, -0.5, 0.5, 1.0, -0.5, -0.75, 0.75, 1.0, -0.5, 0.0, 0.5, -0.5, 0.5, 1.0, -0.75, -1.0, 0.75, -0.25, -0.5, 0.25, 0.25, -1.0, -0.25, -0.75, -0.5, 0.5, 0.5, 0.25, 0.75, -0.75, -0.5, 0.25, -1.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-0.5, -0.75, -0.75, -0.75, 1.0, -0.25, 0.75, -0.25, 0.0, 0.5, 0.75, -0.25, 0.75, -0.75, 0.25, -1.0, 0.25, -0.25, -0.5, 0.5, -0.5, -0.5, -1.0, -0.5, 1.0, -0.5, -0.75, 0.25, -0.25, 0.0, -1.0, -0.5, 0.0, -1.0, -0.75, 1.0, 1.0, 0.25, 0.25, -0.75, 0.75, -0.75, -1.0, -0.75, 0.75, 0.25, 1.0, -0.5, -0.75, -0.75, 0.25, -1.0, 0.5, 0.5, 0.0, 0.5, -0.75, 0.0, 0.5, 0.25, 0.75, 0.75, 0.25, -0.25, 0.75, 0.5, -1.0, -0.5, -0.5, 0.0, -0.75, 0.75, -0.75, -0.25, 1.0, 0.75, 0.75, -0.75, 1.0, 0.25, 1.0, -0.25, -0.75, -0.25, 0.5, 0.75, 1.0, 0.75, -0.5, 0.75, 0.25, -0.5, 0.5, 0.25, 1.0, -0.75, 0.25, -0.5, -1.0, -0.5, ]);
    const array2 = new Float32Array([0.5, -0.5, 0.25, 0.0, -0.5, -0.25, 0.75, 0.75, 1.0, 1.0, -0.5, 0.5, 1.0, -0.25, -0.25, -0.5, 1.0, 0.75, 1.0, -0.5, -0.25, -0.5, 0.75, -0.5, -0.75, 0.75, 0.0, 0.0, 0.0, -0.25, 0.0, 0.0, -0.5, 0.0, -0.75, 0.0, 0.5, 0.0, 0.75, -0.75, 0.0, -0.5, 0.25, 0.0, 0.0, -1.0, -0.75, -0.75, -0.75, 0.75, 0.25, -0.75, 0.5, -0.75, 0.75, -1.0, 0.75, -0.25, -0.25, -0.25, -1.0, 1.0, -1.0, 0.5, 0.75, -0.75, -1.0, -1.0, 0.75, 0.75, 0.75, -0.5, 0.25, 0.5, -0.25, 1.0, 0.5, 0.5, -0.75, -1.0, -0.5, -1.0, -0.25, 0.25, -0.25, -0.5, 0.25, -0.25, 1.0, -0.25, 0.75, -0.5, 0.75, 0.0, 1.0, -0.5, -0.75, -0.25, 0.25, 1.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([-1.0, 0.5, 0.0, 0.25, -0.25, -0.25, 0.75, -1.0, 1.0, 0.0, -0.5, -0.5, -1.0, -0.25, -1.0, -0.5, 0.25, -0.75, 0.25, -1.0, -1.0, 0.0, 0.25, -0.75, 0.5, -0.5, -1.0, -0.75, 0.75, 0.0, -0.75, 0.75, 0.75, 0.75, 0.25, -1.0, -0.5, 0.5, 0.0, -0.25, 0.75, 0.0, -0.75, 0.75, -0.5, -0.5, -0.75, -1.0, -0.25, -0.25, 0.0, -1.0, 0.5, 1.0, 0.0, 1.0, -0.5, -0.5, 1.0, 0.75, -0.75, -1.0, 0.25, 1.0, -0.5, -0.5, -0.75, -0.5, -0.75, 0.0, 1.0, 0.25, -1.0, 0.0, 0.75, -0.25, -0.25, -0.5, 0.0, -0.75, 0.0, 0.5, -1.0, -0.25, -0.5, 0.25, 0.5, -0.5, 0.75, 0.75, 0.5, -0.5, -0.25, -0.25, 0.0, 1.0, 0.0, 1.0, -1.0, 0.75, ]);
    const array4 = new Float32Array([-1.0, -0.5, -1.0, -0.5, 1.0, -1.0, -0.75, 0.5, 0.75, -0.5, 0.75, 0.5, -0.75, -0.5, 0.5, -1.0, 1.0, 0.75, 1.0, 0.0, -0.25, -0.75, 0.5, 1.0, -0.25, 1.0, 0.0, 0.75, 1.0, 1.0, 0.75, 0.25, 0.25, -0.5, 0.0, -1.0, -0.5, -1.0, -0.25, 0.0, -0.5, 0.25, 0.5, 0.75, 0.25, -0.5, -0.25, 0.75, 0.75, 0.5, -0.75, -0.75, 0.0, 0.25, -0.75, -0.25, -0.75, 0.75, -0.25, 0.5, -0.5, 0.25, -0.75, -1.0, 0.0, -0.75, -0.5, 0.5, -0.75, 0.0, 0.0, -0.25, -0.25, 1.0, 0.25, 0.0, -0.5, 1.0, -0.25, 0.75, -0.5, 0.0, 0.0, -1.0, -0.5, 0.0, 0.25, 1.0, 1.0, -0.25, 0.0, -0.5, 1.0, -0.5, 0.75, 0.5, 0.25, -0.75, 0.5, 1.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device10.queue.submit([]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array5 = new Float32Array([1.0, 0.25, -0.5, 0.25, -0.75, 0.75, 1.0, 0.75, -0.5, 1.0, -1.0, -0.5, -0.25, 0.0, 0.25, 0.75, 1.0, 0.5, 1.0, -1.0, -0.25, 0.5, -1.0, -0.5, -0.5, 0.0, -0.25, 0.0, -0.25, 0.5, -0.5, 0.0, 0.0, 0.75, 1.0, -0.25, 0.0, -0.25, 0.75, 0.0, 0.25, 0.25, 1.0, 0.5, -0.75, -0.25, 0.5, -0.25, 0.0, -0.75, 1.0, -0.75, -1.0, 0.5, 0.0, -0.75, 0.5, -1.0, 1.0, 0.5, 1.0, 0.75, 1.0, 0.0, 1.0, 0.0, 0.0, -0.5, 1.0, 0.0, 1.0, -0.25, 0.5, 0.0, 0.75, 0.5, -0.5, -0.75, -0.25, -0.25, 1.0, -0.5, -0.25, 0.25, 0.0, -0.25, 0.0, 0.0, 0.0, 0.0, 0.25, -0.75, -1.0, -0.25, 0.75, 1.0, -1.0, -1.0, -0.25, 1.0, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder001.insertDebugMarker("mymarker");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device10.pushErrorScope("validation");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array6 = new Float32Array([-0.75, -0.75, 0.25, 0.25, -0.75, -0.25, -0.5, -0.25, -0.5, 0.5, 1.0, 0.75, 0.25, 0.25, -0.5, -0.25, -1.0, 0.75, 0.5, -0.75, 0.0, 0.0, -0.5, -0.5, 0.5, -0.75, 0.75, 1.0, -0.75, -0.25, -0.5, -0.5, -0.5, 0.5, -0.25, -0.25, -0.5, 0.0, 0.0, -1.0, 0.5, 0.75, -0.5, 0.75, -0.75, -1.0, -0.25, -0.25, -1.0, 0.0, 0.25, 0.25, -1.0, -0.75, 0.25, -0.75, 0.0, -0.75, 0.25, -0.75, 0.5, 1.0, 1.0, 0.75, -0.75, 0.75, -0.5, 0.0, -0.25, -0.25, -0.25, 0.25, 0.0, -0.5, 0.5, 0.25, 1.0, -0.25, 0.75, -1.0, 0.0, -0.25, -0.25, -0.5, -0.75, -0.25, -1.0, -0.5, 0.0, 0.25, 0.0, 0.25, 1.0, -1.0, -0.75, 0.0, -0.5, 1.0, -0.75, -0.5, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device20.queue.submit([]);
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
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
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    texture000.destroy();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    const command_buffer100 = command_encoder100.finish();
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    texture100.destroy();
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer200.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
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
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    command_encoder000.copyTextureToTexture(
        {
            texture: texture001
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer100.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder301.setPipeline(render_pipeline300);
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    buffer201.destroy()
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
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const array7 = new Float32Array([0.25, 1.0, 0.5, -1.0, -0.25, 1.0, -0.75, 1.0, -0.75, -0.75, 0.5, 1.0, -0.5, 0.75, 0.0, -1.0, -1.0, 0.0, 0.5, -0.25, 1.0, -0.75, 0.0, 0.75, 1.0, 1.0, 0.5, 1.0, -0.25, 0.75, 0.25, 1.0, 0.25, 0.75, 0.0, 1.0, -0.25, -0.25, 0.25, -0.5, 0.5, -1.0, -0.25, -0.5, 0.5, -1.0, 0.25, 0.5, 0.25, -0.25, 1.0, 0.25, -0.5, -1.0, 0.0, 0.0, 0.75, -0.75, -0.75, -1.0, -0.5, -0.5, -1.0, 0.5, -0.75, -0.75, 0.25, -0.5, -0.75, -0.25, 0.75, 0.0, -0.25, -0.25, 0.25, 0.5, -1.0, 0.25, 0.5, 0.0, -0.75, 1.0, 1.0, -0.25, 1.0, -0.75, 0.5, 1.0, 0.75, 0.25, 0.0, 0.0, 0.5, -1.0, -0.25, 0.75, 1.0, 0.5, 0.75, -0.25, ]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder001.popDebugGroup();
    device30.destroy();
    command_encoder000.insertDebugMarker("mymarker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder001.setPipeline(render_pipeline003);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    buffer103.destroy()
    
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
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    command_encoder001.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder0020.setStencilReference(1);
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    device00.pushErrorScope("out-of-memory");
    compute_pass_encoder0010.popDebugGroup()
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder002.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder003.insertDebugMarker("mymarker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    buffer104.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.destroy();
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.setVertexBuffer(0, buffer000);
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer000.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder201.setPipeline(render_pipeline200);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    texture002.destroy();
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    device20.destroy();
    compute_pass_encoder0011.popDebugGroup()
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder0020.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder003.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
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
        occlusionQuerySet: undefined
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
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
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0040.setPipeline(render_pipeline000);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    command_encoder400.insertDebugMarker("mymarker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.pushErrorScope("internal");
    
    
    
    
    
    render_bundle_encoder001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder001.drawIndirect(buffer002, 0);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device40.destroy();
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture001.destroy();
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    command_encoder003.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0011.insertDebugMarker("marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0041.setPipeline(render_pipeline005);
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0041.setStencilReference(1);
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    render_pass_encoder0020.setStencilReference(1);
    
    const array8 = new Float32Array([1.0, 0.25, 1.0, -1.0, 0.25, -0.25, -1.0, 0.75, 0.5, 0.0, 1.0, -0.25, 0.5, -0.5, 0.5, -1.0, -0.25, 1.0, -0.25, 0.25, 0.75, 1.0, -0.75, -1.0, 0.25, 0.5, 1.0, -0.25, 0.75, 0.5, -0.5, -0.75, -0.75, -1.0, 0.0, 1.0, 0.0, -0.75, -0.25, -0.25, -0.75, -0.75, -1.0, -1.0, 1.0, -0.25, 1.0, -0.25, -0.25, 0.25, 0.5, 0.0, -0.75, -0.75, 1.0, 0.5, -1.0, 0.0, 0.75, 1.0, -0.75, 1.0, 0.5, 0.0, -1.0, 1.0, -1.0, 0.0, -0.75, 0.0, 0.25, -0.25, -0.75, 0.75, -0.75, 0.75, 0.0, -0.25, -0.5, 0.75, 0.25, 0.25, 1.0, 0.75, -0.75, 1.0, 0.75, -0.5, -1.0, 0.75, 1.0, -0.5, 0.75, 0.25, 0.25, 0.5, 1.0, -0.5, -0.5, 0.5, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0041.insertDebugMarker("marker");
    command_encoder001.insertDebugMarker("mymarker");
    render_pass_encoder0041.insertDebugMarker("marker");
    command_encoder004.pushDebugGroup("mygroupmarker")
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0041.pushDebugGroup("group_marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const array9 = new Float32Array([-0.75, -0.25, -0.25, 0.5, -0.5, 0.25, -0.5, 0.25, 1.0, 0.5, -0.75, 0.5, 0.25, -1.0, -1.0, -1.0, 0.5, 0.0, -0.25, -0.5, 0.75, -0.75, -0.75, 0.0, 0.25, -0.5, -0.25, -1.0, -0.25, -0.75, -0.75, -1.0, -0.75, 0.5, -0.5, 0.5, -0.5, 0.5, 1.0, -0.5, 0.25, -0.75, 0.75, 0.5, -0.75, -0.75, 0.75, -0.5, 0.0, 0.5, 0.25, -0.25, 0.25, -0.75, 1.0, 1.0, 1.0, 0.75, 0.0, -1.0, 0.75, -1.0, -0.5, 0.25, 0.25, -0.25, 0.5, 1.0, 0.5, -0.25, 0.25, -0.5, -0.25, 0.75, 0.75, -1.0, 0.5, -0.5, 0.75, 0.5, -0.5, 0.75, -1.0, -0.25, 0.0, 0.25, 0.5, 1.0, -0.5, 1.0, -0.75, -1.0, 0.75, 1.0, -0.25, -0.5, 0.0, -0.25, -0.5, 0.25, ]);
    
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0041.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    render_pass_encoder0030.setPipeline(render_pipeline004);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer002.destroy()
    render_pass_encoder0040.insertDebugMarker("marker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0041.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer004, 0, array7, 0, array7.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    texture003.destroy();
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    render_bundle_encoder003.setPipeline(render_pipeline000);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder0011.insertDebugMarker("marker")
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.insertDebugMarker("marker");
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query000
    });
    command_encoder000.popDebugGroup()
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    render_bundle_encoder003.pushDebugGroup("group_marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0000.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    command_encoder002.popDebugGroup()
    render_bundle_encoder003.popDebugGroup();
    render_bundle_encoder302.setPipeline(render_pipeline301);
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    render_pass_encoder0030.setStencilReference(1);
    buffer004.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setPipeline(render_pipeline005);
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    query200.destroy()
    const array10 = new Float32Array([0.0, -0.5, 0.0, 0.5, -0.25, -0.75, 0.5, -1.0, -0.75, 0.25, -1.0, 0.5, 0.25, -0.75, -0.75, 0.25, 0.75, -0.5, 1.0, -0.25, 1.0, 0.5, -1.0, -1.0, -1.0, -0.5, 1.0, -0.5, -0.25, 0.0, 0.0, 0.75, -0.5, -0.75, 0.0, 0.25, 1.0, 0.0, -0.5, -0.25, -0.75, 0.0, 0.25, -1.0, 0.75, 1.0, 1.0, -1.0, 0.0, -0.5, -0.25, -0.25, 0.5, 0.75, -0.25, 0.25, -0.25, -0.5, -0.5, 0.75, 0.0, 0.5, -0.5, 0.25, -0.25, 0.0, 0.25, -0.5, -1.0, 0.75, 0.25, 0.75, -1.0, 0.25, 0.75, -0.75, 0.5, 0.75, 1.0, -0.5, 0.5, -0.75, 0.0, 1.0, -1.0, 0.75, 0.75, 0.5, -0.5, 0.75, -0.5, -1.0, -0.75, 0.25, 1.0, 0.5, -1.0, -1.0, 0.75, 1.0, ]);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer001,
        0,
        400
    );
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0020.setStencilReference(1);
    command_encoder003.insertDebugMarker("mymarker");
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    render_pass_encoder0030.setStencilReference(1);
    
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
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    compute_pass_encoder0010.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    render_bundle_encoder001.popDebugGroup();
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    query000.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    const array11 = new Float32Array([-0.5, -1.0, 0.25, -0.25, 0.0, -0.75, -0.5, 1.0, -0.75, -0.5, 0.0, 0.25, 0.25, 1.0, 1.0, -0.5, 0.5, -0.75, 1.0, 0.25, -0.5, 0.75, 0.0, -0.25, 0.75, 0.75, -0.75, 0.75, 1.0, -0.5, 0.5, -1.0, -0.75, -0.25, 0.5, -0.25, -0.25, -0.75, 1.0, -0.25, -0.5, 0.0, 0.25, 0.75, -1.0, 0.75, -1.0, -0.75, 0.5, 1.0, -1.0, 0.5, -0.5, 0.75, 1.0, -1.0, -0.25, -1.0, -0.25, 0.25, -1.0, 0.5, -0.25, -0.75, -0.5, 0.0, -0.5, -1.0, 0.25, 0.5, -0.25, 0.75, -0.5, 0.75, -0.5, 0.75, -1.0, 0.25, -0.5, -0.75, -0.75, 0.25, 0.5, 0.25, 0.75, 0.5, 0.75, -0.75, -0.5, 0.25, 0.5, 1.0, -0.75, 1.0, -1.0, -0.75, -1.0, 0.5, 0.25, 0.75, ]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    render_pass_encoder0000.insertDebugMarker("marker");
    buffer003.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    query000.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
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
    render_pass_encoder0040.insertDebugMarker("marker");
    
    query000.destroy()
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group002);
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group003);
    device00.queue.writeTexture({ texture: texture001 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group004);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    compute_pass_encoder0011.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer008,
        0
    )
    command_encoder401.pushDebugGroup("mygroupmarker")
    texture500.destroy();
    device00.queue.writeBuffer(buffer008, 0, array11, 0, array11.length);
    
    render_pass_encoder0041.popDebugGroup();
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group005);
    render_pass_encoder0041.setVertexBuffer(0, buffer007);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder0040.setVertexBuffer(0, buffer003);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0011.setPipeline(compute_pipeline001);
    render_pass_encoder0020.setVertexBuffer(0, buffer006);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0040.drawIndirect(buffer001, 0);
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group006);
    render_pass_encoder0020.draw(3);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0030.setVertexBuffer(0, buffer008);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndirect(buffer004, 0);
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group007);
    render_pass_encoder0020.end();
    render_pass_encoder0000.setVertexBuffer(0, buffer0010);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
    render_pass_encoder0000.end();
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group009);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0021, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0022, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0022, 0);
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.end();
    compute_pass_encoder0011.end();
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    command_encoder003.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    command_encoder004.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const command_buffer004 = command_encoder004.finish();
    const command_buffer000 = command_encoder000.finish();
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0010.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0023, 0);
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0015, "uint16");
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0015, "uint16");
}