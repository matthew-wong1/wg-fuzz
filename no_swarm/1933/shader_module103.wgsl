struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2017f + 1853f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(884f - 420f))))))), Struct_1(~(~select(vec4<u32>(arg_2, arg_2, arg_2, arg_2), vec4<u32>(arg_2, arg_2, 1u, 4294967295u), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2251f + 1135f) - 817f))), ~countOneBits(vec4<u32>(4294967295u, 0u, 4294967295u, 1u) & ~vec4<u32>(76264u, 1u, 64294u, arg_2)), Struct_1(~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 42654u, arg_2, 38479u), vec4<u32>(38215u, arg_2, 0u, arg_2) ^ vec4<u32>(11512u, arg_2, arg_2, arg_2)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-524f)))))));
    let var_1 = Struct_3(196f, arg_0, Struct_1(var_0.c, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_f_op_f32(-var_0.d.b)), 1f)), Struct_1(vec4<u32>(_wgslsmith_sub_u32(0u, var_0.b.a.x), ~0u, var_0.d.a.x, ~var_0.b.a.x), _wgslsmith_f_op_f32(max(889f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-352f, var_0.a)))), 1f, -1092f), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(695f, var_1.d.b, false)))), -469f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.b, -752f)))), vec3<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), false, u_input.a < var_1.b.x))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.b), var_0.d.b) - var_0.a), _wgslsmith_f_op_f32(-var_0.b.b), 1000f));
    let var_3 = var_0;
    let var_4 = 55149u;
    return 2358i;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    let var_0 = 9573u;
    var var_1 = vec4<u32>(_wgslsmith_div_u32(~var_0, var_0) << (~_wgslsmith_clamp_u32(55068u, 0u, 26297u) % 32u), arg_2.d.a.x, ~firstLeadingBit(_wgslsmith_div_u32(arg_2.d.a.x, 4294967295u)), (arg_3.d.a.x >> (firstTrailingBit(arg_2.d.a.x) % 32u)) | arg_3.c.x) & ~reverseBits(~(~arg_0.a));
    var_1 = ~(~arg_2.c.a);
    var var_2 = arg_3;
    return !(abs(-2147483647i) <= (abs(-2147483647i) >> (_wgslsmith_clamp_u32(arg_2.d.a.x, 4294967295u, arg_2.d.a.x) % 32u)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    var var_0 = abs(~arg_1.x);
    var var_1 = func_4(Struct_1(~vec4<u32>(~arg_1.x, arg_1.x, 1u & arg_1.x, countOneBits(arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) * _wgslsmith_f_op_f32(max(1302f, _wgslsmith_f_op_f32(ceil(1233f)))))), func_3(vec2<i32>(u_input.a, -1i), u_input.a, ~arg_1.x), Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(max(arg_0, arg_0))), _wgslsmith_f_op_f32(-arg_0))), firstTrailingBit(vec2<i32>(0i, u_input.a) << ((arg_1.xy & vec2<u32>(arg_1.x, 4294967295u)) % vec2<u32>(32u))), Struct_1(vec4<u32>(arg_1.x, _wgslsmith_div_u32(arg_1.x, 0u), 1u, arg_1.x), 655f), Struct_1(arg_1, arg_0)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1637f)) - arg_0), Struct_1(vec4<u32>(4294967295u, ~1u, arg_1.x, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 4021f) * _wgslsmith_f_op_f32(abs(arg_0)))), ~arg_1, Struct_1(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1.x, 0u, arg_1.x), arg_1)), _wgslsmith_div_f32(arg_0, 1221f))));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -374f, arg_0) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(-181f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-652f + arg_0) - arg_0), 911f, arg_0))));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.x - arg_0))), Struct_1(abs(~abs(vec4<u32>(0u, arg_1.x, 9338u, arg_1.x))), arg_0), vec4<u32>(1u, arg_1.x, 12218u, arg_1.x), Struct_1(_wgslsmith_add_vec4_u32(arg_1 ^ arg_1, ~(arg_1 ^ vec4<u32>(arg_1.x, 57914u, arg_1.x, 1u))), -994f));
    return ~1u;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<f32>) -> vec3<u32> {
    var var_0 = vec4<f32>(1689f, 607f, arg_1.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1026f - _wgslsmith_f_op_f32(-508f * arg_2.x)), -227f), _wgslsmith_f_op_f32(min(arg_1.d.b, arg_2.x))));
    var var_1 = vec2<u32>(4294967295u, 4294967295u);
    var var_2 = arg_1.c.x;
    var_1 = reverseBits(vec2<u32>(_wgslsmith_sub_u32(0u | var_1.x, arg_0), ~(~func_2(-355f, vec4<u32>(arg_1.d.a.x, 1u, var_1.x, var_1.x)))));
    var var_3 = 2329u;
    return ~(~vec3<u32>(72046u, arg_1.c.x >> (abs(1u) % 32u), _wgslsmith_add_u32(var_1.x, arg_0)));
}

fn func_5(arg_0: u32, arg_1: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, 1595f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -858f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(342f, 673f) + vec2<f32>(-730f, 545f)))))), vec2<f32>(_wgslsmith_div_f32(-1178f, -160f), _wgslsmith_f_op_f32(f32(-1f) * -410f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(240f, -3907f)), _wgslsmith_f_op_f32(f32(-1f) * -653f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(234f, -2712f))))));
    var var_1 = firstTrailingBit((~(-12878i) | u_input.a) >> (~arg_0 % 32u)) > ~2147483647i;
    return vec3<bool>(func_4(Struct_1(vec4<u32>(0u ^ arg_0, 75369u >> (arg_0 % 32u), ~1u, 13868u), _wgslsmith_f_op_f32(var_0.x + -972f)), arg_1, Struct_3(-901f, _wgslsmith_mult_vec2_i32(~vec2<i32>(arg_1, u_input.a), select(vec2<i32>(6432i, 16397i), vec2<i32>(u_input.a, arg_1), false)), Struct_1(vec4<u32>(76297u, arg_0, arg_0, 83667u) & vec4<u32>(1u, 4294967295u, 128807u, arg_0), var_0.x), Struct_1(~vec4<u32>(arg_0, arg_0, 1u, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1792f))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), Struct_1(~vec4<u32>(0u, arg_0, arg_0, arg_0), 648f), ~abs(vec4<u32>(8209u, 4294967295u, 0u, arg_0)), Struct_1(vec4<u32>(arg_0, 26554u, arg_0, arg_0), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_sub_u32(~max(1u, arg_0), _wgslsmith_mult_u32(arg_0, 0u)) <= arg_0, !all(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-2381f))))));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-14533i, u_input.a, u_input.a, u_input.a) << (firstTrailingBit(vec4<u32>(20209u, 32071u, 15436u, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(-u_input.a, u_input.a & -2147483647i, u_input.a, u_input.a)), firstTrailingBit(-2147483647i) << (0u % 32u), _wgslsmith_add_i32(u_input.a, ~0i), abs(u_input.a)) >> (vec4<u32>(0u, abs(countOneBits(firstTrailingBit(4294967295u))), _wgslsmith_mult_u32(26932u, 52501u), _wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8415u, 4294967295u, 11015u), vec4<u32>(35252u, 29315u, 32969u, 1u))), ~(~16648u), 1u)) % vec4<u32>(32u));
    var var_2 = func_5(_wgslsmith_clamp_u32(select(_wgslsmith_mult_u32(16714u, 2844u), 17866u, all(vec4<bool>(false, true, true, false))) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(61344u, 8307u, 0u), vec3<u32>(4294967295u, 0u, 0u)) % 32u), firstTrailingBit(firstLeadingBit(35374u)), _wgslsmith_dot_vec3_u32(func_1(21710u, Struct_2(var_0, Struct_1(vec4<u32>(77213u, 4294967295u, 4294967295u, 1u), var_0), vec4<u32>(4294967295u, 5179u, 644u, 0u), Struct_1(vec4<u32>(1u, 33918u, 101611u, 1u), 1422f)), vec2<f32>(1000f, var_0), vec4<f32>(var_0, var_0, var_0, 1260f)) ^ ~vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(~0u, _wgslsmith_mult_u32(24540u, 0u), 0u))), _wgslsmith_mult_i32(1i, _wgslsmith_div_i32(~_wgslsmith_add_i32(0i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -2147483647i, -4230i), vec4<i32>(u_input.a, 2147483647i, 47933i, 9496i)))));
    var var_3 = Struct_4(Struct_3(var_0, select(-vec2<i32>(u_input.a, -1i) << (max(vec2<u32>(41085u, 0u), vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), -(~var_1.yw), select(true, var_2.x, false) | true), Struct_1(vec4<u32>(abs(32348u), 1u, ~71271u, 1u), _wgslsmith_f_op_f32(round(var_0))), Struct_1(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, 559f, false)), var_0)))));
    var_2 = select(vec3<bool>(true, var_2.x, true), func_5(~(~(~45281u)), (2147483647i | abs(var_1.x)) | firstLeadingBit(~var_1.x)), true);
    let var_4 = ~var_3.a.c.a.x;
    var_3 = Struct_4(Struct_3(var_0, ~abs(vec2<i32>(var_1.x, var_1.x)) | (_wgslsmith_mod_vec2_i32(var_1.wy, vec2<i32>(var_3.a.b.x, -16953i)) << (max(vec2<u32>(var_4, var_4), vec2<u32>(var_3.a.d.a.x, 40208u)) % vec2<u32>(32u))), Struct_1(_wgslsmith_mult_vec4_u32(abs(var_3.a.d.a), ~var_3.a.d.a), _wgslsmith_f_op_f32(-var_3.a.d.b)), Struct_1(firstTrailingBit(~vec4<u32>(0u, var_3.a.c.a.x, 34344u, var_4)), _wgslsmith_f_op_f32(-var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(~1u, var_4), _wgslsmith_dot_vec3_u32(abs(var_3.a.c.a.xzz) | vec3<u32>(var_3.a.d.a.x, 30499u, var_4), ~firstTrailingBit(var_3.a.c.a.yxy)), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(var_3.a.c.a.wy, var_3.a.d.a.yx), var_3.a.d.a.yy), var_3.a.d.a.x));
}

