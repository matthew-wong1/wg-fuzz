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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.destroy();
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_buffer300 = command_encoder300.finish();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device30.queue.submit([command_buffer300, ]);
    const command_buffer200 = command_encoder200.finish();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.popDebugGroup();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    const array0 = new Float32Array([-0.75, 0.0, 1.0, 0.75, -0.75, 1.0, -0.75, -0.5, -0.5, -0.5, -1.0, 0.5, 0.25, 0.25, 0.75, 0.5, -0.5, -0.75, -0.25, -0.5, -1.0, 0.75, -1.0, -0.25, -1.0, 0.0, 0.0, -0.75, -0.25, -1.0, -0.5, 0.0, 0.5, 0.75, 0.5, -0.75, 0.0, -0.25, -0.5, 1.0, -1.0, 0.75, 0.0, -1.0, 0.25, 0.5, 1.0, 0.0, -1.0, 1.0, -0.75, 0.25, 1.0, 0.5, -0.75, 1.0, 0.25, -0.75, 1.0, -1.0, -0.5, 0.5, -0.5, -0.75, -0.25, 1.0, 0.5, 0.0, -0.75, 0.5, -0.25, -0.25, -1.0, -1.0, 0.5, -0.25, -0.25, 0.5, -0.5, 0.25, -0.5, 0.0, 0.25, -1.0, -0.5, -1.0, 0.5, 0.5, -0.25, 1.0, -0.25, -1.0, -1.0, -1.0, -0.75, -0.5, -1.0, 0.0, 0.5, 0.75, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const command_buffer302 = command_encoder302.finish();
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder304.pushDebugGroup("mygroupmarker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
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
    query200.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder401.copyTextureToTexture(
        {
            texture: texture400
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    command_encoder400.copyTextureToTexture(
        {
            texture: texture400
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder400.clearBuffer(buffer400);
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    command_encoder304.insertDebugMarker("mymarker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const command_buffer401 = command_encoder401.finish();
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder201.popDebugGroup()
    query200.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder304.insertDebugMarker("mymarker");
    command_encoder402.insertDebugMarker("mymarker");
    command_encoder303.insertDebugMarker("mymarker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const command_buffer303 = command_encoder303.finish();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    command_encoder301.popDebugGroup()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    query301.destroy()
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    query200.destroy()
    
    texture400.destroy();
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_buffer202 = command_encoder202.finish();
    command_encoder402.pushDebugGroup("mygroupmarker")
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    texture401.destroy();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    query302.destroy()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder400.clearBuffer(buffer402);
    query301.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    command_encoder400.copyTextureToBuffer(
        {
            texture: texture403
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
    
    query200.destroy()
    query202.destroy()
    command_encoder400.copyBufferToTexture(
        {
            buffer: buffer401
        },
        {
            texture: texture404
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder402.popDebugGroup()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    command_encoder402.clearBuffer(buffer401);
    
    
    
    
    command_encoder403.pushDebugGroup("mygroupmarker")
    command_encoder301.insertDebugMarker("mymarker");
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder403.clearBuffer(buffer401);
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer300
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
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    texture402.destroy();
    render_bundle_encoder300.popDebugGroup();
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    command_encoder400.copyBufferToTexture(
        {
            buffer: buffer402
        },
        {
            texture: texture404
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const array1 = new Float32Array([-1.0, -0.75, 0.0, 1.0, -1.0, 0.75, 0.25, -0.25, -0.75, -0.5, 1.0, -0.75, 0.25, -0.75, 0.0, 0.75, 0.5, -0.75, -0.5, -1.0, 1.0, -1.0, -0.25, 1.0, 0.75, -0.75, 1.0, -0.25, -0.75, -1.0, 1.0, -1.0, 0.25, -1.0, -0.5, 0.0, 0.25, 1.0, 0.5, 1.0, 0.5, 0.25, 0.25, 0.0, 0.0, -0.75, -0.5, 0.5, -0.25, 0.75, -0.75, 0.25, -0.5, -0.5, 0.0, -1.0, 0.75, 0.5, 0.0, -0.25, -0.75, 0.75, 0.25, -0.75, 1.0, 0.75, -0.75, 0.5, 0.75, 0.5, 0.75, 0.25, 0.25, 0.25, 0.0, 0.5, 0.75, 0.25, 0.0, 1.0, -0.5, 0.75, -1.0, 0.0, 0.25, -0.25, -0.5, 0.5, 0.25, -0.75, -1.0, -0.5, 0.0, -0.5, 0.75, 0.5, -1.0, -0.5, -0.25, 1.0, ]);
    query302.destroy()
    command_encoder403.insertDebugMarker("mymarker");
    texture404.destroy();
    command_encoder403.copyTextureToBuffer(
        {
            texture: texture403
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
    command_encoder402.insertDebugMarker("mymarker");
    
    command_encoder403.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder403.copyTextureToBuffer(
        {
            texture: texture403
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
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder304.copyBufferToTexture(
        {
            buffer: buffer301
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
    
    command_encoder400.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    command_encoder305.insertDebugMarker("mymarker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.submit([command_buffer401, ]);
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
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder403.clearBuffer(buffer401);
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder402.copyBufferToBuffer(
        buffer401,
        0,
        buffer401,
        0,
        400
    );
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
    command_encoder305.insertDebugMarker("mymarker");
    
    command_encoder400.clearBuffer(buffer401);
    command_encoder402.pushDebugGroup("mygroupmarker")
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
    query401.destroy()
    command_encoder400.clearBuffer(buffer401);
    command_encoder403.copyTextureToTexture(
        {
            texture: texture403
        },
        {
            texture: texture403
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer301
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder304.copyBufferToTexture(
        {
            buffer: buffer301
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
    query302.destroy()
    command_encoder201.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder403.insertDebugMarker("mymarker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder304.copyBufferToTexture(
        {
            buffer: buffer301
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
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    command_encoder306.copyTextureToTexture(
        {
            texture: texture301
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    command_encoder306.pushDebugGroup("mygroupmarker")
    command_encoder403.insertDebugMarker("mymarker");
    
    
    command_encoder402.copyTextureToBuffer(
        {
            texture: texture403
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
    command_encoder403.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer300
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder402.clearBuffer(buffer401);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    command_encoder400.copyTextureToBuffer(
        {
            texture: texture402
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
    
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer301
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
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder306.copyBufferToBuffer(
        buffer301,
        0,
        buffer301,
        0,
        400
    );
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    query200.destroy()
    command_encoder301.insertDebugMarker("mymarker");
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    command_encoder402.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    
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
    query400.destroy()
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder307.pushDebugGroup("mygroupmarker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder304.copyBufferToTexture(
        {
            buffer: buffer300
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
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
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
    command_encoder402.copyBufferToBuffer(
        buffer402,
        0,
        buffer401,
        0,
        400
    );
    command_encoder307.popDebugGroup()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder203.clearBuffer(buffer203);
    command_encoder306.copyBufferToTexture(
        {
            buffer: buffer301
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
    query400.destroy()
    command_encoder402.insertDebugMarker("mymarker");
    
    command_encoder307.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder305.pushDebugGroup("mygroupmarker")
    command_encoder400.popDebugGroup()
    command_encoder305.insertDebugMarker("mymarker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    query203.destroy()
    const array2 = new Float32Array([0.75, -0.5, -0.25, -1.0, 0.5, -1.0, 0.75, -0.75, 0.75, 0.25, 1.0, 1.0, 1.0, -1.0, 1.0, 0.5, 1.0, 1.0, -0.5, -0.75, 1.0, -0.5, 0.0, -0.25, 0.5, 0.5, -0.5, 0.5, 0.5, 0.5, -0.75, -1.0, -0.5, -0.5, 0.0, -0.75, 0.25, 0.0, 0.0, 0.0, -0.5, 1.0, -0.25, 0.5, 0.25, -1.0, -0.25, -0.25, -0.5, 0.25, -1.0, -0.75, -0.5, 0.5, 0.75, -1.0, -0.5, 0.75, 1.0, 0.25, -0.75, -0.75, -0.5, 0.5, 0.0, 0.5, 0.75, -1.0, 1.0, -1.0, 0.25, 1.0, 0.5, 0.0, -1.0, 0.25, 0.5, 0.0, 1.0, 0.75, -0.25, 0.5, 0.25, 0.75, 0.0, 0.75, 0.0, 1.0, 0.0, 1.0, 0.25, 0.25, 0.25, -0.5, 0.5, -0.75, 0.75, 1.0, 1.0, -0.5, ]);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query202.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    query201.destroy()
    render_bundle_encoder402.pushDebugGroup("group_marker");
    command_encoder305.popDebugGroup()
    command_encoder400.copyBufferToBuffer(
        buffer402,
        0,
        buffer401,
        0,
        400
    );
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder402.copyTextureToTexture(
        {
            texture: texture403
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder403.popDebugGroup()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    query400.destroy()
    
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout204]
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
    command_encoder306.resolveQuerySet(
        query303,
        0,
        32,
        buffer300,
        0
    )
    query202.destroy()
    texture201.destroy();
    
    command_encoder306.copyBufferToTexture(
        {
            buffer: buffer300
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
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder400.clearBuffer(buffer401);
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_buffer400 = command_encoder400.finish();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
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
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer300
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
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder402.popDebugGroup();
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    command_encoder203.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query400.destroy()
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder200.popDebugGroup();
    command_encoder402.clearBuffer(buffer401);
    
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    const command_buffer306 = command_encoder306.finish();
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    const command_buffer301 = command_encoder301.finish();
    command_encoder307.copyBufferToTexture(
        {
            buffer: buffer300
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
    texture402.destroy();
    
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    command_encoder403.copyTextureToBuffer(
        {
            texture: texture403
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query400.destroy()
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    command_encoder305.copyBufferToTexture(
        {
            buffer: buffer300
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout204]
    });
    texture100.destroy();
    render_bundle_encoder302.popDebugGroup();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    command_encoder308.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    command_encoder203.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    command_encoder403.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    const command_buffer402 = command_encoder402.finish();
    texture302.destroy();
    render_bundle_encoder402.insertDebugMarker("marker");
    query302.destroy()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    query200.destroy()
    texture301.destroy();
    const command_buffer403 = command_encoder403.finish();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    texture300.destroy();
    query203.destroy()
    render_bundle_encoder300.popDebugGroup();
    command_encoder307.copyBufferToBuffer(
        buffer301,
        0,
        buffer301,
        0,
        400
    );
    
    command_encoder305.resolveQuerySet(
        query301,
        0,
        32,
        buffer302,
        0
    )
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder203.copyBufferToTexture(
        {
            buffer: buffer204
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder203.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    command_encoder308.pushDebugGroup("mygroupmarker")
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    query500.destroy()
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    
    render_bundle_encoder402.popDebugGroup();
    command_encoder304.insertDebugMarker("mymarker");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
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
    query204.destroy()
    command_encoder305.resolveQuerySet(
        query301,
        0,
        32,
        buffer302,
        0
    )
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder308.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    command_encoder500.insertDebugMarker("mymarker");
    
    command_encoder501.insertDebugMarker("mymarker");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
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
    
    command_encoder305.clearBuffer(buffer302);
    query302.destroy()
    command_encoder308.resolveQuerySet(
        query302,
        0,
        32,
        buffer301,
        0
    )
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout204]
    });
    command_encoder203.insertDebugMarker("mymarker");
    query400.destroy()
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    query203.destroy()
    command_encoder305.copyBufferToBuffer(
        buffer300,
        0,
        buffer301,
        0,
        400
    );
    query400.destroy()
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
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer204,
        0
    )
    query501.destroy()
    command_encoder203.popDebugGroup()
    query402.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder304.copyBufferToTexture(
        {
            buffer: buffer300
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
    query201.destroy()
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout303]
    });
    command_encoder203.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder305.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder304.insertDebugMarker("mymarker");
    command_encoder308.resolveQuerySet(
        query302,
        0,
        32,
        buffer302,
        0
    )
    command_encoder308.clearBuffer(buffer301);
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    query204.destroy()
    render_bundle_encoder400.popDebugGroup();
    command_encoder304.copyBufferToTexture(
        {
            buffer: buffer300
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
    
    render_bundle_encoder401.insertDebugMarker("marker");
    query402.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder308.resolveQuerySet(
        query303,
        0,
        32,
        buffer302,
        0
    )
    query201.destroy()
    command_encoder501.pushDebugGroup("mygroupmarker")
    query300.destroy()
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
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    query303.destroy()
    const command_buffer305 = command_encoder305.finish();
    command_encoder307.clearBuffer(buffer301);
    query401.destroy()
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder307.clearBuffer(buffer300);
    command_encoder203.clearBuffer(buffer203);
    texture403.destroy();
    query201.destroy()
    query700.destroy()
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder501.popDebugGroup()
    
    command_encoder500.copyTextureToTexture(
        {
            texture: texture500
        },
        {
            texture: texture500
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    query501.destroy()
    command_encoder307.pushDebugGroup("mygroupmarker")
    command_encoder308.copyBufferToTexture(
        {
            buffer: buffer301
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    command_encoder501.pushDebugGroup("mygroupmarker")
    texture502.destroy();
    
    device20.queue.submit([command_buffer201, ]);
    command_encoder307.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    device30.queue.submit([command_buffer305, ]);
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    command_encoder308.popDebugGroup()
    const command_buffer203 = command_encoder203.finish();
    command_encoder501.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    command_encoder304.popDebugGroup()
    const command_buffer501 = command_encoder501.finish();
    const command_buffer308 = command_encoder308.finish();
    const command_buffer304 = command_encoder304.finish();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    device30.queue.submit([command_buffer302, command_buffer304, command_buffer306, ]);
    const command_buffer307 = command_encoder307.finish();
    device40.queue.submit([command_buffer403, ]);
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer500, ]);
    device30.queue.submit([command_buffer307, command_buffer308, ]);
    device30.queue.submit([command_buffer302, ]);
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([command_buffer200, ]);
    device40.queue.submit([command_buffer402, ]);
    device20.queue.submit([command_buffer201, ]);
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([command_buffer302, command_buffer308, ]);
    device20.queue.submit([command_buffer203, ]);
    device40.queue.submit([command_buffer400, ]);
}