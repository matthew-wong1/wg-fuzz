struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(385f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-609f)))), _wgslsmith_f_op_f32(trunc(-2047f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1778f, 557f, 598f)))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1268f, 1000f, 1311f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(622f, var_0.x, 396f, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -1626f)))))));
    let var_2 = !select(select(vec3<bool>(true, select(false, false, true), all(vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), any(vec2<bool>(true, true))), true);
    let var_3 = _wgslsmith_f_op_f32(1524f - _wgslsmith_f_op_f32(floor(491f)));
    var var_4 = vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x);
    return u_input.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<u32>) -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(268f + -700f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_1.d))))), firstLeadingBit(~0u), ~0u, arg_1.a), -(i32(-1i) * -_wgslsmith_mult_i32(u_input.a.x, -2147483647i)), func_3(), arg_0.wy, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1189f, 887f, -1460f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(879f, -737f, arg_1.a)))), arg_1, arg_1, u_input.a.x, ~_wgslsmith_mult_u32(~30587u, arg_3.x)));
    var var_1 = Struct_3(var_0.e.c, -1i, reverseBits(_wgslsmith_clamp_vec4_i32(~min(vec4<i32>(-50537i, 1i, u_input.a.x, -2147483647i), u_input.a), -countOneBits(vec4<i32>(u_input.a.x, -31866i, u_input.a.x, u_input.a.x)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.x, u_input.a.x, 1i, var_0.c.x), vec4<i32>(0i, 1i, 6552i, var_0.b)))), vec2<bool>(var_0.d.x, true), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a * var_0.a.a), 1512f, _wgslsmith_f_op_f32(-1399f * -894f)) + var_0.e.a), var_0.e.b, arg_1, 51667i, abs(~arg_1.c)));
    var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(var_1.a.d)), ~(var_0.a.b << (arg_3.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(select(var_1.e.e, 4294967295u, false), arg_3.x << (8238u % 32u), var_0.a.c), ~vec3<u32>(var_0.a.c, arg_3.x, 14616u) << (~vec3<u32>(9527u, arg_1.c, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -996f) + -1447f))), var_1.c.x >> (~var_0.a.b % 32u), min(countOneBits(vec4<i32>(-2147483647i, 0i, var_0.b, -19774i) << (vec4<u32>(64391u, arg_1.b, 81286u, var_0.e.c.b) % vec4<u32>(32u))), var_0.c >> (~vec4<u32>(4294967295u, 1u, arg_1.b, 28315u) % vec4<u32>(32u))) << (vec4<u32>(4294967295u, ~arg_1.b, 38777u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(19166u, 0u, var_0.e.c.c, 129186u), vec4<u32>(arg_1.c, var_0.a.b, var_1.e.e, var_0.e.c.c)))) % vec4<u32>(32u)), select(!vec2<bool>(false | arg_0.x, var_1.d.x), select(vec2<bool>(any(vec4<bool>(arg_2, arg_0.x, arg_0.x, arg_0.x)), false), vec2<bool>(!arg_0.x, !var_0.d.x), arg_0.xx), true), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.e.a + var_1.e.a)), vec3<f32>(_wgslsmith_f_op_f32(select(-285f, -166f, true)), _wgslsmith_div_f32(var_0.a.a, 648f), _wgslsmith_div_f32(-797f, -1000f)), arg_0.zxz)), Struct_1(_wgslsmith_f_op_f32(arg_1.a + -373f), _wgslsmith_clamp_u32(reverseBits(24538u), var_1.e.b.b, arg_3.x), _wgslsmith_mod_u32(~7244u, 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1139f - -1147f), _wgslsmith_f_op_f32(-var_1.a.a))), Struct_1(_wgslsmith_f_op_f32(floor(var_1.e.a.x)), 0u, ~(~var_1.a.c), _wgslsmith_f_op_f32(-226f + 1281f)), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-u_input.a.x, -36078i, _wgslsmith_div_i32(u_input.a.x, var_1.e.d), u_input.a.x ^ var_0.e.d)), _wgslsmith_dot_vec4_u32(vec4<u32>(~49572u, _wgslsmith_mult_u32(11712u, arg_1.b), _wgslsmith_add_u32(79733u, var_0.a.b), ~0u), _wgslsmith_mult_vec4_u32(min(vec4<u32>(var_0.e.e, 4294967295u, var_0.e.e, arg_1.c), vec4<u32>(4294967295u, arg_1.b, var_0.a.b, arg_1.c)), vec4<u32>(var_0.a.c, 49561u, var_1.a.b, var_1.a.b)))));
    let var_2 = -2147483647i;
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.e.b.a)))), ~_wgslsmith_dot_vec2_u32(~arg_3, ~vec2<u32>(1u, 3587u)), var_0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.b.d)) * -1201f)), select(~(_wgslsmith_mult_i32(u_input.a.x, 5203i) & _wgslsmith_mult_i32(var_1.c.x, var_1.e.d)), 3954i, any(!var_0.d)), u_input.a, select(vec2<bool>(all(!vec2<bool>(var_0.d.x, false)), _wgslsmith_f_op_f32(-1199f - var_0.a.a) < _wgslsmith_f_op_f32(-arg_1.d)), vec2<bool>(var_1.d.x, any(arg_0.wyy)), vec2<bool>(all(arg_0), !any(vec2<bool>(true, var_1.d.x)))), var_0.e);
    return select(select(!arg_0, select(arg_0, arg_0, !arg_2), vec4<bool>(all(vec4<bool>(true, arg_0.x, arg_2, false)), all(vec2<bool>(true, var_1.d.x)), true, var_0.d.x)), !vec4<bool>(663f <= _wgslsmith_f_op_f32(trunc(var_1.e.b.d)), var_1.d.x, _wgslsmith_f_op_f32(abs(404f)) == arg_1.d, arg_2), -1310f > var_0.a.d);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    let var_0 = func_2(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.x)) * _wgslsmith_f_op_f32(arg_3.x - 1349f)) > _wgslsmith_f_op_f32(round(-525f)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)))), true, true), arg_2, (true == (select(true, false, true) | true)) == false, vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 4294967295u, 4294967295u), reverseBits(vec3<u32>(4294967295u, 127690u, arg_2.c))), 73120u));
    var var_1 = ~(arg_2.b >> (~max(89622u, 13510u) % 32u));
    var_1 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1082u, arg_2.b), vec2<u32>(1u, 1u)), vec2<u32>(arg_2.b, 34312u) & vec2<u32>(arg_2.c, 0u)), arg_1) | _wgslsmith_mult_u32(countOneBits(_wgslsmith_sub_u32(~0u, arg_1)), 12609u);
    var var_2 = arg_2.a;
    let var_3 = vec4<u32>(arg_1, ~arg_2.c, arg_2.c, _wgslsmith_clamp_u32((~43942u & arg_2.c) ^ ~(~1u), 4294967295u, 30035u));
    return arg_2.c >> ((~abs(var_3.x ^ 37303u) >> (4294967295u % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~(~25113u), _wgslsmith_mult_u32(func_1(vec4<i32>(1i, u_input.a.x, 1i, u_input.a.x), 124370u, Struct_1(1978f, 1u, 0u, 402f), vec2<f32>(283f, 1505f)), 1u), abs(~18064u)), vec3<u32>(min(1u, _wgslsmith_div_u32(33603u, 7513u)), ~1u, 13619u)), ~reverseBits(~firstTrailingBit(vec3<u32>(5650u, 4294967295u, 8181u))));
    var_0 = vec3<u32>(var_0.x, abs(~1u) & var_0.x, firstLeadingBit(122638u)) >> (~vec3<u32>(var_0.x, ~4294967295u, 1u << (var_0.x % 32u)) % vec3<u32>(32u));
    var var_1 = firstLeadingBit(i32(-1i) * -28993i);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-724f, -661f, -1055f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(434f, 1113f, 175f) - vec3<f32>(-1080f, 176f, -361f)))))), Struct_1(-491f, _wgslsmith_clamp_u32(var_0.x, 0u, ~var_0.x), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-540f, -159f) - _wgslsmith_f_op_f32(abs(939f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-265f * -472f) * _wgslsmith_f_op_f32(floor(558f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(138f * -1080f)))), 0u, countOneBits(1u), -200f), u_input.a.x, _wgslsmith_mod_u32(10454u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, var_0.x), vec4<u32>(1u, 32303u, 15812u, 18322u)), select(vec4<u32>(var_0.x, var_0.x, 23008u, var_0.x), vec4<u32>(27827u, 40148u, 9739u, 4294967295u), vec4<bool>(true, true, true, false)))) | ~(~100878u >> (1u % 32u)));
    let var_3 = !all(vec4<bool>(true, true, _wgslsmith_f_op_f32(-var_2.c.a) < _wgslsmith_div_f32(619f, -1232f), _wgslsmith_f_op_f32(select(var_2.c.a, -362f, true)) < var_2.c.d));
    var_0 = _wgslsmith_clamp_vec3_u32(select(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_2.c.c, var_2.b.b, var_0.x)), vec3<u32>(var_0.x, 18598u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 0u), vec3<u32>(var_2.e, var_2.e, var_0.x)))), ~reverseBits(countOneBits(vec3<u32>(70988u, 38762u, var_2.b.c))), all(func_2(!vec4<bool>(true, false, var_3, false), var_2.c, select(var_3, var_3, var_3), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0.xy, vec2<u32>(12689u, 1u))).yy)), firstLeadingBit(~_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(var_2.c.b, var_2.b.b, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(131002u, var_2.c.c, 47371u), vec3<u32>(var_0.x, 1u, var_2.e)), firstLeadingBit(vec3<u32>(13550u, 0u, var_2.b.c)))), _wgslsmith_div_vec3_u32(~vec3<u32>(32602u, 48188u, 89279u) & vec3<u32>(_wgslsmith_div_u32(4294967295u, var_0.x), ~var_0.x, 43611u), vec3<u32>(abs(func_1(u_input.a, 10421u, var_2.c, var_2.a.zx)), firstLeadingBit(reverseBits(0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(var_2.c.b, 0u) >> (vec2<u32>(var_0.x, 0u) % vec2<u32>(32u))))));
    var_0 = _wgslsmith_mod_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_2.c.b, 0u) & firstLeadingBit(vec3<u32>(1u, 1u, 21906u)), abs(abs(vec3<u32>(var_2.e, var_0.x, var_2.b.b)))), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), reverseBits(vec3<u32>(var_2.b.c, 41369u, 0u)))), !(!var_3)), firstLeadingBit(countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.b.b, var_0.x, var_2.e), vec3<u32>(0u, var_2.b.c, 1u)), abs(vec3<u32>(35236u, 0u, var_2.b.b)), ~vec3<u32>(var_0.x, var_2.e, 62253u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(var_0.x, var_0.x, 1u, 5730u)), _wgslsmith_add_vec4_u32(max(vec4<u32>(var_2.e, var_0.x, 1u, var_2.b.c), vec4<u32>(var_0.x, var_2.c.b, 40635u, var_2.e)) << (~vec4<u32>(0u, var_0.x, 0u, 1u) % vec4<u32>(32u)), ~(vec4<u32>(var_0.x, 124509u, var_2.c.b, var_2.e) >> (vec4<u32>(var_0.x, var_2.c.b, 1u, var_2.c.b) % vec4<u32>(32u))))), var_2.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(870f, var_2.a.x, var_2.c.a, var_2.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-547f, var_2.a.x, var_2.b.a, var_2.b.d) + vec4<f32>(var_2.a.x, var_2.c.d, var_2.c.d, var_2.a.x)), true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.a, -272f, var_2.a.x, var_2.b.d) - vec4<f32>(var_2.a.x, var_2.b.a, 719f, var_2.c.d)) + vec4<f32>(var_2.a.x, 1253f, 436f, -1000f)))))));
}

