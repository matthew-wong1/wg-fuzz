struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3 = Struct_3(vec4<f32>(786f, -1581f, 402f, -135f));

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec4<f32>(-980f, -969f, -520f, -1883f)), Struct_3(vec4<f32>(1377f, 449f, -312f, -176f)), Struct_3(vec4<f32>(-164f, 616f, -2779f, 120f)), Struct_3(vec4<f32>(-496f, -221f, 150f, 1371f)), Struct_3(vec4<f32>(186f, 2157f, 720f, 1000f)), Struct_3(vec4<f32>(736f, 867f, 508f, 1127f)), Struct_3(vec4<f32>(416f, 182f, -1701f, 1387f)), Struct_3(vec4<f32>(-795f, 353f, -193f, -1401f)), Struct_3(vec4<f32>(-262f, 639f, -378f, -1000f)), Struct_3(vec4<f32>(-563f, 1618f, -1000f, -657f)), Struct_3(vec4<f32>(1850f, -875f, 536f, -823f)), Struct_3(vec4<f32>(450f, -1688f, 1000f, -1000f)), Struct_3(vec4<f32>(1028f, 1538f, -299f, -958f)), Struct_3(vec4<f32>(-1222f, 1095f, 766f, -773f)), Struct_3(vec4<f32>(1000f, -946f, -1319f, 843f)), Struct_3(vec4<f32>(176f, -1455f, -788f, 1276f)), Struct_3(vec4<f32>(482f, -151f, 1426f, 764f)), Struct_3(vec4<f32>(1267f, 497f, 522f, 552f)), Struct_3(vec4<f32>(2447f, -499f, 1000f, -1716f)), Struct_3(vec4<f32>(755f, 786f, -972f, -1334f)));

var<private> global3: vec2<f32> = vec2<f32>(1573f, -397f);

var<private> global4: Struct_2 = Struct_2(Struct_1(2088f, vec3<i32>(1i, -1i, -1i), true, 2147483647i, true), Struct_1(-824f, vec3<i32>(0i, -18294i, 35580i), false, -26993i, true), vec3<f32>(-278f, -708f, 264f), Struct_1(-868f, vec3<i32>(0i, 2147483647i, -36297i), false, 0i, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: u32, arg_3: Struct_4) -> vec2<f32> {
    global2 = array<Struct_3, 20>();
    var var_0 = -2147483647i ^ u_input.d;
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_3.a.a.xw + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, 1483f) + arg_3.a.a.ww)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(745f, global3.x))), vec2<bool>(arg_3.b.x, all(vec3<bool>(false, false, true))))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1168f)), _wgslsmith_f_op_f32(select(-268f, _wgslsmith_f_op_f32(round(-2594f)), any(vec4<bool>(arg_3.b.x, arg_0.x, arg_3.b.x, false))))) + arg_3.a.a.wx));
    global0 = _wgslsmith_add_i32(-firstTrailingBit(_wgslsmith_sub_i32(0i, select(arg_3.c, global4.b.d, arg_0.x))), _wgslsmith_sub_i32(countOneBits(-18672i), u_input.d));
    global4 = Struct_2(Struct_1(-181f, -vec3<i32>(u_input.a.x, countOneBits(arg_3.c), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.d), vec2<i32>(arg_3.c, u_input.d))), false, _wgslsmith_add_i32(u_input.d, abs(_wgslsmith_add_i32(-895i, -1i))), any(vec4<bool>(arg_1 < 6034u, all(arg_3.b), global4.d.c, !arg_3.b.x))), Struct_1(_wgslsmith_f_op_f32(min(arg_3.a.a.x, 1496f)), global4.a.b, true, reverseBits(abs(1i)), false), global1.a.wwx, global4.a);
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3.a.a.x, global3.x)) + _wgslsmith_f_op_f32(arg_3.a.a.x + arg_3.a.a.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-290f)))))));
}

fn func_2() -> vec4<u32> {
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-590f - global1.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(true, false, global4.a.e), 4294967295u, 7460u, Struct_4(global2[_wgslsmith_index_u32(u_input.c, 20u)], vec2<bool>(global4.d.e, false), global4.b.d)))))) + global1.a.yz));
    var var_0 = Struct_4(global2[_wgslsmith_index_u32(0u, 20u)], select(select(!vec2<bool>(true, global4.d.e), vec2<bool>(select(global4.b.c, false, global4.b.c), -1i <= global4.d.d), !select(vec2<bool>(global4.a.c, true), vec2<bool>(true, false), global4.b.c)), vec2<bool>(all(select(vec2<bool>(false, global4.b.e), vec2<bool>(global4.b.c, false), global4.b.e)), true), select(select(select(vec2<bool>(global4.b.c, global4.b.e), vec2<bool>(false, false), vec2<bool>(false, true)), !vec2<bool>(global4.a.e, global4.d.e), false), !select(vec2<bool>(false, global4.b.c), vec2<bool>(false, false), true), global4.b.c)), ~0i);
    var var_1 = ~_wgslsmith_mod_u32(~_wgslsmith_mult_u32(min(u_input.c, u_input.c), u_input.c >> (0u % 32u)), 31680u);
    var var_2 = vec2<i32>(u_input.a.x, var_0.c);
    global3 = _wgslsmith_f_op_vec2_f32(-var_0.a.a.yz);
    return vec4<u32>(~_wgslsmith_mod_u32(select(u_input.c, ~1u, !global4.a.e), _wgslsmith_div_u32(1u, max(u_input.c, 2970u))), 4294967295u, firstLeadingBit(~firstLeadingBit(~u_input.c)), ~(~(1u | min(u_input.c, 4294967295u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    var var_0 = !(!any(arg_1.wzz) && true);
    var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-162f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2)), 965f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(368f, global1.a.x, arg_1.x)), 615f, arg_1.x)))));
    var_1 = -1000f;
    global2 = array<Struct_3, 20>();
    return -351f;
}

fn func_1() -> Struct_1 {
    let var_0 = firstTrailingBit(54423u);
    var var_1 = -322f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_4(func_2(), select(!vec4<bool>(global4.b.c, global4.b.e, global4.a.e, true), select(!vec4<bool>(true, global4.b.c, true, global4.a.c), select(vec4<bool>(false, global4.d.c, true, false), vec4<bool>(global4.d.c, false, global4.b.c, global4.b.c), vec4<bool>(global4.d.c, global4.b.e, global4.a.e, global4.b.e)), true), global4.b.c), 1058f)), vec3<i32>(_wgslsmith_mult_i32(~(-global4.b.d), ~u_input.b), reverseBits(16196i), -12733i), true, -u_input.e.x, true);
    let var_3 = 0u;
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(min(1453f, global4.c.x)))), 2661f)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.a, _wgslsmith_f_op_f32(-global4.d.a))), _wgslsmith_div_f32(-1551f, _wgslsmith_f_op_f32(global1.a.x + global4.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))), global4.d.b, !((var_2.e && global4.d.e) && false) & all(!vec2<bool>(true, global4.a.e)), -31070i, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(global3.x - 565f))))))));
    global4 = Struct_2(global4.d, func_1(), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 837f, -1932f) * global4.c)))), global4.d);
    let var_1 = global1.a.x;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))))), select(~(~vec3<i32>(u_input.a.x, 1i, -18529i)), u_input.e, true), global4.a.e, global4.a.d, true), func_1(), vec3<f32>(_wgslsmith_f_op_f32(func_4(~(vec4<u32>(u_input.c, 12122u, 23010u, u_input.c) >> (vec4<u32>(64892u, 16160u, u_input.c, 32260u) % vec4<u32>(32u))), select(select(vec4<bool>(global4.b.c, global4.d.c, true, true), vec4<bool>(true, global4.d.e, global4.d.e, true), global4.a.c), !vec4<bool>(global4.a.e, global4.d.c, global4.b.c, false), select(vec4<bool>(global4.a.e, false, global4.a.e, global4.b.e), vec4<bool>(false, global4.d.e, false, false), vec4<bool>(false, global4.b.e, true, true))), global1.a.x)), -239f, var_0), global4.d);
    var var_3 = ~u_input.c;
    global2 = array<Struct_3, 20>();
    global2 = array<Struct_3, 20>();
    var var_4 = Struct_2(func_1(), var_2.d, var_2.c, Struct_1(global4.b.a, countOneBits(~firstTrailingBit(vec3<i32>(8498i, 2147483647i, var_2.d.b.x))), !(!var_2.a.e), -(~1i), -global4.a.d != -_wgslsmith_sub_i32(u_input.d, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(75898u, u_input.c, u_input.c) & vec3<u32>(u_input.c, u_input.c, 0u)), func_2().yzx, u_input.b >= _wgslsmith_sub_i32(global4.a.d, var_2.d.d)), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(62482u, 4294967295u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(8197u, u_input.c, 0u)), ~firstTrailingBit(vec3<u32>(u_input.c, 1u, 20999u)))), -max(vec4<i32>(-10293i, -2147483647i, global4.a.b.x, -14043i) << (vec4<u32>(30892u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u)), -vec4<i32>(1i, -4941i, var_2.b.b.x, 10286i)) & vec4<i32>(var_2.a.b.x, var_4.b.d, reverseBits(~var_2.a.b.x), _wgslsmith_div_i32(global4.d.d, u_input.b | 25529i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -18519i), var_2.d.b.xz), -5964i, firstTrailingBit(0i), _wgslsmith_clamp_i32(var_2.a.b.x, 0i, -27230i)), vec4<i32>(select(var_4.b.b.x, var_4.a.d, true), global4.d.d, firstTrailingBit(34619i), -10376i)), ~firstLeadingBit(-u_input.a.x), reverseBits(20646i | var_4.a.b.x), -global4.a.b.x), global1.a.yw, 21973u);
}

