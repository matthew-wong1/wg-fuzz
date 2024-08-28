struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4) -> u32 {
    return u_input.d.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_4(Struct_2(arg_1.x, vec2<bool>(arg_1.x, arg_2.b.x), Struct_1(arg_0.a.a), arg_2.d), u_input.d.x, abs(u_input.d), vec2<f32>(2322f, arg_0.c), u_input.a);
    let var_1 = all(!vec4<bool>(true, 64321u != ~u_input.d.x, false, !any(arg_2.b)));
    var var_2 = Struct_4(arg_2, func_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, arg_2.c.a.x))) * _wgslsmith_f_op_vec2_f32(-arg_2.c.a.ww)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_2.c.a.yz, arg_2.c.a.zw)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_2.d))))), var_0), var_0.c << (~var_0.c % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.d))), ~0u);
    let var_3 = arg_2.c.a.x;
    var var_4 = (_wgslsmith_f_op_f32(ceil(1000f)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.d.x)) * var_3)))) | !arg_2.b.x;
    return _wgslsmith_f_op_f32(arg_0.a.a.x - var_3);
}

fn func_1(arg_0: i32, arg_1: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_i32(5524i, i32(-1i) * -733i);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1187f * 136f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 695f) - _wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(vec4<f32>(-1528f, -285f, 947f, -1000f)), arg_0, -1000f), vec4<bool>(arg_1, false, arg_1, arg_1), Struct_2(false, vec2<bool>(arg_1, true), Struct_1(vec4<f32>(-2370f, -173f, 350f, 1431f)), 627f))))) - 933f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -224f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1362f))))));
    var_0 = arg_0;
    var_0 = 11816i;
    var_0 = ~_wgslsmith_sub_i32(~firstLeadingBit(-u_input.c.x), ~(~(2147483647i | arg_0)));
    return select(vec4<bool>(all(vec2<bool>(true, true)), arg_1, arg_1, arg_1), vec4<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(true, arg_1), arg_1)), true, false, true && any(select(vec4<bool>(false, arg_1, false, true), vec4<bool>(arg_1, arg_1, true, arg_1), true))), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -37934i;
    var_0 = u_input.c.x;
    var_0 = 1i;
    var_0 = -(~firstLeadingBit(0i));
    var var_1 = all(!(!func_1(~u_input.b.x, any(vec3<bool>(false, true, false)))));
    let var_2 = !(!func_1(2147483647i, func_1(~u_input.c.x, true).x).x);
    var_0 = ~abs(-_wgslsmith_div_i32(~u_input.b.x, _wgslsmith_add_i32(u_input.c.x, u_input.c.x)));
    var_1 = !all(select(select(vec4<bool>(var_2, var_2, var_2, var_2), func_1(u_input.b.x, var_2), var_2), vec4<bool>(true, all(vec4<bool>(var_2, false, true, true)), u_input.c.x > u_input.c.x, var_2), !all(vec2<bool>(var_2, true))));
    let var_3 = select(vec4<bool>(true, var_2, true, var_2 || var_2), !(!select(!vec4<bool>(false, true, var_2, var_2), select(vec4<bool>(false, false, true, false), vec4<bool>(false, var_2, var_2, true), false), vec4<bool>(false, var_2, var_2, var_2))), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec2<u32>(~u_input.a, ~func_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1508f, 1137f))), Struct_4(Struct_2(false, vec2<bool>(var_2, false), Struct_1(vec4<f32>(1000f, -392f, 717f, 1398f)), 277f), u_input.d.x, vec3<u32>(u_input.d.x, 4294967295u, 0u), vec2<f32>(767f, -1000f), 9577u))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-2024f - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1079f)))))));
}

