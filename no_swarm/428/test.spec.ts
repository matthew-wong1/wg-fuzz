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
        powerPreference: "high-performance"
    });
    
    const array0 = new Float32Array([-0.5, -1.0, -0.75, -0.25, 0.5, -0.75, 0.25, -0.75, 1.0, 0.75, 1.0, -0.25, -1.0, -0.5, -0.75, 0.0, 0.75, -0.5, -1.0, -1.0, -0.75, -0.25, -1.0, 0.25, 0.75, -1.0, 0.5, 1.0, 0.25, 1.0, -1.0, 1.0, -0.25, 0.0, -1.0, -0.25, -0.25, -0.25, -0.75, -0.75, -0.5, 0.0, 0.75, 0.75, 0.75, 0.5, 0.75, -1.0, -1.0, -1.0, 0.75, 1.0, -0.5, 0.5, 1.0, -0.75, 0.0, -0.5, -0.5, -0.75, -0.25, -0.75, -1.0, 0.5, 1.0, 0.25, -1.0, 0.25, 0.0, -0.25, 0.5, -0.5, 0.75, -0.5, 0.5, 0.5, 1.0, -0.5, 0.75, -0.25, 0.25, 0.25, 0.25, 0.75, -0.25, 0.0, 0.75, -1.0, -0.5, -0.75, -0.75, 0.75, -0.25, 1.0, 1.0, 0.75, 0.5, 0.75, -0.75, -1.0, ]);
    
    
    const array1 = new Float32Array([-0.25, -1.0, -0.25, -0.25, 1.0, -1.0, -0.25, -0.75, 0.0, -0.5, 0.5, 0.25, 0.5, 0.25, -0.25, 0.5, 1.0, 1.0, 0.75, 0.0, -0.25, -0.75, -0.75, 0.75, -0.5, -0.75, -0.25, 0.5, -1.0, -0.25, -0.75, -0.75, -0.75, 0.25, -0.5, -0.75, 0.0, 1.0, 0.0, -0.25, -1.0, -1.0, 0.5, 1.0, -1.0, 0.5, 0.75, -1.0, -1.0, -1.0, 1.0, -1.0, 0.5, 1.0, -0.5, -0.75, -0.5, 0.0, 0.5, 0.5, -0.75, 0.75, -0.25, -0.5, 0.75, 0.75, 0.5, 0.25, 0.25, -0.75, -0.75, 0.75, 0.0, -0.5, 0.25, 0.25, 0.75, 0.5, 1.0, -0.75, -0.5, -0.5, 0.5, -0.75, -0.75, 1.0, -0.75, -0.75, -0.5, -0.5, -0.25, -0.5, -0.75, -1.0, 0.5, 1.0, 0.25, 0.75, -1.0, -0.25, ]);
    const array2 = new Float32Array([-0.75, -0.25, 1.0, 0.75, 0.5, 1.0, 0.75, -0.25, 0.25, -1.0, 0.25, 0.0, 0.0, 0.5, -1.0, -0.5, 0.25, 0.5, 0.25, -0.25, 1.0, -0.75, 0.75, -1.0, -0.5, 0.0, -0.25, 0.75, -0.5, -0.25, 0.75, 1.0, 1.0, 1.0, 0.0, -1.0, -0.5, -0.75, 1.0, 0.5, -0.5, -1.0, 0.5, 0.0, -1.0, 0.0, 0.25, -1.0, 0.75, -0.5, 0.75, -0.25, -0.75, -0.25, 0.5, 0.25, -0.25, -1.0, -0.25, -0.25, -0.5, -1.0, 0.25, -0.25, 0.75, -0.5, -0.25, 0.25, -0.5, 0.0, 0.0, -1.0, 1.0, -0.75, 0.25, -0.5, 1.0, 0.75, -0.5, 0.75, 0.25, -0.25, 0.25, 0.25, 0.75, 0.25, 1.0, 0.25, -0.75, 1.0, -1.0, 1.0, -0.75, 0.0, -0.25, -0.5, 0.75, 0.0, 0.0, 1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([0.25, -1.0, -1.0, 0.25, 0.25, -0.5, 0.25, -1.0, 0.0, -0.5, 0.0, -0.25, 1.0, 0.0, 0.0, 0.0, -0.25, 1.0, -0.75, -1.0, 1.0, 0.5, 1.0, -0.25, -0.75, -1.0, 0.5, 1.0, -0.75, -0.5, 0.0, 0.0, 0.5, 0.0, -0.25, 0.0, 0.75, 1.0, 0.0, 0.25, 0.0, -1.0, 0.75, 0.5, 0.5, -0.75, -0.75, 0.5, -0.75, -0.25, -1.0, 0.0, 1.0, -1.0, 0.0, -0.75, -0.75, 1.0, 0.25, -0.5, -0.25, 0.5, -0.5, 0.5, -0.5, -1.0, 0.0, -0.5, 0.0, 0.0, -0.25, 0.25, 0.5, 0.5, 1.0, 0.0, -0.25, -0.5, 0.5, 0.25, -0.5, -1.0, 0.25, -1.0, 1.0, -0.75, 0.0, -0.25, 1.0, 0.0, 0.5, 0.5, 0.25, 0.75, -0.25, -0.25, 0.75, 0.5, 0.25, -1.0, ]);
    const array4 = new Float32Array([1.0, -0.5, -0.5, -0.75, 1.0, 1.0, -0.75, 0.75, 0.75, -1.0, 0.5, -0.75, 0.25, -1.0, 0.0, 0.25, 0.75, 1.0, -1.0, -0.75, 0.75, -0.5, -0.5, -0.5, -0.5, 0.5, -0.75, 0.75, 0.5, -0.75, 0.0, 1.0, -1.0, 0.25, 1.0, -0.25, 1.0, 0.75, 0.0, -1.0, -0.25, -1.0, 0.5, -0.25, -0.5, -0.75, -0.5, -1.0, -1.0, -0.25, -0.75, -0.5, -1.0, -1.0, 1.0, -0.5, 1.0, 0.75, -0.75, -0.75, -0.25, 1.0, -0.25, -0.75, 0.0, -1.0, -0.5, -0.25, -0.75, -0.25, 0.75, 0.75, 0.0, 1.0, 0.0, -0.25, 1.0, -0.5, -0.75, -0.5, -0.75, -1.0, 1.0, 0.0, 0.0, 0.25, 0.0, 0.75, 0.0, -0.5, -0.25, -0.5, 0.0, -0.5, 0.0, -1.0, 0.0, -1.0, 1.0, -0.75, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device30.pushErrorScope("out-of-memory");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    query101.destroy()
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    buffer300.destroy()
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array5 = new Float32Array([0.25, 1.0, -0.5, 0.0, 0.25, -0.25, -0.25, 0.5, 1.0, -1.0, -1.0, 0.0, -0.5, 0.25, 0.5, 0.0, -0.75, -0.25, 0.5, -0.75, -1.0, 0.75, 0.75, 0.5, -0.75, 0.5, 1.0, -0.75, 0.0, -0.75, -0.5, -0.75, -0.5, -1.0, -0.5, 0.75, 0.25, 0.75, -0.75, 1.0, -0.5, 1.0, -0.75, 1.0, -1.0, 0.5, -0.5, 0.0, 0.25, -1.0, -0.25, -0.5, -0.5, -0.5, 0.25, -0.75, -0.5, 0.75, -1.0, 1.0, -0.5, -0.25, 0.5, -1.0, -1.0, -0.75, 0.5, -1.0, -1.0, 0.0, 1.0, -0.75, -0.5, 1.0, -1.0, -0.5, -0.5, 1.0, -1.0, 0.5, -1.0, 1.0, -0.75, -0.25, -1.0, 1.0, 0.0, 0.75, 0.75, 0.25, 0.75, -0.25, -0.5, 0.75, 0.75, -0.25, 0.5, -1.0, -0.25, 0.25, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_bundle_encoder100.insertDebugMarker("marker");
    query101.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    
    const array6 = new Float32Array([0.75, 1.0, 1.0, -0.75, 0.75, 1.0, 0.0, 0.0, 0.25, -0.5, -0.5, 0.0, -1.0, 0.0, 0.75, 1.0, 1.0, -0.75, -0.5, -0.75, -0.25, 0.5, 0.25, 0.75, -0.5, -0.25, -1.0, 0.0, -0.75, -1.0, -0.5, 0.5, -1.0, 0.25, 0.5, 0.25, -0.5, 0.5, -0.25, -1.0, 0.5, -0.75, -0.75, 0.0, 0.25, -0.25, -0.25, -0.25, -0.25, -0.5, 0.5, 0.0, -0.5, -0.75, -0.75, 0.5, -0.25, 0.5, -0.5, -0.75, 0.0, -0.25, 0.0, -0.5, 0.25, 0.25, -0.25, 0.5, 0.75, 0.25, -0.25, -1.0, 0.75, -0.75, 0.25, 0.75, 1.0, -1.0, 0.5, -0.5, 1.0, -1.0, -0.25, 0.25, -0.5, 0.25, -0.75, -1.0, 1.0, -0.5, -0.25, -0.75, -0.5, 1.0, -0.75, 0.0, -0.5, 1.0, 0.25, 0.0, ]);
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device00.destroy();
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
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
    command_encoder300.popDebugGroup()
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    command_encoder300.pushDebugGroup("mygroupmarker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.pushErrorScope("out-of-memory");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array7 = new Float32Array([-0.5, -0.5, 0.5, 0.75, 0.25, 0.75, -0.75, 0.0, 0.25, 0.5, -0.25, 0.75, -0.5, -0.5, -0.25, 0.75, -1.0, -0.5, -0.75, 0.0, -0.75, 1.0, 0.0, 0.25, -1.0, -0.75, -0.25, 0.5, 1.0, 0.0, 0.0, 0.5, -0.25, 0.5, -1.0, -0.5, 0.75, -0.25, -0.75, 0.75, -1.0, 0.25, -1.0, 0.0, 1.0, 0.25, -0.75, 0.75, -0.5, 0.5, 0.75, -1.0, -0.5, -0.5, 0.25, 0.5, -0.5, -0.25, 0.5, 0.25, 0.5, 1.0, -0.75, -0.5, 1.0, -0.5, -0.5, -1.0, 0.5, 1.0, 0.5, 0.75, -0.75, -0.25, 0.25, 0.75, 0.0, -0.5, 0.75, -0.5, 0.5, -0.25, -0.25, -0.5, 0.75, -0.5, -0.5, 0.25, 0.75, -0.75, -0.5, 1.0, -0.25, 0.5, -1.0, 0.5, -0.25, 1.0, -0.25, 0.75, ]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const array8 = new Float32Array([0.5, 0.25, 0.25, 0.25, 0.25, 0.75, -0.75, 0.75, 0.5, 1.0, -0.75, 0.25, 0.75, 0.25, -0.75, -0.75, -0.75, 0.0, 0.5, -0.25, -0.25, -1.0, 0.75, -1.0, 0.5, 0.5, -0.25, 0.75, 0.5, 1.0, -1.0, 1.0, -0.25, -0.25, -1.0, 0.0, -0.75, 0.75, -0.25, -0.75, -0.75, -0.25, -0.5, 0.75, 0.0, 0.25, 0.25, -0.5, 0.0, -0.25, 0.25, 0.0, 1.0, 1.0, -0.5, 0.5, 0.5, -0.75, 0.75, -0.5, -1.0, -0.5, -0.75, 1.0, -1.0, -0.5, 0.5, -0.5, 0.25, -0.5, -0.75, 0.5, -0.5, 0.75, 0.25, 0.5, -1.0, 1.0, 0.0, 1.0, -0.5, 0.0, -1.0, 0.0, -1.0, -0.75, 0.25, 1.0, 0.0, 1.0, 1.0, -0.5, 0.0, -0.5, -0.25, -0.5, -0.25, 1.0, -0.5, -0.25, ]);
    
    
    texture300.destroy();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    texture301.destroy();
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder100.insertDebugMarker("marker");
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
    
    
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query302.destroy()
    
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const array9 = new Float32Array([0.75, -1.0, 1.0, -0.5, -1.0, -1.0, 1.0, 0.5, -1.0, -1.0, 0.75, 0.5, -0.75, 1.0, -0.75, -1.0, 0.5, -1.0, 0.75, 0.5, 0.75, 0.75, 0.25, -0.75, -1.0, -0.25, 1.0, 1.0, 1.0, -0.75, -1.0, 0.25, 0.75, -0.25, 0.5, 0.0, 1.0, -0.5, 0.5, -1.0, 0.75, 0.0, 0.75, -0.5, 0.0, 0.0, 0.0, 0.25, 1.0, 1.0, 0.0, 0.25, 0.25, -0.5, 1.0, 0.25, -1.0, 0.75, 0.25, -1.0, -0.5, 0.75, -0.25, -0.5, -1.0, 0.25, 0.75, 1.0, -0.25, 0.5, 0.25, 0.75, -0.25, -1.0, 0.0, 0.75, 0.5, -0.5, -1.0, 1.0, 0.5, 0.5, -0.5, 0.75, -1.0, 0.25, 0.75, 0.75, 0.25, -0.5, -0.5, 0.25, -0.75, 0.5, -1.0, 0.0, 0.0, 0.5, 0.75, 0.25, ]);
    const array10 = new Float32Array([1.0, -0.75, 0.75, 0.0, 1.0, -0.75, 0.5, -0.5, 0.75, -1.0, -0.25, 0.5, -1.0, 0.25, -0.75, 0.5, -0.25, 0.25, 0.5, 0.25, 1.0, -0.75, 0.5, 1.0, 0.75, -0.5, 0.5, -0.25, 0.0, 1.0, 0.75, -0.5, 1.0, -0.25, 0.0, -1.0, -1.0, -0.25, 0.5, 0.75, 0.75, -0.75, 0.75, 0.25, 0.0, -0.75, 0.25, 0.5, -0.75, -0.75, 0.5, 0.75, -1.0, -0.25, 0.0, 1.0, -1.0, 1.0, -0.25, 0.75, 0.75, -0.25, -0.75, -0.5, 1.0, 0.0, 0.5, -0.5, -0.25, -0.75, -1.0, 0.5, 0.25, -0.5, -0.25, 0.75, 0.0, -0.5, -0.25, 0.5, 0.0, -1.0, -0.75, -0.75, -0.75, -0.25, 1.0, 0.25, 0.5, 1.0, 0.0, -1.0, -1.0, 0.0, 0.0, 0.75, 1.0, -1.0, -1.0, -0.75, ]);
    command_encoder102.pushDebugGroup("mygroupmarker")
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer100.destroy()
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query301.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder100.popDebugGroup();
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    render_bundle_encoder101.setPipeline(render_pipeline105);
    
    command_encoder102.clearBuffer(buffer102);
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
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
    command_encoder300.insertDebugMarker("mymarker");
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    
    command_encoder300.popDebugGroup()
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture100.destroy();
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
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    query102.destroy()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    query302.destroy()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    query101.destroy()
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    command_encoder103.pushDebugGroup("mygroupmarker")
    buffer105.destroy()
    const command_buffer300 = command_encoder300.finish();
    command_encoder103.clearBuffer(buffer102);
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder103.insertDebugMarker("mymarker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    command_encoder103.clearBuffer(buffer102);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    
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
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline103);
    query301.destroy()
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    buffer104.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline104);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    
    const command_buffer302 = command_encoder302.finish();
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    render_bundle_encoder100.setVertexBuffer(0, buffer107);
    query302.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder100.setIndexBuffer(buffer101, "uint16");
    buffer101.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
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
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    buffer108.destroy()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder100.popDebugGroup();
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
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder102.setPipeline(render_pipeline105);
    render_bundle_encoder100.drawIndexed(3);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    query102.destroy()
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    query500.destroy()
    
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
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
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
    
    buffer103.destroy()
    
    buffer102.destroy()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    command_encoder502.pushDebugGroup("mygroupmarker")
    
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
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group103);
    compute_pass_encoder3010.setPipeline(compute_pipeline302);
    query500.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.setVertexBuffer(0, buffer1010);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1015, 0);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder103.clearBuffer(buffer1015);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    buffer1010.destroy()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.popDebugGroup();
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    device10.queue.writeBuffer(buffer1015, 0, array4, 0, array4.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query103.destroy()
    command_encoder303.insertDebugMarker("mymarker");
    command_encoder303.insertDebugMarker("mymarker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
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
    const command_buffer105 = command_encoder105.finish();
    query100.destroy()
    device10.queue.writeBuffer(buffer1015, 0, array6, 0, array6.length);
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.drawIndirect(buffer1015, 0);
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    query102.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer1015, 0, array9, 0, array9.length);
    
    
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
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder3010.insertDebugMarker("marker")
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    device10.queue.writeBuffer(buffer1015, 0, array10, 0, array10.length);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.finish();
    
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
    
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    command_encoder103.insertDebugMarker("mymarker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group105);
    const command_buffer500 = command_encoder500.finish();
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder1030.setPipeline(compute_pipeline106);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device10.queue.writeBuffer(buffer1015, 0, array6, 0, array6.length);
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    command_encoder104.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer1015, 0, array9, 0, array9.length);
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setVertexBuffer(0, buffer1010);
    buffer1011.destroy()
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device30.queue.submit([command_buffer300, command_buffer302, command_buffer303, ]);
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    command_encoder502.insertDebugMarker("mymarker");
    buffer1016.destroy()
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query101.destroy()
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    query101.destroy()
    
    
    
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
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
    buffer1012.destroy()
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    query103.destroy()
    compute_pass_encoder3010.popDebugGroup()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query101.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    device50.queue.submit([command_buffer500, ]);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout303,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    buffer1014.destroy()
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    buffer302.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    query302.destroy()
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([-0.5, 0.75, -0.75, -0.75, -0.25, 0.75, 0.0, 0.5, 0.5, -0.5, 0.75, 0.75, 0.25, -1.0, -0.25, -0.75, 0.25, -0.75, 0.75, 0.75, -0.5, -0.5, 0.75, -0.75, 0.25, 0.25, 1.0, 0.75, -1.0, -0.75, -0.5, -1.0, 1.0, 1.0, -0.5, 0.0, -0.5, 0.0, -1.0, 0.5, 1.0, -1.0, -1.0, 0.5, -0.75, 1.0, 0.5, 0.0, 1.0, -1.0, -0.5, -0.75, 0.25, -0.5, 0.5, -0.75, -1.0, 1.0, 0.0, 0.75, 0.5, -0.25, 0.75, -0.5, 0.25, 0.25, -0.5, 0.0, 0.25, -0.5, -0.5, -0.5, -0.5, -1.0, 0.5, 0.5, -1.0, -0.75, -0.25, 0.25, 0.5, -0.75, 0.0, 0.5, -0.5, -0.5, 1.0, 1.0, -0.5, 0.5, 0.5, 0.25, -0.25, 0.25, -0.75, -0.75, -0.75, -1.0, -0.75, 0.5, ]);
    command_encoder503.pushDebugGroup("mygroupmarker")
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1015, 0, array5, 0, array5.length);
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    query103.destroy()
    device10.pushErrorScope("internal");
    
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
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
    query102.destroy()
    
    buffer1013.destroy()
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder104.insertDebugMarker("mymarker");
    
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder102.draw(3);
    command_encoder504.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout303]
    });
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder502.popDebugGroup()
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group106);
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout304,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    command_encoder504.popDebugGroup()
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder501.setPipeline(render_pipeline501);
    
    device10.queue.writeBuffer(buffer1015, 0, array5, 0, array5.length);
    device40.destroy();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1015, 0, array9, 0, array9.length);
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout304,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
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
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1020.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1020, 0);
    compute_pass_encoder5030.popDebugGroup()
    const command_buffer504 = command_encoder504.finish();
    command_encoder104.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    const command_buffer104 = command_encoder104.finish();
    device50.queue.submit([command_buffer504, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer105, ]);
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
        layout: compute_pipeline302.getBindGroupLayout(0),
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
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder1030.end();
    compute_pass_encoder3010.end();
    device10.queue.submit([command_buffer104, ]);
    command_encoder103.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1020.end();
    compute_pass_encoder1000.end();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.end();
    const command_buffer301 = command_encoder301.finish();
    device20.queue.submit([command_buffer200, ]);
    device50.queue.submit([command_buffer502, ]);
    device10.queue.submit([command_buffer103, ]);
    command_encoder102.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    const command_buffer102 = command_encoder102.finish();
    const command_buffer100 = command_encoder100.finish();
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer100, ]);
}