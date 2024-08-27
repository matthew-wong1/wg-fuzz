struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(173f, 1440f)))))), Struct_2(~(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(4294967295u, 29311u, 2061u, 4294967295u)) << (u_input.c % vec4<u32>(32u))), select(countOneBits(max(vec4<i32>(u_input.b, 1i, -35357i, u_input.b), vec4<i32>(u_input.b, u_input.b, -1i, 0i))), vec4<i32>(u_input.b, -1i, u_input.b & u_input.b, _wgslsmith_div_i32(u_input.b, u_input.b)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-318f)) - -1000f), Struct_1(true || (u_input.b >= u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(1701f, 1780f, 371f, 1911f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(682f, -438f, 1000f, 421f))), vec2<i32>(-27534i, 17941i), -128f, 906f), Struct_1(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(324f, 1007f, -1144f, 1309f)))), ~vec2<i32>(u_input.b, -2147483647i) & -vec2<i32>(8986i, 76490i), -1720f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1624f + -1579f), -1106f))), Struct_3(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(false, true, false, true), true), any(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1137f)))));
    var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.e.d), _wgslsmith_div_f32(-1820f, 1000f)))))), var_0.b, Struct_3(vec4<bool>((u_input.a < u_input.c.x) && true, !(162u > u_input.c.x), false, !var_0.b.d.a)), 218f);
    var_0 = Struct_5(var_0.d, var_0.b, var_0.c, _wgslsmith_div_f32(1333f, var_0.d));
    var var_1 = Struct_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(1u, 13230u, 64130u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 59461u), vec2<u32>(u_input.c.x, 22536u)), _wgslsmith_add_u32(28930u, u_input.c.x), 4294967295u), vec4<u32>(firstLeadingBit(u_input.d), 0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.b.a.x, var_0.b.a.x), var_0.b.a.x), 81213u)), vec4<i32>(-u_input.b, var_0.b.d.c.x, select(var_0.b.b.x, -5488i, any(select(var_0.c.a.wyx, vec3<bool>(false, var_0.b.d.a, true), var_0.c.a.x))), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(var_0.b.d.c.x, u_input.b)), _wgslsmith_add_vec2_i32(-var_0.b.b.yx, var_0.b.b.yy))), -637f, Struct_1(_wgslsmith_clamp_i32(var_0.b.b.x, var_0.b.e.c.x, 1i) != u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.d)), _wgslsmith_f_op_f32(-var_0.d), -1363f, _wgslsmith_f_op_f32(step(var_0.d, 477f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.b.e.d, var_0.a, -301f))), _wgslsmith_div_vec2_i32(select(vec2<i32>(0i, -43086i), -var_0.b.e.c, true), firstTrailingBit(vec2<i32>(16237i, var_0.b.e.c.x) | vec2<i32>(u_input.b, 473i))), _wgslsmith_f_op_f32(ceil(616f)), _wgslsmith_f_op_f32(f32(-1f) * -1459f)), Struct_1(any(!(!var_0.c.a.zw)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.d.d * var_0.b.c), _wgslsmith_div_f32(1000f, 367f), _wgslsmith_f_op_f32(-339f - 493f), 564f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.d.e, var_0.d, var_0.d, var_0.b.c) * var_0.b.e.b) + var_0.b.d.b))), abs(var_0.b.d.c), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1172f)))), _wgslsmith_f_op_f32(step(var_0.d, var_0.a))));
    var var_2 = Struct_5(_wgslsmith_div_f32(var_1.c, 624f), var_0.b, Struct_3(select(var_0.c.a, !vec4<bool>(var_0.c.a.x, var_1.d.a, var_1.d.a, var_1.d.a), !var_0.c.a.x)), var_1.d.e);
    return 1u;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: u32) -> vec4<i32> {
    var var_0 = func_3();
    var var_1 = vec2<bool>(any(vec3<bool>(true, false || arg_1.a.x, false)) != all(!arg_1.a.zw), all(vec2<bool>(true, any(arg_1.a.zy))));
    var_1 = vec2<bool>(!(arg_1.a.x | false), !arg_1.a.x == arg_1.a.x);
    let var_2 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1748f, 272f))))), Struct_2(u_input.c, -vec4<i32>(_wgslsmith_div_i32(-1i, 1i), _wgslsmith_add_i32(0i, -1i), 0i, u_input.b >> (arg_0.x % 32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(497f, 282f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(464f - -788f) + -1513f))), Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(26040i, u_input.b), select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(18495i, u_input.b), vec2<bool>(true, var_1.x)), vec2<i32>(45877i, 0i) << (u_input.c.ww % vec2<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-544f)), -160f, arg_1.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-704f * -253f)))), Struct_1(!arg_1.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1671f, -185f, 2663f, 550f), vec4<f32>(-801f, 1000f, -1423f, -234f)))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-16747i, -5300i)), 189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(103f + 1594f)))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-427f)) * _wgslsmith_f_op_f32(f32(-1f) * -225f))));
    var var_3 = Struct_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a * var_2.b.e.b.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1155f), 686f)))), arg_1.a.x && true)), Struct_2(vec4<u32>(arg_2, abs(_wgslsmith_add_u32(var_2.b.a.x, arg_2)), min(arg_0.x, 0u), var_2.b.a.x), firstLeadingBit(~var_2.b.b), _wgslsmith_f_op_f32(abs(780f)), var_2.b.e, Struct_1(var_2.d == 853f, var_2.b.d.b, ~(var_2.b.b.zx << (vec2<u32>(arg_2, arg_2) % vec2<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -1055f), 801f)), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(round(-853f)))))));
    return max(-select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_2.b.d.c.x, var_2.b.d.c.x, 1i, -23006i), _wgslsmith_clamp_vec4_i32(var_2.b.b, vec4<i32>(-1i, var_3.b.e.c.x, var_2.b.b.x, var_2.b.e.c.x), vec4<i32>(var_2.b.b.x, u_input.b, -7072i, var_3.b.b.x)), vec4<i32>(-73177i, u_input.b, var_3.b.d.c.x, 1i)), countOneBits(vec4<i32>(var_2.b.e.c.x, var_2.b.e.c.x, -12301i, u_input.b)) << (~vec4<u32>(1u, 4294967295u, 6932u, var_2.b.a.x) % vec4<u32>(32u)), any(arg_1.a)), -var_3.b.b);
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = func_2(~vec2<u32>(_wgslsmith_dot_vec4_u32(~u_input.c, u_input.c), ~0u), Struct_3(!(!(!vec4<bool>(false, arg_0.x, false, arg_0.x)))), 4294967295u);
    var var_1 = -(u_input.b << (u_input.d % 32u));
    var_1 = abs(var_0.x);
    var var_2 = abs(countOneBits(_wgslsmith_clamp_i32(min(var_0.x, u_input.b), ~reverseBits(u_input.b), _wgslsmith_clamp_i32(~var_0.x, -767i, abs(u_input.b)))));
    let var_3 = select(vec4<bool>((max(u_input.b, var_0.x) > -2147483647i) && true, true, arg_0.x, true), select(vec4<bool>(false, arg_0.x, !(0i == u_input.b), arg_0.x), vec4<bool>(!arg_0.x || true, all(!arg_0.xz), arg_0.x || (u_input.b == 2147483647i), false), _wgslsmith_add_i32(_wgslsmith_div_i32(var_0.x, var_0.x), 32411i) != max(abs(var_0.x), 19173i)), all(!vec2<bool>(u_input.a == u_input.a, false)));
    return -633f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(127f - _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, false)))) - 801f), Struct_2(u_input.c, vec4<i32>(u_input.b, ~u_input.b, -5341i, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(sign(256f))))), Struct_1(!all(vec2<bool>(false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1379f, 1324f, 1720f, -821f)), vec2<i32>(18750i | u_input.b, firstTrailingBit(u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(496f * -105f) + _wgslsmith_f_op_f32(751f * 2525f)), _wgslsmith_f_op_f32(317f + _wgslsmith_f_op_f32(floor(-1035f)))), Struct_1(true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-920f, -1000f, 1536f, -210f) * vec4<f32>(-252f, 1332f, -1660f, -1272f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-505f, -1000f, -1490f, -501f))), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 0i), ~vec2<i32>(-20734i, u_input.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(376f + -778f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(357f))))), Struct_3(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-406f + -913f) - _wgslsmith_f_op_f32(-279f - -1000f)))));
    let var_1 = vec4<i32>(-((i32(-1i) * -24402i) & -var_0.b.d.c.x), 41811i, var_0.b.e.c.x ^ firstLeadingBit(var_0.b.e.c.x & ~u_input.b), firstLeadingBit(-1i));
    let var_2 = reverseBits(abs(_wgslsmith_sub_i32(var_0.b.b.x, var_1.x)) | (-u_input.b | _wgslsmith_mod_i32(u_input.b, var_0.b.d.c.x))) << (19023u % 32u);
    let var_3 = Struct_1(select(any(var_0.c.a.yww), any(!(!var_0.c.a.wwz)), true), var_0.b.d.b, ~func_2(_wgslsmith_sub_vec2_u32(select(var_0.b.a.zz, vec2<u32>(u_input.a, var_0.b.a.x), var_0.c.a.x), abs(u_input.c.wx)), var_0.c, 4294967295u).yx, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(select(var_0.c.a.zyw, !vec3<bool>(var_0.c.a.x, true, var_0.c.a.x), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1467f)) - _wgslsmith_f_op_f32(2712f * -550f)))));
    var var_4 = Struct_1(!all(select(select(vec2<bool>(var_0.c.a.x, var_0.c.a.x), vec2<bool>(var_0.c.a.x, false), vec2<bool>(true, true)), !var_0.c.a.xy, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(var_0.b.d.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -669f, var_0.a, var_0.a) - var_0.b.e.b), var_0.c.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.e.b)) - var_0.b.e.b)), vec2<i32>(-55250i, u_input.b) << (var_0.b.a.yy % vec2<u32>(32u)), 414f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d * 1294f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c) * -1088f))) * var_0.d));
    var var_5 = all(!(!select(vec2<bool>(false, false), vec2<bool>(true, var_3.a), true)));
    let var_6 = select(vec3<bool>(var_4.a || (_wgslsmith_f_op_f32(-var_4.e) >= var_4.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.a, var_0.d)))) != var_0.a, all(var_0.c.a)), !var_0.c.a.zzy, _wgslsmith_f_op_f32(-var_4.d) != 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.e.c);
}

