struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = !all(vec2<bool>(true, true)) != true;
    var var_1 = Struct_2(~1u, false, Struct_1(-u_input.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(4178i | u_input.b, u_input.b, -u_input.b, 0i), countOneBits(~vec4<i32>(u_input.b, 42983i, -1537i, -897i)), ~vec4<i32>(u_input.b, 1i, -3942i, -2147483647i) & vec4<i32>(u_input.b, 632i, -1i, u_input.b)), ~(~firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 4294967295u))), max(vec2<i32>(u_input.b, select(u_input.b, -1i, false)), abs(vec2<i32>(u_input.b, -39017i)) | vec2<i32>(u_input.b, u_input.b)), reverseBits(~select(vec2<u32>(17652u, u_input.a), vec2<u32>(0u, u_input.a), vec2<bool>(false, true)))));
    var_1 = Struct_2(reverseBits(4294967295u), (235f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1110f, 810f))))) && !var_1.b, var_1.c);
    var var_2 = Struct_4(var_1.b, Struct_2(82694u, all(vec3<bool>(var_1.b, any(vec3<bool>(true, var_1.b, var_1.b)), true)), Struct_1(-u_input.b ^ -36329i, ~firstTrailingBit(var_1.c.b), var_1.c.c << (~var_1.c.c % vec3<u32>(32u)), -select(var_1.c.b.yx, var_1.c.b.zy, vec2<bool>(true, true)), vec2<u32>(u_input.a, ~56307u))), Struct_1(var_1.c.d.x, -_wgslsmith_mult_vec4_i32(~var_1.c.b, var_1.c.b), var_1.c.c, _wgslsmith_mod_vec2_i32(var_1.c.b.ww, firstLeadingBit(var_1.c.b.xw)) >> (~var_1.c.c.zx % vec2<u32>(32u)), vec2<u32>(~57046u, _wgslsmith_clamp_u32(var_1.c.c.x, ~var_1.a, ~14225u))), abs(abs(u_input.b & _wgslsmith_mod_i32(-1i, u_input.b))));
    let var_3 = 0i;
    return _wgslsmith_mod_i32(var_3, 1i);
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1264f, 1009f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(365f - -182f) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1736f)) - 1021f)))) - vec3<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(424f - -103f) - _wgslsmith_div_f32(-1548f, 619f))), -841f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1218f)))));
    var var_1 = Struct_2(4294967295u, 1i >= -_wgslsmith_sub_i32(u_input.b, 1i), Struct_1(min(_wgslsmith_add_i32(u_input.b, 51533i) >> (u_input.a % 32u), _wgslsmith_add_i32(max(u_input.b, 1i), u_input.b)), vec4<i32>(u_input.b, select(i32(-1i) * -1i, 1i, true), ~func_3(), -2147483647i), vec3<u32>(_wgslsmith_sub_u32(u_input.a, 7996u), min(4294967295u, 989u), _wgslsmith_div_u32(firstTrailingBit(85568u), u_input.a)), firstTrailingBit(select(~vec2<i32>(u_input.b, 12718i), -vec2<i32>(u_input.b, u_input.b), false)), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(4294967295u, 9251u)), (vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, 0u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)))));
    let var_2 = Struct_2(~(~(select(u_input.a, u_input.a, false) | abs(53392u))), any(vec2<bool>(var_1.b, var_1.b)), var_1.c);
    let var_3 = Struct_4(var_1.b, var_2, Struct_1(-u_input.b, ~reverseBits(-var_2.c.b), _wgslsmith_add_vec3_u32(~var_1.c.c, ~countOneBits(vec3<u32>(u_input.a, var_2.c.c.x, 0u))), var_2.c.b.yy, _wgslsmith_sub_vec2_u32(~var_1.c.e, var_1.c.c.zz)), ~(-309i));
    let var_4 = Struct_4(true, Struct_2(1u, any(!vec3<bool>(var_2.b, false, var_3.b.b)) && all(!vec3<bool>(var_2.b, true, var_3.a)), var_2.c), Struct_1(-_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-37153i, 7122i, var_2.c.a)), ~var_1.c.b.zzx), -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.b.c.a, var_2.c.b.x, var_1.c.a, 32706i), var_1.c.b, var_3.c.b) ^ select(-var_2.c.b, var_2.c.b, true), _wgslsmith_div_vec3_u32(~abs(vec3<u32>(var_2.c.e.x, 8111u, 1u)), var_1.c.c), vec2<i32>(_wgslsmith_sub_i32(~(-2147483647i), max(u_input.b, -2147483647i)), u_input.b), vec2<u32>(~(~42100u), ~0u)), _wgslsmith_div_i32(44454i, 26311i) ^ var_3.d);
    return ~(~min(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_4.b.c.e.x, var_1.a, 4294967295u, 0u), vec4<u32>(var_3.c.c.x, var_4.c.e.x, 3298u, 54207u)), vec4<u32>(4294967295u, u_input.a, var_4.b.a, 1u) | vec4<u32>(var_3.c.e.x, 25139u, u_input.a, var_2.c.e.x)), vec4<u32>(4294967295u, var_2.c.c.x, ~0u, select(var_3.c.c.x, 4294967295u, true))));
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> u32 {
    var var_0 = vec3<bool>(any(vec3<bool>(!(!arg_1.b.b), true, arg_1.a)), true, arg_1.a);
    let var_1 = abs(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(arg_0, 38648u, 0u, 43284u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 20643u, 4294967295u, u_input.a), vec4<u32>(4294967295u, arg_1.b.c.c.x, arg_0, 0u) ^ func_2())));
    let var_2 = u_input.b;
    var var_3 = Struct_3(37582i, true && any(vec2<bool>(true, select(false, var_0.x, true))), ~vec4<u32>(1u, 37400u, ~24167u, 1u) >> (var_1 % vec4<u32>(32u)), arg_1.b.c.b);
    var var_4 = _wgslsmith_clamp_vec2_u32(abs(firstLeadingBit(var_3.c.xx)), ~abs(arg_1.b.c.e), ~(~arg_1.c.c.zy));
    return ~15612u | arg_1.c.e.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, 287f)) + _wgslsmith_f_op_f32(1304f - _wgslsmith_f_op_f32(f32(-1f) * -659f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1644f, -627f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-846f, -742f)), _wgslsmith_f_op_f32(round(-567f))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(604f * -146f) - 252f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -506f))))));
    var var_1 = Struct_4(!(arg_1.b || !arg_1.b) & true, Struct_2(max(~_wgslsmith_mult_u32(1u, arg_0.x), 4294967295u), true, Struct_1(_wgslsmith_mult_i32(-arg_1.d.x, arg_1.a | arg_1.a), vec4<i32>(-arg_1.d.x, -arg_1.a, 0i, arg_1.a), vec3<u32>(arg_0.x, 26728u, arg_1.c.x) | reverseBits(vec3<u32>(0u, 4294967295u, 4625u)), countOneBits(arg_1.d.xz), vec2<u32>(countOneBits(arg_1.c.x), ~1u))), Struct_1(-2472i, _wgslsmith_clamp_vec4_i32(arg_1.d, ~reverseBits(arg_1.d), max(~vec4<i32>(u_input.b, 13508i, arg_1.d.x, arg_1.d.x), -vec4<i32>(25260i, -2147483647i, u_input.b, u_input.b))), arg_1.c.wxw, select(vec2<i32>(arg_1.a, func_3()), vec2<i32>(~(-4574i), -21700i), any(vec2<bool>(arg_1.b, arg_1.b))), _wgslsmith_mod_vec2_u32(vec2<u32>(func_1(arg_0.x, Struct_4(arg_1.b, Struct_2(u_input.a, false, Struct_1(0i, vec4<i32>(2147483647i, u_input.b, 1i, arg_1.d.x), arg_2.ywy, arg_1.d.yw, arg_1.c.wy)), Struct_1(-2147483647i, vec4<i32>(2147483647i, arg_1.d.x, u_input.b, 0i), vec3<u32>(arg_0.x, 4294967295u, arg_2.x), vec2<i32>(42945i, u_input.b), arg_2.xw), u_input.b)), 18464u), vec2<u32>(u_input.a, ~arg_1.c.x))), -(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_1.d.zw, arg_1.d.xz), _wgslsmith_add_i32(arg_1.d.x, -12746i))));
    var var_2 = arg_2;
    let var_3 = ~vec3<u32>(min(~25917u, var_2.x), 9851u, func_1(_wgslsmith_mod_u32(68268u, arg_0.x), Struct_4(arg_1.b, Struct_2(u_input.a, false, Struct_1(var_1.d, vec4<i32>(u_input.b, -10704i, -42047i, -17596i), arg_2.zxw, var_1.c.b.zz, vec2<u32>(32393u, 0u))), var_1.c, 4362i)) | ~(4294967295u << (u_input.a % 32u)));
    let var_4 = var_1.b;
    return Struct_3(-(~_wgslsmith_sub_i32(~u_input.b, -41846i)), arg_1.b, arg_2, var_4.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var_0 = u_input.b;
    let var_1 = !(u_input.a >= ~firstTrailingBit(~109265u));
    let var_2 = _wgslsmith_f_op_f32(226f * -876f);
    var_0 = 0i;
    var var_3 = func_4(vec3<u32>(4294967295u, (1u | ~u_input.a) >> (u_input.a % 32u), u_input.a), Struct_3(-5350i, _wgslsmith_mod_i32(u_input.b ^ -43922i, firstTrailingBit(-1i)) != ~(u_input.b | u_input.b), ~(~vec4<u32>(61422u, u_input.a, 0u, 0u)) ^ abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 53977u, u_input.a), vec4<u32>(1u, u_input.a, 14509u, 59410u))), vec4<i32>(10179i, -5493i >> (u_input.a % 32u), u_input.b, 2147483647i)), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, func_1(u_input.a, Struct_4(var_1, Struct_2(15726u, false, Struct_1(-1i, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec3<u32>(0u, u_input.a, 1u), vec2<i32>(u_input.b, 12528i), vec2<u32>(u_input.a, 46674u))), Struct_1(u_input.b, vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), vec3<u32>(u_input.a, 31264u, 81940u), vec2<i32>(u_input.b, 2147483647i), vec2<u32>(u_input.a, u_input.a)), u_input.b)), u_input.a, 75200u), ~select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 38693u, 0u, 1u), vec4<bool>(false, var_1, var_1, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, u_input.b), vec3<i32>(79724i, ~(-69423i), _wgslsmith_sub_i32(~(-15323i), ~(-10379i))) >> (_wgslsmith_sub_vec3_u32(var_3.c.ywz, _wgslsmith_sub_vec3_u32(~var_3.c.wyx, ~vec3<u32>(var_3.c.x, 15241u, 0u))) % vec3<u32>(32u)), _wgslsmith_mult_u32(firstTrailingBit(17310u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c.x, 22125u, 11051u, u_input.a) << (_wgslsmith_add_vec4_u32(vec4<u32>(26315u, var_3.c.x, 20503u, 0u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)), vec4<u32>(var_3.c.x, ~u_input.a, _wgslsmith_mod_u32(var_3.c.x, 0u), var_3.c.x >> (24851u % 32u)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, 749f) * vec3<f32>(var_2, var_2, -122f))))), -781f);
}

