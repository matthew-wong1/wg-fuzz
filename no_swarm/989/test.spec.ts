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
    const array0 = new Float32Array([1.0, 0.5, 0.75, -0.5, -0.5, 0.75, 0.0, -1.0, 0.5, 0.75, -0.75, 1.0, 1.0, 1.0, -0.75, 0.75, 1.0, 0.5, 0.5, 1.0, -0.5, 0.5, 0.25, 0.0, 0.5, 1.0, -0.5, -1.0, 0.25, 0.5, 0.5, 0.75, 0.25, -0.25, -0.25, -1.0, -0.5, 0.75, -0.25, 0.25, -0.75, -0.25, -0.5, 1.0, 0.75, -0.5, 0.25, -1.0, -0.5, -0.75, -0.75, -0.75, -0.75, 0.0, 1.0, -0.75, 0.25, 0.75, 0.75, -0.75, -0.75, 0.25, 0.25, -0.75, -0.75, 0.25, 0.75, -0.25, 1.0, -0.5, -0.5, 0.75, 0.25, -0.75, 0.5, 0.5, 0.0, -1.0, -0.75, 0.75, 0.5, 1.0, 0.25, 0.5, 0.5, -1.0, -1.0, 0.0, 0.0, 1.0, 1.0, -0.75, 0.0, -0.5, 0.5, -0.25, 1.0, -0.25, -0.75, -0.25, ]);
    const array1 = new Float32Array([0.0, -1.0, 0.0, 1.0, 0.75, -0.5, 0.25, 0.0, -1.0, -0.5, -1.0, 0.75, 0.25, 0.0, -0.75, 0.25, -1.0, -0.25, 0.0, 0.25, -0.5, -0.5, 1.0, 0.75, 0.25, -0.25, 0.25, 0.25, 0.0, 0.25, -0.5, -0.25, -0.25, 0.5, 0.5, 0.5, 0.75, 0.75, -0.25, -0.75, 0.75, 1.0, 0.25, -0.25, 0.5, 1.0, 0.5, -0.25, 0.0, -0.25, -0.5, -0.25, -0.25, 1.0, -0.5, -0.5, 0.0, -1.0, 0.5, 0.75, -0.25, -0.25, 0.0, -0.25, -0.75, -0.5, -0.25, 0.75, -0.75, 0.5, 0.25, 0.75, 1.0, 0.0, -1.0, -0.75, -1.0, 1.0, 1.0, -1.0, -1.0, -0.75, 0.25, -0.5, -0.5, -0.25, 0.25, -1.0, -1.0, 0.75, -0.75, -0.5, 0.25, -0.75, -0.5, -0.5, -0.75, 0.25, -1.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([0.0, 0.25, -0.5, 0.0, -1.0, -1.0, 0.75, 1.0, 0.25, 0.5, -0.5, -1.0, -0.5, -0.25, -1.0, 0.0, 1.0, 0.0, 0.75, -0.75, 0.25, 1.0, -0.5, -0.75, 0.0, 0.25, 0.0, -0.25, -0.25, 0.5, 0.0, 0.75, -0.75, 0.75, -0.5, -0.25, -0.25, 0.0, -0.5, -0.5, -1.0, -0.5, 0.0, 1.0, 0.5, -0.25, -0.5, 1.0, 0.25, 0.5, 0.5, 0.5, 1.0, 0.75, 0.5, 1.0, 0.25, -0.5, 0.5, -0.5, -1.0, 0.75, 0.0, 0.0, 1.0, 0.25, -0.25, -0.25, 0.75, 1.0, 0.5, -0.75, 0.75, -0.5, 1.0, -0.25, -0.75, 0.25, 0.25, -0.5, 0.25, 0.75, 0.25, 0.25, 0.25, -0.25, 0.75, -0.75, 0.25, -0.75, 0.5, -0.75, 1.0, -1.0, 0.5, 0.75, 0.25, -0.25, 0.75, -0.75, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array3 = new Float32Array([-1.0, -0.5, -1.0, 0.75, -0.5, 0.5, -0.75, 1.0, -0.75, -0.25, 0.5, 0.25, 0.75, 1.0, 0.25, -0.5, 0.0, 1.0, 0.5, 0.25, 0.5, 0.5, 0.75, 1.0, 0.75, 0.0, 0.25, 1.0, -0.5, 1.0, 0.0, -0.75, -1.0, 1.0, 0.5, 0.75, 0.0, -0.5, -0.5, 0.0, -0.75, 0.75, -0.5, -1.0, 0.75, 0.25, -0.5, 0.75, -0.25, -0.25, -0.75, -0.75, -1.0, -0.5, -1.0, -0.5, 0.25, -0.75, -0.75, 0.0, -0.75, -0.5, -0.5, 1.0, 0.25, -0.5, -0.75, -0.75, 0.5, -0.5, 0.25, 0.0, 1.0, -0.25, 0.25, 0.5, 0.0, -1.0, 0.5, -1.0, -0.5, 0.0, -0.75, 0.25, 1.0, -0.25, 0.25, -0.25, 0.25, 0.75, 1.0, 0.25, -1.0, 0.5, -1.0, 0.25, 0.5, -0.25, -0.75, 1.0, ]);
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const array4 = new Float32Array([-0.5, -0.75, -0.25, 0.5, 0.25, 1.0, -0.25, -0.25, 0.75, 0.75, -1.0, 0.25, 0.25, -0.25, -0.25, -0.75, -1.0, 0.0, -1.0, -0.25, 1.0, -1.0, 1.0, 0.5, -1.0, -0.5, -0.25, -0.25, -1.0, -1.0, 0.0, 1.0, 0.0, -0.25, 0.5, 0.75, -0.25, 0.25, -0.5, 0.75, 0.0, 1.0, -0.5, 0.5, 0.0, -0.5, 0.5, 0.0, -0.5, 0.0, 0.75, -0.5, 0.0, 0.0, 0.5, -1.0, -0.25, 0.25, 0.5, -0.75, 1.0, 0.0, 0.0, 1.0, 0.25, -0.25, 0.0, 0.0, 0.0, 1.0, -0.25, 0.75, -1.0, -1.0, -0.5, 0.75, 0.25, -0.75, -1.0, 0.75, -0.5, -0.75, -1.0, 0.75, -0.5, -1.0, 0.75, -0.25, -1.0, -1.0, 0.5, -1.0, 0.75, -0.75, -0.25, 1.0, 0.5, -0.25, 0.25, -0.25, ]);
    const array5 = new Float32Array([-1.0, -0.75, 0.5, 0.5, -0.75, -0.25, -0.25, 0.5, -0.75, 0.5, 0.5, -0.75, -0.25, 0.0, -1.0, 0.75, -0.25, -0.75, 0.25, 0.5, 0.25, 0.0, 0.0, 1.0, -0.75, 0.75, 0.5, 1.0, 0.0, 0.0, 1.0, -0.75, 0.75, -0.75, 0.25, 0.25, 0.25, 1.0, -0.5, 0.5, 0.5, -0.25, -1.0, -1.0, -0.75, -0.25, -1.0, -0.25, -0.25, 0.0, -0.75, -0.5, -0.5, 0.5, 1.0, 0.25, -0.25, 0.5, -1.0, -0.75, 1.0, 0.25, 0.5, 0.0, 0.25, -0.75, -0.75, 0.75, 0.25, -0.25, -1.0, 0.0, 0.0, 0.25, -0.75, -0.25, -0.25, 0.75, 0.75, -0.75, 0.0, -0.25, 0.0, 0.5, -0.25, 1.0, -0.5, -1.0, -0.5, -0.25, -0.75, -0.5, 1.0, -1.0, 0.75, 1.0, -1.0, -1.0, -0.5, 0.75, ]);
    
    query300.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
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
    command_encoder301.pushDebugGroup("mygroupmarker")
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array6 = new Float32Array([-1.0, 1.0, 0.0, 0.75, 0.25, 0.25, -0.5, 0.25, -1.0, -0.25, -0.75, -0.75, -0.75, -1.0, 0.0, 0.5, -0.75, 0.5, -0.5, 1.0, -0.5, -0.5, -0.25, 0.25, 0.0, -0.25, 0.25, 0.25, 0.0, -1.0, -0.5, 1.0, -0.75, -0.75, -0.25, -0.25, 0.75, 0.5, 0.0, 0.0, 0.0, -0.5, 0.25, -1.0, 0.75, 0.0, 0.25, 0.0, -0.75, 0.5, 0.0, -0.25, 0.5, -0.25, 0.25, -0.75, -1.0, 0.0, 1.0, 0.75, -0.5, 0.75, -0.75, -1.0, 0.25, -0.5, 0.25, 1.0, -0.5, 0.5, -1.0, -1.0, 0.0, 0.75, -1.0, 0.25, -0.5, 0.25, 0.0, -0.75, -0.5, 0.0, 0.75, 0.25, -0.25, -0.75, -0.75, 0.0, 0.25, -1.0, 0.75, -1.0, -0.25, -0.5, -0.25, 0.75, 0.0, -0.5, 0.25, 0.75, ]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device30.pushErrorScope("internal");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
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
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    render_pass_encoder3010.setStencilReference(1);
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.popDebugGroup();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3000.insertDebugMarker("marker")
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
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
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
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    render_pass_encoder3010.setStencilReference(1);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.popDebugGroup();
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
    
    
    render_pass_encoder3010.executeBundles([])
    texture301.destroy();
    
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3020.setStencilReference(1);
    command_encoder001.insertDebugMarker("mymarker");
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3010.executeBundles([])
    command_encoder002.insertDebugMarker("mymarker");
    
    const array7 = new Float32Array([0.5, 0.25, 1.0, -0.75, -1.0, -0.5, -1.0, 0.0, 0.25, -0.5, -1.0, -0.75, 0.25, -1.0, -0.75, -0.75, 0.25, 0.5, 0.0, 0.0, 0.5, 0.0, -0.75, 0.75, 1.0, 0.25, -1.0, -0.75, -1.0, 0.0, 1.0, 0.5, 0.0, 1.0, -0.75, 0.5, 0.5, -0.25, 0.0, 0.75, 0.75, 0.25, 0.25, 0.5, 0.75, -0.75, -0.5, 0.0, -1.0, 0.75, -0.5, 0.0, -0.75, 0.0, 0.75, -0.75, 0.5, 0.75, 0.25, 0.75, -1.0, -1.0, -0.5, 0.5, -1.0, -0.25, -0.25, -1.0, -0.25, -0.75, -0.5, -0.5, -0.75, -1.0, 1.0, 1.0, -0.25, -1.0, 0.5, 0.0, 0.75, 0.0, -0.75, -1.0, 0.0, -1.0, 0.25, -1.0, -1.0, 0.0, -0.75, -0.75, 0.5, 0.0, 0.0, 0.0, -0.25, 1.0, 1.0, -0.25, ]);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    
    
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setStencilReference(1);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer001 = command_encoder001.finish();
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    command_encoder002.pushDebugGroup("mygroupmarker")
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder100.insertDebugMarker("mymarker");
    device00.pushErrorScope("internal");
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_pass_encoder3020.insertDebugMarker("marker");
    texture001.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder0000.popDebugGroup()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.executeBundles([])
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    device30.pushErrorScope("out-of-memory");
    
    render_pass_encoder0020.executeBundles([])
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array8 = new Float32Array([-1.0, 0.5, -0.5, 0.75, -0.75, -1.0, 1.0, -0.75, 0.25, 0.0, 0.75, -0.5, -0.75, 0.0, -0.75, -0.25, -0.75, 0.5, -0.75, 1.0, -1.0, 0.75, -0.5, 0.0, 0.5, -0.25, -1.0, -0.5, -1.0, 0.75, -0.75, 0.25, -0.5, 0.0, 0.75, 0.5, -0.75, -0.75, 1.0, 0.25, -0.75, 0.0, 0.25, -0.25, -0.5, 0.25, -0.5, -0.75, -0.25, 0.5, 0.0, -0.25, -0.5, 0.25, -1.0, -0.75, 0.0, -1.0, -0.25, 0.25, 0.25, 0.0, -0.25, -0.25, -0.75, -0.25, 0.75, -0.75, -0.5, 0.0, -1.0, 0.25, 0.75, 1.0, 1.0, -0.5, 0.0, 0.5, 1.0, 1.0, 0.5, -0.25, -1.0, 1.0, 1.0, -0.75, -1.0, -0.5, 1.0, 1.0, -0.75, 1.0, -1.0, -0.75, -0.5, -0.25, -1.0, 0.5, 0.25, -0.5, ]);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3020.executeBundles([])
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
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
    render_bundle_encoder301.setPipeline(render_pipeline300);
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    render_pass_encoder3010.executeBundles([])
    const array9 = new Float32Array([-0.5, 1.0, 1.0, 0.75, 0.25, 0.5, -0.25, -0.5, 0.0, -0.75, 0.0, 1.0, -0.75, -1.0, 0.0, 0.5, 1.0, -0.5, 0.75, -1.0, -0.5, -0.25, -0.25, 0.0, 0.5, 0.5, -0.5, 0.25, 0.75, 0.5, -0.5, 0.5, 0.5, -0.75, 1.0, 0.25, 0.75, -0.25, 0.0, -0.75, -0.75, -0.75, 0.0, -0.5, 0.25, -0.5, 0.5, 0.5, -1.0, 1.0, 0.5, -1.0, -0.5, 0.25, 0.0, 0.75, 0.0, 1.0, 0.0, -0.25, 0.25, -0.75, 0.75, 0.75, 1.0, 1.0, -0.5, -0.5, 0.25, -0.5, -0.25, -1.0, 1.0, 0.25, -0.75, -0.25, -0.25, -0.5, 0.25, -0.75, -0.75, 0.5, -0.75, 0.5, 1.0, 0.25, 0.5, 0.75, 0.75, -0.75, 0.25, -1.0, 0.0, -0.5, -0.25, 1.0, -0.5, 0.75, -1.0, -0.75, ]);
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder0020.setPipeline(render_pipeline001);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    render_pass_encoder3020.setPipeline(render_pipeline301);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.submit([command_buffer001, ]);
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query300.destroy()
    
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    render_bundle_encoder000.popDebugGroup();
    texture302.destroy();
    render_pass_encoder3020.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture300.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder0020.setStencilReference(1);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
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
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group301);
    render_pass_encoder3010.setPipeline(render_pipeline300);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0020.popDebugGroup();
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer300.destroy()
    query000.destroy()
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    buffer305.destroy()
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture303 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    
    texture002.destroy();
    buffer302.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.writeTexture({ texture: texture303 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    buffer304.destroy()
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    compute_pass_encoder1030.setPipeline(compute_pipeline102);
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const array10 = new Float32Array([0.5, 0.25, -0.5, -0.75, -0.75, -1.0, -0.5, -0.25, -1.0, -0.25, -0.75, 0.0, -0.75, 0.5, 0.5, 0.75, -1.0, 0.0, -0.25, -0.5, 0.0, -0.75, 0.0, 0.0, 0.0, 1.0, -1.0, -1.0, 1.0, -0.75, 0.75, 0.0, 0.5, 0.25, -1.0, -1.0, -1.0, -0.75, -1.0, 0.75, -0.5, -0.5, -1.0, 0.0, -0.5, -0.75, 0.75, 0.0, 0.5, 1.0, 1.0, -0.25, -0.75, 0.0, -0.5, -0.25, -0.75, -1.0, 0.5, -1.0, -0.75, -0.5, 0.5, 0.5, -0.25, -1.0, 0.75, 1.0, -0.75, 1.0, -0.25, -0.75, -1.0, 0.5, 0.0, -0.5, 0.5, -0.25, 0.75, 0.5, 1.0, -0.5, 0.0, 0.5, 0.75, -1.0, 0.5, -0.5, -1.0, -0.75, 0.5, 0.5, -0.75, 0.75, 0.0, -1.0, -0.5, -0.75, 0.5, 0.25, ]);
    const array11 = new Float32Array([0.0, -0.75, -0.75, -0.5, 0.5, 0.5, 0.75, -0.5, -1.0, -0.75, -0.5, 0.0, -0.75, 0.75, -1.0, 1.0, -0.25, 1.0, -1.0, -0.75, 0.25, 0.5, -0.5, 0.5, -0.75, 0.0, -0.75, 0.75, 0.0, 0.75, 1.0, 0.75, 1.0, -0.75, 0.75, -0.5, 0.75, 1.0, 0.5, -0.5, -0.75, 0.75, 0.25, -0.5, -0.25, 0.0, -0.5, -0.5, 1.0, -0.75, 0.5, -0.5, 0.25, -0.75, -0.25, 0.0, 1.0, 1.0, -0.25, -0.25, 0.5, 0.25, 0.25, -1.0, 1.0, -0.25, 0.0, -0.25, -0.5, -1.0, -1.0, -0.5, -0.5, 0.25, 0.25, 0.75, 0.5, -1.0, -0.75, -0.75, 0.75, -0.25, 1.0, -0.75, -0.5, 0.75, 0.0, 0.0, 0.0, 0.5, -1.0, -0.25, -0.25, 0.25, -0.25, 0.75, 0.5, 0.5, 0.0, 1.0, ]);
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3020.setStencilReference(1);
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    device10.pushErrorScope("out-of-memory");
    
    const array12 = new Float32Array([0.5, -1.0, -0.75, -1.0, -0.25, -0.5, 1.0, -1.0, 0.0, -0.75, -0.5, 0.5, -0.75, -1.0, 0.5, -0.5, 0.25, -0.5, -0.5, 0.0, 0.5, -0.5, 0.5, 1.0, -0.75, 1.0, 0.75, -0.5, -0.75, -0.75, 0.0, 0.5, 1.0, -1.0, 1.0, -0.25, -0.5, 0.5, 0.5, -0.25, 1.0, 1.0, -0.5, 0.75, 0.25, 0.75, -0.25, -1.0, -1.0, -1.0, 0.0, -0.25, -1.0, 0.75, 1.0, -0.25, 0.0, -0.5, 0.0, -0.75, 0.25, 1.0, 0.0, -1.0, 1.0, -1.0, 0.5, 0.75, 0.5, -1.0, 0.25, 0.5, 1.0, 0.75, -1.0, 1.0, 0.75, -1.0, -0.5, -1.0, -1.0, -0.25, 0.0, 1.0, -0.25, 0.25, -0.25, -0.5, 0.75, 0.0, 0.0, 0.5, -0.25, -0.25, 0.5, 0.75, -1.0, 1.0, 0.25, 0.5, ]);
    device10.queue.writeTexture({ texture: texture100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    device30.queue.writeTexture({ texture: texture303 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture303 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group302);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer101.destroy()
    buffer000.destroy()
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
    
    device10.queue.writeTexture({ texture: texture100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    query001.destroy()
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer003.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder104.insertDebugMarker("mymarker");
    render_pass_encoder3010.popDebugGroup();
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    
    query400.destroy()
    command_encoder104.insertDebugMarker("mymarker");
    device30.queue.writeTexture({ texture: texture303 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.setPipeline(compute_pipeline102);
    device40.destroy();
    
    query301.destroy()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group303);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group100);
    buffer308.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    query001.destroy()
    
    compute_pass_encoder1040.setPipeline(compute_pipeline107);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer005.destroy()
    device30.queue.writeTexture({ texture: texture303 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer104.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder105.pushDebugGroup("mygroupmarker")
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    texture303.destroy();
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    
    
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    query000.destroy()
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer105.destroy()
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout008,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
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
    device10.queue.writeTexture({ texture: texture100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    buffer004.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("out-of-memory");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.dispatchWorkgroups(100);
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
    render_pass_encoder3020.popDebugGroup();
    command_encoder101.popDebugGroup()
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group304);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer107, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.end();
    command_encoder105.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.end();
    compute_pass_encoder1000.end();
    const command_buffer102 = command_encoder102.finish();
    const command_buffer000 = command_encoder000.finish();
    device10.queue.submit([command_buffer102, ]);
    const command_buffer105 = command_encoder105.finish();
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
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group102);
    device10.queue.submit([command_buffer105, ]);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1010, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1010, 0);
    const command_buffer101 = command_encoder101.finish();
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
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
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    device00.queue.submit([command_buffer000, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3014, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3014, 0);
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder3000.end();
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group103);
    const command_buffer300 = command_encoder300.finish();
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1013, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1040.end();
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    render_pass_encoder0020.setVertexBuffer(0, buffer005);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0020.draw(3);
    const command_buffer104 = command_encoder104.finish();
    compute_pass_encoder1030.end();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder0020.end();
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    command_encoder002.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
}