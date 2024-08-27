struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), true, true, true, vec4<i32>(22193i, -27902i, -20901i, 33216i));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), false, true, false, vec4<i32>(-25441i, -39636i, -6981i, -21260i));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(286f, _wgslsmith_div_f32(-778f, 320f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1626f) + _wgslsmith_f_op_f32(min(-602f, 305f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1278f, -717f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-141f, -1828f, 1903f, -281f), vec4<f32>(480f, -863f, 566f, 587f)) * vec4<f32>(-176f, -444f, 307f, 1037f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-410f, 1189f, 616f, 662f) + vec4<f32>(1066f, 293f, 205f, 1857f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(713f, -113f, 1616f, 539f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(364f, 1447f, 1096f, 916f)))), vec4<f32>(_wgslsmith_f_op_f32(-1535f + -555f), 1f, -1359f, _wgslsmith_f_op_f32(f32(-1f) * -650f)), vec4<bool>(global1.d, !global1.d, any(vec2<bool>(true, true)), global1.c && global0.a.x)))))));
    let var_2 = Struct_1(!vec2<bool>(false, arg_0.a.x), !arg_0.d, (~_wgslsmith_add_u32(u_input.c, u_input.c) < u_input.e.x) || false, all(select(global0.a, vec2<bool>(any(vec4<bool>(true, var_0.b, true, false)), all(vec2<bool>(global1.a.x, true))), var_0.a)), max(vec4<i32>(-max(0i, arg_0.e.x), i32(-1i) * -var_0.e.x, global0.e.x, ~(arg_0.e.x ^ global0.e.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(abs(arg_0.e), vec4<i32>(global0.e.x, -83188i, 2147483647i, u_input.a) >> (vec4<u32>(u_input.c, 4294967295u, u_input.e.x, u_input.e.x) % vec4<u32>(32u))), -(~vec4<i32>(global0.e.x, -20458i, -2147483647i, -42287i)), vec4<i32>(7775i, firstTrailingBit(arg_0.e.x), -arg_0.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(21682i, u_input.a, global0.e.x), arg_0.e.xyw)))));
    global0 = var_2;
    global1 = arg_0;
    return !(!select(var_0.a, vec2<bool>(all(vec2<bool>(arg_0.a.x, var_2.a.x)), false), global0.c));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    global1 = arg_1;
    var var_0 = Struct_1(select(func_3(Struct_1(vec2<bool>(true, true), !arg_1.d, global0.c, all(vec4<bool>(true, global0.b, true, global0.c)), global0.e)), global1.a, true), global1.a.x, global0.a.x, false, -select(~vec4<i32>(global0.e.x, global1.e.x, -1i, -31129i) | _wgslsmith_mod_vec4_i32(vec4<i32>(global0.e.x, global0.e.x, global1.e.x, -2147483647i), vec4<i32>(u_input.a, arg_1.e.x, arg_1.e.x, 0i)), -_wgslsmith_clamp_vec4_i32(global0.e, vec4<i32>(arg_1.e.x, 29688i, 6253i, 55635i), global1.e), select(true, all(vec4<bool>(false, false, global0.d, arg_1.a.x)), arg_1.b)));
    global0 = Struct_1(select(vec2<bool>(any(vec2<bool>(global1.d, false)), true), vec2<bool>(global1.d, !arg_1.c), any(!select(vec3<bool>(arg_1.c, global1.d, false), vec3<bool>(false, false, var_0.c), global1.b))), true & var_0.d, true, func_3(Struct_1(!select(vec2<bool>(true, false), global0.a, var_0.a), true, any(vec2<bool>(true, false)), -u_input.a == abs(-31417i), _wgslsmith_div_vec4_i32(max(global1.e, global1.e), var_0.e & var_0.e))).x, countOneBits(global0.e));
    let var_1 = arg_1;
    let var_2 = !all(select(arg_1.a, select(vec2<bool>(global0.c, arg_1.b), select(vec2<bool>(arg_1.c, arg_1.d), arg_1.a, vec2<bool>(arg_1.c, false)), all(vec3<bool>(arg_1.c, global1.a.x, true))), !vec2<bool>(false, global1.a.x)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1996f * _wgslsmith_f_op_f32(trunc(-137f))), _wgslsmith_f_op_f32(-1f), global1.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -855f))));
}

fn func_4(arg_0: f32) -> Struct_1 {
    var var_0 = select(~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, 1u, u_input.c), ~u_input.e) | ~vec3<u32>(u_input.d.x, u_input.d.x, u_input.c)), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(69247u, u_input.c, 3243u, 50446u), vec4<u32>(96078u, 24776u, u_input.d.x, 10737u)), ~vec4<u32>(u_input.e.x, u_input.c, 97678u, 43773u)), u_input.d.x, min(u_input.e.x, select(0u, u_input.b, true))) & u_input.e, global0.b);
    let var_1 = !select(true, all(vec3<bool>(global1.c, true, true)), -abs(u_input.a) > u_input.a);
    var_0 = u_input.e;
    var var_2 = vec2<bool>(!(select(10696i, global0.e.x & -12465i, !global1.b) > abs(global1.e.x)), !any(vec4<bool>(global1.c == true, global0.c, true, true)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(558f * 206f)))))));
    return Struct_1(vec2<bool>(1000f <= arg_0, false), !var_1, var_2.x, -global1.e.x >= -1i, vec4<i32>((_wgslsmith_dot_vec2_i32(global0.e.zz, global1.e.wz) ^ 0i) | ~min(global0.e.x, u_input.a), 21251i, -43658i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a << (var_0.x % 32u), select(u_input.a, u_input.a, var_1)), max(_wgslsmith_dot_vec4_i32(global0.e, vec4<i32>(-2147483647i, -18154i, 22409i, global1.e.x)), global1.e.x), _wgslsmith_div_i32(-u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-18075i, global0.e.x, -2147483647i), global1.e.wyy)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    global1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -989f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.e.x, arg_1, ~u_input.e)) + 341f)));
    var var_0 = select(_wgslsmith_div_vec2_u32(u_input.d, ~(vec2<u32>(36977u, u_input.e.x) << (u_input.e.yz % vec2<u32>(32u)))), u_input.e.yx, select(!(func_4(-885f).b || func_4(279f).c), -countOneBits(0i) != (-32459i >> (u_input.c % 32u)), ~(~u_input.c) < (u_input.b << (_wgslsmith_add_u32(0u, 24711u) % 32u))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-475f)))) > _wgslsmith_div_f32(1515f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(228f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1567f)));
    global1 = arg_1;
    var var_2 = _wgslsmith_dot_vec2_i32(global1.e.ww, abs(arg_0.xx));
    return _wgslsmith_mult_u32(select(var_0.x, 55233u, true), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.e.x << (~_wgslsmith_mult_u32(u_input.c, _wgslsmith_sub_u32(func_1(global1.e.wxw, Struct_1(vec2<bool>(global0.c, false), false, global1.a.x, false, global0.e)), u_input.c)) % 32u);
    global0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2050f)) + _wgslsmith_f_op_f32(trunc(1815f))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(320f + 779f))))));
    var var_1 = abs(vec4<i32>(u_input.a, _wgslsmith_div_i32(0i, _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, global1.e.x), ~global1.e.x)), 1i, -10097i));
    let var_2 = Struct_1(!global1.a, true, global1.c, !(!global0.c), func_4(-974f).e);
    let var_3 = vec2<bool>(false, true);
    global0 = func_4(_wgslsmith_f_op_f32(-1f));
    let var_4 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(46024u, u_input.c), ~u_input.b), ~u_input.b);
    var_0 = firstLeadingBit(abs(global0.e.x));
    var_0 = -_wgslsmith_mod_i32(-firstTrailingBit(_wgslsmith_dot_vec2_i32(global0.e.yy, var_1.xy)), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(-10109i, 29508i, -_wgslsmith_clamp_i32(global0.e.x, 26735i, 25744i), ~_wgslsmith_sub_i32(global1.e.x, 6756i)), global0.e));
}

