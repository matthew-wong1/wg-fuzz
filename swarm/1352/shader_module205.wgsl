struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
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

var<private> global0: array<bool, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: u32) -> vec4<u32> {
    var var_0 = vec3<i32>(2147483647i, -60785i, u_input.a);
    var_0 = -max(u_input.d, _wgslsmith_div_vec3_i32(-vec3<i32>(var_0.x, 1i, var_0.x), firstLeadingBit(u_input.d)) & vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -29800i, u_input.a, u_input.a), vec4<i32>(38425i, -1i, var_0.x, 2147483647i)), 1i));
    var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(1i), -1i, countOneBits(u_input.a), i32(-1i) * -56359i), select(min(vec4<i32>(-1i, u_input.d.x, var_0.x, 1i), vec4<i32>(u_input.b.x, -44879i, 0i, u_input.a)), vec4<i32>(u_input.d.x, u_input.b.x, var_0.x, u_input.d.x) >> (vec4<u32>(73017u, 1u, 1u, u_input.c) % vec4<u32>(32u)), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(4294967295u, 10u)]))) << ((min(arg_1, 39028u) ^ _wgslsmith_mult_u32(_wgslsmith_div_u32(63652u, 1u), ~arg_1)) % 32u), u_input.b.x, u_input.b.x);
    let var_1 = u_input.b.x;
    var var_2 = Struct_3(Struct_2(~(~(~5689u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1323f, 1369f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1258f, -1104f)) + -1696f)), countOneBits(-4270i), Struct_1(!vec3<bool>(arg_0, true, true), any(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], false, arg_0, global0[_wgslsmith_index_u32(0u, 10u)])), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(342f, -654f, 341f) + vec3<f32>(2295f, 915f, 1889f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-920f, -1816f, -565f)))))), Struct_1(vec3<bool>(false, true, false | arg_0), false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-215f, -1000f, 155f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(177f, 505f, 492f) + vec3<f32>(235f, 819f, 1045f))))), _wgslsmith_mult_vec2_u32(~vec2<u32>(~arg_1, ~4294967295u), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.e, vec2<u32>(4294967295u, 61968u), u_input.e) ^ u_input.e, ~u_input.e, vec2<u32>(max(u_input.c, 0u), arg_1 ^ 84546u))), Struct_2(0u, 1f, var_0.x, Struct_1(!select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 10u)], false, arg_0), true), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1034f, 562f, 844f), vec3<f32>(-1000f, 297f, 2193f), vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 10u)], false, true))))), Struct_1(select(!vec3<bool>(arg_0, true, global0[_wgslsmith_index_u32(70854u, 10u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1, 10u)], global0[_wgslsmith_index_u32(10382u, 10u)]), true), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-509f, 225f, 458f))) * vec3<f32>(-1224f, -138f, 196f)))), vec4<u32>(arg_1, ~_wgslsmith_dot_vec2_u32(u_input.e, firstTrailingBit(vec2<u32>(4294967295u, 82010u))), 30244u, u_input.c), abs(_wgslsmith_div_u32(~(37835u << (u_input.e.x % 32u)), arg_1)));
    return reverseBits(select(~select(vec4<u32>(u_input.c, 4294967295u, 12628u, u_input.e.x) ^ vec4<u32>(arg_1, 0u, var_2.e, arg_1), ~var_2.d, select(vec4<bool>(global0[_wgslsmith_index_u32(var_2.a.a, 10u)], true, false, false), vec4<bool>(arg_0, global0[_wgslsmith_index_u32(u_input.e.x, 10u)], true, arg_0), var_2.c.e.a.x)), var_2.d, false));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> vec3<bool> {
    global0 = array<bool, 10>();
    let var_0 = false;
    global0 = array<bool, 10>();
    var var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.e, abs(~vec2<u32>(4294967295u, 30155u))), u_input.e, ~(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(56128u, arg_0.a.a), vec2<u32>(0u, 8538u))) & ~(arg_0.d.xz ^ vec2<u32>(arg_0.c.a, 31925u))));
    var var_2 = vec4<bool>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x - -479f) - -559f)) < _wgslsmith_f_op_f32(ceil(arg_0.a.e.c.x)), false, false);
    return vec3<bool>(select(true, true, !all(select(vec4<bool>(arg_2.c.d.a.x, arg_0.a.d.a.x, true, var_0), vec4<bool>(false, true, arg_2.a.e.b, arg_0.a.e.a.x), true))), true, ((_wgslsmith_mult_u32(15554u, var_1.x) == _wgslsmith_add_u32(arg_2.b.x, 13848u)) != true) & arg_1.a.x);
}

fn func_2() -> i32 {
    global0 = array<bool, 10>();
    var var_0 = firstTrailingBit(u_input.d.x);
    var var_1 = Struct_1(func_4(Struct_3(Struct_2(u_input.e.x & u_input.e.x, 211f, 64454i, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 10u)], true, global0[_wgslsmith_index_u32(24008u, 10u)]), global0[_wgslsmith_index_u32(12694u, 10u)], vec3<f32>(-1000f, -152f, -1202f)), Struct_1(vec3<bool>(true, false, false), true, vec3<f32>(462f, 443f, 261f))), select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(13705u, u_input.c)), u_input.e, select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_2(abs(23181u), _wgslsmith_f_op_f32(trunc(895f)), -48198i, Struct_1(vec3<bool>(true, false, true), true, vec3<f32>(1000f, -1443f, -1000f)), Struct_1(vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(u_input.c, 10u)], vec3<f32>(-1507f, 577f, -1599f))), func_3(true, 51738u), u_input.e.x), Struct_1(!select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)]), true), false, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3447f), _wgslsmith_f_op_f32(1543f + 1000f), -545f)), Struct_3(Struct_2(u_input.e.x, -1190f, 62393i, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.e.x, 10u)], global0[_wgslsmith_index_u32(u_input.e.x, 10u)]), true, vec3<f32>(-783f, 2097f, 2334f)), Struct_1(vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 10u)]), global0[_wgslsmith_index_u32(4294967295u, 10u)], vec3<f32>(484f, -382f, 1137f))), u_input.e, Struct_2(1u, _wgslsmith_div_f32(1363f, -1256f), i32(-1i) * -25343i, Struct_1(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 10u)], false), true, vec3<f32>(-738f, -844f, -1000f)), Struct_1(vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(u_input.c, 10u)], vec3<f32>(1000f, 1042f, -640f))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(64074u, u_input.c, 54377u, u_input.c), vec4<u32>(1u, 38377u, u_input.c, 0u)), ~vec4<u32>(u_input.c, 0u, u_input.c, u_input.e.x)), _wgslsmith_mult_u32(~6028u, 0u >> (u_input.e.x % 32u)))), false, vec3<f32>(-774f, _wgslsmith_f_op_f32(f32(-1f) * -1346f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1120f), -773f)))));
    var var_2 = _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.b.x);
    var_0 = -_wgslsmith_mult_i32(~(-1262i) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(46805u, u_input.e.x, 31044u, u_input.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.e.x, 0u, 49099u), vec4<u32>(u_input.e.x, 1u, u_input.e.x, u_input.c))) % 32u), -18021i);
    return u_input.b.x;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = vec4<i32>(-firstTrailingBit(abs(u_input.a)), -1i, -2147483647i, -func_2());
    var var_1 = ~u_input.c;
    var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x << (48295u % 32u), ~u_input.d.x, 0i, 42703i) ^ countOneBits(vec4<i32>(u_input.b.x, var_0.x, -35384i, u_input.d.x) & vec4<i32>(var_0.x, 2774i, -638i, u_input.a)), vec4<i32>(-1i, ~var_0.x, u_input.d.x, -4445i), ~_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-6741i, 61781i, u_input.b.x, -1i)), -vec4<i32>(-18710i, -1i, var_0.x, -25831i))) & vec4<i32>(-firstTrailingBit(i32(-1i) * -18869i), var_0.x, firstLeadingBit(~_wgslsmith_dot_vec2_i32(var_0.xx, var_0.wy)), -u_input.b.x);
    var var_2 = Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e.x, 1u), u_input.e) << (_wgslsmith_div_u32(u_input.c, u_input.e.x) % 32u), 1071f, -1i, Struct_1(vec3<bool>(arg_0, arg_0, arg_0 && true), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1147f, 459f, -691f) + vec3<f32>(1279f, -2445f, -657f))), Struct_1(select(vec3<bool>(arg_0, false, true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 10u)], false), vec3<bool>(false, false, arg_0), arg_0), select(arg_0, false, false)), !global0[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-626f, 611f, 672f)))))), ~vec2<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(29607u, u_input.c, u_input.c), vec3<u32>(4294967295u, u_input.e.x, 81263u))), select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 11315u), vec4<u32>(97768u, u_input.e.x, u_input.e.x, 0u)), ~0u, -2147483647i <= u_input.b.x)), Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, 35772u, u_input.c, 1u), select(vec4<u32>(4294967295u, 58653u, u_input.e.x, u_input.c), vec4<u32>(u_input.c, 10996u, u_input.c, 4294967295u), global0[_wgslsmith_index_u32(u_input.e.x, 10u)])), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(76190u, 1u, 1u, 46387u), vec4<u32>(u_input.c, u_input.c, 5896u, u_input.e.x)))), _wgslsmith_f_op_f32(f32(-1f) * -152f), ~(-40390i), Struct_1(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 10u)], arg_0, false), _wgslsmith_div_u32(u_input.c, 38618u) >= ~u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-304f, -891f, -665f)))), Struct_1(!(!vec3<bool>(false, arg_0, arg_0)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-766f, -836f, -1627f)))))), ~(~reverseBits(vec4<u32>(25165u, 0u, 14169u, u_input.e.x))), ~_wgslsmith_dot_vec4_u32(~func_3(true, 0u), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(4294967295u, u_input.e.x, 37152u, u_input.c)), ~vec4<u32>(0u, u_input.c, 18720u, 1u))));
    var var_3 = Struct_2(countOneBits(~firstLeadingBit(var_2.b.x)), _wgslsmith_f_op_f32(-1352f * 940f), -2147483647i, Struct_1(var_2.a.d.a, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a.e.c * var_2.c.e.c)))), Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(31767u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], arg_0), global0[_wgslsmith_index_u32(max(~(~17176u), 4294967295u), 10u)], var_2.a.d.c));
    return var_2.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    let var_0 = func_1(all(func_4(Struct_3(Struct_2(4294967295u, 297f, -1i, arg_0.a.d, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 10u)], false, global0[_wgslsmith_index_u32(4294967295u, 10u)]), true, arg_0.c.d.c)), ~vec2<u32>(u_input.c, 100531u), arg_0.a, arg_0.d << (arg_0.d % vec4<u32>(32u)), arg_0.a.a), Struct_1(vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 10u)]), global0[_wgslsmith_index_u32(arg_0.e, 10u)], arg_0.c.d.c), Struct_3(Struct_2(u_input.e.x, -759f, arg_0.c.c, Struct_1(arg_0.a.d.a, arg_0.c.d.b, vec3<f32>(1801f, -973f, 1262f)), Struct_1(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.e.x, 10u)]), true, vec3<f32>(arg_0.c.e.c.x, arg_0.a.b, arg_0.c.e.c.x))), ~vec2<u32>(u_input.e.x, u_input.e.x), func_1(false), ~arg_0.d, max(1u, arg_0.d.x))).xx)).e;
    let var_1 = var_0;
    return func_1(false).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.c);
    let var_1 = firstLeadingBit(u_input.d.x);
    var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(((vec2<u32>(u_input.e.x, 4294967295u) << (vec2<u32>(57961u, 43933u) % vec2<u32>(32u))) | (u_input.e >> (vec2<u32>(u_input.c, u_input.e.x) % vec2<u32>(32u)))) & (u_input.e | ~u_input.e), vec2<u32>(~u_input.e.x, u_input.e.x) >> ((vec2<u32>(38337u, u_input.e.x) | ~vec2<u32>(39284u, u_input.c)) % vec2<u32>(32u))), u_input.e);
    global0 = array<bool, 10>();
    let var_2 = Struct_2(abs(~u_input.c), -1551f, u_input.d.x, func_5(Struct_3(func_1(global0[_wgslsmith_index_u32(u_input.c, 10u)]), ~u_input.e, Struct_2(~u_input.c, _wgslsmith_f_op_f32(-380f - -398f), -62534i, func_1(global0[_wgslsmith_index_u32(39775u, 10u)]).d, func_1(false).d), countOneBits(~vec4<u32>(17711u, 4294967295u, u_input.e.x, u_input.c)), 5927u), vec3<i32>(firstTrailingBit(u_input.b.x), var_1, firstLeadingBit(1i))), Struct_1(!vec3<bool>(false, global0[_wgslsmith_index_u32(26109u, 10u)], all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 10u)], false, global0[_wgslsmith_index_u32(u_input.c, 10u)], true))), !(u_input.d.x == abs(var_1)), _wgslsmith_div_vec3_f32(func_1(func_5(Struct_3(Struct_2(68142u, -107f, u_input.a, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 10u)], global0[_wgslsmith_index_u32(u_input.e.x, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), true, vec3<f32>(-857f, -576f, 786f)), Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], false), global0[_wgslsmith_index_u32(14522u, 10u)], vec3<f32>(-526f, -208f, -204f))), vec2<u32>(u_input.c, u_input.c), Struct_2(u_input.e.x, -984f, u_input.b.x, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(659u, 10u)], false, false), global0[_wgslsmith_index_u32(u_input.c, 10u)], vec3<f32>(-1327f, -1550f, 1285f)), Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(37425u, 10u)], false), true, vec3<f32>(-356f, 195f, 1103f))), vec4<u32>(u_input.e.x, u_input.e.x, 52801u, u_input.e.x), u_input.c), u_input.d).b).e.c, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1646f, 659f, 1120f), vec3<f32>(1306f, 708f, -716f), vec3<bool>(true, true, global0[_wgslsmith_index_u32(57436u, 10u)]))))))));
    let var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c ^ ~2147483647i, u_input.d.x, ~var_1, var_2.c), abs(vec4<i32>(abs(2147483647i), var_2.c, ~var_1, _wgslsmith_clamp_i32(1106i, 17292i, u_input.a)))), var_2.c, 2147483647i);
    var var_4 = u_input.e ^ ~(~u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(348f, var_2.d.c.x, 977f, 1000f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.d.c.x, var_2.b, var_2.b, 781f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-996f, -330f, -583f, -1325f))))))));
}

