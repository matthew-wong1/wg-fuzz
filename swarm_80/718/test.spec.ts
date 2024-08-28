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
    
    const array0 = new Float32Array([-0.25, -0.5, 0.0, 0.25, 1.0, -0.75, 0.25, 0.0, -1.0, -0.75, 0.75, -1.0, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.0, -0.5, 1.0, 1.0, 0.5, 0.75, -0.5, -0.25, -0.25, -0.25, -0.25, -1.0, -0.75, -0.5, -0.75, -1.0, 1.0, -0.25, -1.0, 1.0, 0.0, -0.5, -1.0, 0.5, -1.0, -0.5, 1.0, -0.5, 0.25, -1.0, -0.75, -0.25, 0.0, 1.0, 1.0, -0.25, 1.0, 1.0, 1.0, -0.75, -0.25, 0.0, 1.0, 0.75, -1.0, 0.25, 0.0, -0.25, -0.75, 0.5, 0.0, -0.5, -1.0, 0.25, 0.75, -0.5, -0.75, -1.0, -1.0, -1.0, 1.0, -0.25, 0.0, -0.25, 0.25, 0.75, 0.75, 1.0, -0.75, 1.0, 0.0, 1.0, 0.25, 0.5, 0.25, -1.0, -0.75, 0.75, -0.25, -1.0, 1.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.75, -1.0, 0.75, -0.75, 1.0, 0.0, 0.5, 1.0, 0.75, 0.25, -0.25, 0.75, 0.25, -0.25, 0.5, 0.75, -1.0, 0.0, 1.0, 0.25, 0.0, -0.75, 0.5, -0.5, 0.0, -1.0, -1.0, -1.0, -0.75, 0.75, 0.5, 0.0, -0.25, -1.0, -0.75, 0.5, -1.0, -1.0, 0.5, -0.25, -1.0, 1.0, 0.75, 0.0, -0.75, -0.75, -0.25, 0.5, -1.0, 0.0, -0.5, -0.5, -0.25, 0.5, -0.75, -0.75, -0.5, -0.25, -0.5, -0.25, 1.0, -0.25, 0.25, 0.0, -1.0, -0.5, -0.5, -1.0, -0.75, 1.0, 0.0, 0.25, -0.25, -1.0, -0.5, -0.25, -0.5, 0.5, -0.25, 0.75, 1.0, -0.5, -1.0, 0.75, 0.25, 0.5, -0.25, -0.25, 1.0, -0.5, 0.25, -0.75, -0.75, 0.5, -1.0, 0.0, 0.0, 0.5, 0.0, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    
    
    const array2 = new Float32Array([0.5, 0.25, 1.0, -1.0, 0.5, -0.75, -0.5, -1.0, -0.25, -0.25, -0.75, -1.0, -0.5, 0.0, -0.25, 0.75, -0.25, -0.75, 1.0, -0.25, -0.25, -1.0, -0.5, 1.0, 1.0, 0.5, 0.75, 0.25, 1.0, -1.0, 0.0, -0.75, 0.75, 1.0, 1.0, 1.0, 0.25, 0.0, 0.75, 0.0, -0.75, 0.5, -1.0, -0.75, -1.0, -0.25, -0.5, 0.25, 1.0, 1.0, -1.0, 0.25, 0.25, 0.5, 0.5, -1.0, -0.75, 1.0, -0.75, -0.5, -1.0, -0.5, 0.0, -1.0, 0.75, 0.5, 1.0, -0.25, -0.25, 0.5, 1.0, 0.75, 0.25, 0.25, 0.0, 0.5, -1.0, 0.5, 0.75, -1.0, 1.0, 1.0, 0.5, 0.5, -0.5, 1.0, 1.0, 0.5, 0.25, 0.25, 1.0, 1.0, -0.25, 0.5, -0.5, -0.25, 0.0, -0.5, 0.75, 0.25, ]);
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array3 = new Float32Array([-1.0, 0.75, -0.25, 0.25, -1.0, -1.0, -1.0, 0.5, 0.75, 0.25, -0.25, -0.5, 0.25, 1.0, 0.0, -0.25, 0.25, 1.0, -0.75, 0.0, -0.75, 0.0, -1.0, 0.5, -1.0, 0.25, -1.0, 0.5, -1.0, 0.25, -0.25, -0.5, -0.5, 0.5, -0.75, 0.5, -0.75, 0.0, 0.25, -1.0, -0.75, -0.75, -1.0, 1.0, 0.5, 1.0, 0.5, 0.25, -1.0, 1.0, 1.0, 0.0, -0.75, -0.75, 0.5, -0.75, 0.0, 0.5, 0.75, 1.0, 0.5, 0.5, -0.5, 0.25, -0.5, -0.5, -0.25, -1.0, -1.0, -0.75, -1.0, -0.5, 0.25, 0.75, -0.25, -0.5, 0.0, -0.25, 0.75, 0.25, 0.75, 0.5, -0.75, 1.0, 0.0, -0.5, -0.25, 0.25, 0.5, -0.75, -0.5, -0.5, 0.75, 0.75, -1.0, 0.25, 0.5, 0.25, -1.0, -0.25, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    render_bundle_encoder200.insertDebugMarker("marker");
    texture200.destroy();
    const array4 = new Float32Array([-0.75, 0.25, -0.25, 1.0, 1.0, 0.75, -1.0, -0.25, -0.75, -0.25, 1.0, -1.0, 0.25, 0.25, -0.75, 1.0, -0.75, -1.0, -0.5, -0.5, 0.5, 0.25, 0.75, 1.0, 0.5, 0.0, 0.75, 1.0, 0.25, -0.75, 0.25, -1.0, -0.25, -0.75, 0.75, -1.0, -1.0, 0.75, -0.75, 0.5, 0.0, -1.0, 0.0, 0.5, -0.5, 0.25, -0.75, 0.25, -0.75, 0.0, -1.0, 1.0, -0.5, -1.0, -1.0, 0.75, 0.0, -0.25, -0.25, 0.5, -0.5, 0.75, -0.75, -1.0, -0.75, -0.25, -0.75, 0.75, -0.75, 0.0, -0.75, 0.25, -0.75, -0.25, -0.75, 1.0, -0.5, -0.5, 1.0, 0.25, -0.25, -1.0, 0.5, -0.75, -1.0, -0.25, -0.5, 0.5, 1.0, 0.25, 0.75, 0.25, 0.25, 0.0, 0.75, -0.5, 0.75, 0.75, 0.5, -0.25, ]);
    
    
    render_bundle_encoder200.popDebugGroup();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const array5 = new Float32Array([1.0, -0.5, 1.0, -1.0, 0.0, 0.5, -0.5, 0.0, 0.5, 0.0, 1.0, -0.5, 0.75, 0.75, 0.25, 0.5, 0.5, -0.75, 0.75, 0.75, 1.0, -0.25, 0.5, -0.75, -0.5, 0.75, -0.25, 0.75, -1.0, 1.0, -0.5, 0.25, 0.25, 0.5, 0.0, 0.75, 0.5, 0.25, -0.5, -1.0, 0.0, -1.0, -0.25, 0.75, -0.75, -1.0, -1.0, -0.25, -0.25, 0.0, -0.5, 1.0, 0.5, -1.0, -1.0, 0.5, 1.0, -0.75, -0.75, 0.75, -0.75, -0.5, -0.5, 0.25, 0.75, 0.5, 0.5, -0.75, -0.5, -1.0, -0.25, 0.0, 1.0, 0.25, 0.25, -1.0, 0.25, 0.25, 0.75, 0.75, -1.0, 0.5, -0.25, 1.0, -0.25, 1.0, -0.75, -1.0, 0.75, -0.75, 0.25, 0.75, -1.0, 0.75, -0.5, 1.0, 0.5, -0.75, 0.75, -0.25, ]);
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
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
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const array6 = new Float32Array([0.5, -0.5, -0.75, -1.0, -1.0, 1.0, -1.0, 0.0, 0.0, -0.25, -0.25, 0.75, 0.75, 0.25, 1.0, -0.75, 1.0, 1.0, -0.25, 0.25, 1.0, -0.25, 1.0, 0.5, 0.25, 0.5, -0.25, 1.0, 0.5, 0.0, -1.0, -0.5, 0.25, -0.5, 0.0, 0.25, -1.0, -0.25, 0.5, 0.5, -0.25, 0.25, -0.75, -0.5, 0.0, 0.5, -0.5, 0.0, 0.75, 0.75, -0.75, 1.0, -0.5, 0.75, -1.0, -0.75, 1.0, -0.5, 0.5, 0.0, -0.75, 0.5, -0.25, -0.75, -0.75, 1.0, 0.5, 0.0, -0.5, 0.5, 0.5, 1.0, -0.5, 1.0, -0.75, -1.0, -0.5, -1.0, 0.25, 0.75, 1.0, -0.25, -0.75, 0.5, -0.5, 0.75, 0.25, -0.5, -0.75, -0.5, -0.25, 0.25, 0.0, 1.0, 0.75, 0.0, -1.0, 0.75, -0.75, -0.75, ]);
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
    render_pass_encoder4000.insertDebugMarker("marker");
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
    render_pass_encoder4000.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device50.pushErrorScope("validation");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_pass_encoder4000.executeBundles([])
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    device20.pushErrorScope("validation");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    texture402.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device40.pushErrorScope("validation");
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device40.pushErrorScope("internal");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    texture100.destroy();
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    texture400.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    device20.pushErrorScope("out-of-memory");
    render_pass_encoder2000.insertDebugMarker("marker");
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
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    texture201.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture401.destroy();
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder100.insertDebugMarker("mymarker");
    render_pass_encoder4000.pushDebugGroup("group_marker");
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder2000.setStencilReference(1);
    buffer200.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer203.destroy()
    buffer500.destroy()
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    
    command_encoder402.insertDebugMarker("mymarker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder400.insertDebugMarker("marker");
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
    render_bundle_encoder201.insertDebugMarker("marker");
    buffer202.destroy()
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder4000.popDebugGroup();
    buffer201.destroy()
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder4000.insertDebugMarker("marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    
    buffer401.destroy()
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    
    const command_buffer402 = command_encoder402.finish();
    texture403.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    texture101.destroy();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    buffer204.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder4000.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    buffer100.destroy()
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    const command_buffer201 = command_encoder201.finish();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    device10.queue.submit([command_buffer100, ]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer101 = command_encoder101.finish();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    device60.pushErrorScope("out-of-memory");
    device50.pushErrorScope("validation");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder401.insertDebugMarker("mymarker");
    
    buffer400.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    buffer403.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    texture202.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
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
    
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
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
    
    render_bundle_encoder201.popDebugGroup();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4010.insertDebugMarker("marker");
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    texture203.destroy();
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const bind_group_layout208 = device20.createBindGroupLayout({ 
        label: "bind_group_layout208",
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer101.destroy()
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
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4010.insertDebugMarker("marker");
    
    render_pass_encoder4010.pushDebugGroup("group_marker");
    texture102.destroy();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_pass_encoder2000.popDebugGroup();
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
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
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    device60.pushErrorScope("internal");
    render_pass_encoder4000.setStencilReference(1);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_bundle_encoder202.popDebugGroup();
    
    buffer402.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const array7 = new Float32Array([0.0, -0.25, 1.0, -0.75, -1.0, -0.5, 0.5, 1.0, 0.0, 0.0, -0.5, -0.5, -1.0, 0.75, -0.25, 0.25, 0.5, -0.75, 1.0, -1.0, 0.75, -0.75, -0.75, -0.75, 1.0, -1.0, 0.25, 0.25, 0.5, -0.25, 0.25, -0.5, -0.75, 0.0, 0.25, -0.5, 0.75, -0.25, 0.5, -0.25, -0.25, 0.5, -0.25, -1.0, -0.25, 0.75, 1.0, -1.0, -0.5, 0.75, 0.0, -0.75, 0.25, 0.75, 0.0, -1.0, 0.0, -0.5, 0.75, -1.0, -1.0, 0.5, -1.0, 0.25, -0.75, 0.5, 1.0, 1.0, 0.25, 0.75, 0.0, 1.0, -0.5, -0.25, -1.0, 0.0, 0.0, 0.5, 1.0, -0.25, -0.25, 0.25, 0.5, 1.0, 1.0, -0.75, -0.75, -0.25, 0.5, 0.0, 0.0, 0.75, 0.5, 0.0, -0.5, -0.5, 1.0, 0.25, -0.5, 0.0, ]);
    
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
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    render_pass_encoder4030.insertDebugMarker("marker");
    
    const command_buffer300 = command_encoder300.finish();
    render_bundle_encoder201.insertDebugMarker("marker");
    buffer300.destroy()
    
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder4030.executeBundles([])
    render_pass_encoder2000.setStencilReference(1);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device50.destroy();
    render_pass_encoder4000.setStencilReference(1);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    render_pass_encoder4000.insertDebugMarker("marker");
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device60.pushErrorScope("internal");
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    render_bundle_encoder401.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
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
    render_pass_encoder2000.setStencilReference(1);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_pass_encoder4000.pushDebugGroup("group_marker");
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    render_pass_encoder6000.pushDebugGroup("group_marker");
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder6000.executeBundles([])
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    render_pass_encoder6000.insertDebugMarker("marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder6000.popDebugGroup();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device40.pushErrorScope("out-of-memory");
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    render_pass_encoder4030.executeBundles([])
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    command_encoder102.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const texture_view6003 = texture600.createView({ label: "texture_view6003" });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    render_pass_encoder2000.insertDebugMarker("marker");
    buffer205.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder4030.setStencilReference(1);
    texture600.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4010.insertDebugMarker("marker");
    
    render_pass_encoder4010.insertDebugMarker("marker");
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6002,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    device60.pushErrorScope("validation");
    render_bundle_encoder200.popDebugGroup();
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder4030.insertDebugMarker("marker");
    
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const command_buffer404 = command_encoder404.finish();
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
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder6020.executeBundles([])
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder6020.executeBundles([])
    
    
    render_pass_encoder4000.setStencilReference(1);
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder6020.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder4000.setStencilReference(1);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout209 = device20.createBindGroupLayout({ 
        label: "bind_group_layout209",
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
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    render_pass_encoder4030.pushDebugGroup("group_marker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder4000.insertDebugMarker("marker");
    
    
    render_pass_encoder2000.insertDebugMarker("marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    buffer600.destroy()
    device10.queue.submit([command_buffer101, ]);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder6010.insertDebugMarker("marker");
    
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder202.insertDebugMarker("mymarker");
    
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder6020.popDebugGroup();
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
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
    render_pass_encoder4030.executeBundles([])
    device30.queue.submit([command_buffer300, ]);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    command_encoder103.pushDebugGroup("mygroupmarker")
    texture300.destroy();
    render_bundle_encoder402.popDebugGroup();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    command_encoder102.insertDebugMarker("mymarker");
    render_pass_encoder6030.setStencilReference(1);
    render_pass_encoder4030.insertDebugMarker("marker");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder6010.setStencilReference(1);
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device20.queue.submit([command_buffer201, ]);
    command_encoder103.clearBuffer(buffer102);
    render_pass_encoder2020.executeBundles([])
    render_bundle_encoder402.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    buffer601.destroy()
    
    
    render_pass_encoder4030.popDebugGroup();
    const command_buffer604 = command_encoder604.finish();
    render_pass_encoder2000.popDebugGroup();
    device40.queue.submit([command_buffer404, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4000.popDebugGroup();
    device60.queue.submit([command_buffer604, ]);
}