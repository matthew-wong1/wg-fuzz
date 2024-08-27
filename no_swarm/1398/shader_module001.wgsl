struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = ~max(~(vec4<i32>(-1i, arg_0, -1i, arg_0) >> (_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, u_input.b.x, 0u, u_input.b.x)) % vec4<u32>(32u))), reverseBits(reverseBits(vec4<i32>(1i, arg_0, arg_0, arg_0))));
    let var_1 = ~(53151u << (abs(arg_1.a) % 32u));
    return -958f;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 133f, arg_0.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-1478f + arg_0.x))) - _wgslsmith_f_op_f32(max(835f, 2801f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-83728i, Struct_2(4294967295u, vec4<bool>(arg_3, arg_3, true, false), 43047u))), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-610f, 735f, 534f, -563f))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 874f, -2778f, -1528f), vec4<f32>(var_0.x, arg_0.x, 956f, arg_0.x))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, var_0.x, 136f, 568f))))))), _wgslsmith_f_op_vec2_f32(var_0.yz + vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2151f + -803f) - _wgslsmith_div_f32(arg_0.x, 313f)))), (arg_3 || false) & true, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, 1i), _wgslsmith_add_i32(1i, 7517i), firstTrailingBit(reverseBits(-21482i))), vec3<i32>(2147483647i << (min(arg_2, arg_1) % 32u), 1i, _wgslsmith_mod_i32(38388i, -2147483647i))), 1i);
    let var_2 = Struct_3(countOneBits(~(~(~34426u))), ~abs(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, var_1.d) << (u_input.b.xw % vec2<u32>(32u)), vec2<i32>(0i, var_1.d) ^ vec2<i32>(var_1.e, -2147483647i))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + _wgslsmith_f_op_f32(-614f - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(986f - 544f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1217f))), vec2<f32>(-1437f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(892f, -247f)), _wgslsmith_f_op_f32(f32(-1f) * -686f)))), !var_1.c, _wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(var_1.d, var_1.e)), reverseBits(vec2<i32>(-1i, 2219i))), var_1.d));
    var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(808f, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -859f)), -1489f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1116f - var_0.x))), _wgslsmith_f_op_f32(118f + -1251f)), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-var_1.a.x)), any(!(!(!vec3<bool>(var_2.c.c, false, var_1.c)))), abs(var_2.c.e & 27173i), -19603i | (_wgslsmith_sub_i32(39673i, 1i) << ((~arg_1 ^ firstLeadingBit(var_2.a)) % 32u)));
    let var_3 = _wgslsmith_f_op_f32(440f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))));
    return _wgslsmith_add_u32(max(select(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(15110u, arg_2, arg_2, 33584u), vec4<u32>(0u, arg_2, 17871u, 1u))), arg_2, true), arg_2 | ~4294967295u), ~var_2.a);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> f32 {
    var var_0 = arg_1.x;
    let var_1 = ~4294967295u;
    var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(arg_1.x, abs(arg_1.x) >> (func_2(vec2<f32>(arg_0, arg_0), var_1, 1u, false) % 32u)), _wgslsmith_add_i32(8922i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, 25811i, arg_1.x), vec4<i32>(-42787i, arg_1.x, arg_1.x, arg_1.x)))) << (_wgslsmith_div_u32(u_input.a.x, u_input.b.x) % 32u);
    let var_2 = Struct_2(1468u, vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, var_1), vec2<u32>(1u, var_1)));
    var_0 = 1i;
    return _wgslsmith_f_op_f32(arg_0 + arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-707f, -520f, -636f, -1232f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-607f, -1000f, 591f, -982f) - vec4<f32>(-853f, 169f, 510f, 658f))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -869f), 1874f), 1326f, _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(490f + -580f) * _wgslsmith_f_op_f32(1445f + -241f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(-740f, vec3<i32>(-21722i, -2147483647i, -7023i)))))), _wgslsmith_f_op_f32(floor(-1096f)), 1007f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(sign(596f)), any(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_f32(417f + -1000f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(func_1(var_0.x, vec3<i32>(22403i, 40491i, 62030i))), var_0.x, -1513f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), var_0.xx, !select(vec2<bool>(false, false), vec2<bool>(true, false), false))) * var_0.zx), any(vec4<bool>(all(vec3<bool>(true, true, true)), !(-578f == var_0.x), select(true, any(vec2<bool>(true, true)), true), u_input.a.x >= func_2(vec2<f32>(var_0.x, -239f), u_input.a.x, u_input.a.x, false))), 2147483647i, -(9770i & _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(13670i, 1i, -48030i, 0i), vec4<i32>(-24182i, -1i, -69637i, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 15277i, 2147483647i, 24317i), vec4<i32>(-2147483647i, 38051i, 7853i, 0i)))));
    let var_2 = ~_wgslsmith_add_vec2_u32(u_input.a.xz, firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b.x) << (u_input.a.yy % vec2<u32>(32u)), vec2<u32>(0u, u_input.b.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_0.xz);
    var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(174f, var_3.x, -1000f, -768f)));
    var var_4 = Struct_2(28782u, vec4<bool>(var_1.c, true, false, true), var_2.x);
    var_4 = Struct_2(~var_4.c, !var_4.b, _wgslsmith_div_u32(var_2.x, var_2.x));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(min(min(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.e, -367i, -14812i, -33446i), vec4<i32>(var_1.d, var_1.e, 1i, var_1.d), vec4<i32>(14940i, -38016i, 49587i, var_1.d))), -(~vec4<i32>(var_1.e, var_1.d, var_1.e, 0i))), -((vec4<i32>(-1i, 6475i, -229i, var_1.e) & vec4<i32>(var_1.e, var_1.d, 29736i, var_1.d)) & ~vec4<i32>(2147483647i, var_1.e, var_1.d, -1i))), 555f, var_1.e, -11417i);
}

