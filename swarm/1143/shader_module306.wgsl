struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 21>;

var<private> global2: u32 = 1u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = u_input.c.yy;
    global1 = array<i32, 21>();
    let var_1 = arg_1.d;
    let var_2 = _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b, global0.a.x), _wgslsmith_f_op_f32(-global0.a.x))))));
    global1 = array<i32, 21>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 + arg_1.a.x), _wgslsmith_f_op_f32(-global0.a.x))) - -394f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -945f))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: f32, arg_3: vec2<bool>) -> vec2<bool> {
    global1 = array<i32, 21>();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), -173f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - -567f) - _wgslsmith_f_op_f32(min(-442f, -862f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global0.a - global0.a))) + vec3<f32>(-968f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_2 - 699f)))), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-238f - -915f)), all(!(!vec4<bool>(arg_3.x, global0.e.x, global0.c, global0.e.x))), 0i, !select(arg_3, global0.e, global0.e.x));
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(989f, global0.b)))), global0.b, _wgslsmith_f_op_f32(-global0.a.x)), arg_2, u_input.a.x > 33662u, ~global1[_wgslsmith_index_u32(u_input.b.x >> (abs(min(arg_1, u_input.a.x)) % 32u), 21u)], global0.e);
    var var_1 = ~arg_1;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1106f, -264f, 889f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(375f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.a.x, var_0.b)), _wgslsmith_f_op_f32(global0.a.x * arg_2)))), false, ~firstLeadingBit(arg_0.x), global0.e);
    return select(!global0.e, select(vec2<bool>(true, true), select(!select(var_2.e, vec2<bool>(true, var_2.e.x), vec2<bool>(false, arg_3.x)), var_0.e, !(!var_0.e.x)), false), !(!(!var_0.e)));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    let var_0 = u_input.b | u_input.b;
    var var_1 = global0.e;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), arg_0.a.x, !(!(all(vec4<bool>(var_1.x, false, var_1.x, global0.e.x)) | !arg_0.c)), global0.d, select(!vec2<bool>(24945i < u_input.c.x, true), global0.e, global0.e));
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~firstTrailingBit(4294967295u), u_input.b.x ^ _wgslsmith_add_u32(var_0.x, u_input.a.x), 1u), ~firstLeadingBit(~vec3<u32>(1u, 1u, 17168u))), countOneBits(abs(u_input.b.x) | 1u));
    var_3 = ~max(select(abs(u_input.b.x), _wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(18668u, var_0.x, 32205u, 4294967295u)), !arg_0.c), var_0.x);
    return arg_0.e;
}

fn func_1() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1352f), 1198f, 283f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(_wgslsmith_div_u32(0u, 53565u), _wgslsmith_clamp_u32(1u, 7024u, u_input.a.x), u_input.a.x << (4294967295u % 32u), 4294967295u), Struct_1(_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(-117f, 1619f, -532f)), _wgslsmith_f_op_f32(-961f - global0.b), true, firstTrailingBit(global0.d), select(vec2<bool>(global0.e.x, true), vec2<bool>(false, global0.e.x), vec2<bool>(global0.e.x, false))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-551f, _wgslsmith_f_op_f32(trunc(-1559f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1755f))))), all(vec3<bool>(!any(vec3<bool>(false, global0.c, global0.c)), !global0.e.x, global0.e.x)), 55363i, !func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), 905f, true, ~global0.d, func_3(u_input.c.yy, u_input.a.x, -983f, global0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.b.x, 4294967295u, 44779u, 0u), Struct_1(vec3<f32>(582f, 579f, -737f), global0.b, global0.e.x, -1i, global0.e))))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, ~8611u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, 1u), vec3<u32>(59096u, u_input.a.x, 9040u) | u_input.a.xwy))), abs(u_input.a.x)), 21u)];
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(323f)), _wgslsmith_f_op_f32(func_2(u_input.a, Struct_1(global0.a, 983f, false, u_input.c.x, global0.e))), _wgslsmith_f_op_f32(var_0.a.x + global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-474f + _wgslsmith_f_op_f32(trunc(2290f))), var_0.a.x)) * 283f), true, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(var_0.d, global0.d, 32511i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], -1i, var_0.d), vec3<i32>(u_input.c.x, 2147483647i, 0i), vec3<i32>(-66307i, var_0.d, global1[_wgslsmith_index_u32(30691u, 21u)]))), u_input.c), !(!vec2<bool>(true, -607f > var_0.b)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(975f, -1000f, _wgslsmith_f_op_f32(round(global0.b)), _wgslsmith_f_op_f32(func_2(u_input.a & u_input.a, Struct_1(global0.a, var_0.a.x, true, max(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], -2147483647i), vec2<bool>(false, var_0.c))))));
    let var_3 = 18028u;
    return var_0.d;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    let var_0 = Struct_1(global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-462f))), arg_2.b)), any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(arg_2.e.x, false, arg_2.c, true), vec4<bool>(arg_2.e.x, true, arg_3.x, arg_3.x), arg_2.e.x), vec4<bool>(true, false, false, global0.e.x), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, arg_2.c, true), vec4<bool>(false, true, false, arg_0.c))), any(arg_3))), -_wgslsmith_mult_i32(~arg_2.d, arg_2.d ^ arg_1.x), vec2<bool>(arg_0.e.x, any(select(!arg_3, arg_3, arg_3))));
    global0 = arg_2;
    var var_1 = arg_0;
    global2 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.ywx, u_input.b), _wgslsmith_div_u32(~_wgslsmith_mult_u32(firstLeadingBit(u_input.b.x), u_input.b.x ^ 15098u), u_input.a.x));
    var var_2 = var_0.d;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 21>();
    var var_0 = true;
    var_0 = true;
    global2 = countOneBits(func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), 129f, u_input.a.x > 15084u, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, global0.d, 1694i)), !vec2<bool>(global0.c, true)), vec2<i32>(max(0i, -1i), func_1()), Struct_1(vec3<f32>(1041f, 1447f, -1626f), _wgslsmith_f_op_f32(trunc(420f)), func_4(Struct_1(vec3<f32>(global0.b, global0.a.x, global0.a.x), 642f, global0.c, global1[_wgslsmith_index_u32(0u, 21u)], vec2<bool>(global0.c, false)), global0.b).x, func_1(), func_4(Struct_1(vec3<f32>(-778f, global0.b, -447f), global0.a.x, true, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], vec2<bool>(true, global0.c)), -1000f)), !vec3<bool>(global0.e.x, true, false)) ^ u_input.b.x);
    let var_1 = u_input.a.x;
    var var_2 = u_input.c & u_input.c;
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.x + 729f)))), _wgslsmith_f_op_f32(select(101f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.a.x, -295f)), -982f), true)), -2305f), _wgslsmith_f_op_f32(-332f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-494f + global0.b) * _wgslsmith_f_op_f32(step(943f, global0.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - global0.b) * -1823f))), all(select(!vec3<bool>(true, global0.c, global0.c), !select(vec3<bool>(true, global0.c, global0.c), vec3<bool>(true, global0.e.x, true), false), false)), ~firstLeadingBit(~(~1i)), global0.e);
    let var_3 = u_input.a;
    var var_4 = -59462i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.x))) * global0.a.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, -198f) + _wgslsmith_f_op_f32(global0.b + 2282f)))), ~u_input.b.x, _wgslsmith_f_op_vec2_f32(-global0.a.zx), 4294967295u);
}

