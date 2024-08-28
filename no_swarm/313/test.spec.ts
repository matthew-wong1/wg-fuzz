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
    
    
    const array0 = new Float32Array([0.75, 0.0, -0.75, 0.5, -1.0, 0.75, 0.25, -1.0, -1.0, 0.0, 0.75, 0.25, 0.25, -0.5, 0.5, 1.0, 0.25, 0.5, 0.75, 1.0, 0.75, 0.5, 1.0, -0.75, -1.0, -0.5, -0.25, 0.25, -0.5, 1.0, 1.0, -0.25, -1.0, -0.5, -0.5, -0.75, -0.75, 1.0, -1.0, 0.75, -0.5, 0.75, -1.0, 0.25, 0.75, -1.0, 1.0, 0.75, -0.25, 0.5, 0.0, -1.0, -1.0, -0.75, -0.75, -0.25, 0.0, 0.25, -0.5, -0.75, 1.0, 0.75, 1.0, -1.0, 0.75, 0.25, 1.0, 0.0, 0.5, -0.75, 0.0, 0.5, 1.0, 0.25, -0.75, 0.75, 1.0, 0.75, 0.75, 0.25, 0.5, 1.0, 0.0, 1.0, -0.5, -1.0, 0.75, 0.75, -0.5, 0.0, 0.0, 0.75, -0.25, -1.0, -1.0, 0.25, 0.5, -0.75, 0.5, -0.5, ]);
    
    
    const array1 = new Float32Array([0.0, 0.25, -0.25, 1.0, 0.25, -0.75, 0.0, 0.25, -0.5, 1.0, 0.5, 0.0, -0.75, 0.0, 0.0, -0.75, -0.25, 0.75, -0.75, -0.75, -0.5, 1.0, 0.5, 0.75, -0.25, -1.0, -0.5, -1.0, 0.25, -0.75, 0.75, 1.0, 0.0, 0.75, 0.5, 0.5, 1.0, -0.5, -1.0, 1.0, -0.25, 0.0, -0.75, 0.0, -1.0, 0.75, -0.75, 0.5, 1.0, 0.25, 0.0, 0.0, 0.0, 0.5, 0.0, 0.25, 1.0, -0.25, 0.25, -1.0, -1.0, 0.0, -1.0, 0.5, -0.25, 0.5, 0.75, 0.0, -1.0, -0.75, -0.5, 0.25, -0.5, 0.75, 1.0, -0.75, 0.25, -0.25, -0.5, -1.0, -0.25, -1.0, -1.0, -0.25, 0.0, 0.25, -0.5, -0.25, -0.5, 0.5, 1.0, 0.75, -0.25, -0.5, -1.0, -0.25, 0.5, -1.0, 0.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    
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
    const array2 = new Float32Array([0.25, 1.0, 1.0, -0.75, -0.25, -1.0, 0.0, -0.75, -0.5, 0.75, 1.0, -1.0, -0.75, -1.0, 0.0, 1.0, 1.0, -0.75, 0.25, 0.75, -1.0, 0.5, -0.75, 0.5, 0.5, -0.5, -0.5, 0.75, -0.25, 0.75, 0.75, 0.25, 0.25, -0.25, -0.25, -1.0, -1.0, 1.0, 1.0, 0.25, -1.0, -0.5, -0.5, 0.75, -0.25, -0.25, 0.25, 0.25, -0.25, 0.5, 0.25, 0.5, 0.25, 0.75, -0.75, 0.5, 0.25, 0.5, -0.25, -1.0, -0.5, 0.5, 0.5, 0.75, 0.25, 0.75, 0.75, 0.75, -1.0, -0.25, 0.5, 0.25, 0.0, -0.25, 0.0, 0.25, -0.5, 0.0, -0.75, -0.75, -0.5, -0.5, -1.0, -1.0, 0.75, -0.75, -1.0, 0.5, 0.5, 0.75, -0.25, 0.0, -1.0, 0.25, 0.5, -0.5, 0.75, 0.75, 0.25, 0.5, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_buffer100 = command_encoder100.finish();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    texture100.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder102.insertDebugMarker("mymarker");
    query100.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    device10.pushErrorScope("internal");
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    
    const command_buffer102 = command_encoder102.finish();
    
    command_encoder200.insertDebugMarker("mymarker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.insertDebugMarker("mymarker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder200.insertDebugMarker("mymarker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    texture200.destroy();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer001.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_buffer001 = command_encoder001.finish();
    query000.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer200.destroy()
    buffer000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device30.pushErrorScope("validation");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device20.pushErrorScope("internal");
    
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    texture300.destroy();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    command_encoder202.pushDebugGroup("mygroupmarker")
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    render_pass_encoder2000.popDebugGroup();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder200.popDebugGroup();
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder202.insertDebugMarker("mymarker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder001.insertDebugMarker("marker");
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
    render_pass_encoder2000.setStencilReference(1);
    const command_buffer201 = command_encoder201.finish();
    query400.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder101.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2000.setStencilReference(1);
    
    
    texture302.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    render_pass_encoder2020.executeBundles([])
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    
    
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    device40.pushErrorScope("internal");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_pass_encoder2000.insertDebugMarker("marker");
    
    const array3 = new Float32Array([-1.0, -0.75, 0.0, -0.5, 0.0, 0.5, 0.5, -0.75, 1.0, 0.25, 0.25, 0.5, 0.75, 0.75, -0.75, -0.5, -0.25, 0.25, 0.5, 0.5, 0.75, -0.5, 1.0, 1.0, -0.25, -1.0, -1.0, 0.0, 0.25, 0.0, -0.25, 0.0, 0.75, 0.0, -0.5, 0.5, 0.25, 1.0, 0.0, -1.0, -0.75, -0.5, 0.75, -0.25, 0.25, -0.75, 1.0, 1.0, -1.0, -0.25, 1.0, 0.0, -0.25, -0.25, 0.5, 1.0, 0.25, 0.0, -1.0, -0.75, 0.75, -1.0, -0.25, 0.0, 1.0, 1.0, -0.5, -1.0, 0.25, 0.5, -0.75, -0.25, 1.0, -1.0, 1.0, -0.75, 1.0, -0.75, -0.5, 0.25, 0.0, 0.75, 0.5, -0.75, -0.5, -0.25, -0.25, 0.5, -0.25, 0.25, 0.25, 0.25, -0.75, 0.0, 0.25, 0.0, 0.0, -1.0, 1.0, -0.25, ]);
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.popDebugGroup();
    command_encoder300.popDebugGroup()
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    buffer103.destroy()
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    buffer105.destroy()
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    texture301.destroy();
    query001.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const array4 = new Float32Array([0.25, 0.75, 0.75, 0.25, 0.75, 0.25, -0.75, 0.0, 0.75, 0.75, 0.75, 0.5, 0.0, -0.5, -0.75, -1.0, -1.0, -0.75, -0.5, 0.0, 0.75, -0.25, 0.0, 0.0, 1.0, 0.25, -0.75, -0.25, 0.0, 0.75, -0.5, 0.0, -1.0, 0.5, -0.5, 0.5, 0.75, -0.25, -0.5, 0.0, -0.25, 0.5, -0.75, 0.5, -0.5, -0.25, -0.75, -0.25, 0.0, -0.5, -1.0, -0.25, 0.5, -0.25, 0.25, 0.0, 0.75, -0.25, 0.0, -0.25, 0.25, 1.0, 0.25, -0.75, -0.5, 1.0, 0.25, 0.75, 0.25, -1.0, 0.5, -0.5, -0.5, 0.25, 0.0, -0.25, -0.25, -0.25, -1.0, 0.5, 0.75, 0.0, 0.25, 0.25, 1.0, 0.25, 0.75, -0.75, -0.5, 0.75, 0.25, 0.25, 0.5, -1.0, -1.0, 0.0, -0.25, -0.5, 0.5, -1.0, ]);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.setPipeline(render_pipeline101);
    buffer201.destroy()
    device20.pushErrorScope("out-of-memory");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    command_encoder103.clearBuffer(buffer101);
    texture201.destroy();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder102.setPipeline(render_pipeline101);
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_pass_encoder2000.popDebugGroup();
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    
    buffer400.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    
    
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder101.setVertexBuffer(0, buffer106);
    render_pass_encoder2000.setStencilReference(1);
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    
    device10.pushErrorScope("internal");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder301.insertDebugMarker("mymarker");
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth32float",
        dimension: "2d"
    });
    
    texture202.destroy();
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder2000.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    buffer101.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    buffer106.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder2020.executeBundles([])
    
    device40.pushErrorScope("out-of-memory");
    device20.queue.submit([command_buffer201, ]);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    texture000.destroy();
    
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder102.popDebugGroup();
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    const array5 = new Float32Array([-0.5, -0.75, -0.25, -0.75, 0.5, 0.0, -0.25, -0.25, 1.0, -0.5, -0.5, -0.25, 1.0, -0.75, 0.25, 0.75, -1.0, 0.25, -0.25, 0.5, 0.5, -0.75, -0.5, 0.5, -0.25, 0.75, -1.0, 0.5, -0.25, -0.75, 1.0, -0.5, -0.75, 0.5, -0.5, -0.75, 1.0, 0.5, -1.0, -1.0, -0.25, -0.25, -0.75, 0.0, 0.5, -1.0, 0.75, 0.25, 0.0, -0.25, 0.25, -1.0, -0.5, -0.75, -0.75, 1.0, -0.75, 1.0, -1.0, -0.25, -1.0, 1.0, -1.0, -1.0, 0.25, 0.25, -0.25, -1.0, -1.0, -0.75, 0.5, 0.75, 0.5, 1.0, -0.75, 0.0, -0.25, -0.25, 0.75, -1.0, -0.75, -0.75, -0.75, -0.75, 0.5, 1.0, -0.75, -0.5, -0.5, -0.25, 0.0, 0.75, 0.5, 1.0, 0.0, -1.0, 0.75, -0.5, 0.5, 0.0, ]);
    query500.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer107.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
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
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
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
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    device00.pushErrorScope("internal");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    render_pass_encoder2000.setStencilReference(1);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    texture400.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    texture500.destroy();
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    render_bundle_encoder501.popDebugGroup();
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder2020.insertDebugMarker("marker");
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
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.popDebugGroup();
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    buffer300.destroy()
    
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.setPipeline(compute_pipeline102);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
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
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder0020.setPipeline(render_pipeline001);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2020.executeBundles([])
    
    
    render_pass_encoder0030.executeBundles([])
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder101.setIndexBuffer(buffer103, "uint16");
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    texture303.destroy();
    texture001.destroy();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
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
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    const command_buffer500 = command_encoder500.finish();
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.setPipeline(render_pipeline001);
    render_pass_encoder2020.setPipeline(render_pipeline200);
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group102);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    render_pass_encoder2020.setBindGroup(0, bind_group200);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.setVertexBuffer(0, buffer201);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
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
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group001);
    render_pass_encoder2020.end();
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1030.end();
    command_encoder202.popDebugGroup()
    render_pass_encoder2000.setPipeline(render_pipeline200);
    command_encoder103.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    compute_pass_encoder0000.dispatchWorkgroups(100);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.setVertexBuffer(0, buffer201);
    compute_pass_encoder0000.end();
    command_encoder000.popDebugGroup()
    render_pass_encoder2000.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder0020.popDebugGroup();
    const command_buffer200 = command_encoder200.finish();
    const command_buffer000 = command_encoder000.finish();
    device20.queue.submit([command_buffer200, ]);
}