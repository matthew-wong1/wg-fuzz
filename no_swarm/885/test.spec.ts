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
    const array0 = new Float32Array([-1.0, 0.0, -0.75, -0.25, 0.0, 0.25, 1.0, 0.5, 0.5, -0.25, -0.75, 1.0, -0.5, -0.75, -0.25, -0.25, -0.25, 0.5, 0.5, -1.0, 0.5, 0.75, -0.5, 1.0, -0.25, -1.0, 1.0, 1.0, 0.5, -0.5, -1.0, 0.25, 0.0, -0.5, -0.75, -1.0, -0.75, -0.5, 0.25, 0.25, 0.25, -0.5, -1.0, 0.5, -1.0, 0.5, 0.0, -0.5, 1.0, -0.75, 1.0, 0.0, 0.5, 0.25, 0.5, -0.5, 0.75, 1.0, -0.75, -0.25, 1.0, 0.0, -0.75, -1.0, 0.25, 0.25, 0.75, 0.25, 1.0, 0.5, 0.75, -0.25, 1.0, 0.75, -0.25, 0.25, 1.0, -0.25, -0.5, -0.75, 0.75, 0.75, 1.0, -0.5, 0.25, 0.0, -0.5, 0.25, 0.5, 0.0, -1.0, 1.0, -0.75, 0.75, -0.5, -0.5, 0.0, -0.75, -0.5, 0.75, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.destroy();
    
    
    
    
    
    const array1 = new Float32Array([0.25, 0.25, 0.25, -0.25, -0.75, -1.0, 1.0, -0.25, -1.0, 0.25, 0.75, 0.0, 0.75, -0.5, 0.0, 0.0, -0.5, 0.75, 0.5, 0.25, 0.0, 0.75, 0.75, 0.5, 0.25, -0.75, 0.5, 1.0, -0.75, -0.5, 0.5, 0.75, -1.0, 0.75, -0.25, -1.0, 0.25, -0.25, -0.5, 0.5, 1.0, 0.0, 0.5, 0.25, 0.75, 0.5, 1.0, 0.5, -0.5, 0.75, 0.75, 0.75, 0.75, 0.75, -0.75, 0.5, 0.5, 0.75, 0.5, 0.75, 0.75, 0.0, 0.75, -1.0, 0.75, 0.25, -0.5, -1.0, 1.0, 0.75, 0.25, 0.25, 0.25, 0.75, -1.0, 0.75, 0.0, -0.75, 0.5, 0.75, 0.25, 1.0, -0.5, -0.75, -0.75, 0.25, 0.0, 0.5, 1.0, -0.25, -0.5, -1.0, 0.0, 1.0, -1.0, -0.5, 0.25, -0.75, -1.0, -0.25, ]);
    
    
    
    const array2 = new Float32Array([0.75, -0.75, -0.25, 0.75, 1.0, -0.5, -0.5, -1.0, -0.75, 0.25, -0.25, 1.0, -1.0, 0.25, 0.75, 0.0, -0.25, 0.5, -1.0, -0.25, -0.25, 0.5, -0.25, 0.0, -0.75, 0.75, -0.5, 0.25, 0.5, 0.5, 0.0, -0.25, -0.75, -0.5, 0.0, -0.75, 0.75, 0.0, -0.25, 0.75, 1.0, 0.0, 0.0, -0.25, -0.25, 0.5, 0.25, -0.75, 0.75, 0.75, 0.75, 0.0, 0.5, -0.75, 0.25, 0.0, 1.0, -0.75, 0.0, -0.75, 1.0, 1.0, -1.0, 0.75, 0.25, 0.25, 0.75, -1.0, -0.75, 1.0, 0.75, 0.75, -0.25, -0.5, 0.75, 0.0, 0.5, -0.25, 0.25, 0.0, 1.0, -0.25, -0.5, 0.75, 0.25, -0.5, -0.25, 0.0, -0.25, -1.0, -0.25, -0.25, 0.0, 0.5, -0.25, 0.75, 0.5, -1.0, 0.0, 0.5, ]);
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-0.25, 1.0, 0.25, 1.0, -0.75, -1.0, 0.5, 0.5, -0.5, -0.5, -0.5, 0.0, 0.5, -1.0, 0.5, -0.5, -1.0, -0.25, 0.5, -0.25, 0.0, -0.5, 0.25, -0.25, 0.0, -0.25, -0.5, 0.0, -0.75, -0.25, -0.25, -1.0, -0.75, 0.5, -0.5, -0.5, 0.5, -0.25, -1.0, -0.25, -0.25, -0.75, 1.0, 0.5, 1.0, 0.0, 0.25, 1.0, -0.5, 0.25, 0.25, -0.5, 0.5, 0.25, 1.0, 0.25, -0.75, 0.25, 0.0, 0.0, -1.0, -0.75, 0.75, -0.5, 0.75, -0.75, 0.5, -0.25, 0.25, 0.25, -0.5, -0.25, 0.5, -0.75, 0.75, -0.25, -0.25, -0.25, -0.5, -0.5, -0.75, 0.25, -0.5, -0.75, 1.0, 0.0, 0.75, 1.0, 0.75, -0.75, 0.25, 0.0, 0.75, 0.0, 0.75, 0.0, -0.5, -0.75, -0.5, -0.75, ]);
    const array4 = new Float32Array([0.5, -0.75, 0.25, -0.25, -0.75, 0.0, -1.0, -0.5, -0.75, -0.25, 1.0, 0.5, -0.5, -1.0, -0.25, 0.5, 1.0, 0.75, -0.75, 1.0, -0.75, 0.5, 0.25, 0.75, 1.0, -1.0, 1.0, -1.0, 0.25, 0.25, 1.0, 0.5, -0.75, -0.25, 0.0, -0.25, -1.0, 1.0, 0.25, 0.5, 0.25, 0.75, 1.0, -0.75, -0.75, 1.0, 0.5, -1.0, 0.5, 0.5, 0.75, -0.5, -1.0, 0.75, 0.5, 0.5, -0.25, -0.25, 1.0, 0.25, -0.75, 1.0, -0.75, -0.5, 0.25, 0.5, 0.75, -0.5, 0.25, 0.25, 1.0, 1.0, 0.5, 0.75, 0.0, -0.75, 0.25, 1.0, -0.5, -1.0, 0.75, -0.5, 0.5, -1.0, -0.5, -0.75, 0.25, -0.75, 0.25, 0.75, 0.0, -0.5, 1.0, 0.5, -0.75, 0.5, 0.75, 0.0, 0.25, 1.0, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.pushErrorScope("out-of-memory");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder200.popDebugGroup();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    texture202.destroy();
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    texture200.destroy();
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    texture201.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    query200.destroy()
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
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
        occlusionQuerySet: query201
    });
    buffer201.destroy()
    render_pass_encoder2000.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    query201.destroy()
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    buffer200.destroy()
    texture300.destroy();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder300.insertDebugMarker("mymarker");
    device20.pushErrorScope("internal");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const array5 = new Float32Array([1.0, -0.5, 0.25, 1.0, -0.75, -1.0, 0.75, 0.25, 0.75, 0.25, -0.25, -0.5, -0.25, -1.0, -0.5, -1.0, -0.25, -0.25, 0.0, 0.5, 0.25, 0.5, 1.0, -0.25, -1.0, -1.0, 0.25, 0.75, -0.25, -0.75, 0.25, -0.25, -0.75, -1.0, 0.0, 0.75, -1.0, 0.25, -0.5, 0.0, 0.25, 0.5, 0.0, -0.5, -0.75, -0.25, 0.0, -0.5, -0.5, 0.25, -0.75, -0.25, -0.75, 1.0, 0.5, 0.0, -0.5, 0.0, -1.0, -1.0, -0.25, -0.25, -0.5, 0.0, -0.5, -0.5, 1.0, 0.5, 0.75, 1.0, -1.0, -0.25, -0.75, 0.5, -0.75, -0.75, 0.5, -0.75, 0.75, 0.5, -0.5, 0.5, -0.25, -0.75, -0.75, -0.75, 0.0, -0.25, 0.5, 0.5, 0.25, -0.75, -0.75, 0.25, 0.5, 0.0, -1.0, -0.5, 0.75, -1.0, ]);
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    buffer300.destroy()
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const array6 = new Float32Array([-0.25, -0.75, 0.25, 0.0, -0.75, -0.5, 1.0, 0.5, -0.75, -0.75, -0.75, -0.75, 1.0, -0.75, 0.5, 0.0, 0.5, -1.0, -0.75, -0.25, -0.25, 0.75, -1.0, 0.0, -0.5, 0.75, -1.0, 0.5, 0.5, 0.0, -1.0, -0.25, -0.75, 0.0, 1.0, -0.5, 0.5, 1.0, 0.0, -0.5, 0.5, 0.5, -0.75, -0.5, -1.0, -1.0, -0.25, -0.75, -0.25, 1.0, -1.0, -0.5, 0.75, 0.75, 0.75, -1.0, 1.0, -0.5, -0.5, -0.75, -0.5, -0.5, -1.0, 0.0, 0.5, 1.0, 0.25, 0.75, 1.0, 0.5, 0.25, -0.25, 0.5, -0.25, 0.75, 0.0, 1.0, -0.5, 1.0, -1.0, -1.0, -0.25, -0.25, 0.0, -0.75, -1.0, 0.0, -0.75, -1.0, 0.25, -0.25, 0.25, -0.5, 0.0, 1.0, -0.5, -0.5, 1.0, -0.25, -0.25, ]);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder2010.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder2000.setStencilReference(1);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer301.destroy()
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    command_encoder301.insertDebugMarker("mymarker");
    render_pass_encoder2000.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    texture302.destroy();
    
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    
    query300.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder2000.pushDebugGroup("group_marker");
    texture203.destroy();
    
    command_encoder301.insertDebugMarker("mymarker");
    device50.pushErrorScope("internal");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.pushErrorScope("validation");
    
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    buffer202.destroy()
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder2000.popDebugGroup();
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
        occlusionQuerySet: query201
    });
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder2020.executeBundles([])
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query202.destroy()
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2020.executeBundles([])
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    render_pass_encoder2020.setStencilReference(1);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    render_pass_encoder2010.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2030.setStencilReference(1);
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device40.destroy();
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2020.setStencilReference(1);
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2010.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer302 = command_encoder302.finish();
    command_encoder301.insertDebugMarker("mymarker");
    
    compute_pass_encoder2040.insertDebugMarker("marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder303.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    render_pass_encoder2020.setStencilReference(1);
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
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
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    device30.pushErrorScope("validation");
    
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture205.destroy();
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setStencilReference(1);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder2000.setPipeline(render_pipeline200);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder201.setPipeline(render_pipeline200);
    render_pass_encoder2000.setStencilReference(1);
    
    render_bundle_encoder200.popDebugGroup();
    texture204.destroy();
    
    compute_pass_encoder2040.pushDebugGroup("group_marker")
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

    render_pass_encoder2000.setBindGroup(0, bind_group200);
    const command_buffer600 = command_encoder600.finish();
    
    query203.destroy()
    query301.destroy()
    
    render_pass_encoder2030.setStencilReference(1);
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    
    compute_pass_encoder3030.insertDebugMarker("marker")
    
    
    query300.destroy()
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    buffer501.destroy()
    render_pass_encoder2020.setStencilReference(1);
    
    render_pass_encoder2010.setPipeline(render_pipeline200);
    
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    buffer502.destroy()
    
    render_pass_encoder2010.popDebugGroup();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    
    render_bundle_encoder201.popDebugGroup();
    
    render_pass_encoder2020.insertDebugMarker("marker");
    
    texture301.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.pushErrorScope("internal");
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    buffer204.destroy()
    render_pass_encoder2030.popDebugGroup();
    
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
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder202.setPipeline(render_pipeline200);
    buffer500.destroy()
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    buffer600.destroy()
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
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

    render_bundle_encoder202.setBindGroup(0, bind_group202);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device60.pushErrorScope("validation");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder300.popDebugGroup();
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    query300.destroy()
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
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
    
    render_bundle_encoder301.insertDebugMarker("marker");
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
    query301.destroy()
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2040.setPipeline(compute_pipeline200);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2050.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    render_bundle_encoder500.setPipeline(render_pipeline501);
    buffer203.destroy()
    compute_pass_encoder3000.popDebugGroup()
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    render_bundle_encoder301.setPipeline(render_pipeline303);
    
    render_pass_encoder2030.insertDebugMarker("marker");
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2030.setPipeline(render_pipeline203);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2000.setStencilReference(1);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder2020.setPipeline(render_pipeline204);
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
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
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group203);
    render_pass_encoder2050.setPipeline(render_pipeline204);
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    compute_pass_encoder3030.insertDebugMarker("marker")
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    buffer302.destroy()
    
    texture600.destroy();
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.popDebugGroup();
    
    buffer303.destroy()
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2040.popDebugGroup()
    
    render_pass_encoder2000.setStencilReference(1);
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    buffer209.destroy()
    render_pass_encoder2050.insertDebugMarker("marker");
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline303.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
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

    render_bundle_encoder200.setBindGroup(0, bind_group204);
    buffer503.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder206.insertDebugMarker("mymarker");
    
    render_pass_encoder2050.setStencilReference(1);
    
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder206.insertDebugMarker("mymarker");
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    
    
    
    
    
    
    const command_buffer500 = command_encoder500.finish();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    buffer2010.destroy()
    query300.destroy()
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    buffer207.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
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
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device60.queue.submit([command_buffer600, ]);
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3040.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
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
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group205);
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    device60.destroy();
    render_pass_encoder3040.setPipeline(render_pipeline305);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    render_bundle_encoder202.popDebugGroup();
    texture303.destroy();
    
    render_pass_encoder2060.setPipeline(render_pipeline205);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.queue.submit([command_buffer302, ]);
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
        layout: render_pipeline205.getBindGroupLayout(0),
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

    render_pass_encoder2060.setBindGroup(0, bind_group206);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2040.setBindGroup(0, bind_group207);
    const command_buffer207 = command_encoder207.finish();
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2000.popDebugGroup();
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
        layout: render_pipeline305.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group301);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder3040.setVertexBuffer(0, buffer300);
    compute_pass_encoder2040.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder3040.draw(3);
    render_pass_encoder3040.end();
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
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2050.setBindGroup(0, bind_group208);
    device20.queue.submit([command_buffer204, ]);
    const command_buffer304 = command_encoder304.finish();
}