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
    
    const array0 = new Float32Array([0.75, -1.0, -0.25, -0.75, -0.25, 1.0, -1.0, -0.5, 0.25, -1.0, 0.75, 0.75, 0.0, -1.0, 0.75, 0.5, 0.0, 0.5, -0.25, -0.5, -0.75, -0.5, -0.5, 0.0, -0.25, 0.0, 0.25, -0.75, 0.5, 0.25, -0.5, -1.0, -0.5, 0.75, 0.75, -0.75, -1.0, 0.0, -0.25, -0.75, 1.0, 0.5, -1.0, -1.0, -0.5, -0.5, -0.25, 0.25, 0.5, 0.5, 0.75, 1.0, -1.0, -1.0, -0.25, 0.0, 0.5, -1.0, 0.75, 0.25, 0.75, -0.5, -0.5, 1.0, 0.0, 0.0, -0.75, 0.25, 0.5, -1.0, -0.25, -0.5, 0.75, -0.75, 0.0, -1.0, 0.25, -0.75, 0.75, -0.75, 0.5, -0.75, -0.5, -1.0, -0.25, -0.5, 1.0, 0.75, 0.0, 1.0, -0.5, 0.25, 0.5, -0.75, -1.0, -0.5, 0.75, -0.5, 0.25, 0.5, ]);
    
    
    const array1 = new Float32Array([0.0, -0.25, 0.75, 0.75, 0.25, 1.0, -0.75, 0.25, -1.0, 0.0, 0.0, -0.75, 0.25, 1.0, -1.0, -1.0, 0.5, -1.0, -1.0, 1.0, -0.25, 0.0, 0.25, -0.25, 0.5, -0.5, 1.0, 0.5, -1.0, 1.0, -0.75, -1.0, 0.0, 0.0, -0.5, 0.75, 0.75, 0.25, -0.25, -0.25, 1.0, 0.75, 0.25, -0.75, -0.25, 1.0, -0.25, -0.25, 0.0, 0.25, 0.0, -0.75, -0.25, -0.25, -0.25, -0.5, 0.25, 1.0, -0.5, -0.5, -1.0, -0.25, 0.0, -0.5, -1.0, 0.5, 1.0, -0.25, -1.0, 0.0, -0.25, -0.25, -0.75, -1.0, 0.0, 0.5, -0.25, -1.0, -0.75, -1.0, 1.0, -0.75, 1.0, -1.0, -0.75, 0.5, -0.75, 0.75, -0.5, -0.75, -1.0, -0.25, 0.75, 0.5, 0.25, 0.25, 0.0, -0.5, 0.75, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.0, 0.75, -1.0, 0.0, -0.25, 0.75, -0.5, -0.5, -1.0, -0.75, 0.0, -0.75, 1.0, 0.75, -0.5, 0.75, -0.75, -1.0, 1.0, -0.25, -0.75, 0.25, -0.5, 0.5, 0.5, -1.0, -1.0, 0.25, -0.25, 0.0, -1.0, 0.0, -0.75, 0.5, 0.5, 0.5, 0.0, 1.0, -1.0, 0.5, -0.5, 1.0, -1.0, 0.25, 0.5, -1.0, 0.75, 0.75, -0.75, 1.0, -1.0, -0.5, -0.25, -0.75, -0.75, 0.25, 0.0, 1.0, 1.0, 0.5, 0.0, -0.75, 1.0, 0.25, -0.5, 1.0, 0.25, 0.0, -0.5, -0.5, 0.5, -1.0, 0.5, 0.5, -0.5, -0.25, 0.0, 0.75, 0.0, -1.0, 0.5, 0.5, 0.0, 0.25, 0.5, 0.5, -0.25, -0.5, -0.5, -1.0, 1.0, -0.5, 0.5, -0.75, -0.5, 0.0, -0.25, 0.5, -0.25, 0.0, ]);
    const array3 = new Float32Array([0.75, -0.75, 0.25, 1.0, -1.0, 0.5, -1.0, -0.5, -0.25, -0.75, -0.25, 0.0, -0.75, 0.5, 0.5, 0.75, 0.0, -0.75, 0.0, 1.0, -0.5, 0.25, -0.25, -0.5, 0.25, -0.75, 0.75, 1.0, -0.25, -0.25, -0.25, 0.5, 0.75, -1.0, 0.25, -0.5, -0.5, 0.5, -0.75, -0.25, -1.0, -1.0, -1.0, 1.0, 1.0, 1.0, -0.5, 0.5, 0.75, -0.5, 0.75, 0.25, 0.75, 0.25, -1.0, -0.25, 0.5, -0.75, -0.75, -0.5, 1.0, -1.0, 0.25, -0.75, -0.75, -1.0, 0.5, 1.0, 1.0, 0.5, 0.75, -0.25, 0.5, -0.25, -0.75, 0.75, -0.25, -0.25, 0.5, -1.0, -0.25, -1.0, 0.75, 0.75, 0.75, 0.75, -0.5, 0.75, 0.25, 0.5, 0.5, -0.75, -1.0, 0.0, -1.0, 0.0, 0.25, -0.5, 1.0, 0.5, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.pushErrorScope("validation");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.destroy();
    
    
    const array4 = new Float32Array([0.25, 0.0, -0.75, -0.25, 0.5, -0.75, 0.25, 0.5, -0.75, 0.75, 0.25, 0.0, -1.0, 0.75, 0.5, -1.0, -0.25, 0.0, -0.5, 1.0, -1.0, 0.25, 0.5, -0.25, 0.5, 0.5, -0.75, -0.5, 0.25, -0.25, -0.5, 0.5, -1.0, -1.0, 1.0, -0.25, 0.0, 0.5, -0.75, 1.0, -1.0, -0.5, 1.0, 0.5, 1.0, -0.25, -0.25, -0.25, -0.25, 0.0, 0.0, -0.75, 0.75, -0.75, 0.5, -0.75, -0.25, -0.75, 0.5, -0.5, 0.25, 0.25, -0.5, 0.5, -1.0, 0.5, -0.25, 0.25, -0.5, 0.75, 1.0, 0.0, -0.25, 0.25, -0.5, 0.25, 1.0, 0.5, -0.25, 0.5, 0.0, 1.0, -0.5, -0.25, -0.75, -0.5, 0.25, -0.25, -0.25, -1.0, -0.75, 0.0, -1.0, -1.0, 0.0, 0.0, -0.5, -0.75, 0.75, 0.5, ]);
    
    
    
    
    
    
    
    const array5 = new Float32Array([0.5, -0.75, 0.5, 1.0, -0.25, 0.75, -1.0, -0.75, 0.75, -0.25, -1.0, 0.0, -0.5, 0.5, 1.0, -0.75, -0.75, 1.0, -0.75, -0.5, 0.0, 0.25, 0.5, 0.0, -0.75, 0.25, 1.0, 0.25, -1.0, -0.5, -1.0, -0.5, -0.5, 0.0, 0.25, -0.25, 0.5, -1.0, 0.75, -0.25, -0.75, 0.75, 0.25, 0.75, 0.25, -0.5, -0.5, -1.0, 0.25, -0.25, 0.5, 0.25, 0.25, -0.75, 0.25, 0.75, -0.25, 0.5, 0.25, -0.75, -0.75, 0.5, -0.5, 0.0, -0.25, -0.75, 0.0, -0.5, -0.25, 0.75, -0.5, -0.25, 0.0, -0.5, 0.75, 0.5, 1.0, -0.25, 1.0, 1.0, 0.75, 0.5, 1.0, -1.0, 1.0, 0.5, 0.25, 0.75, 0.25, -0.25, -0.25, 0.75, -1.0, 1.0, 0.0, 1.0, 1.0, 0.25, 0.25, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array6 = new Float32Array([0.0, 1.0, -1.0, 1.0, 0.5, -0.5, -1.0, 0.0, -0.25, 0.25, -0.5, -0.25, 0.75, 0.75, -0.5, 1.0, 0.0, -0.75, 1.0, 0.75, -1.0, 1.0, -0.25, -0.5, -0.25, 1.0, -0.5, 0.75, 0.5, -1.0, -0.25, 1.0, -0.5, 0.0, 1.0, -0.25, 0.75, -0.25, -1.0, -0.5, 0.0, -0.75, 0.0, -0.5, 1.0, 1.0, -1.0, -0.25, 1.0, 0.75, -0.25, -0.75, 1.0, 1.0, -1.0, -0.75, 0.0, 0.75, 0.25, 0.75, 1.0, 0.75, -0.5, -0.5, 0.0, 0.75, -0.75, 0.25, -0.75, 0.5, -1.0, 0.5, 0.25, -0.5, 0.25, -0.25, 0.75, -0.75, 0.0, -1.0, 1.0, -1.0, 0.25, 0.25, -0.5, -0.5, 0.25, 0.25, -0.25, 0.5, -0.75, -1.0, -0.75, 0.75, -0.25, 1.0, -0.75, -0.75, 0.0, 0.25, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array7 = new Float32Array([0.25, 0.25, 0.75, -1.0, 0.75, 0.75, -0.75, -0.25, 1.0, 1.0, 0.0, -0.75, -1.0, 1.0, -1.0, -0.75, 0.25, 0.0, 0.5, 0.25, -0.5, 0.75, -0.75, -0.75, 1.0, 0.5, -0.5, 0.5, -0.75, -0.5, 0.25, 0.25, 0.25, 0.5, -0.75, -0.25, 1.0, 1.0, 0.0, -0.25, -0.5, 1.0, -0.5, -0.5, -0.25, -0.25, -0.75, 0.75, 0.0, 1.0, 1.0, -0.5, 0.25, -1.0, 0.75, -0.5, 0.0, 0.5, -0.25, 0.5, -0.25, 0.0, -1.0, -0.5, -0.5, 1.0, 0.0, 1.0, 0.25, 0.5, -0.5, 1.0, 0.75, 0.0, 0.5, -1.0, 1.0, 1.0, 0.75, 1.0, -0.5, -0.25, 0.75, -1.0, -0.25, -0.5, -0.25, -1.0, -0.75, 0.75, 0.0, 0.25, -1.0, 0.0, -1.0, 0.75, 0.0, -0.75, 0.25, 0.5, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("out-of-memory");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture100.destroy();
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array8 = new Float32Array([-0.5, -1.0, 1.0, 0.75, 1.0, -0.5, 0.25, -0.25, 1.0, -1.0, 1.0, -0.25, -0.25, 0.5, 0.0, -0.25, -0.25, -0.5, 0.5, -0.5, -1.0, 0.75, -0.5, 0.0, 1.0, 0.25, -0.5, 0.0, 0.5, -0.5, 1.0, 0.75, 1.0, -0.25, -0.75, -1.0, 0.0, -0.75, -0.75, 0.75, 0.0, -0.75, -0.5, -0.75, 0.0, 0.0, -0.75, 1.0, 0.5, 0.25, 0.0, 0.75, -0.75, 0.5, 0.5, -0.5, -0.25, 0.25, -0.75, -0.25, -0.75, 0.75, 0.75, -0.75, 1.0, -0.25, 0.25, -1.0, 1.0, -0.5, 0.25, 0.75, 0.75, 1.0, 0.75, -1.0, 0.75, 0.75, 0.75, -0.25, 0.5, 0.5, 0.75, -0.5, -0.5, 0.0, -0.75, 0.0, -0.25, 0.75, -0.75, 0.75, -0.25, 0.75, 0.0, 0.0, 0.5, 0.0, 0.5, -0.25, ]);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const array9 = new Float32Array([-0.25, -0.5, 1.0, 0.0, 0.5, -0.75, 0.25, -0.5, 0.0, 0.75, 0.0, -1.0, 0.0, 0.75, 0.25, 0.5, 1.0, 0.25, 0.5, -1.0, -0.75, -0.25, -1.0, -1.0, 1.0, -0.25, 0.25, -0.75, -1.0, -0.75, 1.0, 0.0, 0.25, -1.0, 0.25, 0.5, -0.25, 0.25, 0.5, -0.5, 1.0, 0.75, 0.0, 0.75, 0.25, 0.25, 0.25, -0.75, 0.0, 0.5, -0.75, 0.25, -1.0, -0.75, 0.75, 0.5, 0.5, 1.0, -0.75, 0.0, -0.75, 1.0, 0.75, 1.0, -0.25, -0.25, 1.0, 0.75, 0.25, -0.25, 0.25, -0.75, -0.75, -0.75, 0.5, 0.75, 0.75, -0.25, -1.0, 1.0, 0.5, -0.75, -0.5, -1.0, -0.25, -0.25, 0.25, 0.25, -0.75, 0.5, 1.0, -0.75, -1.0, 1.0, -0.5, -0.75, 1.0, -1.0, -0.5, -1.0, ]);
    
    
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    buffer100.destroy()
    
    const array10 = new Float32Array([-1.0, -0.75, -0.5, 1.0, -0.5, -0.5, 0.25, -0.5, -0.25, -0.25, -0.75, 0.5, 0.0, 0.25, 1.0, -1.0, 0.0, 0.25, -0.5, 0.25, -0.25, 0.25, 0.5, 0.0, 0.25, -0.75, -1.0, -0.25, -0.75, -0.75, -0.75, 0.5, -0.5, -0.25, 1.0, 0.25, 0.5, -0.75, 0.25, -0.75, -1.0, -0.25, 0.5, -0.5, 0.75, 0.5, 1.0, 1.0, -1.0, -1.0, 0.75, -0.5, 1.0, 0.75, 0.25, 0.5, 0.5, 0.5, 0.0, -0.75, -0.75, -0.75, 0.75, -1.0, -0.25, -0.75, -0.25, -0.5, 0.5, 0.75, 0.75, 0.25, 0.0, 0.25, 0.0, 0.75, 0.75, 0.5, 0.0, 0.75, -0.5, 0.5, -0.5, 0.5, 0.25, -1.0, 0.25, -1.0, -1.0, 1.0, 0.75, 0.5, -1.0, 0.25, 1.0, -0.25, 1.0, 1.0, 1.0, -0.75, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder100.popDebugGroup();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const array11 = new Float32Array([-1.0, -0.5, -1.0, -0.5, 0.75, -0.25, -0.5, -0.75, 0.5, 0.75, 1.0, 0.25, -1.0, 0.25, -0.75, 0.25, -0.5, 1.0, 0.75, -0.75, 1.0, 0.75, -1.0, 0.5, 1.0, -0.5, 0.0, -1.0, 0.75, -0.5, 0.0, -0.25, 0.25, 0.25, -1.0, -0.5, -0.25, 0.5, 0.5, -1.0, -0.75, 0.5, 0.5, 0.25, 0.0, 0.75, -0.75, 0.5, 1.0, 0.0, 0.0, -1.0, -1.0, 0.75, 0.75, -1.0, -0.5, 0.0, -1.0, 0.5, -1.0, -1.0, 1.0, 1.0, 0.5, -0.25, -0.5, 0.25, 0.0, 0.5, 0.75, 0.0, 0.0, -1.0, 0.25, 0.5, -0.75, -0.75, 0.0, -0.75, -0.5, 0.0, 0.75, -0.25, 0.75, 1.0, 0.75, -1.0, 0.0, 0.75, 0.0, -0.75, -0.25, -0.5, -1.0, -0.75, 0.5, -0.25, 0.25, 0.5, ]);
    
    const array12 = new Float32Array([0.75, -0.5, 0.0, 0.75, 0.0, 0.0, 1.0, 0.5, 0.75, -1.0, 0.0, -0.5, -0.5, -0.75, 0.25, 0.0, 0.25, 0.25, -0.25, -1.0, 0.5, -0.5, -0.25, 0.0, -0.5, -0.75, 0.0, 0.5, -0.5, 0.0, -0.5, -1.0, 0.75, 0.25, 0.5, 1.0, 1.0, -0.25, -0.5, -1.0, -0.75, 0.25, -0.5, 0.5, 0.0, 0.0, 0.25, 1.0, 0.75, 0.75, 0.0, -1.0, 0.25, 0.75, -0.75, 0.0, -0.75, 1.0, 0.25, 0.75, 1.0, -0.25, 0.75, -0.5, 1.0, -1.0, -0.5, -0.75, 1.0, 1.0, -0.5, -0.5, 0.0, 0.75, 1.0, 0.0, 1.0, 0.5, 1.0, 0.75, -0.75, 0.75, -0.25, -0.25, -0.5, 0.0, -0.25, 0.0, -0.75, 1.0, 1.0, -0.75, -0.75, -0.25, -0.75, -1.0, 0.75, -0.5, 0.0, 0.25, ]);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    command_encoder100.insertDebugMarker("mymarker");
    texture101.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    command_encoder100.insertDebugMarker("mymarker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array13 = new Float32Array([1.0, -1.0, 1.0, 0.25, 0.5, 0.75, 0.75, -1.0, 1.0, 0.75, 0.25, 0.5, -0.75, -0.75, 0.25, 0.75, 0.5, 0.75, 0.0, 0.25, -0.25, -1.0, 0.25, -0.5, -0.5, -0.5, 0.5, -1.0, 0.5, 1.0, 0.0, 0.75, 0.5, 0.0, 0.0, -0.25, -0.75, 0.25, 0.25, 0.0, 0.0, -0.5, -1.0, -0.25, -1.0, 1.0, -0.5, 0.75, 1.0, -0.25, 0.0, 0.5, 0.75, -0.75, 1.0, 0.75, 1.0, 0.5, -0.5, -0.25, -0.25, -0.75, -0.75, 0.75, -0.5, 0.25, -1.0, -1.0, 0.25, 0.75, 0.25, 0.25, 0.75, -0.25, 0.25, -1.0, -0.75, 0.5, -1.0, -1.0, -1.0, -0.5, 0.75, 1.0, 0.5, 0.25, -1.0, 0.5, -0.25, 0.0, -0.5, -0.75, 0.75, 0.25, -0.75, -1.0, -1.0, 0.5, 0.25, 0.0, ]);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    const command_buffer100 = command_encoder100.finish();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array14 = new Float32Array([-0.25, -1.0, -1.0, 0.25, 1.0, 0.5, 1.0, -0.5, -1.0, -1.0, -0.25, 0.75, -0.5, 0.0, 0.0, 0.25, 0.5, 1.0, 0.25, 0.5, 1.0, -0.5, -0.25, -1.0, 0.5, -0.5, 0.75, -0.25, 0.25, 0.0, -0.25, 1.0, 1.0, 0.25, -0.25, -1.0, 1.0, 1.0, 0.75, -1.0, 0.5, -0.5, 0.5, -0.5, -0.5, -0.75, 0.0, -1.0, -1.0, 0.75, 0.0, 0.5, 0.75, -0.75, 1.0, 0.25, 0.5, 0.25, 0.0, 0.25, -1.0, 1.0, 0.25, -0.75, 0.75, 0.75, -0.25, 0.0, 0.75, 0.25, 1.0, 0.5, -1.0, -0.5, 0.0, -0.25, -0.75, -0.25, -0.75, 0.0, 0.25, -0.5, -0.75, 0.0, -1.0, -1.0, -1.0, -1.0, 0.5, 0.25, 0.25, 0.75, -0.25, -0.75, 1.0, -1.0, -0.5, -1.0, -0.25, 0.75, ]);
    texture103.destroy();
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer102.destroy()
    
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer103, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer101.destroy()
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const array15 = new Float32Array([1.0, -0.5, -0.5, -0.25, -0.75, -0.5, 1.0, 0.75, 0.25, -0.75, 1.0, 1.0, 1.0, -1.0, 0.5, 0.75, -0.25, -0.5, 0.0, -0.25, 0.0, 0.5, -0.5, 0.0, 0.25, -0.5, 0.75, 0.75, 0.0, 0.5, 0.0, -0.5, 1.0, 0.25, 0.75, -1.0, 0.75, -0.75, 0.75, -1.0, 0.25, 0.25, 0.5, 0.0, -0.75, 0.0, -0.75, -1.0, 0.5, 0.25, 0.25, -1.0, -1.0, 0.25, 1.0, 1.0, 0.75, -0.75, 0.5, 1.0, 0.25, -1.0, -1.0, -0.25, -0.25, -0.5, -1.0, 0.25, 0.25, 0.0, -0.25, -0.5, 0.5, -0.25, 0.75, 1.0, -0.25, 0.75, -0.5, 0.25, -0.25, -1.0, -1.0, -0.5, 1.0, -0.75, -0.25, 0.75, 0.0, -0.75, -0.75, -0.5, 0.5, 0.75, -0.75, 1.0, 0.5, -0.75, 0.75, 0.0, ]);
    const texture_view1024 = texture102.createView({ label: "texture_view1024" });
    device10.queue.writeBuffer(buffer103, 0, array10, 0, array10.length);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array16 = new Float32Array([-0.5, 0.0, 0.75, -1.0, 0.25, 0.5, 1.0, -1.0, -0.5, 0.5, 1.0, 0.0, -0.5, -0.5, 1.0, -0.75, 0.0, -0.5, -0.5, 0.5, -0.25, -0.25, 0.25, 0.5, 1.0, -0.75, -0.25, 0.0, 0.5, -0.75, -0.25, -0.25, 1.0, -0.25, 0.0, 0.0, -0.25, 0.0, 0.75, 1.0, 0.0, -0.75, 0.0, 0.0, -1.0, -0.75, 0.0, -0.25, 0.25, -0.75, 1.0, 0.0, 0.25, -0.25, 0.25, -0.75, -0.25, -0.5, 0.25, -1.0, 0.5, 0.0, -0.75, -0.5, 0.25, 0.25, 0.5, 1.0, -0.75, -0.75, -0.75, -0.25, -0.25, 0.5, -1.0, -1.0, 0.25, 0.0, 0.5, 0.0, -0.75, -0.25, 1.0, -0.75, 1.0, 0.5, -1.0, 0.25, 0.0, -1.0, 0.0, -0.5, 1.0, -0.75, -0.5, -1.0, -0.5, -0.25, 0.5, -0.75, ]);
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer103, 0, array10, 0, array10.length);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1024,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeBuffer(buffer103, 0, array16, 0, array16.length);
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.pushDebugGroup("mygroupmarker")
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer103, 0, array8, 0, array8.length);
    const array17 = new Float32Array([1.0, 0.5, -1.0, -0.75, 0.75, 1.0, 0.0, 0.75, -1.0, -0.75, 1.0, -1.0, 0.75, 0.5, -0.5, -0.25, -1.0, -0.75, 0.75, 0.75, 1.0, 0.75, 0.5, 0.75, 0.5, -0.25, 0.5, 0.25, -1.0, -0.75, 0.25, -0.5, 0.5, -0.5, -0.75, 0.5, -0.5, 0.75, 1.0, -0.75, -0.25, 0.75, -0.25, 1.0, 0.75, 0.0, 1.0, 0.25, -0.25, -0.25, 0.75, 0.5, -0.75, -0.5, 0.25, -0.5, 0.75, 0.25, -0.5, -0.5, -0.25, 0.25, -0.25, 1.0, 0.5, 0.0, 0.75, 0.75, -0.25, 0.25, -0.25, -0.5, 0.5, -0.75, 0.75, -0.25, -0.5, 0.5, 0.75, 0.25, -0.5, 1.0, -0.25, 0.0, 0.0, -1.0, -0.5, 0.75, -1.0, -0.25, 0.0, 0.0, -0.75, 0.75, 0.75, 0.5, -1.0, 0.75, -0.75, 0.25, ]);
    device10.queue.writeBuffer(buffer103, 0, array14, 0, array14.length);
    device10.queue.writeBuffer(buffer103, 0, array17, 0, array17.length);
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer103, 0, array14, 0, array14.length);
    const texture_view1025 = texture102.createView({ label: "texture_view1025" });
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    
    buffer103.destroy()
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1025,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    const command_buffer103 = command_encoder103.finish();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.pushErrorScope("internal");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer105.destroy()
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1040.executeBundles([])
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1023,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder1050.setStencilReference(1);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array18 = new Float32Array([-0.5, -1.0, -0.5, 0.0, 0.5, -0.5, 0.0, 0.0, -0.5, 0.75, -0.75, -1.0, -0.75, 1.0, 0.0, 0.5, 0.25, 1.0, 1.0, -0.25, 0.5, 1.0, 0.75, 0.5, -0.25, 0.5, 0.5, -0.75, -0.75, 0.0, -1.0, -0.5, 0.5, 1.0, 0.25, 1.0, 0.25, 0.75, 0.5, -0.75, 1.0, -0.5, 0.5, -1.0, 1.0, 0.75, 0.0, 0.5, 0.5, -1.0, 0.5, 0.5, 0.5, 0.5, -1.0, 0.25, 1.0, -1.0, -1.0, 0.25, 0.0, 0.0, 1.0, -1.0, 1.0, 0.0, 0.5, -1.0, 0.25, -0.5, -1.0, 1.0, 1.0, 0.75, -1.0, 0.75, 1.0, 0.5, 0.0, -0.5, -0.75, 0.25, 0.25, 0.5, -0.5, 0.25, 0.75, 1.0, -0.25, -0.25, 0.25, 0.0, 0.75, 0.25, -0.25, 1.0, -0.25, -1.0, -0.75, 0.0, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1040.pushDebugGroup("group_marker");
    texture102.destroy();
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder1050.setStencilReference(1);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer104.destroy()
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    
    render_pass_encoder1020.setStencilReference(1);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1020.executeBundles([])
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1050.executeBundles([])
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const array19 = new Float32Array([0.0, -0.5, 1.0, -0.25, 0.0, -0.75, -1.0, -0.75, -0.25, 0.25, -0.25, 0.0, 0.5, -0.75, -0.5, 0.75, -0.5, 1.0, 0.5, 1.0, 0.5, -0.5, 0.75, 0.25, 0.5, 0.75, 0.25, 0.5, 1.0, 0.25, 0.75, 1.0, 0.0, -0.5, -0.5, -0.75, -0.75, -1.0, -1.0, -0.5, 0.75, -0.5, 0.25, 1.0, -1.0, 0.5, -1.0, -1.0, -0.25, -0.75, -1.0, 0.25, -0.5, -0.25, 0.75, 0.75, -0.75, 0.75, -0.25, 0.25, -0.5, 0.0, -0.75, -1.0, -0.5, 0.0, -0.25, 0.75, 0.25, 0.5, -0.75, 0.0, 0.25, 0.25, -1.0, -0.25, 0.5, 0.0, 1.0, 0.5, -0.5, 0.0, -0.25, 1.0, 0.5, -0.5, 1.0, 1.0, 0.0, 1.0, 0.5, 0.75, -1.0, -0.75, -0.75, -0.75, 0.25, 0.5, 0.5, 0.25, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder1050.insertDebugMarker("marker");
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer106, 0, array14, 0, array14.length);
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.setStencilReference(1);
    device10.queue.writeBuffer(buffer106, 0, array13, 0, array13.length);
    device10.queue.writeBuffer(buffer106, 0, array9, 0, array9.length);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.executeBundles([])
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1050.executeBundles([])
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer106, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer106, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer106, 0, array5, 0, array5.length);
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device10.queue.writeBuffer(buffer106, 0, array8, 0, array8.length);
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    
    device10.queue.writeBuffer(buffer106, 0, array12, 0, array12.length);
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    device10.queue.writeBuffer(buffer106, 0, array11, 0, array11.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer106, 0, array16, 0, array16.length);
    render_bundle_encoder101.popDebugGroup();
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    render_pass_encoder1010.executeBundles([])
    
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    buffer107.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer106, 0, array1, 0, array1.length);
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1020.executeBundles([])
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    render_pass_encoder1050.popDebugGroup();
    
    device10.queue.writeBuffer(buffer106, 0, array18, 0, array18.length);
    
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder1060.pushDebugGroup("group_marker");
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder1060.setStencilReference(1);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer106, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer106, 0, array17, 0, array17.length);
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1060.executeBundles([])
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeBuffer(buffer106, 0, array19, 0, array19.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1060.insertDebugMarker("marker");
    {
        await buffer106.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer106.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer106.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.executeBundles([])
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer106, 0, array16, 0, array16.length);
    render_pass_encoder1040.setStencilReference(1);
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer106, 0, array9, 0, array9.length);
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.executeBundles([])
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.queue.writeBuffer(buffer106, 0, array19, 0, array19.length);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1060.setStencilReference(1);
    const array20 = new Float32Array([-0.5, 0.0, 0.25, -0.75, 0.75, 1.0, -1.0, 0.75, 0.0, -0.75, 0.5, 0.75, 0.0, -0.25, -1.0, -1.0, 1.0, -1.0, 0.5, 1.0, 0.75, 0.5, 0.5, -0.5, 1.0, 0.5, -0.5, 0.75, -0.5, 0.75, 0.75, -0.75, -0.5, -0.75, 0.75, 0.25, 0.75, 0.25, 0.5, 1.0, 0.5, -1.0, 0.75, -0.5, -0.75, -0.25, -0.5, -1.0, -0.25, 0.0, -0.25, -0.25, 0.75, -1.0, 0.0, 0.5, -1.0, -1.0, 0.25, 0.5, 0.75, 0.75, -0.75, 0.0, -1.0, 0.25, -0.25, -1.0, 0.25, 0.25, -0.75, 0.75, 0.75, -1.0, 0.0, 0.75, 0.0, -0.75, 1.0, -1.0, 1.0, -0.25, 1.0, 0.75, -0.75, -0.25, -1.0, -0.75, 0.5, 0.0, 0.75, -1.0, 1.0, -1.0, -0.75, -1.0, -1.0, 0.0, -0.25, 0.75, ]);
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1010.popDebugGroup();
    device10.queue.writeBuffer(buffer106, 0, array18, 0, array18.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeBuffer(buffer106, 0, array8, 0, array8.length);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.popDebugGroup();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder102.popDebugGroup();
    device30.pushErrorScope("internal");
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1040.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer106, 0, array12, 0, array12.length);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1060.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1060.setStencilReference(1);
    {
        await buffer106.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer106.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer106.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1040.setStencilReference(1);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder1020.setStencilReference(1);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device10.pushErrorScope("validation");
    buffer108.destroy()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer106, 0, array11, 0, array11.length);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1060.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer106, 0, array8, 0, array8.length);
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1060.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device10.queue.writeBuffer(buffer106, 0, array19, 0, array19.length);
    device10.queue.writeBuffer(buffer106, 0, array15, 0, array15.length);
    device10.queue.writeBuffer(buffer106, 0, array18, 0, array18.length);
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device10.queue.writeBuffer(buffer106, 0, array6, 0, array6.length);
    render_pass_encoder1010.insertDebugMarker("marker");
    command_encoder300.insertDebugMarker("mymarker");
    texture300.destroy();
    buffer106.destroy()
    render_bundle_encoder101.popDebugGroup();
    
    const command_buffer300 = command_encoder300.finish();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1050.insertDebugMarker("marker");
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder1060.pushDebugGroup("group_marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1050.executeBundles([])
    
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.destroy();
    
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    
    
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.setStencilReference(1);
    
    
    device10.pushErrorScope("validation");
    
    render_pass_encoder1040.setStencilReference(1);
    
    
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1010.setStencilReference(1);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1040.setStencilReference(1);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1060.pushDebugGroup("group_marker");
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1040.popDebugGroup();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.popDebugGroup();
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1060.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1020.executeBundles([])
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.executeBundles([])
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder1020.insertDebugMarker("marker");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1050.executeBundles([])
    
    
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.executeBundles([])
    
    
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1050.popDebugGroup();
    const command_buffer600 = command_encoder600.finish();
    const command_buffer601 = command_encoder601.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1060.popDebugGroup();
    device60.queue.submit([command_buffer600, command_buffer601, ]);
}