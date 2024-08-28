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
    
    
    const array0 = new Float32Array([0.75, -0.75, -0.5, 0.75, 0.0, 0.5, -0.25, 1.0, -0.25, -0.25, 0.25, -0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 0.75, 0.0, 1.0, 1.0, -0.75, -1.0, 0.0, -0.75, 0.25, 0.5, -1.0, 1.0, -0.75, -0.5, 0.75, 1.0, 0.75, 0.75, -0.25, 1.0, 0.25, 0.25, 0.5, 0.0, -0.5, 0.0, 1.0, 0.0, 1.0, -0.75, 0.5, -0.75, 0.5, -0.5, 0.0, -0.25, -0.75, 0.0, 1.0, 0.5, -0.5, -0.75, -0.5, 0.25, 0.25, 0.0, 0.5, 0.5, 0.75, -0.5, -1.0, -0.75, -0.5, 1.0, -1.0, -0.25, 1.0, 0.0, 0.75, 0.0, 0.75, 0.75, -1.0, 0.75, -1.0, -0.75, 1.0, 0.5, 0.0, 0.5, -1.0, -0.75, -0.25, 0.5, 1.0, 1.0, -0.75, -1.0, -0.25, 0.25, 0.5, -0.25, 0.0, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array1 = new Float32Array([0.5, -0.5, 1.0, 1.0, 0.0, -1.0, 0.25, -0.25, 0.5, -0.75, 0.5, 1.0, -0.5, 0.25, -0.75, -0.25, -1.0, -1.0, 0.75, -0.75, -1.0, 0.25, 1.0, 0.25, -0.25, -0.25, -0.5, -0.5, -0.75, 1.0, 0.0, -0.75, 0.25, -1.0, -1.0, -0.75, -0.25, -1.0, -0.75, 0.25, -1.0, 1.0, 0.25, 1.0, -1.0, 0.25, -0.75, 0.5, 1.0, -0.25, 0.5, 0.0, -1.0, 0.0, 0.0, -0.75, 0.75, 0.75, 0.75, 1.0, -1.0, 1.0, -0.25, 0.25, 0.75, 0.0, 1.0, 0.75, 0.75, 1.0, -1.0, -0.75, 0.25, -1.0, 0.0, 0.25, -0.75, 1.0, -0.25, 0.25, -1.0, 1.0, 0.5, -0.5, -0.75, -0.5, 0.0, 1.0, -0.25, 0.25, 0.0, 1.0, 0.25, -1.0, 0.0, -0.5, -0.5, 1.0, 0.0, 0.0, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("internal");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const array2 = new Float32Array([-0.75, -0.75, -0.25, -0.75, 1.0, -1.0, -0.25, -1.0, -0.5, -0.75, -0.75, 0.25, -0.5, -0.5, -0.5, 0.0, 0.5, 0.25, 1.0, -1.0, 0.75, 0.5, 0.0, 0.25, -0.25, -0.75, 0.5, 0.75, -0.5, -0.25, -1.0, 0.25, -1.0, -0.5, 0.5, -0.75, -0.25, -0.25, 0.75, 1.0, 0.75, 0.5, 0.25, 0.0, -1.0, 0.5, -0.25, -1.0, -0.25, -0.75, 0.75, 0.5, -0.5, -0.75, 0.0, -1.0, 0.0, 0.25, 0.75, 0.0, -1.0, 0.75, -0.25, 1.0, -1.0, 0.75, 0.5, 0.25, -1.0, 0.75, -1.0, -0.5, 0.5, 0.0, 0.25, 0.5, 0.75, -0.25, -0.5, 0.75, -1.0, -0.25, -0.25, -1.0, 0.0, 1.0, -0.5, 0.25, 1.0, 0.5, -1.0, -1.0, 1.0, -0.25, -1.0, 0.5, -0.75, -0.75, -0.25, 0.25, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    texture001.destroy();
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture002.destroy();
    texture000.destroy();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([0.0, -0.75, 0.5, -1.0, -1.0, 0.25, 0.0, -0.25, -0.25, 0.75, -0.5, 1.0, 0.5, 0.25, -0.25, 0.0, 0.5, -0.75, -0.25, -0.5, -1.0, -0.75, -0.75, 0.5, -0.5, 0.0, -0.75, -0.5, 0.75, -0.75, -0.25, -1.0, 1.0, 0.0, 0.5, -0.5, 0.5, 0.75, -0.75, -0.75, 0.75, -0.5, -1.0, -0.25, 0.25, -1.0, -1.0, -0.25, -0.5, 0.0, 1.0, -0.5, -0.5, 0.25, -0.5, -0.75, -0.25, -0.5, -1.0, 0.5, -0.5, 0.75, 0.25, -1.0, 0.25, 0.5, 1.0, 0.0, -1.0, 1.0, 0.0, -0.25, -0.75, 1.0, -0.75, -0.25, 0.0, 0.5, 0.5, -0.5, 0.25, -0.5, -0.75, 0.25, 0.0, -0.25, -0.25, 0.0, -0.25, 1.0, -1.0, -0.75, -0.5, 0.5, 1.0, 1.0, -0.75, -0.75, -0.25, 1.0, ]);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    const array4 = new Float32Array([0.25, 0.0, 0.0, -0.5, 0.25, 1.0, 0.25, 1.0, -0.25, 1.0, -1.0, 1.0, 0.25, 0.75, 0.75, 0.5, -0.75, -0.5, -0.75, 0.0, 0.75, 1.0, 0.0, 1.0, 0.25, 0.75, -0.25, -0.25, 0.75, -0.75, -0.25, 0.0, 0.5, -1.0, -1.0, -1.0, -1.0, -0.25, 0.25, 0.5, -0.5, 0.25, -0.25, 0.5, -0.75, 0.5, 0.0, 0.25, -0.75, 0.25, 0.25, -0.75, 0.25, 0.0, -0.5, -0.75, -0.25, 0.75, -0.75, -0.25, 0.75, 0.0, 0.5, -0.25, -1.0, 1.0, 0.5, 0.75, -1.0, 0.75, -0.5, 0.5, 0.25, 0.5, 0.5, -0.25, 0.75, -0.25, -1.0, 0.0, 0.5, -0.75, -0.5, 0.25, -0.25, -0.5, 1.0, -1.0, 0.75, -0.25, -1.0, 0.25, -0.5, 1.0, 0.25, -0.75, -0.25, 0.75, 0.0, -0.25, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    query100.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
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
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const array5 = new Float32Array([-0.25, 0.5, -0.25, 0.25, 1.0, 0.5, 1.0, -0.75, -0.75, 0.5, -1.0, -1.0, -0.75, -0.5, 0.0, 0.5, 0.0, 0.5, 0.0, 0.25, -0.75, 0.0, -1.0, -0.25, -0.75, -0.25, -0.25, -1.0, 0.5, 0.75, 0.75, -0.5, 0.25, 0.25, 1.0, 1.0, 0.0, 0.75, -0.25, -0.5, -0.5, 0.25, 1.0, -0.25, -0.5, 1.0, 0.75, -0.75, -0.75, -0.25, 0.75, 0.25, 0.75, -1.0, -0.25, -0.75, 0.0, -1.0, 0.5, 0.5, -1.0, -0.5, -0.75, -0.75, 1.0, -1.0, 0.25, 0.5, -1.0, -0.75, 0.25, 0.75, -0.25, 0.25, -1.0, 0.25, -0.5, -1.0, -0.25, -0.75, -0.25, -0.5, 0.75, 0.5, -0.25, -0.25, -0.75, 0.25, -0.25, 0.5, -0.25, -0.75, -0.25, -0.5, 0.75, -1.0, 0.0, -0.5, 0.0, -0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    query100.destroy()
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const array6 = new Float32Array([1.0, 0.0, -1.0, -0.75, -0.75, -1.0, 0.75, 0.0, -1.0, 0.25, 1.0, 0.5, 0.5, -0.75, 1.0, -0.5, 0.25, 0.0, 0.5, 1.0, -0.25, 0.25, -0.75, -0.75, 0.75, -1.0, 0.25, 0.0, -0.75, -0.75, 0.0, -0.5, 0.5, -0.25, 1.0, -0.75, -0.75, 0.75, 0.5, -0.25, -0.5, 1.0, 0.5, 1.0, 0.0, 0.75, -0.25, 0.0, -0.25, -1.0, 0.5, -0.75, -0.75, -0.75, 0.0, 0.75, -0.5, -0.75, -0.75, 0.75, 0.25, -1.0, 0.75, 0.25, 1.0, -1.0, -0.25, 0.25, -1.0, 1.0, -1.0, -0.5, 0.5, 0.75, 0.75, 0.5, -1.0, 1.0, 0.75, 0.0, -0.75, 0.5, -1.0, 0.5, -1.0, 0.0, -0.5, 1.0, -1.0, 0.0, 1.0, 0.25, 0.0, -0.5, 0.25, 0.75, 1.0, 0.0, 0.75, 0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const array7 = new Float32Array([1.0, -1.0, -1.0, -1.0, -0.5, 0.25, -0.25, -0.5, 0.0, 0.75, -0.25, -0.5, 0.75, 0.0, 0.75, -0.5, -0.5, -0.25, -0.25, -0.25, 0.0, 1.0, 0.25, 0.0, 0.25, 0.75, 0.5, -0.5, 0.75, 0.0, 1.0, 0.75, 0.0, 0.5, -1.0, 0.0, -1.0, -0.25, -0.25, 0.5, -0.5, -0.5, 0.75, -0.25, -0.25, 0.75, -1.0, -0.75, 0.0, -0.5, 1.0, 0.25, -0.25, 0.5, -0.75, -0.25, -0.5, 1.0, -0.25, -0.5, 0.25, 0.25, 0.75, -0.25, 0.0, -0.25, 0.0, 0.5, -0.25, -1.0, 1.0, 0.5, 0.75, 1.0, -0.5, 0.5, -0.5, 0.25, 0.25, 0.75, -1.0, 0.5, 1.0, 1.0, -0.25, 1.0, -1.0, 1.0, -0.5, 0.75, 0.5, -0.75, 0.25, 0.0, -1.0, 0.5, 0.25, 1.0, 1.0, 0.5, ]);
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    query100.destroy()
    const command_buffer300 = command_encoder300.finish();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder100.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer102.destroy()
    render_bundle_encoder102.setPipeline(render_pipeline100);
    
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder101.draw(3);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder101.popDebugGroup();
    
    
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
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query102.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture102.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.submit([command_buffer300, ]);
    
    query100.destroy()
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query100.destroy()
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder100.insertDebugMarker("marker");
    texture103.destroy();
    
    
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    texture100.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    texture300.destroy();
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
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    buffer101.destroy()
    query102.destroy()
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    query103.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    render_bundle_encoder101.popDebugGroup();
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query300.destroy()
    
    
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1050,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture104 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    buffer104.destroy()
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    command_encoder301.pushDebugGroup("mygroupmarker")
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
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
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    buffer108.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    render_bundle_encoder101.finish();
    render_pass_encoder1030.executeBundles([render_bundle_encoder101, ])
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query102
    });
    query300.destroy()
    
    buffer300.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_pass_encoder1010.setPipeline(render_pipeline101);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query100.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder302.insertDebugMarker("mymarker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    query104.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder1031.setPipeline(render_pipeline100);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder301.popDebugGroup()
    
    buffer107.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    texture101.destroy();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture106.destroy();
    render_pass_encoder1010.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture104 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    command_encoder301.resolveQuerySet(
        query302,
        0,
        32,
        buffer301,
        0
    )
    device60.destroy();
    query103.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture105.destroy();
    
    
    
    buffer302.destroy()
    command_encoder301.resolveQuerySet(
        query302,
        0,
        32,
        buffer301,
        0
    )
    device10.queue.writeTexture({ texture: texture104 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.pushErrorScope("out-of-memory");
    
    render_pass_encoder1031.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query103
    });
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group104);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.setPipeline(render_pipeline102);
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder1020.setScissorRect(0, 0, texture105.width / 2, texture105.height / 2);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture104 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder500.insertDebugMarker("mymarker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder100.setIndexBuffer(buffer108, "uint16");
    query300.destroy()
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_buffer301 = command_encoder301.finish();
    
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
    buffer103.destroy()
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    buffer1010.destroy()
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const array8 = new Float32Array([0.5, -0.75, -0.5, -0.75, 0.5, 0.0, -0.5, -1.0, 0.25, 0.0, 0.5, 0.0, -0.5, -0.75, -0.25, -0.5, -0.25, 0.5, 0.25, -1.0, 0.25, 1.0, 0.0, 0.75, 1.0, 0.25, 1.0, 0.5, -0.5, -0.25, -0.75, -1.0, -0.75, -0.75, 0.0, -1.0, -1.0, 0.0, 0.0, -1.0, 0.25, 1.0, -1.0, 0.5, -1.0, -0.75, -0.25, 0.5, -0.25, 0.0, -0.25, -0.75, -0.75, -0.75, 1.0, 0.75, -0.25, -0.5, -0.75, 0.0, -0.5, -1.0, 0.5, 0.75, 0.0, -0.5, 0.75, -0.25, -0.75, -0.5, 0.75, 1.0, -1.0, 0.75, -0.5, 0.5, 0.75, -0.25, 1.0, 0.75, 1.0, -1.0, -0.25, 0.25, 0.0, 0.0, 0.25, -0.5, -0.75, 0.25, 0.75, -0.25, -0.25, -0.5, 0.0, 0.5, -0.75, -0.75, 0.5, 1.0, ]);
    
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query500.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer106.destroy()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_buffer500 = command_encoder500.finish();
    render_bundle_encoder100.setIndexBuffer(buffer108, "uint16");
    const array9 = new Float32Array([0.25, -0.75, -0.75, 0.0, -0.75, -0.75, 1.0, -0.25, -0.75, 0.75, -1.0, 0.75, 1.0, 0.5, 0.0, -0.25, 0.0, 1.0, 0.25, 0.25, -0.75, 0.25, 0.5, 1.0, -1.0, -0.25, 0.25, -1.0, -0.5, -1.0, 0.0, -0.25, -1.0, 1.0, 0.75, -1.0, 0.5, 0.5, 1.0, 0.75, -0.5, 0.0, 0.25, -0.5, 0.5, 1.0, -0.5, -0.5, 0.75, -0.5, 0.5, 1.0, 0.0, 0.75, 0.25, 0.25, 0.5, 0.0, 0.75, 0.0, -0.5, -0.5, 1.0, -0.5, -0.5, 0.75, -0.5, 0.0, -0.25, -0.75, 1.0, -0.75, -0.25, -0.25, 0.0, -1.0, -0.25, 1.0, -0.25, 0.5, 1.0, 0.5, -0.75, 0.75, -1.0, 0.0, -0.5, 1.0, 0.75, 1.0, -0.5, -0.75, 0.75, 0.0, 0.75, 0.0, 0.0, 1.0, -0.5, 1.0, ]);
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1010.popDebugGroup();
    
    
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.setIndexBuffer(buffer108, "uint16");
    render_bundle_encoder100.drawIndexed(3);
    buffer1011.destroy()
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("internal");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    query300.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture105.width / 2, texture105.height / 2);
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout303]
    });
    device20.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_pass_encoder1020.setScissorRect(0, 0, texture105.width / 2, texture105.height / 2);
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeTexture({ texture: texture104 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1031.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder100.popDebugGroup();
    
    
    
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder102.setVertexBuffer(0, buffer100);
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1010.setStencilReference(1);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group106);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    query302.destroy()
    
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeTexture({ texture: texture104 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setScissorRect(0, 0, texture105.width / 2, texture105.height / 2);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.insertDebugMarker("marker");
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    device10.queue.writeTexture({ texture: texture104 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query106.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1020.setVertexBuffer(0, buffer100);
    render_pass_encoder1050.setPipeline(render_pipeline101);
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1017, 0);
    render_pass_encoder1031.setVertexBuffer(0, buffer100);
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1017, 0);
    const command_buffer303 = command_encoder303.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group107);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group108);
    compute_pass_encoder1000.popDebugGroup()
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group109);
    compute_pass_encoder1000.end();
    command_encoder100.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1050.setVertexBuffer(0, buffer100);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1050.drawIndirect(buffer1017, 0);
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1010.setVertexBuffer(0, buffer100);
    render_pass_encoder1010.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1010.draw(3);
    render_pass_encoder1040.setVertexBuffer(0, buffer100);
    render_pass_encoder1050.end();
    render_pass_encoder1031.end();
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1010.end();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1040.draw(3);
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer103, ]);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1040.end();
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer105, ]);
}