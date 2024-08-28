struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -304f;

var<private> global1: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-105f, -684f), vec2<f32>(568f, -298f), vec2<f32>(-196f, -1321f), vec2<f32>(462f, -298f), vec2<f32>(1022f, -200f), vec2<f32>(-373f, 1484f), vec2<f32>(693f, 334f), vec2<f32>(1000f, -419f), vec2<f32>(572f, 1522f), vec2<f32>(-589f, -535f), vec2<f32>(-368f, -1000f), vec2<f32>(1000f, 1000f), vec2<f32>(-123f, 1000f), vec2<f32>(-1000f, 243f), vec2<f32>(-365f, 330f), vec2<f32>(1197f, 134f), vec2<f32>(-141f, -362f), vec2<f32>(2453f, -1501f), vec2<f32>(1126f, -1024f), vec2<f32>(-639f, -1203f), vec2<f32>(-1347f, -1332f), vec2<f32>(538f, -344f), vec2<f32>(-419f, -2089f), vec2<f32>(-612f, -161f), vec2<f32>(974f, -846f), vec2<f32>(-655f, 1190f), vec2<f32>(688f, -577f), vec2<f32>(1000f, 1766f));

var<private> global2: vec3<u32>;

var<private> global3: array<i32, 14>;

var<private> global4: vec4<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-1i) * -(~(reverseBits(vec2<i32>(global3[_wgslsmith_index_u32(22851u, 14u)], global3[_wgslsmith_index_u32(u_input.b.x, 14u)])) ^ vec2<i32>(global3[_wgslsmith_index_u32(global2.x, 14u)], -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.x))))), ~(~(~0u) | ~u_input.b.x));
}

