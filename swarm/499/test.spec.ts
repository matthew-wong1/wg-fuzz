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
    
    const array0 = new Float32Array([-0.75, -0.75, 0.25, 0.25, -0.5, -0.25, 0.75, 0.0, -0.25, -1.0, -0.5, 0.5, -0.25, 0.75, -1.0, -0.75, -0.5, 0.75, 0.0, 0.5, -0.25, 0.5, -1.0, 1.0, -1.0, -0.5, -0.25, -0.5, -0.25, -0.5, 1.0, 0.0, 0.0, 1.0, 0.5, 0.75, 0.25, 0.25, -0.5, 0.75, -0.5, -0.5, -0.75, 0.75, 0.25, -1.0, 0.0, 0.5, 0.75, 0.0, 1.0, -0.75, -0.75, 1.0, 0.25, 0.5, 1.0, -0.5, -0.25, -0.25, 0.5, 0.0, 0.25, -0.5, -1.0, 0.0, 0.5, -0.75, -0.5, 0.25, 0.5, 0.5, 0.25, 0.0, 0.75, -1.0, -0.75, -1.0, -0.25, 0.75, -0.75, -0.25, -1.0, -0.75, -1.0, -0.25, 1.0, -0.75, -1.0, 0.75, 0.75, -0.5, -0.5, -1.0, 0.25, 0.75, 0.75, -0.75, -1.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array1 = new Float32Array([-0.25, 0.25, 0.25, 0.0, -0.75, 0.25, 0.75, 0.0, 0.75, 0.25, 0.25, 0.5, -0.75, 1.0, -0.75, 0.75, 1.0, 0.5, -0.5, -0.75, 1.0, -0.5, 1.0, 1.0, -1.0, 0.5, -0.75, 0.5, 0.75, -0.25, 0.5, -0.25, -0.75, 0.75, 1.0, 0.75, -0.5, 1.0, 1.0, -0.25, 0.5, 0.5, -1.0, 0.5, 1.0, -0.25, 0.75, 1.0, -0.25, 0.25, -0.25, -0.75, 1.0, 0.75, -1.0, -1.0, 0.25, 0.25, -1.0, -0.75, 0.0, -1.0, 0.75, 0.0, 0.0, -1.0, 1.0, 1.0, 0.75, -1.0, -1.0, -0.25, 0.25, -0.5, -0.25, 0.25, 0.5, -1.0, -0.25, -0.25, 1.0, 0.0, -0.5, -0.5, 1.0, 0.5, 0.0, -0.5, -0.25, 0.25, 1.0, 0.25, -1.0, -0.75, -0.25, 0.5, 0.5, -0.25, -1.0, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([-0.25, -0.5, 0.75, -1.0, 0.75, 0.25, -0.5, -0.5, 0.5, 1.0, 0.0, 0.25, 1.0, -0.75, -0.25, -0.25, -0.25, 0.75, 1.0, -0.75, -0.75, 0.0, 0.75, 1.0, -0.75, -0.25, -0.75, 0.5, 1.0, -0.5, 0.25, 0.0, 0.75, 1.0, -1.0, 0.25, 0.5, -1.0, 0.0, -0.5, -0.5, 0.75, 0.75, -0.25, 1.0, -0.25, -0.75, -0.75, -1.0, -0.5, -0.5, -0.75, -0.25, -1.0, 0.25, 0.5, 0.5, 0.0, -1.0, 0.75, 0.75, -1.0, 0.0, -0.75, 1.0, 1.0, -0.75, -0.25, -1.0, 0.25, 0.25, 0.5, -0.75, -0.5, 1.0, 0.0, 1.0, -0.25, 0.5, -0.5, -0.75, 0.75, 0.5, 0.5, -0.75, -0.75, 0.0, -0.25, 0.0, 0.5, 0.75, -1.0, 0.25, 0.5, 0.5, 0.25, 0.25, 1.0, 0.25, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([0.5, 0.5, 1.0, 0.0, 0.5, 0.75, 1.0, 0.0, -0.5, -0.75, -1.0, -0.5, 0.75, 0.25, 1.0, 1.0, 0.5, -1.0, -0.5, 0.0, 1.0, 0.75, 0.75, 0.75, -0.75, -0.5, -0.5, -0.5, 0.5, 1.0, 0.0, 0.75, -1.0, 1.0, -0.25, 0.75, 0.5, -1.0, 1.0, 0.75, 0.0, 0.5, 0.75, 1.0, -0.5, 0.25, 0.0, 1.0, 0.75, 0.0, -0.75, 0.25, -0.5, 0.0, 0.0, -1.0, 1.0, -0.5, 0.5, -1.0, 0.5, 0.5, 0.25, -0.25, 0.25, 0.0, -1.0, -1.0, 0.0, -0.75, 0.25, -0.75, -1.0, 0.25, -1.0, 0.75, 0.0, 1.0, 0.25, 0.0, -0.25, -0.25, 0.5, -0.25, 0.75, 0.0, -0.25, -0.25, 1.0, 0.0, -0.75, -0.5, 0.0, -0.5, 1.0, -1.0, 0.5, 0.0, 0.25, -0.75, ]);
    const array4 = new Float32Array([0.25, 1.0, 0.5, 0.25, -0.5, 0.75, -0.75, 0.25, -0.75, -1.0, 0.5, -0.5, 0.75, 0.0, -0.25, 1.0, 0.0, -0.25, 1.0, -0.5, -0.75, 0.25, 0.5, 0.5, 1.0, 0.0, 0.5, -0.5, 0.5, -0.5, -0.75, 0.75, -0.75, -1.0, 0.0, 0.0, 0.75, 1.0, 1.0, 0.0, 0.5, -1.0, 0.75, -0.5, -0.5, -0.5, -1.0, 0.25, -1.0, 0.75, 1.0, -1.0, -0.75, 1.0, 0.0, 0.0, -0.75, 1.0, 0.5, 0.5, -0.5, 0.25, 0.25, -0.5, -0.75, 0.5, -0.5, 0.75, -0.75, -0.25, 0.25, 0.5, 1.0, -0.5, 1.0, 1.0, -0.5, 0.0, -0.25, -0.25, 0.75, -0.5, 0.25, 1.0, -0.75, -1.0, 0.75, 0.75, 0.75, 0.0, -0.75, -0.75, -0.75, 0.5, 0.25, 1.0, -1.0, 1.0, 1.0, -0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([0.0, 1.0, -1.0, -0.25, 0.75, -0.75, -0.25, -0.75, -0.5, -0.25, -0.25, 0.5, 1.0, 0.0, -0.5, 1.0, 0.25, 1.0, -0.25, 0.25, -0.5, -0.5, 0.75, 0.25, -0.5, 0.5, 0.75, 0.75, 0.5, -0.25, -0.25, 0.5, 0.75, 0.75, 1.0, 1.0, 0.75, 0.25, 0.0, 0.5, -1.0, 0.75, -1.0, 0.0, 0.0, -0.75, 0.5, 0.0, -0.75, 0.25, -0.25, -1.0, -0.25, 0.25, 1.0, -0.5, -0.5, 0.0, 0.0, 0.0, -0.75, -0.25, -0.75, 0.0, -0.75, 0.0, 0.0, 0.0, 1.0, 1.0, 0.0, -0.5, -1.0, -1.0, -0.75, -1.0, -0.5, 0.25, -1.0, -0.75, 0.75, -0.75, 0.75, -0.25, -0.75, 1.0, -0.25, 0.0, 0.5, -0.25, 0.75, 1.0, 0.75, -0.5, -0.75, 1.0, 0.75, 1.0, -0.25, 1.0, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const array6 = new Float32Array([0.5, -1.0, 0.25, -0.5, 0.0, -0.25, -0.5, 0.0, 0.0, 0.0, -0.25, -0.5, 0.5, 0.5, -0.5, -0.75, -0.25, 0.25, 1.0, 0.25, 0.75, 0.0, 1.0, 0.5, 0.25, -0.5, 0.5, -0.25, -1.0, 0.25, 0.75, 0.25, -0.5, -0.25, 0.5, 0.25, 0.75, -0.25, 0.0, -0.75, -0.25, 0.0, -0.5, 0.5, -1.0, 0.0, 0.5, 0.5, -0.25, 0.75, 0.25, 0.0, 0.5, -1.0, -0.75, 1.0, 0.0, 0.25, 0.75, -0.5, 0.5, 0.0, -0.25, 0.5, -0.5, -1.0, 0.25, -1.0, -0.75, -1.0, -0.5, 0.75, 1.0, -1.0, 0.75, -0.75, -0.25, 0.25, 0.0, 0.5, 0.75, -0.75, -0.5, -1.0, -0.25, 1.0, 0.75, 0.5, -0.25, 1.0, 0.0, 0.25, 1.0, -0.5, 0.25, -1.0, 0.0, -0.25, 0.5, -1.0, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device10.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    device30.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    query201.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    
    query202.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
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
    const array7 = new Float32Array([0.75, -1.0, 0.75, -1.0, -0.25, -0.25, 1.0, -0.25, -0.5, 0.25, 0.0, 0.75, 0.75, -1.0, 0.75, -1.0, -0.75, 0.75, 0.75, -0.75, -0.5, -1.0, -0.5, 0.75, 0.25, 0.25, -0.75, -0.25, 0.75, 0.75, -1.0, 1.0, -1.0, 0.0, 0.25, -0.75, -0.75, 1.0, -0.25, 1.0, -0.25, 0.0, 1.0, -0.75, 0.75, 0.0, 0.75, 1.0, -0.75, -0.5, 0.25, 0.25, 1.0, -0.25, 0.75, 0.25, 0.25, -1.0, -0.75, 1.0, 0.0, 0.0, -0.25, -1.0, 0.5, 1.0, -1.0, 1.0, -0.5, -1.0, 0.75, -0.5, 1.0, 0.0, -0.5, 0.25, -1.0, 0.25, -1.0, 0.75, 0.5, -1.0, -0.25, -1.0, -0.75, 0.25, 0.75, -0.5, 0.0, -0.5, -0.5, 0.5, 0.75, 0.0, 0.25, 0.0, 0.5, 0.75, 0.25, -0.75, ]);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    query201.destroy()
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder200.setPipeline(render_pipeline202);
    
    
    command_encoder202.insertDebugMarker("mymarker");
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
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
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    render_bundle_encoder202.insertDebugMarker("marker");
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    
    
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.setPipeline(render_pipeline205);
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
    
    
    
    
    const array8 = new Float32Array([0.75, 0.0, 0.5, 0.75, 0.25, 1.0, -0.25, 0.25, 1.0, 0.25, -0.75, 0.75, -0.25, -1.0, 0.25, 0.5, 1.0, -0.25, 0.5, 0.75, 0.0, -0.25, -1.0, 0.75, 0.5, 0.0, -1.0, -0.75, 0.5, 0.75, -0.5, 0.25, 0.0, -0.75, 1.0, 0.5, 0.0, 0.75, 1.0, 0.25, -0.75, 0.25, 0.5, 0.25, -0.75, -0.75, 0.0, 0.75, 0.25, 0.0, 0.0, 0.0, -0.5, -0.5, 0.0, -0.75, -1.0, 0.75, 0.25, -0.75, -0.25, 0.0, 0.5, 0.25, 0.25, -0.5, -1.0, -0.5, 0.0, -0.75, -1.0, 0.0, -0.5, -1.0, 0.0, -0.5, 1.0, -0.5, 0.25, -0.75, -1.0, -0.5, -1.0, 0.0, 0.75, 0.0, 0.75, 0.0, 0.25, -1.0, 0.75, -0.25, 0.5, -0.5, -0.25, -0.75, 0.0, -0.75, 0.5, -0.25, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const array9 = new Float32Array([0.0, -0.25, -1.0, 0.5, -0.5, 0.75, -0.5, -1.0, -0.25, -0.5, 0.0, 0.75, 0.5, 0.0, -1.0, 0.25, -0.75, -0.75, -0.5, 1.0, 0.0, 0.0, 0.0, 0.75, 0.75, -0.25, 0.5, 0.25, 0.75, 1.0, 0.25, 0.25, 0.75, 0.5, 0.0, 0.75, -0.75, 0.5, -1.0, -0.25, -0.25, 0.75, -0.75, -0.5, -0.75, -0.25, 1.0, -0.75, 0.0, 0.25, 0.0, -1.0, 0.75, -1.0, 0.5, -1.0, -0.75, 0.5, 0.5, 0.0, 0.0, -0.25, -0.25, -1.0, -0.75, -1.0, 0.5, -0.5, -0.25, 0.5, 0.0, 1.0, 0.0, 0.5, 0.0, 0.75, -0.25, 0.25, -0.75, -0.5, 1.0, -1.0, 0.5, 0.0, 0.5, 0.25, 0.5, -0.5, 0.5, 0.25, -1.0, 0.0, 0.25, -0.25, -1.0, 0.5, -0.25, 0.0, -0.5, 0.0, ]);
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query201.destroy()
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    
    device40.destroy();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    query201.destroy()
    
    
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group202);
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    
    
    query206.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    const array10 = new Float32Array([-0.75, 0.5, -0.25, 0.75, 0.75, 0.5, 0.25, -0.5, -0.25, 0.0, -0.25, -0.5, 1.0, 0.5, -0.75, -0.5, -0.25, -0.25, 0.25, 0.75, 0.25, 0.5, -0.75, -0.75, 0.75, 1.0, 0.75, -0.25, 0.75, -0.5, 0.5, -0.75, 0.75, -0.5, 0.25, 0.0, 1.0, 0.5, 0.75, -0.5, -1.0, -0.5, -0.75, 0.0, -0.25, 0.25, -0.25, -0.5, -0.5, 1.0, 0.5, 0.75, -0.5, 0.25, 0.5, 0.25, 0.0, 0.75, 0.5, 0.0, 1.0, 0.0, -0.75, 0.25, -0.25, 0.0, -0.25, -0.5, 0.75, 0.0, 0.75, 0.5, 0.5, 0.5, -0.25, -1.0, 0.0, -1.0, 0.0, -0.75, 0.25, 0.25, 0.0, 0.5, 0.25, 1.0, -0.5, -0.25, 0.5, -1.0, -0.75, -1.0, 1.0, -0.25, -0.25, 0.0, 0.5, 0.75, -0.75, 0.25, ]);
    
    
    
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query205.destroy()
    query200.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query204.destroy()
    
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    
    const array11 = new Float32Array([-0.25, -0.75, 0.5, -0.5, -0.75, -0.75, -1.0, -0.75, 1.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0.5, -0.25, -0.25, 0.5, -1.0, 0.0, 0.25, -0.25, -0.25, -0.75, 0.25, 0.5, 0.0, 1.0, 0.0, 0.75, 1.0, 0.0, -1.0, 0.5, 1.0, 0.0, 1.0, -1.0, -0.5, -0.75, -0.5, 0.5, -0.75, -0.5, -0.5, 0.75, 0.5, 0.25, 0.75, -0.5, 0.0, 0.0, 1.0, 0.0, 0.5, 1.0, -1.0, 0.75, -0.75, -0.5, 0.5, 0.5, -0.5, -0.75, -0.75, -1.0, -0.5, 0.0, 1.0, -0.25, 0.75, -0.5, -0.5, 0.75, -0.5, -0.5, -0.75, 0.75, -0.5, -0.75, 0.0, 0.5, 0.25, 1.0, -0.5, 0.25, -1.0, -0.5, 0.75, 0.75, 0.25, 0.75, 0.25, -0.25, -1.0, 1.0, -1.0, -0.75, -0.25, -1.0, ]);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    
    
    query204.destroy()
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder2020.insertDebugMarker("marker")
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    render_bundle_encoder202.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const array12 = new Float32Array([-0.5, 0.75, 1.0, -0.75, 0.25, -0.75, 0.0, -1.0, -0.5, -0.5, 1.0, 0.75, -1.0, 1.0, 1.0, -0.25, 0.25, 0.0, 0.0, 0.0, 1.0, 0.5, 0.5, 0.75, -0.75, 0.25, 0.25, -0.5, -0.5, -0.25, 0.5, -0.25, -0.25, -0.5, -1.0, -0.75, -0.25, 0.5, -0.25, 1.0, -0.75, 0.5, 0.5, -1.0, 0.5, 0.5, -1.0, -1.0, -0.5, -0.75, 1.0, -0.75, -0.75, 0.0, 0.25, 0.75, 0.0, 0.5, 1.0, 0.0, 0.75, 1.0, 1.0, -0.5, 1.0, -1.0, 0.5, 0.5, 1.0, -0.25, -0.75, -1.0, 0.0, 1.0, 0.25, 0.0, 0.0, 0.5, 0.25, -1.0, -0.25, -1.0, 0.5, 1.0, 0.0, -1.0, 0.75, 0.25, -0.25, 1.0, -0.5, 0.75, 0.0, 0.25, -1.0, 0.0, -1.0, 0.25, 0.0, 0.5, ]);
    command_encoder500.insertDebugMarker("mymarker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder201.setVertexBuffer(0, buffer209);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    query204.destroy()
    render_bundle_encoder200.setVertexBuffer(0, buffer209);
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    
    
    
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    render_bundle_encoder201.draw(3);
    
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    
    
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
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
    const array13 = new Float32Array([1.0, 0.0, -0.75, 0.0, 0.75, -0.25, -0.75, 0.0, -0.5, 0.25, 0.0, -0.75, 0.75, -0.75, 0.5, -0.25, 0.5, -0.25, 0.0, 0.25, 0.5, 0.0, 0.5, 0.0, 1.0, -0.75, 1.0, -0.25, 0.25, 0.5, 0.5, 0.5, -0.25, 0.0, 0.5, -1.0, 0.5, 1.0, -0.25, 0.0, 0.0, -0.25, -0.5, 0.75, 0.75, 0.0, -0.25, -0.75, 0.0, 0.0, -0.75, 0.5, -0.5, 0.0, 1.0, -1.0, 1.0, -0.75, 0.25, 0.75, 0.75, -1.0, -0.25, 0.25, -0.5, 0.75, -0.25, 1.0, -0.25, 0.25, 1.0, -1.0, -0.75, 1.0, -0.25, -0.75, 0.25, 0.5, -0.25, 0.75, 0.75, -1.0, -0.25, -1.0, 0.0, 0.0, -0.25, 0.25, 0.25, -1.0, -0.75, 0.5, 0.25, 0.75, 0.25, 1.0, 1.0, -0.5, 0.75, -1.0, ]);
    
    query206.destroy()
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
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
    
    query500.destroy()
    
    const render_pipeline2016 = device20.createRenderPipeline({
        label: "render_pipeline2016",
        vertex: {
            module: shader_module2011,
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
            module: shader_module2011,
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
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    query207.destroy()
    query200.destroy()
    
    
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder202.setVertexBuffer(0, buffer209);
    var shader_module2013_code = "";
    try {
        shader_module2013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2013 = await device20.createShaderModule({ label: "shader_module2013", code: shader_module2013_code })
    render_bundle_encoder201.finish();
    
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    const render_pipeline2017 = device20.createRenderPipeline({
        label: "render_pipeline2017",
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
    render_bundle_encoder501.insertDebugMarker("marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pipeline2018 = device20.createRenderPipeline({
        label: "render_pipeline2018",
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
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    var shader_module2014_code = "";
    try {
        shader_module2014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2014 = await device20.createShaderModule({ label: "shader_module2014", code: shader_module2014_code })
    query201.destroy()
    const render_pipeline2019 = device20.createRenderPipeline({
        label: "render_pipeline2019",
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
    
    query204.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query203.destroy()
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device60.destroy();
    query203.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_pipeline2020 = device20.createRenderPipeline({
        label: "render_pipeline2020",
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
    
    const render_pipeline2021 = device20.createRenderPipeline({
        label: "render_pipeline2021",
        vertex: {
            module: shader_module2014,
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
            module: shader_module2014,
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
    query207.destroy()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const render_pipeline2022 = device20.createRenderPipeline({
        label: "render_pipeline2022",
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
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    
    
    query500.destroy()
    
    const texture_view2014 = texture201.createView({ label: "texture_view2014" });
    const render_pipeline2023 = device20.createRenderPipeline({
        label: "render_pipeline2023",
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
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32uint",
        dimension: "2d"
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline2024 = device20.createRenderPipeline({
        label: "render_pipeline2024",
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
    
    
    const render_pipeline2025 = device20.createRenderPipeline({
        label: "render_pipeline2025",
        vertex: {
            module: shader_module209,
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
            module: shader_module209,
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
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    const render_pipeline2026 = device20.createRenderPipeline({
        label: "render_pipeline2026",
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
    render_bundle_encoder502.insertDebugMarker("marker");
    const render_pipeline2027 = device20.createRenderPipeline({
        label: "render_pipeline2027",
        vertex: {
            module: shader_module2011,
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
            module: shader_module2011,
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
    render_bundle_encoder202.insertDebugMarker("marker");
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    query204.destroy()
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const sampler2010 = device20.createSampler( { label: "sampler2010" } );
    
    
    
    
    const array14 = new Float32Array([1.0, 0.25, -0.5, 0.5, 0.5, -0.25, -0.75, 1.0, 0.5, -0.25, -0.25, 0.0, 0.25, -1.0, 1.0, -1.0, 1.0, -0.5, -0.5, 0.0, -1.0, -0.25, 0.5, 1.0, 0.5, 0.5, 0.5, -1.0, -1.0, -0.5, 0.5, -0.75, 0.75, -0.25, 0.5, 0.0, 0.75, 0.75, 0.0, 0.25, 1.0, -0.5, 0.5, -1.0, 0.75, -1.0, -0.5, 0.75, 0.0, -0.25, -1.0, -1.0, 0.5, 0.75, 1.0, -0.75, -0.25, 0.75, 0.0, 0.75, 0.5, 0.75, 0.25, 0.0, 0.5, 0.25, -0.5, -0.5, 0.0, 0.75, 0.25, -1.0, -0.75, -0.5, 0.75, -0.5, -0.75, -0.25, -0.75, 0.5, 0.25, 0.0, -0.25, 0.75, 0.0, -0.25, 1.0, -0.25, 0.0, 0.5, 0.0, 1.0, 0.5, -0.75, 1.0, -0.25, -0.5, 0.5, 0.5, 0.0, ]);
    command_encoder502.popDebugGroup()
    const render_pipeline2028 = device20.createRenderPipeline({
        label: "render_pipeline2028",
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
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const sampler2011 = device20.createSampler( { label: "sampler2011" } );
    query207.destroy()
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    
    
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array15 = new Float32Array([0.0, 0.0, 1.0, 0.5, 1.0, 0.0, 0.25, -0.5, -0.25, 1.0, 0.25, 1.0, -0.25, -0.25, -0.5, 0.75, 0.5, 0.5, 0.75, -0.75, 1.0, -0.75, -0.25, 0.75, 0.75, -0.5, 1.0, 1.0, -0.75, 0.5, -0.5, 0.25, -0.75, 0.75, 0.25, -0.75, 0.25, -0.25, 1.0, 0.25, -0.25, 0.5, 0.75, 0.5, 1.0, -0.75, -0.5, -0.25, -0.25, -1.0, -0.5, 0.75, 0.5, 0.0, -0.25, -1.0, 0.25, 0.75, 0.75, 0.5, -0.5, 0.0, 1.0, -1.0, 1.0, -0.5, 0.0, -1.0, 0.5, 1.0, 0.5, 0.0, 0.75, 0.75, 0.5, 0.75, -0.5, -0.75, 0.0, -0.75, -1.0, 1.0, -0.5, 0.75, 0.5, 1.0, 0.5, 0.0, -0.75, -0.25, -0.5, -0.75, -0.5, 0.25, -0.75, -0.75, -0.75, 0.0, 1.0, 0.0, ]);
    
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    var shader_module2015_code = "";
    try {
        shader_module2015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2015 = await device20.createShaderModule({ label: "shader_module2015", code: shader_module2015_code })
    
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module2016_code = "";
    try {
        shader_module2016_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2016.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2016 = await device20.createShaderModule({ label: "shader_module2016", code: shader_module2016_code })
    
    
    
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    
    
    const render_pipeline2029 = device20.createRenderPipeline({
        label: "render_pipeline2029",
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
    
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const texture_view2033 = texture203.createView({ label: "texture_view2033" });
    
    
    
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module2017_code = "";
    try {
        shader_module2017_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2017 = await device20.createShaderModule({ label: "shader_module2017", code: shader_module2017_code })
    query500.destroy()
    compute_pass_encoder5030.insertDebugMarker("marker")
    
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    
    
    query502.destroy()
    const render_pipeline2030 = device20.createRenderPipeline({
        label: "render_pipeline2030",
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
    const render_pipeline2031 = device20.createRenderPipeline({
        label: "render_pipeline2031",
        vertex: {
            module: shader_module2017,
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
            module: shader_module2017,
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
    const array16 = new Float32Array([1.0, 0.75, 0.0, 0.75, -0.75, -1.0, -0.25, 0.0, 0.75, 0.25, -0.25, 0.0, 0.25, 0.0, -0.75, 0.75, -0.5, 0.5, -0.75, -0.5, -0.75, -1.0, 0.0, 0.75, -0.5, -0.75, 0.0, -0.5, 0.5, 0.0, -0.25, -1.0, -0.5, -1.0, 0.25, -0.75, -0.5, 0.0, -1.0, -0.5, 1.0, 0.5, -1.0, 0.0, -0.75, 0.0, -0.25, 1.0, 1.0, 0.75, 0.25, 0.25, 0.25, -0.25, 0.5, 1.0, -0.25, 1.0, 1.0, -0.75, -0.75, -0.5, 0.25, 1.0, -0.75, -0.75, 0.25, -0.75, 0.25, 1.0, 0.75, 0.75, -0.5, 0.0, 1.0, 0.25, -1.0, -0.5, -0.5, 0.25, -0.5, 0.5, 0.5, -0.25, 0.75, 0.0, -0.25, 0.5, -1.0, 0.25, 0.5, -1.0, 0.75, 0.0, 0.25, -0.75, -0.75, 0.5, -1.0, -0.75, ]);
    const texture_view2005 = texture200.createView({ label: "texture_view2005" });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_pipeline2032 = device20.createRenderPipeline({
        label: "render_pipeline2032",
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
    
    query203.destroy()
    const render_pipeline2033 = device20.createRenderPipeline({
        label: "render_pipeline2033",
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
    
    
    const render_pipeline2034 = device20.createRenderPipeline({
        label: "render_pipeline2034",
        vertex: {
            module: shader_module2015,
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
            module: shader_module2015,
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
    const render_pipeline2035 = device20.createRenderPipeline({
        label: "render_pipeline2035",
        vertex: {
            module: shader_module209,
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
            module: shader_module209,
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
    query205.destroy()
    
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const texture_view2034 = texture203.createView({ label: "texture_view2034" });
    const array17 = new Float32Array([0.75, -0.5, -0.5, 0.75, -0.75, 0.25, -0.25, -0.5, 0.75, 0.5, -0.5, 0.5, 0.75, 1.0, -0.5, -0.5, -0.5, 0.0, 0.25, 0.25, 1.0, 0.25, 0.5, -1.0, 0.5, -1.0, 0.25, -0.5, -0.75, 0.0, 1.0, 1.0, 0.0, -0.25, 0.75, 0.0, -0.75, 0.0, 0.75, 0.5, 1.0, 0.0, 0.5, -0.5, 1.0, 1.0, 0.5, 0.5, 0.5, -0.25, -0.25, 0.25, 0.5, 0.5, -0.5, -0.5, 0.25, 0.75, 1.0, -0.5, 1.0, -1.0, 1.0, 0.75, -0.5, -0.25, -0.75, -0.75, 0.25, -0.5, 1.0, 0.5, -0.25, -1.0, 0.0, 0.5, 0.5, 0.25, -0.25, -1.0, 0.0, 0.75, 1.0, 1.0, -1.0, 1.0, 0.0, -0.75, 0.25, -1.0, -0.75, -1.0, -0.75, 1.0, 1.0, -1.0, -0.75, -0.75, -1.0, 0.75, ]);
    render_bundle_encoder501.insertDebugMarker("marker");
    
    query207.destroy()
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    
    query206.destroy()
    
    
    query200.destroy()
    
    
    
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    command_encoder502.popDebugGroup()
    
    query500.destroy()
    
    render_bundle_encoder502.insertDebugMarker("marker");
    query207.destroy()
    query206.destroy()
}