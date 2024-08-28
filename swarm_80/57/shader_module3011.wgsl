struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> vec2<i32> {
    let var_0 = abs(countOneBits(~(-(vec2<i32>(u_input.a, arg_0) >> (vec2<u32>(6009u, u_input.b.x) % vec2<u32>(32u))))));
    var var_1 = Struct_3(arg_1.d.x);
    var_1 = Struct_3(arg_1.d.x);
    var var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, arg_0), vec2<i32>(max(u_input.a, i32(-1i) * -arg_0), -1i), -countOneBits(vec2<i32>(-1i, max(u_input.a, u_input.a))));
    var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.d.x)) + _wgslsmith_f_op_f32(var_1.a + arg_1.d.x)))));
    return vec2<i32>(min(arg_0, select(1i, ~(u_input.a & 10469i), arg_1.a)), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -15155i, -6847i ^ arg_0, _wgslsmith_div_i32(0i, 13033i)), vec4<i32>(~var_2.x, abs(arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, var_0.x, var_0.x, var_2.x), vec4<i32>(u_input.a, 23062i, 8068i, 0i)), arg_0)));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = abs(_wgslsmith_mod_vec3_u32(u_input.b.yxy, _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.b.xxx, ~vec3<u32>(27213u, u_input.b.x, u_input.b.x), u_input.b.zwz), vec3<u32>(u_input.b.x, u_input.b.x, firstTrailingBit(u_input.b.x)))));
    let var_1 = ~vec3<i32>(-1i ^ u_input.a, arg_0.x, ~(-2147483647i));
    let var_2 = false;
    let var_3 = -13250i;
    var var_4 = Struct_4(Struct_2(Struct_1(!var_2, abs(u_input.b.wyw), _wgslsmith_div_u32(0u, ~u_input.b.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(367f, -861f, -973f, 1379f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-272f, 128f, -623f, -1881f)), true & var_2)), 0u >= ~u_input.b.x)), select(var_2, var_3 < (_wgslsmith_dot_vec3_i32(var_1, vec3<i32>(24729i, -15788i, -5104i)) >> (var_0.x % 32u)), all(vec4<bool>(true, true, var_2, true)) & true), func_3(-27745i, Struct_1(any(vec4<bool>(var_2, false, var_2, false)), u_input.b.wxz, var_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(888f, -479f, 304f, 1100f)), true), true) << (u_input.b.yy % vec2<u32>(32u)), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-766f + _wgslsmith_f_op_f32(sign(-1000f))), -472f)));
    return Struct_1(any(select(vec2<bool>(true, var_2), select(select(vec2<bool>(var_2, true), vec2<bool>(false, true), var_4.a.a.e), select(vec2<bool>(var_4.b, false), vec2<bool>(var_4.b, false), false), all(vec4<bool>(var_2, var_4.b, var_2, false))), any(vec4<bool>(true, true, var_2, true)) | (var_4.b | false))), var_0, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_mod_u32(var_4.a.a.b.x, var_0.x)), ~4294967295u >> (var_0.x % 32u)), ~(~_wgslsmith_sub_u32(var_4.a.a.b.x, var_4.a.a.c)), ~1u), vec4<f32>(-812f, _wgslsmith_div_f32(-683f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(335f))))), _wgslsmith_f_op_f32(-var_4.a.a.d.x), -717f), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, var_4.b, false))) && false);
}

fn func_1() -> Struct_1 {
    return func_2(abs(firstTrailingBit(vec2<i32>(-1i, u_input.a)) ^ select(vec2<i32>(u_input.a, -10347i), vec2<i32>(u_input.a, 2147483647i), true)) << (_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, 21331u), _wgslsmith_mult_vec2_u32(u_input.b.yx, vec2<u32>(u_input.b.x, u_input.b.x))) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = Struct_3(1840f);
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -922f))), 788f, !arg_0.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.d - vec4<f32>(138f, arg_0.d.x, -373f, arg_0.d.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.d, arg_0.d, vec4<bool>(true, true, false, arg_0.a))) * arg_0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(832f, _wgslsmith_div_f32(var_1.a, 319f), _wgslsmith_f_op_f32(arg_0.d.x * arg_0.d.x), _wgslsmith_div_f32(-1500f, 900f)) - arg_0.d), func_2(-_wgslsmith_div_vec2_i32(vec2<i32>(1i, -13648i), vec2<i32>(33097i, 5619i))).e)), _wgslsmith_f_op_vec4_f32(-arg_0.d)));
    let var_3 = Struct_2(Struct_1(true, vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xw, vec2<u32>(1u, arg_0.c)), ~1u, 1u) ^ func_1().b, ~arg_0.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 664f, var_1.a, arg_0.d.x) - var_2)), func_1().e));
    return arg_0.c;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_4 {
    var var_0 = Struct_1(true, arg_1.a.b, u_input.b.x >> (arg_2 % 32u), vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3 - arg_0.x), _wgslsmith_f_op_f32(round(-1370f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(430f, -1074f)))) - -191f), 195f), any(vec3<bool>(false, true || func_2(vec2<i32>(u_input.a, u_input.a)).e, true)));
    var_0 = arg_1.a;
    let var_1 = Struct_3(func_1().d.x);
    var_0 = Struct_1(arg_1.a.a, _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(0u, arg_2, 1u)), vec3<u32>(u_input.b.x | 36903u, var_0.c, _wgslsmith_mod_u32(u_input.b.x, ~82969u)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(~var_0.b, ~vec3<u32>(var_0.b.x, 4294967295u, 54694u), u_input.b.wxy))), arg_1.a.c, vec4<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + -886f), func_2(reverseBits(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a), arg_1.a.a))).d.x, _wgslsmith_f_op_f32(f32(-1f) * -373f)), var_0.e);
    let var_2 = Struct_4(arg_1, true, select(abs(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(32732i, -1i))), vec2<i32>(countOneBits(-u_input.a), abs(-2147483647i)), vec2<bool>(true, all(vec4<bool>(arg_1.a.e, true, false, var_0.a)))), var_1);
    return Struct_4(Struct_2(arg_1.a), true, abs(vec2<i32>(var_2.c.x, u_input.a)), Struct_3(arg_1.a.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(1456f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f), _wgslsmith_f_op_f32(-688f - -1583f)) * -430f)));
    let var_1 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, 662f, var_0.a)))))), Struct_2(Struct_1(true, vec3<u32>(u_input.b.x | u_input.b.x, ~9774u, 1u), ~1u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.a, 139f, -141f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 679f, 1537f, var_0.a) + vec4<f32>(var_0.a, var_0.a, var_0.a, 2489f)), vec4<bool>(true, false, true, true))), (0u < u_input.b.x) & true)), func_4(func_1()), _wgslsmith_f_op_f32(select(-710f, -1222f, false)));
    var var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32((firstTrailingBit(vec4<i32>(u_input.a, 83779i, u_input.a, 18233i)) | abs(vec4<i32>(0i, u_input.a, u_input.a, -25469i))) >> (_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.b.x, var_1.a.a.c, u_input.b.x, 80849u)), ~vec4<u32>(var_1.a.a.c, 38014u, u_input.b.x, 1u)) % vec4<u32>(32u)), -select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.c.x, -2147483647i, var_1.c.x, var_1.c.x), vec4<i32>(var_1.c.x, u_input.a, 60138i, var_1.c.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, -43937i, 1i), vec4<i32>(-1i, var_1.c.x, 23365i, u_input.a)), vec4<bool>(var_1.b, var_1.a.a.e, false, false))), _wgslsmith_clamp_vec4_i32(-abs(abs(vec4<i32>(var_1.c.x, -37393i, u_input.a, 0i))), vec4<i32>(1i ^ var_1.c.x, -firstLeadingBit(42955i), -17512i, _wgslsmith_dot_vec2_i32(var_1.c, var_1.c)), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.c.x, var_1.c.x, -3645i, 1i) | vec4<i32>(u_input.a, 0i, -9929i, 8102i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, var_1.c.x), vec4<i32>(var_1.c.x, var_1.c.x, -48911i, 87948i), vec4<i32>(-42745i, var_1.c.x, u_input.a, u_input.a))) ^ max(vec4<i32>(-2147483647i, u_input.a, u_input.a, var_1.c.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, -680i), vec4<i32>(-24445i, 0i, var_1.c.x, u_input.a)))));
    let var_3 = Struct_4(var_1.a, false, var_1.c, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f + 492f), _wgslsmith_f_op_f32(select(var_1.d.a, var_1.d.a, true)), _wgslsmith_f_op_f32(exp2(var_0.a)), -718f) + vec4<f32>(_wgslsmith_div_f32(var_1.d.a, var_1.d.a), var_1.a.a.d.x, _wgslsmith_f_op_f32(min(-997f, var_0.a)), _wgslsmith_f_op_f32(676f - var_1.d.a))), var_1.a, 1u, _wgslsmith_f_op_f32(-func_2(_wgslsmith_sub_vec2_i32(var_1.c, var_1.c)).d.x)).d);
    var var_4 = Struct_4(Struct_2(var_1.a.a), false, max(vec2<i32>(-(var_1.c.x & var_2.x), _wgslsmith_sub_i32(func_5(vec4<f32>(var_1.d.a, var_0.a, 799f, var_3.a.a.d.x), Struct_2(var_1.a.a), 0u, 1871f).c.x, -var_3.c.x)), ~var_1.c), var_1.d);
    let var_5 = Struct_2(func_1());
    let var_6 = vec4<i32>(~var_4.c.x << (4294967295u % 32u), var_1.c.x, -(~var_4.c.x), -34762i);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.a.b.x, var_4.a.a.c);
}

