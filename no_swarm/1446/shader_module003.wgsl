struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19>;

var<private> global1: array<Struct_2, 28>;

var<private> global2: vec2<f32>;

var<private> global3: Struct_2;

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    return 75687u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (1i << (u_input.a % 32u)) <= -33266i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, 5352u, u_input.a), ~vec3<u32>(func_1(global3.d.x, select(vec3<bool>(true, false, true), vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, false, global3.c))), ~u_input.a, 14233u), 494f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + -2558f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(826f))))))), _wgslsmith_mult_i32(-53441i, _wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(global3.b, 1i), abs(-35526i)))));
}

