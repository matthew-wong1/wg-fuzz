struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(round(1f));
    var var_1 = u_input.d.x;
    var var_2 = Struct_1(!(2147483647i >= -(-240i << (u_input.a % 32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1085f))), !vec4<bool>(true, true, true, all(vec4<bool>(true, false, true, false))), !all(vec3<bool>(true, true, true)));
    var_1 = _wgslsmith_dot_vec2_u32(~abs(u_input.c.zx & abs(u_input.c.zy)), _wgslsmith_mult_vec2_u32(~abs(abs(vec2<u32>(u_input.d.x, u_input.a))), firstTrailingBit(vec2<u32>(u_input.c.x, u_input.d.x) ^ _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, 35434u), u_input.d.wy))));
    global0 = _wgslsmith_dot_vec4_i32(firstTrailingBit((vec4<i32>(-1i) * -vec4<i32>(-4022i, -42523i, -6987i, -2147483647i)) << (vec4<u32>(u_input.d.x, countOneBits(u_input.c.x), 1u, u_input.d.x) % vec4<u32>(32u))), max(firstLeadingBit(~vec4<i32>(u_input.e, -1i, u_input.e, u_input.e)) | (-vec4<i32>(20066i, -33700i, -1i, -4783i) | max(vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), vec4<i32>(u_input.b, 9560i, 5380i, u_input.b))), -_wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, -44506i, -1i, u_input.b), vec4<i32>(u_input.e, u_input.e, u_input.b, 14685i) | vec4<i32>(-42184i, u_input.b, u_input.e, u_input.e))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~min(~u_input.d.ywx, u_input.d.xyz), firstLeadingBit(u_input.c.wzy | u_input.c.yyx)), firstLeadingBit(~u_input.d.www));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_0, arg_0), ~1u), 120579u), u_input.d.yww);
    var_0 = reverseBits(arg_0.www);
    return vec4<u32>(1891u ^ func_3(), arg_2.b.c.x, ~var_0.x, _wgslsmith_dot_vec3_u32(u_input.d.xyw, _wgslsmith_sub_vec3_u32(abs(arg_2.b.c), _wgslsmith_sub_vec3_u32(vec3<u32>(8997u, var_0.x, var_0.x), vec3<u32>(0u, var_0.x, u_input.a)) >> (select(arg_2.b.c, arg_0.xzz, arg_1) % vec3<u32>(32u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> vec2<f32> {
    global0 = ~((u_input.b >> ((arg_1.c.x >> (4294967295u % 32u)) % 32u)) & 1i) & select(76843i & u_input.b, -6536i, arg_1.a.d);
    let var_0 = i32(-1i) * -46632i;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d.b), arg_1.d.b)));
    global0 = ~firstLeadingBit(35699i);
    let var_2 = ~vec2<u32>(4294967295u, func_2(~(~u_input.d), !all(arg_1.d.c.wyz), Struct_3(var_0, arg_1, -1243f, min(vec4<i32>(arg_1.b.x, 29127i, -2147483647i, var_0), vec4<i32>(var_0, -2147483647i, 1i, var_0)))).x);
    return vec2<f32>(592f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - -1000f)));
}

fn func_1() -> Struct_1 {
    global0 = -2147483647i;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-909f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1506f, -668f)), vec2<f32>(1000f, -1000f)) - _wgslsmith_f_op_vec2_f32(func_4(func_2(vec4<u32>(0u, u_input.a, 1u, u_input.a), true, Struct_3(u_input.b, Struct_2(Struct_1(true, -664f, vec4<bool>(false, false, true, true), true), vec3<i32>(u_input.e, 0i, u_input.e), vec3<u32>(0u, 24541u, u_input.c.x), Struct_1(true, -444f, vec4<bool>(false, true, true, true), false)), -711f, vec4<i32>(u_input.e, 2147483647i, 1i, 12856i))), Struct_2(Struct_1(true, -227f, vec4<bool>(true, true, false, false), false), vec3<i32>(u_input.b, 0i, u_input.e), u_input.c.xzx, Struct_1(false, 235f, vec4<bool>(true, false, true, false), true))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -595f) - _wgslsmith_f_op_f32(select(-989f, -816f, true))), _wgslsmith_f_op_f32(abs(-472f)))));
    var var_1 = Struct_3(u_input.e, Struct_2(Struct_1(false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(968f)), _wgslsmith_f_op_f32(var_0.x - 591f), true)), vec4<bool>(true, true, true, true), true), _wgslsmith_div_vec3_i32(-(vec3<i32>(-34483i, u_input.e, 1i) << (u_input.d.yzw % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.e, 2147483647i), vec3<i32>(u_input.e, 20603i, u_input.e)))), min(u_input.d.wyy, ~_wgslsmith_add_vec3_u32(u_input.c.wyx, u_input.c.zzz)), Struct_1(true, -1279f, select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1255f, var_0.x, false)))))), vec4<i32>(15650i, 24021i, u_input.b, u_input.b));
    var var_2 = Struct_3(_wgslsmith_clamp_i32(var_1.a, _wgslsmith_clamp_i32(u_input.b, -1i, -1284i), _wgslsmith_add_i32(1i, u_input.b)), Struct_2(Struct_1(_wgslsmith_sub_u32(95912u, var_1.b.c.x) < ~42157u, _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), vec4<bool>(true, true, true, !var_1.b.a.c.x), true), firstLeadingBit(var_1.b.b ^ vec3<i32>(u_input.e, 56222i, u_input.e)) & vec3<i32>(max(0i, 2147483647i), firstLeadingBit(u_input.e), select(u_input.b, var_1.d.x, false)), vec3<u32>(var_1.b.c.x, ~u_input.d.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.b.c.x, 4294967295u), u_input.c.x)), var_1.b.a), var_1.b.d.b, ~vec4<i32>(_wgslsmith_add_i32(var_1.b.b.x, -u_input.e), _wgslsmith_div_i32(abs(var_1.a), 1i), min(u_input.e, 25371i), u_input.b));
    let var_3 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~(~27952u), _wgslsmith_div_u32(18525u, ~0u), ~(~4294967295u)), var_1.b.c), vec3<u32>(4294967295u, var_1.b.c.x, 51077u), u_input.d.ywz);
    return Struct_1(!(select(true, true, var_1.b.c.x <= 4294967295u) || !var_2.b.a.d), _wgslsmith_f_op_f32(trunc(var_2.b.d.b)), vec4<bool>(false, true, select(_wgslsmith_div_u32(u_input.a, 1u), ~var_2.b.c.x, true) < u_input.a, var_1.b.d.a), all(var_2.b.a.c.xy));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<u32> {
    let var_0 = reverseBits(vec4<i32>(arg_2.x ^ 14972i, _wgslsmith_clamp_i32((i32(-1i) * -6946i) << (firstTrailingBit(64559u) % 32u), _wgslsmith_sub_i32(-5916i, _wgslsmith_mult_i32(2147483647i, arg_2.x)), u_input.b), 65071i, ~_wgslsmith_sub_i32(-20871i, -16070i)));
    var var_1 = func_1();
    let var_2 = all(func_1().c.zz);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b, var_1.b, 560f, arg_0.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-522f, var_1.b, 1000f, arg_1.b) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(296f, 1083f, 1000f, arg_1.b))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -420f)), -1500f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f), -308f), _wgslsmith_f_op_f32(f32(-1f) * -142f))) + vec4<f32>(_wgslsmith_f_op_f32(-1459f - var_1.b), arg_1.b, _wgslsmith_f_op_vec2_f32(func_4((vec4<u32>(24937u, 16605u, u_input.a, 13629u) & vec4<u32>(u_input.c.x, u_input.d.x, 8879u, u_input.c.x)) | ~u_input.d, Struct_2(Struct_1(var_1.c.x, -540f, vec4<bool>(false, false, var_2, var_1.a), var_1.d), arg_2.zzx, countOneBits(u_input.c.wzz), func_1()))).x, _wgslsmith_f_op_f32(-var_1.b)));
    let var_4 = ~(~(~(~(~vec2<u32>(1u, 1u)))));
    return vec2<u32>(countOneBits(_wgslsmith_div_u32(var_4.x, var_4.x)), select(u_input.c.x, func_2(min(abs(u_input.c), vec4<u32>(5407u, 0u, u_input.a, u_input.a)), !select(false, false, var_2), Struct_3(-arg_2.x, Struct_2(arg_1, var_0.zww, u_input.d.zyw, arg_0), -327f, ~var_0)).x, arg_1.b > -586f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(func_5(func_1(), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(749f, -829f))), vec4<bool>(false, any(vec4<bool>(false, false, true, false)), func_1().a, true), any(vec3<bool>(true, false, false))), _wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(17150i, u_input.e, u_input.b, 2147483647i), vec4<i32>(31395i, u_input.e, 0i, u_input.b)), ~reverseBits(vec4<i32>(u_input.e, 24737i, 6172i, u_input.b)))), countOneBits(func_2(_wgslsmith_div_vec4_u32(firstLeadingBit(u_input.d), ~vec4<u32>(1890u, 1690u, 6265u, u_input.a)), true, Struct_3(_wgslsmith_add_i32(u_input.e, u_input.b), Struct_2(Struct_1(true, 1460f, vec4<bool>(true, true, false, false), false), vec3<i32>(u_input.e, u_input.e, 47223i), vec3<u32>(51346u, 1u, 4294967295u), Struct_1(false, 595f, vec4<bool>(false, false, true, true), true)), _wgslsmith_f_op_f32(select(-257f, 1023f, false)), vec4<i32>(1i, 0i, 24751i, u_input.b))).zx));
    var_0 = ~(~u_input.d.wx);
    let var_1 = reverseBits(vec3<i32>(u_input.b, 0i, -_wgslsmith_clamp_i32(u_input.e, u_input.b, -63216i)));
    var_0 = vec2<u32>(~42076u, 1u);
    global0 = var_1.x;
    var_0 = ~u_input.c.wz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(549f, 1238f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1148f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1010f, -383f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2247f, -667f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1100f, -1092f) + vec2<f32>(1470f, -849f))), !select(vec2<bool>(true, false), vec2<bool>(false, false), false)))), _wgslsmith_mult_u32(128471u, var_0.x));
}

