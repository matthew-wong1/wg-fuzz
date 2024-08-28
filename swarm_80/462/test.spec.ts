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
    const array0 = new Float32Array([-0.75, 0.75, -0.75, -0.5, -0.5, 0.5, 0.25, -0.75, 0.5, -0.5, 1.0, 0.5, -0.25, -0.5, -0.75, -0.5, -1.0, -0.25, -0.5, 0.5, -0.75, 0.0, 1.0, 0.25, -0.5, -0.5, -1.0, 1.0, 0.75, 0.25, 0.75, 1.0, -0.25, 0.0, -0.75, -0.5, -0.75, 0.75, -0.25, 1.0, 0.0, 0.25, -0.75, 0.25, 0.5, 1.0, 0.5, 0.0, 0.75, 0.25, -0.5, 1.0, -0.75, -1.0, 0.25, 0.25, -1.0, -1.0, 0.0, -1.0, -0.75, -0.25, -0.25, 0.0, 0.0, 0.75, -1.0, -0.5, -0.25, 0.75, 0.5, 1.0, 0.25, 0.25, 0.75, 0.0, 0.5, 0.5, 0.75, 0.75, 0.25, -0.75, 0.5, 0.5, -0.75, 1.0, -1.0, -0.5, 0.0, 1.0, 0.0, -1.0, 1.0, 0.75, -1.0, 1.0, 0.0, 0.0, 1.0, -1.0, ]);
    
    
    const array1 = new Float32Array([0.5, 0.0, 0.5, 0.25, -0.25, 1.0, -0.75, 0.0, -0.5, 1.0, -0.75, -0.25, -0.5, -1.0, 0.25, -0.5, 0.25, -0.5, -0.25, -0.25, 0.25, 0.5, 0.0, -0.25, 1.0, 1.0, -1.0, 1.0, 0.0, 0.25, -0.75, -0.25, 0.75, 0.0, -0.25, 1.0, 0.5, 1.0, -0.25, 1.0, 0.0, -0.5, 0.5, -0.25, -1.0, 0.0, 1.0, -0.5, 0.75, -0.5, 1.0, 0.25, -0.5, -1.0, 0.5, -0.75, 0.25, 0.5, 0.5, 0.25, 0.0, 0.5, 1.0, -0.75, 0.75, 0.5, -0.25, -0.5, 0.5, 1.0, -0.5, 1.0, 1.0, 0.0, -0.5, -1.0, 1.0, -0.25, -0.75, 0.25, 0.0, -0.5, -0.25, -1.0, -0.5, 0.5, -0.75, 1.0, 0.75, 0.5, 0.25, 1.0, -0.25, -0.25, 0.75, -0.5, 0.25, 0.5, 1.0, -1.0, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array2 = new Float32Array([0.5, 0.0, 0.75, 1.0, -0.5, -0.25, -0.25, 0.0, 0.0, 0.0, -0.25, 0.75, -0.5, 0.25, 0.25, 0.0, 0.75, 0.0, -0.25, 1.0, -0.75, -0.75, 0.0, 1.0, 0.25, -0.75, -0.25, 1.0, 0.75, -0.5, 0.75, -0.75, -0.25, 1.0, 0.0, -0.25, 1.0, 0.75, -0.25, 1.0, 0.5, 0.75, -0.75, -0.25, 0.25, -0.25, 0.25, 1.0, 0.0, -0.25, -0.25, -0.25, -0.25, -0.25, -0.5, 0.0, -0.75, -0.5, 0.0, 0.0, 0.75, 0.75, -1.0, -0.75, -0.5, -0.75, -1.0, 0.75, 0.0, 0.5, 0.0, -1.0, 0.75, 0.25, 0.25, -0.5, 0.75, 0.75, -0.5, 0.75, 1.0, 0.75, 0.75, 0.75, -0.25, -0.25, 1.0, -0.75, -0.25, -0.5, -0.25, -0.25, 0.5, -0.5, -1.0, -0.25, 0.25, 0.25, -0.75, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const array3 = new Float32Array([0.75, -0.25, 0.0, -0.25, 0.25, 0.75, 0.0, 0.25, 1.0, -0.75, 1.0, 0.0, 1.0, 0.5, -0.25, 0.5, 0.5, -0.5, 1.0, 0.25, 0.0, -1.0, -1.0, 0.0, 0.0, 0.0, -0.25, 0.75, -0.5, -1.0, -0.75, 0.75, -1.0, 1.0, -0.25, 0.25, -0.25, 0.0, 0.25, 1.0, 0.5, 0.5, -0.5, 0.75, -0.25, -0.25, -0.75, 0.75, -1.0, 0.0, 0.25, 0.0, 0.75, -1.0, 1.0, 1.0, -0.75, -0.25, -1.0, 0.0, 1.0, -0.25, 1.0, -1.0, -0.75, 0.25, 0.25, 0.0, -0.25, 0.5, 0.75, -0.75, 0.5, -0.5, -0.5, 0.0, -0.5, -0.25, 0.0, -0.75, -0.5, 1.0, 0.75, 0.25, 0.5, -0.75, 0.5, 0.0, -1.0, 0.75, 0.25, 0.25, -0.5, 0.75, 0.5, 0.0, 0.5, 0.5, 1.0, -1.0, ]);
    const array4 = new Float32Array([-0.75, -0.25, -0.5, 1.0, -0.5, 0.75, 0.5, 0.25, -1.0, 0.5, 0.5, 0.0, 0.25, -1.0, -1.0, 0.25, -0.5, 0.5, -0.25, -0.5, 0.0, 0.25, -0.75, 0.5, -1.0, 0.5, 0.5, -0.5, -0.75, -0.25, -0.75, -1.0, -0.75, 0.25, 0.75, 0.0, 1.0, 0.25, -0.25, 0.5, -0.5, -1.0, 0.25, 0.75, -0.5, -1.0, -0.25, -0.75, 1.0, -0.5, 0.25, -0.5, 1.0, 0.0, 0.0, -0.75, 0.0, 0.0, -0.75, 1.0, 0.25, 1.0, -1.0, 1.0, -0.25, -1.0, -0.25, 1.0, -0.25, -0.25, 0.5, -1.0, 0.25, -0.75, 0.25, -1.0, 0.25, -1.0, -0.25, -1.0, -0.25, -0.5, -1.0, 0.75, 0.25, 0.0, 1.0, 0.5, -1.0, 0.5, 0.0, 0.0, -0.75, 1.0, -1.0, -0.5, -0.75, -0.5, -0.5, -0.5, ]);
    
    
    
    const array5 = new Float32Array([-1.0, 1.0, 1.0, -0.5, -1.0, -1.0, 1.0, 0.5, -0.25, -0.25, -0.5, 1.0, 0.75, 0.5, 0.5, 0.25, 0.75, 0.0, 1.0, 1.0, -0.25, -0.5, -1.0, -0.75, 0.25, -1.0, -0.75, 0.0, 1.0, -0.25, -0.25, -0.25, -0.5, 0.75, 0.75, 0.5, -0.5, -1.0, 0.5, -0.75, 0.0, 0.75, 1.0, -0.5, 1.0, -0.5, 0.0, 0.75, -0.5, 1.0, -0.5, 0.75, -0.25, 1.0, 0.75, 0.75, -0.25, 0.25, 0.5, -0.5, 0.25, 0.5, -0.25, 0.5, 0.0, 0.25, 0.25, 0.25, 1.0, -0.5, 0.75, -0.25, -0.75, 1.0, -0.75, -1.0, 0.0, -0.75, 0.5, -0.75, 0.5, 0.0, 0.5, 0.75, -0.5, 0.0, 0.0, 0.0, -0.25, -1.0, 0.25, 0.25, 1.0, -0.75, -0.25, 1.0, 0.0, -0.75, 0.75, -0.25, ]);
    
    
    
    
    
    
    
    
    const array6 = new Float32Array([0.0, 0.0, 0.75, 0.5, -0.25, 0.0, 0.25, 1.0, -0.5, 1.0, -0.75, 0.5, 0.75, 0.75, 0.5, 0.25, -0.75, 0.5, 0.25, 0.0, 0.75, -1.0, -0.25, -0.75, -0.5, 0.5, 1.0, 0.0, -0.25, -0.75, 0.25, 1.0, -0.5, -0.75, 0.75, 1.0, 0.75, -1.0, -1.0, -0.25, -1.0, 0.5, 0.25, 0.0, -0.5, 0.5, 1.0, 1.0, -0.25, -0.25, -0.5, 0.75, 1.0, 0.0, 0.75, 0.25, 0.75, 1.0, 0.5, 0.5, 1.0, 1.0, -1.0, 1.0, 0.25, 0.0, -0.75, -0.5, 0.25, 0.5, -0.5, -0.75, -0.25, 1.0, 1.0, 0.5, -0.5, 0.75, 1.0, 1.0, -0.75, 0.75, -1.0, 0.0, -1.0, -0.5, 0.25, -0.75, 0.0, -0.75, -0.25, 0.5, -1.0, -0.5, 0.25, 0.75, 0.25, 0.5, 0.75, 0.5, ]);
    const array7 = new Float32Array([0.0, -0.75, 1.0, 0.5, 0.75, -1.0, -0.75, -0.25, 1.0, 0.0, 0.5, 0.25, -0.75, 0.5, -1.0, 0.25, 1.0, 0.25, 0.75, -0.75, -0.5, 1.0, 0.75, -0.75, 0.75, 0.5, 0.75, -0.25, -0.5, 0.5, 1.0, 0.5, 0.25, 0.75, 0.0, 0.75, 0.0, 0.5, -1.0, 0.0, 0.25, 0.25, -1.0, -0.75, -0.75, 0.0, 0.5, 0.0, 0.25, 0.0, 0.0, -0.5, -0.75, 1.0, -0.25, 0.0, 0.75, -0.25, -0.75, 0.0, -0.25, 0.0, -0.75, 0.0, -0.5, 0.25, -0.25, -1.0, 0.75, 0.75, 1.0, -0.25, -0.5, 1.0, 0.0, -0.75, 0.75, 0.25, 0.25, 0.5, -0.75, -1.0, 0.0, 0.5, 0.25, -0.75, 0.5, 0.75, 0.0, 0.5, -1.0, 0.25, -0.75, -1.0, -0.75, -0.75, -1.0, 0.5, 0.5, 0.25, ]);
    
    
    const array8 = new Float32Array([-0.5, -0.25, 1.0, -0.75, -1.0, 0.75, 1.0, 0.25, 0.0, -1.0, 0.5, -0.25, 0.75, 0.5, -0.5, -1.0, 0.5, 0.5, 0.0, -1.0, -1.0, 0.5, 0.5, 1.0, -0.75, 0.5, -1.0, 0.25, -1.0, 0.25, -1.0, -1.0, 1.0, 0.0, -1.0, -0.5, -0.25, 0.25, -1.0, 1.0, -0.75, -0.25, 0.75, 0.75, -1.0, 0.0, 1.0, -0.75, -0.25, 0.25, 0.75, -0.5, 0.25, -0.5, 0.25, -1.0, 0.5, -0.25, -1.0, 0.25, 1.0, -0.25, 0.25, 1.0, 0.75, 0.75, 0.5, 1.0, -1.0, 0.5, -0.75, -0.25, 0.25, -0.5, 0.75, 0.0, 1.0, -0.5, -0.5, 0.0, -0.5, -0.25, -1.0, 1.0, 0.25, 0.75, -1.0, 0.75, 0.5, -0.5, 0.75, -1.0, 0.75, -0.5, 0.0, 0.5, -0.25, -0.5, 0.5, 0.5, ]);
    
    
    
    
    
    const array9 = new Float32Array([0.0, 0.5, -1.0, -0.25, -1.0, 0.5, -1.0, 0.75, 0.25, 0.5, -0.25, -1.0, 1.0, -0.5, -1.0, 1.0, -0.25, -0.5, 0.5, 0.75, 0.75, 0.75, 1.0, -0.75, 1.0, -0.5, -1.0, 0.5, -0.5, 0.25, 0.0, 0.25, 0.0, 0.25, -1.0, -0.75, 0.0, 0.75, 0.5, 1.0, 1.0, -1.0, -0.25, 0.75, -0.5, 1.0, 1.0, -0.75, 0.5, -0.25, -1.0, -0.75, -0.25, 0.5, 0.25, -1.0, 0.5, -1.0, 0.5, -1.0, 0.5, 0.0, 0.25, 0.0, 0.5, 0.0, 0.0, 0.5, -1.0, -1.0, -0.5, -0.25, 0.25, 0.0, 0.5, 0.5, -0.75, 0.0, 1.0, -1.0, 0.5, -0.5, -0.25, 0.75, -0.25, -0.5, -0.75, 0.25, -0.25, 0.75, 1.0, 0.0, 1.0, 0.25, 0.5, 1.0, 0.25, 1.0, 1.0, 0.75, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    device20.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device40.pushErrorScope("out-of-memory");
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device50.pushErrorScope("internal");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.pushErrorScope("validation");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    query501.destroy()
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer300 = command_encoder300.finish();
    
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_buffer400 = command_encoder400.finish();
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    buffer500.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer501.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
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
    
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    texture300.destroy();
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    
    device30.queue.submit([command_buffer300, ]);
    
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
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device40.pushErrorScope("validation");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture301.destroy();
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2uint",
        dimension: "2d"
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    query500.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    texture400.destroy();
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder301.clearBuffer(buffer300);
    
    device50.pushErrorScope("out-of-memory");
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    
    
    texture500.destroy();
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    render_bundle_encoder500.popDebugGroup();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    command_encoder302.clearBuffer(buffer300);
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    texture401.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
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
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    command_encoder303.clearBuffer(buffer300);
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    render_bundle_encoder402.setPipeline(render_pipeline400);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_buffer303 = command_encoder303.finish();
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    query500.destroy()
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    
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
    
    command_encoder302.insertDebugMarker("mymarker");
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    device30.queue.submit([command_buffer303, ]);
    
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    query501.destroy()
    
    device40.queue.submit([command_buffer400, ]);
    query502.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder401.insertDebugMarker("mymarker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const command_buffer401 = command_encoder401.finish();
    device30.pushErrorScope("internal");
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    
    query500.destroy()
    
    render_bundle_encoder500.popDebugGroup();
    
    command_encoder304.clearBuffer(buffer300);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile(__dirname + '/shader_module508.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    query500.destroy()
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query800.destroy()
    
    query501.destroy()
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    texture402.destroy();
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    device40.queue.submit([command_buffer401, ]);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
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
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    compute_pass_encoder5010.setPipeline(compute_pipeline501);
    device80.destroy();
    render_bundle_encoder400.setPipeline(render_pipeline401);
    
    
    
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    compute_pass_encoder5010.insertDebugMarker("marker")
    command_encoder304.insertDebugMarker("mymarker");
    query500.destroy()
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_bundle_encoder300.setPipeline(render_pipeline302);
    buffer300.destroy()
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    device50.queue.writeTexture({ texture: texture501 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture405.destroy();
    query502.destroy()
    
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    buffer301.destroy()
    query301.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    query400.destroy()
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    device30.pushErrorScope("validation");
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
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
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder5000.setPipeline(compute_pipeline502);
    
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder501.setPipeline(render_pipeline505);
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
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
    
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
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
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.popDebugGroup();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    texture404.destroy();
    var shader_module4010_code = "";
    try {
        shader_module4010_code = await fs.readFile(__dirname + '/shader_module4010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4010 = await device40.createShaderModule({ label: "shader_module4010", code: shader_module4010_code })
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    
    texture501.destroy();
    var shader_module4011_code = "";
    try {
        shader_module4011_code = await fs.readFile(__dirname + '/shader_module4011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4011 = await device40.createShaderModule({ label: "shader_module4011", code: shader_module4011_code })
    device60.destroy();
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    query301.destroy()
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder4020.setPipeline(compute_pipeline400);
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    query300.destroy()
    render_bundle_encoder401.popDebugGroup();
    
    const command_buffer305 = command_encoder305.finish();
    
    query400.destroy()
    compute_pass_encoder5010.insertDebugMarker("marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
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
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const command_buffer502 = command_encoder502.finish();
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module4010,
            entryPoint: "main"
        }
    });
    
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
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
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    
    command_encoder307.insertDebugMarker("mymarker");
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    query502.destroy()
    query500.destroy()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    query500.destroy()
    
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group501);
    compute_pass_encoder5010.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer307 = command_encoder307.finish();
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group400);
    const command_buffer304 = command_encoder304.finish();
    device30.queue.submit([command_buffer307, ]);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    const command_buffer308 = command_encoder308.finish();
    device30.queue.submit([command_buffer308, ]);
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer506, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer506, 0);
    device30.queue.submit([command_buffer304, ]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer403, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer403, 0);
    device30.queue.submit([command_buffer305, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    device50.queue.submit([command_buffer502, ]);
}