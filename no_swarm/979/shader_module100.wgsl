struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> f32 {
    global0 = Struct_1(~vec2<u32>(_wgslsmith_add_u32(arg_2.c.a.x, ~0u), ~_wgslsmith_sub_u32(4294967295u, 1u)));
    var var_0 = _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_2.b.x)))));
    let var_1 = 35485u;
    var var_2 = arg_2;
    let var_3 = ~global0.a.x;
    return var_2.b.x;
}

fn func_1() -> vec4<f32> {
    let var_0 = abs(2147483647i);
    let var_1 = Struct_1(global0.a);
    let var_2 = vec3<i32>(abs(_wgslsmith_sub_i32(min(u_input.c.x, var_0) | var_0, var_0)), reverseBits(-3797i), -(~max(select(-15749i, 7229i, false), reverseBits(var_0))));
    var var_3 = Struct_2(var_1, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1979f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(Struct_1(var_1.a), -134f, Struct_2(Struct_1(vec2<u32>(var_1.a.x, 1u)), vec4<f32>(590f, -1642f, -680f, 1000f), var_1))))), 1f), _wgslsmith_f_op_f32(trunc(-869f)), -1000f), Struct_1(var_1.a));
    let var_4 = _wgslsmith_f_op_f32(-var_3.b.x);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, _wgslsmith_div_f32(-452f, 1660f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.b.x * -546f), -1171f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(~vec2<u32>(4294967295u, 4147u))), _wgslsmith_f_op_vec4_f32(func_1()), Struct_1(global0.a));
    let var_1 = Struct_2(var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.b)))), Struct_1(vec2<u32>(global0.a.x, 1u)));
    var var_2 = true;
    let var_3 = Struct_3(true, false);
    var var_4 = 49639i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_vec4_f32(func_1()).zw, ~(~9208u));
}

