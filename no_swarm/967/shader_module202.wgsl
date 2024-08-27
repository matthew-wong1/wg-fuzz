struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_4(4294967295u, 4294967295u, vec2<bool>(true, true), vec4<f32>(643f, 832f, -614f, 1042f), 2147483647i), Struct_3(vec4<i32>(1i, 2603i, 1i, 0i), Struct_1(1i, i32(-2147483648), false, -1267f)));

var<private> global1: array<bool, 2> = array<bool, 2>(false, true);

var<private> global2: f32;

var<private> global3: Struct_2 = Struct_2(vec4<f32>(-597f, -930f, 628f, -1000f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global0.a.d);
    let var_1 = Struct_4(15058u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.a.b >> (24626u % 32u), global0.a.b), 57652u), global0.a.c, vec4<f32>(784f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-793f * -1812f))), global3.a.x, _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.a.x - -644f), _wgslsmith_f_op_f32(trunc(215f))))))), global0.b.a.x);
    let var_2 = global0.a.c;
    let var_3 = -2586i & _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_1.e, u_input.b, u_input.b), global0.b.a), -2147483647i, 1i, -3514i) ^ global0.b.a, global0.b.a);
    global2 = global3.a.x;
    let var_4 = global0.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(var_1.d.zy)));
}

