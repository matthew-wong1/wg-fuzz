struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    global0 = Struct_1(_wgslsmith_div_f32(global0.e.x, _wgslsmith_f_op_f32(exp2(arg_1.x))), -1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c)) - _wgslsmith_div_f32(185f, -1000f)) + global0.c))), vec3<bool>(~u_input.a >= global0.b, 1571f <= _wgslsmith_f_op_f32(global0.c * global0.a), !global0.d.x), vec2<f32>(815f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c)) + -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(204f, global0.e.x)), arg_1.x)))));
    var var_0 = ~(-global0.b);
    var var_1 = Struct_1(2420f, 1i, _wgslsmith_f_op_f32(step(global0.a, -1000f)), global0.d, arg_1.xz);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)))), var_1.b, _wgslsmith_f_op_f32(select(264f, _wgslsmith_f_op_f32(max(-377f, -143f)), all(var_1.d.yz))), !vec3<bool>(all(!vec3<bool>(var_1.d.x, false, false)), true, !any(global0.d)), vec2<f32>(-955f, _wgslsmith_f_op_f32(1000f - 172f)));
    var var_3 = ~(-abs(vec2<i32>(1i, 51735i) | ~vec2<i32>(u_input.a, var_1.b)));
    return 3206u;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(abs(global0.e.x)), -1i, _wgslsmith_f_op_f32(global0.a + -615f), !global0.d, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(2652f + 370f), -412f))));
    let var_0 = -(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -u_input.a, -global0.b), vec4<i32>(_wgslsmith_mult_i32(-3141i, u_input.a), -34060i, global0.b | 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, -11747i, global0.b, 2147483647i), vec4<i32>(-3310i, 0i, u_input.a, u_input.a)))));
    var var_1 = -395f;
    var var_2 = vec3<u32>(1u, func_3(~_wgslsmith_add_u32(15990u, 62760u), vec3<f32>(-837f, _wgslsmith_f_op_f32(select(-649f, 1831f, global0.d.x)), global0.a)), ~(~abs(1u))) | min(max(select(vec3<u32>(4294967295u, 34883u, 37749u), vec3<u32>(0u, 0u, 0u), global0.d.x) & ~vec3<u32>(47123u, 4294967295u, 1u), select(vec3<u32>(20175u, 0u, 54804u), max(vec3<u32>(15635u, 30738u, 3563u), vec3<u32>(1u, 2099u, 22689u)), vec3<bool>(global0.d.x, global0.d.x, true))), vec3<u32>(func_3(1u, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.e.x, global0.a, global0.a), vec3<f32>(global0.c, 1310f, -1431f)))), ~(~0u), 0u));
    var_2 = ~(~vec3<u32>(func_3(var_2.x, vec3<f32>(global0.e.x, -648f, global0.e.x)), ~(~41340u), _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 0u), 21492u)));
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(global0.c * global0.e.x), global0.b < u_input.a)))), _wgslsmith_f_op_f32(1073f * 1000f))), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global0.c, global0.e.x)))))), !global0.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -832f), 902f) * global0.e));
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    global0 = Struct_1(-1095f, i32(-1i) * -32178i, _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(-900f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2064f + arg_0.e.x)))), arg_0.d, arg_0.e);
    let var_0 = func_2();
    var var_1 = 15316u;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.e.x, -409f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0.e.x, var_0.e.x)), _wgslsmith_f_op_f32(sign(-333f)), !arg_0.d.x))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a)) + 1966f), var_0.a)));
    var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, arg_0.e.x, _wgslsmith_f_op_f32(var_0.c - func_2().a)))));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1335f + global0.c))))), -768f, _wgslsmith_f_op_f32(-293f - arg_0.a), var_0.c);
}

fn func_1() -> Struct_1 {
    let var_0 = countOneBits(53754u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(global0.c, global0.c), _wgslsmith_f_op_f32(f32(-1f) * -920f), _wgslsmith_f_op_f32(round(-586f)), _wgslsmith_f_op_f32(1130f + 1026f)))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-154f, _wgslsmith_f_op_f32(exp2(global0.e.x)), -1669f, -1107f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(func_4(func_2()));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1500f)), select(-1i, 40759i, global0.d.x || false), var_1.x, vec3<bool>(true | global0.d.x, false, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, -2165f) + _wgslsmith_f_op_f32(-583f * -697f)), 447f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1066f, global0.c)))) + _wgslsmith_f_op_vec4_f32(func_4(func_2())).zy)));
    let var_3 = func_2();
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = ~_wgslsmith_mod_u32(0u, ~0u);
    let var_1 = vec4<i32>(func_2().b, -18475i, -11672i, -u_input.a) << (vec4<u32>(4294967295u, func_3(~(~0u), vec3<f32>(-112f, _wgslsmith_f_op_f32(global0.c + global0.e.x), global0.a)), _wgslsmith_add_u32(31179u, _wgslsmith_div_u32(func_3(1u, vec3<f32>(global0.c, -255f, 1339f)), 4294967295u)), abs(reverseBits(1u))) % vec4<u32>(32u));
    let var_2 = 256f;
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1881f), -2147483647i, _wgslsmith_f_op_f32(trunc(639f)), !(!vec3<bool>(func_1().d.x, select(true, global0.d.x, global0.d.x), global0.d.x)), global0.e);
    var_0 = _wgslsmith_mod_u32(abs(_wgslsmith_add_u32(~_wgslsmith_div_u32(4294967295u, 4294967295u), 1u)), 4294967295u);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(func_2())).x, _wgslsmith_add_i32(var_1.x, 2147483647i), -551f, vec3<bool>(global0.d.x, !global0.d.x, true), global0.e);
    var var_3 = Struct_1(var_2, global0.b, var_2, select(global0.d, select(!select(global0.d, vec3<bool>(true, global0.d.x, global0.d.x), global0.d), global0.d, global0.d.x), false && global0.d.x), vec2<f32>(-1235f, 449f));
    var_3 = Struct_1(var_2, func_1().b, 130f, vec3<bool>(var_3.b > _wgslsmith_mult_i32(min(-1i, u_input.a), 44696i), true || global0.d.x, global0.d.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-253f + _wgslsmith_f_op_f32(max(var_2, 1312f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a * var_3.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(90102u, 16982u, 45122u, 0u)) >> (~5558u % 32u)) & 1u, _wgslsmith_sub_vec3_u32(reverseBits(max(firstTrailingBit(vec3<u32>(4294967295u, 1u, 63327u)), max(vec3<u32>(0u, 15487u, 51760u), vec3<u32>(1u, 1u, 4294967295u)))), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(41800u, 1u), select(4294967295u, 0u, false)), abs(1u), 1u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.a, global0.e.x, -1135f, 841f), vec4<f32>(-1389f, 405f, var_2, -863f), vec4<bool>(false, global0.d.x, global0.d.x, var_3.d.x))) + vec4<f32>(global0.e.x, var_3.e.x, -583f, var_3.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1824f, -1000f, var_3.e.x, var_3.c) - vec4<f32>(177f, -638f, global0.e.x, 1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -290f, global0.e.x, 1000f) + vec4<f32>(-1099f, 1000f, 1000f, var_3.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, -1927f, var_2)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2, 418f, -278f, -499f))))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_div_f32(var_2, -812f), var_3.e.x, _wgslsmith_f_op_f32(global0.c - -920f))))));
}

