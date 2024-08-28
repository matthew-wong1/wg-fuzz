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
    
    const array0 = new Float32Array([0.75, 1.0, -0.25, -0.75, -0.5, 1.0, 0.75, -0.25, 0.0, 0.75, 0.5, 0.5, 0.25, -0.75, -0.75, 0.75, -0.5, 1.0, -1.0, 0.5, 1.0, 1.0, 0.75, 1.0, 1.0, 0.25, 0.25, 1.0, 1.0, 0.75, -0.25, 1.0, -0.5, 0.75, 0.25, -1.0, -0.75, -1.0, 0.75, -0.75, 0.0, 0.75, 0.25, -1.0, -0.5, 0.75, -0.75, 0.25, 1.0, 0.75, 0.5, 0.5, -0.5, 0.5, -0.25, 0.75, 1.0, 0.75, -0.25, 0.0, 0.75, -0.25, 0.75, 0.0, 0.25, -0.5, -0.75, 0.75, 0.25, 0.5, 0.75, 0.5, 1.0, -1.0, -1.0, 0.0, 0.0, -0.25, 0.5, -0.25, -0.5, 1.0, 0.75, 0.75, -0.25, -0.5, 0.5, -1.0, -0.5, 0.0, -0.75, 0.0, 0.5, 1.0, 0.5, -1.0, 0.25, 0.5, -0.75, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.25, 0.75, 0.25, 0.25, -0.25, -0.25, 0.0, -0.25, 1.0, 0.5, 0.75, 1.0, 1.0, -1.0, 0.75, 0.25, -0.5, 0.0, 0.25, 1.0, -0.5, -1.0, 1.0, -1.0, 0.0, -0.75, -1.0, 0.0, 0.25, 1.0, -0.5, 1.0, -0.25, 0.25, 0.0, 0.75, -0.75, -0.25, 0.75, -0.75, 1.0, -0.5, 0.75, -1.0, 0.75, -0.25, 0.0, -0.25, 1.0, 0.0, -0.25, -0.75, -1.0, 0.75, -0.25, 0.25, 0.75, 1.0, -1.0, 0.5, -1.0, 0.0, 0.5, -0.75, 0.5, 0.5, -0.5, 1.0, -0.25, -0.5, 0.5, -0.25, -0.25, -0.25, -0.75, 0.75, 1.0, 0.5, -0.5, 0.75, -1.0, 1.0, 1.0, -1.0, 0.0, -0.5, 0.25, 1.0, -0.5, 0.25, -0.75, -0.5, -0.25, 0.0, 0.5, 1.0, -0.75, 1.0, -0.5, 0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("out-of-memory");
    
    const query100 = device10.createQuerySet({
        label: "query100",
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
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array2 = new Float32Array([0.0, -0.5, 0.0, -0.75, 1.0, -0.5, -0.75, 1.0, -0.5, -0.25, 0.5, 1.0, -0.25, 0.5, 0.5, 0.0, -0.5, 0.0, -0.25, -0.75, -0.25, 0.0, -0.25, 0.5, -0.25, 1.0, 0.0, -0.75, 0.75, 0.25, 0.0, 0.25, 1.0, -0.25, 0.0, -0.5, -0.5, -0.75, 0.0, -0.25, 0.75, -0.5, 0.5, 0.5, 0.0, -0.25, -0.75, 0.5, -0.25, 0.75, -0.25, 0.0, 0.25, 0.5, -1.0, 0.75, 1.0, -0.5, -1.0, 0.75, 1.0, 0.5, 0.5, 0.25, -0.25, 1.0, 0.5, 0.5, 0.0, 0.0, 0.0, 1.0, -0.5, 1.0, 0.75, -0.25, -0.75, 0.0, 1.0, -1.0, 0.75, -0.5, -1.0, 0.0, 0.75, 0.75, -0.5, 0.5, -1.0, 1.0, 0.75, -0.75, -0.75, -1.0, -0.5, -1.0, 1.0, 0.75, -1.0, 0.25, ]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([-1.0, 0.75, -0.75, 1.0, -0.5, 0.0, -0.5, 0.25, 0.75, 0.0, 1.0, 0.25, -0.25, 0.5, -0.75, 1.0, 0.25, 0.5, -0.25, 0.5, -1.0, 0.25, 1.0, -1.0, -0.5, -0.25, 0.75, -0.25, 0.0, -0.75, 0.25, 1.0, -1.0, -0.5, 0.75, -1.0, -0.75, 1.0, 0.5, 0.25, -0.75, -0.5, 0.5, 0.25, 0.0, 0.25, -1.0, 0.75, 0.25, -0.5, 0.0, -0.75, 1.0, -0.25, 1.0, -0.25, 1.0, 1.0, -1.0, 1.0, -0.75, 0.0, 0.75, 0.0, -0.25, 1.0, -0.5, -0.75, 0.25, -1.0, 0.5, -0.25, -0.5, -1.0, -0.75, -1.0, 0.75, 0.25, 1.0, -0.5, -0.25, 0.25, 0.5, 0.0, 0.25, -0.5, 0.25, -1.0, 1.0, 0.75, 0.25, 0.5, -0.5, 0.25, -0.75, 0.75, -1.0, -1.0, 1.0, -1.0, ]);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout104]
    });
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout103]
    });
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.pushErrorScope("out-of-memory");
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout103]
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
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout103]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout107]
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device40.pushErrorScope("out-of-memory");
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout106]
    });
    const pipeline_layout1028 = device10.createPipelineLayout({ 
        label: "pipeline_layout1028",
        bindGroupLayouts: [bind_group_layout106]
    });
    const pipeline_layout1029 = device10.createPipelineLayout({ 
        label: "pipeline_layout1029",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout1030 = device10.createPipelineLayout({ 
        label: "pipeline_layout1030",
        bindGroupLayouts: [bind_group_layout107]
    });
    const pipeline_layout1031 = device10.createPipelineLayout({ 
        label: "pipeline_layout1031",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout1032 = device10.createPipelineLayout({ 
        label: "pipeline_layout1032",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout1033 = device10.createPipelineLayout({ 
        label: "pipeline_layout1033",
        bindGroupLayouts: [bind_group_layout103]
    });
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    const pipeline_layout1034 = device10.createPipelineLayout({ 
        label: "pipeline_layout1034",
        bindGroupLayouts: [bind_group_layout103]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout006]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout1035 = device10.createPipelineLayout({ 
        label: "pipeline_layout1035",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout006]
    });
    device20.pushErrorScope("internal");
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout1036 = device10.createPipelineLayout({ 
        label: "pipeline_layout1036",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const pipeline_layout1037 = device10.createPipelineLayout({ 
        label: "pipeline_layout1037",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([0.0, -0.5, 0.5, -1.0, -0.5, -0.25, -0.25, -1.0, -0.5, 0.75, 0.0, 1.0, 1.0, 0.5, -1.0, 0.75, 0.25, 0.25, 0.5, -0.5, 0.5, -0.25, 0.0, 0.0, -1.0, 0.75, 1.0, -0.75, 1.0, 0.0, 0.75, 0.0, 0.75, -0.75, -0.75, -1.0, -1.0, 0.5, -0.5, 0.0, 0.75, 0.75, -0.5, -1.0, -0.5, -1.0, 0.25, 1.0, 0.25, 0.75, 0.0, 0.75, -0.75, -1.0, 1.0, 0.0, -1.0, 0.25, 0.25, 0.5, -1.0, -0.5, 0.75, -0.25, 1.0, 1.0, 0.0, 0.0, 0.75, -1.0, -0.5, -0.75, -0.5, -1.0, -1.0, -0.5, 1.0, 0.5, 0.0, 0.0, -0.5, -1.0, 0.75, -1.0, -0.75, 0.75, 1.0, 0.0, 0.25, 0.0, -0.75, -1.0, -0.25, 0.5, -1.0, -0.25, 0.5, -0.25, 0.75, 0.25, ]);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1038 = device10.createPipelineLayout({ 
        label: "pipeline_layout1038",
        bindGroupLayouts: [bind_group_layout108]
    });
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout001]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout004]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("internal");
    
    
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout1039 = device10.createPipelineLayout({ 
        label: "pipeline_layout1039",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const pipeline_layout1040 = device10.createPipelineLayout({ 
        label: "pipeline_layout1040",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout1041 = device10.createPipelineLayout({ 
        label: "pipeline_layout1041",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    
    const array5 = new Float32Array([0.75, -0.5, 0.5, 1.0, -1.0, -0.75, -0.5, 0.25, 0.25, 0.5, -0.75, 0.25, 0.25, 0.75, 0.5, -0.25, 0.0, 0.0, 0.0, -1.0, 0.5, -0.75, 0.75, -0.75, 0.75, -0.75, -0.5, -0.75, -0.25, -1.0, 0.25, -0.5, 0.5, 0.0, 0.5, 0.25, -0.25, -0.75, 0.25, 0.0, -0.5, 0.5, -0.75, -0.25, -0.5, 0.25, 0.75, 0.75, 0.0, 0.5, -0.75, -1.0, 0.25, 1.0, 0.5, -0.25, -0.25, 0.25, 1.0, -1.0, -0.5, -1.0, -1.0, 1.0, -0.25, -0.75, -0.75, -0.75, -0.25, -1.0, -0.75, -0.25, 0.5, -0.25, -0.75, 1.0, -0.75, 0.0, 0.5, 0.5, 0.5, -1.0, -0.5, 0.75, 0.75, -1.0, -0.25, 0.5, 1.0, 1.0, -0.75, 0.0, 0.0, -0.75, 1.0, 0.0, 0.0, 0.25, 1.0, 0.5, ]);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const pipeline_layout1042 = device10.createPipelineLayout({ 
        label: "pipeline_layout1042",
        bindGroupLayouts: [bind_group_layout107]
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1043 = device10.createPipelineLayout({ 
        label: "pipeline_layout1043",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout1044 = device10.createPipelineLayout({ 
        label: "pipeline_layout1044",
        bindGroupLayouts: [bind_group_layout108]
    });
    
    const pipeline_layout1045 = device10.createPipelineLayout({ 
        label: "pipeline_layout1045",
        bindGroupLayouts: [bind_group_layout106]
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const pipeline_layout1046 = device10.createPipelineLayout({ 
        label: "pipeline_layout1046",
        bindGroupLayouts: [bind_group_layout105]
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout006]
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
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
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    
    const pipeline_layout1047 = device10.createPipelineLayout({ 
        label: "pipeline_layout1047",
        bindGroupLayouts: [bind_group_layout103]
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const pipeline_layout1048 = device10.createPipelineLayout({ 
        label: "pipeline_layout1048",
        bindGroupLayouts: [bind_group_layout107]
    });
    const pipeline_layout1049 = device10.createPipelineLayout({ 
        label: "pipeline_layout1049",
        bindGroupLayouts: [bind_group_layout108]
    });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout1050 = device10.createPipelineLayout({ 
        label: "pipeline_layout1050",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout001]
    });
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    const pipeline_layout1051 = device10.createPipelineLayout({ 
        label: "pipeline_layout1051",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout1052 = device10.createPipelineLayout({ 
        label: "pipeline_layout1052",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout1053 = device10.createPipelineLayout({ 
        label: "pipeline_layout1053",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const pipeline_layout1054 = device10.createPipelineLayout({ 
        label: "pipeline_layout1054",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
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
    const pipeline_layout1055 = device10.createPipelineLayout({ 
        label: "pipeline_layout1055",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const array6 = new Float32Array([-0.75, -0.25, -1.0, -0.25, -0.5, -0.25, -1.0, 0.5, 0.0, -1.0, 0.5, -0.75, 0.0, -1.0, 1.0, 0.5, 0.0, -0.25, -1.0, -0.25, 1.0, -1.0, 1.0, 1.0, 0.5, 1.0, -0.75, 0.5, 0.0, 0.25, 0.25, 1.0, 0.5, 0.75, -0.5, -0.5, 0.25, -0.5, 0.5, 1.0, -0.25, -0.75, -0.25, 0.5, -0.5, 1.0, 0.5, -1.0, -0.75, -0.75, 0.75, 0.0, -0.25, 0.75, 1.0, 1.0, -0.25, -0.5, -0.5, 0.5, -0.25, -0.25, 1.0, 0.5, -1.0, -0.75, 0.5, -0.25, 1.0, -0.5, -0.75, 0.0, -0.5, -1.0, -0.5, -0.5, 0.0, -1.0, -1.0, -1.0, -0.75, -0.25, 0.0, 0.75, 0.75, -0.75, 1.0, -0.75, -1.0, 1.0, 0.25, 0.0, -0.25, 0.0, -0.75, -0.25, 0.75, -0.75, -0.25, 1.0, ]);
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const array7 = new Float32Array([-0.25, -0.5, -0.5, -0.5, 1.0, -0.75, 0.0, 0.75, 1.0, 1.0, -0.25, 0.0, 0.25, 0.0, -0.75, 1.0, 0.25, 0.0, 0.0, 0.75, 0.25, 0.75, -1.0, 0.5, 0.0, 0.75, 1.0, 0.5, 0.0, 0.5, -0.25, -0.5, -0.25, 0.25, -0.75, 0.0, 0.0, 0.25, -1.0, -0.25, 0.25, 1.0, -0.75, 1.0, 0.75, 0.75, -0.5, 0.75, 0.0, -0.75, 0.5, 1.0, 0.5, 0.0, 0.0, 0.0, -0.25, 0.0, 0.5, -0.5, -0.75, -1.0, -0.75, 1.0, -1.0, 0.25, -0.75, -1.0, -0.5, -0.75, 0.75, 1.0, 0.25, 0.75, 0.0, 0.75, 0.25, -1.0, 0.25, 0.0, 1.0, -0.5, 0.25, -0.25, 0.75, 0.25, -1.0, -0.5, -0.25, 0.75, 0.75, 0.25, 1.0, 1.0, 0.25, -1.0, -0.75, 0.5, -0.75, 0.0, ]);
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout005]
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const pipeline_layout1056 = device10.createPipelineLayout({ 
        label: "pipeline_layout1056",
        bindGroupLayouts: [bind_group_layout107]
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0032 = device00.createPipelineLayout({ 
        label: "pipeline_layout0032",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout109 = device10.createBindGroupLayout({ 
        label: "bind_group_layout109",
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
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout203]
    });
    const array8 = new Float32Array([-0.25, 1.0, 0.75, 0.5, 0.5, -1.0, 0.5, 0.25, 0.75, 0.0, -0.25, -1.0, 0.5, 0.75, -1.0, -0.25, -0.5, 0.5, -0.75, -0.75, 0.5, -0.75, -0.25, 0.5, 0.25, -1.0, -0.75, 0.25, -0.75, 0.75, -1.0, 1.0, -0.25, -1.0, -0.75, -0.5, 0.5, -0.75, 0.5, -0.75, 1.0, -0.5, -1.0, -0.75, -1.0, -0.5, -0.25, -0.75, -0.25, 0.0, -1.0, -1.0, 1.0, -0.75, -0.25, -0.5, 1.0, -1.0, -1.0, -0.25, -0.5, 0.25, 0.25, -0.5, -0.75, -0.5, 1.0, 0.75, 0.5, 0.25, 0.75, -0.5, -1.0, 0.25, -0.5, 0.75, 0.75, 1.0, 0.0, 1.0, -0.25, 0.0, 0.25, -0.75, 0.75, -0.5, 0.5, 1.0, 0.0, -0.25, -0.25, -1.0, -0.5, 0.75, 0.5, 0.75, 0.75, 1.0, -1.0, 0.75, ]);
    const pipeline_layout0033 = device00.createPipelineLayout({ 
        label: "pipeline_layout0033",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout1057 = device10.createPipelineLayout({ 
        label: "pipeline_layout1057",
        bindGroupLayouts: [bind_group_layout108]
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const bind_group_layout1010 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1010",
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
    const pipeline_layout0034 = device00.createPipelineLayout({ 
        label: "pipeline_layout0034",
        bindGroupLayouts: [bind_group_layout004]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout1058 = device10.createPipelineLayout({ 
        label: "pipeline_layout1058",
        bindGroupLayouts: [bind_group_layout108]
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0035 = device00.createPipelineLayout({ 
        label: "pipeline_layout0035",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
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
    const pipeline_layout1059 = device10.createPipelineLayout({ 
        label: "pipeline_layout1059",
        bindGroupLayouts: [bind_group_layout106]
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0036 = device00.createPipelineLayout({ 
        label: "pipeline_layout0036",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout1060 = device10.createPipelineLayout({ 
        label: "pipeline_layout1060",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout1061 = device10.createPipelineLayout({ 
        label: "pipeline_layout1061",
        bindGroupLayouts: [bind_group_layout108]
    });
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout203]
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
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
    device30.pushErrorScope("validation");
    const pipeline_layout0037 = device00.createPipelineLayout({ 
        label: "pipeline_layout0037",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout503]
    });
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
    
    const pipeline_layout1062 = device10.createPipelineLayout({ 
        label: "pipeline_layout1062",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0038 = device00.createPipelineLayout({ 
        label: "pipeline_layout0038",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const pipeline_layout1063 = device10.createPipelineLayout({ 
        label: "pipeline_layout1063",
        bindGroupLayouts: [bind_group_layout106]
    });
    const pipeline_layout0039 = device00.createPipelineLayout({ 
        label: "pipeline_layout0039",
        bindGroupLayouts: [bind_group_layout002]
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
    const pipeline_layout0040 = device00.createPipelineLayout({ 
        label: "pipeline_layout0040",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const pipeline_layout1064 = device10.createPipelineLayout({ 
        label: "pipeline_layout1064",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout1065 = device10.createPipelineLayout({ 
        label: "pipeline_layout1065",
        bindGroupLayouts: [bind_group_layout106]
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0041 = device00.createPipelineLayout({ 
        label: "pipeline_layout0041",
        bindGroupLayouts: [bind_group_layout007]
    });
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    
    const pipeline_layout1066 = device10.createPipelineLayout({ 
        label: "pipeline_layout1066",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout0042 = device00.createPipelineLayout({ 
        label: "pipeline_layout0042",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    const pipeline_layout1067 = device10.createPipelineLayout({ 
        label: "pipeline_layout1067",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    const pipeline_layout1068 = device10.createPipelineLayout({ 
        label: "pipeline_layout1068",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout0043 = device00.createPipelineLayout({ 
        label: "pipeline_layout0043",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout502]
    });
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    
    
    const pipeline_layout0044 = device00.createPipelineLayout({ 
        label: "pipeline_layout0044",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    
    
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout505]
    });
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout203]
    });
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    const pipeline_layout1069 = device10.createPipelineLayout({ 
        label: "pipeline_layout1069",
        bindGroupLayouts: [bind_group_layout109]
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const pipeline_layout1070 = device10.createPipelineLayout({ 
        label: "pipeline_layout1070",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const pipeline_layout1071 = device10.createPipelineLayout({ 
        label: "pipeline_layout1071",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    
    
    const pipeline_layout1072 = device10.createPipelineLayout({ 
        label: "pipeline_layout1072",
        bindGroupLayouts: [bind_group_layout109]
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    device60.pushErrorScope("validation");
    
    const pipeline_layout0045 = device00.createPipelineLayout({ 
        label: "pipeline_layout0045",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout1073 = device10.createPipelineLayout({ 
        label: "pipeline_layout1073",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
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
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const pipeline_layout2020 = device20.createPipelineLayout({ 
        label: "pipeline_layout2020",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout0046 = device00.createPipelineLayout({ 
        label: "pipeline_layout0046",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout506]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    const pipeline_layout0047 = device00.createPipelineLayout({ 
        label: "pipeline_layout0047",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    const pipeline_layout1074 = device10.createPipelineLayout({ 
        label: "pipeline_layout1074",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout500]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const pipeline_layout0048 = device00.createPipelineLayout({ 
        label: "pipeline_layout0048",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout500]
    });
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1075 = device10.createPipelineLayout({ 
        label: "pipeline_layout1075",
        bindGroupLayouts: [bind_group_layout107]
    });
    
}