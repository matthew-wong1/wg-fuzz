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
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([-0.5, 1.0, 0.5, 0.0, -1.0, 0.0, 0.0, -0.25, 0.25, 0.25, 0.5, -1.0, -0.75, 1.0, -1.0, -0.25, -0.25, 0.25, -0.5, 0.25, -0.75, -1.0, -0.5, -0.25, 1.0, -0.5, 0.0, 0.75, 1.0, 1.0, 1.0, -1.0, 0.25, -0.25, -1.0, 0.0, -0.5, 0.25, 0.0, -0.25, 0.5, -0.25, 1.0, 1.0, -0.25, 1.0, 0.0, -0.75, -0.5, -0.5, -1.0, -0.5, 0.0, -0.75, 0.25, -1.0, 0.0, 0.0, -0.5, -0.25, -0.5, -0.75, -0.75, -0.75, 0.75, 0.25, -0.5, -0.75, 0.75, -0.5, -0.75, -1.0, 0.0, 0.0, -0.25, 0.5, 0.0, -0.5, 1.0, -1.0, 0.75, -1.0, -1.0, 0.75, -1.0, -0.75, 0.75, 1.0, -1.0, -0.25, -1.0, 0.0, 0.5, -0.75, -1.0, -0.75, -1.0, 0.25, 0.75, -0.5, ]);
    const array1 = new Float32Array([1.0, 0.25, 0.25, 0.25, 1.0, -0.5, 0.25, -0.75, 0.5, 0.5, 1.0, -0.25, 0.75, -0.75, 0.0, 0.75, -1.0, -1.0, -0.25, -0.75, -0.25, 0.0, 0.75, 1.0, -0.5, -1.0, -0.25, 0.25, 0.75, 0.0, -0.5, 1.0, 0.5, -1.0, 0.5, -1.0, -0.5, -0.75, -0.5, -0.5, -0.5, -1.0, 1.0, 0.5, 0.5, 0.0, 0.0, 0.5, 0.25, -0.75, 1.0, 0.25, -0.25, 0.25, 1.0, -0.25, 0.0, 0.75, -1.0, 0.25, -1.0, -0.5, 0.25, 1.0, 0.5, 0.5, 0.0, 1.0, -0.5, 0.75, -0.5, 0.75, 0.5, -0.25, 0.5, 0.25, 1.0, 1.0, -0.75, -0.25, -0.75, -0.5, 0.25, 0.25, 0.75, -1.0, -1.0, -0.25, -0.25, 0.25, -1.0, -0.5, -0.75, -0.5, 0.25, 1.0, 0.5, -0.75, -0.25, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    
    
    
    
    
    
    const array2 = new Float32Array([-0.5, -1.0, 0.25, 0.0, 0.25, -0.25, 1.0, 0.25, 0.0, 0.0, -0.25, 1.0, 1.0, 1.0, 0.0, 0.75, 1.0, 0.5, 0.0, -0.75, -1.0, 1.0, 0.5, -0.5, 0.5, 0.25, -0.5, 0.0, 0.75, 0.0, -0.25, 0.25, 0.25, 1.0, -0.5, 0.25, 0.0, -0.5, -1.0, 0.25, -0.75, -0.25, 0.5, -1.0, 0.25, -0.5, -1.0, -1.0, 0.0, -0.25, 0.25, 0.25, -1.0, -0.25, -0.25, -0.25, 0.25, 0.75, -0.25, -0.5, -1.0, 0.75, 0.0, -0.75, 0.75, -1.0, -0.5, 1.0, -0.75, 0.5, -0.75, -0.5, -0.75, -1.0, 0.25, -0.25, 1.0, 0.0, 0.75, 0.0, 0.75, -0.5, 0.0, 0.5, -0.75, 1.0, 0.25, -0.75, -1.0, 0.25, -0.75, -1.0, 0.5, -0.75, -0.25, -0.75, -1.0, -0.75, 1.0, 0.0, ]);
    
    
    const array3 = new Float32Array([0.0, 1.0, -0.5, -0.25, 0.0, -1.0, 1.0, -0.25, -0.25, -1.0, -0.75, 1.0, 0.25, 0.75, 0.0, 0.0, -1.0, 0.25, -0.5, 0.5, -0.75, 0.0, 0.5, 0.25, -1.0, 0.75, 0.0, 0.5, 0.0, 0.0, 1.0, 0.5, -1.0, 0.25, 0.75, -0.75, -0.5, 0.0, -0.75, -1.0, -0.5, -1.0, 1.0, -0.75, 0.0, -0.25, -0.75, -0.25, 0.5, 0.25, 1.0, -1.0, -0.25, 0.0, 1.0, 1.0, 0.5, 1.0, 0.25, 0.5, -0.5, 0.0, -0.25, 0.5, -0.75, 0.0, 0.75, -0.25, 1.0, 0.0, -0.5, 1.0, -0.75, -0.5, 0.75, 0.75, 0.75, -1.0, 0.0, -0.25, 1.0, -0.75, 0.25, 0.5, -0.5, -1.0, -1.0, -0.25, -0.25, 0.5, 0.0, 0.0, 0.75, 0.75, -0.5, 0.25, -0.25, -0.75, 0.25, -0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([-0.25, 1.0, 1.0, 1.0, -0.25, -0.25, 0.25, 0.5, 0.75, -0.5, -0.75, 1.0, 0.0, -0.5, -1.0, -0.25, 0.75, -1.0, 0.25, 0.75, 0.5, 0.0, 0.25, -0.75, -0.25, 1.0, 1.0, -0.75, 0.0, -0.75, 0.0, 0.0, 0.75, 0.0, -0.5, 0.25, 0.5, 0.0, -0.25, 0.75, -0.75, -0.75, 0.25, -1.0, 0.5, -0.5, 1.0, -1.0, -0.5, -0.25, 0.0, -0.25, 1.0, -0.75, 0.25, 0.5, 0.25, -0.5, -0.25, -1.0, 0.0, 1.0, -1.0, -0.5, 0.25, 0.75, 0.0, -0.25, -1.0, 1.0, 0.0, -0.25, 0.5, 0.75, -1.0, 0.5, -0.75, 0.75, 0.75, 0.0, 1.0, -0.5, 0.0, 0.75, 0.25, 0.5, 0.5, 0.5, 1.0, 0.5, 0.25, 1.0, 0.0, -0.25, -0.75, 0.75, -1.0, -0.5, -0.75, 0.25, ]);
    
    const array5 = new Float32Array([0.75, 0.5, 0.25, -0.75, 0.5, -1.0, 0.0, 0.0, -1.0, 0.5, -0.75, -0.25, -0.75, 0.0, 0.5, -1.0, -1.0, -0.5, 0.5, 0.25, -0.25, -0.5, -1.0, -0.5, 0.0, 0.75, -1.0, -1.0, 0.0, 0.75, -1.0, -0.5, -1.0, -1.0, -0.75, 0.5, -1.0, 0.0, -0.25, -1.0, -0.25, 0.5, 0.25, 0.25, 0.25, -0.75, -1.0, 0.75, -0.5, 0.25, -1.0, 1.0, 1.0, 0.0, -0.5, 0.5, 0.75, 0.75, -1.0, 0.25, -0.25, -1.0, 0.0, -0.75, -1.0, -1.0, 1.0, -0.25, 0.75, 0.5, 0.25, 0.25, 0.5, 0.0, 0.75, -0.5, 0.25, -0.5, 0.25, 0.75, -0.25, 0.0, 0.0, 1.0, -0.25, 0.0, -0.25, -0.25, -0.5, 0.0, 0.25, -0.75, 0.25, 0.0, 0.75, 0.0, 1.0, 0.5, -1.0, 0.25, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    device10.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array6 = new Float32Array([-1.0, -1.0, 0.75, 1.0, 0.75, 0.5, 0.75, -1.0, 0.75, 0.75, 0.75, 0.75, -1.0, -0.5, 0.75, -0.75, 0.25, 1.0, 0.0, 0.5, -1.0, 0.75, 0.0, -0.5, 0.5, 0.0, -0.75, -0.5, 0.75, 1.0, 1.0, 0.5, 0.5, -1.0, 0.75, 1.0, 1.0, 0.75, -0.75, 0.75, -0.75, 0.5, -0.75, 0.75, 1.0, 0.75, -0.75, -1.0, 0.0, -0.25, -0.25, 1.0, -1.0, -0.25, -0.25, -0.5, 0.5, 0.25, 1.0, 0.0, -0.75, 1.0, 0.25, 0.25, 0.25, 0.75, 0.5, -0.5, 1.0, -0.25, -0.25, 0.25, 0.25, 0.5, -0.25, 0.5, 0.5, -1.0, 0.75, 0.0, 1.0, 0.75, -0.75, 0.25, 0.75, -1.0, 0.75, 0.25, 0.0, -0.75, 1.0, 0.0, -0.5, -1.0, -0.25, -0.75, -0.75, -0.25, 1.0, -1.0, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const array7 = new Float32Array([0.75, 0.0, 0.25, -0.25, 1.0, -0.5, -0.25, -1.0, -0.25, 0.25, -0.25, -0.25, -0.75, -0.5, -0.25, 0.5, 0.75, -0.75, -0.25, -0.75, -1.0, 0.5, 1.0, -0.75, -0.75, 0.75, 1.0, 0.5, -1.0, 1.0, 1.0, -1.0, 0.75, -1.0, 0.0, 0.5, -0.25, 0.5, 0.5, 1.0, 1.0, 0.25, -0.75, -0.75, -0.25, 0.0, 1.0, -0.5, -0.5, 0.25, 1.0, 0.25, 0.75, 0.25, 0.25, 0.75, 0.75, -1.0, 1.0, 1.0, -0.25, 0.25, 1.0, -0.5, 1.0, -1.0, -0.75, -0.5, -0.5, 0.75, 0.0, 0.25, 1.0, 0.25, 0.0, -0.5, 0.5, 0.5, -0.25, -0.25, 1.0, -0.75, -0.5, 0.5, 0.25, 1.0, 0.5, 1.0, 0.75, 0.75, -0.75, -0.25, 0.0, -1.0, 0.75, 0.75, 0.5, -0.25, -0.25, -0.25, ]);
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query300.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device30.destroy();
    const array8 = new Float32Array([0.0, -0.5, -1.0, 0.0, 0.5, 0.0, -1.0, -0.5, -0.5, 0.5, 0.0, 0.25, -0.5, 1.0, -0.5, 0.0, -0.25, 0.75, 0.0, -0.25, 0.5, -0.75, 0.25, 0.0, -0.75, -0.5, 0.0, 0.25, -0.25, 0.5, 0.0, -0.25, 0.5, 0.0, 0.25, -1.0, 1.0, -0.5, -1.0, 1.0, 0.75, 0.5, 1.0, -0.5, -1.0, 0.25, -1.0, 0.75, -0.5, 0.5, 1.0, -0.5, 1.0, -0.5, -0.25, -0.75, 0.75, -0.5, 0.5, -0.25, -0.25, 0.5, -0.75, -1.0, 0.0, -1.0, -0.75, 0.0, 0.0, -0.5, -0.5, -0.5, 0.5, 1.0, 0.5, 1.0, -0.5, -0.5, 0.5, 0.75, 0.0, -1.0, -0.75, 0.0, 0.5, 0.75, -0.25, 0.75, 0.75, 1.0, 0.75, -0.75, 0.75, -0.75, 0.5, 0.5, 0.25, -0.5, -0.75, 0.0, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_buffer400 = command_encoder400.finish();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device50.pushErrorScope("out-of-memory");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    buffer401.destroy()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4020.insertDebugMarker("marker");
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_pass_encoder4030.executeBundles([])
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    render_pass_encoder4020.executeBundles([])
    
    query400.destroy()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
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
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_buffer404 = command_encoder404.finish();
    device60.destroy();
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_pass_encoder4020.setStencilReference(1);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder4020.executeBundles([])
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder4020.executeBundles([])
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder4020.setStencilReference(1);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device80.destroy();
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4030.setPipeline(render_pipeline400);
    render_pass_encoder4020.setPipeline(render_pipeline400);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    device70.pushErrorScope("internal");
    query401.destroy()
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
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
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device40.queue.writeTexture({ texture: texture401 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    buffer403.destroy()
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4020.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query400.destroy()
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    
    
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder4020.insertDebugMarker("marker");
    const array9 = new Float32Array([0.75, -0.5, 1.0, -1.0, 0.5, 0.5, 0.5, 0.25, -1.0, -1.0, 0.75, 0.0, -0.75, 0.0, 0.25, -0.75, 0.5, -0.75, -0.75, 0.25, 0.75, 0.0, 0.25, 1.0, 0.0, 0.25, -0.75, 0.25, -0.5, 0.0, -0.75, 0.25, 0.25, 1.0, -0.25, 0.75, 0.25, -1.0, 0.75, 0.25, 0.5, 0.25, -0.5, 0.75, -1.0, -1.0, 1.0, -1.0, -0.75, 0.0, 0.25, -1.0, 0.0, 0.25, 0.25, 0.0, -1.0, -0.5, -0.75, -0.5, 0.0, 1.0, -0.75, -0.75, -0.25, -0.25, -0.75, 0.0, 0.5, 0.0, -0.25, -0.5, -0.75, 1.0, 0.0, -0.25, 0.5, 0.5, -1.0, -1.0, -0.5, -0.25, 0.0, 0.5, -0.75, 0.75, 0.5, 1.0, 0.75, -0.75, -0.75, -0.5, -0.75, 0.75, 0.75, -1.0, 0.75, -1.0, 0.0, -0.25, ]);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    query400.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer402.destroy()
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device40.queue.submit([command_buffer400, command_buffer404, ]);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    compute_pass_encoder4010.popDebugGroup()
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32sint",
        dimension: "2d"
    });
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("internal");
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    render_pass_encoder4030.setStencilReference(1);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    command_encoder701.pushDebugGroup("mygroupmarker")
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    
    const command_buffer1200 = command_encoder1200.finish();
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const array10 = new Float32Array([-1.0, 0.5, -0.25, 0.25, 0.25, 0.5, -0.25, 0.75, -1.0, -0.25, -0.25, -1.0, -0.75, -1.0, -0.75, -0.5, -1.0, -0.5, 0.5, -1.0, 0.25, -0.5, 0.75, 0.0, -0.75, 0.0, 0.75, -1.0, -0.75, -0.75, 1.0, 1.0, -0.25, 0.75, 0.5, 0.5, -0.25, 0.75, 0.5, 1.0, -0.5, 0.0, -0.5, -0.5, 0.0, -0.25, 0.0, -0.5, -1.0, -1.0, 0.0, 0.75, -0.25, 1.0, 0.5, -1.0, 0.25, -0.25, 0.75, -0.25, -0.75, 0.25, -0.5, -0.5, 0.75, -0.75, 1.0, 0.75, 0.25, 0.25, 0.25, -0.75, 0.0, 0.0, -1.0, -0.25, 0.25, 1.0, 1.0, 0.25, -0.5, 0.5, -1.0, 1.0, 0.5, -0.25, -0.25, -1.0, 0.75, 0.75, 0.25, 0.5, -0.75, -1.0, -1.0, 0.5, 0.5, -1.0, 0.5, 0.25, ]);
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    const command_encoder1201 = device120.createCommandEncoder({ label: "command_encoder1201" });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device120.queue.writeBuffer(buffer1201, 0, array10, 0, array10.length);
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
    command_encoder1201.pushDebugGroup("mygroupmarker")
    const render_pass_encoder4060 = command_encoder406.beginRenderPass({
        label: "render_pass_encoder4060",
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
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeBuffer(buffer1201, 0, array9, 0, array9.length);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    buffer400.destroy()
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    render_pass_encoder4050.insertDebugMarker("marker");
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    query400.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder4050.executeBundles([])
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query700.destroy()
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8unorm",
        dimension: "2d"
    });
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    device120.queue.writeBuffer(buffer1201, 0, array4, 0, array4.length);
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    render_pass_encoder4050.setStencilReference(1);
    
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    const command_encoder408 = device40.createCommandEncoder({ label: "command_encoder408" });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder5000.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    render_pass_encoder5000.setPipeline(render_pipeline503);
    
    render_pass_encoder4060.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const render_pass_encoder4070 = command_encoder407.beginRenderPass({
        label: "render_pass_encoder4070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    const compute_pass_encoder4080 = command_encoder408.beginComputePass({ label: "compute_pass_encoder4080" });
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    const sampler1203 = device120.createSampler( { label: "sampler1203" } );
    render_pass_encoder4050.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4050.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4060.executeBundles([])
    device120.queue.writeBuffer(buffer1201, 0, array1, 0, array1.length);
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    device120.queue.writeBuffer(buffer1201, 0, array3, 0, array3.length);
    
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array11 = new Float32Array([0.5, 0.75, -0.25, 0.0, 1.0, 1.0, -0.5, 0.25, -0.75, 1.0, -0.5, -0.5, 0.25, -0.75, -0.25, -1.0, -0.5, 0.5, 0.25, 1.0, -0.5, -0.5, 0.5, -0.5, -1.0, 0.5, 0.25, 0.75, -0.5, 0.75, 0.5, -0.5, -0.25, 0.0, 0.25, 0.75, -1.0, -0.75, 0.5, 0.0, 0.25, 0.5, 0.0, 1.0, -0.75, 0.25, 1.0, 0.75, -0.25, -0.5, 0.25, 0.75, -0.25, -1.0, 0.5, -0.75, 0.5, 0.25, -0.25, 0.5, -0.75, 0.75, -0.5, -0.5, 0.5, -0.25, 0.5, 0.25, 0.75, 0.75, 0.25, 0.0, -0.5, 0.0, -0.75, 0.5, 0.25, 0.0, -0.75, 0.25, -0.25, 0.25, 0.0, 0.5, 0.5, -1.0, 0.25, -0.25, -0.25, -1.0, -0.25, 1.0, -0.75, -0.75, 0.0, 0.0, -0.5, -0.75, 1.0, -1.0, ]);
    render_pass_encoder4060.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    device120.queue.writeBuffer(buffer1201, 0, array0, 0, array0.length);
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    device120.queue.writeBuffer(buffer1201, 0, array2, 0, array2.length);
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder1202 = device120.createCommandEncoder({ label: "command_encoder1202" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device120.pushErrorScope("out-of-memory");
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer500.destroy()
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    
    query700.destroy()
    const array12 = new Float32Array([-1.0, 0.5, -0.5, 0.5, 0.0, -0.25, 1.0, -0.5, 0.0, -1.0, -0.5, -0.25, -0.75, 0.0, 0.75, 0.25, 1.0, -0.25, -1.0, 0.0, -1.0, 0.0, 0.25, 0.25, 0.5, 0.25, -0.75, 0.5, 0.5, -1.0, 0.25, 0.25, 0.75, 1.0, -0.25, 0.5, -0.5, -0.5, 0.75, 0.25, -0.75, 0.75, 1.0, 0.75, -1.0, -0.25, -0.25, 1.0, 1.0, -0.75, -0.75, -0.5, -0.75, -0.25, -0.25, -1.0, -0.5, 1.0, -0.75, -1.0, 1.0, -0.5, 1.0, 0.75, 0.25, 0.5, 0.5, 1.0, 0.5, -0.75, 0.25, 1.0, 0.25, 0.5, 0.5, 0.25, -1.0, 0.75, 1.0, 0.5, 0.0, -0.5, 1.0, 0.25, -1.0, -0.25, -0.5, 0.5, 0.0, -1.0, -0.25, -1.0, 1.0, -0.5, -0.25, 0.75, -1.0, -0.75, -1.0, 0.0, ]);
    render_pass_encoder4060.setPipeline(render_pipeline404);
    render_pass_encoder4050.setStencilReference(1);
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    render_pass_encoder4070.insertDebugMarker("marker");
    render_pass_encoder4050.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    render_pass_encoder4050.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    
    device120.queue.writeBuffer(buffer1201, 0, array2, 0, array2.length);
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    render_pass_encoder4070.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    device120.queue.writeBuffer(buffer1201, 0, array3, 0, array3.length);
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    render_pass_encoder4070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    device90.pushErrorScope("internal");
    const texture_view4004 = texture400.createView({ label: "texture_view4004" });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4050.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4020.setStencilReference(1);
    
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const texture1203 = device120.createTexture({
        label: "texture1203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture1204 = device120.createTexture({
        label: "texture1204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4050.setPipeline(render_pipeline405);
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
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
    
    
    command_encoder1202.pushDebugGroup("mygroupmarker")
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeBuffer(buffer1201, 0, array7, 0, array7.length);
    buffer700.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeBuffer(buffer1100, 0, array12, 0, array12.length);
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1201,
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
            module: shader_module1201,
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
    const texture_view12030 = texture1203.createView({ label: "texture_view12030" });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    render_pass_encoder5000.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    const compute_pass_encoder11010 = command_encoder1101.beginComputePass({ label: "compute_pass_encoder11010" });
    render_pass_encoder4030.insertDebugMarker("marker");
    const compute_pass_encoder12020 = command_encoder1202.beginComputePass({ label: "compute_pass_encoder12020" });
    render_pass_encoder4060.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4070.setPipeline(render_pipeline407);
    device120.queue.writeBuffer(buffer1201, 0, array10, 0, array10.length);
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view12010 = texture1201.createView({ label: "texture_view12010" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    device110.queue.writeBuffer(buffer1100, 0, array5, 0, array5.length);
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    buffer701.destroy()
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const render_pass_encoder12010 = command_encoder1201.beginRenderPass({
        label: "render_pass_encoder12010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view12030,
            },
        ],
        occlusionQuerySet: undefined
    });
    device100.pushErrorScope("out-of-memory");
    render_pass_encoder4050.insertDebugMarker("marker");
    query1000.destroy()
    const command_encoder1102 = device110.createCommandEncoder({ label: "command_encoder1102" });
    render_pass_encoder4020.setStencilReference(1);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    compute_pass_encoder12020.pushDebugGroup("group_marker")
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    device110.queue.writeBuffer(buffer1100, 0, array9, 0, array9.length);
    const render_pipeline1201 = device120.createRenderPipeline({
        label: "render_pipeline1201",
        vertex: {
            module: shader_module1201,
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
            module: shader_module1201,
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
    
    const render_pipeline1202 = device120.createRenderPipeline({
        label: "render_pipeline1202",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    render_pass_encoder4060.setStencilReference(1);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    const texture_view12011 = texture1201.createView({ label: "texture_view12011" });
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    device40.queue.writeTexture({ texture: texture401 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4005 = texture400.createView({ label: "texture_view4005" });
    device110.queue.writeBuffer(buffer1100, 0, array10, 0, array10.length);
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
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
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline4011 = device40.createRenderPipeline({
        label: "render_pipeline4011",
        vertex: {
            module: shader_module408,
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
            module: shader_module408,
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
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    device120.queue.writeBuffer(buffer1201, 0, array3, 0, array3.length);
    
    render_pass_encoder4070.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const command_buffer1100 = command_encoder1100.finish();
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    const render_pipeline1203 = device120.createRenderPipeline({
        label: "render_pipeline1203",
        vertex: {
            module: shader_module1201,
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
            module: shader_module1201,
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
    device120.queue.writeBuffer(buffer1201, 0, array3, 0, array3.length);
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    render_pass_encoder12010.setPipeline(render_pipeline1203);
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module704,
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
            module: shader_module704,
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
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4050.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    command_encoder1102.pushDebugGroup("mygroupmarker")
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module506,
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
            module: shader_module506,
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
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    buffer1100.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view12020 = texture1202.createView({ label: "texture_view12020" });
    render_pass_encoder4070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view12001 = texture1200.createView({ label: "texture_view12001" });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    command_encoder703.pushDebugGroup("mygroupmarker")
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    
    const render_pass_encoder7040 = command_encoder704.beginRenderPass({
        label: "render_pass_encoder7040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7001,
            },
        ],
        occlusionQuerySet: query701
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    device40.queue.writeTexture({ texture: texture401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder7040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4070.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    compute_pass_encoder4080.pushDebugGroup("group_marker")
    device120.queue.writeBuffer(buffer1201, 0, array10, 0, array10.length);
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const render_pass_encoder7030 = command_encoder703.beginRenderPass({
        label: "render_pass_encoder7030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query701
    });
    compute_pass_encoder11010.pushDebugGroup("group_marker")
    query1200.destroy()
    render_pass_encoder7040.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    render_pass_encoder7030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder7000.popDebugGroup()
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    device40.queue.writeTexture({ texture: texture401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeBuffer(buffer1201, 0, array7, 0, array7.length);
    
    render_pass_encoder7040.beginOcclusionQuery(0)
    render_pass_encoder7030.setPipeline(render_pipeline700);
    device110.queue.submit([command_buffer1100, ]);
    compute_pass_encoder11010.popDebugGroup()
    compute_pass_encoder4080.popDebugGroup()
    compute_pass_encoder12020.popDebugGroup()
    const command_buffer900 = command_encoder900.finish();
    render_pass_encoder7040.endOcclusionQuery()
    const command_buffer901 = command_encoder901.finish();
    device90.queue.submit([command_buffer900, ]);
    command_encoder1102.popDebugGroup()
    render_pass_encoder7040.setPipeline(render_pipeline700);
    device90.queue.submit([command_buffer901, ]);
    const command_buffer1102 = command_encoder1102.finish();
    device120.queue.submit([command_buffer1200, ]);
}