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
    
    const array0 = new Float32Array([-0.75, 0.25, 1.0, 0.75, -0.5, -0.75, 0.0, -0.75, 0.75, 0.5, -0.25, -0.25, 0.0, 0.5, 0.75, 0.75, 0.25, -0.25, 0.0, -1.0, -0.5, 0.25, -0.25, 0.25, 0.5, -1.0, -0.75, -0.25, 1.0, 0.5, 0.5, -1.0, -0.75, 1.0, -0.75, 0.25, 1.0, 0.5, 0.5, -0.75, -0.25, -0.5, -1.0, 1.0, 0.0, 0.75, 0.5, -1.0, 0.25, 0.25, -0.75, -0.25, 0.75, -0.5, 0.75, 0.25, 0.0, 0.5, -0.25, -0.25, 1.0, 1.0, -0.75, -0.25, 0.5, 0.0, 0.25, 0.5, -0.25, 0.75, 0.5, 0.0, 0.25, 0.0, 0.5, -0.75, -0.25, 0.75, -0.5, 1.0, -0.25, 0.0, 0.75, 0.0, -0.5, -0.5, -1.0, 0.5, 0.25, -0.75, -0.25, 1.0, 0.5, 0.25, -0.75, -0.25, 0.25, 0.25, 0.75, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([0.25, -0.5, 0.75, -1.0, -0.5, 0.5, -1.0, 1.0, -1.0, -0.75, 0.0, 0.0, -1.0, 0.0, -0.75, -0.25, 1.0, 0.75, -1.0, 0.75, 0.0, 1.0, -0.5, -0.75, 0.5, 0.0, -0.25, -0.5, -1.0, -0.5, 0.75, 0.75, 0.0, 1.0, -0.25, -0.5, 1.0, 0.5, 0.75, 1.0, 0.75, 0.0, 1.0, -0.5, -1.0, -0.75, -1.0, 0.75, 0.5, 1.0, 0.25, -1.0, -0.5, -0.75, -1.0, 0.5, 1.0, -0.75, 0.25, -1.0, 0.75, -0.5, 1.0, 0.25, -0.25, 0.0, 0.5, 0.25, 0.0, 1.0, 0.0, 0.0, 0.25, -0.25, -0.75, 0.25, 0.25, -0.75, -0.25, 0.5, 0.75, 1.0, -1.0, 0.75, 0.0, 1.0, 0.5, 0.0, 0.0, -1.0, -0.75, -1.0, 0.5, -0.25, -0.75, -0.75, -0.5, 0.5, -0.25, -0.25, ]);
    query200.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device10.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    device30.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.destroy();
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
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
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device60.pushErrorScope("internal");
    
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
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.pushErrorScope("validation");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder601.popDebugGroup();
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    texture000.destroy();
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
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

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    const array2 = new Float32Array([-0.75, -0.75, -0.5, 0.25, 0.0, 0.75, 0.0, 0.0, 1.0, 0.75, 1.0, -0.25, 1.0, 0.25, -1.0, 1.0, 0.75, 0.75, 0.75, -1.0, 0.75, -0.75, 0.0, 0.75, 0.25, 0.25, 0.75, -0.5, 0.25, 0.25, 0.25, -0.75, -1.0, -0.75, -0.25, -0.5, 1.0, 0.25, -0.75, 0.75, 0.75, 1.0, 0.5, -1.0, -0.25, 0.25, 0.25, 1.0, -1.0, -0.25, 0.25, -0.75, 0.75, -0.75, -0.75, 1.0, 0.0, 1.0, 1.0, -0.5, -0.75, -0.75, 0.0, -1.0, -0.5, 0.5, -1.0, 1.0, 0.5, -1.0, 0.0, -1.0, -0.25, 0.25, 0.5, -0.5, 0.75, 0.5, -1.0, 0.25, -1.0, 0.5, -0.25, -0.75, 0.5, -0.25, 0.5, 0.5, 0.75, -1.0, 0.75, -0.5, -0.75, 0.25, 1.0, 1.0, -0.5, -0.5, 0.75, 1.0, ]);
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    device60.queue.writeBuffer(buffer603, 0, array2, 0, array2.length);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const array3 = new Float32Array([-1.0, -0.5, 0.25, -1.0, 0.5, 0.0, -1.0, 0.75, -0.25, -1.0, 0.0, 0.0, -1.0, 1.0, 0.75, -0.5, 0.5, 1.0, 0.75, 1.0, 1.0, -1.0, 0.0, -0.75, -0.25, -0.5, 0.0, -0.75, 0.0, -0.25, -1.0, 0.0, 1.0, 1.0, 0.75, 1.0, -0.25, 0.75, 0.0, 0.5, 0.5, 0.0, -1.0, 0.25, 1.0, -0.75, -1.0, 0.25, 0.5, 0.75, 0.75, 0.25, -0.75, -0.25, 0.25, 0.75, 0.75, 0.5, -0.25, -0.5, 0.5, 0.0, -0.5, -1.0, 0.25, 0.75, 0.25, 0.5, 0.25, 1.0, 0.75, -1.0, -1.0, -0.5, 0.75, -0.25, -0.25, -0.5, 0.0, 0.5, -0.25, 0.25, -0.25, -0.75, -0.5, 0.5, -0.75, -1.0, 1.0, -0.25, -1.0, -1.0, 0.25, -0.5, 1.0, -1.0, -1.0, 0.0, -1.0, 0.5, ]);
    
    
    command_encoder601.resolveQuerySet(
        query600,
        0,
        32,
        buffer601,
        0
    )
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer607, 0, array0, 0, array0.length);
    command_encoder601.pushDebugGroup("mygroupmarker")
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder601.popDebugGroup()
    device60.pushErrorScope("out-of-memory");
    
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder601.copyBufferToBuffer(
        buffer604,
        0,
        buffer603,
        0,
        400
    );
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    texture000.destroy();
    const array4 = new Float32Array([-0.5, 1.0, 0.5, 0.0, -0.5, 1.0, 0.0, -1.0, 0.0, 0.25, -0.25, 0.5, -1.0, 1.0, 0.5, -0.75, -0.25, -0.25, 0.25, -1.0, 0.25, -0.25, 0.75, 0.0, 0.25, 0.25, -0.75, 0.0, -1.0, 1.0, 1.0, -0.75, 0.75, -1.0, 0.0, -0.25, 0.0, -1.0, -0.25, -0.25, -0.75, -0.25, 0.5, 0.75, 0.75, 1.0, -1.0, 0.75, 0.25, 0.5, 1.0, -1.0, -1.0, 0.25, -1.0, 0.75, 0.5, 0.0, 0.75, 0.0, 1.0, 0.0, 1.0, -0.5, 0.25, -0.75, 0.0, 1.0, -0.5, -0.5, 1.0, 0.75, -1.0, 0.5, -0.25, -0.75, 0.0, 0.0, -0.75, -1.0, 0.5, -0.5, -1.0, -1.0, 0.75, -0.5, 1.0, 0.0, -0.5, -0.25, -0.25, 0.25, -0.5, -1.0, 0.25, 0.0, 0.0, 0.25, 0.0, 0.0, ]);
    command_encoder601.insertDebugMarker("mymarker");
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder601.insertDebugMarker("mymarker");
    
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder602.setPipeline(render_pipeline600);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    device60.queue.writeBuffer(buffer606, 0, array4, 0, array4.length);
    command_encoder601.resolveQuerySet(
        query601,
        0,
        32,
        buffer607,
        0
    )
    command_encoder601.copyBufferToBuffer(
        buffer607,
        0,
        buffer603,
        0,
        400
    );
    
    
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
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
        await buffer606.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer606.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer606.unmap();
        console.log(new Float32Array(data));
    }
    const array5 = new Float32Array([-0.75, 0.75, -0.25, 0.25, -0.25, -0.5, 0.25, -0.75, -1.0, 0.75, 0.5, 0.5, 0.25, 0.75, 1.0, 0.5, 1.0, 0.75, 0.5, -1.0, -1.0, -1.0, -0.25, 0.75, -0.75, 0.0, 0.75, 0.25, 0.75, -0.5, -0.25, 1.0, 0.25, 0.0, 0.5, -0.5, 0.0, 0.75, -0.25, 0.75, 0.75, 0.25, 0.75, 1.0, -1.0, -0.25, 1.0, -0.5, -1.0, 0.75, 0.5, 0.0, -0.5, 0.75, -0.75, -0.75, 0.5, 1.0, -0.5, 0.5, -0.75, -0.75, -0.25, -0.5, 0.0, -0.75, 0.25, -0.75, 0.75, 0.75, 0.0, 0.75, -0.75, -0.75, 1.0, -0.75, 0.5, 0.5, -0.25, -0.75, -0.5, 0.25, 0.0, 0.5, -0.5, 1.0, -0.75, 0.0, -0.5, -1.0, 0.25, 0.75, -0.75, 0.25, 0.75, -1.0, -0.25, -0.25, 0.5, -1.0, ]);
    device60.queue.writeBuffer(buffer603, 0, array2, 0, array2.length);
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    texture001.destroy();
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder601.resolveQuerySet(
        query601,
        0,
        32,
        buffer608,
        0
    )
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    device60.queue.writeBuffer(buffer608, 0, array5, 0, array5.length);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device60.queue.writeBuffer(buffer607, 0, array3, 0, array3.length);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    texture600.destroy();
    compute_pass_encoder6000.pushDebugGroup("group_marker")
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
    command_encoder601.copyBufferToBuffer(
        buffer607,
        0,
        buffer603,
        0,
        400
    );
    query601.destroy()
    query601.destroy()
    
    render_bundle_encoder601.popDebugGroup();
    
    
    
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.destroy();
    
    command_encoder601.resolveQuerySet(
        query601,
        0,
        32,
        buffer602,
        0
    )
    command_encoder601.copyBufferToBuffer(
        buffer607,
        0,
        buffer602,
        0,
        400
    );
    
    
    command_encoder601.copyBufferToBuffer(
        buffer603,
        0,
        buffer603,
        0,
        400
    );
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    
    command_encoder601.resolveQuerySet(
        query601,
        0,
        32,
        buffer608,
        0
    )
    
    
    
    const array6 = new Float32Array([0.75, 0.75, 1.0, 0.25, -0.5, 0.75, -0.5, -0.75, 1.0, 0.5, 0.5, 0.75, 0.25, 0.75, -0.25, 0.5, -0.75, 0.75, -0.5, 0.75, -0.25, -0.25, 1.0, -1.0, 0.75, 0.0, -0.5, 0.0, -1.0, 1.0, -0.5, -1.0, -0.75, -0.25, -1.0, -1.0, -0.25, -0.5, 0.0, -0.25, -0.5, -0.5, -0.75, 0.0, 0.25, -0.5, 1.0, -0.75, 0.75, 0.0, 1.0, 1.0, 0.5, 0.75, 0.0, 1.0, 0.0, 0.0, 0.75, 1.0, -0.5, 0.25, 0.25, 0.75, -0.25, -0.5, 0.0, 1.0, -0.75, -0.5, 0.0, 0.25, -1.0, -0.5, 0.75, 0.5, -0.5, -1.0, 0.0, 0.75, 0.75, -0.5, 0.25, -1.0, -1.0, -0.25, 0.25, -1.0, 1.0, -0.75, -0.75, -0.25, 1.0, -0.5, 0.25, -1.0, -0.75, 0.75, 0.75, -0.5, ]);
    
    command_encoder601.resolveQuerySet(
        query600,
        0,
        32,
        buffer602,
        0
    )
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.writeBuffer(buffer608, 0, array4, 0, array4.length);
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
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    
    render_bundle_encoder600.setVertexBuffer(0, buffer605);
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    
    device60.queue.submit([]);
    query602.destroy()
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    device60.queue.writeBuffer(buffer603, 0, array5, 0, array5.length);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device60.queue.writeBuffer(buffer603, 0, array2, 0, array2.length);
    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
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
                    buffer: buffer6010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6011,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group601);
    
    
    
    
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device60.pushErrorScope("validation");
    
    
    
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    const array7 = new Float32Array([0.5, 1.0, -0.75, 0.5, 0.5, -1.0, -0.75, 0.75, 0.75, 0.0, -1.0, 0.75, 0.75, 0.75, 1.0, 1.0, -0.25, -0.25, -1.0, -0.25, 0.0, 0.5, 0.5, 0.25, 0.75, -1.0, 0.75, 0.25, -0.75, 0.75, 1.0, -0.25, 1.0, 0.25, -0.75, 0.0, 0.0, -0.75, -1.0, 0.0, 0.25, -0.5, 0.0, 0.75, -0.75, 0.25, -0.25, 0.75, -0.75, 0.25, -1.0, 0.5, 0.25, -0.75, -1.0, -1.0, 0.75, -0.75, 0.75, 0.25, 0.25, -0.5, 0.5, -1.0, -0.5, -0.5, -1.0, 0.0, 0.5, -0.5, 0.0, -0.75, 0.0, -0.25, 0.75, 0.5, 0.0, 0.25, 0.0, -1.0, 0.5, -0.5, -0.75, -0.5, -0.25, -0.75, 0.25, -0.5, -0.25, -0.75, -0.75, -0.25, 0.25, 0.75, 0.25, 1.0, -0.5, 1.0, -0.25, -0.25, ]);
    render_bundle_encoder600.setIndexBuffer(buffer6010, "uint16");
    command_encoder601.copyBufferToTexture(
        {
            buffer: buffer607
        },
        {
            texture: texture600
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder602.popDebugGroup();
    device60.queue.writeBuffer(buffer603, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    
    command_encoder600.resolveQuerySet(
        query602,
        0,
        32,
        buffer608,
        0
    )
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device60.queue.writeBuffer(buffer607, 0, array2, 0, array2.length);
    
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    
    device60.queue.writeBuffer(buffer603, 0, array2, 0, array2.length);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    render_bundle_encoder600.draw(3);
    command_encoder602.pushDebugGroup("mygroupmarker")
    command_encoder601.resolveQuerySet(
        query600,
        0,
        32,
        buffer6011,
        0
    )
    
    device60.queue.writeBuffer(buffer607, 0, array5, 0, array5.length);
    command_encoder602.popDebugGroup()
    device60.queue.writeBuffer(buffer605, 0, array7, 0, array7.length);
    command_encoder602.pushDebugGroup("mygroupmarker")
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    device60.queue.writeBuffer(buffer6010, 0, array1, 0, array1.length);
    command_encoder602.resolveQuerySet(
        query601,
        0,
        32,
        buffer602,
        0
    )
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer602,
        0
    )
    device60.queue.writeBuffer(buffer608, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    device60.queue.writeBuffer(buffer604, 0, array6, 0, array6.length);
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer603,
        0
    )
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const render_pipeline608 = device60.createRenderPipeline({
        label: "render_pipeline608",
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
    
    const render_pipeline609 = device60.createRenderPipeline({
        label: "render_pipeline609",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query602.destroy()
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const render_pipeline6010 = device60.createRenderPipeline({
        label: "render_pipeline6010",
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
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    device70.pushErrorScope("internal");
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pipeline6011 = device60.createRenderPipeline({
        label: "render_pipeline6011",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    const render_pipeline6012 = device60.createRenderPipeline({
        label: "render_pipeline6012",
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
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
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
                    buffer: buffer6012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6013,
                },
            },
        ],
    });

    render_bundle_encoder602.setBindGroup(0, bind_group602);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const command_buffer000 = command_encoder000.finish();
    
    
    command_encoder602.popDebugGroup()
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    
    
    
    device60.queue.writeBuffer(buffer6011, 0, array0, 0, array0.length);
    
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
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    const render_pipeline6013 = device60.createRenderPipeline({
        label: "render_pipeline6013",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device60.queue.writeBuffer(buffer606, 0, array7, 0, array7.length);
    command_encoder601.copyBufferToBuffer(
        buffer607,
        0,
        buffer603,
        0,
        400
    );
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    
    
    const render_pipeline6014 = device60.createRenderPipeline({
        label: "render_pipeline6014",
        vertex: {
            module: shader_module607,
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
            module: shader_module607,
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
    device60.queue.writeBuffer(buffer603, 0, array6, 0, array6.length);
    query601.destroy()
    const render_pipeline6015 = device60.createRenderPipeline({
        label: "render_pipeline6015",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer608,
        0
    )
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const compute_pass_encoder7001 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7001" });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    
    
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
    device60.queue.writeBuffer(buffer603, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer609, 0, array4, 0, array4.length);
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    
    const render_pipeline6016 = device60.createRenderPipeline({
        label: "render_pipeline6016",
        vertex: {
            module: shader_module607,
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
            module: shader_module607,
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
    device60.queue.writeBuffer(buffer603, 0, array5, 0, array5.length);
    
    
    
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    const render_pipeline6017 = device60.createRenderPipeline({
        label: "render_pipeline6017",
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
    compute_pass_encoder6000.popDebugGroup()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    
    device60.queue.writeBuffer(buffer6010, 0, array3, 0, array3.length);
    
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module609.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    
    const render_pipeline6018 = device60.createRenderPipeline({
        label: "render_pipeline6018",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    
    
    
    
    device60.queue.writeBuffer(buffer6010, 0, array7, 0, array7.length);
    device60.queue.writeBuffer(buffer603, 0, array6, 0, array6.length);
    
    device70.pushErrorScope("out-of-memory");
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    
    device60.queue.writeBuffer(buffer6011, 0, array6, 0, array6.length);
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder602.resolveQuerySet(
        query601,
        0,
        32,
        buffer602,
        0
    )
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    command_encoder603.resolveQuerySet(
        query602,
        0,
        32,
        buffer6011,
        0
    )
    
    
    render_bundle_encoder602.setVertexBuffer(0, buffer601);
    
    
    
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    query600.destroy()
    query700.destroy()
    
    {
        await buffer605.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer605.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer605.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder603.copyBufferToBuffer(
        buffer605,
        0,
        buffer603,
        0,
        400
    );
    const render_pipeline6019 = device60.createRenderPipeline({
        label: "render_pipeline6019",
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
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    query700.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder603.copyBufferToBuffer(
        buffer6013,
        0,
        buffer603,
        0,
        400
    );
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer606, 0, array2, 0, array2.length);
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder603.resolveQuerySet(
        query602,
        0,
        32,
        buffer602,
        0
    )
    render_bundle_encoder600.popDebugGroup();
    
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
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    command_encoder603.resolveQuerySet(
        query601,
        0,
        32,
        buffer605,
        0
    )
    render_bundle_encoder601.setVertexBuffer(0, buffer609);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    device60.queue.writeBuffer(buffer6013, 0, array7, 0, array7.length);
    
    device60.queue.writeBuffer(buffer605, 0, array4, 0, array4.length);
    
    
    const render_pipeline6020 = device60.createRenderPipeline({
        label: "render_pipeline6020",
        vertex: {
            module: shader_module607,
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
            module: shader_module607,
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
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const render_pipeline6021 = device60.createRenderPipeline({
        label: "render_pipeline6021",
        vertex: {
            module: shader_module607,
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
            module: shader_module607,
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
    command_encoder602.copyBufferToBuffer(
        buffer607,
        0,
        buffer6013,
        0,
        400
    );
    
    
    
    
    command_encoder603.resolveQuerySet(
        query602,
        0,
        32,
        buffer6011,
        0
    )
    query603.destroy()
    command_encoder603.copyBufferToBuffer(
        buffer607,
        0,
        buffer6011,
        0,
        400
    );
    
    
    
    command_encoder603.resolveQuerySet(
        query602,
        0,
        32,
        buffer602,
        0
    )
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    command_encoder603.insertDebugMarker("mymarker");
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder7001.popDebugGroup()
    const command_buffer603 = command_encoder603.finish();
    device00.queue.submit([command_buffer000, ]);
    command_encoder601.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder7010.popDebugGroup()
    const command_buffer701 = command_encoder701.finish();
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder6010.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    device70.queue.submit([command_buffer700, ]);
    device60.queue.submit([]);
    device70.queue.submit([command_buffer701, ]);
    device60.queue.submit([command_buffer600, ]);
    const command_buffer602 = command_encoder602.finish();
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder7001.popDebugGroup()
    compute_pass_encoder6040.popDebugGroup()
    const command_buffer604 = command_encoder604.finish();
    compute_pass_encoder7000.popDebugGroup()
    device60.queue.submit([command_buffer604, ]);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6020.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    device70.queue.submit([command_buffer700, ]);
    device70.queue.submit([command_buffer700, ]);
}