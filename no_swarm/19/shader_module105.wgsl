struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool, arg_3: vec3<i32>) -> vec3<u32> {
    let var_0 = abs(_wgslsmith_add_vec2_u32(reverseBits(min(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 48126u), vec2<u32>(4294967295u, 11410u)), vec2<u32>(1u, 1u))), vec2<u32>(1u, 1u)));
    let var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(select((vec4<u32>(26691u, var_0.x, var_0.x, 18204u) >> (vec4<u32>(57691u, 0u, var_0.x, 72237u) % vec4<u32>(32u))) ^ vec4<u32>(0u, var_0.x, var_0.x, var_0.x), select(vec4<u32>(var_0.x, 677u, 4294967295u, var_0.x) & vec4<u32>(var_0.x, var_0.x, 18822u, 53758u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 0u, 1u, var_0.x), vec4<u32>(21851u, var_0.x, 12696u, 4294967295u)), true), all(select(vec3<bool>(arg_2, arg_2, arg_2), arg_0.zwy, arg_0.wzx))), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, ~58569u, var_0.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), vec4<u32>(24754u, var_0.x, 41849u, var_0.x)) & ~vec4<u32>(var_0.x, 10319u, 1u, 1u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 4294967295u, 1u), vec4<u32>(var_0.x, var_0.x, 0u, 4294967295u)), ~vec4<u32>(0u, 0u, var_0.x, var_0.x), firstLeadingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))), reverseBits(vec4<u32>(21581u, 1u, 1u, var_0.x)))), vec4<u32>(~reverseBits(var_0.x), 1205u, _wgslsmith_clamp_u32(35819u, 1u & var_0.x, 35483u), 4294967295u) ^ abs(vec4<u32>(29817u, var_0.x, 4294967295u, 0u) >> (select(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(0u, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, true, arg_1.a.x)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(abs(53822u), _wgslsmith_mult_u32(1u, var_0.x)), 1u, var_0.x, firstTrailingBit(~var_0.x)), firstLeadingBit(vec4<u32>(var_0.x, 0u, 1u, 0u)) & vec4<u32>(var_0.x, countOneBits(var_0.x), 1u, 102383u)));
    let var_2 = u_input.a;
    var var_3 = Struct_4(-1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.a, arg_1.b.a, 695f)))) - vec3<f32>(-2477f, arg_1.b.a, -899f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(265f, arg_1.b.a, arg_1.b.a, -2282f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b.a, 517f, -1382f, arg_1.b.a), vec4<f32>(-121f, arg_1.b.a, arg_1.b.a, -538f))) + vec4<f32>(311f, -672f, arg_1.b.a, arg_1.b.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a, -296f, -1962f, arg_1.b.a)))), ~26677i);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_3.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-626f, arg_1.b.a))))))));
    return _wgslsmith_clamp_vec3_u32(var_1.yxw, vec3<u32>(select(_wgslsmith_add_u32(var_0.x, var_1.x << (var_0.x % 32u)), var_1.x ^ _wgslsmith_mult_u32(var_1.x, 1u), true), _wgslsmith_mult_u32(4400u, 1u), var_0.x), ~select(var_1.zwz >> (_wgslsmith_add_vec3_u32(var_1.wyy, vec3<u32>(22351u, 4294967295u, 76278u)) % vec3<u32>(32u)), reverseBits(vec3<u32>(0u, 0u, var_0.x)) << (vec3<u32>(var_1.x, var_1.x, var_1.x) % vec3<u32>(32u)), arg_2));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec3<u32>) -> f32 {
    var var_0 = ~0u;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.b.xy + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1572f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1.b.xz), vec2<f32>(-748f, arg_1.b.x))), all(vec4<bool>(true, false, false, true))))), false, arg_2, 1u);
    let var_2 = 1u;
    let var_3 = var_2;
    var_0 = var_1.d;
    return 1316f;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_add_i32(~(-7294i) | _wgslsmith_div_i32(u_input.a, u_input.a), -_wgslsmith_clamp_i32(0i, u_input.a, u_input.a)) | u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1140f, 135f, -2142f) - vec3<f32>(-493f, 294f, 725f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 1158f, -628f)))), vec3<f32>(_wgslsmith_div_f32(-1000f, -781f), 1336f, _wgslsmith_f_op_f32(129f * -2792f)), false)) - vec3<f32>(-227f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1113f, -225f)), _wgslsmith_div_f32(-655f, -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(800f, 1077f)), -1053f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(110f * -664f), -112f))), -106f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~2361u, Struct_4(-1i, vec3<f32>(1245f, 100f, 1163f), vec4<f32>(163f, 1000f, 1524f, 271f), u_input.a), vec4<i32>(52060i, 2147483647i, u_input.a, 50744i), func_3(vec4<bool>(false, false, false, true), Struct_3(vec4<bool>(false, false, true, true), Struct_2(-1358f)), false, vec3<i32>(u_input.a, u_input.a, u_input.a)))) - _wgslsmith_f_op_f32(-2584f + -1402f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -312f))), i32(-1i) * -1i);
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1094f - var_0.b.x) - _wgslsmith_f_op_f32(step(var_0.b.x, -506f))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1096f, -902f)))), true, ~_wgslsmith_mult_vec4_i32(-reverseBits(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), min(vec4<i32>(var_0.a, var_0.a, -23552i, 1i), abs(vec4<i32>(var_0.d, var_0.a, var_0.d, var_0.a)))), func_3(vec4<bool>(false, true, true, all(vec3<bool>(false, false, true))), Struct_3(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), Struct_2(var_0.b.x)), !all(vec4<bool>(false, true, false, false)), _wgslsmith_sub_vec3_i32(vec3<i32>(-6696i, u_input.a, 2147483647i), ~vec3<i32>(var_0.d, u_input.a, var_0.a))).x ^ 1u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -111f));
    var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(210f - -1073f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1014f, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) + _wgslsmith_div_vec2_f32(var_1.a, var_0.b.xy)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 1764f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(128f, -1778f))))), var_1.b && (-17882i > var_0.a), ~var_1.c, _wgslsmith_div_u32(16489u, _wgslsmith_mod_u32(firstTrailingBit(4294967295u), 19995u)));
    var var_3 = -var_1.c.xwx;
    return var_0;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> vec4<f32> {
    let var_0 = 1086f;
    let var_1 = Struct_2(-1170f);
    let var_2 = false;
    let var_3 = var_1;
    var var_4 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(arg_1.a, -45655i)) ^ select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -67568i), vec2<i32>(-10137i, u_input.a)), abs(vec2<i32>(arg_1.a, -12185i)), select(vec2<bool>(true, true), vec2<bool>(var_2, var_2), false)), vec2<i32>(_wgslsmith_mod_i32(0i, arg_1.d), 0i)), -1484i);
    return arg_0.c;
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = !vec3<bool>(any(vec2<bool>(true, true)), true, false);
    var var_1 = Struct_4(_wgslsmith_div_i32(-1i, -22166i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-614f, -709f, -734f), vec3<f32>(-925f, -587f, -1427f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-607f, -1060f, -714f) * vec3<f32>(-1152f, -594f, -389f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1335f, -140f, 539f), vec3<f32>(356f, -1066f, 1758f)))))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-290f, _wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(-1112f + -1176f), -224f), _wgslsmith_f_op_vec4_f32(func_5(Struct_4(6114i, vec3<f32>(655f, 557f, -522f), vec4<f32>(118f, -137f, -1000f, -570f), -1i), func_2()))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(629f, 136f, -474f, -1094f) + vec4<f32>(1853f, -491f, 455f, 191f))))), arg_0);
    var var_2 = vec4<u32>(0u, 19422u, ~(~41469u), ~0u);
    let var_3 = Struct_3(!vec4<bool>(all(vec3<bool>(true, true, true)), var_1.c.x >= var_1.b.x, true, _wgslsmith_dot_vec4_i32(vec4<i32>(21568i, 2147483647i, 17607i, arg_0), vec4<i32>(var_1.a, 1i, -1i, -2147483647i)) == _wgslsmith_clamp_i32(-33982i, u_input.a, 2147483647i)), Struct_2(713f));
    var var_4 = -74650i;
    return Struct_3(vec4<bool>(any(select(select(vec4<bool>(false, var_3.a.x, var_3.a.x, var_0.x), var_3.a, vec4<bool>(true, var_3.a.x, true, var_0.x)), select(var_3.a, var_3.a, true), var_3.a)), all(vec4<bool>(false, !var_3.a.x, var_0.x, true)), !select(true, !var_0.x, !var_3.a.x), var_3.a.x), var_3.b);
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = ~vec3<u32>(firstLeadingBit(~7796u), _wgslsmith_mult_u32(1u, 1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(78957u, 1u), vec2<u32>(30387u, 102923u))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, 1u, 46133u), ~vec4<u32>(85483u, 12381u, 0u, 4294967295u)));
    let var_1 = arg_1.b.a;
    let var_2 = _wgslsmith_f_op_f32(step(1000f, -1539f));
    let var_3 = var_1;
    var var_4 = !(!arg_1.a);
    return _wgslsmith_sub_vec2_i32(arg_0.ww, -arg_0.xz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (~func_6(abs(vec4<i32>(u_input.a, 35584i, -2147483647i, -43482i)), func_1(1i)) | ~vec2<i32>(select(9386i, u_input.a, true), ~u_input.a)) ^ firstLeadingBit(abs(-_wgslsmith_div_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.a, 1i))));
    var var_1 = firstLeadingBit(_wgslsmith_mult_i32(-var_0.x, firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(58077i, u_input.a), vec2<i32>(-1i, 1i))))));
    var var_2 = Struct_3(select(vec4<bool>(true, true, true, true), !func_1(_wgslsmith_add_i32(var_0.x, u_input.a)).a, ~min(16142i, -2147483647i) != u_input.a), func_1(u_input.a).b);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-837f)) - _wgslsmith_f_op_f32(var_2.b.a - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_2.b.a)), _wgslsmith_f_op_f32(-var_2.b.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(4294967295u, ~firstTrailingBit(1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.a, 686f, 2042f), vec3<f32>(var_3, 1559f, 932f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_5(Struct_4(-33929i, vec3<f32>(-2357f, 1538f, -1847f), vec4<f32>(-1031f, 660f, 1116f, 305f), var_0.x), Struct_4(u_input.a, vec3<f32>(var_3, var_3, 1460f), vec4<f32>(var_3, var_3, 1280f, -184f), 44430i))).yxz))), abs(_wgslsmith_sub_i32(u_input.a, u_input.a)));
}

