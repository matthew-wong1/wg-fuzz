struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = Struct_4(0i, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1718f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(2267f, -209f))))))));
    let var_1 = !(!select(vec4<bool>(true, any(vec2<bool>(true, false)), true, any(vec4<bool>(true, false, false, true))), vec4<bool>(true, any(vec2<bool>(false, true)), 832f <= var_0.b, false), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))));
    let var_2 = abs(_wgslsmith_mod_i32(u_input.a, var_0.a));
    var var_3 = true;
    var var_4 = Struct_1(max(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 4294967295u, 41492u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(1004u, 46749u, 4294967295u, 1u), vec4<u32>(0u, 37025u, 4294967295u, 50160u), vec4<u32>(0u, 99797u, 1u, 15784u))), 65907u), vec4<u32>(36093u, 0u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(26889u, 2321u, 4294967295u), vec3<u32>(14691u, 0u, 0u))), 1u), vec3<f32>(_wgslsmith_f_op_f32(min(var_0.b, -958f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1412f + _wgslsmith_f_op_f32(select(1325f, var_0.b, var_1.x))) - 551f), var_0.b), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b - -1636f), -908f), 645f), var_1);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-235f + var_4.c.x)))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: bool) -> u32 {
    var var_0 = Struct_1(90367u, ~(~(~vec4<u32>(4294967295u, 130505u, arg_1, 13747u)) << (~(vec4<u32>(arg_1, 4294967295u, 28666u, arg_1) << (vec4<u32>(arg_1, 0u, arg_2, arg_1) % vec4<u32>(32u))) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(-199f * -587f), -1704f, 1035f), _wgslsmith_div_f32(-508f, _wgslsmith_f_op_f32(func_3())), !select(vec4<bool>(true, true, arg_3, arg_3), !select(vec4<bool>(arg_3, arg_3, arg_3, false), vec4<bool>(arg_3, arg_3, true, arg_3), vec4<bool>(true, arg_3, arg_3, arg_3)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(arg_0, arg_0)) > arg_0));
    let var_1 = select(~vec4<i32>(max(u_input.a, -11208i) << (_wgslsmith_clamp_u32(arg_2, 44135u, arg_1) % 32u), arg_0, ~0i, arg_0), ~vec4<i32>(-1i, (u_input.a & arg_0) >> (_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(arg_1, 48504u, arg_1, 0u)) % 32u), countOneBits(~19483i), ~1i), !select(!(!var_0.e), !select(var_0.e, vec4<bool>(var_0.e.x, var_0.e.x, arg_3, true), var_0.e), true));
    var_0 = Struct_1(~firstLeadingBit(arg_2), vec4<u32>(arg_1, arg_2, _wgslsmith_div_u32(~arg_1, countOneBits(12716u)), arg_2) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(var_0.b | vec4<u32>(4294967295u, 4294967295u, arg_2, 0u), select(vec4<u32>(16669u, 19515u, 12733u, 0u), vec4<u32>(15157u, 46284u, 0u, arg_2), var_0.e.x)), var_0.b & reverseBits(var_0.b), ~var_0.b) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d + 1781f), _wgslsmith_f_op_f32(round(var_0.c.x))) - -290f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1316f + _wgslsmith_f_op_f32(var_0.c.x + var_0.d)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(step(var_0.d, var_0.d))), var_0.c.x)))), var_0.e);
    var_0 = Struct_1(arg_2, vec4<u32>(~var_0.b.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~79113u, abs(arg_1)), _wgslsmith_sub_u32(arg_1, ~7178u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_0.b << (vec4<u32>(arg_2, arg_2, var_0.a, var_0.b.x) % vec4<u32>(32u)), vec4<u32>(arg_1, var_0.b.x, 23367u, 1u)), var_0.b), ~arg_2), var_0.c, var_0.d, var_0.e);
    var var_2 = var_0.b.x;
    return arg_2;
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-210f + -560f)), 1u >> (firstLeadingBit(~func_2(-30938i, 1u, 21690u, false)) % 32u), Struct_4(~(-34692i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1094f), -1002f))))), ~select(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 33953u, 47296u), vec3<u32>(78578u, 66799u, 0u), vec3<bool>(false, true, true)), vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_mod_u32(1u, 1u), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))));
    var_0 = Struct_5(-194f, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_0.b, 56627u)), ~vec2<u32>(var_0.b, var_0.d), vec2<u32>(9200u, var_0.d) >> (vec2<u32>(4294967295u, 2617u) % vec2<u32>(32u))), vec2<u32>(var_0.d, 11553u >> (var_0.d % 32u))), vec2<u32>(var_0.b, _wgslsmith_mod_u32(abs(var_0.b), _wgslsmith_div_u32(var_0.b, var_0.b)))), Struct_4(_wgslsmith_mod_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -23884i, -2147483647i, -15388i), vec4<i32>(-1i, -1i, -13413i, 45348i)), var_0.c.a), select(firstLeadingBit(var_0.c.a), var_0.c.a, false)), var_0.c.b), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, var_0.b, var_0.b), vec3<u32>(14163u, 94445u, var_0.d)) | vec3<u32>(var_0.d, var_0.d, var_0.d), ~max(vec3<u32>(var_0.b, var_0.b, 4294967295u), vec3<u32>(0u, 77487u, 4294967295u))), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 53229u, 0u), vec4<u32>(var_0.b, 12345u, var_0.b, var_0.d))), _wgslsmith_mod_u32(~max(var_0.d, 4294967295u), var_0.b)));
    var_0 = Struct_5(var_0.a, ~(~countOneBits(var_0.d) << (~(var_0.d ^ 4294967295u) % 32u)), var_0.c, countOneBits(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4446u, var_0.d, var_0.d), vec3<u32>(1u, 35894u, 18486u)))) >> (44411u % 32u));
    var_0 = Struct_5(-1000f, 75034u, Struct_4((1i ^ -u_input.a) ^ ~5246i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(359f, -106f))), var_0.b);
    var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-669f - _wgslsmith_f_op_f32(-var_0.c.b)), var_0.c.b)) + -523f), ~1u, var_0.c, firstLeadingBit(var_0.b));
    return Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1273f, var_0.a))), var_0.d, Struct_4(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 5019i), vec3<i32>(var_0.c.a, -1i, u_input.a) >> (vec3<u32>(0u, var_0.d, 1u) % vec3<u32>(32u)), vec3<i32>(0i, u_input.a, var_0.c.a)), -(~vec3<i32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -503f) + _wgslsmith_div_f32(var_0.a, -689f)) - 1255f)), (var_0.b >> (~var_0.b % 32u)) ^ var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = u_input.a;
    var_1 = reverseBits(1i);
    var_1 = ~u_input.a;
    var var_2 = Struct_2(Struct_1(~0u, _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d ^ var_0.b, 46963u >> (var_0.d % 32u), var_0.b, var_0.d | var_0.d), firstLeadingBit(max(vec4<u32>(var_0.b, var_0.d, 0u, 4287u), vec4<u32>(0u, var_0.d, 16688u, var_0.b)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.c.b, 1466f) - vec3<f32>(var_0.c.b, -1362f, var_0.c.b))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b, var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1194f, 1000f, var_0.a)))))), 822f, !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), all(vec4<bool>(true, false, true, false)))), func_1().c.a, vec3<bool>(!any(vec3<bool>(true, true, true)), !any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), true), Struct_1(var_0.d, (firstLeadingBit(vec4<u32>(0u, 6611u, var_0.b, var_0.d)) ^ vec4<u32>(41138u, var_0.b, var_0.d, 1u)) | ~vec4<u32>(0u, 4294967295u, var_0.d, var_0.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a, -1023f))), var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -281f), vec4<bool>(true, false, ~var_0.d <= ~1u, true)));
    let var_3 = _wgslsmith_clamp_i32(var_0.c.a, 1i, ~(-2147483647i));
    var_1 = _wgslsmith_mod_i32(-var_3, var_3);
    var var_4 = Struct_3(Struct_1(countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_2.a.b.zzz, var_2.d.b.zzx), ~31158u)), _wgslsmith_clamp_vec4_u32(max(abs(var_2.a.b), vec4<u32>(0u, 4294967295u, var_0.d, var_0.b)), var_2.d.b, var_2.d.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1639f, var_2.d.d, var_0.c.b)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1454f, var_0.c.b, -1379f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a.c + vec3<f32>(-947f, var_0.a, -561f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.d + 2219f)), vec4<bool>(max(u_input.a, 0i) <= -32480i, true, any(select(var_2.a.e, vec4<bool>(false, var_2.a.e.x, var_2.a.e.x, true), vec4<bool>(false, true, var_2.a.e.x, true))), 1u >= var_2.d.b.x)), Struct_2(var_2.d, var_0.c.a, var_2.a.e.xww, var_2.a));
    let var_5 = reverseBits(vec3<i32>(i32(-1i) * -var_2.b, 0i, ~(-52566i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.c, -38879i, _wgslsmith_mult_vec2_i32(var_5.zz, -var_5.yx), -(vec3<i32>(func_1().c.a, ~17205i, i32(-1i) * -39510i) ^ vec3<i32>(var_5.x, abs(var_3), _wgslsmith_mult_i32(11578i, u_input.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_4.b.a.c.zx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(692f - var_2.a.d), -879f) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_2.d.c.xz - var_2.d.c.zz), vec2<f32>(var_0.c.b, 1648f))))));
}

