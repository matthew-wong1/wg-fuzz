struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    let var_0 = select(vec4<bool>(true, arg_3, ~(~u_input.a) > select(~59038u, 17179u, arg_3 & arg_3), true), select(vec4<bool>(all(vec4<bool>(true, arg_3, arg_3, arg_3)) || (u_input.c >= 69653u), arg_3, arg_3 && any(vec4<bool>(false, true, true, true)), false), !select(vec4<bool>(true, true, false, true), vec4<bool>(arg_3, arg_3, false, arg_3), vec4<bool>(arg_3, arg_3, false, arg_3)), select(!select(vec4<bool>(true, true, arg_3, arg_3), vec4<bool>(arg_3, arg_3, true, arg_3), vec4<bool>(false, true, false, true)), select(!vec4<bool>(arg_3, arg_3, false, true), !vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(arg_3, arg_3, arg_3, true)), any(vec2<bool>(false, arg_3)))), select(vec4<bool>((6564u & u_input.c) <= u_input.a, arg_3, true, true), !select(select(vec4<bool>(true, arg_3, true, false), vec4<bool>(false, false, arg_3, false), arg_3), vec4<bool>(arg_3, arg_3, arg_3, arg_3), arg_3), true));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0, 613f, var_0.x))))), _wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(sign(arg_2.x))))), arg_2.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -859f), 215f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1077f - _wgslsmith_f_op_f32(arg_0 - arg_2.x)))), -230f));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -129f, var_1.x, 179f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, -1291f, arg_0, -1000f)))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(arg_2.x - arg_0), _wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(-var_1.x), 855f)))));
    var var_2 = vec2<i32>(arg_1, arg_1);
    var_2 = vec2<i32>(firstLeadingBit(min(u_input.b, u_input.b)), _wgslsmith_add_i32(var_2.x, -arg_1 << (~45877u % 32u)) << (1u % 32u));
    return 0u;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_mult_i32(-abs(25779i), u_input.b);
    let var_1 = Struct_4(Struct_1(arg_1, -246f, _wgslsmith_mod_i32(-1i, ~23380i) >> (~_wgslsmith_clamp_u32(arg_0.x, u_input.a, u_input.c) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-403f)) * _wgslsmith_f_op_f32(round(1569f))))));
    let var_2 = var_1.a;
    var_0 = abs(u_input.b);
    var var_3 = ~(~select(arg_0.xz, max(arg_0.zx, arg_0.xx) >> ((vec2<u32>(arg_0.x, 0u) ^ vec2<u32>(1u, var_2.a)) % vec2<u32>(32u)), true));
    return abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(func_3(var_2.b, -10470i, vec2<f32>(var_1.a.d, 1235f), false), 0u, arg_0.x ^ var_1.a.a, 0u), ~vec4<u32>(~0u, 13329u, ~0u, _wgslsmith_add_u32(u_input.a, var_1.a.a))));
}

fn func_1() -> vec2<i32> {
    let var_0 = 15289u;
    let var_1 = false;
    var var_2 = vec3<u32>(firstTrailingBit(~44048u >> (min(1u, u_input.c) % 32u)) | _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.a, 0u)), var_0, u_input.a), _wgslsmith_mult_u32(~(~4294967295u), u_input.a), func_2(~vec3<u32>(26312u, abs(var_0), 4294967295u), var_0));
    var var_3 = Struct_2(Struct_1(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1625f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1331f), _wgslsmith_f_op_f32(f32(-1f) * -207f)))), firstTrailingBit(~firstTrailingBit(u_input.b)), -1350f), Struct_1(30869u, _wgslsmith_f_op_f32(f32(-1f) * -193f), -2147483647i, _wgslsmith_f_op_f32(573f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1097f * -850f) - 155f))), firstLeadingBit(min(-_wgslsmith_mult_vec3_i32(vec3<i32>(-23025i, u_input.b, -9181i), vec3<i32>(u_input.b, 2147483647i, 0i)), firstLeadingBit(vec3<i32>(u_input.b, u_input.b, u_input.b)) & -vec3<i32>(u_input.b, u_input.b, u_input.b))), false);
    var_2 = reverseBits(min(vec3<u32>(1u ^ var_2.x, var_3.b.a, u_input.c) | countOneBits(vec3<u32>(4294967295u, u_input.a, var_3.b.a)), vec3<u32>(24113u, 0u, 1u)));
    return ~var_3.c.xz;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: f32) -> Struct_3 {
    var var_0 = any(!vec3<bool>(any(vec4<bool>(false, true, true, true)), false, true)) || all(vec4<bool>(any(vec4<bool>(false, false, true, false)), !select(false, false, false), !any(vec2<bool>(true, false)), any(vec2<bool>(true, false))));
    var var_1 = ~2147483647i;
    var var_2 = u_input.a;
    let var_3 = Struct_4(Struct_1(abs(abs(u_input.c) >> (firstLeadingBit(u_input.c) % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(531f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-429f))))), abs(_wgslsmith_sub_i32(abs(u_input.b), _wgslsmith_mult_i32(u_input.b, arg_1.x))), _wgslsmith_div_f32(539f, -570f)));
    var_2 = 60452u;
    return Struct_3((_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 0i, 23793i), arg_0, _wgslsmith_div_vec3_i32(vec3<i32>(-5470i, -22713i, 40047i), arg_0)) & (~arg_0 | arg_0)) & -(~(-arg_0)), var_3.a, ~4294967295u, select(select(vec4<bool>(false, 1106f >= arg_2, all(vec2<bool>(false, true)), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(true, any(vec2<bool>(true, false)), true, 98425u < u_input.c), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true))), vec4<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1000f) >= _wgslsmith_f_op_f32(-arg_2), true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    var var_1 = func_4(vec3<i32>(u_input.b, -18001i, _wgslsmith_mod_i32(u_input.b, 1i)), (_wgslsmith_clamp_vec2_i32(min(vec2<i32>(u_input.b, 63481i), vec2<i32>(u_input.b, 9665i)), -vec2<i32>(u_input.b, u_input.b), vec2<i32>(-31776i, u_input.b)) ^ func_1()) << (vec2<u32>(u_input.c ^ 0u, u_input.c) % vec2<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) - _wgslsmith_div_f32(431f, 836f)), _wgslsmith_f_op_f32(-2178f - _wgslsmith_f_op_f32(-560f - -1261f)))), _wgslsmith_f_op_f32(-1180f * 119f), true)));
    var var_2 = func_4(vec3<i32>(var_1.a.x, _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(var_1.a, var_1.a), -2147483647i), var_1.a.x), select(var_1.a.zy, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_1.a.x, var_1.a.x, u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, var_1.b.c, -948i, var_1.a.x), vec4<i32>(u_input.b, var_1.b.c, 2147483647i, -30016i))), var_1.a.x), all(vec2<bool>(any(vec2<bool>(true, false)), var_1.d.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-492f - var_1.b.d))), -127f))).b;
    var_2 = var_1.b;
    let var_3 = func_4(var_1.a, ~(-firstTrailingBit(var_1.a.yz)) >> (abs(_wgslsmith_sub_vec2_u32(vec2<u32>(3u, 1u), vec2<u32>(var_1.c, 7286u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1200f + var_1.b.d))))));
    var_2 = var_1.b;
    let var_4 = Struct_1(_wgslsmith_clamp_u32(4294967295u, var_3.c, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, var_3.b.a), vec2<u32>(4294967295u, var_1.c)))), _wgslsmith_f_op_f32(f32(-1f) * -1531f), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -127f))) - var_0));
    let var_5 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.d, 726f, var_1.b.b, var_3.b.d) * vec4<f32>(496f, -463f, 683f, var_3.b.b)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1644f, 1425f, var_4.b, var_2.d)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, var_0, 264f, var_0))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, -131f, 1778f, 481f), vec4<f32>(var_3.b.b, 784f, 445f, 640f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.b, var_1.b.b, var_4.d, 337f), vec4<f32>(-1527f, var_4.d, 1815f, 398f), false)))), vec4<bool>(var_1.d.x, func_4(var_1.a, var_1.a.xz, 2125f).d.x, false, var_1.d.x & false)))))));
    let var_6 = vec3<i32>(var_3.b.c, _wgslsmith_sub_i32(min(_wgslsmith_mult_i32(var_3.a.x, 2147483647i), _wgslsmith_sub_i32(var_1.b.c, ~var_2.c)), 2147483647i), select(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-1i, var_3.b.c)), max(var_1.a.xy, vec2<i32>(37073i, 76242i))) & -var_3.b.c, _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.b, 2147483647i, 1i), vec4<i32>(var_3.a.x, -2147483647i, var_2.c, var_4.c)), vec4<i32>(var_2.c, ~(-39808i), func_4(vec3<i32>(-2147483647i, -2147483647i, 2147483647i), vec2<i32>(u_input.b, var_2.c), -623f).b.c, u_input.b)), all(select(!var_1.d, vec4<bool>(false, var_3.d.x, var_1.d.x, var_1.d.x), func_4(var_3.a, var_3.a.xz, var_0).d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_5)), var_5), _wgslsmith_f_op_vec4_f32(vec4<f32>(144f, var_3.b.d, var_3.b.d, _wgslsmith_f_op_f32(-489f - 128f)) - var_5), !var_1.d)), 1u, select(vec2<u32>(func_2(vec3<u32>(var_1.c, var_1.c, 36957u), var_3.b.a), ~62450u), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(49077u, 69288u)) << (~countOneBits(vec2<u32>(var_4.a, var_2.a)) % vec2<u32>(32u)), var_3.d.zy));
}

