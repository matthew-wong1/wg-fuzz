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
    const array0 = new Float32Array([0.75, 0.0, 0.0, -0.5, -0.25, -1.0, 1.0, -0.5, -1.0, 0.5, 0.5, -0.75, -0.25, 0.5, -1.0, 0.75, 0.75, -1.0, 0.75, 1.0, 1.0, -0.5, 0.75, -0.75, 1.0, 0.25, -1.0, 1.0, -1.0, -0.25, -0.5, -1.0, 0.75, 0.0, 0.25, 0.75, 0.0, 0.0, 0.0, 0.25, 1.0, -0.75, -0.25, -1.0, 1.0, 0.25, -0.75, -0.25, -0.5, 0.75, 0.75, 0.0, 0.25, 0.25, 0.0, -0.75, 0.75, 0.25, 0.75, 0.25, 0.25, -0.75, 0.5, -0.25, 0.75, -1.0, -1.0, 0.0, 1.0, 0.75, 0.75, 0.25, -0.25, 0.5, -0.25, 0.25, -0.75, 0.75, 0.75, 0.5, -1.0, 0.0, -0.5, 0.0, 0.25, -1.0, 0.5, -0.5, 0.5, 0.25, -1.0, -1.0, 0.75, -0.25, -0.25, 0.25, -0.75, -1.0, 0.5, 0.5, ]);
    
    const array1 = new Float32Array([0.75, 0.25, -1.0, -0.5, -0.5, 0.5, -1.0, -0.5, -1.0, -0.5, 1.0, 0.5, 0.75, -1.0, -0.75, 0.5, -1.0, -0.5, -1.0, 0.25, -0.25, 0.0, 0.0, 1.0, -1.0, 0.5, 0.25, 1.0, 0.25, 0.0, -0.25, 0.25, -0.5, -0.5, 0.5, 1.0, -1.0, -1.0, -0.5, 0.0, -0.25, -0.5, -1.0, -0.5, -0.25, 0.0, 0.0, 0.75, 0.25, -1.0, -0.75, 1.0, 0.0, 1.0, 0.0, 0.75, 0.75, -0.75, 0.75, -1.0, 0.25, 0.0, -0.5, -0.5, -0.5, 0.0, 0.5, -1.0, -0.75, -1.0, -0.25, 0.25, -1.0, 0.5, -0.75, -0.25, 0.75, 0.5, 0.25, 0.25, 0.75, 0.25, -0.25, 0.5, -1.0, 0.0, 0.5, -0.25, -1.0, 0.25, -1.0, 1.0, -0.5, 0.5, -1.0, -1.0, 0.0, 0.0, 0.0, 0.5, ]);
    
    const array2 = new Float32Array([-0.75, -0.25, -0.5, 0.0, -0.25, -0.25, -1.0, -0.75, 0.5, 0.0, 1.0, 1.0, -0.25, 0.5, -0.75, 0.0, 0.25, -0.25, 0.25, -0.5, -1.0, 0.75, 0.0, -0.75, 0.0, -1.0, -0.75, 0.5, -1.0, 0.75, -0.25, 0.75, 0.0, 0.75, -0.5, 0.25, 0.75, -0.25, 1.0, 0.25, -1.0, 1.0, -1.0, -1.0, 0.25, -0.5, -0.5, 0.0, 0.75, 1.0, 0.0, 0.5, -0.5, 1.0, 0.5, -1.0, -0.75, -0.5, -1.0, -0.5, 0.75, 0.5, -1.0, 1.0, 0.5, 0.25, 0.75, 0.75, -0.5, 0.0, -0.5, 0.0, 1.0, -0.25, 0.25, -0.75, 0.5, 0.5, 0.0, 0.75, 0.25, -0.5, -0.25, 0.0, 0.75, 0.25, -1.0, 0.5, 0.25, -1.0, -0.75, 0.0, 0.0, -0.5, 0.75, -0.75, 0.0, -1.0, 0.0, 1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([0.25, 0.75, -1.0, 0.75, -0.5, 0.75, -0.5, 0.75, -1.0, 0.25, -0.5, -0.5, 0.75, -0.75, 0.5, -0.25, -0.75, 0.75, 1.0, -0.25, -0.75, 0.5, 0.25, -0.25, -0.5, -0.75, 1.0, -0.25, -0.5, -0.25, -1.0, 0.5, -0.25, 0.75, 0.5, 0.0, 0.0, -0.5, -0.75, 0.25, 1.0, -1.0, -0.5, -1.0, -0.5, -0.75, 0.25, 0.0, -0.25, 1.0, 1.0, 0.5, 0.5, 0.0, 1.0, -1.0, 0.25, 0.75, -0.25, -0.75, -0.25, 0.5, 1.0, 0.25, 0.25, 0.0, 0.25, 0.5, -0.75, 0.5, -0.5, -0.25, 0.25, -1.0, -0.25, -0.75, -0.75, 0.0, 0.0, 1.0, -0.25, 0.75, 1.0, 0.25, 0.0, 0.75, 0.75, 0.0, 0.0, 0.75, -0.75, -0.75, 1.0, -0.25, -1.0, 0.5, 0.0, 0.75, 1.0, 0.5, ]);
    
    const array4 = new Float32Array([0.75, -0.25, 0.75, -0.25, 0.5, -0.5, -1.0, 1.0, 0.5, 0.25, 1.0, -0.25, 0.75, -0.75, -0.5, 0.75, 0.75, -0.75, 0.75, -0.25, -0.5, -1.0, 0.75, 0.75, 0.0, 0.25, 0.5, 1.0, -1.0, -0.25, 0.75, -0.75, -1.0, 1.0, 0.5, 0.25, -0.75, -0.75, -1.0, -0.25, -0.75, 0.5, -1.0, -0.5, -0.75, 0.75, -0.25, -0.75, 1.0, 0.0, -0.25, 0.0, -0.25, 0.0, 0.75, 0.25, -0.25, 0.5, 0.5, 0.25, -0.75, -0.5, -1.0, -1.0, 1.0, 0.0, 0.5, 0.5, -0.5, -0.5, 0.75, -1.0, -1.0, -0.25, -0.5, 0.25, -1.0, 0.75, -1.0, -0.75, -0.25, 0.75, -1.0, 0.5, 1.0, 0.5, -0.25, -1.0, -0.25, 0.75, -0.75, 0.0, -1.0, -1.0, 0.0, -0.5, 1.0, 0.75, 0.25, -0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.destroy();
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.destroy();
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const array5 = new Float32Array([-0.75, -0.75, 0.5, 0.0, -0.25, -0.5, 0.75, 0.25, 0.0, -1.0, -0.5, 1.0, -1.0, -0.75, 0.5, 0.25, -1.0, -0.25, 0.25, 0.0, 0.75, -0.5, 0.5, -0.25, -1.0, -0.25, -1.0, 0.5, -0.5, 0.75, -1.0, -0.75, 0.5, -0.75, 0.75, 0.25, 0.25, 0.25, 0.0, 0.75, -0.75, -1.0, -0.25, 0.75, 0.5, -0.75, 1.0, -0.75, 0.5, 1.0, 1.0, 0.75, -0.5, 0.0, 0.75, -0.25, 0.25, -0.25, 1.0, 0.0, -0.75, 1.0, 0.0, 0.75, 0.0, -0.75, 0.5, 0.0, -0.25, 0.75, 0.75, 0.5, 0.5, 0.5, 0.25, 0.0, -0.75, 1.0, 0.75, -0.25, 0.25, -1.0, 0.25, -0.25, -0.75, -0.5, -0.75, 0.5, -0.5, 1.0, 0.0, -0.75, -0.5, 0.0, -0.5, 0.5, 0.25, -0.75, 0.5, -0.25, ]);
    const array6 = new Float32Array([-0.75, -0.5, 0.0, -0.75, -0.75, 0.75, -1.0, 1.0, -0.5, 0.25, -0.75, 0.5, -1.0, -0.75, 0.25, -0.75, 0.25, 1.0, -0.75, 0.5, -0.75, -1.0, -0.25, 0.25, 0.25, -0.5, -0.25, -0.5, 0.0, 0.75, 0.75, 1.0, -1.0, 0.75, -0.5, 0.25, 0.5, -0.5, -0.5, 0.75, -1.0, 0.25, 0.25, 0.75, -1.0, 0.75, 0.0, 0.25, -1.0, 0.75, 0.25, 1.0, 0.0, 0.25, 0.0, -0.25, -0.25, -0.5, -0.25, 0.75, -0.75, -1.0, -0.5, 0.75, -1.0, -0.25, 0.25, -1.0, 0.0, -0.75, 0.0, 0.75, 0.25, -0.25, 0.75, 0.75, -0.25, 0.25, 0.75, -0.25, 0.0, 0.5, 0.75, 0.5, 0.25, 0.25, 0.0, -0.5, 0.25, -0.5, -0.25, 0.0, 0.75, 0.5, 0.5, 0.0, 1.0, -0.75, 0.0, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array7 = new Float32Array([-0.25, 1.0, 0.75, -0.75, -0.75, -0.25, 0.0, 1.0, -0.25, -1.0, 0.0, -0.5, 0.0, 0.75, 0.25, 0.0, -0.75, -0.75, -0.75, 0.25, 0.5, -0.75, 0.75, -0.5, -0.5, -0.5, -0.75, 0.5, -1.0, -0.75, 0.25, 0.25, -0.5, -0.5, 0.0, -0.5, -0.75, -0.75, 0.25, 0.0, 1.0, 0.75, -1.0, -0.25, 0.75, 0.5, 0.75, -0.75, -1.0, -0.25, 0.0, 0.25, 0.75, -0.25, 1.0, 0.5, -0.5, 0.5, -0.25, 0.5, -1.0, -0.25, -0.25, -0.75, -0.5, 0.5, -0.5, -0.25, 0.25, 0.25, -0.25, 0.75, 1.0, -0.25, -0.5, -0.5, 0.5, -0.5, 0.75, 1.0, -0.25, 1.0, 0.5, -0.25, 0.5, 0.25, 0.75, -1.0, 0.25, -0.75, -0.75, -0.75, 0.25, -0.25, 0.25, -1.0, -1.0, 0.25, -1.0, 0.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.pushErrorScope("out-of-memory");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder200.insertDebugMarker("mymarker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.75, -1.0, 0.25, -0.25, 0.25, 0.25, -0.5, -0.75, -0.25, -0.5, -1.0, -0.5, -1.0, -0.75, -0.5, -0.75, -0.25, 0.5, -0.75, -0.5, -0.5, 0.75, 0.75, 0.75, -1.0, 0.5, 0.75, -0.5, 0.75, 0.5, -0.5, -0.5, -0.75, 0.75, 0.75, -0.5, -0.75, -0.25, -0.75, 0.25, -0.75, 0.0, -1.0, 0.75, 0.75, -0.5, -0.75, -0.5, -0.25, 0.25, 1.0, -0.75, 0.5, 0.5, 0.5, 1.0, 0.5, -0.75, 0.75, 1.0, 1.0, -0.25, -0.75, 0.0, -1.0, 0.5, 0.5, 0.0, 0.75, 0.0, -0.5, -0.5, -0.5, -0.25, 0.75, 0.0, 1.0, 1.0, -0.5, -0.5, -0.5, 0.25, -0.75, 0.25, 0.5, 0.5, -0.25, 1.0, 0.0, -0.5, -0.75, -0.5, -0.5, -0.25, -1.0, -0.75, 0.5, 0.0, 0.0, -0.75, ]);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    query200.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    
    
    query200.destroy()
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder201.insertDebugMarker("mymarker");
    device20.queue.submit([]);
    command_encoder202.insertDebugMarker("mymarker");
    texture400.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device40.destroy();
    query201.destroy()
    render_bundle_encoder200.popDebugGroup();
    command_encoder200.pushDebugGroup("mygroupmarker")
    const array9 = new Float32Array([0.0, 0.5, -0.5, 0.5, 0.5, -0.5, -0.5, -0.25, -0.5, -1.0, 0.0, 0.5, 1.0, 0.75, -0.25, -0.75, 0.75, 0.75, 0.0, -0.5, 1.0, -0.75, 0.25, -0.5, -0.5, 0.25, 0.75, 0.5, 0.25, 1.0, -1.0, 1.0, -0.5, -0.75, 0.5, 0.75, 0.5, -0.75, -0.25, 0.75, -0.5, 0.5, 0.25, 0.25, 0.25, 0.5, -1.0, 0.25, 0.75, -0.5, 0.25, 0.5, 0.75, 0.75, -0.25, 0.75, -0.5, 0.0, -0.75, -0.75, 0.0, -0.75, 0.5, 0.75, -0.5, 0.0, 0.25, -0.25, -0.25, -0.75, 0.5, 0.5, 0.75, -0.5, 0.5, 1.0, -0.75, 1.0, -0.75, 0.5, -1.0, 0.0, -0.5, -0.25, -0.5, 0.25, 1.0, 0.5, 0.25, 0.5, -0.75, -0.5, -0.5, 0.5, 1.0, 1.0, 1.0, -0.5, 0.75, 1.0, ]);
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.destroy();
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    texture200.destroy();
    const array10 = new Float32Array([0.75, -0.75, 0.0, 0.5, -0.5, 0.5, 0.25, 0.75, 0.0, 0.25, -0.5, 0.0, 0.25, -1.0, 0.75, 0.75, 0.25, 0.25, 0.5, 0.75, -0.75, -0.5, -1.0, -0.5, -0.75, 0.25, 0.75, 0.0, 0.25, 0.25, -0.25, 0.0, 0.0, 0.75, 1.0, -0.75, -1.0, 0.25, 0.75, 0.75, -1.0, -0.75, 0.5, 0.5, 0.0, 1.0, -0.75, -0.25, 0.0, -0.25, -0.25, -0.75, 0.25, -0.5, 0.0, -1.0, 0.75, -1.0, -0.25, 0.75, -0.25, 0.25, -0.75, 0.0, -0.5, 0.0, 0.25, 0.75, 0.25, 0.75, -0.25, 0.25, 0.75, 0.5, 1.0, -0.5, 0.75, 0.75, 0.5, -0.5, -1.0, 0.25, -0.25, -1.0, -0.75, -0.5, 1.0, 1.0, 0.5, 0.75, -0.75, -1.0, -0.5, 1.0, -0.25, -0.25, 0.25, 0.75, -0.25, -1.0, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder2000.popDebugGroup()
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
    render_pass_encoder2010.beginOcclusionQuery(0)
    
    render_bundle_encoder200.popDebugGroup();
    
    
    
    command_encoder202.insertDebugMarker("mymarker");
    
    
    query203.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    query200.destroy()
    command_encoder201.popDebugGroup()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array11 = new Float32Array([-0.75, -0.75, 0.75, 0.75, -0.5, -1.0, 1.0, 0.75, 0.75, 0.0, 0.0, 0.5, 1.0, -0.5, 0.0, -0.75, 0.25, 0.0, 0.5, 0.75, -1.0, 0.75, -0.25, 1.0, 0.75, -0.25, 0.5, -0.25, 1.0, -0.5, -0.25, -0.25, 0.75, -1.0, 0.25, 0.0, 0.5, 0.0, -0.75, 0.5, 0.0, 0.5, 0.25, -1.0, -1.0, -0.5, 1.0, 0.0, -0.75, -0.5, 0.5, 1.0, 0.25, -0.5, -0.5, 0.75, 0.5, 0.75, -1.0, -0.75, 0.5, 1.0, -0.75, 1.0, -0.5, 0.25, -1.0, -0.5, -0.25, 0.5, 0.0, -0.25, -0.5, -1.0, 0.75, 0.25, 0.75, -1.0, 0.0, -0.25, -0.75, 0.0, -0.25, 0.5, -0.25, 1.0, 0.5, 0.25, 0.75, -0.75, 1.0, 0.5, 0.0, 0.25, 0.25, 0.75, -0.75, -1.0, -0.5, 1.0, ]);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.pushErrorScope("out-of-memory");
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
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
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query205
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query203.destroy()
    texture201.destroy();
    query202.destroy()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    query203.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    query203.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture203 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    compute_pass_encoder2030.popDebugGroup()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer200,
        0
    )
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query201
    });
    query204.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2041.pushDebugGroup("group_marker");
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder205.copyTextureToBuffer(
        {
            texture: texture202
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2041.executeBundles([render_bundle_encoder202, ])
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device20.pushErrorScope("internal");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2041.popDebugGroup();
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder203.insertDebugMarker("marker");
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2011.pushDebugGroup("group_marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.beginOcclusionQuery(0)
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2040.pushDebugGroup("group_marker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder200.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2011.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder2041.executeBundles([render_bundle_encoder202, ])
    render_bundle_encoder203.insertDebugMarker("marker");
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
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder201.copyTextureToTexture(
        {
            texture: texture200
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2020.setStencilReference(1);
    
    render_pass_encoder2040.popDebugGroup();
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    
    render_pass_encoder2011.setPipeline(render_pipeline200);
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const render_pass_encoder2042 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2021.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    
    
    render_pass_encoder2040.setStencilReference(1);
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const command_buffer601 = command_encoder601.finish();
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    command_encoder602.clearBuffer(buffer600);
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder2011.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const command_buffer602 = command_encoder602.finish();
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    texture203.destroy();
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2010.popDebugGroup();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2040.executeBundles([])
    render_pass_encoder2050.setPipeline(render_pipeline200);
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
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    
    const command_buffer206 = command_encoder206.finish();
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    buffer001.destroy()
    compute_pass_encoder2020.popDebugGroup()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder2042.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    render_pass_encoder2040.setStencilReference(1);
    
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2042.pushDebugGroup("group_marker");
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
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder603.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder2011.setStencilReference(1);
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2021.setStencilReference(1);
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    render_pass_encoder2042.setStencilReference(1);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder2051 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query205
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder2050.setStencilReference(1);
    query203.destroy()
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2010.popDebugGroup();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2050.setStencilReference(1);
    render_pass_encoder2021.endOcclusionQuery()
    
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2051.executeBundles([render_bundle_encoder202, ])
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2031.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2042.setStencilReference(1);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2021.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
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

    render_pass_encoder2051.setBindGroup(0, bind_group200);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder603.insertDebugMarker("mymarker");
    render_pass_encoder2000.executeBundles([render_bundle_encoder203, ])
    render_pass_encoder2000.setPipeline(render_pipeline200);
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
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
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2042.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    query200.destroy()
    render_pass_encoder2011.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer200.destroy()
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2011.insertDebugMarker("marker");
    command_encoder202.insertDebugMarker("mymarker");
    texture600.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    device50.pushErrorScope("out-of-memory");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder2041.executeBundles([])
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    render_pass_encoder2040.executeBundles([render_bundle_encoder201, render_bundle_encoder202, ])
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

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder6030.pushDebugGroup("group_marker");
    compute_pass_encoder6000.popDebugGroup()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_bundle_encoder203.insertDebugMarker("marker");
    
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.resolveQuerySet(
        query205,
        0,
        32,
        buffer205,
        0
    )
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_pass_encoder2021.insertDebugMarker("marker");
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    device60.queue.writeTexture({ texture: texture602 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder2011.popDebugGroup();
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder2020.setPipeline(render_pipeline200);
    render_pass_encoder2040.setPipeline(render_pipeline200);
    render_bundle_encoder203.setPipeline(render_pipeline200);
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    
    render_pass_encoder2021.setPipeline(render_pipeline200);
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    const command_buffer204 = command_encoder204.finish();
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
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device80.pushErrorScope("out-of-memory");
    command_encoder603.copyBufferToTexture(
        {
            buffer: buffer601
        },
        {
            texture: texture603
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder2050.insertDebugMarker("marker");
    query206.destroy()
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    command_encoder604.insertDebugMarker("mymarker");
    render_pass_encoder2041.setPipeline(render_pipeline200);
    render_pass_encoder2000.popDebugGroup();
    
    render_pass_encoder2011.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    device60.queue.writeTexture({ texture: texture602 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    query202.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const command_buffer604 = command_encoder604.finish();
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    render_pass_encoder2011.insertDebugMarker("marker");
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.queue.writeTexture({ texture: texture604 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    render_pass_encoder2050.pushDebugGroup("group_marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    render_pass_encoder2031.setPipeline(render_pipeline200);
    render_pass_encoder6030.setPipeline(render_pipeline600);
    
    buffer201.destroy()
    
    command_encoder205.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_pass_encoder2030.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer202, 0, array11, 0, array11.length);
    render_pass_encoder2010.insertDebugMarker("marker");
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    render_pass_encoder2031.setStencilReference(1);
    render_pass_encoder2041.pushDebugGroup("group_marker");
    buffer206.destroy()
    render_pass_encoder6000.setViewport(0, 0, texture602.width / 2, texture602.height / 2, 0, 1);
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
    render_pass_encoder2011.beginOcclusionQuery(0)
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder6001 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query600
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    render_bundle_encoder202.popDebugGroup();
    query600.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_pass_encoder2031.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group202);
    
    const command_buffer801 = command_encoder801.finish();
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2070.setPipeline(render_pipeline200);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder2010.setPipeline(render_pipeline200);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.setVertexBuffer(0, buffer207);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2011.drawIndirect(buffer205, 0);
    render_pass_encoder2011.endOcclusionQuery()
    device60.queue.submit([command_buffer600, ]);
    const command_buffer700 = command_encoder700.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
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

    render_pass_encoder2050.setBindGroup(0, bind_group203);
    device40.queue.submit([]);
    render_pass_encoder2051.setVertexBuffer(0, buffer208);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group204);
    compute_pass_encoder2040.popDebugGroup()
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group205);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2040.setVertexBuffer(0, buffer205);
    render_pass_encoder2051.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder6001.endOcclusionQuery()
    render_pass_encoder6000.setPipeline(render_pipeline600);
    render_pass_encoder2000.setVertexBuffer(0, buffer208);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2051.popDebugGroup();
    device80.queue.submit([command_buffer801, ]);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group206);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2041.setVertexBuffer(0, buffer2016);
    render_pass_encoder6001.setPipeline(render_pipeline600);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group207);
    render_pass_encoder2000.popDebugGroup();
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group208);
    render_pass_encoder2000.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2010.setVertexBuffer(0, buffer2011);
    render_pass_encoder2010.drawIndirect(buffer2016, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2021.setVertexBuffer(0, buffer2020);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2030.setPipeline(render_pipeline200);
    render_pass_encoder2021.drawIndirect(buffer2020, 0);
    device80.queue.submit([]);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group600);
    command_encoder200.popDebugGroup()
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2031.setVertexBuffer(0, buffer2012);
    render_pass_encoder2041.drawIndirect(buffer2020, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2031.drawIndexed(3);
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    render_pass_encoder2070.setBindGroup(0, bind_group209);
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group2010);
    render_pass_encoder2000.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2070.endOcclusionQuery()
    render_pass_encoder2031.end();
    device20.queue.submit([]);
    render_pass_encoder2070.setVertexBuffer(0, buffer2013);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2051.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2020, "uint16");
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_pass_encoder6030.setBindGroup(0, bind_group601);
    render_pass_encoder2040.end();
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group2011);
    render_pass_encoder2070.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    render_pass_encoder2070.end();
    render_pass_encoder2050.setVertexBuffer(0, buffer2014);
    render_pass_encoder2050.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2000.end();
    render_pass_encoder2050.drawIndirect(buffer2014, 0);
    const command_buffer207 = command_encoder207.finish();
    render_pass_encoder2020.setVertexBuffer(0, buffer202);
    render_pass_encoder2070.end();
    render_pass_encoder2051.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder6000.setVertexBuffer(0, buffer605);
    render_pass_encoder6000.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder6000.drawIndexedIndirect(buffer600, 0);
    render_pass_encoder2000.drawIndirect(buffer2024, 0);
    render_pass_encoder2041.end();
    const command_buffer202 = command_encoder202.finish();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2051.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2031.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.setVertexBuffer(0, buffer209);
    render_pass_encoder2070.drawIndirect(buffer2021, 0);
    render_pass_encoder2070.drawIndirect(buffer2024, 0);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2050.drawIndexedIndirect(buffer206, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2050.end();
    render_pass_encoder6000.draw(3);
    render_pass_encoder2020.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2030.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2011, "uint16");
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder2030.drawIndexed(3);
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2051.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    render_pass_encoder2070.drawIndirect(buffer2025, 0);
    device70.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    device20.queue.submit([command_buffer202, command_buffer207, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2070.drawIndirect(buffer2018, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2042.setPipeline(render_pipeline200);
    render_pass_encoder2030.end();
    render_pass_encoder6000.end();
    device20.queue.submit([command_buffer205, ]);
    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2028,
                },
            },
        ],
    });

    render_pass_encoder2042.setBindGroup(0, bind_group2012);
    render_pass_encoder2051.drawIndirect(buffer2023, 0);
    render_pass_encoder2042.setVertexBuffer(0, buffer2018);
    render_pass_encoder2050.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2042.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2013, "uint16");
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder2070.end();
    render_pass_encoder2051.drawIndirect(buffer2023, 0);
    render_pass_encoder2042.drawIndirect(buffer200, 0);
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2040.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2042.end();
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2000.endOcclusionQuery()
    device80.queue.submit([]);
    render_pass_encoder2000.end();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.draw(3);
    render_pass_encoder2050.drawIndirect(buffer2023, 0);
    render_pass_encoder2000.draw(3);
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    render_pass_encoder6001.setBindGroup(0, bind_group602);
    render_pass_encoder2041.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2011.drawIndirect(buffer208, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder6001.setVertexBuffer(0, buffer607);
    render_pass_encoder2050.drawIndirect(buffer2019, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2070.draw(3);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder2042.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder6030.setVertexBuffer(0, buffer607);
    render_pass_encoder2040.setIndexBuffer(buffer2012, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder6001.popDebugGroup();
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2042.endOcclusionQuery()
    render_pass_encoder6030.setIndexBuffer(buffer600, "uint16");
    render_pass_encoder2070.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer602, 0);
    device50.queue.submit([]);
    render_pass_encoder6001.drawIndirect(buffer607, 0);
    device80.queue.submit([]);
    render_pass_encoder2050.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2011, 0);
    render_pass_encoder6030.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2019, 0);
    render_pass_encoder2051.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2042.drawIndirect(buffer206, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2023, "uint16");
    device20.queue.submit([]);
    command_encoder603.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder6030.end();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2041.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2040.end();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2011.popDebugGroup();
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer202, 0);
    device60.queue.submit([command_buffer604, ]);
    device20.queue.submit([command_buffer202, command_buffer204, command_buffer206, ]);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2030.drawIndexed(3);
    device30.queue.submit([]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2041.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2051.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2042.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2031.drawIndirect(buffer2019, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder6000.end();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer203, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer206, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer206, 0);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2010.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2042.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2021.end();
    render_pass_encoder2021.draw(3);
    render_pass_encoder2031.end();
    render_pass_encoder2000.drawIndirect(buffer2026, 0);
    render_pass_encoder6030.draw(3);
    render_pass_encoder6001.end();
    render_pass_encoder2011.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer204, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder6030.end();
    render_pass_encoder6001.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2051.draw(3);
    render_pass_encoder2042.drawIndirect(buffer2015, 0);
    const command_buffer603 = command_encoder603.finish();
    render_pass_encoder2050.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2070.drawIndirect(buffer2022, 0);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2051.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder6000.drawIndirect(buffer605, 0);
    render_pass_encoder2041.popDebugGroup();
    device20.queue.submit([command_buffer206, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2020.draw(3);
    render_pass_encoder2042.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2041.draw(3);
    device80.queue.submit([]);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder2011.end();
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    render_pass_encoder6000.drawIndirect(buffer604, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2017, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2020, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    const command_buffer800 = command_encoder800.finish();
    render_pass_encoder6030.end();
    render_pass_encoder2070.end();
    render_pass_encoder2030.drawIndirect(buffer2028, 0);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2027, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder6001.end();
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2023, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2030.setIndexBuffer(buffer203, "uint16");
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder6000.setIndexBuffer(buffer605, "uint16");
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2021.drawIndirect(buffer2019, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2070.popDebugGroup();
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2070.drawIndirect(buffer2012, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder6000.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2000.popDebugGroup();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer209, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.drawIndirect(buffer207, 0);
    render_pass_encoder2051.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2050.drawIndirect(buffer2020, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder6001.popDebugGroup();
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder6030.drawIndexed(3);
    device70.queue.submit([]);
    render_pass_encoder2042.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    device70.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder2000.drawIndirect(buffer2013, 0);
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder2031.drawIndirect(buffer205, 0);
    render_pass_encoder6030.drawIndexed(3);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2070.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2042.drawIndexed(3);
    device60.queue.submit([]);
    render_pass_encoder2020.end();
    render_pass_encoder2042.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2018, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2070.drawIndirect(buffer2020, 0);
    render_pass_encoder2050.drawIndirect(buffer208, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2040.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2070.popDebugGroup();
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([command_buffer604, ]);
    device20.queue.submit([command_buffer201, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder2050.draw(3);
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder2040.drawIndirect(buffer2016, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder2040.popDebugGroup()
    device70.queue.submit([]);
    render_pass_encoder2070.drawIndexedIndirect(buffer206, 0);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2042.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder6001.end();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2010.draw(3);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2041.drawIndirect(buffer2018, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2031.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2042.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2070.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder6000.setIndexBuffer(buffer607, "uint16");
    render_pass_encoder6001.end();
    render_pass_encoder2020.drawIndexed(3);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2050.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2031.drawIndirect(buffer204, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder6000.end();
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2042.draw(3);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2018, 0);
    render_pass_encoder6030.drawIndirect(buffer600, 0);
    render_pass_encoder6000.setIndexBuffer(buffer600, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2012, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer2017, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2015, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2050.drawIndirect(buffer2014, 0);
    render_pass_encoder6030.setIndexBuffer(buffer607, "uint16");
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2014, "uint16");
    device20.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2041.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder6000.drawIndirect(buffer604, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder2021.drawIndirect(buffer206, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer2019, 0);
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2051.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2010.end();
    render_pass_encoder2021.end();
    render_pass_encoder2031.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    render_pass_encoder2050.drawIndirect(buffer2011, 0);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2070.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder6001.drawIndirect(buffer607, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2030.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2042.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder6001.draw(3);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder2010.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2050.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2040.draw(3);
    render_pass_encoder2050.drawIndirect(buffer207, 0);
    render_pass_encoder2040.drawIndirect(buffer2021, 0);
    render_pass_encoder2050.drawIndirect(buffer2027, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2070.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2017, 0);
    device80.queue.submit([command_buffer801, ]);
    device60.queue.submit([command_buffer604, ]);
    device80.queue.submit([command_buffer800, command_buffer801, ]);
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2070.endOcclusionQuery()
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer204, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer202, 0);
    render_pass_encoder2070.drawIndirect(buffer2015, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2070.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2011.end();
    render_pass_encoder2031.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2011.drawIndirect(buffer206, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2051.drawIndirect(buffer2014, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2041.drawIndexedIndirect(buffer2023, 0);
    device70.queue.submit([]);
    render_pass_encoder2051.drawIndirect(buffer2020, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2070.drawIndirect(buffer200, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2016, 0);
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    render_pass_encoder2050.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2070.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2021.drawIndirect(buffer2011, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder6000.drawIndexedIndirect(buffer602, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2013, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2051.drawIndirect(buffer200, 0);
    render_pass_encoder2010.drawIndirect(buffer2016, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2031.draw(3);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2041.end();
    render_pass_encoder2051.end();
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder6030.draw(3);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2031.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2023, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2051.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2031.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2042.drawIndirect(buffer2010, 0);
    render_pass_encoder2011.drawIndirect(buffer2022, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2051.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2021.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2042.draw(3);
    render_pass_encoder6001.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    render_pass_encoder6000.drawIndexed(3);
    render_pass_encoder6001.setIndexBuffer(buffer602, "uint16");
    device50.queue.submit([]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2019, 0);
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2025, "uint16");
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder6000.drawIndexed(3);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2042.drawIndexed(3);
    render_pass_encoder2040.drawIndirect(buffer208, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder6000.draw(3);
    render_pass_encoder2042.popDebugGroup();
    device20.queue.submit([command_buffer206, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2050.end();
    render_pass_encoder2020.drawIndirect(buffer209, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer202, 0);
    device80.queue.submit([]);
    render_pass_encoder2041.end();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2021.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2010.draw(3);
    render_pass_encoder2011.drawIndirect(buffer2020, 0);
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    render_pass_encoder2041.drawIndirect(buffer201, 0);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2050.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2042.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2042.drawIndirect(buffer2028, 0);
    render_pass_encoder2042.drawIndirect(buffer204, 0);
    command_encoder203.popDebugGroup()
    render_pass_encoder2021.end();
    render_pass_encoder2041.drawIndirect(buffer2025, 0);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder6000.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2042.drawIndirect(buffer2028, 0);
    render_pass_encoder2040.drawIndirect(buffer2023, 0);
    device20.queue.submit([command_buffer202, ]);
    device80.queue.submit([command_buffer800, command_buffer801, ]);
    render_pass_encoder2010.drawIndexed(3);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2050.end();
    render_pass_encoder2041.setIndexBuffer(buffer200, "uint16");
    device80.queue.submit([command_buffer800, ]);
    device70.queue.submit([]);
    render_pass_encoder2051.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2042.end();
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2051.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2041.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2051.drawIndirect(buffer2025, 0);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2030.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder6001.setIndexBuffer(buffer607, "uint16");
    render_pass_encoder6030.end();
    render_pass_encoder2030.drawIndirect(buffer2014, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    render_pass_encoder2070.drawIndirect(buffer2025, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2010, 0);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2051.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2027, 0);
    render_pass_encoder2070.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder6000.setIndexBuffer(buffer607, "uint16");
    device50.queue.submit([]);
    render_pass_encoder2070.end();
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder6001.end();
    render_pass_encoder2010.end();
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2027, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder6000.draw(3);
    render_pass_encoder6000.drawIndirect(buffer602, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2011.end();
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2011.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2042.drawIndirect(buffer204, 0);
    render_pass_encoder2031.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2020, 0);
    render_pass_encoder2070.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2021, "uint16");
    device20.queue.submit([command_buffer204, command_buffer205, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    device20.queue.submit([command_buffer204, command_buffer205, ]);
    render_pass_encoder2000.draw(3);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder6001.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder6030.end();
    render_pass_encoder2041.end();
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2070.drawIndirect(buffer2011, 0);
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2051.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2050.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2021.end();
    render_pass_encoder2030.drawIndirect(buffer2026, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2070.drawIndirect(buffer2021, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder6001.drawIndirect(buffer600, 0);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder6000.setIndexBuffer(buffer605, "uint16");
    render_pass_encoder6030.end();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2011.end();
    render_pass_encoder2050.draw(3);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2051.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder6030.draw(3);
    render_pass_encoder2070.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2000.drawIndexed(3);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder6000.popDebugGroup();
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2042.drawIndirect(buffer208, 0);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder6030.end();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2050.drawIndexed(3);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2070.draw(3);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2020.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2027, "uint16");
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2070.drawIndirect(buffer207, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2023, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2051.end();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder2051.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer202, 0);
    render_pass_encoder2011.drawIndirect(buffer2010, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer207, 0);
    render_pass_encoder2070.draw(3);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2042.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2051.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2051.end();
    render_pass_encoder2040.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder6000.drawIndexedIndirect(buffer600, 0);
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2042.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2031.drawIndirect(buffer2027, 0);
    render_pass_encoder2042.drawIndexed(3);
    device50.queue.submit([]);
    render_pass_encoder6001.drawIndexedIndirect(buffer604, 0);
    render_pass_encoder2010.drawIndirect(buffer2015, 0);
    render_pass_encoder2050.end();
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2051.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2011.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    device50.queue.submit([]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2051.end();
    render_pass_encoder6001.drawIndirect(buffer604, 0);
    render_pass_encoder2011.drawIndirect(buffer2013, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2042.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2030.draw(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2070.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2070.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder6000.drawIndexed(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2031.setIndexBuffer(buffer2013, "uint16");
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder6000.popDebugGroup();
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    render_pass_encoder2040.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2041.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2070.draw(3);
    render_pass_encoder2042.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2010.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2011, 0);
    device20.queue.submit([command_buffer202, command_buffer204, command_buffer206, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2051.drawIndexed(3);
    device60.queue.submit([command_buffer604, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder6030.setIndexBuffer(buffer601, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2041.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder6030.end();
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2042.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2070.end();
    render_pass_encoder2011.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2070.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2050.drawIndirect(buffer204, 0);
    render_pass_encoder2011.drawIndirect(buffer2010, 0);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2050.end();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer2018, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder6000.drawIndirect(buffer605, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2041.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder6000.drawIndirect(buffer603, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2021, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2011.drawIndirect(buffer2013, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device20.queue.submit([command_buffer203, command_buffer207, ]);
    render_pass_encoder6001.drawIndirect(buffer600, 0);
    render_pass_encoder6000.drawIndirect(buffer600, 0);
    render_pass_encoder2042.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2030.drawIndirect(buffer2014, 0);
    render_pass_encoder2031.drawIndirect(buffer2024, 0);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2010.drawIndirect(buffer2023, 0);
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2042.end();
    render_pass_encoder6030.end();
    render_pass_encoder2010.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2042.drawIndirect(buffer2018, 0);
    device20.queue.submit([command_buffer201, command_buffer204, command_buffer206, ]);
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2011.end();
    render_pass_encoder2051.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.draw(3);
    render_pass_encoder6000.end();
    render_pass_encoder2031.drawIndirect(buffer2021, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2050.drawIndexed(3);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder6030.draw(3);
    render_pass_encoder2040.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2019, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder6030.draw(3);
    render_pass_encoder2031.drawIndirect(buffer2016, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2051.drawIndirect(buffer2023, 0);
    device70.queue.submit([]);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2019, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    device20.queue.submit([command_buffer201, ]);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder6000.drawIndirect(buffer601, 0);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2010.draw(3);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder2041.drawIndirect(buffer2025, 0);
    render_pass_encoder2042.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2028, 0);
    device20.queue.submit([command_buffer203, command_buffer207, ]);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder2021.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2022, 0);
    render_pass_encoder2070.drawIndirect(buffer2025, 0);
    render_pass_encoder2041.drawIndirect(buffer2010, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder6030.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder2031.draw(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2011.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2042.end();
    device60.queue.submit([command_buffer600, command_buffer604, ]);
    device20.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2031.draw(3);
    render_pass_encoder2050.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2041.setIndexBuffer(buffer208, "uint16");
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    render_pass_encoder2031.end();
    render_pass_encoder2040.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder6030.draw(3);
    render_pass_encoder6000.draw(3);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2042.drawIndirect(buffer2010, 0);
    device70.queue.submit([]);
    render_pass_encoder2040.drawIndirect(buffer2016, 0);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    device60.queue.submit([command_buffer601, ]);
    device50.queue.submit([]);
    render_pass_encoder2070.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2041.drawIndirect(buffer208, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2031.drawIndirect(buffer203, 0);
    render_pass_encoder2042.drawIndirect(buffer2019, 0);
    device60.queue.submit([]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder6030.end();
    render_pass_encoder2031.end();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2042.drawIndexed(3);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2051.drawIndexedIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2042.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer209, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2051.drawIndexedIndirect(buffer2021, 0);
    compute_pass_encoder2040.popDebugGroup()
    device60.queue.submit([command_buffer604, ]);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder6030.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2070.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder2051.popDebugGroup();
    device60.queue.submit([command_buffer603, ]);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2031.popDebugGroup();
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2042.end();
    render_pass_encoder2000.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2010.drawIndirect(buffer2017, 0);
    render_pass_encoder2051.draw(3);
    render_pass_encoder2011.drawIndirect(buffer2027, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    compute_pass_encoder8000.popDebugGroup()
    device60.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    device60.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2050.drawIndirect(buffer207, 0);
    render_pass_encoder2042.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2041.end();
    render_pass_encoder2042.drawIndirect(buffer2021, 0);
    render_pass_encoder6030.setIndexBuffer(buffer607, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2042.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2027, 0);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder6001.draw(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2051.end();
    render_pass_encoder2011.drawIndirect(buffer200, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2027, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.draw(3);
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer2026, "uint16");
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2042.end();
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2070.drawIndirect(buffer208, 0);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder2030.draw(3);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder2042.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder6001.end();
    render_pass_encoder6001.draw(3);
    render_pass_encoder2050.drawIndirect(buffer209, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2070.popDebugGroup();
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder6001.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2070.drawIndirect(buffer2011, 0);
    render_pass_encoder2041.drawIndirect(buffer203, 0);
    render_pass_encoder2021.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    device20.queue.submit([command_buffer206, command_buffer207, ]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder6030.draw(3);
    render_pass_encoder2051.end();
    render_pass_encoder2051.end();
    render_pass_encoder2040.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder6001.end();
    device50.queue.submit([]);
    render_pass_encoder2011.drawIndexed(3);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2022, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2011.end();
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer2027, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder6000.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2041.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder2051.end();
    device20.queue.submit([command_buffer203, command_buffer205, command_buffer207, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2031.drawIndirect(buffer2026, 0);
    render_pass_encoder2070.drawIndirect(buffer2028, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2030.end();
    device50.queue.submit([]);
    render_pass_encoder6000.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2042.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2026, 0);
    device70.queue.submit([command_buffer700, ]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    device70.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer2019, 0);
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2042.drawIndirect(buffer2025, 0);
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    render_pass_encoder6000.end();
    render_pass_encoder2050.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2014, "uint16");
    device50.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2042.drawIndirect(buffer207, 0);
    render_pass_encoder6000.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2016, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder6000.drawIndexedIndirect(buffer602, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2041.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer207, 0);
    device20.queue.submit([command_buffer204, command_buffer206, ]);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer2017, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    device70.queue.submit([]);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2050.drawIndirect(buffer2013, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2000.end();
    render_pass_encoder2011.drawIndirect(buffer206, 0);
    render_pass_encoder2070.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2021, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer603, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2040.drawIndirect(buffer202, 0);
    render_pass_encoder2051.drawIndirect(buffer2013, 0);
    render_pass_encoder2021.drawIndirect(buffer2026, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    device70.queue.submit([command_buffer700, ]);
    device20.queue.submit([command_buffer207, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder2041.drawIndirect(buffer207, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2040.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder6030.drawIndexed(3);
    device20.queue.submit([command_buffer206, ]);
    device60.queue.submit([command_buffer603, command_buffer604, ]);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    render_pass_encoder2070.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2070.end();
    render_pass_encoder2020.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2040.drawIndirect(buffer2016, 0);
    render_pass_encoder2042.endOcclusionQuery()
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2026, "uint16");
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2000.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder6001.draw(3);
    render_pass_encoder2070.setIndexBuffer(buffer2010, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2070.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2011.drawIndirect(buffer2025, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2011.end();
    render_pass_encoder6030.draw(3);
    render_pass_encoder2040.drawIndirect(buffer206, 0);
    render_pass_encoder6000.drawIndirect(buffer603, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder6030.drawIndirect(buffer603, 0);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer206, command_buffer207, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2011.end();
    device70.queue.submit([]);
    render_pass_encoder2000.end();
    render_pass_encoder6000.drawIndexedIndirect(buffer602, 0);
    render_pass_encoder2000.drawIndirect(buffer2017, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2070.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    render_pass_encoder6000.drawIndexed(3);
    render_pass_encoder2031.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2051.drawIndirect(buffer2018, 0);
    render_pass_encoder6030.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2041.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2051.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2041.drawIndirect(buffer202, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2070.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder6001.end();
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder6000.drawIndexedIndirect(buffer605, 0);
    render_pass_encoder2042.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder6030.setIndexBuffer(buffer605, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2031.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2042.drawIndirect(buffer200, 0);
    render_pass_encoder2040.drawIndexed(3);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2042.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer602, 0);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2030.end();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2018, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder6030.setIndexBuffer(buffer601, "uint16");
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2014, 0);
    device60.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder2051.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2041.drawIndirect(buffer2017, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2042.endOcclusionQuery()
    render_pass_encoder2021.drawIndirect(buffer2022, 0);
    render_pass_encoder2051.drawIndirect(buffer2019, 0);
    render_pass_encoder2030.end();
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2050.setIndexBuffer(buffer2021, "uint16");
    device20.queue.submit([command_buffer202, command_buffer203, command_buffer204, ]);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2042.drawIndirect(buffer2020, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2070.drawIndirect(buffer205, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2020.end();
    render_pass_encoder2042.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder2041.drawIndirect(buffer203, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2022, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2000.end();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder6000.drawIndirect(buffer607, 0);
    render_pass_encoder2051.drawIndirect(buffer209, 0);
    render_pass_encoder6000.draw(3);
    render_pass_encoder2000.draw(3);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2040.drawIndexed(3);
    device70.queue.submit([]);
    render_pass_encoder2041.drawIndirect(buffer2018, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2014, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer2023, 0);
    device20.queue.submit([command_buffer200, command_buffer204, command_buffer206, ]);
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    render_pass_encoder2051.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2042.drawIndirect(buffer202, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2042.end();
    render_pass_encoder2031.end();
    render_pass_encoder2021.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder6030.drawIndexedIndirect(buffer605, 0);
    render_pass_encoder2010.draw(3);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder6000.end();
    render_pass_encoder6001.draw(3);
    render_pass_encoder6000.draw(3);
    render_pass_encoder2070.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2031.drawIndirect(buffer2024, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2070.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder6001.end();
    render_pass_encoder2070.drawIndexedIndirect(buffer2019, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2050.drawIndirect(buffer204, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2042.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2051.draw(3);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2042.draw(3);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2042.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder6001.end();
    render_pass_encoder2000.end();
    render_pass_encoder2021.draw(3);
    render_pass_encoder2031.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder6000.setIndexBuffer(buffer600, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2042.popDebugGroup();
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder2030.drawIndirect(buffer2019, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer205, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2042.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2050.drawIndirect(buffer206, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer202, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder2050.drawIndirect(buffer2023, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2021.end();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2000.end();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2050.drawIndirect(buffer2015, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder6000.drawIndexedIndirect(buffer607, 0);
    render_pass_encoder2070.end();
    render_pass_encoder2051.drawIndirect(buffer208, 0);
    compute_pass_encoder2020.popDebugGroup()
    device70.queue.submit([]);
    render_pass_encoder2042.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2021.drawIndirect(buffer2012, 0);
    render_pass_encoder6001.draw(3);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    device20.queue.submit([command_buffer204, command_buffer205, command_buffer207, ]);
    render_pass_encoder2041.endOcclusionQuery()
    render_pass_encoder2040.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder6001.draw(3);
    render_pass_encoder6030.drawIndexedIndirect(buffer607, 0);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer207, 0);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer2026, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2015, "uint16");
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder6030.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder2042.endOcclusionQuery()
    render_pass_encoder2041.drawIndirect(buffer204, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2016, "uint16");
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2041.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder2070.endOcclusionQuery()
    render_pass_encoder2051.end();
    render_pass_encoder2050.drawIndirect(buffer209, 0);
    render_pass_encoder2070.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2050.draw(3);
    render_pass_encoder6030.draw(3);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2051.setIndexBuffer(buffer2027, "uint16");
    device70.queue.submit([]);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder6030.drawIndexedIndirect(buffer603, 0);
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2070.endOcclusionQuery()
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2051.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder6000.drawIndirect(buffer601, 0);
    render_pass_encoder2070.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2050.drawIndirect(buffer2027, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2042.drawIndexed(3);
    device60.queue.submit([command_buffer600, command_buffer603, command_buffer604, ]);
    device60.queue.submit([]);
    render_pass_encoder2040.end();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder2031.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder6030.end();
    render_pass_encoder2000.drawIndirect(buffer2019, 0);
    render_pass_encoder2042.end();
    compute_pass_encoder6000.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder6001.drawIndirect(buffer606, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2051.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder6030.drawIndirect(buffer600, 0);
    render_pass_encoder6001.drawIndirect(buffer604, 0);
    device80.queue.submit([]);
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    render_pass_encoder2042.draw(3);
    render_pass_encoder2042.drawIndirect(buffer2013, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2026, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer2024, 0);
    render_pass_encoder2042.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder6000.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder2041.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2050.end();
    device50.queue.submit([]);
    render_pass_encoder2041.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2070.drawIndirect(buffer207, 0);
    render_pass_encoder6001.end();
    render_pass_encoder2000.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2014, 0);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder2042.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder6000.drawIndexedIndirect(buffer603, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2031.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder6001.drawIndexedIndirect(buffer601, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.drawIndirect(buffer2014, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder6000.drawIndexed(3);
    render_pass_encoder6030.end();
    render_pass_encoder2000.end();
    compute_pass_encoder2040.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer202, 0);
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    render_pass_encoder2050.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2042.end();
    render_pass_encoder2000.end();
    render_pass_encoder2010.end();
    render_pass_encoder6001.draw(3);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2012, 0);
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2051.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2042.end();
    render_pass_encoder2042.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2051.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2041.drawIndexed(3);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2070.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2015, 0);
    device80.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2041.drawIndexed(3);
    device60.queue.submit([command_buffer601, ]);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2041.drawIndirect(buffer209, 0);
    render_pass_encoder2042.draw(3);
    render_pass_encoder6030.end();
    render_pass_encoder2031.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2050.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder2021.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2031.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2020.drawIndirect(buffer209, 0);
    render_pass_encoder2041.drawIndirect(buffer203, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder6030.draw(3);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder2070.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2051.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2041.drawIndirect(buffer2015, 0);
    render_pass_encoder2040.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder6001.drawIndexedIndirect(buffer607, 0);
    render_pass_encoder6000.draw(3);
    render_pass_encoder6030.setIndexBuffer(buffer607, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder6001.end();
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder2011.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2042.end();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder2041.end();
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder6030.end();
    render_pass_encoder2020.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2070.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder2041.end();
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2051.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2040.drawIndirect(buffer2016, 0);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder2011.end();
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2026, 0);
    render_pass_encoder2042.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2070.end();
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2021.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2042.draw(3);
    render_pass_encoder2040.end();
    render_pass_encoder2042.end();
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder2042.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2070.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2050.draw(3);
    render_pass_encoder2031.drawIndirect(buffer2015, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2019, "uint16");
    device20.queue.submit([command_buffer202, command_buffer207, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder6000.draw(3);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2021.end();
    render_pass_encoder2042.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer607, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer2023, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2021.end();
    render_pass_encoder2050.drawIndirect(buffer2020, 0);
    render_pass_encoder2011.draw(3);
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder6030.drawIndexed(3);
    device80.queue.submit([]);
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder2030.drawIndirect(buffer2019, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2051.setIndexBuffer(buffer205, "uint16");
    device20.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2042.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2013, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder6030.end();
    render_pass_encoder2010.draw(3);
    device80.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2021.draw(3);
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder6001.end();
    render_pass_encoder2041.draw(3);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2050.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2011.drawIndirect(buffer204, 0);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2011.drawIndirect(buffer206, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder2051.drawIndexed(3);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2070.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2042.end();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2011.drawIndirect(buffer2011, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2030.draw(3);
    compute_pass_encoder2040.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2051.popDebugGroup();
    compute_pass_encoder2040.popDebugGroup()
    device80.queue.submit([]);
    render_pass_encoder2021.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2027, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2016, "uint16");
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2000.setIndexBuffer(buffer2025, "uint16");
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder2051.drawIndirect(buffer2026, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2070.drawIndirect(buffer2013, 0);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2070.draw(3);
    render_pass_encoder2042.end();
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2018, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer203, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2070.drawIndirect(buffer207, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder6030.setIndexBuffer(buffer604, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2023, 0);
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    render_pass_encoder6030.drawIndirect(buffer606, 0);
    render_pass_encoder2042.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2017, 0);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2040.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    device60.queue.submit([command_buffer601, ]);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder6030.end();
    device60.queue.submit([]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder6030.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2042.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2051.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2042.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2042.drawIndirect(buffer2028, 0);
    render_pass_encoder2042.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2051.drawIndirect(buffer2027, 0);
    render_pass_encoder2041.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer207, 0);
    render_pass_encoder2070.drawIndirect(buffer2014, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2027, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2041.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2030.end();
    render_pass_encoder6030.draw(3);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer2019, 0);
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2042.drawIndirect(buffer2017, 0);
    device60.queue.submit([command_buffer603, command_buffer604, ]);
    render_pass_encoder2041.end();
    render_pass_encoder2051.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2011.drawIndirect(buffer2022, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2024, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    render_pass_encoder2042.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2021.drawIndirect(buffer2016, 0);
    render_pass_encoder2011.drawIndirect(buffer2028, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder2021.end();
    render_pass_encoder2050.drawIndirect(buffer2026, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2042.drawIndexed(3);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2042.drawIndexedIndirect(buffer208, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2042.drawIndexed(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2024, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2050.draw(3);
    render_pass_encoder2042.end();
    render_pass_encoder2050.end();
    render_pass_encoder2042.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2040.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder2042.drawIndirect(buffer200, 0);
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2050.drawIndirect(buffer204, 0);
    device70.queue.submit([]);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2000.drawIndirect(buffer2020, 0);
    render_pass_encoder2000.draw(3);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder6000.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2050.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2031.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2030.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2020, 0);
    render_pass_encoder2000.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2050.draw(3);
    render_pass_encoder2042.popDebugGroup();
    device20.queue.submit([command_buffer207, ]);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2011.end();
    render_pass_encoder2000.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2042.drawIndirect(buffer2027, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2042.drawIndirect(buffer2018, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2026, 0);
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2050.draw(3);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.endOcclusionQuery()
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder2042.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    render_pass_encoder2042.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder6001.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2040.drawIndirect(buffer2021, 0);
    render_pass_encoder2042.setIndexBuffer(buffer2024, "uint16");
    device50.queue.submit([]);
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder6001.drawIndexed(3);
    device50.queue.submit([]);
    render_pass_encoder2051.setIndexBuffer(buffer2019, "uint16");
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2070.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2040.drawIndirect(buffer2013, 0);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2011.drawIndexedIndirect(buffer2024, 0);
    device80.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2014, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2051.drawIndirect(buffer207, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2051.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2040.drawIndirect(buffer2022, 0);
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2020, 0);
    render_pass_encoder2070.end();
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2041.end();
    render_pass_encoder2041.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder6001.drawIndexedIndirect(buffer601, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2070.drawIndexedIndirect(buffer2010, 0);
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    device70.queue.submit([]);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2042.draw(3);
    render_pass_encoder2021.drawIndirect(buffer2022, 0);
    render_pass_encoder2000.end();
    device20.queue.submit([command_buffer205, command_buffer207, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2017, "uint16");
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder6030.setIndexBuffer(buffer601, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2070.end();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2051.drawIndexedIndirect(buffer2025, 0);
    device20.queue.submit([command_buffer207, ]);
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder6001.setIndexBuffer(buffer600, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2040.drawIndirect(buffer201, 0);
    device50.queue.submit([]);
    render_pass_encoder6000.drawIndexed(3);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2042.drawIndexed(3);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer207, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2050.end();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2051.drawIndirect(buffer2027, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2031.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2051.drawIndirect(buffer2014, 0);
    render_pass_encoder2000.drawIndirect(buffer2026, 0);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder6030.drawIndirect(buffer602, 0);
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2051.draw(3);
    render_pass_encoder2042.drawIndirect(buffer2025, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer208, 0);
    render_pass_encoder6000.drawIndirect(buffer603, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    device50.queue.submit([]);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2011, 0);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2040.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2051.drawIndirect(buffer2024, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2042.draw(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2070.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder6030.drawIndexedIndirect(buffer604, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2040.drawIndirect(buffer2018, 0);
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2051.drawIndexedIndirect(buffer209, 0);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer207, ]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2030.end();
    render_pass_encoder2041.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder6001.end();
    render_pass_encoder2070.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder6000.drawIndexed(3);
    render_pass_encoder2070.drawIndirect(buffer2011, 0);
    render_pass_encoder2042.drawIndexed(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer202, "uint16");
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer207, ]);
    render_pass_encoder6000.draw(3);
    render_pass_encoder2051.drawIndexedIndirect(buffer2026, 0);
    device70.queue.submit([]);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2030.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2050.draw(3);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2042.drawIndirect(buffer2023, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2016, 0);
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2042.end();
    render_pass_encoder2050.drawIndirect(buffer2014, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2000.drawIndirect(buffer2024, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer207, 0);
    device70.queue.submit([]);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2022, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder6030.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2051.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder2042.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2041.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2070.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder6030.drawIndexed(3);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2051.end();
    render_pass_encoder2031.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2031.setIndexBuffer(buffer204, "uint16");
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder6030.draw(3);
    render_pass_encoder2040.draw(3);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder6001.drawIndirect(buffer601, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer204, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2013, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2050.drawIndirect(buffer2014, 0);
    render_pass_encoder2010.end();
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2042.end();
    render_pass_encoder2000.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2013, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2070.drawIndirect(buffer2010, 0);
    render_pass_encoder2031.drawIndirect(buffer208, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2042.end();
    render_pass_encoder2070.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2010.end();
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder6000.drawIndexedIndirect(buffer605, 0);
    render_pass_encoder6001.end();
    render_pass_encoder2030.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder6001.setIndexBuffer(buffer604, "uint16");
    render_pass_encoder6000.drawIndirect(buffer604, 0);
    render_pass_encoder2041.drawIndirect(buffer2019, 0);
    render_pass_encoder2070.drawIndirect(buffer200, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2041.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2051.drawIndirect(buffer2020, 0);
    render_pass_encoder2010.drawIndirect(buffer2023, 0);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2051.drawIndirect(buffer2020, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    device70.queue.submit([]);
    device50.queue.submit([]);
    compute_pass_encoder8000.popDebugGroup()
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2050.drawIndexed(3);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2031.drawIndirect(buffer207, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2022, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer602, 0);
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    render_pass_encoder2040.drawIndexed(3);
    device70.queue.submit([]);
    render_pass_encoder2042.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder6030.draw(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2050.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2021, "uint16");
    device20.queue.submit([command_buffer203, command_buffer207, ]);
    device20.queue.submit([]);
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder6030.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder6030.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2041.drawIndirect(buffer209, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2051.drawIndirect(buffer2017, 0);
    render_pass_encoder6030.setIndexBuffer(buffer601, "uint16");
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder2010.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2050.end();
    device60.queue.submit([]);
    render_pass_encoder2070.drawIndirect(buffer2025, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2051.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    compute_pass_encoder2020.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6000.drawIndexed(3);
    render_pass_encoder6001.drawIndirect(buffer605, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer207, 0);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer2025, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2019, 0);
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2019, 0);
    compute_pass_encoder8000.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2042.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder6030.setIndexBuffer(buffer601, "uint16");
    render_pass_encoder6000.draw(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2017, 0);
    device70.queue.submit([]);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2011, 0);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2050.draw(3);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder6030.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2041.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2042.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2042.drawIndirect(buffer2015, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2000.end();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2070.draw(3);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2041.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder6030.draw(3);
    render_pass_encoder6000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2010.draw(3);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    device20.queue.submit([]);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer2014, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2031.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2041.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2010.draw(3);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2030.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2042.drawIndirect(buffer209, 0);
    render_pass_encoder2041.drawIndirect(buffer2015, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2011.drawIndirect(buffer2019, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder6030.drawIndirect(buffer606, 0);
    render_pass_encoder6030.end();
    render_pass_encoder6001.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder2042.drawIndirect(buffer2025, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2027, 0);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder6000.drawIndexedIndirect(buffer601, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder6001.end();
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder6030.drawIndexedIndirect(buffer601, 0);
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2010.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2070.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder6000.end();
    render_pass_encoder2042.drawIndirect(buffer202, 0);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder2031.end();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2021.setIndexBuffer(buffer2023, "uint16");
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder6030.end();
    render_pass_encoder2051.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder2041.drawIndirect(buffer2010, 0);
    render_pass_encoder6000.drawIndirect(buffer607, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2000.drawIndirect(buffer2015, 0);
    render_pass_encoder2010.drawIndirect(buffer2016, 0);
    render_pass_encoder6030.end();
    render_pass_encoder2042.end();
    render_pass_encoder2042.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder6001.setIndexBuffer(buffer602, "uint16");
    render_pass_encoder2041.drawIndexedIndirect(buffer2016, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    device50.queue.submit([]);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder6000.drawIndexed(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder6030.draw(3);
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder2041.setIndexBuffer(buffer2025, "uint16");
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2070.end();
    render_pass_encoder6001.drawIndexedIndirect(buffer604, 0);
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder2070.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2051.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    device20.queue.submit([command_buffer201, command_buffer206, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer204, 0);
    device60.queue.submit([command_buffer602, command_buffer604, ]);
    render_pass_encoder2031.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2051.end();
    render_pass_encoder6001.end();
    render_pass_encoder2050.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2024, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2025, "uint16");
    device80.queue.submit([]);
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2051.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2050.end();
    render_pass_encoder2020.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2031.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2051.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2040.end();
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2051.end();
    render_pass_encoder6030.end();
    render_pass_encoder2000.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder6030.draw(3);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2070.drawIndexedIndirect(buffer2019, 0);
    device20.queue.submit([command_buffer204, command_buffer205, ]);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2070.end();
    render_pass_encoder2020.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer205, command_buffer206, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder6000.drawIndexed(3);
    render_pass_encoder6001.draw(3);
    device20.queue.submit([command_buffer204, command_buffer207, ]);
    render_pass_encoder6030.drawIndexedIndirect(buffer601, 0);
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2000.drawIndirect(buffer2013, 0);
    render_pass_encoder2042.end();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2070.end();
    render_pass_encoder2020.setIndexBuffer(buffer2022, "uint16");
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer203, command_buffer204, command_buffer205, ]);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2021.end();
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2040.drawIndirect(buffer206, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2070.end();
    render_pass_encoder6030.draw(3);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder2041.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2040.draw(3);
    render_pass_encoder2050.drawIndirect(buffer2026, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2042.draw(3);
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    render_pass_encoder2010.drawIndirect(buffer2015, 0);
    render_pass_encoder2041.drawIndirect(buffer2011, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2051.drawIndexedIndirect(buffer2026, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2042.drawIndexed(3);
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder2042.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2050.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder6030.setIndexBuffer(buffer602, "uint16");
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2027, 0);
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer204, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder6001.end();
    render_pass_encoder2070.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2040.draw(3);
    render_pass_encoder2031.drawIndirect(buffer2016, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2070.setIndexBuffer(buffer2028, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2040.end();
    render_pass_encoder2050.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2042.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2042.drawIndexed(3);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder2051.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2041.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder6001.drawIndirect(buffer607, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2000.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2042.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder6000.draw(3);
    render_pass_encoder2050.drawIndirect(buffer202, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2011, 0);
    device30.queue.submit([]);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer202, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder2031.drawIndirect(buffer2015, 0);
    render_pass_encoder2030.draw(3);
    device80.queue.submit([command_buffer800, command_buffer801, ]);
    render_pass_encoder2070.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2042.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2042.drawIndirect(buffer2020, 0);
    render_pass_encoder6001.draw(3);
    render_pass_encoder2042.drawIndirect(buffer2010, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2020.draw(3);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2018, "uint16");
    device60.queue.submit([]);
    render_pass_encoder2000.drawIndexed(3);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2051.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2050.setIndexBuffer(buffer204, "uint16");
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder2041.popDebugGroup();
    device60.queue.submit([command_buffer602, command_buffer604, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2070.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2014, 0);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder2031.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2011, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2021.end();
    render_pass_encoder6000.draw(3);
    render_pass_encoder2031.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2021, 0);
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2031.drawIndirect(buffer2013, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2070.drawIndirect(buffer2022, 0);
    render_pass_encoder6000.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2070.drawIndexedIndirect(buffer203, 0);
    device60.queue.submit([command_buffer602, command_buffer603, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder2042.end();
    render_pass_encoder6000.drawIndexedIndirect(buffer607, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2020, 0);
    device20.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder6030.drawIndirect(buffer600, 0);
    render_pass_encoder2042.end();
    render_pass_encoder2010.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2041.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2000.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder2020.draw(3);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2011.drawIndirect(buffer2014, 0);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder6030.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2014, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2014, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder6030.end();
    device50.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2010, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2030.end();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2011.drawIndirect(buffer206, 0);
    render_pass_encoder6000.setIndexBuffer(buffer604, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder6030.setIndexBuffer(buffer601, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2025, 0);
    render_pass_encoder6030.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2015, 0);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder6001.setIndexBuffer(buffer600, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2051.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2031.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder6000.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder6030.draw(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2042.setIndexBuffer(buffer2012, "uint16");
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2041.drawIndirect(buffer2010, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2041.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder2011.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder6000.setIndexBuffer(buffer606, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2024, 0);
    render_pass_encoder2050.end();
    device80.queue.submit([]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2041.end();
    render_pass_encoder2011.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2040.popDebugGroup()
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2042.drawIndirect(buffer209, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2011.end();
    device80.queue.submit([command_buffer800, command_buffer801, ]);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2042.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2030.end();
    device60.queue.submit([command_buffer604, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2050.setIndexBuffer(buffer208, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2041.draw(3);
    render_pass_encoder2041.endOcclusionQuery()
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2042.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2040.popDebugGroup();
    device70.queue.submit([]);
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder2070.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer206, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder6001.drawIndexedIndirect(buffer607, 0);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2028, 0);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2011.end();
    render_pass_encoder2041.endOcclusionQuery()
    render_pass_encoder2000.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2070.drawIndirect(buffer2012, 0);
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([]);
    device60.queue.submit([]);
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2041.draw(3);
    render_pass_encoder2030.end();
    render_pass_encoder2041.drawIndirect(buffer205, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2011.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer204, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder6001.draw(3);
    render_pass_encoder2042.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder2051.setIndexBuffer(buffer2015, "uint16");
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2070.end();
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder2051.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2051.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2070.drawIndirect(buffer200, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2020.end();
    render_pass_encoder2020.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder6000.setIndexBuffer(buffer600, "uint16");
    device50.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2042.setIndexBuffer(buffer2025, "uint16");
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder6001.end();
    render_pass_encoder2031.drawIndirect(buffer207, 0);
    render_pass_encoder6001.drawIndirect(buffer604, 0);
    render_pass_encoder2051.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2013, 0);
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    render_pass_encoder6000.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer2024, "uint16");
    device60.queue.submit([command_buffer603, ]);
    device50.queue.submit([]);
    render_pass_encoder2030.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    render_pass_encoder2011.drawIndirect(buffer2020, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2010.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder2070.drawIndirect(buffer2016, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2020.draw(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2070.end();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder2041.drawIndirect(buffer2012, 0);
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder6000.draw(3);
    render_pass_encoder6030.drawIndirect(buffer603, 0);
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2026, "uint16");
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder2041.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder6001.drawIndexedIndirect(buffer607, 0);
    device80.queue.submit([]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2010.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2050.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder6030.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2051.end();
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer206, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2050.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2012, "uint16");
    device70.queue.submit([command_buffer700, ]);
    device70.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2021.end();
    render_pass_encoder2041.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2012, 0);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder2042.end();
    render_pass_encoder2011.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2028, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2026, 0);
    device20.queue.submit([]);
    device60.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2070.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2070.end();
    render_pass_encoder2020.drawIndirect(buffer2026, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2021.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2070.end();
    render_pass_encoder2042.drawIndexed(3);
    render_pass_encoder2070.drawIndirect(buffer2023, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder6030.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2021, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer208, 0);
}