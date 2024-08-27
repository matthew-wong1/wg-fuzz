struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = !vec2<bool>(false, (_wgslsmith_mod_u32(var_0.c.x, u_input.d) >= firstTrailingBit(var_0.c.x)) | var_0.b);
    let var_2 = 4921i;
    return _wgslsmith_sub_u32(var_0.c.x, 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>) -> vec4<bool> {
    var var_0 = Struct_1(vec3<i32>(2147483647i, ~(-(~(-25187i))), u_input.c.x), (_wgslsmith_add_i32(-u_input.c.x, -u_input.c.x) <= -2147483647i) | !(!arg_1.x), vec4<u32>(0u, ~(45822u << (~u_input.d % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d, u_input.a, u_input.b.x), ~vec3<u32>(0u, 22871u, u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, u_input.a), vec3<u32>(1u, 0u, u_input.d)) | min(vec3<u32>(0u, 0u, 2480u), vec3<u32>(u_input.b.x, 0u, 1u))), 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yy))) - _wgslsmith_f_op_vec2_f32(-arg_0.xy)));
    var var_1 = arg_1.xx;
    var_0 = Struct_1(var_0.a, false, ~(var_0.c << (vec4<u32>(4294967295u, u_input.b.x, u_input.d, 19569u) % vec4<u32>(32u))) | (var_0.c | ~vec4<u32>(4294967295u, 1u, var_0.c.x, 4294967295u)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, var_0.d.x))), vec2<f32>(_wgslsmith_div_f32(var_0.d.x, 292f), 1758f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(213f, _wgslsmith_f_op_f32(ceil(-333f)))))));
    return select(vec4<bool>((abs(u_input.a) == 0u) != any(vec3<bool>(var_1.x, var_0.b, arg_1.x)), var_0.b, false, any(arg_1.wzw)), arg_1, !(!select(!vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(arg_1.x, var_0.b, true, arg_1.x), var_0.b)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.d.x)), -465f)));
    var var_1 = countOneBits(-55961i);
    var var_2 = arg_0;
    let var_3 = arg_0;
    let var_4 = Struct_1(-_wgslsmith_div_vec3_i32(vec3<i32>(-5266i & var_3.a.x, _wgslsmith_div_i32(-1i, -5422i), _wgslsmith_mod_i32(u_input.c.x, -2428i)), vec3<i32>(-37655i, ~1521i, firstLeadingBit(arg_0.a.x))), var_2.b, ~select(select(vec4<u32>(4294967295u, 101566u, 1u, 16802u) >> (vec4<u32>(arg_2, 11189u, arg_0.c.x, u_input.d) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(arg_1, var_3.c.x, arg_2, 4294967295u)), func_3(vec4<f32>(-339f, -1856f, arg_0.d.x, arg_0.d.x), vec4<bool>(var_2.b, var_2.b, false, var_3.b))), abs(vec4<u32>(var_3.c.x, 1323u, u_input.a, 20876u)), true), var_3.d);
    return Struct_1(vec3<i32>(_wgslsmith_mod_i32(-1i, firstTrailingBit(-var_3.a.x)), var_3.a.x, -reverseBits(_wgslsmith_div_i32(var_3.a.x, -13499i))), var_3.b, _wgslsmith_add_vec4_u32(vec4<u32>(~(~arg_1), 15982u, firstLeadingBit(~var_2.c.x), 4294967295u), arg_0.c), vec2<f32>(var_4.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.d.x, var_2.d.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = func_2(func_2(Struct_1(reverseBits(abs(arg_0.a)), true, arg_0.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, arg_0.d.x)), _wgslsmith_f_op_vec2_f32(-arg_0.d)))), u_input.a, reverseBits(~46737u)), u_input.a, ~reverseBits(u_input.b.x)).d;
    let var_1 = arg_0.b;
    let var_2 = func_2(Struct_1(select(countOneBits(arg_0.a), vec3<i32>(arg_0.a.x, 9790i, 19379i), all(vec4<bool>(false, var_1, false, arg_0.b))) ^ arg_0.a, any(select(!vec3<bool>(var_1, arg_1, var_1), vec3<bool>(true, arg_1, arg_1), true)), select(~(~arg_0.c), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(1u, u_input.a, u_input.d), ~0u, firstTrailingBit(arg_0.c.x)), false), _wgslsmith_f_op_vec2_f32(-var_0)), firstTrailingBit(16861u), u_input.a);
    var var_3 = firstTrailingBit(0i);
    var_3 = min(-(~firstTrailingBit(var_2.a.x)), _wgslsmith_sub_i32(51109i, 1i));
    return Struct_1(vec3<i32>(~_wgslsmith_add_i32(~arg_0.a.x, -2147483647i), _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(-2147483647i, var_2.a.x, var_2.a.x, 0i)), max(max(vec4<i32>(1i, arg_0.a.x, 64493i, -5223i), vec4<i32>(-24952i, 39336i, u_input.c.x, -2147483647i)), vec4<i32>(-2147483647i, arg_0.a.x, 36353i, 0i))), 1i), false, _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.c.x << (84177u % 32u), 0u, 4294967295u, ~115899u)), vec4<u32>(u_input.d, u_input.d, 4490u, 1u)), _wgslsmith_f_op_vec2_f32(min(arg_0.d, _wgslsmith_f_op_vec2_f32(var_0 - var_0))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = arg_3.c.x;
    var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~arg_3.c.xz, arg_3.c.yw), ~(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.c.x, u_input.a), ~0u)));
    var var_1 = func_4(arg_0, true);
    var_1 = func_2(Struct_1(-vec3<i32>(-1840i, -31149i, -17175i), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, arg_3.b)), vec2<bool>(true, true), func_4(Struct_1(vec3<i32>(u_input.c.x, -2147483647i, 49587i), arg_0.b, vec4<u32>(22382u, 1u, 96074u, 12776u), vec2<f32>(arg_0.d.x, var_1.d.x)), true).b)), vec4<u32>(4294967295u ^ var_1.c.x, _wgslsmith_div_u32(~arg_0.c.x, ~var_1.c.x), ~abs(u_input.d), u_input.d ^ u_input.d), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.d.x)) + _wgslsmith_f_op_f32(-var_1.d.x)))), ~func_2(arg_3, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(19524u, arg_3.c.x, 12080u), u_input.b.x << (1u % 32u)), 1u & var_1.c.x).c.x, u_input.b.x);
    var var_2 = !func_3(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.d.x * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(var_1.d.x + arg_3.d.x)), _wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(min(-1000f, 1000f)))), !vec4<bool>(true, 66330u == arg_3.c.x, var_1.b, true));
    return abs(vec3<i32>(arg_3.a.x, reverseBits(arg_0.a.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_3.a.x, 1i), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_5(func_4(func_2(Struct_1(vec3<i32>(2147483647i, -6988i, 0i), false, vec4<u32>(u_input.a, 2649u, u_input.b.x, 2272u), vec2<f32>(-1185f, 1137f)), func_1(Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), true, vec4<u32>(54818u, 0u, u_input.b.x, u_input.a), vec2<f32>(-1000f, 1000f))), 1u), true), vec2<i32>(countOneBits(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), select(u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, 0i), any(vec2<bool>(false, true)))), -vec4<i32>(-2147483647i, -17457i, 1i, func_4(Struct_1(vec3<i32>(u_input.c.x, -55652i, 2147483647i), true, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec2<f32>(-1200f, 1000f)), false).a.x), Struct_1(~countOneBits(vec3<i32>(u_input.c.x, 1i, u_input.c.x)), select(func_4(Struct_1(vec3<i32>(-1i, -1i, -1i), true, vec4<u32>(u_input.a, u_input.b.x, 90039u, 0u), vec2<f32>(-1512f, -1916f)), true).b, true, all(vec3<bool>(true, false, false))), vec4<u32>(0u, u_input.d, 4294967295u, 88685u & u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(242f * 1104f), _wgslsmith_f_op_f32(max(788f, 325f))))), !((~4294967295u <= _wgslsmith_mult_u32(u_input.a, 4294967295u)) & func_3(vec4<f32>(1000f, 1175f, 2304f, -455f), func_3(vec4<f32>(-2051f, -2194f, 126f, -691f), vec4<bool>(true, false, true, true))).x), func_2(func_4(func_4(Struct_1(vec3<i32>(u_input.c.x, 1i, u_input.c.x), false, vec4<u32>(19441u, u_input.a, u_input.a, 50522u), vec2<f32>(-276f, 724f)), true), true), u_input.d, _wgslsmith_clamp_u32(1u, ~u_input.a, 0u)).c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-2694f, -1000f), _wgslsmith_f_op_f32(-764f + -539f)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(920f, 123f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-195f, -993f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(556f, -259f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-115f, 459f), vec2<f32>(1000f, -2290f), true))))));
    var var_1 = func_2(Struct_1(_wgslsmith_div_vec3_i32(var_0.a, var_0.a), var_0.b, var_0.c, _wgslsmith_f_op_vec2_f32(-var_0.d)), func_1(func_4(Struct_1(func_2(Struct_1(var_0.a, false, vec4<u32>(u_input.b.x, 0u, 51612u, 4294967295u), var_0.d), 0u, var_0.c.x).a, true, ~var_0.c, vec2<f32>(-307f, var_0.d.x)), _wgslsmith_sub_u32(u_input.a, 4294967295u) < ~u_input.a)), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(abs(min(vec2<u32>(4294967295u, 56717u), var_0.c.yx)), var_0.c.yx | vec2<u32>(var_0.c.x, 4294967295u))));
    let var_2 = Struct_1(var_0.a, all(select(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-776f, -278f, var_1.d.x, -144f) * vec4<f32>(var_1.d.x, var_1.d.x, var_0.d.x, var_1.d.x)), vec4<bool>(false, false, false, var_0.b)).zwz, !(!vec3<bool>(var_0.b, var_1.b, var_1.b)), !var_0.b)), ~(~var_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(var_0.d, vec2<f32>(-102f, 1898f))), vec2<f32>(var_1.d.x, 631f), vec2<bool>(var_1.b, var_0.b))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.d.x, -548f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, 763f) * var_0.d), var_1.b)))));
    var_1 = var_2;
    let var_3 = true;
    var_1 = var_0;
    let var_4 = true;
    let var_5 = all(vec4<bool>((var_1.a.x >= (var_1.a.x ^ u_input.c.x)) && var_4, ~1u != func_1(Struct_1(vec3<i32>(u_input.c.x, var_2.a.x, -2147483647i), true, vec4<u32>(var_0.c.x, 1u, u_input.b.x, var_0.c.x), var_2.d)), true, select(true, any(vec2<bool>(true, var_2.b)) | func_3(vec4<f32>(var_2.d.x, var_1.d.x, var_0.d.x, var_2.d.x), vec4<bool>(var_3, var_3, false, false)).x, false)));
    let var_6 = -14372i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, ~vec4<u32>(func_2(func_2(var_0, var_1.c.x, 4294967295u), reverseBits(15856u), ~1u).c.x, u_input.b.x, ~countOneBits(var_2.c.x), 58447u));
}

