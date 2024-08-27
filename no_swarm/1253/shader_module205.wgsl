struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(1i, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(699f * -1000f) - _wgslsmith_f_op_f32(step(1125f, 1232f))), -889f), -198f, -vec2<i32>(36002i, _wgslsmith_sub_i32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-536f)), 695f))), true);
    var_0 = Struct_3(u_input.a, var_0.b, var_0.c);
    var var_1 = var_0.b;
    var_1 = var_0.b;
    var_1 = var_0.b;
    return _wgslsmith_f_op_f32(-var_0.b.b);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f) + _wgslsmith_f_op_f32(abs(-159f))) - -209f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -791f)), _wgslsmith_f_op_f32(f32(-1f) * -465f), true))), 151f, vec2<i32>(53905i, min(-37060i, _wgslsmith_mod_i32(abs(27811i), -716i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2173f)) - _wgslsmith_f_op_f32(func_3())) + -1305f)));
    let var_1 = ~(~(~(~_wgslsmith_mod_u32(4294967295u, 14690u))));
    var var_2 = var_0;
    var var_3 = reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(var_2.c.x), _wgslsmith_div_i32(var_0.c.x, select(u_input.a, var_0.c.x, false))), _wgslsmith_div_vec2_i32(firstTrailingBit(var_0.c) & max(vec2<i32>(1i, -1i), vec2<i32>(u_input.a, var_2.c.x)), -vec2<i32>(-1i, 0i))));
    var var_4 = var_2.d;
    return Struct_2(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(var_0.d, var_0.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1094f)))) + var_0.b), var_0, var_2.c.x);
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = vec4<bool>(any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), all(vec4<bool>(_wgslsmith_f_op_f32(step(var_0.b, -227f)) >= 1332f, any(vec4<bool>(true, true, true, true)), false, true)), any(vec4<bool>(firstLeadingBit(-59291i) <= u_input.a, all(vec3<bool>(false, false, false)), true, !all(vec2<bool>(false, true)))), true);
    var var_2 = Struct_3(18394i, func_2().c, true);
    return Struct_3(1i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + 1000f), _wgslsmith_f_op_f32(123f - var_2.b.d)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.c.d))))), arg_0, vec2<i32>(var_2.b.c.x ^ var_2.b.c.x, -var_2.a) ^ max(var_0.c.c, ~var_2.b.c), _wgslsmith_f_op_f32(floor(var_0.c.a))), true);
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = i32(-1i) * -(~0i);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(416f, 1560f, arg_1.b.d, arg_1.b.d), vec4<f32>(arg_1.b.a, arg_0, -280f, 954f))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-1106f + arg_0), _wgslsmith_f_op_f32(f32(-1f) * -327f)), vec4<f32>(arg_1.b.b, -1000f, _wgslsmith_f_op_f32(-arg_0), arg_0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.a)), -671f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_1.b.d)))), _wgslsmith_f_op_f32(max(func_1(-738f).b.a, _wgslsmith_div_f32(arg_0, -840f)))))));
    var var_2 = ~(~115442u);
    var var_3 = Struct_2(49689u, arg_0, func_2().c, u_input.a | reverseBits(-(arg_1.b.c.x | -1i)));
    var var_4 = !(!select(select(select(vec3<bool>(true, true, arg_1.c), vec3<bool>(arg_1.c, true, arg_1.c), arg_1.c), vec3<bool>(arg_1.c, false, arg_1.c), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(arg_1.c, arg_1.c, arg_1.c, true)), true, !arg_1.c), vec3<bool>(all(vec2<bool>(arg_1.c, false)), !arg_1.c, true)));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -522f)), 559f)));
    let var_1 = -285f;
    var var_2 = func_4(997f, func_1(var_1));
    var var_3 = true;
    var_2 = func_1(var_2.a).b;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, var_1, 1461f) + vec3<f32>(-161f, 369f, -1039f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 747f, var_2.b)), vec3<bool>(true, true, true))))), ~1u, 515f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(501f).b.d * _wgslsmith_f_op_f32(ceil(-1135f)))) * var_1), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4, 725f))), Struct_3(u_input.a, func_4(_wgslsmith_f_op_f32(var_4 + var_4), Struct_3(u_input.a, Struct_1(290f, -666f, vec2<i32>(u_input.a, 29108i), -2185f), true)), true)).c);
}

