struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 18686i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool) -> bool {
    return true;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = 17149u;
    let var_1 = Struct_1(arg_0.a);
    var_0 = ~45259u ^ u_input.a;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1666f))));
    return u_input.b;
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_3(~select(47847u, u_input.a, false), Struct_1(true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-167f + 1061f) + _wgslsmith_f_op_f32(-1334f * 534f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1182f)), _wgslsmith_f_op_f32(f32(-1f) * -222f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(864f)) * _wgslsmith_f_op_f32(-484f - -301f))))));
    var var_1 = ~(-2147483647i);
    let var_2 = Struct_1(func_2(var_0.b.a));
    let var_3 = 4294967295u;
    let var_4 = u_input.b;
    return vec3<i32>(u_input.b, func_3(var_0.b), ~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b, -26941i), u_input.a, -select(-vec3<i32>(u_input.b, -2147483647i, u_input.b) << (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)), select(vec3<i32>(-1i, u_input.b, u_input.b), func_1(), vec3<bool>(true, true, false)), vec3<bool>(true, true, all(vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1514f), u_input.a);
}

