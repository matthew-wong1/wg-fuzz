struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec3<bool>(false, false, true), 491f, vec2<u32>(4294967295u, 1u), Struct_1(false, vec3<i32>(0i, i32(-2147483648), -4704i), vec2<u32>(4294967295u, 0u))), Struct_2(vec3<bool>(false, false, true), 211f, vec2<u32>(48087u, 53628u), Struct_1(true, vec3<i32>(2147483647i, 22591i, i32(-2147483648)), vec2<u32>(4294967295u, 6469u))), Struct_2(vec3<bool>(false, true, true), 1000f, vec2<u32>(0u, 4294967295u), Struct_1(true, vec3<i32>(2147483647i, i32(-2147483648), -19974i), vec2<u32>(14035u, 1u))), Struct_2(vec3<bool>(true, true, true), -1882f, vec2<u32>(0u, 65838u), Struct_1(false, vec3<i32>(-10972i, -18283i, 45404i), vec2<u32>(25081u, 33906u))), Struct_2(vec3<bool>(false, true, true), 177f, vec2<u32>(1u, 10272u), Struct_1(true, vec3<i32>(0i, i32(-2147483648), -50525i), vec2<u32>(1u, 15170u))), Struct_2(vec3<bool>(true, true, false), 456f, vec2<u32>(1u, 4294967295u), Struct_1(true, vec3<i32>(i32(-2147483648), -1i, 18407i), vec2<u32>(4294967295u, 0u))), Struct_2(vec3<bool>(true, false, true), -1099f, vec2<u32>(0u, 89300u), Struct_1(true, vec3<i32>(i32(-2147483648), -44108i, i32(-2147483648)), vec2<u32>(4294967295u, 53488u))), Struct_2(vec3<bool>(true, true, false), -347f, vec2<u32>(4294967295u, 4294967295u), Struct_1(true, vec3<i32>(-17517i, 0i, -1i), vec2<u32>(10823u, 0u))), Struct_2(vec3<bool>(true, false, true), 889f, vec2<u32>(10554u, 54166u), Struct_1(false, vec3<i32>(-24211i, 1i, 1i), vec2<u32>(2074u, 4294967295u))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global0 = array<Struct_2, 9>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1230f)), arg_0.x)));
    var var_1 = global0[_wgslsmith_index_u32(2335u, 9u)];
    global0 = array<Struct_2, 9>();
    var_1 = Struct_2(select(vec3<bool>(false, all(select(vec4<bool>(false, true, var_1.d.a, true), vec4<bool>(var_1.a.x, true, false, var_1.d.a), var_1.a.x)), var_1.a.x), select(!vec3<bool>(var_1.d.a, var_1.a.x, true), var_1.a, !var_1.a), select(!var_1.a, !vec3<bool>(true, var_1.a.x, false), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), ~var_1.d.c, var_1.d);
    return global0[_wgslsmith_index_u32(0u, 9u)];
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = ~arg_0;
    var_0 = ~_wgslsmith_sub_vec2_u32(arg_0, vec2<u32>(~0u, _wgslsmith_clamp_u32(1u, 4294967295u, u_input.e))) << (arg_2.d.c % vec2<u32>(32u));
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    var var_1 = u_input.a;
    return Struct_1(select(0u < func_2(arg_1).d.c.x, true, !arg_2.d.a | arg_2.a.x), arg_2.d.b, countOneBits(arg_2.c) ^ min(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d.c.x, 3194u, var_0.x), vec3<u32>(u_input.c, 35242u, 174742u)), ~1u), max(arg_0 | vec2<u32>(arg_0.x, arg_0.x), _wgslsmith_mult_vec2_u32(arg_2.c, arg_2.d.c))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: u32, arg_3: u32) -> vec4<u32> {
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    var var_0 = func_3(arg_1.yy, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-834f, 147f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1141f, 1849f))) - vec2<f32>(_wgslsmith_f_op_f32(-239f * -836f), _wgslsmith_f_op_f32(f32(-1f) * -1622f))))), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-903f, _wgslsmith_f_op_f32(-2273f + -472f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-592f, 616f) + vec2<f32>(-1121f, -825f))))));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(787f)), -468f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(646f, 819f)), _wgslsmith_f_op_f32(round(-1666f))))))));
    return vec4<u32>(_wgslsmith_sub_u32(~61017u, _wgslsmith_mod_u32(~arg_3, arg_3)), _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(firstTrailingBit(11595u) ^ ~arg_2, _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, u_input.e, var_0.c.x, arg_1.x), vec4<u32>(arg_3, var_1.d.c.x, 88317u, u_input.b)), ~vec4<u32>(arg_2, 29364u, 4294967295u, u_input.b)))), 35289u, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 9>();
    let var_0 = -1444f;
    let var_1 = 0u;
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c, 23119u), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 89410u, 1u, 1u), countOneBits(vec4<u32>(var_1, 0u, 61295u, u_input.e))), func_1(~vec4<i32>(u_input.a, u_input.d.x, u_input.d.x, 5330i) ^ vec4<i32>(u_input.a, 17103i, -1i, u_input.d.x), _wgslsmith_sub_vec3_u32(select(vec3<u32>(29819u, 719u, 6387u), vec3<u32>(u_input.c, 0u, 0u), vec3<bool>(true, true, true)), abs(vec3<u32>(1u, 68310u, var_1))), firstLeadingBit(var_1), ~var_1)));
    var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 100490u, 4294967295u, 56799u), vec4<u32>(4294967295u, 54322u, 33187u, u_input.b)), vec4<u32>(34120u, u_input.b, var_1, 63441u)) << (~abs(vec4<u32>(var_1, 0u, 1u, 32814u)) % vec4<u32>(32u)), min(vec4<u32>(4294967295u, 4294967295u ^ u_input.c, ~var_1, var_1), vec4<u32>(var_1, u_input.c, 0u, var_1) ^ (vec4<u32>(89525u, 12591u, var_1, var_1) << (vec4<u32>(6294u, 25150u, u_input.e, var_1) % vec4<u32>(32u))))), _wgslsmith_sub_u32(func_3(~vec2<u32>(1u, 41143u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(1046f, var_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(var_0, -2045f))), Struct_2(vec3<bool>(false, false, false), _wgslsmith_f_op_f32(max(-1089f, 266f)), vec2<u32>(u_input.b, var_1), Struct_1(true, vec3<i32>(-15062i, 0i, u_input.d.x), vec2<u32>(var_1, u_input.b)))).c.x, ~select(var_1, ~u_input.c, true)));
    var var_3 = func_2(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<f32>(942f, -283f)).b + _wgslsmith_div_f32(var_0, 1392f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))).d;
    var var_4 = vec2<bool>(var_3.a, var_3.a && (var_3.a && var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.yx & ((u_input.d << (var_3.c % vec2<u32>(32u))) >> (var_3.c % vec2<u32>(32u))), select(select(min(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_1, 0u, var_3.c.x), vec4<u32>(4294967295u, 1u, 78765u, u_input.c)), vec4<u32>(2802u, var_1, var_1, 28278u)), firstTrailingBit(~vec4<u32>(var_3.c.x, 31634u, 1u, var_1)), vec4<bool>(var_3.a, var_4.x, select(var_3.a, false, var_3.a), any(vec4<bool>(var_4.x, var_4.x, true, false)))), vec4<u32>(1u, min(abs(26032u), 33790u), func_1(abs(vec4<i32>(var_3.b.x, 0i, u_input.a, var_3.b.x)), vec3<u32>(0u, 1824u, u_input.b), 0u, ~63608u).x, 0u), !(_wgslsmith_sub_u32(4294967295u, 4294967295u) == reverseBits(var_3.c.x))), var_3.b.x, ~select(countOneBits(vec4<i32>(2147483647i, -2147483647i, 26919i, -2147483647i)), -(~vec4<i32>(32698i, var_3.b.x, 18353i, -2147483647i)), vec4<bool>(false, !var_3.a, 11482i > u_input.a, true)));
}

