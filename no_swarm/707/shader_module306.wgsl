struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<bool>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: array<Struct_4, 11>;

var<private> global2: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(10479u, 77224u, 39080u), vec3<u32>(1u, 19664u, 31516u), vec3<u32>(1u, 1u, 47727u), vec3<u32>(58924u, 31255u, 92702u), vec3<u32>(27115u, 1u, 1u), vec3<u32>(1u, 0u, 22104u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 25598u, 20778u), vec3<u32>(4294967295u, 51758u, 1u), vec3<u32>(25442u, 20709u, 1u), vec3<u32>(9612u, 0u, 75878u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(115197u, 51990u, 1u), vec3<u32>(75991u, 1u, 1u), vec3<u32>(0u, 0u, 1u), vec3<u32>(79938u, 71817u, 1u), vec3<u32>(37015u, 44485u, 15479u));

var<private> global3: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec2<u32>(1u, 131846u)), Struct_4(vec2<u32>(4294967295u, 0u)), Struct_4(vec2<u32>(152u, 1u)), Struct_4(vec2<u32>(4294967295u, 4294967295u)), Struct_4(vec2<u32>(4294967295u, 0u)), Struct_4(vec2<u32>(43193u, 4294967295u)), Struct_4(vec2<u32>(23060u, 1u)), Struct_4(vec2<u32>(33365u, 4294967295u)), Struct_4(vec2<u32>(0u, 56837u)), Struct_4(vec2<u32>(77215u, 1u)), Struct_4(vec2<u32>(4294967295u, 28950u)), Struct_4(vec2<u32>(0u, 12475u)), Struct_4(vec2<u32>(61975u, 1u)), Struct_4(vec2<u32>(0u, 42558u)), Struct_4(vec2<u32>(0u, 33087u)), Struct_4(vec2<u32>(1u, 4294967295u)), Struct_4(vec2<u32>(41677u, 4294967295u)), Struct_4(vec2<u32>(22862u, 2108u)), Struct_4(vec2<u32>(32248u, 13365u)), Struct_4(vec2<u32>(4294967295u, 0u)), Struct_4(vec2<u32>(113118u, 0u)), Struct_4(vec2<u32>(45803u, 19973u)), Struct_4(vec2<u32>(51853u, 57922u)), Struct_4(vec2<u32>(1u, 4294967295u)));

var<private> global4: array<Struct_3, 4>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~u_input.b.x, 18633u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -846f), 785f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -625f) + _wgslsmith_f_op_f32(ceil(1069f))))));
}

