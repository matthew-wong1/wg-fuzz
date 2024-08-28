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
        powerPreference: undefined
    });
    
    
    const array0 = new Float32Array([-0.25, -0.25, -0.5, 1.0, -0.5, -0.5, -0.5, 0.75, -0.75, -0.25, -0.75, 0.5, -0.75, -0.75, 1.0, 0.0, 0.0, -0.75, 0.0, 0.5, 0.5, 1.0, -1.0, -0.75, -0.75, 1.0, 0.5, 1.0, 0.25, 1.0, 0.25, 0.5, 0.0, 0.75, -0.5, -0.25, -0.5, 0.0, 0.0, -0.25, -1.0, 0.75, -0.5, 0.5, 1.0, 0.25, -0.25, 0.5, 0.25, 0.0, 0.0, 1.0, 0.5, 0.25, 1.0, 0.5, -0.25, -0.75, -0.5, 0.25, 0.25, 1.0, -0.75, -0.5, -0.75, 0.0, -1.0, -0.25, 1.0, 0.5, -1.0, 0.0, -0.25, 1.0, 0.0, -1.0, -0.5, 0.25, 0.0, -1.0, -0.75, 0.75, 0.25, -1.0, -0.25, -0.25, -1.0, 0.25, 0.0, 0.0, 0.0, 0.25, -0.5, -0.25, -1.0, -0.5, 0.25, -1.0, -0.5, 0.0, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.pushErrorScope("out-of-memory");
    buffer000.destroy()
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    
    device00.destroy();
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    query100.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query100.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array1 = new Float32Array([1.0, -0.75, 0.75, -0.5, 0.25, 0.0, -1.0, 0.5, 0.25, -0.75, 0.75, 0.75, 0.75, 0.5, 0.0, -0.25, 0.5, 0.5, -0.5, -1.0, 0.75, -1.0, 0.25, 0.0, 0.5, -0.25, 0.25, 0.0, 1.0, -0.75, -0.25, 0.5, -0.75, 0.5, 0.25, -0.75, 1.0, -0.75, -0.25, -0.75, -0.25, -1.0, -0.75, -0.25, 0.75, 0.25, 1.0, 0.75, 0.75, 1.0, 1.0, -0.5, -1.0, 0.5, 0.75, 0.75, -0.5, -0.5, 0.5, 0.5, 0.75, 0.75, -0.75, -0.25, -0.5, 0.25, -0.75, 1.0, -1.0, 0.0, 0.25, 0.25, -0.5, -0.75, 1.0, 0.0, 0.0, 0.75, -0.75, -0.25, 0.0, 0.5, -0.75, 0.25, -0.25, 0.5, 1.0, 0.0, 0.75, 0.75, 0.75, 0.5, -0.25, -0.5, 0.0, 1.0, 0.75, 0.0, 0.5, 0.25, ]);
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
    device10.destroy();
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    device40.destroy();
    
    
    
    
    
    
    
    
    
    const array2 = new Float32Array([0.0, 1.0, 1.0, 0.5, -0.25, 0.0, 0.75, -1.0, 0.5, -0.25, -0.5, -1.0, 0.75, -0.75, 0.5, -0.5, -0.25, 0.75, 0.5, 0.75, 0.0, -1.0, 0.75, 1.0, 0.75, 0.0, 1.0, 0.0, 0.25, -0.5, 1.0, 0.0, -0.25, 0.0, 1.0, 0.5, 0.0, 1.0, 0.25, 0.25, -0.25, -0.25, 0.0, 0.0, 1.0, 0.0, -0.25, 0.5, 0.25, -0.75, 0.75, 0.25, 0.75, -0.75, 1.0, 1.0, -1.0, 0.5, -0.5, -0.75, -0.5, -0.75, 1.0, 0.25, -0.75, -0.75, -1.0, -0.25, 0.25, 1.0, 0.0, -1.0, 1.0, -0.75, 0.5, 0.5, -0.25, -0.5, 0.75, 1.0, -0.5, -0.5, 0.25, 1.0, -0.5, -0.75, -0.5, 0.25, 0.75, -0.25, 0.5, 0.75, 0.5, 0.0, 0.25, -0.25, 0.5, 0.5, -1.0, 0.0, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array3 = new Float32Array([0.5, -0.25, 0.25, 0.0, -0.25, 0.25, -0.25, 1.0, 0.25, -0.75, -0.25, -1.0, -0.5, -0.5, -1.0, -0.5, 0.5, 0.0, 0.75, 0.0, 0.0, 0.0, 0.75, -0.75, 0.75, -0.75, -0.5, 0.5, -0.5, 0.5, -0.25, -0.25, -1.0, -0.25, -0.25, -1.0, -1.0, 0.0, 0.25, 0.75, -0.75, -1.0, 0.0, 0.75, -0.75, 0.75, -0.75, 0.0, 0.5, -0.75, 0.5, -1.0, -0.5, -1.0, -0.75, 0.25, 0.5, 0.75, 0.0, 0.75, 0.0, 0.25, 0.5, 0.0, -1.0, 0.25, 0.5, 0.25, 0.75, 1.0, 1.0, -0.5, 1.0, -0.5, 0.25, -0.75, 1.0, -0.75, -0.5, 0.25, 0.5, -0.5, 1.0, -0.25, -0.25, -0.25, 0.0, -0.5, 0.5, 0.75, 0.25, -0.75, -0.5, 0.25, -0.5, 0.25, -0.25, -0.25, 0.5, 0.75, ]);
    
    
    
    const array4 = new Float32Array([0.0, 0.5, 0.75, 0.0, -1.0, 1.0, 0.25, -0.75, -0.25, 1.0, -1.0, 0.75, 0.5, -0.5, 1.0, -0.5, -0.5, 1.0, -0.75, 1.0, -1.0, -1.0, 0.0, 0.5, 0.25, -0.5, -0.25, -1.0, -0.25, -0.25, -0.5, -0.25, 0.25, 0.25, -0.25, -0.75, 0.25, 1.0, -1.0, -1.0, 0.0, -1.0, 0.0, -1.0, 0.0, -1.0, 0.5, 0.75, -0.5, 1.0, 0.5, -0.5, 0.5, -0.5, 1.0, -0.25, 0.0, -0.25, 1.0, -0.25, 0.25, 1.0, -1.0, -1.0, -0.5, 1.0, -0.25, -1.0, 0.5, -0.75, -0.75, 0.75, 1.0, -0.75, -0.5, 0.75, -0.25, -1.0, -0.5, -0.5, -1.0, 0.0, 1.0, -0.75, 1.0, 0.75, -1.0, -1.0, 0.75, 0.75, -0.5, -0.25, -1.0, 0.75, 0.5, 1.0, 1.0, -0.75, -0.25, 0.5, ]);
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array5 = new Float32Array([0.75, -1.0, 0.0, -0.25, 0.75, 0.5, -0.75, 0.25, -0.75, 0.25, 0.0, 0.25, -0.5, 1.0, 0.25, 0.5, -0.5, 1.0, 0.25, 1.0, -1.0, 0.5, -0.25, 0.75, 0.5, -1.0, 0.75, 0.5, 0.75, -0.25, -1.0, -0.25, -0.5, 0.0, 0.75, 1.0, -0.75, -0.5, 0.75, -0.5, -0.5, 1.0, 0.75, -0.75, 0.75, 1.0, 0.25, 0.0, 0.75, -0.75, -0.5, -1.0, -0.5, 0.0, 0.5, 0.5, -0.25, -0.25, 0.0, -0.5, 0.75, -1.0, -1.0, 1.0, 0.75, -0.5, 0.25, 0.5, -0.25, 0.75, 0.25, 0.0, -0.25, -0.75, 0.75, -0.75, 0.25, 0.25, 0.75, -0.25, 0.0, -0.5, 0.75, 0.0, 0.0, 0.25, -0.25, -0.5, 0.0, 0.75, -0.25, -0.5, 0.0, 0.75, 0.0, 0.0, -0.5, -0.75, -0.5, 0.5, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    texture600.destroy();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array6 = new Float32Array([-0.75, -0.25, 0.25, 1.0, -0.5, 0.0, -0.25, 1.0, -0.5, -0.5, -0.25, 0.25, 0.5, 0.0, -1.0, -0.75, -1.0, 1.0, 0.75, -0.75, 1.0, -1.0, -0.5, -1.0, -0.25, 0.75, 0.25, -1.0, 0.0, 0.0, -0.75, 0.5, 0.25, -1.0, 0.0, -0.75, 0.25, 0.25, 0.75, -0.75, -1.0, 0.75, 1.0, 0.75, -1.0, -0.5, 1.0, -1.0, 0.0, -0.25, -0.5, 0.75, 0.25, -1.0, 1.0, 0.25, 0.0, 0.0, 0.5, -0.75, -0.75, 0.0, -0.5, -0.75, 0.5, 0.75, -0.5, 0.5, -1.0, 1.0, -1.0, 1.0, 1.0, 1.0, 1.0, -0.5, -0.75, 0.5, -0.75, -0.75, 0.75, -0.5, -0.75, -0.25, 0.75, -0.75, 0.75, 0.25, -0.25, -0.5, -1.0, -1.0, 0.25, 0.75, -0.5, -0.25, -0.25, 0.75, -0.25, -0.75, ]);
    
    
    const array7 = new Float32Array([0.75, 0.25, -0.25, -0.25, -1.0, 0.25, 0.5, 1.0, -0.5, 0.25, -0.25, 0.25, 0.0, 0.0, 0.75, 0.25, -0.25, 0.75, 0.0, 0.5, -1.0, -1.0, 1.0, -0.25, 0.25, -0.5, -1.0, -0.5, -0.75, 1.0, 0.5, -0.5, -0.75, 0.5, 0.75, 0.5, -0.5, -0.5, 0.75, -0.75, -0.5, 0.0, 0.75, 0.75, -0.75, 1.0, -0.5, 1.0, 0.25, 0.25, -1.0, -0.5, -1.0, 0.0, 0.5, 0.0, 0.75, -1.0, -0.5, 0.25, -0.25, -0.25, 0.5, -0.25, 0.5, 0.75, -1.0, 1.0, 0.5, 0.25, -0.25, 0.75, -0.25, 0.75, 0.0, -0.5, -1.0, 0.75, -1.0, -1.0, 0.5, -1.0, 1.0, 1.0, 1.0, -1.0, 0.0, 0.0, -0.75, -0.75, 0.0, -0.25, 0.5, 0.25, 0.75, -0.25, 0.0, -0.25, 0.5, -0.5, ]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const array8 = new Float32Array([-0.25, 1.0, -0.5, -1.0, -0.75, 0.0, 0.5, -1.0, 0.25, 0.75, 0.25, 1.0, -0.5, -0.75, 0.5, -1.0, 0.75, -0.75, -0.5, 0.0, 0.75, 0.0, 0.75, 0.75, -1.0, 0.75, -0.25, 0.75, -0.5, -0.75, 1.0, 0.25, 0.5, -0.25, 1.0, -0.75, 0.0, -1.0, 0.25, 0.25, -1.0, 0.75, 0.25, 0.0, 0.75, 1.0, 0.25, -1.0, 0.75, -1.0, -0.75, -0.75, 1.0, -0.75, 0.5, -0.75, -0.25, -0.5, 0.25, -0.5, -1.0, 0.25, 0.5, -0.75, 1.0, -1.0, 0.5, -1.0, 0.75, 0.75, 0.25, 0.25, 0.25, 1.0, -1.0, 0.0, -1.0, 1.0, 0.25, 1.0, 1.0, -0.75, -0.5, -1.0, 1.0, 1.0, -0.25, -0.5, -1.0, -0.25, 0.25, 0.0, 0.0, 0.5, 0.25, 0.0, 0.5, -0.5, -0.5, 0.0, ]);
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    buffer700.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    device70.pushErrorScope("out-of-memory");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const command_buffer700 = command_encoder700.finish();
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    render_bundle_encoder600.popDebugGroup();
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const command_buffer701 = command_encoder701.finish();
    
    buffer600.destroy()
    
    
    
    
    
    command_encoder702.insertDebugMarker("mymarker");
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    command_encoder601.pushDebugGroup("mygroupmarker")
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
    
    
    texture601.destroy();
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    const command_buffer702 = command_encoder702.finish();
    command_encoder600.insertDebugMarker("mymarker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    
    
    command_encoder601.popDebugGroup()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    render_bundle_encoder601.setPipeline(render_pipeline600);
    const array9 = new Float32Array([0.5, -0.5, 0.5, -1.0, -0.25, -0.5, -0.75, 0.0, -0.5, 0.25, -1.0, -1.0, -1.0, -0.5, -1.0, 0.5, 0.5, 1.0, -1.0, 0.0, -0.75, -0.75, 1.0, 0.25, -0.5, -0.25, -0.5, -1.0, 1.0, 0.0, -0.75, 0.25, 0.75, -0.75, -1.0, -1.0, -0.25, 0.75, 0.5, 1.0, -0.25, -0.25, 0.25, 0.75, -1.0, -0.25, -0.5, 0.5, 0.0, 1.0, -1.0, 0.5, -0.75, 0.25, -0.5, 0.25, 1.0, 1.0, 0.75, -0.25, -0.5, -0.75, 1.0, -0.5, 0.75, 0.0, -0.25, -1.0, -0.5, 1.0, -0.5, -1.0, -0.25, 0.0, 0.75, -0.75, 0.5, 0.0, 0.5, 0.75, -1.0, -0.25, -0.25, 0.25, -0.25, 0.75, 0.25, 1.0, -0.25, 1.0, -0.5, 0.25, -0.5, 0.0, 0.75, 0.75, -0.5, 0.0, -0.75, -0.5, ]);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    
    
    render_bundle_encoder701.setPipeline(render_pipeline700);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
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
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    render_bundle_encoder701.popDebugGroup();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder602.setPipeline(render_pipeline600);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder6000.executeBundles([])
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    render_pass_encoder6000.executeBundles([])
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder600.setVertexBuffer(0, buffer604);
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder6000.setPipeline(render_pipeline603);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder602.insertDebugMarker("marker");
    
    query601.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    query600.destroy()
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
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group601);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder6000.setVertexBuffer(0, buffer604);
    
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder6000.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    render_bundle_encoder701.insertDebugMarker("marker");
    buffer601.destroy()
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder600.popDebugGroup();
    device60.pushErrorScope("out-of-memory");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder602.insertDebugMarker("marker");
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
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    buffer607.destroy()
    
    
    
    
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_bundle_encoder602.insertDebugMarker("marker");
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    buffer605.destroy()
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query602
    });
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6010.insertDebugMarker("marker")
    render_bundle_encoder600.drawIndirect(buffer605, 0);
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer703,
                },
            },
        ],
    });

    render_bundle_encoder701.setBindGroup(0, bind_group700);
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module704,
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
            module: shader_module704,
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
    buffer602.destroy()
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder700.insertDebugMarker("marker");
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    render_pass_encoder6020.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_pass_encoder6020.setPipeline(render_pipeline602);
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    
    
    
    render_bundle_encoder700.setPipeline(render_pipeline701);
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module704,
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
            module: shader_module704,
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
    
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    query600.destroy()
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6010.popDebugGroup()
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    query704.destroy()
    render_pass_encoder6020.pushDebugGroup("group_marker");
    query605.destroy()
    render_pass_encoder6000.insertDebugMarker("marker");
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder702.setPipeline(render_pipeline700);
    
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
    render_pass_encoder6000.drawIndirect(buffer605, 0);
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    
    render_bundle_encoder600.finish();
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder6000.setStencilReference(1);
    render_bundle_encoder601.popDebugGroup();
    
    render_pass_encoder6020.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    query604.destroy()
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder700.popDebugGroup();
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query700.destroy()
    command_encoder703.pushDebugGroup("mygroupmarker")
    const command_buffer500 = command_encoder500.finish();
    render_bundle_encoder700.insertDebugMarker("marker");
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder701.popDebugGroup();
    render_pass_encoder6020.setStencilReference(1);
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder6000.end();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder7030 = command_encoder703.beginRenderPass({
        label: "render_pass_encoder7030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7020,
            },
        ],
        occlusionQuerySet: query700
    });
    device90.pushErrorScope("out-of-memory");
    render_bundle_encoder500.insertDebugMarker("marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    buffer701.destroy()
    
    render_pass_encoder6020.popDebugGroup();
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    device100.destroy();
    buffer800.destroy()
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder7030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder7030.setStencilReference(1);
    query602.destroy()
    
    buffer900.destroy()
    query600.destroy()
    query500.destroy()
    texture701.destroy();
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder600.resolveQuerySet(
        query601,
        0,
        32,
        buffer609,
        0
    )
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    buffer604.destroy()
    
    const render_pass_encoder6001 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query603
    });
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
    
    render_pass_encoder6001.executeBundles([render_bundle_encoder600, ])
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    command_encoder600.resolveQuerySet(
        query604,
        0,
        32,
        buffer609,
        0
    )
    render_pass_encoder7030.setViewport(0, 0, texture702.width / 2, texture702.height / 2, 0, 1);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    device70.queue.writeBuffer(buffer704, 0, array0, 0, array0.length);
    device90.queue.writeTexture({ texture: texture900 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder6020.pushDebugGroup("group_marker");
    render_bundle_encoder500.setPipeline(render_pipeline500);
    
    render_bundle_encoder602.popDebugGroup();
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    command_encoder600.resolveQuerySet(
        query600,
        0,
        32,
        buffer609,
        0
    )
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    render_bundle_encoder701.pushDebugGroup("group_marker");
    command_encoder603.pushDebugGroup("mygroupmarker")
    query605.destroy()
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query602
    });
    query704.destroy()
    render_pass_encoder7030.setStencilReference(1);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture702.destroy();
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    query605.destroy()
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    texture700.destroy();
    render_pass_encoder6030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_pass_encoder7030.setPipeline(render_pipeline700);
    device50.pushErrorScope("validation");
    render_pass_encoder6030.insertDebugMarker("marker");
    compute_pass_encoder6010.setPipeline(compute_pipeline601);
    query700.destroy()
    compute_pass_encoder6010.insertDebugMarker("marker")
    compute_pass_encoder6010.insertDebugMarker("marker")
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    render_pass_encoder6030.setPipeline(render_pipeline601);
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    render_pass_encoder6020.insertDebugMarker("marker");
    
    device90.queue.writeTexture({ texture: texture900 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    command_encoder600.resolveQuerySet(
        query603,
        0,
        32,
        buffer609,
        0
    )
    
    device90.queue.writeTexture({ texture: texture900 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query601.destroy()
    device90.queue.writeTexture({ texture: texture900 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    command_encoder600.resolveQuerySet(
        query605,
        0,
        32,
        buffer609,
        0
    )
    const query606 = device60.createQuerySet({
        label: "query606",
        type: "occlusion",
        count: 32,
    });
    buffer603.destroy()
    query701.destroy()
    
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    device70.queue.writeBuffer(buffer704, 0, array7, 0, array7.length);
    buffer703.destroy()
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module704,
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
            module: shader_module704,
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
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder600.resolveQuerySet(
        query603,
        0,
        32,
        buffer609,
        0
    )
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.submit([command_buffer702, ]);
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    command_encoder600.resolveQuerySet(
        query604,
        0,
        32,
        buffer609,
        0
    )
    query605.destroy()
    device50.queue.writeBuffer(buffer502, 0, array7, 0, array7.length);
    
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6012,
                },
            },
        ],
    });

    render_pass_encoder6030.setBindGroup(0, bind_group602);
    device90.queue.writeTexture({ texture: texture900 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer502.destroy()
    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6014,
                },
            },
        ],
    });

    render_pass_encoder6001.setBindGroup(0, bind_group603);
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout701]
    });
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6016,
                },
            },
        ],
    });

    render_pass_encoder6020.setBindGroup(0, bind_group604);
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder6020.setVertexBuffer(0, buffer604);
    render_pass_encoder6030.setVertexBuffer(0, buffer6010);
    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6018,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group605);
    command_encoder600.popDebugGroup()
    render_pass_encoder6020.popDebugGroup();
    render_pass_encoder6030.drawIndirect(buffer605, 0);
    const command_buffer600 = command_encoder600.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer705,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer706,
                },
            },
        ],
    });

    render_pass_encoder7030.setBindGroup(0, bind_group701);
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6019, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6019, 0);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6030.end();
    render_pass_encoder6020.draw(3);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6010.end();
    render_pass_encoder6020.end();
    const command_buffer602 = command_encoder602.finish();
    const command_buffer601 = command_encoder601.finish();
    const command_buffer800 = command_encoder800.finish();
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([command_buffer600, ]);
    device80.queue.submit([command_buffer800, ]);
    command_encoder603.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    const command_buffer603 = command_encoder603.finish();
    device60.queue.submit([command_buffer603, ]);
}