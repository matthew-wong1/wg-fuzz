struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: Struct_3 = Struct_3(25542i, 0i, vec2<bool>(true, true));

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(-55238i, 1i, vec2<bool>(false, false)), Struct_3(-38467i, 0i, vec2<bool>(true, true)), Struct_3(i32(-2147483648), -39337i, vec2<bool>(false, false)), Struct_3(1i, 21658i, vec2<bool>(true, true)), Struct_3(66773i, -4320i, vec2<bool>(true, false)), Struct_3(-1i, 1i, vec2<bool>(false, true)), Struct_3(0i, 9554i, vec2<bool>(false, true)), Struct_3(1i, -9205i, vec2<bool>(true, true)), Struct_3(i32(-2147483648), 7978i, vec2<bool>(false, true)), Struct_3(0i, -16159i, vec2<bool>(true, false)), Struct_3(-7994i, -1i, vec2<bool>(true, true)), Struct_3(-31896i, 2147483647i, vec2<bool>(false, true)), Struct_3(51993i, -6883i, vec2<bool>(true, true)), Struct_3(i32(-2147483648), -1i, vec2<bool>(false, true)), Struct_3(2147483647i, -2864i, vec2<bool>(true, true)), Struct_3(-4958i, -16881i, vec2<bool>(true, false)), Struct_3(-1i, i32(-2147483648), vec2<bool>(true, false)), Struct_3(0i, -1i, vec2<bool>(false, false)));

var<private> global3: Struct_1;

var<private> global4: Struct_3 = Struct_3(-21151i, 3861i, vec2<bool>(false, false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(global3.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1175f, global3.b, -553f, -129f))))), ~(-2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.d.zy)), ~(~vec3<i32>(~global4.b, _wgslsmith_clamp_i32(-13556i, u_input.b, global4.a), -32423i)));
}

