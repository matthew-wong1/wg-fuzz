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
    const array0 = new Float32Array([0.0, 0.75, 0.75, 0.5, -0.5, -0.25, -0.75, 1.0, -1.0, -0.75, -1.0, 0.75, -1.0, -1.0, -0.25, 0.75, 0.75, -0.75, -1.0, -1.0, 0.75, 0.75, 0.25, 0.0, 0.25, 0.25, 0.25, 0.75, -1.0, 0.75, -1.0, 0.25, -0.5, -0.25, -0.25, 0.0, -0.5, -0.25, 0.25, -0.25, 0.5, 0.75, -0.5, 0.5, 1.0, 0.0, -0.75, -0.75, -1.0, 0.0, -0.5, -0.5, 1.0, -0.5, -1.0, 0.75, 0.25, -0.75, -0.75, 0.75, 0.75, 1.0, 0.0, 0.5, 0.25, 0.25, -0.25, 0.5, 0.75, 0.75, -0.75, 0.75, 0.5, -0.25, 0.0, -1.0, 0.0, -0.25, 0.25, 0.0, -0.5, 0.75, 1.0, -1.0, 1.0, -1.0, 0.25, 0.25, -0.75, 1.0, -1.0, -0.25, 0.25, -0.25, -0.5, -0.5, 1.0, -0.75, 1.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.75, 0.75, 1.0, 0.0, 0.5, 0.5, 1.0, 0.5, 0.5, 0.0, 0.75, 0.0, 1.0, -1.0, 1.0, -0.5, 0.25, 0.5, -0.5, -0.25, -0.5, -0.25, -0.5, -0.25, -0.75, 0.75, -0.25, 1.0, 0.75, 0.5, -0.5, 0.25, 0.25, 0.25, 0.0, 0.75, 0.0, 0.0, -0.25, -1.0, 0.5, 0.5, 1.0, 0.5, 1.0, 1.0, -0.25, 0.5, -0.75, 0.75, 0.0, -0.25, 1.0, 0.25, -0.25, 0.25, 0.75, -1.0, 0.25, 0.25, 0.75, -0.25, 0.0, -0.5, -0.25, -0.5, 0.5, 0.0, -0.75, -1.0, -1.0, 0.0, 0.25, -1.0, -0.5, 1.0, -0.75, -0.75, 0.5, -1.0, -0.75, 0.75, -1.0, 0.75, 1.0, -0.25, 1.0, 1.0, 0.25, -1.0, -0.75, -0.75, -0.5, 0.75, 0.0, 0.75, -0.5, 1.0, -0.5, 1.0, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([-0.25, -0.75, -0.75, -0.25, 1.0, -0.25, 0.75, 1.0, 0.75, -0.5, 0.0, 0.5, -0.25, 0.25, -1.0, -0.25, -0.25, -1.0, -0.75, 0.75, -0.5, 0.0, 0.5, 0.75, 0.25, -1.0, -0.25, 0.0, -1.0, 0.0, -0.75, -0.25, 0.5, 1.0, 0.5, -1.0, 0.0, -1.0, 0.5, 0.5, 0.0, -1.0, -0.5, 0.75, 0.75, 0.5, 0.75, -1.0, -0.75, 0.25, 0.75, -0.5, 1.0, 0.5, -0.75, 0.75, 1.0, -1.0, -0.5, -0.25, -0.75, 0.75, 0.25, 1.0, 0.25, -1.0, -0.5, -1.0, -0.75, -0.5, -1.0, -0.75, -0.25, 0.25, -0.5, -0.5, 0.5, -0.25, -0.75, -0.25, 0.0, -0.25, -1.0, 0.75, 0.75, -0.25, -1.0, -0.25, 1.0, 0.25, 1.0, -1.0, 0.5, -0.5, 0.0, 0.25, -0.75, 0.25, 0.5, 1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device00.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
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
    render_bundle_encoder100.popDebugGroup();
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array3 = new Float32Array([0.5, 0.0, 1.0, 0.0, 1.0, -0.75, -1.0, -1.0, -0.25, 0.75, 0.25, 0.25, -0.5, 0.0, 0.75, -0.5, 0.75, -0.25, -0.25, -1.0, 1.0, -0.25, 0.25, 0.25, 0.5, -1.0, 0.5, 1.0, -1.0, 0.5, -0.75, -1.0, -0.75, 0.0, 1.0, -1.0, -0.75, 0.5, 1.0, 0.75, 0.75, -0.75, 0.75, 0.75, -1.0, 0.0, -0.25, 0.5, 0.5, 0.75, -0.5, -0.25, 0.0, 0.0, 0.75, 0.0, 0.25, -0.25, -0.25, 0.75, -0.25, 0.25, 0.5, -0.25, -0.75, -0.5, -0.25, 0.25, 0.75, -0.5, -1.0, 1.0, 0.5, 0.25, -0.25, -0.5, -1.0, 0.25, -0.25, 1.0, 0.25, 0.0, 0.5, 0.5, 0.25, -0.5, 0.0, -0.25, -0.75, 1.0, -0.25, 0.0, -0.75, 0.75, 0.0, 0.75, 1.0, -0.75, -0.5, -1.0, ]);
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.destroy();
    const array4 = new Float32Array([0.5, 0.5, 0.75, -0.75, -0.25, 0.0, -0.5, 0.75, -0.25, 0.25, -0.75, -0.25, 0.75, -0.25, 1.0, -0.5, -0.5, -0.25, -0.25, 0.25, 0.0, -0.25, -1.0, 0.0, 0.75, 0.75, 0.75, 0.5, 0.75, -0.25, 0.5, -1.0, 1.0, -1.0, -1.0, -0.5, -0.5, 0.0, -1.0, 0.0, -0.25, 0.75, -1.0, -1.0, 0.0, 0.25, -0.25, -0.5, 0.75, -0.5, -0.5, 0.25, 0.5, -1.0, -1.0, -0.25, -0.25, 1.0, 0.25, -0.25, 0.0, 0.0, 0.5, 0.0, 1.0, -0.5, -0.5, -1.0, 0.5, 1.0, 1.0, 1.0, 0.75, -0.5, -0.25, -1.0, -0.75, 0.75, 0.5, -1.0, -1.0, 0.5, -0.75, -0.5, 0.5, -0.75, 1.0, 0.75, 0.75, 1.0, -0.25, 0.25, 0.25, 0.0, -0.5, -0.75, 0.25, -1.0, 0.75, 0.0, ]);
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("validation");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array5 = new Float32Array([0.75, -0.75, 0.5, -0.25, 0.0, 0.25, -0.25, 1.0, -0.75, -0.5, 0.0, 0.5, -0.5, 1.0, -0.25, 0.5, -1.0, 0.75, -0.5, -0.5, -0.75, -0.25, 0.75, -0.25, -1.0, -1.0, -1.0, -0.25, -0.25, -0.25, 0.5, -0.75, -0.75, -0.25, -1.0, 0.25, 0.0, 0.25, 0.0, 1.0, 1.0, 0.75, 0.25, 0.0, -0.25, 0.75, -1.0, 0.25, 1.0, 0.0, 1.0, 1.0, -0.25, 0.0, 0.75, -0.5, -1.0, -0.75, -0.25, -0.5, -1.0, 0.75, 0.0, 0.25, 1.0, 1.0, -0.25, -0.5, -0.5, 0.5, -0.75, 0.75, 0.0, -1.0, -0.25, 0.75, 1.0, 1.0, 0.5, -0.5, 0.25, 0.75, -1.0, 0.5, 0.25, 0.75, 0.0, -1.0, -0.75, -0.5, -0.25, -0.75, 0.0, 1.0, 1.0, 0.25, 0.5, 1.0, -0.75, -0.5, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device40.pushErrorScope("out-of-memory");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder400.insertDebugMarker("marker");
    texture200.destroy();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.insertDebugMarker("mymarker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const array6 = new Float32Array([0.75, 0.25, -0.75, 0.25, 0.5, 0.25, 0.25, 1.0, 1.0, 1.0, 0.0, -0.75, -1.0, -0.75, -0.25, 0.0, 0.5, -0.25, 0.75, 0.0, -1.0, 1.0, -0.75, 0.5, 0.5, 0.75, -0.25, 0.75, 0.25, 0.75, -1.0, -0.5, 1.0, -0.75, -1.0, 1.0, -0.75, -1.0, 0.25, -1.0, -0.5, 0.5, 1.0, 0.75, -1.0, -0.25, 0.25, -0.25, -0.75, 1.0, -0.75, -1.0, 0.25, 0.5, 0.5, -0.75, -0.25, -0.5, -0.25, 0.75, 0.25, 0.25, 1.0, 1.0, 1.0, 0.25, 0.5, -0.75, -0.25, 0.0, -0.25, 0.5, -0.75, -0.25, 0.75, 0.75, -0.5, 0.25, 1.0, 0.5, 0.5, 0.5, 0.25, 1.0, -0.5, 1.0, -0.25, -0.25, 1.0, -0.75, -0.75, -0.25, 0.5, 0.25, 0.0, -0.5, -0.5, 1.0, 1.0, -0.25, ]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder402.insertDebugMarker("marker");
    
    command_encoder200.insertDebugMarker("mymarker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
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
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder200.popDebugGroup();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    query201.destroy()
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    command_encoder202.insertDebugMarker("mymarker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    query200.destroy()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder201.insertDebugMarker("mymarker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.insertDebugMarker("marker");
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
    texture202.destroy();
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query400.destroy()
    
    device30.destroy();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    command_encoder200.insertDebugMarker("mymarker");
    texture201.destroy();
    const array7 = new Float32Array([0.0, 0.25, -0.25, -1.0, -0.25, 0.25, 0.0, 1.0, -1.0, 0.5, 0.25, 0.5, -0.5, 1.0, -0.75, 0.25, -0.75, -0.25, 0.75, 0.5, 1.0, 0.5, -0.25, -1.0, -0.75, -1.0, 0.5, 1.0, 0.5, 0.5, 1.0, 0.75, 1.0, 0.75, -1.0, -0.25, 0.25, 0.25, -1.0, -0.75, 0.25, -0.5, -1.0, -1.0, -0.25, -0.5, 0.25, -1.0, 0.75, 0.75, -0.75, -0.25, 1.0, 1.0, 1.0, 1.0, -0.5, 0.75, -1.0, 1.0, 1.0, 0.0, -0.25, 0.25, 0.5, -0.75, 0.0, 1.0, 0.0, 0.75, 0.5, -0.5, 0.75, -0.25, -1.0, -0.75, -0.25, 0.5, 1.0, -0.5, 1.0, 0.75, -0.5, -0.75, -0.5, -0.25, -0.75, -0.75, -0.25, 0.75, 1.0, -0.75, -0.25, -1.0, 1.0, 0.0, 0.0, -0.75, 1.0, 1.0, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array8 = new Float32Array([0.25, -0.5, -1.0, 0.0, -1.0, -0.25, 0.0, 0.5, 0.75, 0.25, -0.5, -1.0, -0.75, 1.0, -0.5, 0.0, -0.25, -1.0, -0.5, -0.25, 0.5, 0.5, -0.5, 0.75, 0.0, -0.5, 1.0, 0.5, -0.25, -0.25, -0.5, 0.5, -1.0, 1.0, -0.75, -0.5, 0.25, -1.0, 0.0, -0.5, 1.0, 0.5, -0.75, -0.75, -0.5, 0.5, 0.25, 0.75, 0.0, -1.0, 0.5, 0.75, 0.75, 1.0, 1.0, 0.75, -1.0, 0.5, -0.75, 0.0, 1.0, -1.0, -1.0, 0.5, 0.25, 0.5, 0.0, 0.75, 0.75, 1.0, 0.75, 0.25, 0.75, -1.0, 1.0, 0.75, -0.25, 0.25, 0.25, -1.0, 1.0, -1.0, -0.5, 0.25, -0.75, -0.5, 0.5, -1.0, -0.75, -0.75, -1.0, -0.5, -1.0, 0.75, -1.0, -0.25, 0.25, 1.0, -0.5, -0.5, ]);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
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
    command_encoder400.insertDebugMarker("mymarker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    command_encoder400.insertDebugMarker("mymarker");
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    query200.destroy()
    query202.destroy()
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
    render_bundle_encoder402.popDebugGroup();
    render_bundle_encoder402.insertDebugMarker("marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
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
    render_bundle_encoder402.pushDebugGroup("group_marker");
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
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
    query401.destroy()
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
    texture203.destroy();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    render_bundle_encoder401.popDebugGroup();
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    texture204.destroy();
    command_encoder201.insertDebugMarker("mymarker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const array9 = new Float32Array([0.25, 0.25, 0.75, 1.0, 0.5, -0.25, -1.0, 1.0, -0.25, -1.0, 0.75, -0.25, 0.25, 0.0, 0.25, 0.5, 0.25, 0.25, 0.5, -0.5, 0.5, -0.75, -0.25, -0.75, 0.5, 0.0, -0.75, 0.75, 0.0, 0.0, 0.75, -1.0, 0.5, -0.5, -0.75, -0.25, -0.25, -1.0, -0.5, -0.25, 1.0, 0.25, -1.0, 0.5, -0.5, -0.75, 0.75, 0.75, 0.25, 0.5, 0.75, 0.0, 0.75, -0.5, -1.0, 0.5, 0.75, 0.0, 0.5, 0.5, -0.75, -0.25, -0.25, 0.5, 1.0, 0.75, -0.25, -0.5, -0.25, -0.5, -0.75, 0.5, 0.75, 0.5, 0.0, 0.5, -0.5, 0.25, -0.5, 1.0, -1.0, -1.0, -0.75, 0.75, -1.0, 0.75, 1.0, 0.0, 0.25, -0.25, -0.75, -1.0, -0.25, 0.75, -1.0, 0.25, 0.25, -1.0, -0.5, -0.25, ]);
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.popDebugGroup();
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder500.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.popDebugGroup();
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    query400.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.popDebugGroup();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([0.5, -1.0, -0.5, 0.25, 0.75, 0.75, -0.75, -0.25, -0.5, -0.75, 0.25, 0.75, 0.25, -0.25, 0.75, 0.5, 0.5, 0.25, 0.75, 1.0, -0.5, 0.75, 0.5, -0.75, 1.0, -0.25, -0.25, 0.75, 1.0, 0.0, 1.0, 0.75, 0.0, 0.0, -1.0, -1.0, -0.5, -0.75, -0.25, 0.75, -0.75, -0.75, 0.5, -0.5, -1.0, 0.5, -1.0, 1.0, 1.0, 0.75, 0.5, -0.5, 1.0, 0.0, -0.5, -0.5, 0.5, 0.5, -0.5, 0.0, 0.25, 0.75, -1.0, -1.0, 0.75, 0.0, 0.5, 1.0, -0.5, -0.75, -0.75, 1.0, 0.5, -0.25, 1.0, 1.0, -1.0, 0.5, -0.75, -0.5, 0.0, 0.0, -0.75, 0.75, 0.0, -0.75, 0.25, 0.75, 0.75, -0.25, 0.0, -0.25, -0.5, -1.0, 0.25, 0.25, -0.75, 1.0, 0.25, 0.75, ]);
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    query403.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device50.pushErrorScope("validation");
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    command_encoder200.insertDebugMarker("mymarker");
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    command_encoder204.insertDebugMarker("mymarker");
    command_encoder203.insertDebugMarker("mymarker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/shader_module2011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    
    query400.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    query405.destroy()
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    query405.destroy()
    
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    query502.destroy()
    query402.destroy()
    
    command_encoder400.insertDebugMarker("mymarker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
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
    query400.destroy()
    
    
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    
    texture501.destroy();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    texture401.destroy();
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
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder501.popDebugGroup();
    query400.destroy()
    query500.destroy()
    
    
    query405.destroy()
    command_encoder500.insertDebugMarker("mymarker");
    query502.destroy()
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    query400.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder500.insertDebugMarker("mymarker");
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder400.insertDebugMarker("mymarker");
    const array11 = new Float32Array([0.5, 0.5, 0.0, -0.5, 0.75, 0.75, 1.0, 0.75, -0.25, 0.75, -0.75, 0.75, -0.25, 0.25, -0.25, -0.25, 0.25, 0.75, -0.75, -0.25, 0.25, -0.5, -0.75, 0.5, 0.75, -0.5, 1.0, 0.75, -0.75, -0.25, -0.75, 0.25, 0.5, 1.0, -0.75, -0.75, -1.0, -0.25, 0.5, 0.0, -0.25, -0.25, -0.75, 0.75, -0.5, -0.75, 0.25, -0.75, -0.5, 0.75, 0.75, 0.5, 0.75, -0.75, 0.5, -1.0, 0.25, -0.5, 0.0, -0.5, -0.75, -0.75, 0.0, -0.75, -0.25, -1.0, -1.0, -0.5, -1.0, 0.25, 0.75, 1.0, -0.75, 0.25, -0.25, 1.0, 1.0, 1.0, -0.5, 0.5, 0.75, -1.0, -0.75, 0.25, -1.0, -0.75, 0.0, -0.25, 1.0, -0.25, -0.25, -1.0, 0.5, -0.25, -0.25, 0.0, -1.0, 1.0, 0.25, 0.75, ]);
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8sint",
        dimension: "2d"
    });
    query501.destroy()
    command_encoder500.insertDebugMarker("mymarker");
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    query403.destroy()
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder205.insertDebugMarker("mymarker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    query402.destroy()
    const array12 = new Float32Array([1.0, -0.25, 0.75, -1.0, -0.75, 0.5, 0.5, 0.5, -1.0, 0.5, 1.0, 0.75, -1.0, 0.0, -0.5, 1.0, 0.75, 0.0, -1.0, -0.75, -0.75, 0.5, -0.75, 0.0, 0.25, 0.5, -1.0, -1.0, -0.75, 0.0, -0.5, -1.0, 0.5, -0.75, 0.75, 1.0, 0.25, -0.5, 1.0, 0.75, -0.25, 0.0, -0.25, 0.0, -0.25, 0.0, 0.5, -0.5, 0.5, -0.75, 0.0, 1.0, 0.5, 0.25, -0.5, -1.0, -1.0, 0.75, -1.0, -0.75, 0.5, 0.25, 0.75, 0.25, 0.25, 0.75, 1.0, 0.75, 0.75, 0.5, -0.25, -1.0, 0.0, 0.5, 0.25, -1.0, 0.75, 0.75, -0.25, -0.5, 0.75, 0.25, 1.0, -0.5, 1.0, -0.5, 0.75, -0.5, 1.0, 0.5, -0.25, 0.75, 1.0, -0.75, 1.0, -1.0, 0.75, -0.5, -0.5, 0.75, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    render_bundle_encoder401.popDebugGroup();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    query404.destroy()
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
    render_bundle_encoder401.pushDebugGroup("group_marker");
    query501.destroy()
    command_encoder403.insertDebugMarker("mymarker");
    query203.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder500.insertDebugMarker("mymarker");
    texture402.destroy();
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder203.insertDebugMarker("mymarker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const array13 = new Float32Array([1.0, 1.0, -1.0, 0.0, -0.25, 0.0, 0.0, 0.5, 0.75, 0.5, -0.5, -0.25, 0.5, 0.75, 1.0, 0.75, -0.5, 1.0, 0.75, -1.0, -0.5, 0.5, -0.25, 0.25, -0.5, 0.25, 0.75, 1.0, -0.25, -1.0, -0.25, 0.0, -0.75, 0.0, 1.0, -1.0, -1.0, -1.0, 1.0, 1.0, -0.5, 0.5, 0.0, 0.25, -0.5, 0.75, -0.25, 1.0, 0.75, 0.75, 0.75, 0.25, -0.75, 0.0, 1.0, 0.5, -0.25, -0.75, -0.25, -0.25, 0.0, 1.0, -0.25, 0.5, -0.75, 0.0, 0.75, -0.5, 0.5, 0.75, -0.5, 0.75, -1.0, 0.25, -0.25, -0.75, -0.75, 0.5, 0.25, 1.0, -1.0, -0.25, 1.0, -0.75, 0.25, -0.5, 0.25, 1.0, 1.0, -0.25, -0.25, 1.0, -0.5, 1.0, 0.5, 0.25, 0.25, 1.0, -0.75, 0.25, ]);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
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
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module4010_code = "";
    try {
        shader_module4010_code = await fs.readFile(__dirname + '/shader_module4010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4010 = await device40.createShaderModule({ label: "shader_module4010", code: shader_module4010_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
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
    query400.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    texture502.destroy();
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4004 = texture400.createView({ label: "texture_view4004" });
    
    render_bundle_encoder502.popDebugGroup();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
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
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    command_encoder502.insertDebugMarker("mymarker");
    
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    const texture_view4005 = texture400.createView({ label: "texture_view4005" });
    
    texture503.destroy();
    
    query503.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    query406.destroy()
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    query406.destroy()
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    texture403.destroy();
    render_bundle_encoder202.popDebugGroup();
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder701.popDebugGroup();
    command_encoder403.insertDebugMarker("mymarker");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    command_encoder204.insertDebugMarker("mymarker");
    query501.destroy()
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    texture500.destroy();
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    command_encoder500.insertDebugMarker("mymarker");
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
    query503.destroy()
    query400.destroy()
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder500.popDebugGroup();
    
    query204.destroy()
    query401.destroy()
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    
    texture700.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    const query408 = device40.createQuerySet({
        label: "query408",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    command_encoder401.insertDebugMarker("mymarker");
    render_bundle_encoder501.popDebugGroup();
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    query402.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    
    
    command_encoder401.insertDebugMarker("mymarker");
    query201.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    
    command_encoder403.insertDebugMarker("mymarker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder402.insertDebugMarker("mymarker");
    device60.pushErrorScope("out-of-memory");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    command_encoder503.insertDebugMarker("mymarker");
    
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
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    const query409 = device40.createQuerySet({
        label: "query409",
        type: "occlusion",
        count: 32,
    });
    query505.destroy()
    query502.destroy()
    command_encoder203.insertDebugMarker("mymarker");
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    query502.destroy()
    query203.destroy()
    query404.destroy()
    query406.destroy()
    command_encoder206.insertDebugMarker("mymarker");
    query200.destroy()
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile(__dirname + '/shader_module2012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    query401.destroy()
    
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    render_bundle_encoder401.insertDebugMarker("marker");
}