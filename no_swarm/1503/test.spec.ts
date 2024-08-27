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
    
    const array0 = new Float32Array([0.0, 0.25, 0.0, 1.0, 0.5, -0.75, 0.5, -1.0, -0.75, 1.0, 0.5, 1.0, 0.75, 1.0, 0.25, -0.25, -0.25, 0.0, 0.0, -0.5, -0.5, -1.0, 0.5, -0.25, -0.25, 0.5, 0.5, 0.0, -0.25, -0.5, -0.25, 0.25, 0.75, -0.5, 0.5, -1.0, -0.75, -0.25, -0.25, 1.0, -0.5, -0.25, 1.0, -0.5, 0.5, 0.0, 0.75, -1.0, 0.75, 0.75, -1.0, 0.0, 0.5, -0.25, -1.0, 1.0, -0.5, -1.0, 0.25, 0.5, -1.0, -1.0, 0.25, -0.75, 0.75, -0.75, 0.25, 0.5, 1.0, 0.75, 1.0, -0.75, 0.25, -0.5, 0.25, -0.5, -0.25, -1.0, -0.75, 1.0, 0.75, 0.75, 0.5, -0.5, -0.5, 0.25, -0.5, 1.0, 0.25, -0.75, 1.0, -1.0, 0.75, -0.5, 0.5, -0.5, -0.25, -0.75, 0.75, -0.75, ]);
    
    
    const array1 = new Float32Array([1.0, 0.25, -1.0, -0.5, -1.0, -1.0, 0.0, -0.75, -1.0, 0.0, 1.0, 0.0, 0.0, -0.75, 0.75, 1.0, -1.0, 1.0, -0.5, -0.5, 0.0, -0.25, -1.0, -0.5, 0.5, 1.0, -0.5, 0.25, -0.25, 0.25, -0.25, 1.0, -0.25, -0.5, -0.75, 0.5, 1.0, 0.25, 0.75, 0.75, 0.75, 0.25, 1.0, 0.5, 0.75, -1.0, -0.5, -0.75, 0.25, -0.75, -0.5, 1.0, 0.25, -0.5, -1.0, -1.0, 0.0, -1.0, 0.25, 0.75, -0.5, 0.25, -0.5, -0.75, 0.25, 0.5, 0.25, 0.0, 1.0, 0.25, -0.75, 0.75, -0.25, 0.5, 0.25, 1.0, 1.0, -0.25, 0.5, 0.5, 0.25, 0.5, -1.0, -0.5, 0.5, 1.0, 0.25, 0.25, 1.0, 0.5, -0.5, -0.25, -0.25, 0.5, -0.5, -0.5, 0.5, 0.25, -1.0, -1.0, ]);
    const array2 = new Float32Array([-0.25, 0.0, 0.75, 1.0, -1.0, -0.5, 1.0, 0.0, 0.75, -1.0, 0.25, -0.25, 0.5, -1.0, -0.5, 1.0, 0.25, -0.75, -0.25, -1.0, 0.0, 0.0, -1.0, -0.5, 1.0, 1.0, 0.0, 0.25, 0.75, -0.5, -0.5, 0.75, 0.75, 0.0, 0.25, -0.5, -0.25, 0.0, -0.5, -0.75, 0.75, -0.75, -0.75, 0.5, 1.0, -1.0, -0.75, 0.0, 0.75, 0.0, -0.5, 1.0, -1.0, 1.0, -0.25, 0.25, 0.25, 1.0, -0.5, -0.25, 1.0, -1.0, -0.75, 0.0, -0.75, -0.25, 1.0, -0.25, 0.25, 1.0, -1.0, 0.0, -1.0, -0.25, -0.75, -1.0, 0.75, 0.0, -0.25, 0.25, 0.25, -1.0, 0.5, 0.75, 1.0, 0.5, -0.5, -0.75, -0.5, -0.25, -0.75, -1.0, -0.25, 0.0, -0.75, 1.0, -0.5, 1.0, -1.0, -0.25, ]);
    const array3 = new Float32Array([0.25, 0.25, 0.25, 0.5, 0.0, 0.0, 0.75, 0.0, 1.0, 0.5, 0.5, 0.5, -0.75, 0.5, -0.25, 0.5, 1.0, 0.75, 0.5, 1.0, -0.75, 0.25, 0.0, -0.5, 0.5, 0.5, 1.0, 0.75, -0.75, -0.25, 0.75, -1.0, -0.75, -1.0, -1.0, -0.5, 1.0, 1.0, -0.5, 0.0, 0.5, 0.75, -0.25, 0.75, 0.25, -0.75, 0.5, -0.25, -1.0, 1.0, -0.25, 1.0, -0.5, -1.0, -0.75, 0.75, -0.25, 0.5, -0.5, -0.25, 1.0, -1.0, -0.75, 0.0, 0.75, -1.0, -0.75, 0.25, -0.75, -1.0, -0.5, -0.25, 1.0, -0.75, -0.5, 0.0, 0.0, -1.0, 0.0, -0.75, 0.25, -1.0, 0.0, 0.75, -0.5, -0.5, -0.75, 1.0, -0.75, -1.0, 0.75, -0.75, -0.75, 0.25, 0.75, 0.75, 0.75, 0.0, 0.25, -0.75, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array4 = new Float32Array([-1.0, -1.0, -1.0, 0.5, 0.75, 1.0, 0.25, 0.5, 0.0, 1.0, 0.25, -0.75, 0.75, 0.5, 0.75, 0.75, 0.0, -0.25, 1.0, -0.25, 0.75, 0.5, -0.5, -0.75, 1.0, 1.0, 1.0, 1.0, 0.75, 0.0, 0.0, 1.0, -0.75, 0.25, -1.0, 0.25, -0.5, 0.5, -0.75, 1.0, -0.5, 0.25, -0.25, 1.0, -0.5, 0.0, -0.25, -1.0, -1.0, 0.0, -0.5, -0.75, -0.25, -1.0, -0.5, 0.5, 0.75, 0.0, -0.25, 1.0, -0.75, -1.0, 0.75, -1.0, -0.75, -0.5, -0.5, -1.0, 0.25, 0.5, 0.0, -1.0, 0.0, 1.0, -0.25, -0.75, 1.0, 0.25, 1.0, 1.0, 1.0, -1.0, 0.25, 1.0, 0.5, -0.25, -0.75, -0.5, 1.0, -0.5, 0.25, 0.5, 0.5, 0.25, 1.0, -0.25, 0.0, -0.75, 0.25, 0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const array5 = new Float32Array([-0.25, -0.25, -0.75, -0.75, 0.75, 0.5, -0.5, -0.75, -0.5, -1.0, -1.0, 0.5, -0.25, -0.5, -0.75, -0.25, -1.0, 0.0, 0.5, -0.25, -1.0, 0.5, 0.5, 0.25, 0.0, -0.75, -0.25, -0.75, -0.75, -0.75, -0.75, -0.75, 1.0, -1.0, -1.0, 0.25, 0.0, 0.75, -0.25, -1.0, 0.25, -0.75, 0.75, -0.25, 0.25, -1.0, -0.25, 0.0, 1.0, 0.0, 0.5, 0.0, -0.5, 0.5, -0.75, 0.5, 1.0, -0.5, -1.0, 1.0, 0.5, -0.25, 0.75, -0.5, 0.5, 0.5, 0.5, 1.0, 0.25, 1.0, 0.5, 0.25, 0.75, -0.75, 0.0, -0.5, 0.5, 0.5, 0.75, 1.0, -0.25, -1.0, 0.5, 0.75, -0.5, 0.0, 1.0, 0.25, 0.5, 0.5, 0.0, 0.25, 0.5, 0.0, -0.25, -0.25, 0.0, -0.5, 0.25, 0.0, ]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder202.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    command_encoder101.pushDebugGroup("mygroupmarker")
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
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
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    
    const array6 = new Float32Array([0.5, -0.25, 0.5, 0.25, 0.5, -0.25, 0.0, 1.0, -0.75, -1.0, -1.0, 0.0, -0.75, 0.25, 0.0, 0.0, 0.5, 0.5, 1.0, -1.0, -0.25, 0.5, 0.25, -1.0, 0.5, 0.0, -0.5, 1.0, -1.0, 0.75, 0.5, -0.75, -0.75, -1.0, 0.75, 1.0, 0.75, 0.0, -1.0, -1.0, 1.0, -0.5, 0.75, -0.25, -0.75, -1.0, -0.75, 0.0, -0.25, 0.25, 0.25, 0.75, 0.0, 0.0, 1.0, 0.25, -0.75, 0.25, 0.0, 0.0, 1.0, 0.0, -1.0, -1.0, 0.75, 1.0, -0.25, 0.25, -1.0, -0.75, -1.0, 0.75, -1.0, 0.25, -1.0, 0.25, -0.5, -0.25, -1.0, -0.75, -0.25, -0.25, -0.5, -0.75, 1.0, -0.75, 1.0, 0.25, -0.25, 0.75, -0.75, 0.75, -1.0, -0.5, 0.0, 0.25, 0.25, 0.5, 0.5, 0.0, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    query200.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
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
    render_bundle_encoder200.popDebugGroup();
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder200.setPipeline(render_pipeline202);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    buffer200.destroy()
    
    texture000.destroy();
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    device20.pushErrorScope("internal");
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query201.destroy()
    
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder200.clearBuffer(buffer201);
    query200.destroy()
    render_bundle_encoder100.popDebugGroup();
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder1030.executeBundles([])
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.destroy();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("validation");
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const array7 = new Float32Array([1.0, 0.5, -0.25, 0.0, 0.75, 1.0, -0.75, 0.0, -0.5, -0.75, 0.75, 0.25, 0.75, -1.0, 0.75, -0.5, 0.25, -1.0, -1.0, 0.75, 0.0, -0.5, 1.0, -0.5, 0.5, 0.75, -0.25, 0.5, -1.0, 0.75, 0.25, -0.75, 1.0, 0.5, 0.0, 0.5, -0.75, 0.75, 0.75, 0.75, 1.0, 0.0, 0.0, -0.25, 0.0, 0.25, 0.0, 0.5, 0.5, 0.0, -0.75, 0.0, 0.0, -0.75, 0.25, -1.0, 0.0, 0.25, -1.0, 0.25, -0.75, 0.5, -1.0, 1.0, 0.25, 0.0, 0.0, 1.0, 0.75, 0.0, 0.25, 0.25, 0.75, -0.75, -0.25, -1.0, -1.0, 0.25, 0.5, -0.5, -1.0, 0.5, 0.25, 0.0, 0.75, 0.25, 0.75, 0.5, -0.5, -0.75, 1.0, -0.25, -0.25, 0.0, -0.5, 0.75, -0.25, 0.75, -0.25, 0.5, ]);
    
    render_bundle_encoder202.popDebugGroup();
    buffer201.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    buffer200.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("internal");
    texture101.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query000.destroy()
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder200.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array8 = new Float32Array([1.0, -1.0, 0.75, 0.0, 1.0, 0.0, -0.75, -0.75, -0.25, -1.0, 0.75, -0.75, 1.0, 0.75, 0.75, 0.25, -0.5, 0.25, 0.0, 0.0, 1.0, 1.0, 0.25, -1.0, 0.75, 1.0, 1.0, 0.0, -0.25, -1.0, 0.75, 0.0, 1.0, 0.5, 0.25, 0.0, 1.0, -0.75, -1.0, -0.5, 0.25, -1.0, 0.75, -0.25, -0.5, 0.75, 0.0, 1.0, 1.0, 1.0, -0.25, 0.0, 0.0, 0.0, -0.5, 0.0, 0.25, -0.5, 0.25, 1.0, 0.25, -0.75, -1.0, -0.5, -0.5, 1.0, 0.5, 0.25, 0.75, -1.0, -0.5, -1.0, 0.75, -0.25, 0.0, 0.75, -1.0, 0.25, 0.25, -0.5, -0.5, -0.25, -0.5, 0.5, -0.25, 0.75, 1.0, -0.25, 0.5, -1.0, 1.0, -0.5, -0.25, -1.0, 0.25, 1.0, -0.25, -0.25, 0.0, -0.25, ]);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_pass_encoder1030.setPipeline(render_pipeline100);
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1001.setStencilReference(1);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    texture200.destroy();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1001.setPipeline(render_pipeline103);
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder1002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.popDebugGroup()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1005,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1002.setStencilReference(1);
    
    render_pass_encoder1002.setPipeline(render_pipeline100);
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder1040.executeBundles([])
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    query200.destroy()
    render_pass_encoder1002.pushDebugGroup("group_marker");
    device30.destroy();
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    render_pass_encoder1040.executeBundles([render_bundle_encoder100, ])
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    device20.pushErrorScope("validation");
    command_encoder104.pushDebugGroup("mygroupmarker")
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setPipeline(render_pipeline101);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    render_pass_encoder1030.setStencilReference(1);
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_pass_encoder1031.setPipeline(render_pipeline102);
    render_pass_encoder1000.beginOcclusionQuery(0)
    const array9 = new Float32Array([0.0, 0.25, 0.25, 0.5, 0.5, -1.0, -0.5, 0.75, 0.5, -0.25, -1.0, 1.0, 0.0, -0.5, -0.25, -1.0, -0.75, -0.75, -1.0, -0.75, 0.0, -0.25, -0.75, -0.5, 0.75, 0.0, -1.0, 1.0, -1.0, 0.5, 0.25, -1.0, 0.75, 0.25, 0.5, 0.0, -1.0, 0.75, 0.75, 1.0, 0.25, 0.5, 1.0, 0.25, -1.0, -1.0, -0.5, 0.25, -0.75, -0.5, 0.25, 0.0, 0.0, -0.25, 0.75, 0.5, 0.25, 1.0, 0.25, -0.25, 0.25, -1.0, 0.25, -1.0, 0.0, -0.25, -1.0, 1.0, 0.5, -0.25, 0.75, 0.5, 0.0, 0.0, -0.75, -0.75, -1.0, 0.5, 1.0, 0.0, 0.5, 0.0, 0.5, 0.0, -1.0, -0.5, 1.0, -1.0, -1.0, -0.75, -0.25, 0.75, -0.5, 0.75, -0.25, -0.75, -1.0, -0.25, 0.25, 0.0, ]);
    render_bundle_encoder202.setVertexBuffer(0, buffer200);
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
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1002.setBindGroup(0, bind_group101);
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

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    
    device30.destroy();
    render_pass_encoder1041.setPipeline(render_pipeline104);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer104.destroy()
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    render_pass_encoder1002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer108, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer108, 0);
    device10.queue.writeBuffer(buffer108, 0, array0, 0, array0.length);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer108, 0, array4, 0, array4.length);
    
    
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group104);
    buffer100.destroy()
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pass_encoder1021 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1021" });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer108, 0, array7, 0, array7.length);
    render_pass_encoder1020.setStencilReference(1);
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    compute_pass_encoder2001.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer108, 0, array1, 0, array1.length);
    render_pass_encoder1002.setStencilReference(1);
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
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1002.beginOcclusionQuery(1)
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1021.setPipeline(compute_pipeline105);
    render_pass_encoder1002.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    render_pass_encoder1002.setVertexBuffer(0, buffer100);
    const texture_view1006 = texture100.createView({ label: "texture_view1006" });
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder1031.setStencilReference(1);
    device10.queue.writeBuffer(buffer108, 0, array1, 0, array1.length);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group105);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group106);
    render_pass_encoder1030.setVertexBuffer(0, buffer109);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer1012.destroy()
    
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.endOcclusionQuery()
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder1021.insertDebugMarker("marker")
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group107);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
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
    buffer202.destroy()
    render_pass_encoder1021.setPipeline(render_pipeline103);
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.setStencilReference(1);
    
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group108);
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer108, 0, array7, 0, array7.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    
    
    buffer1010.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder105.copyBufferToBuffer(
        buffer1017,
        0,
        buffer108,
        0,
        400
    );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    buffer101.destroy()
    
    device10.queue.writeBuffer(buffer108, 0, array1, 0, array1.length);
    
    render_pass_encoder1002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    buffer1015.destroy()
    render_pass_encoder1002.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2001.insertDebugMarker("marker")
    
    buffer106.destroy()
    
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout107,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder202.setIndexBuffer(buffer205, "uint16");
    
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer109, 0, array8, 0, array8.length);
    
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1050.setPipeline(render_pipeline104);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1005,
            },
        ],
        occlusionQuerySet: query102
    });
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    
    
    
    
    compute_pass_encoder1021.pushDebugGroup("group_marker")
    command_encoder201.resolveQuerySet(
        query203,
        0,
        32,
        buffer203,
        0
    )
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout106,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1010.setStencilReference(1);
    query000.destroy()
    command_encoder201.resolveQuerySet(
        query204,
        0,
        32,
        buffer203,
        0
    )
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder1002.drawIndirect(buffer1011, 0);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device10.queue.writeBuffer(buffer1019, 0, array9, 0, array9.length);
    compute_pass_encoder1021.insertDebugMarker("marker")
    compute_pass_encoder1021.popDebugGroup()
    command_encoder101.copyBufferToBuffer(
        buffer1015,
        0,
        buffer102,
        0,
        400
    );
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1010.setPipeline(render_pipeline103);
    render_pass_encoder1021.setStencilReference(1);
    device10.queue.writeBuffer(buffer108, 0, array3, 0, array3.length);
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer1019.destroy()
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1041.pushDebugGroup("group_marker");
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1041.beginOcclusionQuery(1)
    render_pass_encoder1000.setVertexBuffer(0, buffer1016);
    
    render_pass_encoder1031.setVertexBuffer(0, buffer1015);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer1018,
        0
    )
    render_pass_encoder1031.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1031.draw(3);
    
    
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group109);
    buffer103.destroy()
    
    
    
    render_pass_encoder1010.setStencilReference(1);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    
    device10.queue.writeBuffer(buffer1014, 0, array5, 0, array5.length);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const command_buffer201 = command_encoder201.finish();
    
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder1030.drawIndexedIndirect(buffer1021, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1024, 0);
    render_pass_encoder1041.setVertexBuffer(0, buffer1015);
    compute_pass_encoder1010.popDebugGroup()
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1025, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1025, 0);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group1011);
    command_encoder200.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.setVertexBuffer(0, buffer1023);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.setVertexBuffer(0, buffer1012);
    render_pass_encoder1002.endOcclusionQuery()
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1012);
    compute_pass_encoder1021.end();
    render_pass_encoder1010.drawIndirect(buffer1025, 0);
    render_pass_encoder1031.drawIndirect(buffer1025, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    render_pass_encoder1041.drawIndirect(buffer108, 0);
    device20.queue.submit([]);
    compute_pass_encoder1020.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1031.drawIndirect(buffer1014, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1017, 0);
    render_pass_encoder1041.popDebugGroup();
    command_encoder104.popDebugGroup()
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group1013);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1000.setIndexBuffer(buffer1023, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1041.setIndexBuffer(buffer1020, "uint16");
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1001.setVertexBuffer(0, buffer101);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1025, "uint16");
    compute_pass_encoder1021.popDebugGroup()
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group1014);
    render_pass_encoder1021.setVertexBuffer(0, buffer1032);
    render_pass_encoder1041.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group1015);
    render_pass_encoder1020.setVertexBuffer(0, buffer109);
    render_pass_encoder1031.drawIndexedIndirect(buffer102, 0);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group1016);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1001.end();
    render_pass_encoder1050.setVertexBuffer(0, buffer103);
    render_pass_encoder1002.end();
    render_pass_encoder1050.drawIndirect(buffer108, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1027, "uint16");
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    render_pass_encoder1050.end();
    render_pass_encoder1001.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1025, 0);
    device10.queue.submit([]);
    render_pass_encoder1010.end();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    render_pass_encoder1050.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    command_encoder101.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1030.end();
    const command_buffer105 = command_encoder105.finish();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1040.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1038, 0);
    command_encoder102.popDebugGroup()
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1020.end();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1036, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1000.drawIndexed(3);
    const command_buffer102 = command_encoder102.finish();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1040, 0);
    compute_pass_encoder1010.end();
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer105, ]);
    render_pass_encoder1010.drawIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1001.drawIndirect(buffer1037, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1050.end();
    render_pass_encoder1001.drawIndirect(buffer1039, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer1025, 0);
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1018);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndexed(3);
    const command_buffer100 = command_encoder100.finish();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1043, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1043, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1030, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1045,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    render_pass_encoder1031.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1002.drawIndirect(buffer1040, 0);
    compute_pass_encoder2001.popDebugGroup()
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    device20.queue.submit([]);
    render_pass_encoder1021.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1046, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1041.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1040, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1043, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1047, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1002.drawIndirect(buffer1024, 0);
    device50.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer1035, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    device50.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1047, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer1040, 0);
    device20.queue.submit([]);
    render_pass_encoder1031.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder2000.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder1030.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1002.drawIndirect(buffer1032, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1020.end();
    compute_pass_encoder1021.end();
    render_pass_encoder1050.drawIndirect(buffer1047, 0);
    render_pass_encoder1050.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1025, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1010.end();
    render_pass_encoder1002.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1049,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1020);
    render_pass_encoder1002.setIndexBuffer(buffer1036, "uint16");
    compute_pass_encoder1021.dispatchWorkgroups(100);
    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1051,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1021);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1041.drawIndirect(buffer1025, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1047, 0);
    render_pass_encoder1002.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1002.drawIndirect(buffer1020, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder1031.drawIndirect(buffer1025, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndirect(buffer1040, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1002.end();
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1050.setIndexBuffer(buffer1050, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1050.drawIndirect(buffer108, 0);
    render_pass_encoder1031.drawIndirect(buffer1025, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1041.drawIndirect(buffer108, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1047, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1041.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndirect(buffer1047, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer1024, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1052, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1052, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1040.popDebugGroup();
    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1054,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndirect(buffer1048, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1056,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1023);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.end();
    render_pass_encoder1021.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1041.drawIndirect(buffer104, 0);
    render_pass_encoder1050.drawIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1031.drawIndirect(buffer1040, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1031.drawIndirect(buffer107, 0);
    render_pass_encoder1040.drawIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1002.drawIndirect(buffer1035, 0);
    render_pass_encoder1041.drawIndirect(buffer1036, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1041.drawIndirect(buffer1028, 0);
    render_pass_encoder1031.drawIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1041.drawIndirect(buffer1040, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1040.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1050.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1057, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1057, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1027, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1055, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1031.drawIndirect(buffer1057, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1047, 0);
    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1059,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1024);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    device20.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer106, 0);
    device50.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1024, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1060, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1001.popDebugGroup();
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1025);
    render_pass_encoder1001.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer107, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1026, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1050.drawIndirect(buffer1060, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1040, 0);
    render_pass_encoder1031.drawIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1057, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1057, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1041.drawIndirect(buffer1030, 0);
    render_pass_encoder1021.drawIndirect(buffer1059, 0);
    render_pass_encoder1020.drawIndirect(buffer1057, 0);
    render_pass_encoder1020.drawIndirect(buffer1057, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1057, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1010.drawIndirect(buffer1040, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder1002.drawIndirect(buffer1019, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1041.drawIndirect(buffer1011, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1057, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    render_pass_encoder1002.drawIndirect(buffer1061, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer1010, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1050.end();
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1026);
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    device50.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer1029, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1065, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1065, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1061, "uint16");
    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1067,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1027);
    render_pass_encoder1031.drawIndirect(buffer1047, 0);
    render_pass_encoder1030.drawIndirect(buffer1065, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1002.drawIndexedIndirect(buffer1053, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1068, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1068, 0);
    compute_pass_encoder1021.end();
    render_pass_encoder1002.drawIndirect(buffer1056, 0);
    render_pass_encoder1040.drawIndirect(buffer1030, 0);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1041.drawIndirect(buffer1024, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1040, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1047, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1070,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1028);
    render_pass_encoder1041.setIndexBuffer(buffer1049, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1040, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1025, 0);
    render_pass_encoder1031.drawIndirect(buffer1046, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1071, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1071, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.end();
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1072, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1072, 0);
    render_pass_encoder1041.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1073, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1073, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1031.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1025, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1040.drawIndirect(buffer107, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1038, "uint16");
    compute_pass_encoder1021.end();
    render_pass_encoder1041.drawIndirect(buffer103, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1000.end();
    render_pass_encoder1021.drawIndirect(buffer1060, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndirect(buffer1065, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1010.drawIndirect(buffer1072, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1040.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1073, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndirect(buffer1057, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.end();
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1065, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder1021.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1074, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1074, 0);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1073, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1025, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1075, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1075, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1020.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1058, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1001.drawIndirect(buffer1074, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1074, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    device50.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1047, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1039, 0);
    device10.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1021.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1076, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1076, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1000.drawIndirect(buffer1068, 0);
    render_pass_encoder1002.drawIndirect(buffer1047, 0);
    render_pass_encoder1010.drawIndirect(buffer1068, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1031.drawIndirect(buffer1053, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1002.end();
    render_pass_encoder1001.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1073, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1041.drawIndirect(buffer1022, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1055, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1076, 0);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1020.end();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1052, 0);
    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1078,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1029);
    render_pass_encoder1020.drawIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1049, 0);
    render_pass_encoder1031.drawIndirect(buffer1062, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1002.drawIndirect(buffer1060, 0);
    device20.queue.submit([]);
    render_pass_encoder1002.drawIndirect(buffer1043, 0);
    compute_pass_encoder1000.popDebugGroup()
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1079, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1079, 0);
    render_pass_encoder1030.drawIndirect(buffer1034, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1080, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1080, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1071, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1073, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1025, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder1010.drawIndirect(buffer1080, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1043, 0);
    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1082,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1030);
    render_pass_encoder1041.end();
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    device20.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1054, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1031.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1052, 0);
    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1084,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1031);
    render_pass_encoder1002.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder1021.popDebugGroup()
    compute_pass_encoder2001.popDebugGroup()
    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1086,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1032);
    compute_pass_encoder1000.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1080, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1070, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1010.drawIndirect(buffer1072, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1087, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1087, 0);
    device50.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1002.drawIndirect(buffer1086, 0);
    render_pass_encoder1041.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndirect(buffer1080, 0);
    render_pass_encoder1041.drawIndirect(buffer1087, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1040.drawIndirect(buffer1079, 0);
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1001.end();
    render_pass_encoder1002.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1075, 0);
    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1089,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1033);
    render_pass_encoder1040.draw(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1087, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1031.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndirect(buffer1025, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1030.drawIndirect(buffer1071, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1071, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1050.drawIndirect(buffer1069, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1061, 0);
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1002.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1068, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1050.drawIndirect(buffer1071, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1002.drawIndirect(buffer1071, 0);
    render_pass_encoder1021.drawIndirect(buffer1076, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndirect(buffer1060, 0);
    render_pass_encoder1002.drawIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1002.drawIndirect(buffer108, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1071, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1001.drawIndirect(buffer1043, 0);
    render_pass_encoder1041.drawIndirect(buffer1064, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1072, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1041, 0);
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1090, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1090, 0);
    render_pass_encoder1041.drawIndirect(buffer1076, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1041.drawIndirect(buffer1024, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1040.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1075, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndirect(buffer1080, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1050.drawIndirect(buffer1074, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1040.drawIndirect(buffer1072, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1068, 0);
    render_pass_encoder1031.drawIndirect(buffer109, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1079, 0);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1001.drawIndirect(buffer1079, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1040, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer108, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer1087, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1087, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1057, 0);
    render_pass_encoder1000.drawIndirect(buffer1075, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.end();
    render_pass_encoder1041.drawIndirect(buffer1072, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1000.drawIndirect(buffer1063, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder1021.end();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1076, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1060, 0);
    compute_pass_encoder2001.popDebugGroup()
    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1092,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1034);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1001.drawIndirect(buffer1087, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1057, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1002.drawIndirect(buffer1072, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1039, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1093, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1093, 0);
    render_pass_encoder1050.drawIndirect(buffer1072, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1001.end();
    compute_pass_encoder1010.end();
    compute_pass_encoder2001.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1037, 0);
    device50.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1002.drawIndirect(buffer1085, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1031.drawIndirect(buffer1073, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1050.drawIndirect(buffer1020, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1090, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1040.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndirect(buffer1080, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1068, 0);
    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1095,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1035);
    render_pass_encoder1002.drawIndirect(buffer1072, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1031.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndirect(buffer1068, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1079, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.end();
    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1097,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1036);
    render_pass_encoder1000.drawIndirect(buffer1079, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1041.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1001.drawIndirect(buffer1073, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1098, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1098, 0);
    render_pass_encoder1002.drawIndirect(buffer1040, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1049, 0);
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1073, 0);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1038, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder1010.end();
    render_pass_encoder1020.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1040.drawIndirect(buffer1072, 0);
    render_pass_encoder1001.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndirect(buffer1095, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1050.drawIndirect(buffer1092, 0);
    device10.queue.submit([]);
    render_pass_encoder1040.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1041.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1067, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndirect(buffer1093, 0);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder1031.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1002.drawIndirect(buffer1026, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1098, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1076, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10100,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1037);
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    render_pass_encoder1041.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1000.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1002.drawIndirect(buffer1047, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1065, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1021.drawIndirect(buffer1086, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1090, 0);
    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10102,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1038);
    render_pass_encoder1050.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1010.drawIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1050.drawIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndirect(buffer1090, 0);
    render_pass_encoder1041.drawIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndirect(buffer1025, 0);
    render_pass_encoder1041.drawIndirect(buffer108, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1090, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1030, 0);
    device10.queue.submit([]);
    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10104,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1039);
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1090, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1010.drawIndirect(buffer1098, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1021.drawIndirect(buffer1090, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1076, 0);
    compute_pass_encoder1010.end();
    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10106,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1040);
    render_pass_encoder1010.drawIndirect(buffer1057, 0);
    render_pass_encoder1010.drawIndirect(buffer1065, 0);
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1002.drawIndirect(buffer1071, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10107, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10107, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1041.drawIndirect(buffer1025, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1001.drawIndirect(buffer1080, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1031.drawIndirect(buffer1025, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    device50.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer1087, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1070, 0);
    render_pass_encoder1050.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1087, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1040.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1075, 0);
    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10109,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1041);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder1002.popDebugGroup();
    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10111 = device10.createBuffer({
        label: "buffer10111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1042 = device10.createBindGroup({
        label: "bind_group1042",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10111,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1042);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1041.drawIndirect(buffer1087, 0);
    render_pass_encoder1040.drawIndirect(buffer1090, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1079, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1021.drawIndirect(buffer10107, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1040.end();
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndirect(buffer1072, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1041.drawIndirect(buffer102, 0);
    device10.queue.submit([command_buffer104, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1060, 0);
    compute_pass_encoder1000.popDebugGroup()
    const buffer10112 = device10.createBuffer({
        label: "buffer10112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1043 = device10.createBindGroup({
        label: "bind_group1043",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10113,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1043);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1060, "uint16");
    device10.queue.submit([command_buffer105, ]);
    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10115 = device10.createBuffer({
        label: "buffer10115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1044 = device10.createBindGroup({
        label: "bind_group1044",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10115,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1044);
    render_pass_encoder1020.setIndexBuffer(buffer10111, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1077, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1040.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10116 = device10.createBuffer({
        label: "buffer10116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10116, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10116, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1068, 0);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1000.drawIndirect(buffer1098, 0);
    render_pass_encoder1001.drawIndirect(buffer1073, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1024, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1040.drawIndirect(buffer1068, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1041.drawIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1002.drawIndirect(buffer10114, 0);
    device20.queue.submit([]);
    render_pass_encoder1040.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1068, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10117 = device10.createBuffer({
        label: "buffer10117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10117, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10117, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1028, 0);
    render_pass_encoder1002.drawIndirect(buffer1045, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndirect(buffer1074, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1071, 0);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1083, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndirect(buffer1024, 0);
    render_pass_encoder1031.drawIndirect(buffer10102, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1071, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer10109, "uint16");
    render_pass_encoder1002.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1041.drawIndirect(buffer1050, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1040, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1046, 0);
    device20.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1098, 0);
    device10.queue.submit([command_buffer105, ]);
    device00.queue.submit([]);
    compute_pass_encoder1020.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1079, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1021.drawIndirect(buffer1072, 0);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1052, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder1040.drawIndirect(buffer1025, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1072, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1033, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1025, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer10113, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1021.drawIndirect(buffer10115, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1020.drawIndirect(buffer1025, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1047, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1054, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1001.drawIndirect(buffer1093, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10118 = device10.createBuffer({
        label: "buffer10118",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10118, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10118, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1002.drawIndirect(buffer1094, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndirect(buffer10118, 0);
    render_pass_encoder1020.drawIndirect(buffer1093, 0);
    render_pass_encoder1030.drawIndirect(buffer1073, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1057, 0);
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1040.drawIndirect(buffer1057, 0);
    render_pass_encoder1050.drawIndirect(buffer1072, 0);
    render_pass_encoder1050.drawIndirect(buffer1062, 0);
    device10.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1002.drawIndirect(buffer1061, 0);
    render_pass_encoder1030.drawIndirect(buffer1073, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1021.end();
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer103, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1021.drawIndirect(buffer1090, 0);
    render_pass_encoder1030.drawIndirect(buffer1090, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1002.drawIndirect(buffer1024, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10112, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1050.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer10108, "uint16");
    const buffer10119 = device10.createBuffer({
        label: "buffer10119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10120 = device10.createBuffer({
        label: "buffer10120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1045 = device10.createBindGroup({
        label: "bind_group1045",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10120,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1045);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1041.drawIndirect(buffer1060, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1020.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1002.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1076, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1002.drawIndexedIndirect(buffer1068, 0);
    const buffer10121 = device10.createBuffer({
        label: "buffer10121",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10122 = device10.createBuffer({
        label: "buffer10122",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1046 = device10.createBindGroup({
        label: "bind_group1046",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10121,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10122,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1046);
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1002.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1000.drawIndirect(buffer10102, 0);
    render_pass_encoder1002.setIndexBuffer(buffer10107, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1002.drawIndirect(buffer1090, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1075, 0);
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1090, 0);
    device30.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer1060, 0);
    render_pass_encoder1041.drawIndirect(buffer108, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1021.drawIndirect(buffer1090, 0);
    render_pass_encoder1040.drawIndirect(buffer1087, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10118, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1041.drawIndirect(buffer1072, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1066, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1073, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1031.end();
    render_pass_encoder1001.drawIndirect(buffer1087, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1041.drawIndirect(buffer1075, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1020, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.drawIndirect(buffer1090, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1050.drawIndirect(buffer1087, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1031.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1002.drawIndirect(buffer10118, 0);
    render_pass_encoder1031.drawIndirect(buffer10107, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1079, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1021.drawIndirect(buffer1080, 0);
    render_pass_encoder1030.drawIndirect(buffer1072, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1041.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1040.drawIndirect(buffer1025, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1041.end();
    render_pass_encoder1001.drawIndirect(buffer1080, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1002.drawIndirect(buffer1040, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1000.end();
    render_pass_encoder1000.setIndexBuffer(buffer10117, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1001.drawIndirect(buffer1073, 0);
    render_pass_encoder1021.setIndexBuffer(buffer10106, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1093, 0);
    render_pass_encoder1041.drawIndirect(buffer1079, 0);
    render_pass_encoder1001.drawIndirect(buffer1071, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndirect(buffer1079, 0);
    device50.queue.submit([]);
    render_pass_encoder1041.setIndexBuffer(buffer10100, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1076, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1079, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1041.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1048, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer10107, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1030.drawIndirect(buffer1073, 0);
    const buffer10123 = device10.createBuffer({
        label: "buffer10123",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10124 = device10.createBuffer({
        label: "buffer10124",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1047 = device10.createBindGroup({
        label: "bind_group1047",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10123,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10124,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1047);
    render_pass_encoder1041.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1079, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1011, 0);
    render_pass_encoder1020.drawIndirect(buffer10116, 0);
    render_pass_encoder1050.drawIndirect(buffer1014, 0);
    const buffer10125 = device10.createBuffer({
        label: "buffer10125",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10126 = device10.createBuffer({
        label: "buffer10126",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1048 = device10.createBindGroup({
        label: "bind_group1048",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10125,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10126,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1048);
    render_pass_encoder1010.end();
    render_pass_encoder1020.end();
    render_pass_encoder1001.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1083, 0);
    render_pass_encoder1000.drawIndirect(buffer10107, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndirect(buffer1023, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.end();
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10127 = device10.createBuffer({
        label: "buffer10127",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10127, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10127, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1084, 0);
    render_pass_encoder1040.drawIndirect(buffer10118, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder1021.end();
    render_pass_encoder1030.drawIndirect(buffer1074, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1020.popDebugGroup();
    const buffer10128 = device10.createBuffer({
        label: "buffer10128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10129 = device10.createBuffer({
        label: "buffer10129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1049 = device10.createBindGroup({
        label: "bind_group1049",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10129,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1049);
    render_pass_encoder1010.drawIndirect(buffer1060, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    const buffer10130 = device10.createBuffer({
        label: "buffer10130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10131 = device10.createBuffer({
        label: "buffer10131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1050 = device10.createBindGroup({
        label: "bind_group1050",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10131,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1050);
    render_pass_encoder1031.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1010.drawIndirect(buffer1072, 0);
    render_pass_encoder1020.drawIndirect(buffer1029, 0);
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    const buffer10132 = device10.createBuffer({
        label: "buffer10132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10133 = device10.createBuffer({
        label: "buffer10133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1051 = device10.createBindGroup({
        label: "bind_group1051",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10133,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1051);
    render_pass_encoder1030.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10132, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1087, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1080, 0);
    render_pass_encoder1010.drawIndirect(buffer1074, 0);
    const buffer10134 = device10.createBuffer({
        label: "buffer10134",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10135 = device10.createBuffer({
        label: "buffer10135",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1052 = device10.createBindGroup({
        label: "bind_group1052",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10134,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10135,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1052);
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1040.drawIndirect(buffer1073, 0);
    render_pass_encoder1040.drawIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndirect(buffer1074, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1050.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1001.drawIndirect(buffer1047, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer10107, 0);
    render_pass_encoder1030.drawIndirect(buffer1068, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1021.drawIndirect(buffer1080, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer10119, "uint16");
    render_pass_encoder1050.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1040.drawIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1057, "uint16");
    compute_pass_encoder1021.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1040.drawIndirect(buffer10123, 0);
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndirect(buffer1073, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.end();
    render_pass_encoder1031.drawIndirect(buffer10127, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer10131, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1050.drawIndirect(buffer10127, 0);
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1079, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1030.drawIndirect(buffer10116, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndirect(buffer10135, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1093, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10136 = device10.createBuffer({
        label: "buffer10136",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10136, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10136, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder1021.end();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1040, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1001.setIndexBuffer(buffer1088, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.drawIndirect(buffer1076, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1090, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1010.drawIndirect(buffer10136, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1074, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1001.drawIndirect(buffer1065, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1020.drawIndirect(buffer1077, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndirect(buffer1073, 0);
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndirect(buffer1072, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1031.drawIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndirect(buffer1041, 0);
    render_pass_encoder1040.drawIndirect(buffer1098, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1040.drawIndirect(buffer1039, 0);
    render_pass_encoder1021.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.drawIndirect(buffer1076, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1041.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10126, 0);
    render_pass_encoder1030.drawIndirect(buffer1090, 0);
    render_pass_encoder1031.drawIndirect(buffer10127, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1025, 0);
    compute_pass_encoder1021.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10117, 0);
    render_pass_encoder1030.drawIndirect(buffer1090, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10125, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1087, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1068, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10130, 0);
    device50.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1021.drawIndirect(buffer1087, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    device20.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1050.drawIndirect(buffer100, 0);
    device50.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1071, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10132, 0);
    render_pass_encoder1001.drawIndirect(buffer1043, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1020.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1020.drawIndirect(buffer1085, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1041.drawIndirect(buffer1040, 0);
    render_pass_encoder1040.end();
    device20.queue.submit([command_buffer201, ]);
    const buffer10137 = device10.createBuffer({
        label: "buffer10137",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10138 = device10.createBuffer({
        label: "buffer10138",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1053 = device10.createBindGroup({
        label: "bind_group1053",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10137,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10138,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1053);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer10127, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10118, 0);
    render_pass_encoder1031.drawIndirect(buffer1068, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1010.drawIndirect(buffer1061, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1076, 0);
    const buffer10139 = device10.createBuffer({
        label: "buffer10139",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10140 = device10.createBuffer({
        label: "buffer10140",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1054 = device10.createBindGroup({
        label: "bind_group1054",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10139,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10140,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1054);
    render_pass_encoder1030.drawIndirect(buffer10119, 0);
    const buffer10141 = device10.createBuffer({
        label: "buffer10141",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10142 = device10.createBuffer({
        label: "buffer10142",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1055 = device10.createBindGroup({
        label: "bind_group1055",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10141,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10142,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1055);
    const buffer10143 = device10.createBuffer({
        label: "buffer10143",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10144 = device10.createBuffer({
        label: "buffer10144",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1056 = device10.createBindGroup({
        label: "bind_group1056",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10143,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10144,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1056);
    render_pass_encoder1031.drawIndirect(buffer10118, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1020.drawIndirect(buffer1034, 0);
    render_pass_encoder1010.drawIndirect(buffer1080, 0);
    render_pass_encoder1031.drawIndirect(buffer1065, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer10144, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10119, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1002.setIndexBuffer(buffer10109, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1030.drawIndirect(buffer1073, 0);
    render_pass_encoder1031.drawIndirect(buffer1028, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1030.drawIndirect(buffer1098, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1031.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1002.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10107, 0);
    render_pass_encoder1010.drawIndirect(buffer10140, 0);
    render_pass_encoder1021.drawIndirect(buffer1096, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1074, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10141, 0);
    render_pass_encoder1001.drawIndirect(buffer1035, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    compute_pass_encoder1020.end();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1002.drawIndirect(buffer10116, 0);
    device10.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1050.drawIndirect(buffer1051, 0);
    render_pass_encoder1010.drawIndirect(buffer1095, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1047, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1010.drawIndirect(buffer1072, 0);
    render_pass_encoder1030.drawIndirect(buffer1047, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1001.drawIndirect(buffer1074, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10145 = device10.createBuffer({
        label: "buffer10145",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10145, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10145, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1087, 0);
    render_pass_encoder1030.drawIndirect(buffer1098, 0);
    const buffer10146 = device10.createBuffer({
        label: "buffer10146",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10147 = device10.createBuffer({
        label: "buffer10147",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1057 = device10.createBindGroup({
        label: "bind_group1057",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10146,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10147,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1057);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10127, 0);
    render_pass_encoder1040.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10148 = device10.createBuffer({
        label: "buffer10148",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10148, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10148, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10117, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1047, 0);
    render_pass_encoder1040.drawIndirect(buffer100, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10149 = device10.createBuffer({
        label: "buffer10149",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10149, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10149, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10145, 0);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1041.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10150 = device10.createBuffer({
        label: "buffer10150",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10150, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10150, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1020.drawIndirect(buffer10108, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1057, 0);
    render_pass_encoder1040.drawIndirect(buffer1093, 0);
    render_pass_encoder1002.drawIndirect(buffer1087, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1020.drawIndirect(buffer10102, 0);
    render_pass_encoder1021.drawIndirect(buffer1073, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1020.setIndexBuffer(buffer1086, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1002.drawIndirect(buffer10148, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10151 = device10.createBuffer({
        label: "buffer10151",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10151, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10151, 0);
    render_pass_encoder1041.drawIndirect(buffer1014, 0);
    device50.queue.submit([]);
    render_pass_encoder1002.drawIndirect(buffer1091, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1074, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.drawIndirect(buffer10140, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1002.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1041.drawIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    const buffer10152 = device10.createBuffer({
        label: "buffer10152",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10153 = device10.createBuffer({
        label: "buffer10153",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1058 = device10.createBindGroup({
        label: "bind_group1058",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10152,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10153,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1058);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1040.drawIndirect(buffer1049, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1001.drawIndirect(buffer10148, 0);
    render_pass_encoder1010.drawIndirect(buffer1097, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10150, 0);
    render_pass_encoder1002.drawIndirect(buffer1072, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10127, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1050.drawIndirect(buffer1025, 0);
    render_pass_encoder1040.drawIndirect(buffer1094, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1040, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer10117, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1051, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1060, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10154 = device10.createBuffer({
        label: "buffer10154",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10154, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10154, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer1087, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer10112, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10154, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1020.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10142, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1073, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1041.drawIndirect(buffer10116, 0);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10117, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer10127, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10136, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1087, 0);
    render_pass_encoder1020.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10118, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1050.drawIndirect(buffer10117, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndexedIndirect(buffer10118, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer10150, 0);
    render_pass_encoder1050.drawIndirect(buffer1068, 0);
    const buffer10155 = device10.createBuffer({
        label: "buffer10155",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10156 = device10.createBuffer({
        label: "buffer10156",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1059 = device10.createBindGroup({
        label: "bind_group1059",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10155,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10156,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1059);
    render_pass_encoder1020.end();
    render_pass_encoder1041.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1074, 0);
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer10133, "uint16");
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10136, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1077, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    const buffer10157 = device10.createBuffer({
        label: "buffer10157",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10158 = device10.createBuffer({
        label: "buffer10158",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1060 = device10.createBindGroup({
        label: "bind_group1060",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10157,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10158,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1060);
    render_pass_encoder1000.drawIndirect(buffer1087, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1016, 0);
    render_pass_encoder1030.drawIndirect(buffer1057, 0);
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    render_pass_encoder1050.drawIndirect(buffer10107, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10145, 0);
    render_pass_encoder1002.drawIndirect(buffer108, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1001.drawIndirect(buffer1010, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer10116, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10159 = device10.createBuffer({
        label: "buffer10159",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10159, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10159, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10140, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer10118, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer10127, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer10145, 0);
    render_pass_encoder1031.drawIndirect(buffer10127, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1021.setIndexBuffer(buffer10149, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer10146, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10150, 0);
    render_pass_encoder1050.drawIndirect(buffer1081, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10118, 0);
    render_pass_encoder1030.drawIndirect(buffer1090, 0);
    render_pass_encoder1021.drawIndirect(buffer1065, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1040.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    render_pass_encoder1050.drawIndirect(buffer1028, 0);
    const buffer10160 = device10.createBuffer({
        label: "buffer10160",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10161 = device10.createBuffer({
        label: "buffer10161",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1061 = device10.createBindGroup({
        label: "bind_group1061",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10160,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10161,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1061);
    render_pass_encoder1002.setIndexBuffer(buffer10119, "uint16");
    const buffer10162 = device10.createBuffer({
        label: "buffer10162",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10163 = device10.createBuffer({
        label: "buffer10163",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1062 = device10.createBindGroup({
        label: "bind_group1062",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10162,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10163,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1062);
    render_pass_encoder1002.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1040.drawIndirect(buffer1025, 0);
    render_pass_encoder1031.drawIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1001.drawIndirect(buffer1088, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1041.drawIndirect(buffer1024, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10150, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
    render_pass_encoder1002.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.drawIndirect(buffer1080, 0);
    render_pass_encoder1010.drawIndirect(buffer10145, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10150, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1002.drawIndirect(buffer10112, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1041.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1031.drawIndirect(buffer1081, 0);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1002.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1050.drawIndirect(buffer10127, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer10154, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    compute_pass_encoder1021.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer10129, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1031.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1001.drawIndirect(buffer10104, 0);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1040.drawIndirect(buffer10159, 0);
    render_pass_encoder1041.drawIndirect(buffer108, 0);
    compute_pass_encoder2000.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10144, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1045, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1010.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer10107, 0);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    device50.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1086, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1021.drawIndirect(buffer10116, 0);
    compute_pass_encoder1021.end();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer10118, 0);
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder1010.end();
    render_pass_encoder1001.drawIndirect(buffer10162, 0);
    render_pass_encoder1031.drawIndirect(buffer10136, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1020.drawIndirect(buffer1047, 0);
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1020.drawIndirect(buffer10148, 0);
    render_pass_encoder1050.drawIndirect(buffer108, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1021.drawIndirect(buffer10127, 0);
    render_pass_encoder1001.drawIndirect(buffer1087, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10161, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1047, 0);
    render_pass_encoder1000.drawIndirect(buffer1079, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1067, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1031.drawIndirect(buffer1023, 0);
    render_pass_encoder1041.drawIndirect(buffer1074, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1030.drawIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndirect(buffer10151, 0);
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10150, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer10110, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndirect(buffer1057, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1002.drawIndirect(buffer10148, 0);
    render_pass_encoder1030.drawIndirect(buffer1090, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1080, 0);
    compute_pass_encoder2001.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1000.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1050, 0);
    const buffer10164 = device10.createBuffer({
        label: "buffer10164",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10165 = device10.createBuffer({
        label: "buffer10165",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1063 = device10.createBindGroup({
        label: "bind_group1063",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10164,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10165,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1063);
    render_pass_encoder1010.drawIndirect(buffer10164, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1031.drawIndirect(buffer1047, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1021.drawIndirect(buffer1072, 0);
    render_pass_encoder1010.drawIndirect(buffer10118, 0);
    render_pass_encoder1041.drawIndirect(buffer1053, 0);
    render_pass_encoder1041.drawIndirect(buffer1086, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1021.drawIndirect(buffer10134, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1041.drawIndirect(buffer1096, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1061, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1050.end();
    render_pass_encoder1002.drawIndirect(buffer1010, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1030.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10150, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1031.drawIndirect(buffer10149, 0);
    render_pass_encoder1030.drawIndirect(buffer1093, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndirect(buffer1092, 0);
    render_pass_encoder1002.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1097, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10118, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1020.drawIndirect(buffer10106, 0);
    device10.queue.submit([command_buffer105, ]);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10166 = device10.createBuffer({
        label: "buffer10166",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10166, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10166, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1062, "uint16");
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1030.drawIndirect(buffer1079, 0);
    render_pass_encoder1020.drawIndirect(buffer10166, 0);
    render_pass_encoder1000.drawIndirect(buffer10118, 0);
    device20.queue.submit([]);
    render_pass_encoder1002.drawIndirect(buffer1044, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1031.drawIndirect(buffer1098, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1041.drawIndirect(buffer10151, 0);
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer10142, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10127, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1020.drawIndirect(buffer10159, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10155, "uint16");
}