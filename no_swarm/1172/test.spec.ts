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
    const array0 = new Float32Array([0.0, -0.5, -1.0, -0.75, 0.75, 0.0, -0.25, 0.25, -1.0, 0.75, 0.5, -0.75, 0.0, 0.5, 1.0, 1.0, -0.75, -0.25, -1.0, 1.0, 0.75, -0.75, 0.5, 0.25, 0.25, 0.0, 0.75, -1.0, 0.5, -1.0, -0.75, -0.75, 0.0, -0.75, 0.0, 0.75, -0.75, -0.25, -0.5, -0.5, 0.0, -0.75, -0.25, -1.0, -1.0, -0.75, 0.75, 1.0, 0.25, 0.75, -0.75, -0.75, 0.5, 0.75, -0.75, -0.75, 0.5, -0.25, -1.0, -0.75, 0.0, -1.0, -1.0, 0.0, 0.25, 1.0, 0.5, 1.0, 0.5, -0.5, -0.75, -0.25, 0.5, 0.25, -1.0, 1.0, 0.5, -0.25, 0.0, -0.5, -0.5, 0.75, 0.0, -0.75, 0.0, 0.0, 0.75, 0.75, -0.25, -0.25, -0.25, 0.25, -0.75, -0.5, -0.75, -0.5, -0.75, 0.5, -0.25, -1.0, ]);
    
    const array1 = new Float32Array([0.75, -0.75, 1.0, -0.75, -1.0, -1.0, -0.5, 0.0, 1.0, 1.0, -0.25, -0.75, 0.75, 0.5, 1.0, -0.5, 0.0, 1.0, 0.5, 0.75, -0.25, 0.0, -1.0, 0.25, 1.0, -0.75, -0.75, -0.75, 0.5, 0.25, -0.5, 0.0, 0.0, -0.5, -0.25, -0.75, 0.25, 1.0, 0.0, -1.0, 0.0, 0.75, 0.5, 0.25, -0.75, -1.0, 0.75, 0.5, 0.0, -0.5, 1.0, -0.75, 0.5, -0.75, 0.25, -1.0, -0.75, 0.0, 0.25, 0.25, 0.0, 0.5, 0.0, -0.75, 0.0, 0.25, -0.25, 0.5, -0.5, -0.5, -0.25, 1.0, -1.0, -0.25, 0.0, -0.5, -1.0, 0.0, 0.25, -0.5, 1.0, -1.0, 0.25, -0.25, 0.75, 1.0, -1.0, 0.75, -0.25, -0.5, 0.5, -0.25, 0.25, 0.5, -0.25, 0.75, 0.25, 0.25, 1.0, 1.0, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array2 = new Float32Array([-1.0, 0.0, 1.0, -0.5, -0.25, 1.0, 1.0, -0.5, 0.0, 0.0, 0.75, 0.0, -1.0, 0.5, 0.25, 0.0, -0.5, 0.5, 0.25, -0.5, -1.0, 0.25, 0.0, 0.25, 0.0, 0.75, 0.25, 0.0, 1.0, -0.75, 1.0, 0.5, -1.0, -0.75, 0.0, -0.25, -0.75, -0.25, 0.25, 0.0, 0.5, 0.75, 0.5, -1.0, 0.0, -0.5, 0.25, 0.75, -1.0, -0.25, -0.5, 0.75, 0.25, -0.25, 0.0, 0.5, 1.0, 1.0, 1.0, 0.5, 0.75, 1.0, 0.75, 0.5, -0.75, -1.0, -0.5, 0.25, 0.5, -0.25, 0.5, 0.25, 0.25, -0.75, 0.75, 0.5, -0.75, -0.5, -0.75, 1.0, 0.75, 1.0, 1.0, 1.0, 0.25, 0.5, 0.0, 0.0, -0.75, -1.0, -0.25, 0.5, 0.0, 0.0, -0.75, -0.25, 0.0, -0.25, 0.75, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-0.25, 0.25, 0.0, 0.5, -0.75, 1.0, -0.25, 0.25, 0.75, 0.75, -0.75, 0.5, -1.0, 1.0, -1.0, -0.75, 0.5, -0.5, -0.25, 0.25, -0.75, -0.75, -0.25, -0.5, -0.5, 0.25, 0.5, -0.25, 0.0, 0.75, 0.5, 0.25, -0.25, 1.0, -0.75, 0.5, 0.0, 1.0, -0.75, 0.75, 0.5, -0.25, 0.75, -0.25, -0.75, 1.0, 0.0, -1.0, -0.25, -0.25, 0.25, 0.0, 1.0, 1.0, -0.75, 0.0, 1.0, 0.25, 0.5, -0.25, 0.5, 0.5, -0.75, -0.5, -0.75, 0.0, -0.75, 1.0, -0.25, 0.0, -0.75, -0.5, 0.0, -0.5, -0.75, 0.5, 0.25, -1.0, -0.5, 0.5, 0.0, 0.0, 0.75, -0.75, 0.0, -0.75, -0.25, -0.5, -0.25, -0.25, 0.75, -0.75, 0.25, 0.25, 0.5, 1.0, 1.0, -1.0, 1.0, -0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const array4 = new Float32Array([0.25, 0.25, 0.75, 0.75, -0.25, 0.5, -0.5, 1.0, -0.5, -0.5, 0.0, 0.0, -1.0, 0.25, 1.0, -0.25, 0.75, -0.75, -0.75, 0.0, 0.0, -0.5, -0.25, 1.0, 0.0, 0.25, -0.25, 0.75, -0.25, -0.25, 0.75, -0.25, -0.5, 0.0, -0.75, -0.5, 0.5, 0.75, 0.25, -1.0, 0.25, -0.5, -0.75, -0.75, -0.25, -0.5, 0.75, 1.0, -0.25, -1.0, -0.75, 0.25, 0.75, 0.0, 0.75, -0.75, 0.0, 0.0, -0.5, -0.25, 0.25, 0.75, 0.5, -0.5, -0.5, 0.5, 0.25, 0.25, 0.5, 0.0, 0.75, -0.5, 0.5, 1.0, -1.0, 1.0, -0.25, 0.75, 0.75, 0.0, -0.25, 0.75, -0.5, 0.75, -0.25, 0.75, 0.5, 0.0, 1.0, 0.75, -1.0, 0.0, 0.5, -0.75, -1.0, -0.75, -1.0, -0.5, 0.0, -0.5, ]);
    device20.pushErrorScope("out-of-memory");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    texture201.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
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
    const command_buffer201 = command_encoder201.finish();
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    texture200.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    buffer200.destroy()
    
    const command_buffer001 = command_encoder001.finish();
    device00.pushErrorScope("validation");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
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
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const array5 = new Float32Array([0.5, -1.0, -0.25, 0.0, -0.5, 1.0, -0.75, -0.5, -0.75, 0.5, 0.25, 0.0, 0.25, -0.5, -1.0, -0.5, 1.0, 0.0, -0.25, 0.75, 0.5, 1.0, -1.0, -1.0, 0.5, 0.5, -0.5, -0.25, -0.75, 0.25, -0.25, -0.25, 0.5, 0.0, -0.25, 0.5, -0.25, 0.0, 0.25, 0.75, 0.0, 0.5, -0.5, 0.0, -0.75, -0.5, 0.5, 0.5, -0.75, 0.0, 0.0, -0.25, -0.5, 0.0, 1.0, 0.75, -0.25, -0.25, -0.25, 0.0, 0.75, -0.25, 0.25, 0.5, -0.75, -0.75, -0.75, 0.75, -0.75, -1.0, 1.0, -0.5, 0.0, -1.0, -0.5, -0.5, 1.0, 1.0, 0.5, -0.25, -0.25, 0.75, -1.0, 0.0, -1.0, -0.75, -0.75, -0.25, 0.5, 0.0, -1.0, -0.75, 0.75, -0.75, 1.0, 1.0, 0.5, 0.25, 0.5, 0.25, ]);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device30.pushErrorScope("validation");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    command_encoder202.clearBuffer(buffer200);
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    command_encoder002.insertDebugMarker("mymarker");
    device20.pushErrorScope("validation");
    texture100.destroy();
    const command_buffer000 = command_encoder000.finish();
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
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
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder2020.executeBundles([])
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    texture100.destroy();
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture202.destroy();
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.submit([command_buffer201, ]);
    command_encoder002.copyTextureToTexture(
        {
            texture: texture002
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
    device10.pushErrorScope("validation");
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.popDebugGroup();
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder200.setVertexBuffer(0, buffer200);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.pushErrorScope("internal");
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    texture001.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer002 = command_encoder002.finish();
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    texture203.destroy();
    buffer201.destroy()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
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
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    buffer204.destroy()
    
    render_bundle_encoder200.setIndexBuffer(buffer200, "uint16");
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.setIndexBuffer(buffer205, "uint16");
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    buffer205.destroy()
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0000.setPipeline(compute_pipeline002);
    query200.destroy()
    command_encoder202.clearBuffer(buffer202);
    
    render_pass_encoder2020.insertDebugMarker("marker");
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_bundle_encoder200.draw(3);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    texture003.destroy();
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder100.popDebugGroup()
    
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.executeBundles([])
    
    
    texture002.destroy();
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
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

    render_bundle_encoder202.setBindGroup(0, bind_group203);
    
    render_bundle_encoder200.finish();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([0.75, 0.0, -0.75, -0.5, -1.0, 0.75, 0.5, 0.5, 0.25, -1.0, 0.25, 0.75, 0.0, 0.75, -1.0, 0.0, 0.0, 0.75, 0.5, 0.75, -0.25, -1.0, 0.75, 0.25, 1.0, -0.5, -0.75, 0.5, 0.25, 0.25, 0.75, -0.75, -0.75, 1.0, -0.5, 0.0, 0.25, -1.0, -0.5, -1.0, 0.75, 0.0, 1.0, -1.0, 1.0, 0.25, -0.75, -1.0, 0.0, 0.5, 0.0, 0.75, 0.75, 0.75, 0.75, -0.5, -1.0, 0.0, -0.75, -0.25, 0.5, 1.0, -0.5, -1.0, -1.0, 0.75, -0.75, -1.0, -0.75, 0.0, 0.25, 0.75, -0.25, 0.5, -0.25, 0.0, 0.5, -1.0, -1.0, 0.5, 0.0, -1.0, 1.0, 0.5, -0.75, 0.75, -0.5, -0.5, -1.0, -0.25, 0.25, 0.5, 1.0, 1.0, 0.25, 0.0, 0.25, 0.5, 0.0, 0.75, ]);
    query200.destroy()
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    buffer100.destroy()
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0030.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2020.setPipeline(render_pipeline201);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    render_pass_encoder0020.executeBundles([])
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    query400.destroy()
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    render_bundle_encoder201.setVertexBuffer(0, buffer209);
    compute_pass_encoder1000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder2000.setPipeline(render_pipeline200);
    
    device40.pushErrorScope("validation");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer208.destroy()
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
    render_bundle_encoder202.setVertexBuffer(0, buffer209);
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    render_bundle_encoder201.drawIndirect(buffer208, 0);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.executeBundles([])
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2010, 0);
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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

    render_pass_encoder2000.setBindGroup(0, bind_group204);
    command_encoder200.copyBufferToBuffer(
        buffer2012,
        0,
        buffer2011,
        0,
        400
    );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder201.finish();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0030.executeBundles([])
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    buffer202.destroy()
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder0030.setStencilReference(1);
    
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.setStencilReference(1);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.executeBundles([])
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setIndexBuffer(buffer200, "uint16");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    device20.queue.writeBuffer(buffer2010, 0, array1, 0, array1.length);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    device20.queue.writeBuffer(buffer2010, 0, array3, 0, array3.length);
    compute_pass_encoder1000.popDebugGroup()
    command_encoder003.popDebugGroup()
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
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
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer209.destroy()
    
    buffer201.destroy()
    
    render_pass_encoder2000.setVertexBuffer(0, buffer209);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.insertDebugMarker("mymarker");
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.drawIndirect(buffer206, 0);
    
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0020.setStencilReference(1);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group205);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer2011.destroy()
    render_pass_encoder2020.setVertexBuffer(0, buffer209);
    
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    render_pass_encoder2020.setStencilReference(1);
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    command_encoder200.clearBuffer(buffer2013);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    
    buffer207.destroy()
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    render_pass_encoder2000.insertDebugMarker("marker");
    buffer206.destroy()
    
    
    command_encoder200.copyBufferToBuffer(
        buffer207,
        0,
        buffer2010,
        0,
        400
    );
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setIndexBuffer(buffer2012, "uint16");
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    
    render_pass_encoder2020.drawIndirect(buffer2010, 0);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0031.pushDebugGroup("group_marker");
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer000.destroy()
    
    render_bundle_encoder202.setIndexBuffer(buffer200, "uint16");
    {
        await buffer2012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2012.unmap();
        console.log(new Float32Array(data));
    }
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder0020.beginOcclusionQuery(0)
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0020.endOcclusionQuery()
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.draw(3);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer205,
        0
    )
    render_bundle_encoder201.drawIndirect(buffer2011, 0);
    command_encoder203.copyBufferToBuffer(
        buffer2014,
        0,
        buffer2010,
        0,
        400
    );
    command_encoder204.copyTextureToTexture(
        {
            texture: texture203
        },
        {
            texture: texture204
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    buffer2013.destroy()
    
    
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder2001.setPipeline(render_pipeline200);
    query200.destroy()
    render_pass_encoder2020.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder204.clearBuffer(buffer201);
    command_encoder203.copyTextureToBuffer(
        {
            texture: texture203
        },
        {
            buffer: buffer2010
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder204.clearBuffer(buffer2013);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder203.copyBufferToBuffer(
        buffer203,
        0,
        buffer207,
        0,
        400
    );
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
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
    render_bundle_encoder202.setIndexBuffer(buffer209, "uint16");
    device20.queue.writeBuffer(buffer2010, 0, array5, 0, array5.length);
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0020.executeBundles([])
    
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query201
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2040.setPipeline(render_pipeline206);
    render_pass_encoder2030.setPipeline(render_pipeline202);
    compute_pass_encoder2000.end();
    render_pass_encoder2000.setIndexBuffer(buffer2010, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer004, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer004, 0);
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    render_pass_encoder2000.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1000.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group206);
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
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    render_pass_encoder0030.popDebugGroup();
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group207);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2020, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2040.setVertexBuffer(0, buffer2013);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer104, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer104, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2040.drawIndirect(buffer2020, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder2030.setVertexBuffer(0, buffer2012);
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
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
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer107, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder2030.end();
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
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
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

    render_pass_encoder2001.setBindGroup(0, bind_group208);
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2001.setVertexBuffer(0, buffer2018);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2040.end();
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer206, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndirect(buffer202, 0);
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2001.end();
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
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
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    const command_buffer204 = command_encoder204.finish();
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
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    render_pass_encoder2000.drawIndexedIndirect(buffer2020, 0);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2020.end();
    render_pass_encoder2001.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer005, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer005, 0);
    device20.queue.submit([command_buffer204, ]);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2010, 0);
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.popDebugGroup()
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
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
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
    render_pass_encoder2000.drawIndexed(3);
    device20.queue.submit([command_buffer203, ]);
    device40.queue.submit([]);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder2040.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2020.popDebugGroup();
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2040.drawIndirect(buffer201, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2020, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2025, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2025, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2026, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2026, 0);
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
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2010);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder2000.popDebugGroup();
    device40.queue.submit([]);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder2040.drawIndirect(buffer208, 0);
    render_pass_encoder2001.drawIndirect(buffer2025, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1012, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2012, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1013, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.end();
    render_pass_encoder2000.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1014, 0);
    compute_pass_encoder1010.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1015, 0);
    render_pass_encoder0020.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer006, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer006, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder2001.draw(3);
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2030,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2030, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2000.drawIndirect(buffer2029, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2016, "uint16");
    device00.queue.submit([command_buffer000, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer007, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer007, 0);
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2031, 0);
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1016, 0);
    compute_pass_encoder1010.popDebugGroup()
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    render_pass_encoder2001.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2025, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2035,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2013);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    device10.queue.submit([command_buffer100, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2036, 0);
    render_pass_encoder2000.drawIndirect(buffer2026, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2032, 0);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2000.drawIndirect(buffer2026, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2040.drawIndirect(buffer201, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2025, 0);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group105);
    compute_pass_encoder1000.end();
    render_pass_encoder2020.drawIndirect(buffer2025, 0);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer008, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer008, 0);
    render_pass_encoder2001.end();
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2030.drawIndirect(buffer2028, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2010, 0);
    device10.queue.submit([command_buffer100, ]);
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group106);
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    device00.queue.submit([]);
    render_pass_encoder2000.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2015, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2026, 0);
    compute_pass_encoder0000.popDebugGroup()
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2040.drawIndirect(buffer2020, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2030.draw(3);
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2020, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2026, 0);
    render_pass_encoder2040.drawIndirect(buffer2020, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder0020.popDebugGroup();
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2014);
    render_pass_encoder2000.drawIndexedIndirect(buffer2036, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2030.drawIndirect(buffer2026, 0);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2000.drawIndirect(buffer2026, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1023, 0);
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2020.draw(3);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2001.end();
    render_pass_encoder2040.drawIndirect(buffer204, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2039, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2039, 0);
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2040, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2040, 0);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer206, 0);
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2020.drawIndirect(buffer2010, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2030.drawIndirect(buffer2039, 0);
    render_pass_encoder2040.end();
    device00.queue.submit([]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2020.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.end();
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2041, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2041, 0);
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([]);
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
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
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group005);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1024, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2025, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1010.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2040.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2019, 0);
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder2001.drawIndirect(buffer2031, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2043,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2015);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer201, 0);
    device40.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2020, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2001.end();
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer203, ]);
    compute_pass_encoder1010.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1025, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1025, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2027, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2041, 0);
    device40.queue.submit([]);
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2040.drawIndirect(buffer2035, 0);
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder2040.end();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2030.drawIndirect(buffer2025, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2040.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1028, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2021, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1029, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group006);
    render_pass_encoder2001.drawIndirect(buffer206, 0);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2000.drawIndirect(buffer2029, 0);
    render_pass_encoder2040.drawIndirect(buffer2010, 0);
    device40.queue.submit([]);
    compute_pass_encoder0000.end();
    render_pass_encoder2001.end();
    compute_pass_encoder1010.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2040.drawIndirect(buffer2021, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2013, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder1000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2040, 0);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2020.drawIndirect(buffer2025, 0);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2000.end();
    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2045,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2001.drawIndirect(buffer2014, 0);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2040, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2040.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2038, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2040.drawIndirect(buffer2042, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2020, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder1010.end();
    compute_pass_encoder1010.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2040.end();
    device00.queue.submit([]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2010, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2041, 0);
    device30.queue.submit([]);
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group108);
    render_pass_encoder2020.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder2030.end();
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2010, 0);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder0000.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2036, 0);
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2047,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2017);
    render_pass_encoder2030.drawIndexedIndirect(buffer2032, 0);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group007);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0025, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2030, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer2026, 0);
    device00.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer2040, "uint16");
    device10.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2026, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2039, 0);
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder2001.drawIndirect(buffer2017, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder1010.popDebugGroup()
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group109);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2048, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2048, 0);
    render_pass_encoder2030.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2030.drawIndirect(buffer2039, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer2026, 0);
    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2050,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2018);
    render_pass_encoder2000.drawIndirect(buffer2040, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2030.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2041, 0);
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1011);
    render_pass_encoder2020.drawIndirect(buffer2025, 0);
    device10.queue.submit([command_buffer100, ]);
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group009);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2000.drawIndirect(buffer2040, 0);
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder2001.drawIndirect(buffer2048, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder2000.popDebugGroup()
    device10.queue.submit([]);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1038, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1038, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder1000.end();
    compute_pass_encoder0000.end();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2001.end();
    render_pass_encoder2020.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2042, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2030.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2026, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2040.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2051, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2051, 0);
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2025, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder2000.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2052, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2052, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1040,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1012);
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer2040, 0);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer003, ]);
    render_pass_encoder2040.drawIndirect(buffer2025, 0);
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    render_pass_encoder2001.drawIndirect(buffer2051, 0);
    render_pass_encoder2020.drawIndirect(buffer2040, 0);
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0010);
    render_pass_encoder2001.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2030.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2040, 0);
    compute_pass_encoder2000.end();
    device20.queue.submit([]);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1000.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder2040.drawIndirect(buffer2010, 0);
    device10.queue.submit([command_buffer100, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1043, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1043, 0);
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2030.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.end();
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2052, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0030.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder2030.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2040.end();
    compute_pass_encoder1010.end();
    render_pass_encoder2001.end();
    render_pass_encoder2001.drawIndexed(3);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1044, 0);
    render_pass_encoder2000.drawIndirect(buffer2039, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2026, 0);
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2001.draw(3);
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1014);
    device00.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1047, 0);
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2052, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2000.end();
    render_pass_encoder2040.end();
    compute_pass_encoder1010.popDebugGroup()
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1015);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2040.drawIndirect(buffer2020, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2000.end();
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2048, 0);
    device20.queue.submit([]);
    render_pass_encoder2040.end();
    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
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
                    buffer: buffer1052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1053,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    render_pass_encoder2040.drawIndexedIndirect(buffer2027, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2000.drawIndirect(buffer2040, 0);
    device00.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2051, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2001.popDebugGroup();
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1018);
    render_pass_encoder2040.setIndexBuffer(buffer2052, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2020, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer2026, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0030.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2053, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2053, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2051, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2040.drawIndirect(buffer205, 0);
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
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
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2000.end();
    render_pass_encoder0030.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1058, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1058, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer2053, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2052, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2053, 0);
    device00.queue.submit([]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2026, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2021, "uint16");
    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
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
                    buffer: buffer1059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1060,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1020);
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2039, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2030.drawIndirect(buffer2030, 0);
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2040.drawIndirect(buffer2030, 0);
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    device40.queue.submit([]);
}