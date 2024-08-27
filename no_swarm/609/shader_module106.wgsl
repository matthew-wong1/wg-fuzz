struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32) -> vec3<u32> {
    var var_0 = ~arg_2 & max(select(~arg_0.a.e | (arg_2 ^ 57353u), _wgslsmith_mult_u32(arg_1.x, 26398u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.x, 5221u, 44068u), vec4<u32>(43926u, u_input.b.x, arg_1.x, 51504u)) % 32u), !arg_0.a.a.x), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_2, 4294967295u), ~arg_1.x));
    var_0 = 19221u;
    var_0 = _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(~arg_1.x, arg_1.x, arg_0.a.e & 63498u, min(30391u, u_input.d))), vec4<u32>(14821u, countOneBits(1u) >> (_wgslsmith_mult_u32(52713u, arg_0.a.d.x) % 32u), 0u, 4294967295u << (~4294967295u % 32u)) << (firstTrailingBit(countOneBits(~vec4<u32>(51563u, 41295u, 4294967295u, arg_1.x))) % vec4<u32>(32u)));
    let var_1 = arg_0;
    let var_2 = Struct_3(~(~_wgslsmith_clamp_u32(50244u, 0u, max(4294967295u, arg_1.x))), select(vec3<bool>(arg_0.a.a.x, any(vec3<bool>(var_1.a.a.x, arg_0.a.a.x, arg_0.a.a.x)), true), vec3<bool>(true, any(select(vec4<bool>(var_1.a.a.x, var_1.a.a.x, false, true), vec4<bool>(false, false, false, true), arg_0.a.a.x)), arg_0.a.a.x), !any(vec2<bool>(arg_0.a.a.x, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b, var_1.a.b, 433f, arg_0.a.b)))))), var_1, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-258f, var_1.a.b, arg_0.a.b), vec3<f32>(var_1.a.b, 492f, var_1.a.b))), _wgslsmith_div_vec3_f32(vec3<f32>(-469f, 449f, -1245f), vec3<f32>(694f, -863f, arg_0.a.b))))))));
    return firstTrailingBit(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, arg_0.a.d.x, var_1.a.d.x) & vec3<u32>(arg_2, 4294967295u, 4294967295u), vec3<u32>(var_2.d.a.d.x, arg_1.x, var_2.d.a.e) ^ vec3<u32>(arg_1.x, 38510u, var_1.a.e))));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_add_vec3_u32(~(~(vec3<u32>(4294967295u, 18739u, 21346u) ^ vec3<u32>(u_input.a, 1u, u_input.c))), ~max(vec3<u32>(1u, 57324u, 61188u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.d, 11691u), vec3<u32>(u_input.b.x, u_input.b.x, 23888u)))) << (~countOneBits(func_3(Struct_2(Struct_1(vec2<bool>(false, true), 119f, -10349i, u_input.b, u_input.d), vec4<i32>(-2147483647i, -26995i, -1i, 0i)), select(vec2<u32>(68633u, u_input.c), vec2<u32>(88918u, u_input.b.x), vec2<bool>(true, false)), 1u)) % vec3<u32>(32u));
    var_0 = select(vec3<u32>(var_0.x & _wgslsmith_sub_u32(var_0.x, ~var_0.x), _wgslsmith_mod_u32(select(u_input.d, var_0.x, true), _wgslsmith_mult_u32(_wgslsmith_sub_u32(15766u, var_0.x), ~1u)), u_input.d), ~vec3<u32>(~83841u, 1u, _wgslsmith_mod_u32(var_0.x, 1u) ^ select(0u, 0u, true)), all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_mult_u32(4294967295u, max(~var_0.x, min(1u, ~u_input.e) >> (~u_input.c % 32u)));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-696f)) + _wgslsmith_f_op_f32(round(-248f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -260f) * -1084f))), true));
    var_1 = ~(~var_0.x >> (u_input.c % 32u));
    return -62335i;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(arg_2.c.xwx));
    var var_1 = vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f))), _wgslsmith_f_op_f32(f32(-1f) * -680f), var_0.x);
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f - arg_0.a.b)))), arg_2.d.a.b, _wgslsmith_f_op_f32(478f + _wgslsmith_f_op_f32(-901f + -1028f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.e.x))), -290f))));
    var var_2 = !(arg_2.d.a.d.x >= _wgslsmith_div_u32(~_wgslsmith_mod_u32(arg_2.d.a.d.x, arg_0.a.d.x), min(~arg_2.d.a.e, 1u)));
    let var_3 = select(~(~vec3<u32>(1u, 1u, 1u)), vec3<u32>(_wgslsmith_mod_u32(arg_0.a.d.x, arg_0.a.d.x), firstTrailingBit(~arg_2.a), 1681u), any(arg_2.b.xx)) ^ vec3<u32>(~(firstLeadingBit(arg_0.a.d.x) >> ((89273u >> (1u % 32u)) % 32u)), _wgslsmith_div_u32((1u | u_input.e) << (38831u % 32u), ~0u), arg_0.a.d.x);
    return Struct_4(vec2<i32>(_wgslsmith_mult_i32(1i, ~max(arg_3.x, arg_3.x)), 2377i), false || arg_1.x);
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = func_4(Struct_2(Struct_1(select(vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, true), vec2<bool>(true, true), vec2<bool>(arg_0, true)), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1070f) + -133f), min(~0i, select(-36867i, 0i, true)), u_input.b, u_input.d), select(-firstTrailingBit(vec4<i32>(25219i, -3256i, -1i, -17442i)), vec4<i32>(func_2(), ~1i, 2147483647i, ~10565i), select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(true, false, arg_0, false), !arg_0))), vec4<bool>(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-2441f)))) == 1000f, true, arg_0), Struct_3(_wgslsmith_add_u32(abs(~u_input.c), ~(~u_input.a)), !(!vec3<bool>(arg_0, true, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-284f)), _wgslsmith_f_op_f32(min(-1000f, 1883f)), _wgslsmith_f_op_f32(-1639f * 2255f), _wgslsmith_f_op_f32(f32(-1f) * -1124f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1163f, 423f, 373f) - vec4<f32>(706f, 468f, 896f, -781f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(121f, -623f, 1234f, -1827f) - vec4<f32>(-1000f, 201f, -133f, -1092f))))), Struct_2(Struct_1(!vec2<bool>(arg_0, arg_0), _wgslsmith_div_f32(-108f, -1049f), _wgslsmith_clamp_i32(-30302i, -1i, -2147483647i), reverseBits(u_input.b), abs(0u)), vec4<i32>(-45075i, ~0i, abs(12584i), ~(-2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 2560f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-115f))))), vec2<i32>(1i, 1i));
    var var_1 = Struct_2(Struct_1(select(select(select(vec2<bool>(true, false), vec2<bool>(var_0.b, var_0.b), vec2<bool>(arg_0, var_0.b)), !vec2<bool>(arg_0, arg_0), false), !select(vec2<bool>(arg_0, var_0.b), vec2<bool>(var_0.b, var_0.b), true), true), -498f, var_0.a.x, ~(~_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 4294967295u))), func_3(Struct_2(Struct_1(vec2<bool>(var_0.b, arg_0), -522f, var_0.a.x, vec2<u32>(u_input.a, u_input.d), 1u), ~vec4<i32>(var_0.a.x, var_0.a.x, -1i, var_0.a.x)), vec2<u32>(~u_input.d, countOneBits(u_input.b.x)), 0u).x), vec4<i32>(firstTrailingBit(abs(1i)), var_0.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0.a.x, var_0.a.x, 1i, var_0.a.x), vec4<i32>(0i, -35845i, var_0.a.x, var_0.a.x)), vec4<i32>(var_0.a.x, var_0.a.x, 81006i, 24258i)), var_0.a.x), 2147483647i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(635f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.b), -491f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1672f)))));
    var var_3 = true;
    let var_4 = Struct_3(~(~174u), select(!(!vec3<bool>(var_1.a.a.x, true, arg_0)), select(!select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(true, false, arg_0), vec3<bool>(false, true, var_1.a.a.x)), select(vec3<bool>(arg_0, true, var_0.b), select(vec3<bool>(arg_0, var_0.b, true), vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, false, var_1.a.a.x)), vec3<bool>(arg_0, var_0.b, false)), !(!vec3<bool>(var_1.a.a.x, var_1.a.a.x, var_0.b))), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(881f, -1459f, 529f, 427f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -1359f, var_2, -1347f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(327f, -480f, var_2, var_2) + vec4<f32>(var_1.a.b, var_1.a.b, 1350f, var_2))))))), Struct_2(var_1.a, max(~vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), var_1.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_1.a.b, -392f) - vec3<f32>(980f, -908f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(490f, -1862f, -193f) - vec3<f32>(725f, -1243f, -309f))))));
    return Struct_2(var_1.a, var_4.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = ~abs(firstLeadingBit(vec4<u32>(25490u, 17195u, 53547u, 32318u)) ^ vec4<u32>(~4294967295u, 60450u >> (u_input.a % 32u), u_input.b.x, _wgslsmith_mod_u32(u_input.e, 4294967295u)));
    var var_2 = func_1(true);
    let var_3 = countOneBits(var_1.yxw);
    let var_4 = reverseBits(~countOneBits(var_2.b.zxy));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(func_4(Struct_2(Struct_1(var_2.a.a, var_2.a.b, -1345i, u_input.b, 4294967295u), var_2.b), vec4<bool>(true, false, true, var_2.a.a.x), Struct_3(45943u, vec3<bool>(var_2.a.a.x, var_2.a.a.x, var_2.a.a.x), vec4<f32>(1982f, var_2.a.b, var_2.a.b, -329f), Struct_2(Struct_1(vec2<bool>(false, false), var_2.a.b, var_2.a.c, vec2<u32>(1472u, var_1.x), var_1.x), var_2.b), vec3<f32>(780f, 1328f, 240f)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0, -1i), vec2<i32>(33355i, var_4.x))).a.x, abs(var_0), reverseBits(i32(-1i) * -19601i), 0i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -796f))));
}

