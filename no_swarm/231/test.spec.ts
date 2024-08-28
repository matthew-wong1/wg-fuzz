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
    const array0 = new Float32Array([0.75, 0.5, -1.0, 0.25, -1.0, 0.0, 0.75, 1.0, 1.0, 0.75, -1.0, 0.75, -0.25, 1.0, 0.25, -0.5, -0.25, 0.25, 1.0, 0.5, -1.0, 1.0, -0.25, -1.0, 0.5, 0.25, 0.25, 0.25, 0.25, -0.25, 0.75, -0.25, -0.5, 0.75, 1.0, 0.5, -0.25, 1.0, 0.0, -1.0, 0.0, 0.75, 0.0, 1.0, 0.0, -0.5, 0.75, 1.0, 0.5, 0.75, 0.75, -0.25, 0.0, -0.25, -0.5, -0.5, 0.25, -0.75, -0.25, 0.25, 0.0, -0.5, 0.25, -1.0, -0.25, 0.75, 0.75, -1.0, 1.0, 0.5, -1.0, 0.0, -0.5, 0.5, 1.0, 0.0, 0.75, 0.5, 1.0, 0.25, 0.0, -0.25, -0.25, 1.0, 1.0, 0.0, -0.25, -1.0, -0.25, 0.5, 0.5, -0.75, -0.5, 0.5, 1.0, -1.0, -0.75, 0.5, -0.75, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([0.25, 0.75, -1.0, -0.5, -1.0, 1.0, 0.0, -0.25, -0.5, 0.75, 1.0, 0.25, 0.0, 0.0, 1.0, -0.25, -0.5, -0.25, -0.5, 0.75, 0.0, -0.75, -0.25, 0.25, 1.0, 1.0, 1.0, -0.5, -1.0, 0.25, 0.25, 0.75, -1.0, -0.5, -0.75, 0.25, 0.5, -0.5, 1.0, -0.75, 0.5, -0.25, -0.25, -1.0, -0.25, 1.0, 0.5, 0.5, 0.0, 0.0, -0.75, -0.25, 0.5, -0.5, 0.25, -0.5, 0.75, 1.0, -0.5, 0.75, -0.75, 0.5, 0.0, 0.75, 0.5, -0.5, -0.75, 0.75, -1.0, -1.0, 0.25, 0.5, -0.75, 0.0, -0.25, 0.0, 1.0, 1.0, -1.0, -0.25, -0.75, -0.5, -0.25, 1.0, 0.5, 1.0, 1.0, 0.5, -0.25, 0.5, -0.25, 0.25, -0.75, 0.0, 0.75, 0.0, 0.5, -0.75, -0.5, 0.0, ]);
    const array2 = new Float32Array([0.25, 0.25, -0.25, 0.75, 1.0, -0.25, 0.0, 0.75, -0.75, 0.25, -1.0, -1.0, -0.5, 0.5, 0.25, -0.5, 0.0, 0.0, 1.0, -0.25, -0.5, 1.0, 0.0, -0.5, -0.25, -1.0, -1.0, 0.0, 0.5, -0.5, -1.0, 0.0, -0.25, 0.0, -0.75, 0.75, -0.5, -0.5, 1.0, 1.0, -1.0, 0.75, -0.25, 0.5, -0.25, 0.0, 0.5, -0.5, -0.75, 0.75, -1.0, 1.0, -0.25, -0.75, 0.5, 0.5, -0.25, 0.25, 0.75, 0.5, 0.5, 0.0, 0.5, -1.0, -1.0, 0.5, 0.25, -0.5, 0.75, -1.0, 1.0, -0.25, 0.5, 0.25, -0.75, 0.0, 0.75, -0.25, 0.75, 0.0, 1.0, 1.0, 0.0, 0.5, -1.0, 0.0, 0.25, 0.0, -1.0, 0.0, 0.75, -1.0, -0.75, 1.0, -1.0, 0.75, 0.75, 0.5, -0.75, 0.75, ]);
    
    const array3 = new Float32Array([0.25, -0.5, -1.0, 0.5, 0.0, -0.25, 0.25, 0.25, -0.5, 0.0, -0.5, 0.25, 0.75, -0.5, -0.75, 0.5, -1.0, -0.75, -0.75, 1.0, -1.0, 1.0, 0.5, 0.0, 0.5, -0.5, -0.75, -1.0, 0.0, 0.25, -1.0, 0.25, -1.0, -0.25, -1.0, -0.25, 0.5, -0.25, 0.25, 0.75, 0.5, -1.0, 0.75, -0.75, 0.5, 0.75, -0.25, 1.0, -0.5, 0.75, 0.5, -0.25, -0.25, 0.75, 0.0, 0.0, -0.5, 1.0, 0.25, -0.5, -0.5, -0.5, -0.25, -0.75, 0.0, 1.0, -0.25, -1.0, 0.75, -0.5, -0.25, -0.75, -1.0, -0.75, -0.5, 0.5, 0.25, 0.0, -1.0, -0.5, -1.0, -1.0, -0.5, 0.75, 1.0, -0.25, 0.25, -0.75, -0.5, 0.5, 0.0, 0.5, 1.0, 1.0, 0.75, -0.75, -1.0, -1.0, -0.25, -0.75, ]);
    
    const array4 = new Float32Array([0.5, 1.0, -0.25, -0.5, 0.0, 0.5, -0.75, -0.25, 0.5, -1.0, -0.75, 1.0, 0.0, 1.0, -0.75, 0.25, 0.5, 0.0, 0.5, 1.0, -1.0, 1.0, 0.0, -0.5, -0.75, 1.0, -1.0, -0.25, 0.25, -0.5, -0.75, 1.0, -0.75, -1.0, 0.75, -1.0, -1.0, -0.5, -0.5, -1.0, -0.5, 0.5, 0.0, -0.25, 1.0, -1.0, 1.0, 0.5, 0.0, 0.0, -0.25, 0.0, 0.5, 0.0, 0.0, 0.75, 0.5, -1.0, -1.0, -0.25, 0.0, 0.75, -0.25, -1.0, 0.5, 0.0, 0.0, -0.25, -0.5, -0.25, -1.0, 0.25, -0.5, 1.0, -0.75, -0.25, 0.0, -0.25, -0.5, 1.0, 0.25, -0.5, -0.25, 0.25, 1.0, 1.0, -1.0, -0.5, -0.25, -1.0, 1.0, -0.25, 0.0, 0.25, 0.0, -0.5, 0.75, -0.25, 0.75, 0.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device00.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.pushErrorScope("validation");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    command_encoder200.popDebugGroup()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
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
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    
    
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array5 = new Float32Array([0.25, -0.25, 0.0, 0.5, 0.5, 0.25, 0.5, 0.5, 0.25, 0.25, 1.0, 0.25, -0.5, 0.75, -0.25, 0.0, 0.75, 0.75, -1.0, -0.25, -0.75, -0.5, -0.75, 0.5, 1.0, -0.75, 0.0, -0.75, 0.25, 1.0, 0.25, 0.75, -1.0, 0.25, 0.0, -0.75, -0.25, 1.0, -0.5, 0.75, -0.25, 0.75, 1.0, 1.0, 1.0, -0.5, -0.25, 1.0, 0.0, -1.0, 0.75, -0.75, -0.25, 1.0, -0.75, 0.75, 0.0, -0.25, 1.0, 0.5, -0.75, 0.0, -0.25, 0.25, 0.0, 0.25, 0.25, 0.0, 0.0, 1.0, 0.25, -0.75, 1.0, -0.25, 1.0, 0.75, 0.25, -0.5, -0.5, 1.0, -0.5, 1.0, 0.0, -0.5, 0.0, -0.25, -0.75, -1.0, 0.0, -1.0, -0.75, 0.75, 0.0, 0.5, 0.75, -0.75, -0.5, 0.0, -0.75, 0.5, ]);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const array6 = new Float32Array([-0.25, 0.75, 0.0, -0.25, 1.0, 1.0, -0.5, -0.5, 0.75, 0.0, -1.0, 1.0, 0.5, -1.0, 0.0, 0.0, 0.0, -0.75, -0.75, 1.0, 0.75, 0.5, -0.5, 0.0, -0.25, 1.0, 1.0, 0.0, 0.5, 0.0, -0.25, -0.75, -0.5, 0.25, 0.25, 0.75, 0.75, 0.25, -1.0, -0.5, 0.75, 0.25, 0.5, -1.0, 0.0, -0.5, -0.75, 0.75, -0.25, -0.75, -0.25, -0.75, -1.0, -0.75, 0.0, -0.25, -0.75, -0.5, -1.0, -1.0, -1.0, -0.5, 1.0, -0.25, 0.75, 0.75, 0.25, 0.75, -0.25, -0.25, 0.25, 0.0, 0.75, -0.75, -0.5, 0.0, 0.0, -0.5, 0.25, 0.25, 0.5, 0.5, 1.0, 0.0, -1.0, 0.0, -0.5, -0.5, 0.0, -0.25, 0.75, 1.0, -0.5, -0.75, -0.75, -0.5, -1.0, -0.25, -0.75, 0.75, ]);
    
    
    
    buffer200.destroy()
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3010.popDebugGroup()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    
    query300.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    texture300.destroy();
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device30.pushErrorScope("out-of-memory");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder3000.insertDebugMarker("marker");
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    render_pass_encoder2000.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    query300.destroy()
    query200.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture201.destroy();
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer201.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    device40.pushErrorScope("validation");
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
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
    render_bundle_encoder200.setPipeline(render_pipeline202);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const array7 = new Float32Array([0.0, -1.0, -0.75, -0.5, -0.5, -1.0, 0.5, 0.75, -0.25, 0.25, 0.25, 0.75, -0.25, -1.0, -0.5, -0.25, 1.0, 0.5, -0.25, -0.25, 0.75, 0.25, 0.0, 0.25, -0.25, -1.0, 1.0, 0.5, -0.25, -1.0, -0.25, 0.75, -1.0, 1.0, 0.25, 0.5, -0.75, 0.75, 1.0, -0.5, 0.25, 1.0, 1.0, -0.75, 0.25, 1.0, 1.0, 0.75, 0.5, 0.25, -0.75, 0.5, 0.25, 0.75, 0.75, 0.0, 1.0, -0.75, 0.0, 1.0, -0.25, 0.25, 0.75, -0.75, -0.25, -0.5, 0.0, 0.5, -0.75, 0.5, 0.75, 0.5, -0.25, -0.75, -0.75, -0.75, 0.0, -0.5, 0.0, 0.25, -1.0, -0.75, -1.0, -1.0, 0.0, -1.0, 0.75, 1.0, -0.5, 0.0, 0.25, 0.5, 0.75, -0.75, 0.0, -0.5, -1.0, -0.75, -1.0, -0.75, ]);
    buffer202.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    
    
    
    
    render_pass_encoder2000.executeBundles([])
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2000.setPipeline(render_pipeline200);
    render_pass_encoder3000.setStencilReference(1);
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
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
    
    texture302.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_pass_encoder2000.insertDebugMarker("marker");
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query300.destroy()
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query100.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device50.pushErrorScope("validation");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    buffer203.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder3000.setStencilReference(1);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    buffer501.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    texture200.destroy();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    query100.destroy()
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    render_bundle_encoder500.popDebugGroup();
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    device60.destroy();
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder401.popDebugGroup();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    render_bundle_encoder200.popDebugGroup();
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const array8 = new Float32Array([0.25, -0.75, -1.0, -0.5, 0.75, 1.0, 0.75, 1.0, 1.0, -0.5, 0.0, -0.25, -0.75, 0.75, -0.5, 0.5, -0.5, 0.5, 0.75, 0.25, 0.0, 0.25, -0.5, 0.0, -0.5, -0.75, -0.5, -1.0, 0.0, 0.25, -0.75, 1.0, 0.5, -0.75, -0.5, -1.0, 0.0, -0.25, 0.75, -0.75, 1.0, -0.25, 0.5, 0.5, 0.75, 0.0, -0.75, 0.25, -0.5, -1.0, 0.5, -0.25, -0.75, 0.0, 0.75, -0.25, -0.75, 1.0, 0.75, 0.0, -1.0, 1.0, -1.0, 0.5, -1.0, 0.75, 0.5, 0.0, 0.0, -0.25, 1.0, 0.5, -0.25, 0.25, 0.25, -0.25, 1.0, 0.0, -0.25, 0.5, 0.5, -1.0, -0.25, -0.5, 1.0, -0.25, 0.0, 0.75, -0.5, -0.75, -0.5, 0.5, 0.25, -0.5, -1.0, -1.0, -1.0, -0.25, 0.25, -1.0, ]);
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder402.pushDebugGroup("group_marker");
    buffer500.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
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
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder3000.setPipeline(render_pipeline300);
    
    
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
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
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    query100.destroy()
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    texture102.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query201.destroy()
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
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
    
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder3000.insertDebugMarker("marker");
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
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
    query100.destroy()
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    query201.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    buffer502.destroy()
    render_bundle_encoder402.popDebugGroup();
    device10.destroy();
    
    
    buffer301.destroy()
    
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    render_bundle_encoder201.insertDebugMarker("marker");
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
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query300.destroy()
    
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    buffer206.destroy()
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.popDebugGroup();
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder201.setPipeline(render_pipeline202);
    render_pass_encoder3000.pushDebugGroup("group_marker");
    query300.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([0.0, -0.75, 0.5, 0.75, 0.0, 0.75, -0.5, 0.0, -1.0, 0.25, -0.75, 0.75, -0.75, 1.0, 0.0, 0.5, -0.25, -1.0, 0.25, -1.0, 1.0, 0.75, 1.0, -0.75, 0.5, 0.25, 0.25, 0.25, -0.75, 1.0, -0.5, 1.0, 0.5, -0.5, -1.0, 0.5, -0.25, -0.5, 0.0, 0.5, 0.75, 0.75, -0.5, 0.0, 0.0, 0.75, 0.25, 0.25, 1.0, -0.25, 0.25, -0.75, -0.25, 0.5, 0.0, -0.5, -0.5, 0.5, 0.0, -0.75, 0.0, 0.5, 0.25, 0.0, -0.5, 0.5, -0.75, 1.0, 0.25, 0.25, 0.5, 0.25, 0.75, -0.5, 0.0, 1.0, -0.25, 0.75, 0.5, -0.75, -0.25, -1.0, 1.0, 0.75, 0.25, -0.5, 0.75, 0.0, 1.0, 0.75, -0.25, 0.75, 0.5, -0.25, -0.5, 0.75, 0.75, 1.0, 1.0, 0.25, ]);
    
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_bundle_encoder500.setPipeline(render_pipeline501);
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device30.pushErrorScope("internal");
    render_bundle_encoder301.setPipeline(render_pipeline303);
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_bundle_encoder401.setPipeline(render_pipeline400);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query200.destroy()
    
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    texture301.destroy();
    
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
        layout: render_pipeline303.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    buffer402.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    buffer400.destroy()
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    buffer303.destroy()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    query401.destroy()
    const sampler504 = device50.createSampler( { label: "sampler504" } );
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
    
    render_bundle_encoder402.setPipeline(render_pipeline400);
    
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer300.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer504.destroy()
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device30.pushErrorScope("internal");
    
    
    
    render_bundle_encoder402.popDebugGroup();
    
    query401.destroy()
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3020.setPipeline(render_pipeline302);
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer305.destroy()
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    compute_pass_encoder4000.popDebugGroup()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group301);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group302);
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
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline501.getBindGroupLayout(0),
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

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer507, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer507, 0);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    compute_pass_encoder5000.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2010.end();
    render_pass_encoder2000.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder500.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
}