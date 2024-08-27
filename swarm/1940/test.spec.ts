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
    
    const array0 = new Float32Array([1.0, -0.75, 0.0, 0.5, 0.75, -0.25, -0.5, -0.75, -0.5, 0.75, 0.0, 1.0, -0.25, -0.75, -0.5, 0.75, 0.0, 0.0, 1.0, 0.5, -0.5, -1.0, -0.75, 0.75, -0.5, 0.0, -0.25, 0.75, 0.0, -0.75, 1.0, 1.0, 0.25, -0.5, -0.5, -1.0, 0.0, 0.5, -0.25, 0.5, 0.75, -0.5, -0.25, -0.5, 0.75, 0.25, 1.0, 1.0, 0.5, 0.25, -1.0, -1.0, 0.25, 0.75, -1.0, 0.75, -0.5, 0.5, -0.5, -0.75, 0.75, 0.75, -0.5, 0.75, -0.5, 0.5, -0.75, 0.25, -0.25, -0.75, -0.25, 0.25, -0.25, -0.5, 0.5, -0.5, 0.75, -0.5, -0.5, 1.0, 0.25, 0.75, -1.0, 0.25, -0.5, -0.5, 0.75, 0.0, -1.0, -1.0, 0.25, -1.0, -1.0, -0.75, -1.0, -0.25, 1.0, 0.5, 0.75, 0.75, ]);
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth16unorm",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    texture000.destroy();
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array1 = new Float32Array([0.25, -1.0, -0.5, 0.75, -1.0, -0.75, 0.25, 0.75, 1.0, -0.25, 0.0, -0.25, -0.5, -0.5, 0.75, -0.75, 0.5, -1.0, 0.5, -1.0, 1.0, 0.75, 0.75, 1.0, 0.0, 0.75, 1.0, -0.25, 0.0, 0.25, -0.75, 0.5, 1.0, 0.5, 0.0, 0.5, 0.5, 1.0, -0.5, -0.25, 0.75, -0.75, 0.0, 0.5, -0.75, -0.75, -1.0, -0.5, 0.25, 0.5, -0.5, 1.0, -0.75, 0.75, 0.5, 0.0, 0.5, 0.5, 0.5, 0.25, 0.25, 1.0, -0.25, -1.0, -0.75, -0.5, -0.75, 0.5, 0.5, 0.5, -0.25, -0.5, -1.0, 1.0, -0.5, -0.5, 0.25, 0.75, -0.75, 0.0, 0.5, 0.75, -1.0, -0.75, 1.0, 0.0, -0.25, 0.75, -0.25, -0.75, 0.5, -0.5, 0.0, 0.0, 0.5, -1.0, 0.75, 0.75, -0.5, 0.5, ]);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder000.insertDebugMarker("mymarker");
    
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder000.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    texture001.destroy();
    command_encoder000.clearBuffer(buffer001);
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer000
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
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder001.copyTextureToTexture(
        {
            texture: texture002
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture000.destroy();
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder001.copyTextureToTexture(
        {
            texture: texture001
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const array2 = new Float32Array([-0.5, 1.0, 0.75, -0.25, 0.75, 1.0, -0.25, 0.25, -1.0, 0.25, 0.75, -0.75, -0.5, -0.5, -1.0, -0.75, 0.25, -0.25, 0.75, -0.5, 0.25, -0.75, 1.0, -1.0, 0.5, 0.75, -0.75, -0.5, 0.75, -0.75, 1.0, 0.25, -0.5, -0.25, -0.25, -0.25, 0.75, 0.5, 1.0, 0.75, -0.75, -0.5, -0.5, 0.75, 0.0, 0.25, 0.5, 0.75, 0.5, 1.0, 0.75, -1.0, 0.0, -0.75, -0.5, 1.0, -0.25, -0.25, 0.5, 0.25, -0.25, 0.5, 0.75, 0.0, -0.75, -0.5, -1.0, 0.5, -0.75, -1.0, 0.0, -1.0, 0.0, 0.25, -0.25, 0.0, -0.5, -0.75, -1.0, 1.0, -0.75, 1.0, 1.0, -0.5, 0.0, 0.5, -0.75, -1.0, 0.75, 0.5, 0.25, 0.0, 0.0, 1.0, -1.0, 0.25, 0.25, 0.25, 1.0, -0.5, ]);
    const array3 = new Float32Array([-0.25, -1.0, 0.75, -0.25, -0.75, -1.0, 1.0, -0.5, -0.5, -0.5, -1.0, 0.5, 0.75, 1.0, 0.5, -0.25, -0.25, -0.75, 0.75, 0.25, -0.5, -0.5, 0.5, -0.25, -0.25, 0.25, -0.5, 0.75, 0.5, -0.5, 0.25, -0.75, 0.5, 0.0, -0.25, 0.25, -0.5, 0.0, 0.5, -0.25, 0.5, -0.25, 0.25, -0.5, -0.5, -0.75, 0.75, 0.75, 0.0, -0.5, -0.75, -0.5, -0.5, -1.0, 0.75, -1.0, 1.0, 1.0, 0.5, 0.5, 0.0, 0.5, 1.0, -1.0, -0.5, 0.0, 0.0, -0.5, 0.75, 0.0, 0.5, -1.0, -0.25, 0.0, 1.0, -1.0, 0.0, -0.5, 1.0, 0.5, -1.0, -0.5, -0.75, 0.0, 0.75, -0.25, 0.5, 0.25, -1.0, 1.0, -0.5, 0.75, -0.25, -0.25, 0.0, -0.25, 1.0, -0.75, 0.5, -1.0, ]);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder000.clearBuffer(buffer002);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32sint",
        dimension: "2d"
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture002.destroy();
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const array4 = new Float32Array([-1.0, -0.5, 0.0, -0.75, 0.25, 1.0, -1.0, 0.5, 0.0, -1.0, 0.0, 0.25, -1.0, 0.75, 0.75, -0.75, -0.25, 0.75, -0.25, -0.75, 0.0, 0.75, -0.5, 0.75, 0.25, 1.0, 0.0, 0.5, 0.25, 0.0, 0.75, -0.25, 1.0, 0.75, -0.5, -0.75, 0.25, 0.0, 0.5, 0.5, -0.75, 0.0, 0.5, -1.0, -0.25, 0.75, -0.75, 0.5, 0.25, 1.0, 0.5, -1.0, 0.75, 0.0, 0.5, 0.5, 1.0, 0.5, 0.0, -0.25, -0.75, 1.0, 1.0, -1.0, 0.0, 0.0, 0.75, -0.75, -0.5, 0.25, 0.25, 0.25, 1.0, -0.75, -1.0, -1.0, 0.75, 0.25, 0.75, 0.5, -0.5, 0.0, 0.25, 0.0, -1.0, -1.0, -1.0, 0.5, -0.25, 0.25, 1.0, 0.25, 0.75, 0.5, -0.5, 0.75, 0.5, 0.75, 0.75, -1.0, ]);
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    device00.pushErrorScope("validation");
    
    
    
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
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
    
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer002
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.destroy();
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const array5 = new Float32Array([1.0, -0.25, -1.0, 1.0, -1.0, 0.5, -0.5, 0.0, 1.0, -0.25, -1.0, -0.75, 1.0, -0.75, -0.75, 0.0, 0.75, 0.5, -0.5, 0.0, 0.0, 0.75, -1.0, -0.25, -1.0, 0.0, -0.5, -0.5, 0.25, -0.75, -1.0, -1.0, -1.0, 1.0, -0.5, -0.25, -0.75, -0.5, -1.0, 0.5, -0.75, -0.5, 0.0, -0.5, 0.75, 0.25, 0.5, -0.75, 1.0, -0.5, 1.0, 0.25, -0.25, 0.75, -0.5, 0.0, -0.5, 1.0, -0.25, -0.25, 1.0, 1.0, -0.5, 0.5, -0.5, -1.0, 0.0, 0.5, 0.0, 0.5, 1.0, 0.5, -0.25, -0.25, 0.0, 1.0, -0.25, -0.5, 1.0, 0.0, 0.25, -0.5, -0.5, 0.5, -0.75, -1.0, 0.75, -0.75, 0.5, 0.0, -1.0, 1.0, -0.75, -1.0, 0.25, -1.0, 0.5, 1.0, 0.25, 0.25, ]);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
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
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    command_encoder002.insertDebugMarker("mymarker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    command_encoder002.copyBufferToTexture(
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
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder002.copyBufferToBuffer(
        buffer002,
        0,
        buffer001,
        0,
        400
    );
    
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
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
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer000
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
    compute_pass_encoder0001.insertDebugMarker("marker")
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0001.insertDebugMarker("marker")
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const texture_view0034 = texture003.createView({ label: "texture_view0034" });
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    compute_pass_encoder0001.insertDebugMarker("marker")
    
    
    
    
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder0010.popDebugGroup()
    
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder000.insertDebugMarker("mymarker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    texture003.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer002,
        0
    )
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder0001.insertDebugMarker("marker")
    device00.pushErrorScope("out-of-memory");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    compute_pass_encoder0010.popDebugGroup()
    
    device00.pushErrorScope("out-of-memory");
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer001,
        0,
        400
    );
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("validation");
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    command_encoder003.copyTextureToTexture(
        {
            texture: texture004
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
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer000,
        0,
        400
    );
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    
    
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const array6 = new Float32Array([-0.5, 0.5, 0.0, -0.5, 0.5, 0.5, -0.75, -0.5, 0.5, -0.75, 0.25, -1.0, 0.0, -0.25, 0.25, -0.5, -1.0, -1.0, -0.75, 0.75, -0.5, 0.5, -0.75, -0.75, 0.0, -0.25, 0.75, -0.5, 0.75, -0.25, 0.0, -0.25, 0.0, -0.25, -0.25, -0.25, 0.75, -0.5, 0.75, 0.0, 0.0, 1.0, 0.25, 1.0, 0.25, 0.75, 0.5, 0.5, 0.5, -0.5, 0.75, 0.75, -0.75, -1.0, -0.75, 0.75, -0.25, 0.0, -1.0, -0.5, 0.5, 0.75, 0.25, 1.0, 0.5, 0.75, -0.75, -1.0, -0.25, -0.75, -0.5, -0.25, 0.0, -0.5, -1.0, 0.25, 0.75, 0.25, 0.25, -0.75, 0.75, -1.0, 0.25, -0.75, -1.0, 0.25, -1.0, -0.5, -0.75, 0.25, -0.5, 0.75, -0.25, 0.0, 1.0, 1.0, -0.5, 0.0, -1.0, 0.5, ]);
    
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer000
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
    
    compute_pass_encoder0001.popDebugGroup()
    
    command_encoder003.copyBufferToBuffer(
        buffer002,
        0,
        buffer001,
        0,
        400
    );
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module0014,
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
            module: shader_module0014,
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0001.popDebugGroup()
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    command_encoder004.insertDebugMarker("mymarker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    command_encoder003.copyBufferToBuffer(
        buffer002,
        0,
        buffer002,
        0,
        400
    );
    command_encoder003.copyBufferToTexture(
        {
            buffer: buffer002
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
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
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    var shader_module0015_code = "";
    try {
        shader_module0015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0015 = await device00.createShaderModule({ label: "shader_module0015", code: shader_module0015_code })
    command_encoder003.copyBufferToBuffer(
        buffer002,
        0,
        buffer002,
        0,
        400
    );
    texture005.destroy();
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder005.insertDebugMarker("mymarker");
    const array7 = new Float32Array([0.75, 1.0, -1.0, 0.5, 0.75, -1.0, -0.75, -0.5, 1.0, 0.25, -0.75, -1.0, 0.75, -0.5, 0.75, 0.0, 1.0, 0.75, 0.5, 0.75, -0.25, 0.5, -1.0, 1.0, -0.75, -0.5, 0.75, -0.75, -0.75, -0.25, -0.25, 0.25, -0.25, 0.25, -1.0, 0.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.75, 1.0, 0.5, -0.25, 0.25, -0.25, -1.0, 1.0, 0.5, -0.5, -0.5, -0.25, 0.5, 0.5, 0.0, 0.0, -0.75, 0.5, 0.25, -0.75, -0.75, -0.75, -0.75, 1.0, -0.75, 0.25, -1.0, 0.75, 0.5, 0.0, 0.5, 0.25, 0.5, 0.25, 0.5, 1.0, -1.0, 0.5, 0.25, 0.75, 1.0, -0.25, -0.5, 0.0, 0.0, -0.25, -0.5, 0.5, -0.25, -0.5, 0.5, -0.75, 0.5, -0.75, -0.75, 0.5, -0.25, -0.5, 0.5, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer000
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
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device40.pushErrorScope("validation");
    
    const command_buffer000 = command_encoder000.finish();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device00.pushErrorScope("validation");
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    command_encoder005.copyBufferToBuffer(
        buffer001,
        0,
        buffer001,
        0,
        400
    );
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer002,
        0
    )
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    command_encoder004.copyBufferToBuffer(
        buffer000,
        0,
        buffer000,
        0,
        400
    );
    
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
    
    
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer005 = command_encoder005.finish();
    
    command_encoder004.insertDebugMarker("mymarker");
    
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder004.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module0014,
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
            module: shader_module0014,
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
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module0015,
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
            module: shader_module0015,
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
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    command_encoder006.insertDebugMarker("mymarker");
    
    
    device40.queue.submit([]);
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    var shader_module0016_code = "";
    try {
        shader_module0016_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0016.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0016 = await device00.createShaderModule({ label: "shader_module0016", code: shader_module0016_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    
    const array8 = new Float32Array([-0.5, -0.25, 0.5, -0.75, -0.25, 1.0, 0.75, 0.0, -1.0, -0.5, 1.0, 0.5, 0.25, 0.75, -1.0, -0.5, -0.25, -0.25, 0.0, -0.25, 0.75, 0.0, 1.0, 0.0, -1.0, 0.25, 0.5, -0.25, -1.0, 0.0, -1.0, 0.0, 0.75, -0.25, 0.5, 0.0, 1.0, -0.25, 1.0, 0.75, -0.5, -0.25, -0.5, 0.5, -0.75, -0.5, 0.5, 0.0, 0.0, 0.0, -0.5, -1.0, 0.0, -0.25, 0.0, -0.75, 1.0, 0.5, 0.25, -0.75, 0.25, 0.75, -0.25, -1.0, 0.75, -0.25, 0.75, -0.25, 0.75, 0.5, 1.0, 0.0, -0.5, 1.0, 0.0, 0.5, 0.0, -0.25, 0.0, -0.5, 0.25, -1.0, -1.0, -0.25, 0.75, 0.75, -0.75, 1.0, 0.75, -0.25, 0.25, -1.0, -0.75, 1.0, 0.5, 0.0, 0.75, -0.25, -0.5, -0.5, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer002
        },
        {
            texture: texture005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder006.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer001
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
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    command_encoder004.copyBufferToBuffer(
        buffer002,
        0,
        buffer001,
        0,
        400
    );
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    texture005.destroy();
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    command_encoder006.copyTextureToTexture(
        {
            texture: texture004
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
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module0017_code = "";
    try {
        shader_module0017_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0017 = await device00.createShaderModule({ label: "shader_module0017", code: shader_module0017_code })
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder006.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder006.copyBufferToTexture(
        {
            buffer: buffer001
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
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder003.setPipeline(render_pipeline008);
    
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    command_encoder006.copyTextureToTexture(
        {
            texture: texture000
        },
        {
            texture: texture005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const array9 = new Float32Array([0.75, 0.5, 0.5, 0.5, -0.25, 0.25, -1.0, -0.5, 0.0, 1.0, 0.75, 0.0, -0.5, 1.0, -1.0, -0.5, -0.5, 0.5, 0.75, -1.0, -0.25, 1.0, 0.5, 0.25, -1.0, 0.25, 0.25, 1.0, -0.5, 0.75, 0.5, -1.0, 1.0, -0.75, -0.5, -0.75, 0.25, 0.5, 0.75, 0.0, 1.0, -0.75, 0.75, -0.5, 0.25, 0.75, 0.0, 1.0, -1.0, 0.75, -1.0, -0.5, 0.75, 1.0, 0.0, 0.25, 0.0, 1.0, -0.5, 0.5, -1.0, -1.0, 0.25, 0.75, -0.25, -0.5, -0.75, -1.0, 0.5, -0.75, 0.25, -1.0, -0.25, 1.0, 0.0, -0.5, 0.5, -0.75, -0.75, 0.25, -0.5, 0.25, 0.75, 0.0, -0.5, -0.5, 0.75, 0.25, 0.25, 0.0, 0.0, 0.75, 0.75, -0.75, 1.0, 0.0, -1.0, -0.5, -0.25, -1.0, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer002
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const command_buffer004 = command_encoder004.finish();
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    const command_buffer006 = command_encoder006.finish();
    const array10 = new Float32Array([0.0, 0.5, 1.0, 0.5, 0.25, 0.0, -0.5, -0.25, -1.0, -0.5, -1.0, -1.0, 0.25, -1.0, 0.5, -0.25, -1.0, -0.75, -0.25, 0.0, -0.5, 0.0, -0.25, -0.75, -0.75, -1.0, -0.25, 0.75, -0.75, 0.25, 0.0, 0.75, 0.75, -1.0, -0.25, -0.5, -0.25, 0.5, 0.75, 1.0, 0.75, 0.75, 0.75, -0.75, -0.25, -0.5, 1.0, -0.5, 1.0, -0.25, -0.5, 1.0, 0.75, 0.5, -0.25, -0.75, 0.5, 0.25, 1.0, -0.25, -0.75, -0.75, -1.0, 0.25, 1.0, -0.75, 0.25, -1.0, -0.75, 0.75, 0.0, -1.0, 0.25, 0.0, -1.0, -1.0, 0.25, -0.5, -0.5, 0.75, -0.25, 0.75, -1.0, 0.0, -0.75, 1.0, 0.0, -0.75, 1.0, -0.5, -0.5, 0.75, 1.0, 0.25, -0.75, 1.0, 0.75, -0.5, 0.0, 0.5, ]);
    render_bundle_encoder003.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeTexture({ texture: texture004 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    texture004.destroy();
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    var shader_module0018_code = "";
    try {
        shader_module0018_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0018.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0018 = await device00.createShaderModule({ label: "shader_module0018", code: shader_module0018_code })
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    render_bundle_encoder003.pushDebugGroup("group_marker");
    compute_pass_encoder0001.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    device50.queue.submit([]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer002 = command_encoder002.finish();
    device60.queue.submit([]);
    device50.queue.submit([]);
    compute_pass_encoder0010.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer003, command_buffer004, command_buffer005, command_buffer006, ]);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0010.popDebugGroup()
}