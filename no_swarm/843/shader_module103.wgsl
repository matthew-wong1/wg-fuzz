struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    let var_0 = vec2<u32>(arg_0.x >> (arg_3.x % 32u), firstTrailingBit(1u));
    let var_1 = arg_1.xx;
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, 951f))) * vec4<f32>(arg_2.a.x, 617f, arg_2.a.x, arg_2.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1125f, arg_2.a.x, -688f, arg_2.a.x))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1193f), arg_2.a.x, arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(284f, _wgslsmith_f_op_f32(1197f + 945f))) - _wgslsmith_div_f32(-564f, _wgslsmith_f_op_f32(-809f * arg_2.a.x))))));
    var var_3 = false;
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-425f, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(abs(446f)), _wgslsmith_f_op_f32(round(var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1224f, 1103f, 653f, var_2.x), vec4<f32>(arg_2.a.x, arg_2.a.x, var_2.x, 1229f), true)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.x, var_2.x, -1354f, arg_2.a.x), vec4<f32>(1121f, -1062f, -854f, -1000f), vec4<bool>(false, false, true, true))))))));
    return ~63675u;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1443f, _wgslsmith_f_op_f32(sign(-925f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(887f, 871f)) - _wgslsmith_f_op_f32(min(-606f, -1256f)))), _wgslsmith_f_op_f32(min(-426f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(861f * -1000f) - _wgslsmith_div_f32(-428f, 246f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(219f, -1044f, false))))), u_input.b, ~(~vec3<u32>(~44016u, func_3(vec3<u32>(47063u, 1u, 85922u), vec4<i32>(2934i, 10927i, u_input.c.x, -1784i), Struct_1(vec3<f32>(506f, -786f, -263f), vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), vec3<u32>(1u, 0u, 4294967295u), vec4<i32>(7002i, -30332i, u_input.a, 1i)), vec2<u32>(4294967295u, 49099u)), 1u)), abs(vec4<i32>(-1i, ~(-2147483647i), u_input.c.x, 0i | _wgslsmith_add_i32(-65531i, u_input.c.x))));
    var var_1 = u_input.b;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)) * var_0.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))) * _wgslsmith_f_op_vec3_f32(-var_0.a)), -var_0.b, _wgslsmith_mod_vec3_u32(select(var_0.c, ~vec3<u32>(53039u, var_0.c.x, 4294967295u), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)))), vec3<u32>(var_0.c.x, _wgslsmith_sub_u32(var_0.c.x, var_0.c.x | var_0.c.x), abs(var_0.c.x))), vec4<i32>(var_0.d.x, _wgslsmith_add_i32(var_1.x, ~(var_1.x >> (var_0.c.x % 32u))), -2147483647i, ~_wgslsmith_dot_vec2_i32(max(u_input.b.zz, var_0.b.xy), -u_input.b.yx)));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1213f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) * _wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(-790f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x)))))));
    var var_3 = any(vec4<bool>(any(vec2<bool>(true, true)), var_0.c.x <= var_0.c.x, true, true)) && true;
    return Struct_2(2147483647i, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1802f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, any(vec4<bool>(true, false, true, false)))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = any(!select(vec4<bool>(var_0.b, var_0.b, !var_0.b, false & var_0.b), !vec4<bool>(var_0.b, var_0.b, false, var_0.b), any(!vec2<bool>(false, var_0.b))));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.c) * vec2<f32>(-1190f, 322f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1094f)))))))));
    var var_3 = select(vec3<bool>(false, true, var_0.b), vec3<bool>(true, var_0.b, !func_2().b), var_0.b);
    var_1 = abs(max(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 9543u), vec2<u32>(4294967295u, 0u))) | 51210u) <= 4294967295u;
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1152f, arg_1, -1368f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-427f, 245f, arg_1)))))), u_input.b, _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(14485u, 18158u, 0u)), abs(vec3<u32>(34689u, 0u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 17413u), ~vec3<u32>(0u, 41525u, 0u))), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)), select(vec3<u32>(0u >> (0u % 32u), ~21546u, _wgslsmith_dot_vec4_u32(vec4<u32>(8797u, 0u, 51786u, 2225u), vec4<u32>(1u, 22763u, 4294967295u, 0u))), select(vec3<u32>(40319u, 4294967295u, 8265u), vec3<u32>(2494u, 48802u, 73119u), vec3<bool>(var_0.b, var_3.x, var_0.b)) << (~vec3<u32>(1u, 0u, 4294967295u) % vec3<u32>(32u)), vec3<bool>(true, true, var_3.x))), arg_0);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = u_input.b.x;
    var var_1 = select(!select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), vec3<bool>(all(vec2<bool>(true, false)), !(!(-1284f < arg_2)), !func_2().b), true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1531f - 850f)))));
    var var_3 = u_input.a;
    var_3 = 1203i;
    return _wgslsmith_clamp_u32(arg_1.c.x, ~arg_1.c.x, arg_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1353f), _wgslsmith_f_op_f32(round(-303f)), _wgslsmith_f_op_f32(-460f * 1000f)), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-896f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_f32(f32(-1f) * -429f)))), u_input.b, vec3<u32>(_wgslsmith_mod_u32(28124u, ~1u) & func_4(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-993f, 161f))), func_1(vec4<i32>(1i, 1i, -11101i, u_input.a), 2218f), -2048f), max(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 69118u, 4294967295u, 0u), vec4<u32>(92601u, 0u, 50842u, 0u)), min(0u, 11198u)), func_3(vec3<u32>(1u, 1u, 1u), ~(-vec4<i32>(u_input.c.x, u_input.b.x, u_input.a, u_input.a)), Struct_1(vec3<f32>(1000f, 1035f, -1128f), -u_input.b, vec3<u32>(1u, 1u, 1u), ~vec4<i32>(34802i, u_input.a, u_input.b.x, 29239i)), firstLeadingBit(~vec2<u32>(1u, 23932u)))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.c.x, u_input.a) >> (vec4<u32>(4294967295u, 0u, 35460u, 11735u) % vec4<u32>(32u)), reverseBits(vec4<i32>(0i, 1i, u_input.b.x, 8738i))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.b.x, 2147483647i), vec4<i32>(17518i, 36996i, u_input.c.x, -15324i)) ^ vec4<i32>(-2147483647i, -2425i, -1i, u_input.a), vec4<i32>(select(u_input.a, 1i, false), -u_input.c.x, 10873i & u_input.a, 12763i)), -(~vec4<i32>(u_input.c.x, 17914i, -2147483647i, u_input.b.x))));
    var var_1 = func_1(~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~var_0.d, vec4<i32>(var_0.b.x, var_0.d.x, 2147483647i, -19949i)), firstLeadingBit(firstTrailingBit(var_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1306f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-568f, var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x + 637f)))));
    let var_2 = select(vec2<bool>(true, true), vec2<bool>(true, true), select(!vec2<bool>(select(false, false, true), true), vec2<bool>(any(vec4<bool>(false, false, true, true)), true), true));
    var var_3 = firstLeadingBit(var_1.b.x);
    var var_4 = var_0.c.xy;
    var_0 = func_1(firstLeadingBit(vec4<i32>(i32(-1i) * -75306i, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.d.x, -2147483647i, 5898i), ~var_1.d.yyw), var_0.d.x, func_1(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, -58060i, var_0.b.x), var_1.d), _wgslsmith_f_op_f32(var_0.a.x * 694f)).d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-2656f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * var_0.a.x))))));
    let var_5 = var_1.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(var_0.c.x, 52950u, var_0.c.x, var_4.x)), ~(~(vec4<u32>(var_1.c.x, var_4.x, var_4.x, var_1.c.x) ^ vec4<u32>(4294967295u, var_4.x, var_4.x, var_0.c.x)))), var_0.b.x, -2147483647i, i32(-1i) * -12615i);
}

