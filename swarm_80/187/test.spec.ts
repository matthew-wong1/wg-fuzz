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
    
    
    
    
    
    const array0 = new Float32Array([-0.75, 1.0, 0.25, -0.5, 0.5, -0.25, -0.75, 0.0, 0.75, -0.75, 0.0, 0.0, -0.25, 0.0, 0.0, 0.0, -0.5, -0.25, -0.5, 0.0, 0.5, -1.0, 0.0, 0.25, -0.75, 0.0, -0.75, -0.75, -1.0, 0.25, 0.5, -0.25, -0.25, -0.75, -0.25, 1.0, -1.0, -0.75, 0.0, 0.0, 0.25, 1.0, 0.25, -0.5, 0.0, 0.75, 0.5, -0.25, 0.25, -0.5, -0.5, 0.25, 1.0, 0.5, 0.75, -0.25, 0.75, 0.0, 0.25, 0.25, 0.0, 0.25, 0.75, -0.5, 0.75, -1.0, -0.75, -1.0, -0.25, 1.0, 0.25, -1.0, -0.5, 1.0, 0.75, 1.0, -1.0, 0.5, 1.0, -0.75, 0.25, -1.0, 0.25, 0.25, 0.5, -0.25, 0.75, 0.5, -1.0, -1.0, -0.25, 0.25, 1.0, -0.75, -0.5, -0.75, -0.25, 0.25, -1.0, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query000.destroy()
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query100.destroy()
    query001.destroy()
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    query100.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device10.destroy();
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query000.destroy()
    buffer001.destroy()
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query001.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    query200.destroy()
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([1.0, -1.0, -0.5, -1.0, -0.75, 0.5, -1.0, 0.25, 1.0, 0.25, 0.5, 0.0, 0.0, -0.75, -0.5, 0.75, 0.25, 0.75, -1.0, 1.0, 0.25, 0.5, -0.75, 0.25, 1.0, -1.0, 1.0, -1.0, 0.0, 1.0, -0.75, 0.0, 0.0, -0.5, -0.5, -0.5, -0.5, -0.25, 0.5, -0.75, -0.75, 1.0, -1.0, -0.5, 0.25, -1.0, 0.5, 1.0, 0.75, -0.5, 1.0, -0.25, 0.5, -0.75, 0.5, 1.0, 0.25, 0.5, 0.5, 0.0, 0.0, 1.0, 1.0, -0.75, 0.25, -0.75, -0.75, 1.0, 0.5, 0.5, 0.75, -0.5, -0.25, 0.25, 1.0, 0.5, 0.25, 0.25, -1.0, -1.0, 0.5, -0.25, 0.5, -1.0, 0.0, 1.0, -0.25, -0.25, 0.5, 1.0, 0.5, 0.0, 0.5, 0.75, 1.0, 0.0, 0.0, -0.25, 0.25, 0.75, ]);
    query000.destroy()
    
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    buffer000.destroy()
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    device40.destroy();
    query000.destroy()
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    query001.destroy()
    device30.destroy();
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
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device00.destroy();
    
    query200.destroy()
    
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    device20.destroy();
    
    query500.destroy()
    
    
    
    
    device50.destroy();
    
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    query600.destroy()
    
    
    
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device60.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    
    
    
    
    
    device70.destroy();
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    device80.destroy();
    
    
    
    
    
    const array2 = new Float32Array([-0.25, -0.5, 0.75, 0.0, 0.25, 0.25, 0.5, 0.0, 0.5, -0.25, -1.0, -0.5, -1.0, 0.0, -0.75, 0.0, -0.5, 0.75, 1.0, 0.75, 0.75, 0.0, 0.25, 0.5, -1.0, 0.5, -0.75, 0.0, -0.5, 0.5, 0.5, -1.0, 0.75, 0.0, 0.25, -0.5, -1.0, -1.0, -0.5, 0.25, -1.0, -0.25, -0.75, 0.0, -0.25, 0.5, 0.25, -0.25, 1.0, 0.25, 0.75, -0.25, 0.5, 0.0, 0.0, 0.0, -0.25, 0.5, -0.25, 0.25, -0.25, 0.5, 0.0, -0.5, 1.0, 0.0, -0.5, 0.25, 0.5, -0.25, 0.5, -0.25, 0.25, -0.25, -0.75, -1.0, 0.25, -1.0, -0.75, 1.0, 0.25, 0.5, 0.25, 0.5, 0.75, 0.5, -0.25, -0.75, -0.75, 0.0, -0.75, 0.5, -0.75, -1.0, -0.25, 0.25, -0.5, 0.25, -0.75, -0.75, ]);
    
    
    
    
    
    
    
    const array3 = new Float32Array([0.0, -0.25, -1.0, -0.5, 0.5, -0.75, 1.0, 1.0, 0.0, -0.75, -0.5, -1.0, -0.75, 0.0, -0.5, 1.0, 0.75, -0.25, 0.25, -0.75, -0.5, -0.5, 0.25, -0.5, 1.0, 0.75, 0.0, -0.5, -0.25, -0.25, -0.75, 0.0, -1.0, 0.5, 0.75, 0.75, -1.0, 1.0, -0.5, -0.25, 1.0, 0.0, -0.75, -1.0, -1.0, -0.75, 0.0, 0.5, 0.0, 0.75, 0.75, 0.25, 1.0, 0.25, 0.75, -0.25, -0.5, 0.75, 0.75, 1.0, 0.75, 0.75, -0.5, 0.0, 0.0, 1.0, -0.5, -0.25, 0.25, -1.0, -0.5, 0.75, -1.0, 0.5, 0.0, -0.75, 0.5, 1.0, 0.5, -0.5, 0.0, 0.75, 0.5, -0.25, 1.0, -0.75, -1.0, 0.5, 0.75, -0.75, -1.0, 0.0, 0.0, -0.5, -0.75, -0.75, -0.75, 0.5, 1.0, -0.75, ]);
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([-0.25, 0.5, 0.0, 0.5, 0.25, 0.0, 0.0, -0.25, -0.25, -0.5, 0.0, 0.25, 0.0, 1.0, 0.75, 0.25, 0.75, 0.0, 1.0, -0.5, -0.75, 1.0, 0.0, -0.25, 0.25, 0.75, -0.5, 1.0, 0.5, 1.0, -0.75, 1.0, 0.25, -0.75, -0.75, 0.5, 1.0, -1.0, 1.0, -0.75, -1.0, 1.0, 0.25, 0.75, 0.25, -0.75, -0.5, 1.0, -0.25, 0.75, 0.75, 0.0, -1.0, -1.0, 0.75, 1.0, -1.0, -0.75, 0.25, 1.0, -0.5, 0.25, 0.0, -0.5, 0.5, -0.75, 0.75, -0.5, -0.25, -1.0, -0.5, -1.0, 0.0, 0.75, 1.0, -0.5, 0.75, -1.0, 0.5, -0.75, 0.0, 0.5, 0.25, 0.75, -0.25, 0.25, -0.5, -0.25, 0.0, 0.25, -0.5, -0.25, 0.5, 0.75, -0.75, 0.75, 0.0, -0.25, 0.5, -1.0, ]);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const array5 = new Float32Array([0.75, -1.0, 1.0, -0.25, 0.5, 0.75, 0.0, 0.75, 0.25, -0.25, -0.5, 0.5, 0.75, 0.75, -0.75, -0.25, 0.25, -0.25, -0.25, 0.5, 0.5, -0.25, 0.75, -0.25, 0.5, 0.75, -0.75, -0.75, 0.5, 0.25, 0.5, -0.5, 1.0, -1.0, 0.0, -0.75, 1.0, -1.0, 0.0, 0.75, 0.5, 0.0, -0.25, -1.0, 0.5, -0.75, 0.5, -0.5, -0.25, -1.0, 0.0, -1.0, -0.5, 0.75, 0.25, -0.75, 0.5, 0.75, 0.5, -0.5, -0.75, 0.0, 0.0, -0.5, -0.75, 0.75, 0.75, -1.0, -0.25, 0.5, -0.25, 0.5, 0.5, -0.25, 1.0, 0.75, 0.5, -0.25, 0.25, -0.25, 0.5, 0.25, 0.5, 1.0, -0.25, 0.0, 1.0, -0.5, -0.75, 0.75, -1.0, 0.5, 0.25, -0.5, 0.75, 0.75, 0.0, 1.0, -0.25, 0.0, ]);
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device90.queue.writeBuffer(buffer900, 0, array0, 0, array0.length);
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    {
        await buffer1000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1000.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    
    
    
    
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    device90.queue.writeBuffer(buffer900, 0, array0, 0, array0.length);
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    device90.queue.writeBuffer(buffer900, 0, array2, 0, array2.length);
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    const array6 = new Float32Array([-1.0, 0.25, -0.75, -0.25, 0.25, 0.25, -0.75, -1.0, 0.25, 0.5, 0.25, -0.5, 0.75, -0.75, 0.5, 1.0, 0.5, 0.75, -1.0, 0.25, 0.0, -0.75, 0.75, -1.0, 0.0, -0.25, -0.25, 0.25, -0.75, -0.5, 0.0, 0.25, 0.5, 1.0, 0.25, 1.0, 0.0, -0.25, 0.5, -0.25, -1.0, -1.0, 0.25, 0.0, -0.75, -0.5, 0.0, 0.0, -1.0, 0.25, -0.5, -1.0, 0.0, -0.25, 0.75, 0.25, 0.0, -0.5, 1.0, -0.75, 0.0, -0.25, 1.0, -0.75, 1.0, 0.5, 0.75, -0.5, -0.75, -0.25, 0.5, -0.25, -0.5, -1.0, 0.25, -1.0, 0.75, 0.0, -0.25, 0.25, 0.0, 0.25, 0.25, -0.5, -0.75, 0.25, -0.75, 1.0, -0.5, -0.5, 1.0, -0.5, -0.5, -0.25, -1.0, -0.75, 0.25, 0.25, -0.5, 0.75, ]);
    device100.queue.writeBuffer(buffer1000, 0, array1, 0, array1.length);
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const array7 = new Float32Array([0.5, 0.75, 0.0, -0.75, -0.75, -0.75, 1.0, 0.0, 0.25, -0.5, -0.5, -0.5, 1.0, -0.75, -0.5, 0.75, 0.5, -1.0, 0.75, 0.0, -0.5, 0.25, 0.75, -0.5, -0.75, 0.75, -0.25, 1.0, -0.5, -0.5, -0.5, -0.25, 0.75, -0.25, 1.0, 0.5, 0.5, 0.0, -0.25, 0.25, 0.0, -0.75, 0.0, 1.0, -0.25, 0.5, 0.25, 0.0, -1.0, -0.75, -1.0, 0.75, 0.75, 0.5, -0.25, -0.25, 0.75, -1.0, 0.75, -1.0, -0.25, -0.75, -1.0, -0.75, -1.0, -1.0, -0.25, -0.25, -0.25, 0.5, 0.5, 0.25, -0.5, -0.5, -1.0, 0.75, -0.75, 0.75, -0.5, -0.5, 0.0, 0.5, 0.25, -0.75, -0.5, 0.75, 0.75, 0.25, -1.0, -0.25, -1.0, -0.75, -0.25, 0.25, 0.25, 0.5, 0.0, 1.0, 1.0, 0.5, ]);
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    device100.queue.writeBuffer(buffer1000, 0, array0, 0, array0.length);
    
    device90.queue.writeBuffer(buffer900, 0, array0, 0, array0.length);
    device90.queue.writeBuffer(buffer900, 0, array7, 0, array7.length);
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    const array8 = new Float32Array([-0.75, 0.25, 0.0, -0.5, -0.25, -0.25, -1.0, -0.25, 0.5, -0.5, -0.75, 0.5, 0.75, 0.25, -0.75, -1.0, 0.0, -1.0, 1.0, -0.25, -0.75, -0.25, 0.5, 1.0, -1.0, 0.5, 0.75, -1.0, -0.5, 0.5, 0.5, 0.5, -0.25, -0.75, 1.0, 0.25, 0.25, 1.0, 1.0, -1.0, 0.25, 0.0, -0.75, -0.5, 0.0, -0.25, 0.5, -0.5, 1.0, -0.25, -1.0, 0.75, 1.0, 0.0, -0.75, 0.5, 0.5, -1.0, 0.0, -0.75, 0.25, -0.5, 0.5, 1.0, -0.25, 0.25, 0.5, -1.0, 0.0, 0.5, 0.25, -0.75, 0.5, 0.75, -0.75, 0.0, 0.5, 0.75, -1.0, -0.75, 0.5, -0.75, 0.0, -1.0, 0.75, -1.0, -1.0, -0.25, 1.0, -1.0, -0.25, -0.75, 0.0, 0.75, 0.0, -0.5, -0.25, 0.5, -0.75, 1.0, ]);
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile(__dirname + '/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    device100.destroy();
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    
    
    
    
    
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device90.queue.writeBuffer(buffer900, 0, array8, 0, array8.length);
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const render_pipeline902 = device90.createRenderPipeline({
        label: "render_pipeline902",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    const array9 = new Float32Array([1.0, 0.25, -0.5, 0.5, 0.5, -0.75, -1.0, -1.0, 0.5, 0.75, 1.0, -0.75, -0.25, -0.25, 0.0, -0.25, 0.0, 0.25, 1.0, 1.0, 0.75, -0.5, -1.0, -0.5, 0.0, 0.0, 0.0, -0.5, -0.75, -1.0, -0.25, -0.25, -0.75, -0.25, 0.5, -0.25, 1.0, 0.0, 0.5, 0.0, -1.0, 0.0, 0.0, 0.5, -0.25, 1.0, 0.5, -0.75, -0.75, -0.5, -1.0, -1.0, 0.0, -0.25, 0.0, 0.0, -0.25, -1.0, -0.75, -0.5, 1.0, -0.25, 0.5, 0.75, -0.25, -0.5, -0.75, -0.75, -0.75, -0.5, 1.0, 0.25, 0.25, 0.0, 0.5, 0.75, -0.25, 0.5, -1.0, 1.0, -0.5, 0.75, 0.0, 1.0, 0.75, 0.0, -0.5, -0.75, -0.75, -1.0, 0.5, 0.0, 1.0, -0.25, 1.0, 0.75, 0.5, 1.0, -0.5, 0.75, ]);
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    
    device90.queue.writeBuffer(buffer900, 0, array6, 0, array6.length);
    
    
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile(__dirname + '/shader_module905.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    device90.queue.writeBuffer(buffer900, 0, array8, 0, array8.length);
    
    
    
    const array10 = new Float32Array([0.75, 0.0, 1.0, -0.25, 0.25, 0.0, -0.75, 0.5, 0.25, 0.25, 0.75, -0.25, 0.5, -0.25, 0.25, 0.5, 0.5, -0.25, -0.5, 0.75, -1.0, 0.0, -0.5, 0.0, 0.25, 0.5, -1.0, 0.75, -0.5, 1.0, 1.0, -0.25, 0.5, -0.25, 1.0, -1.0, -0.75, -0.25, 0.75, 0.25, 0.75, -0.25, 0.25, -0.75, -0.5, -0.25, 1.0, 0.5, 1.0, -1.0, -1.0, -0.75, -0.25, -0.75, 1.0, -1.0, 1.0, 1.0, -0.5, 0.0, 0.5, -1.0, 0.0, 0.25, -0.5, -0.75, -0.75, 0.25, 0.75, -0.75, -0.25, 1.0, -0.25, 1.0, -1.0, 0.25, 0.25, -1.0, -0.5, 0.25, -0.75, 0.75, -0.75, -0.25, -0.75, 0.75, 1.0, 0.25, 0.0, 0.0, 0.25, 0.75, 0.0, 0.25, 0.0, 0.0, -0.75, -1.0, 0.5, -0.75, ]);
    
    
    
    
    buffer901.destroy()
    const render_pipeline903 = device90.createRenderPipeline({
        label: "render_pipeline903",
        vertex: {
            module: shader_module904,
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
            module: shader_module904,
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
    
    const render_pipeline904 = device90.createRenderPipeline({
        label: "render_pipeline904",
        vertex: {
            module: shader_module904,
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
            module: shader_module904,
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
    
    device90.queue.writeBuffer(buffer900, 0, array8, 0, array8.length);
    
    const array11 = new Float32Array([-0.75, -0.25, 0.25, 0.75, -0.75, 0.5, -0.75, -1.0, -1.0, 1.0, -1.0, 0.25, 0.0, 0.25, 0.25, 0.75, -1.0, 0.5, 0.0, -0.5, -0.25, -0.5, 0.75, 1.0, -1.0, 0.5, 0.25, 0.75, 1.0, -0.5, -1.0, -0.75, 0.0, -1.0, 0.5, 0.0, -0.25, -0.5, 0.5, -0.25, 1.0, -1.0, 0.5, 0.75, 1.0, 0.0, -0.75, -0.5, -1.0, -0.25, 0.0, -0.25, -0.25, 0.0, -0.25, -0.75, 1.0, 1.0, -0.5, -0.75, 0.75, 0.25, -0.5, 0.75, 0.75, 0.5, 0.5, 0.0, -1.0, -0.5, 0.25, -0.75, 0.0, 0.25, 0.0, -1.0, -0.25, -1.0, -0.25, 0.75, 0.75, -1.0, -0.75, -0.5, -0.25, 0.75, 1.0, 0.0, 0.0, -0.5, 0.5, 1.0, -0.5, -0.75, -0.5, 0.5, -0.5, 0.25, 0.0, 0.0, ]);
    
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    
    
    device90.queue.writeBuffer(buffer900, 0, array6, 0, array6.length);
    device90.queue.writeBuffer(buffer900, 0, array8, 0, array8.length);
    
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    
    device90.queue.writeBuffer(buffer900, 0, array8, 0, array8.length);
    
    
    buffer900.destroy()
    
    const array12 = new Float32Array([-0.75, 1.0, 1.0, 0.75, 1.0, -0.25, -0.75, -0.5, 0.25, 1.0, -0.25, 0.75, 0.75, 0.5, 0.75, -0.25, 1.0, -0.75, 0.75, 0.0, 0.75, 0.25, 0.75, 1.0, 1.0, 0.25, -1.0, 0.75, 1.0, 0.5, -1.0, -0.25, -0.25, -0.5, -0.75, 1.0, 0.25, 1.0, -0.25, -1.0, -0.25, 0.0, 0.75, -0.75, -0.5, -1.0, -0.5, -0.75, -0.25, -1.0, 0.75, -0.75, -0.5, 0.5, 1.0, -0.5, 0.5, -0.75, -1.0, 0.0, -0.5, 0.75, 0.25, 0.75, 0.25, 0.25, -1.0, -0.5, 1.0, 0.75, -0.25, 1.0, 0.0, 0.75, 0.25, 0.25, 0.5, 0.0, 1.0, 0.5, -0.5, 1.0, 0.75, 0.25, -0.25, 1.0, 1.0, -0.25, 0.0, 0.25, -0.25, -0.25, 0.75, 0.5, 0.5, 0.25, 0.0, 0.0, 0.75, 0.0, ]);
    var shader_module906_code = "";
    try {
        shader_module906_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module906 = await device90.createShaderModule({ label: "shader_module906", code: shader_module906_code })
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    const array13 = new Float32Array([-0.5, -0.25, 1.0, 0.75, 1.0, -0.5, -0.75, -1.0, -0.25, 0.25, 0.0, -0.5, -0.75, 1.0, 0.75, 0.25, -0.5, 0.5, 0.0, -0.5, -1.0, 0.75, -0.25, 0.75, -0.25, -1.0, -0.5, 0.25, 0.5, -0.75, 0.25, -0.25, 0.5, -0.5, 1.0, 0.75, 1.0, 0.25, 0.25, 0.0, 1.0, -0.75, -0.5, -1.0, 0.0, 1.0, 1.0, 1.0, -0.25, 0.0, 0.5, 1.0, 0.5, 0.25, -0.25, 0.5, -0.5, -0.5, 1.0, 0.25, -0.25, -0.5, 0.0, -1.0, 0.5, -1.0, 1.0, 0.75, -0.5, 0.5, -1.0, 1.0, -0.5, 0.25, -0.25, 0.0, -1.0, 1.0, 0.75, 0.75, 0.0, 0.5, 1.0, -0.25, 0.0, -0.25, -1.0, 0.5, -0.5, 0.75, -1.0, 0.0, -0.75, 0.75, -0.5, 0.5, -0.75, -0.75, 0.75, 0.0, ]);
    const render_pipeline905 = device90.createRenderPipeline({
        label: "render_pipeline905",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    const render_pipeline906 = device90.createRenderPipeline({
        label: "render_pipeline906",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    const bind_group_layout903 = device90.createBindGroupLayout({ 
        label: "bind_group_layout903",
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
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    
    
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const bind_group_layout904 = device90.createBindGroupLayout({ 
        label: "bind_group_layout904",
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
    
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1200,
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
            module: shader_module1200,
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
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array14 = new Float32Array([1.0, 1.0, -1.0, 0.25, -0.75, -0.5, -0.5, -0.25, 0.0, -0.25, 0.5, 1.0, 1.0, 0.75, 0.0, 0.0, 0.25, 0.75, -0.5, -0.5, 0.5, 1.0, 0.25, -0.25, -0.25, 0.75, -0.75, 0.25, -1.0, -1.0, -0.25, -0.75, 0.25, 0.5, -0.5, -0.25, 0.25, -1.0, 0.5, 1.0, 1.0, -1.0, 0.5, -1.0, -0.5, 0.25, -0.25, 0.75, -0.5, -0.5, 0.75, -1.0, 0.0, 0.0, 0.75, 0.25, 0.0, -0.75, -0.5, -0.5, -0.5, -0.5, 0.25, -0.25, 0.75, 1.0, 0.0, 1.0, 0.25, -0.75, 0.5, 0.0, 0.25, -1.0, -0.25, 0.25, -0.75, 1.0, 0.25, -0.25, 0.5, -0.25, 0.5, 1.0, 1.0, 0.0, 0.0, 0.5, -0.5, -1.0, 0.75, -0.25, 0.75, 0.5, 0.5, -1.0, -1.0, -0.5, 0.75, -0.75, ]);
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer902.destroy()
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
    
    const render_pipeline907 = device90.createRenderPipeline({
        label: "render_pipeline907",
        vertex: {
            module: shader_module904,
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
            module: shader_module904,
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
    
    
    
    
    
    
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    
    
    buffer1200.destroy()
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    var shader_module907_code = "";
    try {
        shader_module907_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module907 = await device90.createShaderModule({ label: "shader_module907", code: shader_module907_code })
    query900.destroy()
    const render_pipeline908 = device90.createRenderPipeline({
        label: "render_pipeline908",
        vertex: {
            module: shader_module906,
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
            module: shader_module906,
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
    
    var shader_module908_code = "";
    try {
        shader_module908_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module908 = await device90.createShaderModule({ label: "shader_module908", code: shader_module908_code })
    const render_pipeline909 = device90.createRenderPipeline({
        label: "render_pipeline909",
        vertex: {
            module: shader_module908,
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
            module: shader_module908,
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
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    
    const array15 = new Float32Array([-0.75, 0.0, -0.25, -0.5, -0.25, 0.25, 0.75, -0.75, -0.5, -0.25, -0.75, -0.75, 0.75, -0.75, 0.75, -0.25, -0.5, 1.0, 0.5, 0.75, 1.0, 1.0, 0.25, 0.5, 1.0, 1.0, 0.75, 0.75, -1.0, 0.5, 0.5, -0.25, 0.0, -0.5, -0.5, 0.75, 0.0, 1.0, 0.0, 1.0, 1.0, -0.5, -1.0, -0.75, 0.25, 0.0, 1.0, -1.0, -1.0, -0.75, -0.75, 0.75, -0.5, -0.25, 0.25, -1.0, -0.5, -0.75, 0.0, 0.25, 0.75, -0.75, 0.5, -1.0, 0.0, 1.0, 1.0, -1.0, 0.25, 0.25, -0.75, -0.75, -0.75, 0.75, -0.5, 0.0, -1.0, -0.25, -0.5, -0.25, 0.25, 0.5, -1.0, -0.75, 0.75, 0.0, 0.25, -1.0, 0.25, -1.0, 1.0, -0.75, -0.25, 1.0, -0.25, -0.5, 0.0, 0.0, -0.25, 0.0, ]);
    const render_pipeline9010 = device90.createRenderPipeline({
        label: "render_pipeline9010",
        vertex: {
            module: shader_module906,
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
            module: shader_module906,
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
    const render_pipeline9011 = device90.createRenderPipeline({
        label: "render_pipeline9011",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    
    const sampler903 = device90.createSampler( { label: "sampler903" } );
    
    
    
    const render_pipeline9012 = device90.createRenderPipeline({
        label: "render_pipeline9012",
        vertex: {
            module: shader_module902,
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
            module: shader_module902,
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
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const array16 = new Float32Array([-0.25, 0.5, 0.25, -0.75, 0.75, 0.0, 0.5, 1.0, 0.25, 0.25, 0.0, -0.5, 0.75, 1.0, -0.5, 0.5, 0.75, 0.75, 0.25, 0.0, -0.25, 1.0, 0.25, 0.0, -1.0, -0.25, 0.5, -0.5, -0.75, -0.25, 0.5, 1.0, -0.25, -1.0, -0.75, -1.0, 0.25, 1.0, 0.0, -0.75, 0.25, -0.5, 0.75, 0.5, 0.0, 0.0, -0.75, 0.0, -0.75, -0.75, -0.5, 0.75, 0.0, 0.25, -0.5, 0.25, 1.0, 0.0, 0.5, -1.0, -0.5, 0.5, -0.25, -0.5, 0.75, 0.0, -1.0, 1.0, -1.0, -1.0, 0.0, 0.5, -1.0, 1.0, -0.25, -0.75, 0.0, -0.75, 0.75, -0.75, -0.5, 0.5, 0.0, 0.0, 0.5, 0.75, 0.5, -0.5, -0.75, 0.5, -0.5, 0.25, 0.5, 0.75, 1.0, -0.5, 1.0, 1.0, 0.75, 0.25, ]);
    
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device120.destroy();
    {
        await buffer1100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1100.unmap();
        console.log(new Float32Array(data));
    }
    
    device110.queue.writeBuffer(buffer1100, 0, array14, 0, array14.length);
    const render_pipeline9013 = device90.createRenderPipeline({
        label: "render_pipeline9013",
        vertex: {
            module: shader_module908,
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
            module: shader_module908,
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
    var shader_module909_code = "";
    try {
        shader_module909_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module909 = await device90.createShaderModule({ label: "shader_module909", code: shader_module909_code })
    
    
    
    const render_pipeline9014 = device90.createRenderPipeline({
        label: "render_pipeline9014",
        vertex: {
            module: shader_module909,
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
            module: shader_module909,
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
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device110.queue.writeBuffer(buffer1100, 0, array12, 0, array12.length);
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    device110.queue.writeBuffer(buffer1100, 0, array7, 0, array7.length);
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    
    device110.queue.writeBuffer(buffer1100, 0, array13, 0, array13.length);
    device110.queue.writeBuffer(buffer1100, 0, array5, 0, array5.length);
    
    buffer1600.destroy()
    const render_pipeline9015 = device90.createRenderPipeline({
        label: "render_pipeline9015",
        vertex: {
            module: shader_module906,
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
            module: shader_module906,
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
    device140.destroy();
    device110.queue.writeBuffer(buffer1100, 0, array7, 0, array7.length);
    device110.queue.writeBuffer(buffer1100, 0, array0, 0, array0.length);
    device110.queue.writeBuffer(buffer1100, 0, array15, 0, array15.length);
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    var shader_module9010_code = "";
    try {
        shader_module9010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module9010 = await device90.createShaderModule({ label: "shader_module9010", code: shader_module9010_code })
    device110.queue.writeBuffer(buffer1100, 0, array4, 0, array4.length);
    device110.queue.writeBuffer(buffer1100, 0, array3, 0, array3.length);
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const render_pipeline9016 = device90.createRenderPipeline({
        label: "render_pipeline9016",
        vertex: {
            module: shader_module907,
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
            module: shader_module907,
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
    
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    var shader_module1601_code = "";
    try {
        shader_module1601_code = await fs.readFile(__dirname + '/shader_module1601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1601 = await device160.createShaderModule({ label: "shader_module1601", code: shader_module1601_code })
    const render_pipeline9017 = device90.createRenderPipeline({
        label: "render_pipeline9017",
        vertex: {
            module: shader_module908,
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
            module: shader_module908,
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
    
    device110.queue.writeBuffer(buffer1100, 0, array14, 0, array14.length);
    
    
    
    var shader_module1700_code = "";
    try {
        shader_module1700_code = await fs.readFile(__dirname + '/shader_module1700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1700 = await device170.createShaderModule({ label: "shader_module1700", code: shader_module1700_code })
    const render_pipeline9018 = device90.createRenderPipeline({
        label: "render_pipeline9018",
        vertex: {
            module: shader_module9010,
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
            module: shader_module9010,
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
    device110.queue.writeBuffer(buffer1100, 0, array2, 0, array2.length);
    
    device110.queue.writeBuffer(buffer1100, 0, array1, 0, array1.length);
    query902.destroy()
    
    
    device90.destroy();
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    device110.queue.writeBuffer(buffer1100, 0, array9, 0, array9.length);
    device110.queue.writeBuffer(buffer1100, 0, array14, 0, array14.length);
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    device110.queue.writeBuffer(buffer1100, 0, array12, 0, array12.length);
    device160.destroy();
    
    var shader_module1701_code = "";
    try {
        shader_module1701_code = await fs.readFile(__dirname + '/shader_module1701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1701 = await device170.createShaderModule({ label: "shader_module1701", code: shader_module1701_code })
    device110.queue.writeBuffer(buffer1100, 0, array0, 0, array0.length);
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device110.queue.writeBuffer(buffer1100, 0, array1, 0, array1.length);
    
    {
        await buffer1100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1100.unmap();
        console.log(new Float32Array(data));
    }
    device110.queue.writeBuffer(buffer1100, 0, array10, 0, array10.length);
    
    const sampler1700 = device170.createSampler( { label: "sampler1700" } );
    device130.destroy();
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    
}