struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: vec4<f32>,
    e: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_dot_vec4_i32(min(abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(8292i, -1i, u_input.a.x, 2147483647i), u_input.a)), select(vec4<i32>(u_input.b.x, u_input.b.x, -1i, firstLeadingBit(-2147483647i)), u_input.a, true)), u_input.a);
    var_0 = _wgslsmith_mult_i32(arg_1.a.b, 0i) ^ u_input.a.x;
    var var_1 = arg_1.a.a;
    var var_2 = Struct_4(var_1.ww | (select(var_1.yw, vec2<u32>(55102u, 0u), vec2<bool>(true, true)) & _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.yw, vec2<u32>(var_1.x, 21474u)), ~var_1.zw)), u_input.a);
    return firstLeadingBit(u_input.a.zz | ((vec2<i32>(u_input.b.x, u_input.c) << (vec2<u32>(1u, arg_1.a.a.x) % vec2<u32>(32u))) | _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, var_2.b.x), var_2.b.xx))) >> (~(~reverseBits(var_1.xx) ^ _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, 96511u), vec2<u32>(arg_1.a.a.x, var_2.a.x)), ~vec2<u32>(1u, 0u))) % vec2<u32>(32u));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>) -> vec2<f32> {
    let var_0 = true;
    let var_1 = arg_0.b.x;
    var var_2 = _wgslsmith_mod_vec4_i32(u_input.a, u_input.a);
    let var_3 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, 1u), vec3<u32>(4294967295u, 20478u, 0u)), arg_0.a.x) >> (firstLeadingBit(~vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), vec2<u32>(abs(arg_0.a.x), min(min(739u, arg_0.a.x), 22397u))), abs(arg_0.a.x), arg_0.a.x);
    let var_4 = Struct_2(vec4<u32>(~(~31782u), abs(~var_3.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 1u, 4294967295u, var_3.x) << (vec4<u32>(0u, 1u, 90032u, 45131u) % vec4<u32>(32u)), vec4<u32>(355u, var_3.x, 10201u, arg_0.a.x)), 0u) >> (~(~abs(vec4<u32>(17953u, 22791u, 10001u, 0u))) % vec4<u32>(32u)), var_1, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), -1483f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-117f - 582f), _wgslsmith_f_op_f32(sign(666f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-439f - 988f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1156f, 1345f, -585f)))))), -1239f, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, -904f)), _wgslsmith_f_op_f32(max(-909f, 2830f))), 1f, 631f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(342f))))), true);
    return var_4.d.c.wz;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-936f)) + arg_1.x);
    var var_1 = -29692i;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-980f + 798f), arg_1.x)));
    var_1 = _wgslsmith_mult_i32(5762i, u_input.b.x);
    var_0 = arg_1.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-349f + _wgslsmith_f_op_f32(134f + arg_1.x))))), 550f);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_0, 1u | arg_0), reverseBits(select(0u, arg_0, arg_2.x))), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(69487u, arg_0), vec2<u32>(17522u, 56418u))), vec2<u32>(_wgslsmith_mod_u32(1u ^ arg_0, ~0u), 4294967295u)), vec4<i32>(~u_input.a.x, -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-13746i, arg_1.x, 9652i, -58324i)), ~arg_1.x), u_input.a.x, -u_input.b.x));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1479f - -923f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-777f, 378f))))))));
    var_1 = _wgslsmith_f_op_f32(func_4(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1202f, -547f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-353f, -1459f)))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(801f, -797f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1870f, 547f))), _wgslsmith_f_op_vec2_f32(func_3(var_0, arg_2.zxy)))))));
    var_1 = 1f;
    let var_2 = ((_wgslsmith_mod_i32(u_input.c, 0i) << (select(var_0.a.x, abs(var_0.a.x), true) % 32u)) >> (_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.a.x, var_0.a.x), 43631u) % 32u)) == abs(min(firstTrailingBit(min(arg_1.x, 0i)), var_0.b.x));
    return Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(~(~17375u), 64928u, arg_0, ~_wgslsmith_mod_u32(arg_0, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, arg_0, 37661u, var_0.a.x), ~vec4<u32>(arg_0, var_0.a.x, var_0.a.x, arg_0)) & _wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, 2265u, 25733u, arg_0), vec4<u32>(var_0.a.x, 1u, arg_0, arg_0), true), countOneBits(vec4<u32>(arg_0, var_0.a.x, 0u, arg_0)))), reverseBits(i32(-1i) * -33107i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-988f, 1000f)), 800f) + _wgslsmith_f_op_f32(select(-480f, _wgslsmith_f_op_f32(f32(-1f) * -169f), !var_2))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(257f, -100f)) + -397f))))), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(327f, 279f, 1139f) - vec3<f32>(-1227f, 438f, -1454f)) * vec3<f32>(-1490f, -961f, 1433f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(771f - 654f) + _wgslsmith_f_op_f32(750f + -153f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(176f, -1190f, -948f, 150f) - vec4<f32>(-874f, 783f, 1991f, -1952f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1664f, -488f, -1532f, -1088f) - vec4<f32>(320f, -1643f, 681f, 1901f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-945f, 654f, 921f, 350f)), arg_2)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(max(_wgslsmith_mod_u32(67556u, abs(~1u)), ~countOneBits(~4294967295u)), _wgslsmith_mod_vec2_i32((reverseBits(vec2<i32>(-1i, -22857i)) ^ func_1(false, Struct_3(Struct_2(vec4<u32>(0u, 123723u, 58554u, 0u), u_input.a.x, 385f, Struct_1(vec3<f32>(-934f, -862f, 420f), -105f, vec4<f32>(653f, -165f, -176f, 229f)), true), vec2<bool>(false, true), Struct_2(vec4<u32>(32456u, 4294967295u, 46282u, 1u), u_input.a.x, -797f, Struct_1(vec3<f32>(-533f, -1908f, 1071f), -1159f, vec4<f32>(-836f, 1103f, 656f, 1000f)), true), vec4<f32>(1000f, 1230f, -275f, 573f), u_input.a.x))) | u_input.a.ww, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, 7788i) << (_wgslsmith_div_vec2_u32(vec2<u32>(70753u, 17598u), vec2<u32>(77543u, 1u)) % vec2<u32>(32u)), select(u_input.a.wy, -vec2<i32>(0i, u_input.c), true))), vec4<bool>(true, true, true, true));
    var var_1 = Struct_4(var_0.a.zy << (~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<u32>(var_0.a.x, 0u, 4294967295u, 35971u)), _wgslsmith_add_u32(var_0.a.x, var_0.a.x)) % vec2<u32>(32u)), ~select(u_input.a, _wgslsmith_clamp_vec4_i32(firstLeadingBit(u_input.a), vec4<i32>(-26212i, -1i, -11171i, 1i), u_input.a), all(!vec3<bool>(var_0.e, false, false))));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(var_0.d.c.xzw));
    var var_3 = _wgslsmith_mult_vec3_u32(var_0.a.xzw, max(max(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, 1u, 0u), vec3<u32>(61317u, 4294967295u, var_1.a.x)), reverseBits(var_0.a.zzz)), var_0.a.xxz), firstLeadingBit(vec3<u32>(4294967295u, var_1.a.x, var_1.a.x)) ^ ~var_0.a.yzz));
    let var_4 = select(var_1.b.xy, vec2<i32>(-1i, ~(-u_input.c >> ((1u << (0u % 32u)) % 32u))), !vec2<bool>(true, all(!vec4<bool>(var_0.e, true, false, true))));
    let var_5 = func_2(~(~var_0.a.x ^ reverseBits(0u)), _wgslsmith_div_vec2_i32(abs(var_1.b.zy) | -min(vec2<i32>(var_0.b, var_4.x), vec2<i32>(2147483647i, -25240i)), -(~vec2<i32>(-1i, var_0.b))), select(!select(!vec4<bool>(true, var_0.e, var_0.e, var_0.e), select(vec4<bool>(var_0.e, true, false, true), vec4<bool>(false, var_0.e, false, true), vec4<bool>(false, var_0.e, var_0.e, true)), true), select(!select(vec4<bool>(var_0.e, true, var_0.e, var_0.e), vec4<bool>(var_0.e, false, var_0.e, false), vec4<bool>(false, true, true, var_0.e)), !(!vec4<bool>(false, var_0.e, false, var_0.e)), vec4<bool>(true, true, true, true)), select(vec4<bool>(!var_0.e, var_0.e, var_0.e, true), !vec4<bool>(true, false, false, var_0.e), !all(vec4<bool>(var_0.e, var_0.e, var_0.e, true)))));
    var_3 = min(reverseBits(~_wgslsmith_sub_vec3_u32(~vec3<u32>(var_1.a.x, 71530u, var_1.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.a.x, 37702u), var_5.a.yzy))), vec3<u32>(var_5.a.x, ~(var_0.a.x | (var_3.x | 0u)), ~var_3.x));
    let var_6 = select(select(select(vec3<bool>(var_0.a.x < 73951u, true, var_5.d.a.x != -921f), select(vec3<bool>(var_0.e, var_5.e, var_5.e), select(vec3<bool>(true, var_5.e, true), vec3<bool>(false, var_0.e, false), var_0.e), true), !(var_5.e | true)), select(!vec3<bool>(false, var_0.e, false), !select(vec3<bool>(false, true, false), vec3<bool>(var_0.e, var_0.e, var_0.e), var_0.e), var_0.e), vec3<bool>(var_0.e, !var_0.e, select(var_5.e, true, !var_0.e))), vec3<bool>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, var_0.a.x, 0u), var_0.a), ~var_1.a.x) > _wgslsmith_mult_u32(var_3.x << (var_0.a.x % 32u), 0u), true || !any(vec3<bool>(true, var_0.e, false)), func_2(var_3.x, ~min(var_1.b.wy, vec2<i32>(var_5.b, var_1.b.x)), !(!vec4<bool>(true, false, var_5.e, true))).e), any(!vec2<bool>(var_1.a.x >= var_1.a.x, var_0.e)));
    var_3 = firstTrailingBit(var_5.a.yww << (vec3<u32>(~var_5.a.x, var_0.a.x, 1u) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs((firstTrailingBit(vec4<u32>(12104u, var_0.a.x, var_5.a.x, 1u)) << (var_5.a % vec4<u32>(32u))) | ~(vec4<u32>(1u, var_5.a.x, 86428u, var_0.a.x) | var_5.a)), reverseBits(_wgslsmith_div_u32(var_1.a.x, 4294967295u)));
}

