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
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device40.destroy();
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    
    
    
    buffer100.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
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
    
    
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
    const command_buffer300 = command_encoder300.finish();
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    const command_buffer301 = command_encoder301.finish();
    device10.destroy();
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    query300.destroy()
    
    
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer302 = command_encoder302.finish();
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    
    render_bundle_encoder300.setPipeline(render_pipeline304);
    
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
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    buffer303.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8snorm",
        dimension: "2d"
    });
    query200.destroy()
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    device30.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    query201.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    buffer200.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device20.queue.submit([]);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder501.insertDebugMarker("mymarker");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    render_bundle_encoder500.setPipeline(render_pipeline500);
    
    device40.destroy();
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    
    device10.destroy();
    
    const command_buffer500 = command_encoder500.finish();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    buffer001.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer503,
        0
    )
    render_bundle_encoder500.popDebugGroup();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder501.clearBuffer(buffer500);
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device50.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query000.destroy()
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    device00.destroy();
    const array0 = new Float32Array([0.5, 1.0, 0.0, 0.75, -1.0, 1.0, 0.25, -1.0, 0.75, 0.0, -1.0, -0.5, -0.25, 0.5, 0.25, -0.25, -1.0, 0.0, 0.0, -0.5, 0.5, -1.0, 0.75, 0.0, 1.0, 1.0, 0.0, 0.75, -0.5, 0.25, 0.0, -0.25, -0.75, 0.5, -0.75, -1.0, -0.25, -0.5, 1.0, -0.5, -1.0, -1.0, -0.75, 0.5, -0.5, -0.75, 0.25, -1.0, 0.75, 0.0, 0.25, 0.5, -0.75, 1.0, 0.75, 0.25, 0.25, -1.0, -1.0, 1.0, -0.25, 0.5, -0.5, 0.0, 1.0, 0.25, 1.0, 1.0, 0.75, 0.25, -0.25, 0.5, 0.25, -0.75, 0.25, -0.25, -1.0, -0.75, 1.0, -0.75, -0.75, -0.25, -0.75, 0.5, -0.75, -0.5, -0.25, -0.75, 0.5, 0.75, 1.0, 0.0, -0.75, 0.5, 0.0, -0.25, 0.25, 0.75, -0.5, 0.5, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer201.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    query200.destroy()
    command_encoder600.insertDebugMarker("mymarker");
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    compute_pass_encoder2000.popDebugGroup()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array1 = new Float32Array([-0.25, -0.5, 0.5, -0.75, 0.0, 1.0, 0.0, 0.0, -0.5, -0.75, 0.5, 1.0, 0.0, -0.5, 0.0, 0.0, -0.25, 0.75, -0.75, 0.75, 0.5, 0.0, 0.75, -0.25, -1.0, 0.5, -0.25, 0.25, -0.5, -0.5, 0.5, -0.5, -0.75, -1.0, -1.0, -0.25, -0.5, 0.5, -0.75, 0.75, -0.75, -0.75, -1.0, 0.25, 0.5, 0.75, 0.25, -0.25, 0.25, 0.75, 1.0, -0.5, -1.0, 0.5, 0.5, 0.75, -0.25, 0.75, -0.25, -1.0, 1.0, -0.75, 1.0, 0.25, -0.25, -0.25, 0.25, 0.5, -0.25, 0.75, 0.75, 0.75, 0.75, -0.25, 0.25, 0.5, -0.5, 0.0, 0.0, 0.75, -0.75, 0.75, -0.25, 0.5, 0.0, 1.0, 0.0, -0.25, 0.75, 0.75, 0.5, 0.5, 0.5, -0.5, 0.25, 0.5, -0.75, -0.5, 0.25, 0.5, ]);
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    buffer601.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const array2 = new Float32Array([0.5, -1.0, 1.0, -1.0, 0.75, -0.5, 0.0, -0.25, -0.25, 1.0, -0.5, -0.75, -0.25, -0.5, 1.0, -0.5, 0.25, -0.5, 0.75, 0.75, -0.25, -1.0, -1.0, -0.75, -1.0, 0.25, 0.75, -0.75, -1.0, -0.5, 0.5, 0.75, -0.75, -0.75, 0.75, 0.25, -0.25, -1.0, -1.0, -0.5, -0.25, -0.75, -1.0, -1.0, 0.5, -0.75, -1.0, -0.75, 1.0, -0.75, 0.0, -1.0, -0.5, 1.0, -1.0, -0.25, 0.25, 0.75, -0.5, 0.5, -0.5, 0.75, -0.75, -0.75, -0.75, -0.5, -0.25, 0.0, -0.5, 1.0, 1.0, 0.5, 0.5, 0.5, -0.75, -0.25, -0.75, 0.25, 0.25, -0.25, -0.25, 0.0, 1.0, 0.75, 0.25, 0.25, 0.0, -0.75, -0.5, 0.0, -0.75, 1.0, 0.0, -0.75, -0.25, -0.25, -0.5, 1.0, -1.0, 1.0, ]);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const command_buffer600 = command_encoder600.finish();
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    render_bundle_encoder502.setPipeline(render_pipeline501);
    
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    buffer600.destroy()
    query202.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device60.destroy();
    
    
    
    const array3 = new Float32Array([0.5, -0.5, -0.5, -0.25, 0.25, -0.5, -0.75, -0.25, 0.0, -0.25, 0.0, 0.0, -0.25, -1.0, 1.0, -0.5, 1.0, -1.0, 0.25, -0.25, -0.25, -0.75, 0.5, -0.5, 0.0, 0.5, -0.75, 0.5, 1.0, -1.0, 0.75, -0.75, 0.5, -0.25, -0.25, -0.75, -1.0, 0.5, -0.5, 1.0, 0.25, -1.0, 0.75, -0.5, -0.5, 0.25, -1.0, 0.75, -1.0, -0.75, 0.75, -0.25, -0.25, 0.25, 0.25, -0.25, -1.0, 0.0, 0.25, -0.5, -1.0, -0.25, -0.5, 0.75, 0.75, 0.5, 0.25, 0.25, -0.5, -0.5, 0.25, 1.0, 0.25, 0.5, -0.25, -0.75, 0.5, -0.25, 0.0, -0.5, -0.25, 0.75, 1.0, -0.75, 0.0, -0.75, -0.25, -1.0, 0.0, -0.75, -0.5, 0.25, -0.75, -0.75, 0.25, -1.0, -0.5, 1.0, 1.0, 0.5, ]);
    
    
    render_bundle_encoder301.setPipeline(render_pipeline301);
    buffer501.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const command_buffer502 = command_encoder502.finish();
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.destroy();
    
    device50.queue.submit([command_buffer500, ]);
    
    query202.destroy()
    
    
    
    
    
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
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder300.popDebugGroup();
    
    
    
    
    const array4 = new Float32Array([-0.25, -0.5, -1.0, -1.0, -1.0, -1.0, 0.75, 0.75, -0.5, 0.0, -1.0, -0.5, -0.75, 0.75, -1.0, 1.0, -0.75, -0.75, -0.25, 1.0, 1.0, 0.75, -1.0, -0.75, -1.0, 0.25, 1.0, 1.0, 0.5, -1.0, 0.75, 0.5, -0.25, -0.75, 1.0, -0.5, -0.75, 1.0, -0.25, 0.25, 0.5, -0.25, -1.0, 0.25, 0.25, 1.0, -0.75, 1.0, -0.5, -0.5, -0.25, -0.75, -0.75, -0.25, 0.0, -0.25, 0.0, 1.0, 0.5, -0.5, 0.75, 0.25, -1.0, 1.0, -0.25, -0.75, -0.25, 1.0, -0.5, 0.5, -1.0, 0.75, -0.5, -0.5, 0.0, -0.25, 0.5, 0.75, 0.5, 0.75, -0.75, 0.75, 1.0, -0.5, -0.5, 0.25, -0.5, -0.5, 0.75, -1.0, -0.25, 0.0, -1.0, 1.0, -0.75, -1.0, 0.5, -0.25, 0.5, 0.75, ]);
    
    buffer602.destroy()
    
    
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const array5 = new Float32Array([0.0, -0.5, 0.0, 0.25, 0.5, 1.0, 0.5, 0.0, 1.0, 0.5, 1.0, 0.0, 1.0, 1.0, -1.0, -0.5, 0.75, -0.25, 0.25, -0.75, 0.0, -1.0, 1.0, 0.5, 0.25, 0.5, -0.25, 0.5, 1.0, -0.5, -0.5, -0.75, 1.0, 0.0, 1.0, -1.0, 0.5, 0.0, -0.5, 0.25, -0.25, 0.5, 0.0, -0.5, -0.5, 1.0, 0.25, -0.5, 0.5, -0.75, 1.0, 0.25, 0.0, 1.0, 0.5, 0.25, -0.75, 0.75, 0.75, 1.0, -0.75, -0.25, 0.75, 0.5, 0.5, 1.0, -0.5, -0.5, -0.25, -1.0, -0.25, 0.25, -0.25, -0.75, -0.5, 0.0, 0.5, 0.5, 0.5, -0.75, -1.0, 1.0, -0.25, 0.5, -0.5, -0.25, 0.5, 1.0, 0.0, 0.5, 1.0, 0.5, -0.25, -0.25, -0.75, -0.25, 1.0, -0.5, 1.0, -1.0, ]);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    
    
    
    
    
    const command_buffer400 = command_encoder400.finish();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device60.queue.submit([command_buffer600, ]);
    
    
    device70.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const array6 = new Float32Array([-0.5, 0.25, 0.5, 0.5, -0.25, 0.5, 0.0, 1.0, -0.25, -0.75, -0.75, -1.0, 0.5, 1.0, 0.5, -1.0, -0.5, -0.25, -0.25, 0.5, -1.0, -1.0, 1.0, -0.75, 0.25, 0.5, -0.25, 0.0, -0.25, -0.25, 0.5, -0.25, 0.75, 0.0, 1.0, -0.25, -0.25, -0.25, -0.75, -1.0, 0.25, 0.25, -0.75, 0.5, 0.5, -0.5, 0.25, 0.75, 1.0, 0.5, 0.5, -0.75, 0.25, 0.25, -1.0, 1.0, 0.0, -0.25, 0.75, 1.0, 1.0, -1.0, 0.75, 0.25, 0.0, 0.25, -0.75, -0.5, 0.5, 0.75, 0.5, 0.5, -0.25, -1.0, 0.25, -0.25, 0.5, -0.5, -1.0, 0.25, -0.25, -0.75, -1.0, 0.75, -0.5, 0.5, 1.0, -1.0, 0.5, 0.0, -0.75, -1.0, -0.25, -0.75, 1.0, 1.0, -1.0, 0.0, 0.0, -0.5, ]);
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    query900.destroy()
    
    
    render_bundle_encoder501.setPipeline(render_pipeline501);
    
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    device40.queue.submit([command_buffer400, ]);
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query901.destroy()
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    device90.destroy();
    query300.destroy()
    
    
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    query700.destroy()
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const array7 = new Float32Array([-1.0, -0.75, 0.5, 0.0, 0.5, 0.75, 0.25, 1.0, 0.75, 0.0, 1.0, 0.75, -0.25, 1.0, 0.75, 1.0, 0.0, -0.25, 0.75, 1.0, -0.75, -0.25, -1.0, 0.0, -0.75, 0.5, 1.0, 1.0, -1.0, 0.5, -1.0, 0.5, 1.0, -0.75, -0.5, 0.0, -1.0, 0.5, 0.75, 0.0, -0.25, -0.75, 0.0, 0.75, -0.25, -0.75, 0.5, 0.5, -0.75, -0.5, -1.0, -0.75, -0.75, 0.25, 0.75, 0.0, 0.75, 0.5, 0.5, 1.0, 1.0, -0.5, -0.5, 0.0, 0.75, -0.5, -0.75, -0.75, -1.0, 0.5, 0.75, -1.0, -0.25, 0.25, 0.25, 1.0, 0.25, 0.75, -1.0, 0.25, 0.5, 0.25, -1.0, -1.0, 0.75, 1.0, 1.0, -0.5, 0.25, -0.75, 0.25, 0.75, -0.5, -1.0, 0.25, -1.0, 0.0, 1.0, 0.25, 0.0, ]);
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    query901.destroy()
    
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    render_bundle_encoder801.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer306, 0, array2, 0, array2.length);
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    
    device100.queue.writeBuffer(buffer1001, 0, array0, 0, array0.length);
    command_encoder503.resolveQuerySet(
        query500,
        0,
        32,
        buffer502,
        0
    )
    
    device100.queue.writeBuffer(buffer1001, 0, array2, 0, array2.length);
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    render_bundle_encoder801.popDebugGroup();
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    device100.queue.writeBuffer(buffer1001, 0, array4, 0, array4.length);
    
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device100.queue.writeBuffer(buffer1000, 0, array0, 0, array0.length);
    buffer602.destroy()
    
    device100.queue.writeBuffer(buffer1001, 0, array7, 0, array7.length);
    
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array8 = new Float32Array([0.25, 0.0, -0.25, 0.75, 0.0, -0.75, 0.0, 0.0, -0.5, -0.75, -0.5, -0.75, -1.0, 1.0, -1.0, -1.0, -0.75, -0.75, -0.75, -0.5, -0.25, -0.5, 1.0, 0.5, -0.75, 0.5, 1.0, -0.5, 0.25, -0.75, 0.5, 0.5, -0.5, 0.25, -0.5, 0.75, -0.25, 0.75, 1.0, -1.0, 0.0, -1.0, 0.75, 0.25, 0.0, 0.25, -0.75, -0.5, 0.75, -0.75, -0.75, 0.25, 0.75, 0.75, 0.75, -1.0, 0.75, 0.5, -0.5, -0.5, -1.0, -0.75, -0.5, -0.5, -0.5, -0.25, 1.0, -0.25, 0.5, 0.25, -0.5, -0.75, -0.25, -0.5, 0.5, -0.25, 0.25, 0.75, -0.75, 0.25, -0.25, 0.0, -1.0, 0.0, 0.0, 0.25, 0.0, 1.0, 0.25, 1.0, -0.25, 1.0, 0.5, 0.0, -0.75, -0.5, -0.25, 0.25, 0.5, 0.5, ]);
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query300.destroy()
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    buffer1002.destroy()
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device100.queue.writeBuffer(buffer1001, 0, array7, 0, array7.length);
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    device100.queue.writeBuffer(buffer1001, 0, array8, 0, array8.length);
    buffer504.destroy()
    
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder802.pushDebugGroup("group_marker");
    device100.queue.writeBuffer(buffer1003, 0, array6, 0, array6.length);
    command_encoder1001.copyBufferToBuffer(
        buffer1003,
        0,
        buffer1001,
        0,
        400
    );
    device80.queue.writeTexture({ texture: texture801 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder1001.clearBuffer(buffer1001);
    
    
    render_bundle_encoder801.insertDebugMarker("marker");
    const buffer1004 = device100.createBuffer({
        label: "buffer1004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_buffer1000 = command_encoder1000.finish();
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device100.queue.writeBuffer(buffer1001, 0, array8, 0, array8.length);
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device80.queue.submit([]);
    const command_buffer1001 = command_encoder1001.finish();
    const command_buffer1200 = command_encoder1200.finish();
    device100.queue.submit([command_buffer1001, ]);
    device100.queue.submit([command_buffer1000, ]);
    device60.queue.submit([command_buffer600, ]);
}