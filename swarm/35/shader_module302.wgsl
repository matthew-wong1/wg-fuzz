struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, -1647f, vec3<f32>(1159f, -290f, -1009f), vec4<f32>(1922f, -1090f, -1673f, 491f)), Struct_1(false, -1449f, vec3<f32>(-787f, 1181f, -361f), vec4<f32>(827f, -1392f, -1232f, 1032f)), -289f, Struct_1(true, -124f, vec3<f32>(785f, 104f, -1645f), vec4<f32>(344f, -266f, 1890f, 2217f)));

var<private> global1: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false));

var<private> global2: vec2<f32> = vec2<f32>(-294f, 2235f);

var<private> global3: vec2<f32> = vec2<f32>(589f, -121f);

var<private> global4: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.d.wx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global0.a.d.x, _wgslsmith_f_op_f32(sign(global0.a.d.x)))))), -u_input.d.x, _wgslsmith_f_op_vec3_f32(min(global0.a.d.zwx, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global0.a.d.zzx * global0.a.c))))), vec3<i32>(u_input.c.x << (u_input.a.x % 32u), u_input.b, u_input.d.x) | ~(-u_input.d.yxy), ~(-1i));
}

