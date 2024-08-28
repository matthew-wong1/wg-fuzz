struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1035f, 2449f)))))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~(-vec4<i32>(2147483647i, 5848i, 0i, 0i)), ~(-vec4<i32>(u_input.a, 0i, arg_0.x, 19536i))), firstTrailingBit(vec4<i32>(~arg_0.x, -20055i, reverseBits(-2147483647i), countOneBits(41148i)))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_div_i32(firstLeadingBit(-80086i), -25132i), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), any(vec3<bool>(true, false, false)))));
    return ~u_input.c.x;
}

fn func_2() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1067f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(562f, 2244f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(149f, -625f)))), true)), true));
    var_0 = 1000f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-499f)));
    var var_1 = -vec2<i32>(_wgslsmith_sub_i32(-669i, i32(-1i) * -3859i), -(u_input.d | -8680i) >> (~19293u % 32u));
    let var_2 = Struct_2(_wgslsmith_dot_vec2_u32(firstLeadingBit(min(u_input.c.zx ^ u_input.c.xz, u_input.c.zy)), countOneBits(~vec2<u32>(u_input.c.x, 15689u))), Struct_1(vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.c.x), _wgslsmith_div_u32(u_input.c.x & u_input.c.x, u_input.b << (0u % 32u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6270u, 0u, 4294967295u, u_input.c.x), vec4<u32>(0u, 4294967295u, 1u, u_input.c.x)), u_input.c.x), ~_wgslsmith_mult_u32(u_input.c.x, 35882u))), vec2<i32>(-(~2147483647i), 1i) >> ((vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.zz), ~u_input.b) >> (vec2<u32>(max(5375u, 20656u), ~u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return vec4<u32>(var_2.a, 0u, func_3(~abs(var_2.c)), _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(~(~var_2.a), 23241u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = arg_0.zzx;
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, arg_3.b.a.x, arg_3.b.a.x), _wgslsmith_add_vec4_u32(arg_3.b.a, vec4<u32>(20772u, arg_3.b.a.x, arg_3.b.a.x, 7998u))), func_2()), vec4<u32>(_wgslsmith_mod_u32(0u, arg_3.a) ^ _wgslsmith_mod_u32(u_input.b, arg_3.b.a.x), ~(~u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, arg_3.a, arg_3.b.a.x), arg_3.b.a), arg_3.b.a.x), ~func_2() | arg_3.b.a));
    var_1 = arg_3.b;
    var var_2 = any(arg_2);
    var_2 = false;
    return Struct_3(_wgslsmith_f_op_vec3_f32(abs(arg_0.zxy)), vec4<i32>(~(~(-28201i)), countOneBits(~u_input.e), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_3.c.x, 3714i, arg_3.c.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 0i, 26469i), vec3<i32>(arg_3.c.x, u_input.e, 4877i))), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_3.c.x, 38954i, -2147483647i, u_input.e), vec4<i32>(1i, -2147483647i, 2147483647i, u_input.a))) & ((vec4<i32>(-1i) * -vec4<i32>(u_input.d, -10747i, arg_3.c.x, -49232i)) << (vec4<u32>(~var_1.a.x, 9531u, u_input.b, arg_3.a) % vec4<u32>(32u))), true, u_input.d, vec4<bool>(true, !any(select(vec3<bool>(true, arg_2.x, arg_1.x), vec3<bool>(true, false, false), arg_2)), false, true));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_4(arg_0.a, Struct_1(arg_0.b.a), u_input.b >> (~(~_wgslsmith_add_u32(u_input.c.x, 36828u)) % 32u), 1183f);
    var_0 = Struct_4(arg_0.a, arg_0.b, _wgslsmith_dot_vec4_u32(var_0.b.a, ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, arg_0.a.b.a.x, 1u, 0u), select(var_0.b.a, arg_0.a.b.a, arg_2.e))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(377f, -744f))))), _wgslsmith_f_op_f32(326f * _wgslsmith_f_op_f32(-arg_2.a.x)))));
    var var_1 = Struct_1(var_0.a.b.a);
    var_1 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(var_1.a, var_1.a), arg_0.b.a));
    var_1 = arg_0.a.b;
    return -1862f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(502f * _wgslsmith_f_op_f32(f32(-1f) * -544f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(729f, 225f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-863f)), _wgslsmith_f_op_f32(max(824f, 566f)), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f + 1239f))))));
    var_1 = -1851f;
    var var_2 = Struct_1(min(vec4<u32>(~u_input.c.x, ~var_0.x, var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x) << (var_0.xz % vec2<u32>(32u)), vec2<u32>(12309u, 4294967295u))), vec4<u32>(var_0.x, u_input.b, ~18378u, 18182u)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-516f, -219f)) + _wgslsmith_div_f32(-396f, 1965f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -642f) + _wgslsmith_f_op_f32(f32(-1f) * -510f))))));
    var var_3 = abs(~var_2.a.yw) & ~u_input.c.zy;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_4(Struct_2(var_0.x, Struct_1(vec4<u32>(0u, var_3.x, u_input.c.x, 42816u)), vec2<i32>(u_input.a, u_input.e)), Struct_1(var_2.a), u_input.b, -1006f), vec4<i32>(-1i, u_input.e, u_input.d, -42760i) ^ vec4<i32>(-2147483647i, u_input.e, u_input.d, u_input.d), func_1(vec4<f32>(658f, 744f, 1431f, -1019f), vec2<bool>(false, false), vec3<bool>(false, false, false), Struct_2(var_0.x, Struct_1(var_2.a), vec2<i32>(-21972i, 2850i))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1313f * 563f), func_1(vec4<f32>(-989f, 549f, 278f, 1182f), vec2<bool>(true, false), vec3<bool>(true, false, true), Struct_2(var_0.x, Struct_1(vec4<u32>(var_3.x, 82372u, 84345u, var_2.a.x)), vec2<i32>(u_input.a, 24786i))).a.x, all(vec2<bool>(false, true))))), vec2<f32>(1f, 1f))));
    var_2 = Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(69687u, u_input.c.x, 3510u, 4294967295u) << (~vec4<u32>(var_2.a.x, 2107u, 106001u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(var_2.a, ~vec4<u32>(0u, u_input.c.x, var_0.x, 42504u))), firstTrailingBit(~var_2.a) >> ((min(vec4<u32>(var_3.x, u_input.b, 1u, var_0.x), var_2.a) & (vec4<u32>(1u, 102215u, var_2.a.x, var_0.x) | vec4<u32>(7934u, u_input.b, var_3.x, var_2.a.x))) % vec4<u32>(32u))));
    var var_5 = -1122i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_4.x, var_4.x, 967f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-627f, 963f, var_4.x, var_4.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, 994f, -1696f))), true)))));
}

