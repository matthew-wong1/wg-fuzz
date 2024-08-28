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
        powerPreference: "low-power"
    });
    const array0 = new Float32Array([-0.75, 0.5, -0.75, -0.5, -0.25, -0.25, 0.75, -0.25, -1.0, 0.0, -1.0, 0.0, -0.5, 0.5, -0.75, -0.25, 0.75, -0.75, 0.75, -0.5, 1.0, 0.25, 0.75, 0.25, 0.75, -1.0, 0.25, 0.5, 1.0, -0.25, -0.5, 0.75, 1.0, 1.0, -0.25, -0.25, 1.0, 0.25, 0.25, -0.75, 0.0, -0.75, 0.0, -0.25, 1.0, -0.75, 0.25, -0.5, -0.5, -0.5, 0.5, 1.0, 0.75, 0.0, -1.0, 0.75, -0.75, 0.0, -0.5, 0.25, -0.25, 0.75, 1.0, -0.25, 1.0, -1.0, -0.25, 1.0, 0.75, -0.5, 0.0, -0.75, 0.75, -1.0, -0.25, -0.5, -0.5, -0.5, -0.5, 0.0, 0.75, 0.5, 0.75, -1.0, 0.75, 0.5, -0.75, 0.25, -0.25, -0.5, 1.0, 1.0, 0.0, 0.75, -0.5, 1.0, -1.0, -0.75, 0.0, 0.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array1 = new Float32Array([0.0, -0.25, -0.5, 1.0, 1.0, 0.0, -0.5, 0.75, -1.0, -1.0, 0.25, -0.5, 0.25, -0.75, -0.5, -0.75, -1.0, 0.0, 0.25, -0.75, 0.0, 0.75, 0.0, 1.0, -0.25, -1.0, 0.25, 0.0, -0.5, -0.75, -0.5, 0.0, 0.5, 0.25, 1.0, -0.75, -0.75, 1.0, 0.5, 0.5, 0.0, 1.0, -1.0, -0.75, 0.25, -0.25, -1.0, 0.75, -0.5, 0.0, 1.0, 0.0, -0.5, -1.0, 0.0, 0.0, 0.75, 0.25, -0.25, -0.5, -0.5, 0.25, 0.25, 1.0, 1.0, -1.0, 1.0, 0.75, 0.5, 1.0, 1.0, 0.25, -1.0, -0.75, 1.0, 0.0, 0.75, 0.25, 0.75, -0.5, -1.0, 1.0, -0.5, 0.5, 1.0, 0.0, -0.25, -0.75, 0.25, -0.25, -1.0, 0.5, -0.75, 0.5, 0.25, -0.5, 0.0, 0.25, -1.0, -0.25, ]);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.pushErrorScope("validation");
    const array2 = new Float32Array([-0.5, -1.0, -1.0, -1.0, -1.0, -0.5, 0.25, 0.75, 0.0, 0.0, -0.25, 0.5, 1.0, -0.75, 0.5, 0.0, -0.75, 0.0, 0.0, 0.0, 0.25, 0.25, -1.0, -0.75, 0.25, -1.0, -0.5, 0.5, -0.25, 0.5, 0.0, 0.25, -0.5, 0.5, 0.25, 0.75, 0.0, 0.0, 0.0, -0.75, 0.25, -1.0, 0.75, 0.75, 1.0, -0.75, 1.0, -0.25, 0.5, -1.0, -1.0, 0.5, 0.75, 0.75, 0.5, 1.0, 0.0, -0.5, -1.0, -0.75, -0.75, -1.0, 0.25, 0.5, 0.0, 0.75, 0.5, 0.5, 1.0, 1.0, 0.75, 0.5, 0.25, 0.75, 0.0, 0.0, -0.25, 1.0, 0.75, 0.5, -0.25, -0.75, -0.75, -0.75, -1.0, 0.75, -0.5, 0.0, -0.75, 0.75, 0.25, 0.0, 0.25, 0.75, 0.5, 0.75, 0.75, -0.5, 1.0, -1.0, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device20.destroy();
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.pushErrorScope("validation");
    
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer301.destroy()
    
    
    const array3 = new Float32Array([0.75, 0.75, 0.25, -0.25, 0.25, 0.25, -0.75, 0.75, -1.0, -0.75, -0.5, 0.5, 0.25, -0.75, 0.5, 0.0, -0.25, 0.25, 0.25, -0.5, -0.5, 0.0, -0.5, 0.0, 0.5, 0.5, 0.25, 1.0, 0.25, 1.0, -1.0, -0.25, 1.0, -0.5, 0.75, 1.0, -0.5, 1.0, 0.75, -0.5, -0.5, 0.0, -0.75, 0.0, 1.0, 1.0, -1.0, -1.0, 1.0, -0.5, -0.75, -0.5, -0.75, 0.0, 0.5, 0.75, -0.75, 1.0, 0.75, -0.25, -0.25, -0.25, -0.75, 1.0, 0.75, -0.25, 0.0, 0.75, 0.75, 0.75, 0.0, 0.75, 0.25, 0.5, -0.25, 0.5, -1.0, 0.0, -0.5, 0.0, -1.0, 0.75, -0.5, -0.5, -0.75, -0.5, -0.75, -1.0, 0.25, 0.75, -0.5, 1.0, 0.75, -0.5, -1.0, -0.25, -0.5, 0.0, 1.0, 1.0, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder500.insertDebugMarker("mymarker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
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
    
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
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
    
    
    
    render_pass_encoder5000.setStencilReference(1);
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    device30.destroy();
    
    
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture501.destroy();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5000.setStencilReference(1);
    
    query401.destroy()
    
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    texture500.destroy();
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    render_pass_encoder5000.setPipeline(render_pipeline500);
    
    render_pass_encoder5000.setStencilReference(1);
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    
    render_pass_encoder5000.pushDebugGroup("group_marker");
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    buffer501.destroy()
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
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
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
    buffer502.destroy()
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
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
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
    
    render_pass_encoder5000.setStencilReference(1);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
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
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group500);
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const array4 = new Float32Array([-0.5, -0.5, -1.0, 0.75, 0.25, -0.5, 1.0, -0.5, 0.5, 0.75, 0.75, 0.5, 0.25, 1.0, -1.0, -0.5, 0.75, -1.0, -0.5, -0.5, 0.75, 0.25, 1.0, 0.5, 0.0, -0.25, -0.75, 1.0, 0.25, 0.5, 0.25, -0.5, -0.5, 0.25, -1.0, -0.75, 0.0, -1.0, -0.75, 0.0, 0.0, -1.0, 0.5, -1.0, -0.75, -1.0, 1.0, 0.5, -0.75, 0.75, -0.5, 0.5, 0.25, -0.5, 0.0, 0.0, 0.75, -0.75, 0.0, -1.0, -0.75, 0.75, 0.5, 0.25, -0.25, -0.75, 1.0, 0.5, 0.5, 1.0, -0.25, -0.75, 0.25, 0.5, -0.5, 0.0, 0.25, -1.0, -0.25, 0.5, -0.75, -0.75, -0.75, 0.0, 0.0, 0.25, -0.75, 0.75, 0.25, -0.5, 0.75, 1.0, 0.5, 1.0, 0.0, 1.0, 0.5, -0.75, 0.5, 1.0, ]);
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    query401.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    device50.pushErrorScope("validation");
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
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
    
    render_pass_encoder5000.insertDebugMarker("marker");
    device40.destroy();
    query501.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer503.destroy()
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
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
    
    render_pass_encoder5000.popDebugGroup();
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group501);
    
    
    
    render_pass_encoder5000.pushDebugGroup("group_marker");
    
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const render_pipeline5010 = device50.createRenderPipeline({
        label: "render_pipeline5010",
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
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    buffer505.destroy()
    const render_pipeline5011 = device50.createRenderPipeline({
        label: "render_pipeline5011",
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
    const render_pipeline5012 = device50.createRenderPipeline({
        label: "render_pipeline5012",
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
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_pipeline5013 = device50.createRenderPipeline({
        label: "render_pipeline5013",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    const array5 = new Float32Array([-0.5, -0.75, 1.0, 0.25, 0.25, 0.75, 1.0, 0.5, -0.25, 0.5, 1.0, 0.5, 0.0, 0.75, 0.0, -0.25, -0.75, 0.25, 0.0, 0.75, 1.0, -0.25, 0.75, -0.5, -0.75, 0.5, 0.75, 1.0, 0.75, 1.0, -1.0, 0.75, -1.0, -0.5, -0.25, 0.5, -0.75, -0.75, -0.25, 0.5, -0.75, 0.0, -1.0, -0.5, 0.75, 0.25, 0.0, 0.25, 0.25, -1.0, 0.5, -1.0, 0.5, 0.0, 0.75, 1.0, -0.25, 0.0, 0.0, 0.25, -1.0, 0.0, -0.5, 0.75, -1.0, -0.5, 0.5, -0.25, 0.75, 0.5, -0.75, -0.25, -1.0, -1.0, -0.25, -0.25, 0.75, 1.0, -1.0, 0.75, 0.5, -0.5, 0.5, 1.0, 0.75, 0.5, 0.5, 0.75, 0.5, -0.5, -0.25, 0.25, -0.75, 1.0, 0.75, 0.25, -0.25, 0.75, -0.25, 0.75, ]);
    buffer500.destroy()
    
    const render_pipeline5014 = device50.createRenderPipeline({
        label: "render_pipeline5014",
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
    const render_pipeline5015 = device50.createRenderPipeline({
        label: "render_pipeline5015",
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
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    query504.destroy()
    const render_pipeline5016 = device50.createRenderPipeline({
        label: "render_pipeline5016",
        vertex: {
            module: shader_module508,
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
            module: shader_module508,
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
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder501.setPipeline(render_pipeline502);
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module5010_code = "";
    try {
        shader_module5010_code = await fs.readFile(__dirname + '/shader_module5010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5010 = await device50.createShaderModule({ label: "shader_module5010", code: shader_module5010_code })
    const render_pipeline5017 = device50.createRenderPipeline({
        label: "render_pipeline5017",
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
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module5011_code = "";
    try {
        shader_module5011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5011 = await device50.createShaderModule({ label: "shader_module5011", code: shader_module5011_code })
    
    query501.destroy()
    const render_pipeline5018 = device50.createRenderPipeline({
        label: "render_pipeline5018",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    
    texture502.destroy();
    
    const render_pipeline5019 = device50.createRenderPipeline({
        label: "render_pipeline5019",
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
    
    
    
    const render_pipeline5020 = device50.createRenderPipeline({
        label: "render_pipeline5020",
        vertex: {
            module: shader_module5011,
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
            module: shader_module5011,
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
    const render_pipeline5021 = device50.createRenderPipeline({
        label: "render_pipeline5021",
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
    render_pass_encoder5000.setStencilReference(1);
    
    
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline5022 = device50.createRenderPipeline({
        label: "render_pipeline5022",
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
    render_bundle_encoder502.setPipeline(render_pipeline5019);
    var shader_module5012_code = "";
    try {
        shader_module5012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5012 = await device50.createShaderModule({ label: "shader_module5012", code: shader_module5012_code })
    const render_pipeline5023 = device50.createRenderPipeline({
        label: "render_pipeline5023",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    query501.destroy()
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    query503.destroy()
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout503,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    
    const render_pipeline5024 = device50.createRenderPipeline({
        label: "render_pipeline5024",
        vertex: {
            module: shader_module508,
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
            module: shader_module508,
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
    
    
    const render_pipeline5025 = device50.createRenderPipeline({
        label: "render_pipeline5025",
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
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    var shader_module5013_code = "";
    try {
        shader_module5013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5013 = await device50.createShaderModule({ label: "shader_module5013", code: shader_module5013_code })
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_pipeline5026 = device50.createRenderPipeline({
        label: "render_pipeline5026",
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
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout502,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.popDebugGroup();
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder5010.setPipeline(render_pipeline5018);
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout502]
    });
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline5027 = device50.createRenderPipeline({
        label: "render_pipeline5027",
        vertex: {
            module: shader_module508,
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
            module: shader_module508,
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
    
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    buffer506.destroy()
    query504.destroy()
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5000.setVertexBuffer(0, buffer507);
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline5018.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group502);
    
    
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline5019.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group503);
    
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline5028 = device50.createRenderPipeline({
        label: "render_pipeline5028",
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
    render_pass_encoder5000.insertDebugMarker("marker");
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const render_pipeline5029 = device50.createRenderPipeline({
        label: "render_pipeline5029",
        vertex: {
            module: shader_module5011,
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
            module: shader_module5011,
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
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    device60.destroy();
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout501,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    query505.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder500.popDebugGroup();
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout500,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    query505.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pipeline5030 = device50.createRenderPipeline({
        label: "render_pipeline5030",
        vertex: {
            module: shader_module507,
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
            module: shader_module507,
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
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    device50.pushErrorScope("validation");
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    buffer507.destroy()
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    query502.destroy()
    const render_pipeline5031 = device50.createRenderPipeline({
        label: "render_pipeline5031",
        vertex: {
            module: shader_module509,
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
            module: shader_module509,
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
    render_pass_encoder5010.insertDebugMarker("marker");
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    query501.destroy()
    
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout507,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout508,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    const compute_pipeline5026 = device50.createComputePipeline({
        label: "compute_pipeline5026",
        layout: pipeline_layout507,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    
    
    var shader_module5014_code = "";
    try {
        shader_module5014_code = await fs.readFile(__dirname + '/shader_module5014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5014 = await device50.createShaderModule({ label: "shader_module5014", code: shader_module5014_code })
    
    const array6 = new Float32Array([0.5, 0.25, 1.0, -0.25, 0.0, -0.25, -0.75, -0.75, 1.0, -0.75, -1.0, -0.25, 0.0, 0.25, -0.75, 0.0, 0.75, -0.25, 0.5, 0.25, -1.0, 0.5, -0.75, -1.0, 0.75, 0.0, 0.0, 0.75, 0.0, 0.75, -0.25, 0.0, 1.0, -0.75, 1.0, -0.5, -0.5, 0.25, 0.5, -0.25, 0.5, 0.75, -1.0, -0.25, 0.75, -0.75, -0.5, -0.25, -0.5, -1.0, -0.75, 0.75, 0.75, -1.0, -0.75, -1.0, -0.25, 0.5, -0.5, -1.0, -1.0, 0.0, -0.75, -1.0, -0.25, -1.0, 0.25, -0.75, 0.75, -1.0, 1.0, -0.75, 0.0, 0.0, -0.5, -1.0, 0.75, 1.0, 0.0, 0.5, -1.0, 1.0, -0.75, 0.5, -0.75, 0.75, 0.25, 0.25, 0.0, -0.75, 0.25, -0.75, 0.0, 0.5, -0.75, 0.5, 0.25, 0.25, 0.0, 0.75, ]);
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout503]
    });
    const compute_pipeline5027 = device50.createComputePipeline({
        label: "compute_pipeline5027",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    const compute_pipeline5028 = device50.createComputePipeline({
        label: "compute_pipeline5028",
        layout: pipeline_layout508,
        compute: {
            module: shader_module5014,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout501]
    });
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    render_pass_encoder5010.setStencilReference(1);
    const compute_pipeline5029 = device50.createComputePipeline({
        label: "compute_pipeline5029",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    query500.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query504.destroy()
    const compute_pipeline5030 = device50.createComputePipeline({
        label: "compute_pipeline5030",
        layout: pipeline_layout500,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    const compute_pipeline5031 = device50.createComputePipeline({
        label: "compute_pipeline5031",
        layout: pipeline_layout507,
        compute: {
            module: shader_module5014,
            entryPoint: "main"
        }
    });
    const compute_pipeline5032 = device50.createComputePipeline({
        label: "compute_pipeline5032",
        layout: pipeline_layout502,
        compute: {
            module: shader_module5014,
            entryPoint: "main"
        }
    });
    const compute_pipeline5033 = device50.createComputePipeline({
        label: "compute_pipeline5033",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    
    buffer509.destroy()
    const compute_pipeline5034 = device50.createComputePipeline({
        label: "compute_pipeline5034",
        layout: pipeline_layout505,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder501.popDebugGroup();
    
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const render_pipeline5032 = device50.createRenderPipeline({
        label: "render_pipeline5032",
        vertex: {
            module: shader_module509,
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
            module: shader_module509,
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
    const compute_pipeline5035 = device50.createComputePipeline({
        label: "compute_pipeline5035",
        layout: pipeline_layout501,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    const compute_pipeline5036 = device50.createComputePipeline({
        label: "compute_pipeline5036",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.insertDebugMarker("marker");
    const render_pipeline5033 = device50.createRenderPipeline({
        label: "render_pipeline5033",
        vertex: {
            module: shader_module509,
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
            module: shader_module509,
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
    const compute_pipeline5037 = device50.createComputePipeline({
        label: "compute_pipeline5037",
        layout: pipeline_layout508,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline5034 = device50.createRenderPipeline({
        label: "render_pipeline5034",
        vertex: {
            module: shader_module509,
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
            module: shader_module509,
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
    const compute_pipeline5038 = device50.createComputePipeline({
        label: "compute_pipeline5038",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5039 = device50.createComputePipeline({
        label: "compute_pipeline5039",
        layout: pipeline_layout509,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pipeline5040 = device50.createComputePipeline({
        label: "compute_pipeline5040",
        layout: pipeline_layout507,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    const compute_pipeline5041 = device50.createComputePipeline({
        label: "compute_pipeline5041",
        layout: pipeline_layout500,
        compute: {
            module: shader_module5014,
            entryPoint: "main"
        }
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline5042 = device50.createComputePipeline({
        label: "compute_pipeline5042",
        layout: pipeline_layout502,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    const compute_pipeline5043 = device50.createComputePipeline({
        label: "compute_pipeline5043",
        layout: pipeline_layout509,
        compute: {
            module: shader_module5014,
            entryPoint: "main"
        }
    });
    const compute_pipeline5044 = device50.createComputePipeline({
        label: "compute_pipeline5044",
        layout: pipeline_layout506,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder500.setVertexBuffer(0, buffer507);
    
    const compute_pipeline5045 = device50.createComputePipeline({
        label: "compute_pipeline5045",
        layout: pipeline_layout508,
        compute: {
            module: shader_module5014,
            entryPoint: "main"
        }
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const compute_pipeline5046 = device50.createComputePipeline({
        label: "compute_pipeline5046",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder700.insertDebugMarker("mymarker");
    query505.destroy()
    render_bundle_encoder501.popDebugGroup();
    const compute_pipeline5047 = device50.createComputePipeline({
        label: "compute_pipeline5047",
        layout: pipeline_layout508,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query505.destroy()
    var shader_module5015_code = "";
    try {
        shader_module5015_code = await fs.readFile(__dirname + '/shader_module5015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5015 = await device50.createShaderModule({ label: "shader_module5015", code: shader_module5015_code })
    command_encoder700.pushDebugGroup("mygroupmarker")
    const compute_pipeline5048 = device50.createComputePipeline({
        label: "compute_pipeline5048",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const compute_pipeline5049 = device50.createComputePipeline({
        label: "compute_pipeline5049",
        layout: pipeline_layout501,
        compute: {
            module: shader_module5015,
            entryPoint: "main"
        }
    });
    const compute_pipeline5050 = device50.createComputePipeline({
        label: "compute_pipeline5050",
        layout: pipeline_layout507,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const render_pipeline5035 = device50.createRenderPipeline({
        label: "render_pipeline5035",
        vertex: {
            module: shader_module508,
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
            module: shader_module508,
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
    render_pass_encoder5000.setStencilReference(1);
    const compute_pipeline5051 = device50.createComputePipeline({
        label: "compute_pipeline5051",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5052 = device50.createComputePipeline({
        label: "compute_pipeline5052",
        layout: pipeline_layout503,
        compute: {
            module: shader_module5015,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pipeline5053 = device50.createComputePipeline({
        label: "compute_pipeline5053",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5054 = device50.createComputePipeline({
        label: "compute_pipeline5054",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const render_pipeline5036 = device50.createRenderPipeline({
        label: "render_pipeline5036",
        vertex: {
            module: shader_module508,
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
            module: shader_module508,
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
    const compute_pipeline5055 = device50.createComputePipeline({
        label: "compute_pipeline5055",
        layout: pipeline_layout505,
        compute: {
            module: shader_module5014,
            entryPoint: "main"
        }
    });
    const compute_pipeline5056 = device50.createComputePipeline({
        label: "compute_pipeline5056",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline5057 = device50.createComputePipeline({
        label: "compute_pipeline5057",
        layout: pipeline_layout503,
        compute: {
            module: shader_module5010,
            entryPoint: "main"
        }
    });
    const compute_pipeline5058 = device50.createComputePipeline({
        label: "compute_pipeline5058",
        layout: pipeline_layout508,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline5059 = device50.createComputePipeline({
        label: "compute_pipeline5059",
        layout: pipeline_layout507,
        compute: {
            module: shader_module5014,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.setVertexBuffer(0, buffer507);
    const command_buffer701 = command_encoder701.finish();
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5010.draw(3);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder5000.draw(3);
    render_pass_encoder5010.end();
    render_pass_encoder5000.end();
    const command_buffer501 = command_encoder501.finish();
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer500, ]);
}