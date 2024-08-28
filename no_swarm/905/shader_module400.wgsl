struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(0u, vec2<f32>(433f, 751f), 2147483647i, vec2<bool>(true, true)));

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-362f, -194f, -376f));

var<private> global2: array<vec2<bool>, 15>;

var<private> global3: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.a.x * -918f), _wgslsmith_f_op_f32(-global1.a.x), global0.a.b.x, _wgslsmith_f_op_f32(-global1.a.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1143f, 767f, global1.a.x, global1.a.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1.a.x, 1008f, 438f) - vec4<f32>(global0.a.b.x, global0.a.b.x, global1.a.x, global0.a.b.x))))), var_0, countOneBits(vec2<u32>(_wgslsmith_add_u32(reverseBits(u_input.a), ~global0.a.a), firstLeadingBit(~var_0))));
}

