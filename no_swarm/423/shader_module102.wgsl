struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: vec2<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(41478u, 0u, 71720u, 1u);

var<private> global1: i32 = 0i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: vec3<f32>) -> i32 {
    global1 = u_input.c.x;
    let var_0 = !vec3<bool>(any(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -768f)) + _wgslsmith_f_op_f32(-arg_0)), arg_3.x) * vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1392f))));
    var var_2 = max(-(_wgslsmith_mod_i32(arg_2, -u_input.d.x) | ~min(27938i, 1i)), -arg_2);
    global1 = arg_2;
    return 50788i ^ arg_2;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<bool>(any(select(vec2<bool>(u_input.a >= 4294967295u, true), vec2<bool>(true, true), false)), true, !any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true)), _wgslsmith_div_i32(func_3(-1587f, _wgslsmith_f_op_f32(abs(-1163f)), u_input.d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(923f, -242f, -3241f))), -(~(-1i))) > -2147483647i);
    let var_1 = Struct_1(var_0.wz, firstLeadingBit(_wgslsmith_sub_i32(countOneBits(-13122i), select(28190i, 0i, true))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(363f, 661f, 1194f, 536f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1681f, -1000f, 1685f, -139f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -945f), _wgslsmith_f_op_f32(abs(680f)), _wgslsmith_f_op_f32(trunc(360f)), _wgslsmith_f_op_f32(-1428f - 372f)))), vec3<bool>(all(select(select(vec4<bool>(var_1.a.x, var_0.x, true, var_0.x), vec4<bool>(false, false, var_1.a.x, true), true), select(vec4<bool>(true, true, false, false), var_0, false), all(var_0))), var_0.x, true), var_0.x & var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1472f)) * -1686f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2472f, _wgslsmith_f_op_f32(sign(-762f)))));
    let var_3 = vec2<u32>(_wgslsmith_clamp_u32(~(18556u | ~u_input.a), ~u_input.b | firstLeadingBit(global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(~global0.x, select(u_input.a, global0.x, true), min(u_input.a, global0.x)), firstLeadingBit(vec3<u32>(41573u, global0.x, 4294967295u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a & global0.x, 0u << (u_input.a % 32u)), ~u_input.b), vec2<u32>(_wgslsmith_clamp_u32(reverseBits(global0.x), _wgslsmith_mod_u32(u_input.a, 37090u), 54374u), 25894u)));
    let var_4 = var_2.a;
    return var_1;
}

fn func_4(arg_0: Struct_1) -> Struct_5 {
    var var_0 = Struct_5(select(vec3<bool>(true, true, arg_0.a.x), select(!vec3<bool>(arg_0.a.x, true, true), select(!vec3<bool>(true, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, false, arg_0.a.x), true), !(!arg_0.a.x)), vec3<bool>(arg_0.a.x, _wgslsmith_dot_vec3_u32(global0.yzx, global0.yxz) <= reverseBits(global0.x), all(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), true)))), arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - 571f) + -1699f), _wgslsmith_f_op_f32(-203f + -188f)), vec2<f32>(572f, _wgslsmith_f_op_f32(1347f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -178f)))), Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, 1386f, 1604f, -669f)))))), select(vec3<bool>(!arg_0.a.x, u_input.b <= global0.x, arg_0.a.x), vec3<bool>(select(true, arg_0.a.x, true), true, true), 1u <= (1u & u_input.b)), true, -339f, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1311f, -255f)))))));
    let var_1 = ~u_input.b;
    var var_2 = 669f;
    let var_3 = abs(~abs(var_1) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.b, global0.x, 0u), vec4<u32>(global0.x, var_1, global0.x, u_input.b)) & _wgslsmith_clamp_u32(0u, u_input.a, 0u)) % 32u)) ^ _wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec3_u32(global0.yww >> (vec3<u32>(1u, var_1, var_1) % vec3<u32>(32u)), ~firstLeadingBit(global0.www)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-664f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1106f))), _wgslsmith_f_op_f32(f32(-1f) * -108f), -1000f, var_0.d.x));
    return Struct_5(var_0.a, !var_0.e.b.x, _wgslsmith_f_op_f32(trunc(var_0.e.d)), vec2<f32>(var_0.e.e.x, 207f), Struct_3(var_0.e.a, var_0.a, true, var_4.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(var_4.wx)), _wgslsmith_f_op_vec2_f32(trunc(var_0.e.e)))))));
}

fn func_5(arg_0: Struct_5) -> u32 {
    global1 = 9740i;
    global1 = abs(countOneBits(u_input.c.x));
    global0 = countOneBits(~(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, global0.x, global0.x, 4294967295u), vec4<u32>(80888u, u_input.a, global0.x, 40629u), vec4<u32>(u_input.b, 32535u, u_input.a, 1u)), firstLeadingBit(vec4<u32>(11416u, u_input.b, 4294967295u, 4294967295u))) & firstTrailingBit(max(vec4<u32>(0u, u_input.a, global0.x, u_input.a), vec4<u32>(global0.x, 1u, global0.x, 4294967295u)))));
    var var_0 = all(!func_4(Struct_1(vec2<bool>(arg_0.e.c, arg_0.b), ~(-47797i))).a.zz);
    var var_1 = select(!arg_0.e.b, !arg_0.a, func_4(func_2()).a);
    return 4502u;
}

fn func_1() -> vec2<bool> {
    global0 = vec4<u32>(4294967295u, func_5(func_4(func_2())), u_input.b, global0.x);
    var var_0 = Struct_2(-1798f, func_2());
    let var_1 = Struct_4(u_input.d.zy, var_0.b, -108f);
    var var_2 = func_4(func_2()).e;
    var var_3 = global0.x;
    return !(!var_2.b.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(any(vec3<bool>(all(vec4<bool>(false, false, false, true)), true, false)), true), !func_1(), false);
    var var_1 = func_4(func_2()).e;
    global0 = countOneBits(~_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(1u, u_input.a, u_input.a, global0.x)), vec4<u32>(~u_input.b, 0u, _wgslsmith_add_u32(0u, 4294967295u), u_input.b), vec4<u32>(u_input.b, 4294967295u, global0.x, global0.x << (global0.x % 32u))));
    let var_2 = Struct_5(vec3<bool>((false || var_1.c) || var_1.c, var_0.x, func_4(func_2()).b), select(true, select(var_1.b.x, all(var_1.b) == any(vec3<bool>(var_1.b.x, false, true)), true), all(!(!vec4<bool>(var_0.x, false, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(var_1.e.x - -1463f), func_4(func_2()).d, func_4(Struct_1(func_4(func_2()).a.xy, 1i)).e);
    global1 = i32(-1i) * -47441i;
    var var_3 = _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(0u, ~(~_wgslsmith_add_u32(u_input.a, 4294967295u))), func_5(var_2));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c.x, 0i), 2147483647i), u_input.d.x), u_input.d.wzx);
}

