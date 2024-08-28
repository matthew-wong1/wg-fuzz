struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(0u, u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1421f, 412f, -478f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(307f, 494f, -1014f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(734f, 1247f, -725f))))), vec3<f32>(-1206f, -762f, -1286f));
    return _wgslsmith_f_op_f32(418f * _wgslsmith_f_op_f32(-var_0.d.x));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: u32) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = arg_1;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.x, var_1.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_0.b.c))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.c.x + -346f), -1021f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    var var_2 = arg_1.x;
    return Struct_2(-arg_0.a, Struct_1(4294967295u, min(max(var_0.b.b, var_0.b.b), u_input.c.x >> (_wgslsmith_div_u32(8231u, arg_2) % 32u)), _wgslsmith_f_op_vec3_f32(select(var_0.b.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1964f, 1088f))), select(true, false, 13152i <= u_input.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_0.b.d)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = u_input.c.x;
    var var_1 = func_2(arg_0, _wgslsmith_f_op_vec3_f32(-arg_0.b.c), 15012u);
    var_1 = Struct_2(vec3<i32>(~(arg_1.b | (arg_1.b & u_input.c.x)), u_input.c.x, -var_1.a.x), func_2(arg_0, arg_1.c, 4294967295u).b);
    var_1 = arg_0;
    var_0 = ~(-arg_2.b) << (_wgslsmith_add_u32(19921u, arg_0.b.a) % 32u);
    return 512f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~u_input.c.x);
    var var_1 = Struct_1(u_input.a.x, -2242i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(u_input.c, Struct_1(u_input.b.x, 49328i, vec3<f32>(1590f, 455f, -2197f), vec3<f32>(-197f, 505f, -1281f))), Struct_1(u_input.b.x, -7759i, vec3<f32>(-1997f, -763f, 280f), vec3<f32>(-1232f, 773f, 661f)), Struct_1(4799u, -14638i, vec3<f32>(846f, 202f, 404f), vec3<f32>(-531f, 194f, 902f)))), -761f, _wgslsmith_f_op_f32(max(-1347f, -304f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(114f, -467f, 451f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1396f, 1155f, 756f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-255f, _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(2382f + -320f))), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1509f))), -1905f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2221f - -1854f), _wgslsmith_f_op_f32(-805f - 1000f))) + vec3<f32>(1f, 1f, 1f)));
    var var_2 = select(_wgslsmith_div_vec4_i32(reverseBits(~vec4<i32>(u_input.c.x, -1i, 1i, 111241i)), vec4<i32>(u_input.c.x, 2929i, u_input.c.x, 19998i) ^ ~vec4<i32>(-12446i, -11300i, -21542i, -31294i)), -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 21921i, var_1.b, u_input.c.x), vec4<i32>(-46733i, -2147483647i, 2590i, u_input.c.x)), ~vec4<i32>(var_1.b, var_1.b, 0i, u_input.c.x)), true) ^ _wgslsmith_mult_vec4_i32(reverseBits(min(~vec4<i32>(53647i, u_input.c.x, u_input.c.x, 0i), -vec4<i32>(var_1.b, -5407i, 1i, -34382i))), abs(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, var_1.b), -vec4<i32>(2147483647i, var_1.b, 1i, var_1.b))));
    var_1 = Struct_1(select(60754u, ~countOneBits(func_2(Struct_2(vec3<i32>(u_input.c.x, var_2.x, 2147483647i), Struct_1(var_1.a, -2147483647i, var_1.d, vec3<f32>(var_1.c.x, 1066f, 656f))), var_1.d, u_input.b.x).b.a), all(vec2<bool>(false, true))), ~(~(0i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2539f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_2(var_2.www, Struct_1(u_input.b.x, -19995i, vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x), var_1.d)), Struct_1(42472u, u_input.c.x, var_1.d, vec3<f32>(var_1.d.x, var_1.c.x, 586f)), Struct_1(u_input.b.x, 1i, var_1.d, vec3<f32>(var_1.c.x, -124f, var_1.c.x)))), var_1.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(var_1.d.x * 609f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c) * vec3<f32>(-519f, -235f, var_1.c.x))))));
    var_2 = select(firstLeadingBit(-(~select(vec4<i32>(var_1.b, u_input.c.x, var_2.x, -6896i), vec4<i32>(var_1.b, -20803i, 1i, -36976i), false))), min(vec4<i32>(6615i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, 2147483647i, 2147483647i, var_1.b), vec4<i32>(var_1.b, 0i, -14233i, -58351i)), abs(var_2.x)) ^ select(-vec4<i32>(49569i, var_2.x, var_2.x, var_2.x), vec4<i32>(0i, var_2.x, -1i, 1i) ^ vec4<i32>(u_input.c.x, var_1.b, var_1.b, var_1.b), u_input.a.x == 9053u), vec4<i32>(-9559i, ~select(4929i, 0i, false), firstLeadingBit(-1i), -2147483647i)), !all(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)));
    var_1 = func_2(Struct_2(vec3<i32>(~_wgslsmith_mod_i32(-2147483647i, -1i), ~1i, _wgslsmith_div_i32(26235i, ~0i)), Struct_1(_wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b), u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.d - vec3<f32>(var_1.c.x, var_1.c.x, 365f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(557f, var_1.d.x, var_1.d.x))), _wgslsmith_f_op_vec3_f32(func_2(Struct_2(vec3<i32>(var_1.b, u_input.c.x, var_1.b), Struct_1(4294967295u, -3957i, var_1.c, var_1.c)), var_1.c, 35122u).b.d - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, var_1.c.x, 923f) + var_1.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(var_1.c)), var_1.d, any(vec3<bool>(true, true, false)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.d)))) - vec3<f32>(_wgslsmith_f_op_f32(-1737f + var_1.d.x), -126f, var_1.d.x)), u_input.b.x).b;
    var var_3 = var_1.d;
    var_0 = i32(-1i) * -9888i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(vec4<i32>(-var_1.b, ~1i, abs(37348i), var_2.x), ~max(vec4<i32>(-2147483647i, var_1.b, 0i, var_2.x), vec4<i32>(var_2.x, u_input.c.x, var_1.b, -8467i))), 34524u, max(~var_1.a ^ var_1.a, 43473u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.d.x)))) - -574f));
}

