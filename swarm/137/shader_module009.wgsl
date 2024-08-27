struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = min(_wgslsmith_clamp_vec2_i32((-vec2<i32>(global1.d, 2147483647i) & abs(global1.a.yw)) << (u_input.b.xx % vec2<u32>(32u)), vec2<i32>(u_input.a, -1i), ~(-vec2<i32>(u_input.a, u_input.a))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-23570i ^ u_input.a, ~2147483647i), abs(vec2<i32>(-59612i, -2147483647i))), abs(~global1.a.wy)));
    var var_1 = Struct_1(abs(global1.a), reverseBits(abs(_wgslsmith_dot_vec3_i32(global1.a.xyz, vec3<i32>(-1i, var_0.x, -8358i) ^ vec3<i32>(u_input.a, u_input.a, 2147483647i)))), global1.c, global1.d);
    var var_2 = vec3<f32>(-400f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -849f), _wgslsmith_f_op_f32(ceil(-223f))) - -844f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f - 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -252f)))), _wgslsmith_f_op_f32(f32(-1f) * -235f));
    global1 = Struct_1(vec4<i32>(-global1.b, abs(~global1.a.x), 1i ^ (global1.a.x << (1u % 32u)), firstLeadingBit(global1.b)), _wgslsmith_div_i32(u_input.a | -45218i, _wgslsmith_mult_i32(var_0.x, _wgslsmith_mult_i32(i32(-1i) * -2147483647i, var_1.d))), select(global1.c, abs(0u), true), var_1.d);
    let var_3 = vec4<bool>(!(!(!any(vec2<bool>(false, true)))), true, all(vec2<bool>(true, true)), false);
    return _wgslsmith_add_u32(~(1u | global1.c), _wgslsmith_add_u32(1u << (_wgslsmith_add_u32(0u, 1u) % 32u), ~u_input.b.x ^ var_1.c) << (global1.c % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = 122f;
    var_0 = -1i;
    var var_2 = -9195i;
    var var_3 = Struct_2(vec2<u32>(func_3(), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_2.xy, vec2<u32>(arg_1.c, 4294967295u)) | (arg_0.a.x << (arg_2.x % 32u)), arg_1.c)), vec2<i32>(arg_3, ~(abs(2147483647i) | ~global1.d)), Struct_1(vec4<i32>(0i, -arg_3, i32(-1i) * -1i, _wgslsmith_add_i32(arg_1.d, -1i)) >> (~vec4<u32>(4294967295u, 1u, arg_1.c, arg_0.c.c) % vec4<u32>(32u)), -1i, u_input.b.x, _wgslsmith_div_i32(arg_0.c.b, -1i)), false);
    return arg_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec3<f32> {
    var var_0 = func_2(Struct_2(~firstTrailingBit(vec2<u32>(1u, u_input.b.x)), countOneBits(global1.a.xw), arg_0, select(any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(floor(2387f)) >= _wgslsmith_div_f32(1481f, -205f), true)), Struct_1(arg_0.a, 2147483647i & (-global1.b | 25445i), countOneBits(countOneBits(1u)), _wgslsmith_div_i32(8753i, countOneBits(arg_0.d & 1i))), vec4<u32>(0u, ~(~func_2(Struct_2(u_input.b.zz, vec2<i32>(-2147483647i, -3562i), arg_0, false), arg_0, vec4<u32>(u_input.c, global1.c, global1.c, arg_0.c), arg_0.d).c), abs(func_3()), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(57378u, global1.c, global1.c, 37723u), ~vec4<u32>(51420u, 14849u, 33397u, arg_0.c))), -59132i);
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(243f, _wgslsmith_f_op_f32(1293f + 1000f))), _wgslsmith_f_op_f32(min(414f, _wgslsmith_f_op_f32(f32(-1f) * -362f))), true));
    global0 = -1825f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1466f, -100f, -966f) + vec3<f32>(-1027f, -602f, 1078f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(457f, -830f, 1386f), vec3<f32>(1336f, 1354f, 2391f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1894f * -2067f), _wgslsmith_f_op_f32(1046f - -1113f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-430f)))), _wgslsmith_div_f32(124f, -964f)))) - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1673f)), 1f)), true)), -1000f, -222f));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(589f - 551f), _wgslsmith_f_op_f32(max(1245f, -1056f)), arg_2.d)))), _wgslsmith_f_op_f32(247f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-999f, -1362f)) + _wgslsmith_f_op_f32(ceil(1000f)))), 719f), _wgslsmith_f_op_vec3_f32(func_4(func_2(Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.c.c, u_input.b.x), vec2<u32>(1u, 13377u)), global1.a.xw, arg_2.c, arg_0.x), Struct_1(firstLeadingBit(arg_2.c.a), -u_input.a, select(global1.c, 39420u, arg_2.d), 1i), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(66860u, 103017u, arg_2.c.c, 69312u), vec4<u32>(arg_2.a.x, global1.c, 4294967295u, 1u), vec4<u32>(4294967295u, global1.c, u_input.c, arg_2.c.c))), countOneBits(arg_1) | _wgslsmith_add_i32(0i, -10960i)), max(arg_2.a.x, ~1u))));
    let var_1 = arg_2.c;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(415f, 195f, var_0.x) + vec3<f32>(var_0.x, var_0.x, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(max(var_0.x, 483f)), var_0.x, var_0.x))))));
    return -3089i;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = 1933f;
    let var_1 = ~(~(~(~12960u)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-928f, 1210f, -342f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(463f, -175f, -432f)), true)), vec3<f32>(1f, 1f, 1f))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, 261f))), -165f, 782f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))));
    var var_3 = abs(min(arg_2.x, arg_2.x));
    var var_4 = arg_3.c;
    return !vec2<bool>(!(all(vec2<bool>(false, arg_3.d)) || arg_3.d), false);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = arg_3.x;
    let var_2 = Struct_2(countOneBits(arg_1.yy), var_0.a.wy, arg_0, select(select(arg_3.x <= _wgslsmith_f_op_vec3_f32(func_4(arg_0, 88836u)).x, select(true, false, all(vec3<bool>(arg_2.x, arg_2.x, false))), u_input.a <= _wgslsmith_div_i32(29938i, 1i)), all(!vec4<bool>(true, true, true, arg_2.x)) && true, true || !any(vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x))));
    var_1 = _wgslsmith_f_op_f32(abs(-1558f));
    var var_3 = var_2;
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~(~countOneBits(max(8076u, global1.c))), firstTrailingBit(u_input.c));
    global0 = -1102f;
    let var_1 = Struct_2(u_input.b.zx, -firstLeadingBit(vec2<i32>(~global1.b, _wgslsmith_dot_vec2_i32(global1.a.yz, global1.a.zy))), func_6(Struct_1(global1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-4058i, -26468i, -30480i, -9487i), countOneBits(global1.a)), ~max(17805u, 4294967295u), -1i), u_input.b, !func_5(func_1(vec2<bool>(true, true), global1.a.x, Struct_2(var_0, vec2<i32>(-6467i, global1.b), Struct_1(vec4<i32>(u_input.a, u_input.a, 0i, 13269i), u_input.a, u_input.b.x, u_input.a), false)), Struct_1(vec4<i32>(-1i, u_input.a, -1i, 19639i), 6813i, 63755u, -8146i), select(global1.a.wwz, global1.a.yyy, true), Struct_2(vec2<u32>(u_input.b.x, global1.c), global1.a.ww, Struct_1(global1.a, global1.a.x, u_input.b.x, global1.a.x), true)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-549f, -677f, 154f, 1026f), vec4<f32>(1051f, 147f, -1146f, 310f))))))), select(false, true, false));
    let var_2 = abs(65086i);
    let var_3 = Struct_2(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(0u, var_1.c.c)), var_1.a), global1.a.wx, var_1.c, false);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_vec4_u32(min(vec4<u32>(var_0.x, var_1.a.x, u_input.c, var_3.a.x), vec4<u32>(global1.c, u_input.b.x, 66582u, global1.c)) | (vec4<u32>(u_input.c, var_0.x, u_input.c, global1.c) & vec4<u32>(1744u, var_3.a.x, var_0.x, global1.c)), ~abs(vec4<u32>(0u, 4294967295u, var_1.a.x, 24839u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-984f * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(946f + 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(908f * -218f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-136f, -143f, true)))))), select(0i, firstTrailingBit(-43275i), select(var_3.d, false, !var_1.d) | all(select(vec3<bool>(var_1.d, false, true), vec3<bool>(var_3.d, true, false), vec3<bool>(var_1.d, true, var_3.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1164f, 1653f, -1327f) * vec3<f32>(-299f, 456f, 481f)))))), select(1u, 1254u, true));
}

