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
    const array0 = new Float32Array([0.25, -0.75, 0.5, 0.0, 1.0, 0.5, -0.75, -1.0, -0.25, 0.75, 0.25, 1.0, 0.5, 0.25, 0.25, 1.0, -1.0, -0.5, 0.25, -1.0, 0.75, 0.25, 0.75, 1.0, 0.75, 0.25, 0.25, -0.5, 0.0, 0.25, 0.75, -1.0, 0.25, 1.0, -0.25, 0.5, -1.0, 0.25, 0.5, 0.25, -0.5, 0.5, -0.5, 0.0, -0.75, 0.75, 1.0, -1.0, 0.0, -0.75, 1.0, 0.75, -1.0, 0.25, -1.0, 1.0, 0.75, 0.75, -1.0, 0.5, -0.75, 0.5, 0.0, 0.0, 1.0, -0.5, 0.75, 0.75, 0.75, -1.0, 0.5, -1.0, 0.5, -1.0, 1.0, -0.5, -0.5, 0.25, -0.75, -0.5, 0.5, -1.0, 0.25, -0.25, -1.0, 0.5, -0.5, 0.5, 0.5, -0.25, 0.75, -1.0, 0.25, 0.5, 0.0, 1.0, -0.5, -1.0, -0.5, -0.5, ]);
    const array1 = new Float32Array([-1.0, 1.0, -0.75, 0.25, 0.25, 0.0, -0.75, -1.0, -0.5, 0.0, 0.5, 0.75, -0.5, 0.5, 0.0, -1.0, -0.5, -0.25, -0.5, 1.0, -0.5, 1.0, -0.25, 1.0, 1.0, -0.25, -0.5, 0.5, -1.0, 0.0, 0.25, -0.5, -0.25, -0.25, -1.0, -0.5, 0.75, -0.75, -0.75, -1.0, -0.75, 0.25, 1.0, 0.5, 0.5, 0.0, -0.5, -0.5, -1.0, -0.75, 1.0, 0.5, -1.0, 0.25, -0.5, 0.25, -0.5, -0.75, 1.0, -0.75, -1.0, -0.75, -0.5, 0.0, -0.25, 1.0, 0.0, -0.75, 1.0, 1.0, 0.25, -0.75, 0.5, -0.5, 0.75, 0.25, -0.5, -0.5, 0.5, -0.75, 0.5, -0.25, -0.5, 0.0, 0.0, 0.25, 0.25, -0.5, -0.25, 0.75, 1.0, -1.0, 0.0, -0.5, 0.75, 0.5, -1.0, 0.5, -1.0, 0.75, ]);
    const array2 = new Float32Array([-1.0, 0.5, 0.0, 0.0, 0.5, 1.0, 0.0, -0.25, 0.0, 0.75, -0.25, 1.0, 0.5, -0.5, 0.75, 0.75, 0.0, -0.5, -0.5, -0.5, -0.5, 0.0, 0.25, -0.5, 1.0, 0.75, 0.5, -0.25, 1.0, -0.5, 1.0, 0.0, -0.5, -0.5, -1.0, -0.25, -0.5, 0.0, 0.75, -0.75, 0.25, 0.0, -1.0, 0.5, -0.5, 0.5, -1.0, 0.5, 0.0, 1.0, 0.5, -0.5, 0.0, 0.0, -0.75, 0.25, -0.75, 0.75, -0.75, -0.5, 0.0, 1.0, -1.0, -0.5, 0.0, 0.5, -0.75, 1.0, -0.75, 0.25, 0.25, 1.0, 0.0, 0.25, 0.0, -0.75, 0.75, -0.75, -1.0, -0.75, 0.75, -0.25, -0.75, -0.25, 0.5, -0.25, 1.0, 0.5, 0.5, 0.0, -0.75, -1.0, 0.0, 0.75, -0.5, -1.0, -0.25, -1.0, 0.25, 0.75, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([1.0, -1.0, 0.0, 0.75, -0.25, -1.0, -0.25, -0.25, 0.0, 0.75, -0.5, 1.0, 0.0, -0.25, -1.0, 0.0, -0.75, 1.0, 0.5, 1.0, 0.5, -1.0, -0.25, -0.5, 0.0, 1.0, 0.5, -0.25, 0.5, 0.5, 0.25, -1.0, -1.0, -0.75, -1.0, 0.25, -0.5, 1.0, -0.75, 0.5, 0.25, 0.5, -1.0, 0.0, 0.5, -0.5, 0.75, 0.75, -1.0, 0.25, -0.75, 0.0, -0.75, 0.0, 0.5, 0.25, 0.25, 0.5, 0.5, -1.0, -1.0, -0.75, -0.25, 0.5, -0.75, 0.25, 0.75, 1.0, 0.25, 0.0, 0.25, 1.0, -0.25, -0.5, 1.0, 0.75, -0.25, -0.75, -0.75, 1.0, 0.25, 1.0, -0.75, 1.0, -0.25, -1.0, 0.0, 1.0, 0.75, 0.25, -0.5, 0.75, -0.25, 0.5, -0.5, -0.75, 0.0, -0.25, -1.0, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([1.0, 0.75, 0.0, 0.0, -1.0, 0.5, -0.25, -0.25, 0.25, -0.5, -0.25, -1.0, -0.5, -0.5, -0.5, 1.0, 0.5, -1.0, 1.0, -0.5, 0.25, -0.5, -1.0, 0.25, 0.5, 0.0, 0.5, -1.0, -0.25, 0.25, 0.75, 0.5, -0.75, 0.25, 0.5, -0.5, 0.0, 0.75, -0.25, 0.75, 0.0, -1.0, 0.75, -0.25, -0.5, -0.5, 0.5, -1.0, 0.25, 1.0, 0.5, -1.0, -1.0, 1.0, 0.75, 0.25, -1.0, -0.5, -1.0, -0.75, -0.75, 0.75, 0.75, 0.75, 0.75, -0.5, 1.0, -0.5, 0.25, 0.25, 1.0, -0.5, -0.25, 0.25, 1.0, 0.5, -0.25, 0.25, 0.0, -0.5, -1.0, 0.5, -0.25, 0.5, -1.0, -0.75, 0.0, -0.25, 0.5, 1.0, -0.5, -0.25, -1.0, -1.0, 1.0, 0.25, -0.5, -0.25, -0.5, -1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer200 = command_encoder200.finish();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    texture100.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.submit([command_buffer200, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
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
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array5 = new Float32Array([0.25, -0.5, 0.0, -0.5, 0.0, -0.5, 0.75, 0.0, 1.0, 1.0, 1.0, -0.75, 0.0, -0.5, -0.25, 0.25, -1.0, 0.5, 0.0, 0.25, 0.0, -0.25, 0.5, 0.75, -0.75, 0.0, 1.0, -1.0, -0.5, -0.75, 0.5, 1.0, -0.5, -0.25, 0.25, 0.0, 0.75, 0.5, -0.5, 0.0, -1.0, 0.75, 0.0, -1.0, 0.0, 0.0, 0.25, -0.5, -1.0, -0.25, 0.75, 0.5, 0.75, -1.0, 0.25, 0.5, 0.75, 1.0, -1.0, 0.5, 0.0, -0.25, -0.75, 0.75, -0.75, 1.0, 0.0, -1.0, 1.0, 0.5, 0.75, -0.75, 0.0, 0.0, 0.75, 1.0, 0.0, -0.5, -0.75, -0.25, -0.5, 1.0, -0.5, 0.5, 0.5, 0.25, -0.5, 0.5, -0.25, -0.25, -0.75, 0.25, -0.25, 0.0, -0.25, -0.25, -0.5, 0.25, -0.75, 0.25, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    device20.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
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
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer001.destroy()
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1000.setStencilReference(1);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query300.destroy()
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    command_encoder101.clearBuffer(buffer101);
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const array6 = new Float32Array([0.5, 0.25, -1.0, -0.25, -0.5, 0.75, -1.0, 0.75, -1.0, 0.0, 0.5, 0.25, -0.5, 0.0, -0.75, 0.75, -0.5, 0.25, 0.0, 0.5, 1.0, 0.0, 1.0, -1.0, 0.0, -1.0, -0.25, 0.0, 0.0, 0.25, 1.0, 0.0, 1.0, 0.25, -1.0, -0.25, -0.25, 0.75, 0.0, -1.0, 1.0, -0.75, 0.5, 0.0, -1.0, -0.25, 0.75, -1.0, -0.25, 0.5, 0.0, -1.0, 0.0, 1.0, 1.0, 0.5, 0.0, 0.25, 0.75, 0.5, 0.75, 0.0, 0.5, 1.0, -0.75, 0.25, 0.75, -1.0, 1.0, -0.75, -1.0, 0.5, 1.0, 0.75, -1.0, -0.25, 0.75, 0.75, -1.0, 0.0, -0.25, 1.0, 1.0, 0.75, 0.0, -1.0, 0.0, -0.75, -0.5, -0.25, 0.0, 1.0, 0.0, -1.0, -0.5, 1.0, -0.75, -0.5, 0.75, 0.75, ]);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
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
    query000.destroy()
    
    query301.destroy()
    
    texture000.destroy();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.executeBundles([])
    device40.pushErrorScope("out-of-memory");
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.executeBundles([])
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture400.destroy();
    render_pass_encoder1000.setStencilReference(1);
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    texture300.destroy();
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    device00.pushErrorScope("validation");
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
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
    render_pass_encoder0020.setPipeline(render_pipeline001);
    buffer101.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer400.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0010.setPipeline(render_pipeline001);
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder300.popDebugGroup()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder0010.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group000);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    query000.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer003.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder400.popDebugGroup();
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
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
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    const array7 = new Float32Array([0.25, 0.75, 0.0, -0.25, -0.25, 1.0, 0.25, 1.0, -0.75, -0.25, -1.0, -0.75, 0.25, -1.0, 0.5, 0.25, -0.25, -0.5, 0.0, 0.25, -0.25, 0.25, -0.75, -1.0, 0.25, 0.0, 0.5, 0.0, 0.75, 1.0, 0.75, 0.5, 1.0, -0.75, -0.75, -0.75, -0.75, -0.75, -1.0, 0.75, 0.75, 0.0, -1.0, 0.25, 0.5, -1.0, 1.0, 0.0, 0.75, 0.25, -0.5, -0.25, 0.5, 1.0, 0.75, -0.75, -0.75, -1.0, 0.0, 0.25, 1.0, -1.0, -0.75, 0.5, -0.5, -0.75, -1.0, 1.0, -1.0, -0.5, 0.75, 0.5, -1.0, -1.0, 0.75, 0.75, 0.5, 0.25, -0.75, -0.5, -0.25, -1.0, -0.75, -0.75, 1.0, -0.25, -1.0, 0.25, 0.75, -1.0, 0.0, 0.25, 0.0, -0.75, 0.0, -0.5, 0.5, -0.25, -1.0, -0.5, ]);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.insertDebugMarker("mymarker");
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    query001.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture102.destroy();
    texture001.destroy();
    texture002.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    buffer004.destroy()
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
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
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout402]
    });
    command_encoder301.insertDebugMarker("mymarker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    render_bundle_encoder300.popDebugGroup();
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder1000.executeBundles([])
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer104, 0, array7, 0, array7.length);
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder100.popDebugGroup();
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.executeBundles([])
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    query302.destroy()
    
    
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    
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
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group001);
    device10.queue.writeBuffer(buffer104, 0, array7, 0, array7.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device70.destroy();
    const array8 = new Float32Array([0.75, -0.5, -0.5, 0.75, -1.0, 1.0, -1.0, -0.25, -0.75, 0.25, 1.0, 0.5, -0.75, -0.5, 0.0, 0.75, -0.5, 1.0, -0.5, 1.0, -0.5, 0.75, -0.75, 0.0, -1.0, -0.75, 1.0, 0.0, -1.0, 0.25, -0.5, 0.25, 0.5, 0.5, -1.0, -1.0, -0.5, -0.5, 1.0, -1.0, 0.25, 1.0, -0.25, 0.25, -1.0, 1.0, -0.75, -0.25, -0.5, 0.25, -1.0, 0.75, 1.0, 0.75, -0.75, -0.5, -0.25, 1.0, 0.0, -0.5, 0.25, -0.25, -0.75, 0.75, -0.5, 0.5, -0.5, 0.5, 1.0, -1.0, 0.0, 0.5, 0.0, 1.0, 0.75, 1.0, 0.5, 0.75, -0.5, 0.5, 0.5, -0.75, -0.5, 0.75, -0.5, 0.25, -0.5, 1.0, 0.75, -0.25, 0.5, -1.0, 0.0, -0.75, 0.75, -0.75, 0.0, 0.25, -0.25, -0.25, ]);
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder400.popDebugGroup();
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device60.pushErrorScope("out-of-memory");
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    query001.destroy()
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
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    query302.destroy()
    device10.queue.writeBuffer(buffer103, 0, array8, 0, array8.length);
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer300.destroy()
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
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
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    command_encoder401.pushDebugGroup("mygroupmarker")
    texture401.destroy();
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_bundle_encoder402.pushDebugGroup("group_marker");
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
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    
    query400.destroy()
    
    buffer103.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    command_encoder401.popDebugGroup()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    texture004.destroy();
    
    query300.destroy()
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1010.setStencilReference(1);
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    query301.destroy()
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query302
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    command_encoder401.pushDebugGroup("mygroupmarker")
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    query000.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    buffer006.destroy()
    device10.queue.writeBuffer(buffer104, 0, array7, 0, array7.length);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    query300.destroy()
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder3020.executeBundles([])
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
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
    
    render_bundle_encoder401.popDebugGroup();
    render_pass_encoder1010.setStencilReference(1);
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder402.popDebugGroup();
    query301.destroy()
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder001.setPipeline(render_pipeline003);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    compute_pass_encoder3010.popDebugGroup()
    device80.destroy();
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    render_bundle_encoder101.setPipeline(render_pipeline101);
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    query301.destroy()
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0010.insertDebugMarker("marker");
    query401.destroy()
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder3020.executeBundles([])
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    
    buffer005.destroy()
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    texture301.destroy();
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    render_pass_encoder1010.setStencilReference(1);
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer007.destroy()
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    render_pass_encoder0020.popDebugGroup();
    command_encoder401.popDebugGroup()
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group100);
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
    render_pass_encoder0010.popDebugGroup();
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
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
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0011, 0);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer401, ]);
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group301);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer306, 0);
    compute_pass_encoder3010.end();
    const command_buffer600 = command_encoder600.finish();
    command_encoder301.popDebugGroup()
    compute_pass_encoder0000.end();
    compute_pass_encoder3000.end();
    device60.queue.submit([command_buffer600, ]);
    const command_buffer000 = command_encoder000.finish();
    const command_buffer301 = command_encoder301.finish();
    device00.queue.submit([command_buffer000, ]);
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer301, ]);
}