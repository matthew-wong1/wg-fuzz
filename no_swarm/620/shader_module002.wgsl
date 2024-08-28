struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) * _wgslsmith_f_op_f32(482f + _wgslsmith_f_op_f32(-245f - 920f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-751f, 176f))))));
    var var_1 = Struct_2(Struct_1(vec4<i32>(-86380i, _wgslsmith_div_i32(u_input.b.x, 24117i >> (1u % 32u)), 24495i, _wgslsmith_add_i32(0i, u_input.c.x)), false), vec4<bool>(false, true, abs(_wgslsmith_mod_i32(-51158i, u_input.c.x)) == _wgslsmith_sub_i32(-12027i >> (u_input.a % 32u), reverseBits(u_input.c.x)), true | select(true, true, u_input.c.x != u_input.c.x)));
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 * var_0), var_0)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(floor(472f))))), -769f, 656f), Struct_2(Struct_1(vec4<i32>(u_input.c.x, var_1.a.a.x, u_input.c.x, -2147483647i) >> (~vec4<u32>(4294967295u, 1u, 0u, 1u) % vec4<u32>(32u)), var_1.b.x), var_1.b), vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), ~(var_1.a.a.x ^ u_input.c.x), -select(-10411i, u_input.c.x, any(vec2<bool>(var_1.a.b, var_1.a.b)))), 0u);
    var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(var_2.a)), Struct_2(Struct_1(var_2.b.a.a, var_1.b.x), select(!(!vec4<bool>(var_2.b.b.x, true, true, var_2.b.b.x)), var_1.b, vec4<bool>(var_2.b.b.x, select(false, false, true), all(var_1.b.xx), true))), reverseBits(vec4<i32>(min(1i, 1i), firstTrailingBit(64568i), ~u_input.b.x ^ -37002i, _wgslsmith_div_i32(u_input.b.x, ~u_input.c.x))), max(~(~0u), firstTrailingBit(u_input.a)));
    let var_3 = (~(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.d, u_input.a, u_input.a, var_2.d), vec4<u32>(4294967295u, 1u, var_2.d, 4294967295u)) | ~vec4<u32>(u_input.a, var_2.d, 4294967295u, u_input.a)) >> (vec4<u32>(9888u, ~u_input.a, 1u, var_2.d) % vec4<u32>(32u))) | (~_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(var_2.d, 45421u, 4294967295u, var_2.d)), ~vec4<u32>(0u, 40908u, 4294967295u, u_input.a)) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(79617u, 24862u, u_input.a, var_2.d) << (firstLeadingBit(vec4<u32>(23423u, 9604u, var_2.d, var_2.d)) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.a)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, 6934u, var_2.d), vec4<u32>(30972u, 4294967295u, 4294967295u, var_2.d))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(551f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(351f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-808f * var_2.a.x), var_2.a.x), var_0)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a + var_2.a) + _wgslsmith_f_op_vec4_f32(sign(var_2.a))))))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(func_3()), Struct_2(Struct_1(arg_0.a, !(arg_0.b | arg_0.b)), select(!vec4<bool>(false, false, arg_0.b, arg_0.b), vec4<bool>(all(vec4<bool>(true, true, arg_0.b, false)), false, arg_0.b && arg_0.b, !arg_0.b), select(vec4<bool>(arg_0.b, true, arg_0.b, false), select(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(false, false, true, arg_0.b), vec4<bool>(true, false, true, true)), arg_0.b))), arg_0.a, u_input.a);
    var var_1 = var_0.b.b.wwx;
    var var_2 = !vec4<bool>(all(!select(vec3<bool>(var_1.x, false, false), vec3<bool>(true, false, var_1.x), var_0.b.b.zyz)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x)) >= -792f, false, true);
    let var_3 = !var_2.x;
    var var_4 = Struct_4(abs(~firstTrailingBit(~4294967295u)), Struct_2(var_0.b.a, vec4<bool>(any(var_2.zyz) & (var_0.b.a.a.x >= var_0.c.x), true, false, -1i <= firstLeadingBit(arg_0.a.x))), var_0.a.x, firstLeadingBit(_wgslsmith_mult_u32(var_0.d, select(1u, 1u, arg_0.b))), var_0);
    return Struct_4(u_input.a, Struct_2(var_0.b.a, var_4.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x + var_4.e.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1543f)))) * 567f), 4294967295u, Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x * var_4.c), _wgslsmith_f_op_f32(-var_4.e.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(217f, var_4.e.a.x, -1787f, 1000f))), _wgslsmith_f_op_vec4_f32(min(var_4.e.a, vec4<f32>(-814f, 961f, 1175f, arg_1))), select(var_4.e.b.b, var_4.e.b.b, var_0.b.b)))), var_0.b, vec4<i32>(-1i) * -(~var_4.b.a.a), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~var_4.d, ~var_0.d, u_input.d.x), var_4.e.d)));
}

fn func_4(arg_0: Struct_4) -> u32 {
    let var_0 = func_2(func_2(arg_0.e.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.a.x)))).b.a, _wgslsmith_f_op_f32(f32(-1f) * -711f)).b.a;
    let var_1 = reverseBits(1i);
    var var_2 = true;
    var var_3 = vec4<i32>(arg_0.e.b.a.a.x | firstTrailingBit(0i), _wgslsmith_mult_i32(-30338i, abs(15179i)), _wgslsmith_sub_i32(min(abs(min(var_0.a.x, u_input.b.x)), -1867i), arg_0.e.b.a.a.x), u_input.c.x);
    var var_4 = _wgslsmith_sub_u32(48644u, u_input.d.x | min(u_input.d.x, u_input.d.x));
    return ~u_input.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_mult_u32(arg_1, _wgslsmith_div_u32(13543u, func_4(func_2(Struct_1(vec4<i32>(u_input.c.x, u_input.b.x, -1631i, u_input.c.x), arg_2.x), -2631f)))) < u_input.d.x;
    var var_1 = func_2(Struct_1(vec4<i32>(u_input.c.x, 0i, 0i, -(u_input.b.x >> (10567u % 32u))), !any(func_2(Struct_1(vec4<i32>(28591i, -1i, -2147483647i, 0i), false), -1538f).e.b.b.wy)), 806f);
    var var_2 = Struct_4(_wgslsmith_sub_u32(~(~(~arg_1)), _wgslsmith_mod_u32(27031u, ~(u_input.a << (16610u % 32u)))), var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-269f + var_1.c) * _wgslsmith_f_op_f32(ceil(-1313f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * var_1.c) * var_1.e.a.x)), max(17473u, u_input.a), func_2(func_2(var_1.b.a, _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(-var_1.c))).b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.a.x + _wgslsmith_f_op_f32(var_1.e.a.x - var_1.c)))).e);
    var_1 = func_2(var_2.b.a, 936f);
    var_1 = func_2(func_2(var_1.b.a, var_2.c).b.a, _wgslsmith_div_f32(var_2.c, -225f));
    return 6552u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.a, 7119u, _wgslsmith_mod_u32(func_1(vec3<bool>(true, true, true), 0u, vec4<bool>(u_input.b.x == -2147483647i, true, true, true)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), u_input.a)), 4294967295u);
    var var_1 = Struct_1(vec4<i32>(reverseBits(1i), 1i, u_input.c.x, firstTrailingBit(~reverseBits(0i))), any(vec3<bool>(!all(vec4<bool>(true, false, false, false)), !select(true, true, true), false)));
    var_1 = func_2(Struct_1(max(_wgslsmith_div_vec4_i32(var_1.a, var_1.a) >> (vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.d.x) % vec4<u32>(32u)), -var_1.a), var_1.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1122f, -1008f, false))))).e.b.a;
    var var_2 = func_2(Struct_1(func_2(Struct_1(~var_1.a, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1168f) * -413f)).e.c, ~(~var_0.x) >= ~46137u), -1459f).e;
    var_1 = Struct_1(reverseBits(max(~_wgslsmith_add_vec4_i32(var_1.a, vec4<i32>(-1i, -14136i, 0i, var_2.c.x)), abs(vec4<i32>(2147483647i, -25596i, var_1.a.x, var_1.a.x)) ^ -var_1.a)), var_1.b);
    var_2 = func_2(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(7872i, max(-38846i, 2147483647i), var_2.b.a.a.x & u_input.c.x, var_2.b.a.a.x), var_1.a), var_2.b.b.x), var_2.a.x).e;
    var var_3 = abs(~(~var_0.zzz));
    var_2 = func_2(var_2.b.a, func_2(Struct_1(vec4<i32>(abs(var_2.c.x), -var_2.c.x, 0i, firstTrailingBit(-1i)), select(true, all(vec3<bool>(false, var_1.b, false)), var_2.d > var_2.d)), _wgslsmith_f_op_f32(max(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + 308f)))).e.a.x).e;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a);
}

