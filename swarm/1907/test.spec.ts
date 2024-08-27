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
    const array0 = new Float32Array([-0.75, 1.0, 0.0, 0.25, 0.25, -0.25, -1.0, 1.0, 1.0, 0.25, 1.0, -0.75, 0.5, -0.5, 1.0, -0.25, 0.75, -0.5, 1.0, -1.0, 0.75, 0.5, 0.75, -1.0, 0.0, -0.5, -0.25, 0.25, 0.25, -1.0, 0.25, -0.25, 0.75, 0.75, 0.5, -0.5, 0.5, -1.0, 0.25, 0.5, -0.5, -1.0, -0.5, 0.75, -0.25, 0.0, -1.0, -1.0, -0.25, -0.5, -1.0, -1.0, -0.25, -1.0, 1.0, 0.25, -0.25, -0.25, -1.0, -0.5, -0.5, 0.75, 0.5, 0.75, -0.75, 1.0, 1.0, -0.75, 0.75, -0.25, -0.25, -0.75, 1.0, -1.0, -0.5, 0.75, -0.75, 0.5, -1.0, 0.25, -1.0, 0.75, 0.0, 0.75, -0.75, -0.25, 1.0, -0.5, 0.5, 1.0, 0.5, 1.0, 0.0, 0.75, -0.5, 0.5, 1.0, -0.25, 1.0, -0.25, ]);
    
    const array1 = new Float32Array([-1.0, -0.25, 0.5, 0.25, -0.5, 0.0, -0.75, 0.0, -1.0, 0.75, 0.0, -0.25, 0.75, 0.25, -0.5, 0.0, -1.0, -0.75, -0.25, 1.0, -0.5, 0.75, 1.0, 0.5, 0.0, 0.25, 0.25, -0.5, 0.25, 0.5, 0.75, 0.75, -0.75, -0.25, 0.0, 0.75, 0.75, 1.0, 1.0, -1.0, 0.0, 0.0, 0.75, 0.75, -0.25, -0.75, -0.25, 1.0, -0.25, 0.75, 0.75, 0.25, -0.5, -0.5, 0.5, 1.0, -0.5, -0.5, 0.5, 0.75, -1.0, 0.25, -0.75, 1.0, 0.0, 0.5, 1.0, 0.25, -0.75, 0.75, 0.75, 0.25, 0.25, 1.0, 1.0, -1.0, -1.0, -0.75, 0.25, -0.75, 0.0, 0.25, -1.0, 0.0, 1.0, -0.75, -0.25, 1.0, 0.5, -0.75, 0.75, 0.5, 1.0, -0.5, -0.25, 0.5, 0.5, -0.5, 0.25, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array2 = new Float32Array([-0.75, 0.0, -0.75, 0.0, -0.75, 0.75, -1.0, 1.0, -0.5, 0.0, 0.75, -1.0, -1.0, -0.75, -0.5, -1.0, -0.5, 0.0, 0.75, -0.75, -1.0, 0.5, -1.0, 0.5, -0.5, -0.5, -0.75, 0.25, -0.75, 1.0, 0.25, -0.75, 0.5, 0.0, 0.0, 0.0, -0.75, -0.5, 0.75, 1.0, -0.25, -0.5, -0.5, -1.0, 0.75, 1.0, 0.0, -0.25, 1.0, 0.5, 0.0, -1.0, 1.0, 0.75, 0.75, -1.0, -0.5, 1.0, -0.75, -1.0, 0.75, -0.75, 1.0, 0.0, 1.0, 0.75, -1.0, 0.0, -0.5, -0.5, 0.25, 0.0, 1.0, -0.75, 0.5, 0.5, 0.25, -0.5, -0.75, 0.0, 0.75, -0.25, -0.25, 0.75, -0.75, -0.75, -0.5, 0.0, -0.25, -0.25, -0.5, -0.25, 0.5, -0.75, 0.0, -0.25, -1.0, 0.25, 0.75, 0.5, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    buffer000.destroy()
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.destroy();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    device10.pushErrorScope("validation");
    
    
    
    
    
    device00.destroy();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture102.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array3 = new Float32Array([0.5, -1.0, 0.25, -0.75, -0.5, -1.0, 0.25, -1.0, 0.75, 0.5, 0.5, 0.25, 0.75, 0.75, -1.0, -1.0, 0.25, -1.0, 0.25, 1.0, 0.25, 0.25, 0.75, 0.75, 0.0, 1.0, 1.0, 0.5, 1.0, -1.0, 0.75, -0.75, -1.0, 0.75, -0.5, -0.75, -0.75, -0.5, 0.25, 0.25, 0.0, -0.5, -0.25, 0.0, -0.75, 0.75, 1.0, 1.0, 0.75, 0.75, 0.0, 0.0, -0.25, -0.75, 1.0, 0.75, 1.0, 1.0, -1.0, -0.5, 0.5, -1.0, 0.25, 0.75, 0.25, -1.0, -0.75, 0.5, -1.0, -0.5, -1.0, 0.75, -1.0, 1.0, 0.25, 0.0, -0.75, 1.0, 0.5, 0.0, 0.25, -0.25, 0.75, 0.5, 0.25, -0.75, -1.0, 0.25, 0.0, 0.5, 1.0, 1.0, 0.0, 0.5, 0.25, -0.25, -1.0, 0.75, -0.25, 0.5, ]);
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture100.destroy();
    
    
    
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    buffer102.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.destroy();
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
    device20.queue.submit([]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device20.pushErrorScope("out-of-memory");
    device00.destroy();
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    device20.pushErrorScope("internal");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    command_encoder400.insertDebugMarker("mymarker");
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    
    device40.pushErrorScope("validation");
    device20.pushErrorScope("out-of-memory");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder200.insertDebugMarker("mymarker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.insertDebugMarker("mymarker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    const array4 = new Float32Array([0.25, 0.25, -1.0, 0.75, 1.0, 0.0, -0.5, -0.75, 0.5, 0.25, -0.5, -0.25, -0.75, -0.25, -0.5, 0.5, 0.0, 1.0, 0.5, 0.25, -0.75, -0.75, -0.5, 1.0, 0.5, 0.25, -0.75, 0.5, -0.25, 0.75, 0.5, -0.25, -1.0, -0.25, -0.75, 0.0, 1.0, 1.0, -0.25, -1.0, -0.5, 0.25, 0.75, -1.0, 0.75, 0.75, -1.0, 0.75, 0.0, 0.0, -0.5, 1.0, -0.25, 0.0, -0.25, 0.75, -0.75, -1.0, 0.5, 0.75, -1.0, 0.5, 0.25, 1.0, -1.0, -0.25, 0.25, 0.0, -0.75, 0.75, -0.5, -1.0, -0.25, -0.5, -1.0, -0.25, 0.25, 0.0, 0.25, -1.0, -0.75, -0.75, 0.5, 0.5, -0.75, -1.0, -0.5, 0.75, -1.0, 0.25, 1.0, 1.0, -0.25, 1.0, -0.5, 0.5, 0.5, 1.0, -0.75, 0.75, ]);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    command_encoder200.insertDebugMarker("mymarker");
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder401.pushDebugGroup("mygroupmarker")
    command_encoder401.popDebugGroup()
    
    
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
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    buffer400.destroy()
    
    command_encoder401.insertDebugMarker("mymarker");
    texture400.destroy();
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder4000.popDebugGroup()
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const array5 = new Float32Array([1.0, -1.0, -1.0, -1.0, -1.0, 0.25, -0.75, -0.5, -0.75, -0.25, -1.0, 1.0, 1.0, -0.75, -1.0, -0.5, 0.0, 0.75, -0.5, 0.25, 1.0, 1.0, 0.5, -0.75, 0.75, -0.25, 0.75, 0.25, 1.0, -0.25, 0.75, -0.25, -0.5, 0.5, 0.5, 0.25, -1.0, -0.5, -0.5, -0.75, 0.25, 0.75, 0.25, 0.25, 0.25, 1.0, -0.75, -0.5, 1.0, -0.75, -0.75, 1.0, -0.75, 0.0, -0.5, -0.75, 0.5, -0.25, 0.25, 0.5, 0.25, -0.75, 0.25, -0.25, 0.0, 0.0, 0.0, 0.5, 1.0, -0.75, -1.0, 0.75, 0.5, -0.5, 0.25, 0.0, 0.0, -0.25, 0.75, -0.75, 0.5, 0.25, 0.0, 0.5, 1.0, -0.5, 1.0, 1.0, 0.25, 0.25, 0.75, 0.75, 0.25, 0.75, -0.75, 1.0, 0.25, -0.25, -0.5, -0.25, ]);
    
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
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_pass_encoder1000.insertDebugMarker("marker");
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_pass_encoder1010.executeBundles([])
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder401.insertDebugMarker("mymarker");
    
    device50.destroy();
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
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
    
    
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.insertDebugMarker("mymarker");
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder403.pushDebugGroup("mygroupmarker")
    device30.pushErrorScope("out-of-memory");
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
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
    
    render_pass_encoder1001.executeBundles([])
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    device60.destroy();
    render_pass_encoder1000.setStencilReference(1);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const array6 = new Float32Array([0.5, -1.0, -0.25, -0.25, -0.25, 0.25, 0.25, -1.0, -0.75, -1.0, -0.5, 0.75, -1.0, 0.75, 0.0, 0.75, 0.25, -0.5, -1.0, -1.0, 1.0, -0.5, 0.0, -0.75, 0.75, -1.0, -0.75, 1.0, 0.5, -0.5, 1.0, 0.75, -0.5, 0.5, 0.5, 1.0, -0.75, 0.75, 0.0, 0.75, -0.75, -0.25, 0.0, -0.25, -1.0, 0.75, -0.75, 0.0, 0.0, -0.25, 0.0, -0.75, -0.75, 0.75, -1.0, -0.5, -0.5, 0.25, -1.0, 0.25, -0.25, 1.0, 0.5, 0.5, 1.0, -0.75, -0.5, 0.0, 1.0, -0.25, -1.0, 0.5, 0.5, 0.5, 0.5, 0.0, 0.0, -0.5, -0.75, -0.75, 0.5, -0.5, 0.0, 0.25, -1.0, 0.0, 0.25, 0.5, -1.0, 0.25, -1.0, 1.0, -0.5, -0.75, -0.25, 0.75, 0.0, 0.25, 0.0, -0.5, ]);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder401.popDebugGroup()
    texture300.destroy();
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
    command_encoder401.insertDebugMarker("mymarker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
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
    render_pass_encoder4050.pushDebugGroup("group_marker");
    
    command_encoder404.pushDebugGroup("mygroupmarker")
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
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
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const array7 = new Float32Array([0.25, 0.25, 1.0, -0.5, -0.75, 1.0, -0.75, 0.0, -0.5, 1.0, -0.5, -0.75, -0.25, 0.25, -0.75, 0.75, -1.0, 0.75, 0.5, 0.75, 0.75, -0.5, -1.0, -0.25, 0.5, -1.0, 0.75, -0.5, 0.25, 0.0, -1.0, -0.5, 0.25, -0.75, 0.75, 1.0, -0.25, 0.0, 0.75, 0.75, 0.75, 0.0, 0.25, 0.0, 0.75, 0.5, 0.5, -0.25, -0.75, 0.5, 0.25, 0.75, 0.0, -0.75, -0.25, -0.5, -0.75, -0.75, 0.25, -1.0, 0.0, 0.75, 0.0, -1.0, 0.0, 0.25, -1.0, 0.0, -1.0, -0.75, -1.0, 0.25, -0.75, 0.5, -1.0, 0.5, 0.75, 0.5, 0.75, -0.25, -0.75, -0.25, 0.75, -1.0, -1.0, 0.25, -0.25, -0.75, 1.0, 0.25, -0.25, 0.25, 1.0, 0.75, 0.75, -0.5, 0.75, 0.5, -1.0, 0.25, ]);
    render_pass_encoder4050.insertDebugMarker("marker");
    command_encoder404.insertDebugMarker("mymarker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    compute_pass_encoder4020.insertDebugMarker("marker")
    command_encoder300.clearBuffer(buffer300);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder404.clearBuffer(buffer400);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    compute_pass_encoder4010.popDebugGroup()
    texture401.destroy();
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    render_pass_encoder4030.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    
    render_pass_encoder4030.executeBundles([])
    render_pass_encoder4050.insertDebugMarker("marker");
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_pass_encoder4050.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    
    device30.queue.submit([]);
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    buffer101.destroy()
    const array8 = new Float32Array([-0.25, 0.75, -0.25, -1.0, 0.5, -1.0, 0.0, -0.25, 0.0, 1.0, -0.25, -0.5, 0.25, -0.75, 1.0, 1.0, -0.25, -0.75, 1.0, 0.75, 1.0, 0.25, -0.75, -0.5, -0.75, -1.0, 0.5, 0.75, 0.0, 1.0, -0.25, 0.0, -0.25, 0.75, 0.5, 0.0, -1.0, -0.5, 0.5, 0.5, -0.75, 0.75, 0.75, -0.25, 1.0, 0.75, -0.5, 0.0, -1.0, -0.25, -0.25, -0.25, -1.0, 0.0, -1.0, -0.75, -0.5, 0.5, -0.25, 1.0, -0.75, -0.75, 0.5, 0.75, -0.75, -0.75, -0.5, 0.75, 0.25, -0.5, 0.0, -1.0, 0.5, -0.25, 0.75, 1.0, 1.0, -1.0, 0.25, 0.75, 0.5, 0.0, -1.0, -0.75, 0.25, 0.5, 1.0, 0.75, 0.5, -0.75, 1.0, 0.25, -0.25, 0.75, -1.0, -0.75, 0.5, 0.0, 0.75, -0.75, ]);
    
    texture402.destroy();
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    command_encoder402.insertDebugMarker("mymarker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    device80.destroy();
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder4030.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder302.copyBufferToBuffer(
        buffer300,
        0,
        buffer301,
        0,
        400
    );
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_pass_encoder4060 = command_encoder406.beginRenderPass({
        label: "render_pass_encoder4060",
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
    render_pass_encoder4050.executeBundles([])
    device100.pushErrorScope("internal");
    render_pass_encoder4050.insertDebugMarker("marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    compute_pass_encoder4040.setPipeline(compute_pipeline400);
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
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    device100.pushErrorScope("internal");
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
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    command_encoder405.pushDebugGroup("mygroupmarker")
    render_pass_encoder4060.pushDebugGroup("group_marker");
    render_pass_encoder4030.pushDebugGroup("group_marker");
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group400);
    command_encoder302.insertDebugMarker("mymarker");
    render_pass_encoder4060.insertDebugMarker("marker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
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
    texture403.destroy();
    command_encoder302.copyBufferToBuffer(
        buffer300,
        0,
        buffer301,
        0,
        400
    );
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    texture404.destroy();
    render_pass_encoder4030.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    
    command_encoder301.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1000.insertDebugMarker("marker");
    command_encoder300.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device100.queue.writeTexture({ texture: texture1000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4030.popDebugGroup();
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device100.queue.writeTexture({ texture: texture1001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder000.insertDebugMarker("mymarker");
    
    buffer405.destroy()
    render_pass_encoder4060.executeBundles([])
    
    render_pass_encoder4060.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture1000.destroy();
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    command_encoder404.copyBufferToTexture(
        {
            buffer: buffer401
        },
        {
            texture: texture405
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    
    command_encoder300.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const array9 = new Float32Array([0.25, 0.0, 0.0, -0.25, 0.75, 0.0, 0.0, 1.0, -0.75, 0.75, 1.0, 0.25, -1.0, 0.25, 0.25, 0.0, 0.75, -0.25, 0.75, -0.75, -1.0, 0.0, 0.0, -1.0, -0.75, 0.75, 0.5, -0.75, -1.0, -0.75, 0.25, -0.25, -0.75, 1.0, -0.25, 0.25, 0.0, 0.25, 0.25, -0.5, -1.0, 0.75, -0.25, 0.0, 0.25, 0.5, 0.75, 0.0, -0.75, -0.75, 1.0, 0.0, 0.75, -0.25, -0.25, -0.75, -0.75, 0.25, -0.25, -1.0, 0.0, -0.75, -1.0, 0.5, -0.5, 1.0, 1.0, -0.75, 0.0, 0.75, -1.0, 1.0, 0.75, -1.0, 0.75, -0.25, -0.5, 0.5, -0.75, 0.25, -0.25, -0.75, 1.0, -0.25, 0.25, -0.75, -0.25, 0.5, -1.0, -0.5, -1.0, -0.75, 0.25, 0.0, -1.0, 0.75, 0.5, 1.0, -0.75, -1.0, ]);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    device40.queue.writeTexture({ texture: texture405 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    render_pass_encoder4050.executeBundles([])
    render_pass_encoder4030.executeBundles([])
    buffer401.destroy()
    command_encoder406.copyTextureToBuffer(
        {
            texture: texture404
        },
        {
            buffer: buffer401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_pass_encoder4050.insertDebugMarker("marker");
    
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4060.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4030.insertDebugMarker("marker");
    render_pass_encoder4030.setStencilReference(1);
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_pass_encoder4050.executeBundles([])
    command_encoder300.copyTextureToTexture(
        {
            texture: texture301
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    device100.queue.writeTexture({ texture: texture1002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1002 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    render_pass_encoder4050.insertDebugMarker("marker");
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    device40.queue.writeTexture({ texture: texture405 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1001.destroy();
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    device70.destroy();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    const texture_view10020 = texture1002.createView({ label: "texture_view10020" });
    device100.queue.writeTexture({ texture: texture1002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4060.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    command_encoder406.clearBuffer(buffer401);
    
    command_encoder300.clearBuffer(buffer301);
    device40.queue.writeTexture({ texture: texture405 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    device100.queue.writeTexture({ texture: texture1002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    device100.queue.writeTexture({ texture: texture1002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder300.copyBufferToBuffer(
        buffer300,
        0,
        buffer301,
        0,
        400
    );
    command_encoder1000.insertDebugMarker("mymarker");
    render_pass_encoder4060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    device40.queue.writeTexture({ texture: texture405 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
    command_encoder303.insertDebugMarker("mymarker");
    command_encoder303.pushDebugGroup("mygroupmarker")
    device40.queue.writeTexture({ texture: texture405 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4030.pushDebugGroup("group_marker");
    command_encoder303.copyTextureToBuffer(
        {
            texture: texture302
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder4040.insertDebugMarker("marker")
    command_encoder303.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4000.executeBundles([])
    
    render_pass_encoder4030.executeBundles([])
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
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
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture301.destroy();
    device40.queue.writeTexture({ texture: texture405 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4061 = command_encoder406.beginRenderPass({
        label: "render_pass_encoder4061",
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
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    command_encoder406.copyTextureToTexture(
        {
            texture: texture405
        },
        {
            texture: texture402
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder3030.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    const array10 = new Float32Array([-1.0, 0.0, -1.0, -0.25, 0.5, -0.5, -0.5, -0.75, 0.75, -1.0, -0.5, 0.75, 0.75, 0.75, 0.75, -0.25, 0.5, -0.25, -0.25, 0.0, 0.5, -0.5, 0.25, -0.75, 0.25, 1.0, -1.0, 0.0, 1.0, -0.5, -0.25, 0.0, 0.75, 0.5, -0.5, -0.5, -0.25, 0.25, 1.0, 0.75, 0.75, 1.0, 0.75, 0.25, 1.0, 0.5, -0.5, 0.75, 0.75, 0.25, -1.0, 0.0, 1.0, 0.25, 0.5, 0.25, -0.5, -1.0, 1.0, -0.25, 0.75, -0.5, 1.0, 0.25, 0.0, -0.75, -0.75, -0.25, 0.5, -0.25, 0.0, 0.0, -0.5, 0.25, 0.75, 0.75, 0.75, 0.25, -0.25, 1.0, 0.5, -0.75, -0.75, -0.5, -0.75, 0.0, -0.25, 0.75, 1.0, -0.5, -0.75, -0.25, 1.0, 0.5, -0.25, -0.25, -0.5, 0.25, -0.75, -0.25, ]);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder4050.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    device100.queue.writeTexture({ texture: texture1002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer302.destroy()
    
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    buffer300.destroy()
    texture1002.destroy();
    device30.queue.writeTexture({ texture: texture303 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder406.copyTextureToBuffer(
        {
            texture: texture403
        },
        {
            buffer: buffer400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4061.setStencilReference(1);
    compute_pass_encoder4040.insertDebugMarker("marker")
    
    device40.queue.writeTexture({ texture: texture405 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
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
    texture406.destroy();
    render_pass_encoder3000.insertDebugMarker("marker");
    buffer301.destroy()
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    render_pass_encoder4030.insertDebugMarker("marker");
    render_pass_encoder4000.executeBundles([])
    device40.queue.writeTexture({ texture: texture405 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer401.destroy()
    render_pass_encoder3030.executeBundles([])
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder4000.insertDebugMarker("marker");
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    render_pass_encoder4030.executeBundles([])
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4050.popDebugGroup();
    compute_pass_encoder4020.setPipeline(compute_pipeline400);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    compute_pass_encoder3010.popDebugGroup()
    command_encoder404.popDebugGroup()
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group402);
    compute_pass_encoder4000.end();
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group301);
    render_pass_encoder4060.popDebugGroup();
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group302);
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
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group403);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    compute_pass_encoder3010.end();
    render_pass_encoder4000.popDebugGroup();
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group303);
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
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group404);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder4010.dispatchWorkgroups(100);
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
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group405);
    render_pass_encoder3030.popDebugGroup();
    device100.queue.submit([]);
    compute_pass_encoder4010.end();
    render_pass_encoder4061.popDebugGroup();
    command_encoder405.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder4040.dispatchWorkgroups(100);
    compute_pass_encoder3020.end();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder4020.end();
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder4040.end();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    command_encoder201.popDebugGroup()
    command_encoder400.popDebugGroup()
    device50.queue.submit([]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    command_encoder000.popDebugGroup()
    device100.queue.submit([]);
    device30.queue.submit([]);
    device30.queue.submit([]);
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
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group406);
    compute_pass_encoder4040.end();
    compute_pass_encoder4010.end();
    compute_pass_encoder4040.end();
    render_pass_encoder4000.popDebugGroup();
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
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4040.setBindGroup(0, bind_group407);
    compute_pass_encoder3020.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder3020.end();
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder4000.end();
    device100.queue.submit([]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4020,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group408);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group304);
    render_pass_encoder4060.popDebugGroup();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder4061.popDebugGroup();
    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4022,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group409);
    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4024,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4010);
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4011);
    device20.queue.submit([]);
    device10.queue.submit([]);
    compute_pass_encoder4040.end();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    compute_pass_encoder4000.popDebugGroup()
    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4028,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4012);
    compute_pass_encoder4010.end();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4030,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4013);
    compute_pass_encoder3020.end();
    device40.queue.submit([]);
    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4032,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4014);
    device100.queue.submit([]);
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group305);
}