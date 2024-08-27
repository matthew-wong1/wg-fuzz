struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> i32 {
    global0 = _wgslsmith_div_vec4_i32(~vec4<i32>(1i, global0.x, u_input.b, ~u_input.e), ~vec4<i32>(2147483647i, 32143i, global0.x, -17733i));
    global0 = vec4<i32>(global0.x, u_input.b, min(-1i >> (abs(~u_input.c) % 32u), ~global0.x), 2147483647i);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-414f, -867f)));
    global0 = vec4<i32>(_wgslsmith_dot_vec3_i32(global0.wyw, vec3<i32>(u_input.b, 16166i, -1i)), _wgslsmith_add_i32(~(-36270i), 1i), -84922i, u_input.e);
    var_0 = arg_0;
    return firstLeadingBit(firstLeadingBit(firstLeadingBit(25577i & firstTrailingBit(-16619i))));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_2 {
    global0 = vec4<i32>(-24393i, min(min(arg_1, ~global0.x), ~_wgslsmith_mod_i32(global0.x, ~(-49463i))), 1i, -(_wgslsmith_sub_i32(-43310i, u_input.d.x) << (_wgslsmith_sub_u32(0u | u_input.a.x, ~87275u) % 32u)));
    global0 = vec4<i32>(func_3(arg_0), _wgslsmith_dot_vec2_i32(u_input.d.xz, global0.zw), ~(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-20902i, 0i), ~u_input.e) ^ -1i), abs(_wgslsmith_div_i32(-(~(-34487i)), firstTrailingBit(max(-1i, arg_1)))));
    var var_0 = vec2<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 * -1979f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1272f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), ~(~(vec3<u32>(45613u, u_input.c, 4294967295u) | vec3<u32>(u_input.a.x, 0u, 125831u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1449f, -525f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(189f, var_0.x, arg_0))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, var_0.x) + vec3<f32>(1118f, -1748f, arg_0)))))), true, _wgslsmith_sub_u32(~(~_wgslsmith_div_u32(32197u, u_input.c)), ~u_input.a.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1572f - arg_0)), ~vec3<u32>(0u, u_input.c >> (u_input.c % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 56383u, u_input.a.x, u_input.c), vec4<u32>(2574u, 4294967295u, u_input.a.x, 0u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1539f, 1739f, arg_0) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(446f, arg_0, 623f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-926f, var_0.x, arg_0))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(var_1.a.c.xy));
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    global0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1885i ^ (u_input.d.x & 32597i), global0.x), -(~global0.x)), _wgslsmith_clamp_i32(global0.x, _wgslsmith_dot_vec2_i32(global0.xw, -_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, u_input.e), vec2<i32>(global0.x, global0.x))), -_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.e, u_input.d.x, 1i), firstTrailingBit(vec4<i32>(global0.x, 40765i, u_input.b, 1i)))), global0.x, reverseBits(-1i));
    var var_0 = arg_1;
    global0 = min(((vec4<i32>(global0.x, -1i, -2147483647i, global0.x) >> (vec4<u32>(4294967295u, 1u, arg_0.d.b.x, 4294967295u) % vec4<u32>(32u))) & ~vec4<i32>(2147483647i, -2147483647i, 1i, -1i)) ^ vec4<i32>(~global0.x, -17154i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -33862i), global0.wx), 5618i), _wgslsmith_add_vec4_i32(max(vec4<i32>(global0.x, -1i, global0.x, global0.x), vec4<i32>(-6061i, global0.x, u_input.b, u_input.e)), vec4<i32>(~u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-31407i, global0.x, 5838i), u_input.d), u_input.d.x, global0.x))) | vec4<i32>(-(~_wgslsmith_div_i32(u_input.e, -27346i)), max(abs(-18671i), 1i), select(~1i, firstLeadingBit(global0.x >> (arg_2.c % 32u)), arg_0.b), u_input.b);
    let var_1 = arg_2;
    let var_2 = abs(_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 2147483647i, 17287i, global0.x), vec4<i32>(-2974i, u_input.d.x, global0.x, u_input.b))), u_input.e >> (countOneBits(1u) % 32u), firstTrailingBit(_wgslsmith_mod_i32(u_input.e, u_input.d.x)), _wgslsmith_mult_i32(global0.x, 1i)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(global0.x, global0.x, u_input.b, -2147483647i)) | ~vec4<i32>(u_input.d.x, global0.x, u_input.d.x, u_input.b), vec4<i32>(global0.x, -19013i, _wgslsmith_sub_i32(global0.x, 18567i), 0i), vec4<i32>(1i, u_input.d.x, global0.x, -global0.x))));
    return var_1.b;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = ~(~(~vec4<u32>(1u, u_input.a.x, ~1u, ~u_input.c)));
    let var_1 = vec2<bool>(true, any(vec3<bool>(false, true, false)));
    let var_2 = 1f;
    var_0 = select(vec4<u32>(~_wgslsmith_div_u32(0u, 1u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(55217u, 1u), _wgslsmith_add_u32(~4294967295u, 1u)), 1u, ~(~4294967295u)), reverseBits(vec4<u32>(4294967295u | u_input.a.x, _wgslsmith_add_u32(26363u, 0u), 1u, 1u)) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, u_input.a.x), false), ~u_input.a), 77730u, _wgslsmith_sub_u32(~var_0.x, abs(u_input.a.x)), 36282u) % vec4<u32>(32u)), vec4<bool>(false, var_1.x, all(select(select(vec3<bool>(var_1.x, false, false), vec3<bool>(true, var_1.x, var_1.x), false), select(vec3<bool>(false, true, var_1.x), vec3<bool>(true, true, false), true), !vec3<bool>(var_1.x, true, true))), func_4(func_2(_wgslsmith_f_op_f32(-arg_1.x), 29414i), Struct_3(func_2(var_2, 1i).a, ~u_input.c, ~var_0.x, vec2<u32>(0u, var_0.x)), func_2(_wgslsmith_f_op_f32(var_2 * -985f), -global0.x))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + var_2)), var_0.wwx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1930f, var_2, -324f)), _wgslsmith_div_vec3_f32(vec3<f32>(592f, 1422f, 1188f), vec3<f32>(arg_1.x, -1000f, -906f)), select(vec3<bool>(var_1.x, false, false), vec3<bool>(true, var_1.x, true), vec3<bool>(true, var_1.x, false)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, 136f), vec3<f32>(var_2, arg_1.x, arg_1.x)), vec3<f32>(-665f, var_2, arg_1.x), all(vec4<bool>(false, true, true, var_1.x))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2)), _wgslsmith_f_op_f32(-arg_1.x), 1120f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, 481f) - vec3<f32>(arg_1.x, var_2, 654f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, -413f))), true))), abs(23050u), ~(~(~1u)), func_2(_wgslsmith_f_op_f32(-arg_1.x), func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1099f * 2222f), _wgslsmith_f_op_f32(select(var_2, 2123f, var_1.x)))))).a.b.yy);
    return var_3.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> vec3<u32> {
    let var_0 = u_input.a;
    global0 = ~_wgslsmith_mult_vec4_i32((select(vec4<i32>(-13987i, global0.x, 21393i, global0.x), vec4<i32>(-20251i, 22370i, u_input.b, 0i), true) & ~vec4<i32>(u_input.b, -1i, u_input.e, u_input.e)) & ~(-vec4<i32>(2147483647i, global0.x, global0.x, 0i)), reverseBits(~firstTrailingBit(vec4<i32>(33556i, global0.x, u_input.e, u_input.e))));
    let var_1 = (_wgslsmith_mod_vec4_u32(min(~vec4<u32>(0u, 5088u, 34587u, arg_0.c), vec4<u32>(var_0.x, 20326u, arg_0.a.b.x, arg_0.a.b.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(19284u, arg_0.a.b.x, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, var_0.x, var_0.x, 86257u) | vec4<u32>(72990u, 64303u, var_0.x, 1u))) >> ((max(vec4<u32>(var_0.x, 14413u, 87349u, 74267u) | vec4<u32>(35400u, u_input.a.x, 1u, u_input.c), vec4<u32>(arg_0.a.b.x, 4294967295u, 31343u, arg_0.c)) | countOneBits(vec4<u32>(16837u, 17421u, 37148u, 1u))) % vec4<u32>(32u))) | reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c, arg_0.d.b.x, 4294967295u, var_0.x) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, 48647u, 73108u), vec4<u32>(var_0.x, 131939u, 4294967295u, arg_0.c)), ~vec4<u32>(0u, arg_0.c, 4294967295u, 4294967295u)));
    var var_2 = arg_0.d;
    let var_3 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(733f, var_2.a))) * -358f), u_input.e).d;
    return min(min(select(_wgslsmith_sub_vec3_u32(var_2.b | var_1.zwz, abs(var_3.b)), var_1.xxw, _wgslsmith_f_op_f32(-528f + arg_0.d.d.x) <= _wgslsmith_f_op_f32(-1014f + arg_0.a.c.x)), arg_0.a.b), reverseBits(vec3<u32>(0u, _wgslsmith_div_u32(var_0.x, 27861u) >> (~arg_0.a.b.x % 32u), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-105f, max(~(~vec3<u32>(0u, u_input.a.x, 49812u)), func_5(Struct_2(func_1(vec3<i32>(-4593i, global0.x, u_input.b), vec2<f32>(-1526f, -831f)), true, ~u_input.a.x, Struct_1(-2744f, vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<f32>(825f, -708f, 193f), vec3<f32>(-379f, -104f, 1172f))), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1323f, _wgslsmith_f_op_f32(select(-365f, -1000f, true)), -1634f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1027f, 593f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(217f, -1426f)) - -811f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -979f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 134f)))));
    global0 = ~(-vec4<i32>(61148i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 47885i), vec2<i32>(1i, u_input.e)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, global0.x), vec4<i32>(u_input.b, u_input.e, -1i, 23352i)), u_input.b ^ _wgslsmith_mod_i32(-4240i, u_input.d.x), ~(-2147483647i)));
    var var_1 = global0.x;
    let var_2 = max(_wgslsmith_mult_u32(1u, min(func_1(abs(vec3<i32>(1i, u_input.d.x, -32249i)), var_0.c.xy).b.x, ~u_input.a.x)), var_0.b.x);
    let var_3 = true;
    let var_4 = ~(_wgslsmith_mult_u32(~44103u, max(var_2 & var_0.b.x, 27250u)) >> (((var_0.b.x & reverseBits(u_input.a.x)) | (abs(var_0.b.x) & _wgslsmith_add_u32(9641u, u_input.c))) % 32u));
    var_1 = -(firstLeadingBit(firstLeadingBit(u_input.b)) & min(-u_input.d.x, 1i)) << ((_wgslsmith_dot_vec3_u32(~(~vec3<u32>(9784u, 47899u, 4294967295u)), _wgslsmith_sub_vec3_u32(~var_0.b, vec3<u32>(4294967295u, 0u, var_2))) >> (u_input.a.x % 32u)) % 32u);
    let var_5 = Struct_3(Struct_1(var_0.d.x, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(60315u, var_0.b.x), _wgslsmith_mod_u32(var_4, 0u)), ~u_input.c, 19192u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.d.x, -1621f)))), var_0.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d - var_0.d) + var_0.d) * var_0.c)), var_4, ~15319u, vec2<u32>(0u, u_input.a.x));
    var_1 = -u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(15270i, 12395i), _wgslsmith_mult_vec4_i32(min(vec4<i32>(-global0.x, select(-14782i, -32391i, var_3), 1i, global0.x), -(~vec4<i32>(u_input.e, u_input.b, -55506i, -1i))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(29922i, 37513i, -18458i, u_input.d.x), vec4<i32>(-2147483647i, global0.x, global0.x, 1i)), -15088i), -max(2147483647i, global0.x), -1i, ~global0.x)), var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1055f)), -434f, true)) + var_5.a.d.x));
}

