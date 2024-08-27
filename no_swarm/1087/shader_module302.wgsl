struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: f32) -> u32 {
    return arg_0.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> vec2<bool> {
    var var_0 = Struct_1(-(u_input.d | u_input.d) << (vec4<u32>(0u, func_3(vec3<u32>(40147u, 1u, 18831u), vec2<bool>(true, true), 872f), 4294967295u, ~firstTrailingBit(u_input.e)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)));
    var_0 = Struct_1(vec4<i32>(arg_0.x, firstLeadingBit(~1i), max(var_0.a.x, countOneBits(abs(-1i))), -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.a.x, arg_0.x, arg_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(49613i, -27412i, 17862i, u_input.a.x), var_0.a))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1290f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.b.x, arg_1))))))));
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    let var_1 = vec4<bool>(any(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), false), vec2<bool>(false, any(vec3<bool>(true, false, true))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(false, false)))), true, false, select(false, true, all(vec4<bool>(true, true, true, true))));
    return select(var_1.wz, vec2<bool>(any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1, any(vec3<bool>(var_1.x, false, var_1.x)))), !((u_input.a.x <= 23522i) && var_1.x)), all(!select(select(vec2<bool>(var_1.x, false), var_1.yy, var_1.x), var_1.yz, var_1.xy)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = arg_2;
    var var_1 = vec4<i32>(-1i, min(-(arg_3 | arg_2.a.x), arg_2.a.x), ~(-40000i), var_0.a.x);
    global0 = array<Struct_2, 29>();
    var var_2 = arg_1;
    var_2 = Struct_3(_wgslsmith_f_op_f32(round(-504f)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(22178u, u_input.e, max(4294967295u, 0u)), ~_wgslsmith_mod_vec3_u32(arg_1.b, vec3<u32>(1u, 1u, u_input.e))), arg_1.c, vec4<u32>(~27029u, 21048u ^ _wgslsmith_add_u32(var_2.b.x, 1u), 6250u, _wgslsmith_mult_u32(~max(32255u, 33353u), _wgslsmith_mult_u32(u_input.e, ~arg_1.b.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, 1000f, var_0.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(814f, -435f, 251f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.a, 1001f, arg_2.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.e + var_2.e))))));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 4005i | _wgslsmith_mod_i32(-9177i, var_1.x), var_1.x, abs(26498i)), -_wgslsmith_mult_vec4_i32(firstTrailingBit(u_input.d ^ vec4<i32>(1i, 1i, var_0.a.x, arg_2.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.x, -17474i, 1i, arg_3), u_input.d)));
}

fn func_1() -> Struct_3 {
    var var_0 = vec3<i32>(~u_input.b, -((~(-609i) >> (u_input.e % 32u)) | -62124i), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(0i, i32(-1i) * -1i), _wgslsmith_div_i32(u_input.b, u_input.c) ^ ~(-13929i)), _wgslsmith_dot_vec3_i32(-(u_input.d.xyw ^ u_input.d.zwx), u_input.d.zzx)));
    var var_1 = vec2<bool>(2147483647i <= _wgslsmith_mult_i32(func_4(func_2(vec3<i32>(u_input.d.x, 18775i, u_input.a.x), -477f), Struct_3(294f, vec3<u32>(4294967295u, u_input.e, u_input.e), vec2<bool>(true, false), vec4<u32>(41336u, u_input.e, 46217u, u_input.e), vec3<f32>(1000f, 1000f, 821f)), Struct_1(u_input.d, vec2<f32>(594f, 692f)), var_0.x), var_0.x << (~24390u % 32u)), true);
    var var_2 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -25529i), vec2<i32>(-52126i, -1i)), abs(41423i), u_input.c), ~(-var_0.x)), 1i, u_input.b & var_0.x, ~(~max(-13157i, u_input.c))) | _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(select(u_input.d, vec4<i32>(var_0.x, 2147483647i, u_input.a.x, u_input.a.x), var_1.x)), u_input.d), _wgslsmith_sub_vec4_i32(~abs(u_input.d), u_input.d));
    var var_3 = vec4<i32>(u_input.d.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(func_4(vec2<bool>(true, false), Struct_3(-1000f, vec3<u32>(u_input.e, 54316u, 17593u), vec2<bool>(var_1.x, true), vec4<u32>(u_input.e, 4294967295u, u_input.e, 22292u), vec3<f32>(-688f, -694f, 479f)), Struct_1(vec4<i32>(var_2.x, var_0.x, -51258i, -42824i), vec2<f32>(-426f, 583f)), u_input.c), _wgslsmith_div_i32(var_0.x, var_2.x)), ~1i), var_2.x), u_input.c, var_2.x);
    var var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2440f - -645f))) + -680f), ~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 69157u, 1u), vec3<u32>(u_input.e, 6213u, u_input.e)), _wgslsmith_mod_vec3_u32(vec3<u32>(21601u, u_input.e, 6235u), vec3<u32>(23332u, u_input.e, u_input.e) ^ vec3<u32>(56450u, u_input.e, u_input.e))), !vec2<bool>(true, any(vec2<bool>(var_1.x, false))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, u_input.e, 0u, u_input.e), ~vec4<u32>(u_input.e, 4294967295u, u_input.e, 0u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 4294967295u, 0u, u_input.e), vec4<u32>(0u, u_input.e, 4294967295u, u_input.e)), max(~vec4<u32>(0u, u_input.e, u_input.e, 86218u) << (~vec4<u32>(13630u, u_input.e, 22832u, 0u) % vec4<u32>(32u)), countOneBits(vec4<u32>(0u, 18340u, u_input.e, u_input.e)) ^ ~vec4<u32>(22763u, 54955u, u_input.e, u_input.e))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 773f, -741f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(145f, 579f, -950f))))), !(!(!vec3<bool>(true, var_1.x, true))))));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(148f)) * var_4.a), ~vec3<u32>(max(0u, var_4.b.x), 0u, _wgslsmith_mod_u32(var_4.b.x, u_input.e)) ^ _wgslsmith_div_vec3_u32(~vec3<u32>(27823u, u_input.e, u_input.e), var_4.d.ywy), vec2<bool>(!var_4.c.x && any(!vec3<bool>(false, var_4.c.x, var_1.x)), func_2(var_3.wyx, _wgslsmith_f_op_f32(-1848f * _wgslsmith_div_f32(-685f, var_4.e.x))).x), vec4<u32>(~u_input.e, 86691u, var_4.b.x, ~u_input.e), var_4.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_sub_u32(var_0.b.x, func_3(~var_0.b, select(var_0.c, var_0.c, var_0.c.x), _wgslsmith_f_op_f32(863f - var_0.a)) << (~0u % 32u)) ^ (_wgslsmith_div_u32(firstLeadingBit(abs(1u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_0.d.xw, vec2<u32>(var_0.d.x, u_input.e)), ~var_0.d.x)) & var_0.b.x);
    let var_2 = Struct_2(Struct_1(countOneBits(select(countOneBits(u_input.d), vec4<i32>(u_input.d.x, u_input.d.x, u_input.a.x, -2147483647i) >> (var_0.d % vec4<u32>(32u)), !vec4<bool>(true, true, true, var_0.c.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.e.xx))))), u_input.e, Struct_1(abs(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.b) ^ firstTrailingBit(vec4<i32>(2147483647i, 16635i, u_input.d.x, -76134i))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.x), var_0.e.x)));
    let var_3 = _wgslsmith_clamp_vec4_u32(var_0.d, ~vec4<u32>(select(45996u, reverseBits(var_0.b.x), !var_0.c.x), firstTrailingBit(~1u), u_input.e, reverseBits(abs(0u))), ~vec4<u32>(u_input.e, ~(4294967295u | var_2.b), var_0.d.x, 23989u << (_wgslsmith_mult_u32(4294967295u, var_0.b.x) % 32u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(203f, 290f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a)))));
    let var_5 = vec2<u32>(~(~_wgslsmith_mult_u32(~54668u, 1u)), 1u);
    var var_6 = Struct_2(var_2.c, u_input.e, Struct_1(_wgslsmith_clamp_vec4_i32(-var_2.c.a, vec4<i32>(-2147483647i, i32(-1i) * -71502i, var_2.a.a.x, -u_input.a.x), -vec4<i32>(u_input.a.x, 0i, 2147483647i, var_2.a.a.x)), var_2.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mult_u32(var_6.b | 6240u, _wgslsmith_mod_u32(1u, var_2.b)) << (~(u_input.e & 4294967295u) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_6.a.b.x, var_2.a.b.x, 1159f, var_4.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.a.b.x, var_0.e.x, 653f, 628f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_6.c.b.x, -141f, -1057f, var_0.e.x))) * vec4<f32>(var_2.a.b.x, 649f, 398f, var_6.c.b.x)))));
}

