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
    
    
    
    const array0 = new Float32Array([0.0, 0.25, -0.25, 1.0, -0.75, -0.25, 0.5, -0.75, 0.0, 0.75, 1.0, 1.0, 0.0, 0.0, 0.5, 0.0, 0.5, 1.0, -1.0, 0.5, 1.0, 0.25, -1.0, -0.25, -1.0, 0.75, 0.75, -1.0, 0.25, -0.25, -0.75, 0.75, 1.0, 1.0, 1.0, 1.0, 0.75, 0.0, 0.5, -1.0, -1.0, 1.0, 0.75, -0.5, -0.75, 0.25, 0.0, -0.25, -0.75, 0.5, -0.5, -0.75, 1.0, -0.25, -0.75, -0.5, 0.5, 1.0, -0.75, 1.0, -0.5, 0.0, 0.5, 0.0, -0.25, -1.0, 0.5, 0.25, 0.75, 0.25, 1.0, 1.0, 0.25, 0.0, 1.0, 0.5, 0.75, -1.0, -0.25, 1.0, -0.5, -0.75, 0.0, 1.0, 0.25, 1.0, 0.25, 1.0, 1.0, -1.0, 1.0, -0.75, -0.25, 1.0, -1.0, -0.75, 0.0, -0.5, -0.25, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([-0.25, 0.25, 0.5, -0.25, 0.75, -0.75, 1.0, -0.25, 0.25, 0.0, -1.0, 0.75, -0.75, -0.5, -0.5, 0.75, 0.75, -1.0, -0.5, -1.0, -0.75, 0.75, 0.75, -0.25, -0.5, -0.75, 0.75, 0.75, 0.75, -0.75, 0.25, -0.75, 0.0, -0.75, -0.75, 0.5, -0.5, 0.25, -1.0, 1.0, -0.75, -0.75, -1.0, 0.5, -1.0, -0.25, 0.75, 0.0, 0.75, -0.75, -0.5, 0.25, 0.75, -1.0, -0.75, 0.0, 0.5, -0.25, 0.75, -1.0, -1.0, -1.0, 0.0, -0.5, 0.25, 0.25, -0.5, -0.25, -1.0, 0.5, 1.0, 1.0, -1.0, -0.5, -1.0, 0.75, 1.0, 0.75, 0.25, 0.5, 1.0, 0.5, 0.75, 0.0, 0.25, 0.75, -1.0, 0.0, 0.75, 0.25, -0.25, 0.5, 0.75, 0.25, 0.5, -0.5, 0.0, 0.75, 0.25, 0.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.destroy();
    
    const array2 = new Float32Array([0.25, -0.25, 0.5, 0.25, -1.0, -0.25, -0.5, -0.5, 0.25, 0.5, -0.5, 0.5, -0.25, -0.25, 1.0, 0.5, 0.75, -0.5, 0.75, 1.0, -0.75, 0.75, 0.25, 0.0, -0.25, 0.25, -0.5, 0.5, 0.25, 0.0, -1.0, -0.5, 0.25, 0.0, 0.25, 1.0, 0.25, 0.5, 0.0, -0.5, -0.25, 0.75, -0.75, 0.75, 0.0, -0.75, 0.75, 1.0, -0.5, 1.0, 0.5, -1.0, 0.25, 0.5, 0.25, 1.0, 0.75, -1.0, 0.5, 0.0, -0.25, -1.0, -0.25, 1.0, 0.0, 1.0, 0.0, 0.25, -0.25, -0.75, -0.25, -0.75, -0.25, 0.0, -1.0, 1.0, -1.0, 1.0, 0.25, 0.25, 1.0, 1.0, 0.75, -0.5, -0.25, 0.25, 0.75, 1.0, -0.5, -0.75, -0.5, -1.0, -0.25, 0.25, -0.25, 0.75, 0.5, 0.5, -0.5, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([1.0, 0.0, 0.0, 0.25, -0.75, -0.5, -0.25, -1.0, -0.5, 0.5, -0.75, 1.0, 0.25, 0.75, -1.0, 1.0, 0.25, 0.5, -0.75, 1.0, -0.75, 1.0, 0.75, 1.0, -0.5, -0.25, -0.25, -0.5, 0.75, 0.0, 0.75, 0.75, -0.75, -1.0, -1.0, 0.25, 1.0, 0.0, 0.5, 0.5, 0.5, -0.75, -0.5, 0.5, 1.0, -0.5, 0.25, 0.5, 0.0, -1.0, -0.5, 1.0, 0.75, -0.5, 0.75, 0.25, -0.75, 0.0, 1.0, -0.5, -0.5, 0.5, 1.0, -0.75, -0.25, 1.0, 0.75, 0.5, -0.75, -0.25, 0.5, 0.75, 0.75, 0.75, 0.75, 1.0, -1.0, -0.5, 0.75, -0.25, -0.25, 0.25, -0.75, 0.25, -0.5, 0.5, 0.5, -0.5, -0.5, 1.0, 1.0, 0.75, -0.75, -0.25, 0.0, -0.25, -0.5, 0.0, -1.0, -1.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array4 = new Float32Array([-1.0, 0.25, -1.0, 1.0, 0.5, -0.75, -0.25, -0.25, 1.0, 0.25, 0.75, 0.5, 0.0, -0.75, 0.0, 1.0, 0.75, 0.75, -0.5, 1.0, 0.75, 0.0, -1.0, 0.0, 0.75, -0.5, 1.0, -0.75, -0.25, -0.25, -0.75, 0.25, -0.75, 0.0, 0.25, -0.5, -0.25, -1.0, -0.25, 0.25, -0.5, 0.5, -1.0, 0.25, -0.75, -1.0, -0.5, -0.75, -0.5, 0.25, 0.75, -0.25, 1.0, -0.75, -1.0, -1.0, -0.75, 1.0, 1.0, 0.25, 0.0, 1.0, -0.5, 1.0, -0.25, 1.0, -0.75, -0.75, 0.5, -1.0, 0.5, 1.0, -0.5, -0.5, -0.25, 0.5, 0.25, 0.0, -1.0, 0.5, 1.0, 1.0, 0.25, -1.0, 1.0, 0.0, 0.25, -0.5, -1.0, 0.75, 0.0, 0.75, -0.75, 0.0, 0.25, 0.0, -0.25, -0.25, -0.25, 0.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array5 = new Float32Array([-0.25, 0.5, 0.5, -0.25, 0.75, 1.0, -0.75, -1.0, 0.0, -0.5, -0.5, 0.5, 0.75, 1.0, 0.25, 0.75, -1.0, 0.25, -0.5, -0.5, 1.0, -1.0, 0.25, 0.25, 0.0, 0.75, 0.5, 0.5, -0.75, 0.5, -0.25, 0.75, -1.0, -1.0, 0.0, 0.5, -0.5, 0.25, 0.25, 1.0, -0.75, -0.75, -0.25, -1.0, -0.25, -0.5, -0.25, -1.0, -1.0, -0.75, -0.5, -0.25, -1.0, 0.0, 0.0, 1.0, 0.25, 0.5, -0.25, 0.75, 0.25, 0.0, 1.0, -1.0, 0.5, 0.25, 0.25, 0.0, -0.25, 1.0, -0.75, -0.75, 0.5, 1.0, 0.75, -1.0, 1.0, 1.0, 0.75, 0.5, -0.75, 0.5, -0.75, 1.0, 1.0, -1.0, -0.25, 0.0, 0.5, 1.0, 0.5, 0.0, -0.25, 0.25, 0.25, -0.5, 0.25, 0.25, -0.25, -0.25, ]);
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
    
    const array6 = new Float32Array([1.0, 0.5, 1.0, -1.0, 1.0, 0.0, -0.25, -0.5, -0.25, 0.25, -0.25, -0.25, 0.75, 1.0, 0.5, 0.75, 0.5, -0.25, -1.0, 0.0, -0.25, 0.0, -0.75, 0.25, -1.0, 0.75, -0.5, -0.25, 0.25, 0.25, 1.0, -0.5, -0.5, -0.75, 0.75, 1.0, -0.25, 0.0, 0.25, -1.0, 0.5, -0.5, 0.5, 0.75, 0.75, -0.25, -0.5, 0.75, -0.5, -1.0, -1.0, -0.25, -0.25, 0.5, 0.75, 0.75, 1.0, 0.5, 0.0, 1.0, 0.5, -1.0, -0.25, 0.75, -0.5, 0.0, 0.75, -0.5, 1.0, 0.75, 0.75, -0.5, -0.75, 1.0, -0.25, -1.0, 0.0, 1.0, 1.0, -0.25, -0.5, 0.0, -0.25, 0.5, 0.25, -0.25, 1.0, 0.5, 0.0, -1.0, 1.0, 1.0, 0.0, -0.75, 0.5, 1.0, -1.0, -1.0, 0.0, -0.5, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device30.destroy();
    device10.destroy();
    
    const array7 = new Float32Array([-0.25, 0.5, -0.5, 0.5, 0.0, -1.0, -0.75, 0.25, -0.25, 0.5, -0.75, 1.0, -0.25, -0.5, -1.0, -0.25, -1.0, -0.25, -0.75, 1.0, 0.0, 0.75, 0.5, -0.25, 0.25, 0.5, -1.0, -0.25, -1.0, 0.25, 0.0, 0.25, 0.75, 1.0, -0.75, -0.75, 0.75, -0.25, -0.25, -0.25, 0.75, 1.0, -0.25, 1.0, -0.25, 0.25, 0.75, -0.25, -0.25, 1.0, -0.5, 0.0, -0.75, 0.0, 0.0, 1.0, 0.25, 0.0, 1.0, 0.25, -0.75, -0.5, 0.25, -0.25, 0.0, 0.0, 0.0, -0.5, -1.0, -0.25, -0.25, -0.5, -0.5, 1.0, 0.25, 0.5, 0.25, 0.75, -0.25, 0.0, 0.75, 0.75, -1.0, -0.5, 0.0, 0.25, 1.0, -0.5, 0.0, -0.75, 0.0, 0.75, 0.5, 0.5, -0.5, -0.75, -1.0, -0.5, 0.75, 0.5, ]);
    const array8 = new Float32Array([0.5, 0.0, 0.75, 1.0, -0.5, 0.75, -0.75, -0.25, -0.5, 0.75, -1.0, -0.75, -1.0, 0.5, 0.75, -0.25, 0.5, -0.5, 0.0, -0.25, -1.0, -1.0, -0.75, 0.75, -0.5, 1.0, -0.75, 0.0, 1.0, -0.25, 1.0, 0.0, 1.0, 0.0, -0.25, -0.75, -0.25, 0.5, 0.75, -0.25, -0.5, 1.0, 0.75, -0.5, 0.5, -0.75, -1.0, 1.0, 0.75, 0.0, 0.0, 0.25, -0.75, -1.0, 1.0, -0.25, -0.75, -0.5, 0.5, 0.5, 0.5, 0.25, 0.0, -0.75, -0.75, -1.0, 0.0, -0.75, 1.0, -0.75, 0.25, -0.25, -0.25, -0.5, -0.5, 1.0, -0.5, -0.75, -1.0, -0.5, -0.5, 0.25, 0.5, -0.75, -0.75, 0.5, 0.25, -1.0, -1.0, -0.5, -1.0, -1.0, 1.0, -1.0, -0.25, 0.0, 0.75, -0.5, 0.5, -1.0, ]);
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device40.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array9 = new Float32Array([-1.0, 0.75, 1.0, -1.0, -0.75, 0.0, 1.0, -1.0, -1.0, -0.75, -0.25, 0.25, 0.75, -0.75, 0.0, 0.25, 0.25, 0.5, 0.75, 1.0, -1.0, 0.0, 0.25, -0.5, 0.75, 0.5, 0.5, -1.0, 0.5, -0.5, 0.25, 0.0, 0.0, -0.5, 1.0, 0.5, 0.0, 1.0, 0.25, 1.0, 1.0, -0.5, 0.75, -0.25, -0.75, 0.5, 0.5, 0.5, 0.0, 0.75, 0.75, -1.0, -0.5, 0.0, 0.25, -0.5, -1.0, -1.0, -0.25, -0.5, 1.0, -0.75, -0.25, -0.25, -0.75, 1.0, -0.25, -0.5, -1.0, -0.75, -0.25, 0.75, 1.0, 0.25, -0.75, -0.5, 0.75, -0.5, 1.0, 0.5, 0.25, -0.25, -0.5, 0.25, 0.0, 0.25, 0.0, 0.0, 0.75, -0.5, 0.0, 0.25, -0.25, 0.0, -0.5, -0.75, -0.5, -0.75, 1.0, 0.25, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture501.destroy();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture600.destroy();
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    const array10 = new Float32Array([0.75, 0.0, -0.5, 0.5, 0.75, 0.0, -0.5, -1.0, -0.5, 0.5, 0.75, 0.5, -1.0, 0.5, 0.5, 0.0, 0.0, 1.0, 0.5, 0.25, 0.75, -0.5, -0.25, -0.25, -0.5, -1.0, 0.0, -0.25, 0.5, 0.0, -0.5, 1.0, 0.75, 0.75, -0.25, -0.5, 0.5, 0.75, -0.75, -1.0, 0.0, 1.0, 0.75, 0.5, 1.0, 0.75, 0.25, 0.25, 0.0, 0.75, -0.25, 1.0, -0.75, -1.0, -0.25, -1.0, 1.0, -0.5, -1.0, 0.0, 0.25, 0.75, 0.0, 0.0, 1.0, -0.25, -0.25, -0.75, 0.25, -1.0, -1.0, -1.0, 0.75, 0.75, 1.0, 0.75, 0.5, 0.5, -0.75, 0.25, 0.0, 0.75, 0.25, 0.5, 0.0, 0.0, -1.0, 0.75, 0.5, -0.25, 0.0, -0.75, 0.5, 0.0, 0.75, -1.0, -0.75, 0.5, -0.75, -1.0, ]);
    texture500.destroy();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    device70.destroy();
    device80.pushErrorScope("out-of-memory");
    
    device50.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    texture502.destroy();
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    const array11 = new Float32Array([-0.75, 0.25, 0.75, -0.25, 0.75, 0.5, -0.5, -0.5, -1.0, -1.0, 1.0, -0.75, -1.0, 0.0, 1.0, -0.75, 0.75, -0.25, -1.0, 1.0, 0.25, 0.0, 0.75, 0.25, 0.5, 0.75, -0.75, 0.5, -0.5, -0.25, 0.5, 0.5, 0.25, 1.0, 0.75, 0.0, -0.5, -1.0, -0.25, 0.0, 0.5, -1.0, 0.0, -0.5, 0.75, 0.5, -1.0, 1.0, -0.5, -0.75, 1.0, -1.0, -0.25, -0.25, -0.25, 0.25, 0.75, -0.75, -1.0, -0.75, -0.75, 1.0, -0.5, 0.5, 1.0, -0.25, 0.25, 1.0, -0.25, -0.5, -0.5, -1.0, 0.0, 0.25, -0.75, -1.0, -1.0, 0.5, -0.75, 1.0, -0.75, -1.0, -0.5, 0.0, -0.25, 1.0, -0.25, 0.5, -0.75, 1.0, 0.0, 0.0, 0.5, -1.0, 1.0, -0.75, 0.0, 0.25, -0.5, 1.0, ]);
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout801]
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
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
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout801]
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const bind_group_layout804 = device80.createBindGroupLayout({ 
        label: "bind_group_layout804",
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
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const pipeline_layout804 = device80.createPipelineLayout({ 
        label: "pipeline_layout804",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture503 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device100.destroy();
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    device50.queue.writeTexture({ texture: texture503 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device50.queue.writeTexture({ texture: texture503 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    device50.queue.writeTexture({ texture: texture503 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout805 = device80.createBindGroupLayout({ 
        label: "bind_group_layout805",
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
    device130.pushErrorScope("validation");
    device50.queue.writeTexture({ texture: texture503 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout806 = device80.createBindGroupLayout({ 
        label: "bind_group_layout806",
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
    texture800.destroy();
    device50.queue.writeTexture({ texture: texture503 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture503 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture801.destroy();
    device50.queue.writeTexture({ texture: texture503 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout805 = device80.createPipelineLayout({ 
        label: "pipeline_layout805",
        bindGroupLayouts: [bind_group_layout803]
    });
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout804,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline803 = device80.createComputePipeline({
        label: "compute_pipeline803",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline804 = device80.createComputePipeline({
        label: "compute_pipeline804",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const pipeline_layout806 = device80.createPipelineLayout({ 
        label: "pipeline_layout806",
        bindGroupLayouts: [bind_group_layout801]
    });
    const texture_view5031 = texture503.createView({ label: "texture_view5031" });
    
    const texture_view5032 = texture503.createView({ label: "texture_view5032" });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture503 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture805 = device80.createTexture({
        label: "texture805",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture503 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout807 = device80.createPipelineLayout({ 
        label: "pipeline_layout807",
        bindGroupLayouts: [bind_group_layout802]
    });
    const pipeline_layout808 = device80.createPipelineLayout({ 
        label: "pipeline_layout808",
        bindGroupLayouts: [bind_group_layout803]
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline805 = device80.createComputePipeline({
        label: "compute_pipeline805",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout501]
    });
    device50.queue.writeTexture({ texture: texture503 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.destroy();
    device50.queue.writeTexture({ texture: texture503 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture805.destroy();
    const texture_view8040 = texture804.createView({ label: "texture_view8040" });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
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
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.queue.writeTexture({ texture: texture503 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view8021 = texture802.createView({ label: "texture_view8021" });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view8030 = texture803.createView({ label: "texture_view8030" });
    const compute_pipeline806 = device80.createComputePipeline({
        label: "compute_pipeline806",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const pipeline_layout809 = device80.createPipelineLayout({ 
        label: "pipeline_layout809",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline807 = device80.createComputePipeline({
        label: "compute_pipeline807",
        layout: pipeline_layout809,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline808 = device80.createComputePipeline({
        label: "compute_pipeline808",
        layout: pipeline_layout808,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline809 = device80.createComputePipeline({
        label: "compute_pipeline809",
        layout: pipeline_layout804,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture503 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture503.destroy();
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline8010 = device80.createComputePipeline({
        label: "compute_pipeline8010",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline8011 = device80.createComputePipeline({
        label: "compute_pipeline8011",
        layout: pipeline_layout808,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout8010 = device80.createPipelineLayout({ 
        label: "pipeline_layout8010",
        bindGroupLayouts: [bind_group_layout802]
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline8012 = device80.createComputePipeline({
        label: "compute_pipeline8012",
        layout: pipeline_layout808,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline8013 = device80.createComputePipeline({
        label: "compute_pipeline8013",
        layout: pipeline_layout807,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const pipeline_layout8011 = device80.createPipelineLayout({ 
        label: "pipeline_layout8011",
        bindGroupLayouts: [bind_group_layout805]
    });
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view8031 = texture803.createView({ label: "texture_view8031" });
    const compute_pipeline8014 = device80.createComputePipeline({
        label: "compute_pipeline8014",
        layout: pipeline_layout809,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const array12 = new Float32Array([-0.75, -0.75, 0.25, -0.25, -0.5, 0.5, 0.75, -1.0, 0.25, 1.0, -1.0, 0.5, 0.5, -1.0, 0.0, 0.5, -1.0, -0.25, 0.75, -0.5, 0.5, 0.5, -0.5, -0.25, 0.25, -1.0, 0.75, 0.75, 0.25, -0.25, -1.0, 0.0, 0.0, 1.0, -0.25, -1.0, 0.5, 0.0, 0.75, 0.75, -0.5, 1.0, -1.0, 0.5, 0.25, 0.75, -0.5, 0.25, 0.0, 1.0, -0.75, -1.0, 0.5, 0.0, 0.5, -1.0, 0.75, 1.0, -0.75, -1.0, -1.0, -1.0, 0.75, 0.0, 0.0, 0.5, -0.5, -0.25, -0.75, 0.0, 0.5, -0.75, -0.75, -1.0, 0.5, -0.75, -0.5, 0.25, 0.75, -0.75, 1.0, 0.5, 1.0, 0.75, 0.75, 1.0, -0.75, 0.5, -0.5, 0.0, 1.0, -0.25, 1.0, 0.75, -0.5, 0.5, -1.0, 0.75, -0.5, 0.0, ]);
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline8015 = device80.createComputePipeline({
        label: "compute_pipeline8015",
        layout: pipeline_layout8011,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    texture803.destroy();
    device130.queue.writeBuffer(buffer1301, 0, array2, 0, array2.length);
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline8016 = device80.createComputePipeline({
        label: "compute_pipeline8016",
        layout: pipeline_layout802,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline8017 = device80.createComputePipeline({
        label: "compute_pipeline8017",
        layout: pipeline_layout8010,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout509,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline8018 = device80.createComputePipeline({
        label: "compute_pipeline8018",
        layout: pipeline_layout8011,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const texture_view8022 = texture802.createView({ label: "texture_view8022" });
    const compute_pipeline8019 = device80.createComputePipeline({
        label: "compute_pipeline8019",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture802.destroy();
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout8012 = device80.createPipelineLayout({ 
        label: "pipeline_layout8012",
        bindGroupLayouts: [bind_group_layout803]
    });
    device130.queue.writeBuffer(buffer1301, 0, array7, 0, array7.length);
    const compute_pipeline8020 = device80.createComputePipeline({
        label: "compute_pipeline8020",
        layout: pipeline_layout808,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline8021 = device80.createComputePipeline({
        label: "compute_pipeline8021",
        layout: pipeline_layout807,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline8022 = device80.createComputePipeline({
        label: "compute_pipeline8022",
        layout: pipeline_layout8012,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline8023 = device80.createComputePipeline({
        label: "compute_pipeline8023",
        layout: pipeline_layout802,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline8024 = device80.createComputePipeline({
        label: "compute_pipeline8024",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline8025 = device80.createComputePipeline({
        label: "compute_pipeline8025",
        layout: pipeline_layout8010,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    {
        await buffer1301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1301.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline8026 = device80.createComputePipeline({
        label: "compute_pipeline8026",
        layout: pipeline_layout8010,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const texture_view8041 = texture804.createView({ label: "texture_view8041" });
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout504]
    });
    const array13 = new Float32Array([-0.5, 0.5, -0.75, -0.25, 0.5, -0.5, 0.0, 0.0, 0.75, -1.0, 0.75, 0.75, -1.0, 0.0, -0.5, 1.0, 0.75, 0.0, -0.25, 1.0, -1.0, 0.75, 0.0, 0.75, -0.5, -0.25, 0.75, -0.5, -1.0, -0.25, 0.25, -1.0, 0.0, 0.0, -0.75, -1.0, 0.0, 1.0, 1.0, 0.5, -0.75, 0.75, -0.25, 1.0, 1.0, -0.25, -0.25, 0.5, -1.0, 0.5, 0.5, 0.5, -1.0, 0.5, 0.5, -0.25, -0.25, 0.5, 0.0, 0.0, 1.0, 1.0, 0.25, -0.25, 0.5, -0.5, -0.75, -0.75, 0.5, 0.0, 1.0, 0.25, 0.0, -0.75, 0.75, -1.0, -1.0, 0.75, -0.5, 0.25, 0.0, 0.5, 1.0, -0.5, 1.0, 0.25, -0.25, -0.25, 0.5, 0.0, 0.5, -0.5, 0.5, -0.5, 0.25, 0.0, 0.25, 0.25, 0.5, -0.75, ]);
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const compute_pipeline8027 = device80.createComputePipeline({
        label: "compute_pipeline8027",
        layout: pipeline_layout8011,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline8028 = device80.createComputePipeline({
        label: "compute_pipeline8028",
        layout: pipeline_layout803,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const pipeline_layout5012 = device50.createPipelineLayout({ 
        label: "pipeline_layout5012",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const pipeline_layout5013 = device50.createPipelineLayout({ 
        label: "pipeline_layout5013",
        bindGroupLayouts: [bind_group_layout503]
    });
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout508,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline8029 = device80.createComputePipeline({
        label: "compute_pipeline8029",
        layout: pipeline_layout8012,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1301, 0, array11, 0, array11.length);
    const compute_pipeline8030 = device80.createComputePipeline({
        label: "compute_pipeline8030",
        layout: pipeline_layout8012,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    device130.queue.writeBuffer(buffer1301, 0, array11, 0, array11.length);
    const compute_pipeline8031 = device80.createComputePipeline({
        label: "compute_pipeline8031",
        layout: pipeline_layout802,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline8032 = device80.createComputePipeline({
        label: "compute_pipeline8032",
        layout: pipeline_layout802,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline8033 = device80.createComputePipeline({
        label: "compute_pipeline8033",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const pipeline_layout8013 = device80.createPipelineLayout({ 
        label: "pipeline_layout8013",
        bindGroupLayouts: [bind_group_layout806]
    });
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline8034 = device80.createComputePipeline({
        label: "compute_pipeline8034",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const pipeline_layout8014 = device80.createPipelineLayout({ 
        label: "pipeline_layout8014",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const compute_pipeline5026 = device50.createComputePipeline({
        label: "compute_pipeline5026",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const array14 = new Float32Array([0.25, 0.0, 0.25, -0.75, 0.5, 0.75, 0.5, 0.75, 1.0, 0.5, -0.75, 0.0, 0.75, 0.0, 1.0, -0.5, 0.0, -0.75, -0.75, 0.0, -0.75, 1.0, -1.0, 0.75, 0.75, -1.0, -0.75, -0.75, -0.5, 1.0, -1.0, -1.0, 0.5, -0.25, 0.25, -0.25, 0.25, 0.0, 0.25, -0.25, 1.0, -0.5, -0.5, 1.0, -0.25, 1.0, -1.0, -0.5, 0.5, 0.0, -0.25, -0.5, -1.0, -0.5, 0.25, 0.5, 0.75, -1.0, 1.0, 0.75, 0.75, -0.75, -0.25, -1.0, 0.75, -0.25, 0.5, -0.5, 0.75, 0.25, 0.5, -0.75, -0.25, 0.75, -0.75, -1.0, -0.25, 1.0, 0.75, -0.25, 0.0, -0.25, 0.75, -0.5, -1.0, -0.75, -0.25, 0.5, 0.75, 0.5, 0.5, 0.0, -0.5, 0.0, 1.0, 0.25, -1.0, -0.25, 0.75, -0.75, ]);
    const compute_pipeline5027 = device50.createComputePipeline({
        label: "compute_pipeline5027",
        layout: pipeline_layout507,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5028 = device50.createComputePipeline({
        label: "compute_pipeline5028",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline8035 = device80.createComputePipeline({
        label: "compute_pipeline8035",
        layout: pipeline_layout807,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const compute_pipeline5029 = device50.createComputePipeline({
        label: "compute_pipeline5029",
        layout: pipeline_layout508,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline8036 = device80.createComputePipeline({
        label: "compute_pipeline8036",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline8037 = device80.createComputePipeline({
        label: "compute_pipeline8037",
        layout: pipeline_layout802,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5030 = device50.createComputePipeline({
        label: "compute_pipeline5030",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    device130.queue.writeBuffer(buffer1301, 0, array5, 0, array5.length);
    const compute_pipeline5031 = device50.createComputePipeline({
        label: "compute_pipeline5031",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout5014 = device50.createPipelineLayout({ 
        label: "pipeline_layout5014",
        bindGroupLayouts: [bind_group_layout505]
    });
    const pipeline_layout8015 = device80.createPipelineLayout({ 
        label: "pipeline_layout8015",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline5032 = device50.createComputePipeline({
        label: "compute_pipeline5032",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const pipeline_layout8016 = device80.createPipelineLayout({ 
        label: "pipeline_layout8016",
        bindGroupLayouts: [bind_group_layout804]
    });
    const pipeline_layout5015 = device50.createPipelineLayout({ 
        label: "pipeline_layout5015",
        bindGroupLayouts: [bind_group_layout504]
    });
    const compute_pipeline5033 = device50.createComputePipeline({
        label: "compute_pipeline5033",
        layout: pipeline_layout5013,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline8038 = device80.createComputePipeline({
        label: "compute_pipeline8038",
        layout: pipeline_layout806,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline8039 = device80.createComputePipeline({
        label: "compute_pipeline8039",
        layout: pipeline_layout8016,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline5034 = device50.createComputePipeline({
        label: "compute_pipeline5034",
        layout: pipeline_layout5013,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device140.destroy();
    const compute_pipeline5035 = device50.createComputePipeline({
        label: "compute_pipeline5035",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5036 = device50.createComputePipeline({
        label: "compute_pipeline5036",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1301, 0, array13, 0, array13.length);
    const array15 = new Float32Array([-0.75, -0.5, 0.25, 0.75, 0.5, 0.75, -1.0, -0.25, -0.75, -0.75, 1.0, -0.75, -0.25, 0.0, 0.25, 0.25, -0.5, 0.0, -0.75, 0.0, 0.75, -0.5, -1.0, -0.5, 0.25, 0.5, -0.25, 0.25, -0.75, 1.0, 0.25, -1.0, -0.5, 0.0, -0.25, -0.5, 0.75, 0.25, 0.5, 0.5, 0.0, 1.0, 0.75, 1.0, -1.0, -0.5, 0.0, 1.0, 0.25, -0.5, 1.0, 0.5, -0.5, 0.75, 0.75, -1.0, 0.5, -0.25, 0.5, 1.0, 0.0, -1.0, 0.75, -0.5, 1.0, 0.0, -0.25, -0.75, 0.0, 0.25, -0.5, 0.5, -0.25, -0.5, -1.0, 0.0, -0.75, 0.25, 0.5, 0.75, 1.0, -0.5, -0.5, -0.75, 0.75, -0.75, -0.25, 0.75, 0.25, 0.25, -1.0, -0.75, 0.25, 0.0, -0.5, 0.75, 0.5, -1.0, 0.5, -0.75, ]);
    const compute_pipeline8040 = device80.createComputePipeline({
        label: "compute_pipeline8040",
        layout: pipeline_layout8012,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline8041 = device80.createComputePipeline({
        label: "compute_pipeline8041",
        layout: pipeline_layout8014,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline5037 = device50.createComputePipeline({
        label: "compute_pipeline5037",
        layout: pipeline_layout5012,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5038 = device50.createComputePipeline({
        label: "compute_pipeline5038",
        layout: pipeline_layout5014,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5039 = device50.createComputePipeline({
        label: "compute_pipeline5039",
        layout: pipeline_layout506,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    const compute_pipeline5040 = device50.createComputePipeline({
        label: "compute_pipeline5040",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8042 = device80.createComputePipeline({
        label: "compute_pipeline8042",
        layout: pipeline_layout805,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline5041 = device50.createComputePipeline({
        label: "compute_pipeline5041",
        layout: pipeline_layout5014,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5042 = device50.createComputePipeline({
        label: "compute_pipeline5042",
        layout: pipeline_layout506,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const texture_view5041 = texture504.createView({ label: "texture_view5041" });
    const compute_pipeline5043 = device50.createComputePipeline({
        label: "compute_pipeline5043",
        layout: pipeline_layout508,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline8043 = device80.createComputePipeline({
        label: "compute_pipeline8043",
        layout: pipeline_layout804,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline5044 = device50.createComputePipeline({
        label: "compute_pipeline5044",
        layout: pipeline_layout506,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline8044 = device80.createComputePipeline({
        label: "compute_pipeline8044",
        layout: pipeline_layout804,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline5045 = device50.createComputePipeline({
        label: "compute_pipeline5045",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5046 = device50.createComputePipeline({
        label: "compute_pipeline5046",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1300]
    });
    device130.queue.writeBuffer(buffer1301, 0, array0, 0, array0.length);
    const compute_pipeline5047 = device50.createComputePipeline({
        label: "compute_pipeline5047",
        layout: pipeline_layout508,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1301, 0, array8, 0, array8.length);
    const pipeline_layout5016 = device50.createPipelineLayout({ 
        label: "pipeline_layout5016",
        bindGroupLayouts: [bind_group_layout502]
    });
    const pipeline_layout8017 = device80.createPipelineLayout({ 
        label: "pipeline_layout8017",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    const compute_pipeline8045 = device80.createComputePipeline({
        label: "compute_pipeline8045",
        layout: pipeline_layout802,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline8046 = device80.createComputePipeline({
        label: "compute_pipeline8046",
        layout: pipeline_layout8013,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    device130.queue.writeBuffer(buffer1301, 0, array0, 0, array0.length);
    const pipeline_layout8018 = device80.createPipelineLayout({ 
        label: "pipeline_layout8018",
        bindGroupLayouts: [bind_group_layout803]
    });
    const compute_pipeline8047 = device80.createComputePipeline({
        label: "compute_pipeline8047",
        layout: pipeline_layout809,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline8048 = device80.createComputePipeline({
        label: "compute_pipeline8048",
        layout: pipeline_layout8016,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline5048 = device50.createComputePipeline({
        label: "compute_pipeline5048",
        layout: pipeline_layout5013,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1301, 0, array15, 0, array15.length);
    const compute_pipeline8049 = device80.createComputePipeline({
        label: "compute_pipeline8049",
        layout: pipeline_layout8012,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1301, 0, array11, 0, array11.length);
    
    device130.queue.writeBuffer(buffer1301, 0, array1, 0, array1.length);
    const compute_pipeline5049 = device50.createComputePipeline({
        label: "compute_pipeline5049",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline8050 = device80.createComputePipeline({
        label: "compute_pipeline8050",
        layout: pipeline_layout805,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1301, 0, array0, 0, array0.length);
    const compute_pipeline8051 = device80.createComputePipeline({
        label: "compute_pipeline8051",
        layout: pipeline_layout809,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const texture_view5042 = texture504.createView({ label: "texture_view5042" });
    const pipeline_layout5017 = device50.createPipelineLayout({ 
        label: "pipeline_layout5017",
        bindGroupLayouts: [bind_group_layout503]
    });
    const compute_pipeline5050 = device50.createComputePipeline({
        label: "compute_pipeline5050",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    texture504.destroy();
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline5051 = device50.createComputePipeline({
        label: "compute_pipeline5051",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5052 = device50.createComputePipeline({
        label: "compute_pipeline5052",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1301, 0, array1, 0, array1.length);
    const compute_pipeline5053 = device50.createComputePipeline({
        label: "compute_pipeline5053",
        layout: pipeline_layout5015,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline8052 = device80.createComputePipeline({
        label: "compute_pipeline8052",
        layout: pipeline_layout8017,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline8053 = device80.createComputePipeline({
        label: "compute_pipeline8053",
        layout: pipeline_layout805,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline8054 = device80.createComputePipeline({
        label: "compute_pipeline8054",
        layout: pipeline_layout8017,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    {
        await buffer1301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1301.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline8055 = device80.createComputePipeline({
        label: "compute_pipeline8055",
        layout: pipeline_layout805,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline8056 = device80.createComputePipeline({
        label: "compute_pipeline8056",
        layout: pipeline_layout8012,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline8057 = device80.createComputePipeline({
        label: "compute_pipeline8057",
        layout: pipeline_layout808,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline5054 = device50.createComputePipeline({
        label: "compute_pipeline5054",
        layout: pipeline_layout5016,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const pipeline_layout5018 = device50.createPipelineLayout({ 
        label: "pipeline_layout5018",
        bindGroupLayouts: [bind_group_layout504]
    });
    const compute_pipeline5055 = device50.createComputePipeline({
        label: "compute_pipeline5055",
        layout: pipeline_layout5013,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1301, 0, array10, 0, array10.length);
    const compute_pipeline5056 = device50.createComputePipeline({
        label: "compute_pipeline5056",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1301, 0, array4, 0, array4.length);
    device150.pushErrorScope("out-of-memory");
    
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile(__dirname + '/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    device130.queue.writeBuffer(buffer1301, 0, array14, 0, array14.length);
    const compute_pipeline8058 = device80.createComputePipeline({
        label: "compute_pipeline8058",
        layout: pipeline_layout8016,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline5057 = device50.createComputePipeline({
        label: "compute_pipeline5057",
        layout: pipeline_layout5018,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5058 = device50.createComputePipeline({
        label: "compute_pipeline5058",
        layout: pipeline_layout508,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5059 = device50.createComputePipeline({
        label: "compute_pipeline5059",
        layout: pipeline_layout507,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline8059 = device80.createComputePipeline({
        label: "compute_pipeline8059",
        layout: pipeline_layout8018,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline8060 = device80.createComputePipeline({
        label: "compute_pipeline8060",
        layout: pipeline_layout8017,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8061 = device80.createComputePipeline({
        label: "compute_pipeline8061",
        layout: pipeline_layout807,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline5060 = device50.createComputePipeline({
        label: "compute_pipeline5060",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5061 = device50.createComputePipeline({
        label: "compute_pipeline5061",
        layout: pipeline_layout5017,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout8019 = device80.createPipelineLayout({ 
        label: "pipeline_layout8019",
        bindGroupLayouts: [bind_group_layout802]
    });
    const compute_pipeline5062 = device50.createComputePipeline({
        label: "compute_pipeline5062",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5063 = device50.createComputePipeline({
        label: "compute_pipeline5063",
        layout: pipeline_layout508,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5064 = device50.createComputePipeline({
        label: "compute_pipeline5064",
        layout: pipeline_layout506,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5065 = device50.createComputePipeline({
        label: "compute_pipeline5065",
        layout: pipeline_layout508,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5066 = device50.createComputePipeline({
        label: "compute_pipeline5066",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8062 = device80.createComputePipeline({
        label: "compute_pipeline8062",
        layout: pipeline_layout807,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1301, 0, array8, 0, array8.length);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    const array16 = new Float32Array([-0.5, -0.25, 0.75, -1.0, -0.5, 0.0, -1.0, -0.25, 0.0, 0.25, 0.5, 0.75, -1.0, -1.0, 0.75, -0.25, 0.25, 0.75, 0.75, 0.5, 0.25, 0.25, -0.5, 1.0, 1.0, 0.25, 0.0, 0.5, -0.75, -0.75, 0.75, 0.25, 0.25, 0.25, -0.5, 0.5, 0.0, 0.25, -0.5, 0.25, -0.75, -0.75, 0.25, 0.25, 0.75, 0.75, 1.0, 0.25, 0.75, -1.0, 0.25, 0.25, 1.0, 0.75, -0.5, 0.75, -0.5, 0.0, 1.0, -0.25, -0.75, -0.5, -0.25, -1.0, -0.25, -0.75, -1.0, 0.5, 0.5, 0.75, 0.0, 0.75, -0.75, -0.25, -0.25, -0.75, 0.75, 0.75, 0.0, 1.0, -0.5, 0.5, -1.0, -0.25, -0.75, -1.0, -0.75, 0.75, -0.75, -0.75, 0.0, 0.75, 1.0, -1.0, 0.0, 0.75, 0.25, -1.0, 1.0, -0.75, ]);
    const compute_pipeline8063 = device80.createComputePipeline({
        label: "compute_pipeline8063",
        layout: pipeline_layout8010,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline8064 = device80.createComputePipeline({
        label: "compute_pipeline8064",
        layout: pipeline_layout8012,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    const compute_pipeline8065 = device80.createComputePipeline({
        label: "compute_pipeline8065",
        layout: pipeline_layout801,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline5067 = device50.createComputePipeline({
        label: "compute_pipeline5067",
        layout: pipeline_layout506,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline8066 = device80.createComputePipeline({
        label: "compute_pipeline8066",
        layout: pipeline_layout802,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8067 = device80.createComputePipeline({
        label: "compute_pipeline8067",
        layout: pipeline_layout8011,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    
    device130.queue.writeBuffer(buffer1301, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    const compute_pipeline8068 = device80.createComputePipeline({
        label: "compute_pipeline8068",
        layout: pipeline_layout802,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture1500.destroy();
    const compute_pipeline8069 = device80.createComputePipeline({
        label: "compute_pipeline8069",
        layout: pipeline_layout8016,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline5068 = device50.createComputePipeline({
        label: "compute_pipeline5068",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    const compute_pipeline5069 = device50.createComputePipeline({
        label: "compute_pipeline5069",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5070 = device50.createComputePipeline({
        label: "compute_pipeline5070",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline8070 = device80.createComputePipeline({
        label: "compute_pipeline8070",
        layout: pipeline_layout8014,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline8071 = device80.createComputePipeline({
        label: "compute_pipeline8071",
        layout: pipeline_layout809,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline5071 = device50.createComputePipeline({
        label: "compute_pipeline5071",
        layout: pipeline_layout5014,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline8072 = device80.createComputePipeline({
        label: "compute_pipeline8072",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline5072 = device50.createComputePipeline({
        label: "compute_pipeline5072",
        layout: pipeline_layout5017,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline8073 = device80.createComputePipeline({
        label: "compute_pipeline8073",
        layout: pipeline_layout8019,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline5073 = device50.createComputePipeline({
        label: "compute_pipeline5073",
        layout: pipeline_layout508,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    const pipeline_layout5019 = device50.createPipelineLayout({ 
        label: "pipeline_layout5019",
        bindGroupLayouts: [bind_group_layout504]
    });
    const compute_pipeline8074 = device80.createComputePipeline({
        label: "compute_pipeline8074",
        layout: pipeline_layout8019,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    const compute_pipeline5074 = device50.createComputePipeline({
        label: "compute_pipeline5074",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const buffer1303 = device130.createBuffer({
        label: "buffer1303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    const texture806 = device80.createTexture({
        label: "texture806",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const texture_view8060 = texture806.createView({ label: "texture_view8060" });
    const compute_pipeline5075 = device50.createComputePipeline({
        label: "compute_pipeline5075",
        layout: pipeline_layout5017,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const pipeline_layout5020 = device50.createPipelineLayout({ 
        label: "pipeline_layout5020",
        bindGroupLayouts: [bind_group_layout506]
    });
    device130.queue.writeBuffer(buffer1301, 0, array13, 0, array13.length);
    
    const compute_pipeline5076 = device50.createComputePipeline({
        label: "compute_pipeline5076",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const pipeline_layout8020 = device80.createPipelineLayout({ 
        label: "pipeline_layout8020",
        bindGroupLayouts: [bind_group_layout802]
    });
    const compute_pipeline5077 = device50.createComputePipeline({
        label: "compute_pipeline5077",
        layout: pipeline_layout5015,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    const pipeline_layout8021 = device80.createPipelineLayout({ 
        label: "pipeline_layout8021",
        bindGroupLayouts: [bind_group_layout803]
    });
    
    device130.queue.writeBuffer(buffer1301, 0, array0, 0, array0.length);
    
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile(__dirname + '/shader_module1302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    const compute_pipeline8075 = device80.createComputePipeline({
        label: "compute_pipeline8075",
        layout: pipeline_layout807,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline5078 = device50.createComputePipeline({
        label: "compute_pipeline5078",
        layout: pipeline_layout5012,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5079 = device50.createComputePipeline({
        label: "compute_pipeline5079",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array11, 0, array11.length);
    const buffer1502 = device150.createBuffer({
        label: "buffer1502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
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
    const compute_pipeline5080 = device50.createComputePipeline({
        label: "compute_pipeline5080",
        layout: pipeline_layout506,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline8076 = device80.createComputePipeline({
        label: "compute_pipeline8076",
        layout: pipeline_layout806,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline5081 = device50.createComputePipeline({
        label: "compute_pipeline5081",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5082 = device50.createComputePipeline({
        label: "compute_pipeline5082",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5083 = device50.createComputePipeline({
        label: "compute_pipeline5083",
        layout: pipeline_layout5014,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline1300 = device130.createComputePipeline({
        label: "compute_pipeline1300",
        layout: pipeline_layout1300,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const compute_pipeline5084 = device50.createComputePipeline({
        label: "compute_pipeline5084",
        layout: pipeline_layout506,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5085 = device50.createComputePipeline({
        label: "compute_pipeline5085",
        layout: pipeline_layout5012,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline8077 = device80.createComputePipeline({
        label: "compute_pipeline8077",
        layout: pipeline_layout8018,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline5086 = device50.createComputePipeline({
        label: "compute_pipeline5086",
        layout: pipeline_layout5012,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5087 = device50.createComputePipeline({
        label: "compute_pipeline5087",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout5021 = device50.createPipelineLayout({ 
        label: "pipeline_layout5021",
        bindGroupLayouts: [bind_group_layout506]
    });
    const compute_pipeline5088 = device50.createComputePipeline({
        label: "compute_pipeline5088",
        layout: pipeline_layout5014,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5089 = device50.createComputePipeline({
        label: "compute_pipeline5089",
        layout: pipeline_layout5018,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5090 = device50.createComputePipeline({
        label: "compute_pipeline5090",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5091 = device50.createComputePipeline({
        label: "compute_pipeline5091",
        layout: pipeline_layout5016,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5092 = device50.createComputePipeline({
        label: "compute_pipeline5092",
        layout: pipeline_layout509,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5093 = device50.createComputePipeline({
        label: "compute_pipeline5093",
        layout: pipeline_layout5019,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeBuffer(buffer502, 0, array15, 0, array15.length);
}