struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: array<bool, 7> = array<bool, 7>(true, true, false, true, false, true, true);

var<private> global2: Struct_1;

var<private> global3: array<bool, 14>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> vec3<u32> {
    global3 = array<bool, 14>();
    global2 = Struct_1(global2.a, 45734u, global2.e.x, -arg_2.a.a.d, ~arg_2.b.a.e);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), global2.a) + _wgslsmith_f_op_f32(max(arg_0.b.a.a, arg_0.a.a.a))) + _wgslsmith_f_op_f32(exp2(arg_0.a.a.a)));
    global1 = array<bool, 7>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0.a.a.a)), _wgslsmith_f_op_f32(-var_0))))), 0u, 4294967295u, _wgslsmith_dot_vec3_i32(select(vec3<i32>(~arg_0.b.a.d, 24108i, ~arg_0.b.a.d), -_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b.a.d, 2147483647i, arg_0.b.a.d), vec3<i32>(0i, global0[_wgslsmith_index_u32(arg_1, 28u)], global0[_wgslsmith_index_u32(global2.c, 28u)])), global1[_wgslsmith_index_u32(firstTrailingBit(arg_1), 7u)]), min(firstLeadingBit(vec3<i32>(arg_0.b.a.d, global2.d, -1i)), vec3<i32>(-1i) * -vec3<i32>(arg_2.a.a.d, arg_2.a.a.d, arg_2.b.a.d))), ~vec2<u32>(472u, 1u));
    return ~(~vec3<u32>(0u, _wgslsmith_mult_u32(76061u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, arg_2.a.a.c), u_input.a)), abs(~64951u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_3) -> f32 {
    let var_0 = arg_1;
    let var_1 = any(select(!(!vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(global2.c, 7u)])), select(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.e.x ^ arg_0.x, 7u)], any(vec4<bool>(true, true, false, true)), true), !select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.c, 7u)], global3[_wgslsmith_index_u32(arg_0.x, 14u)], global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(arg_3.b.a.c, 7u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 14u)], false, true), true), !(global3[_wgslsmith_index_u32(1u, 14u)] && global3[_wgslsmith_index_u32(21547u, 14u)])), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(0u, 14u)], true), vec2<bool>(true, true))), ~arg_3.a.a.d != 1i, global1[_wgslsmith_index_u32(~var_0.b, 7u)], true)));
    let var_2 = firstLeadingBit(~vec4<u32>(54987u, ~u_input.a.x, 63346u, ~4294967295u) ^ min(~vec4<u32>(1u, 71908u, u_input.a.x, arg_3.a.a.b), ~countOneBits(vec4<u32>(4294967295u, 4294967295u, 1u, 1u))));
    global3 = array<bool, 14>();
    var var_3 = Struct_3(Struct_2(arg_3.b.a), arg_3.b, arg_1.b);
    return 1f;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3(Struct_3(Struct_2(Struct_1(-365f, 33251u, 22678u, -26813i, global2.e)), Struct_2(Struct_1(1000f, 0u, 20649u, global0[_wgslsmith_index_u32(4294967295u, 28u)], vec2<u32>(25915u, u_input.a.x))), abs(arg_0)), global2.c, Struct_3(Struct_2(Struct_1(global2.a, global2.c, global2.e.x, global0[_wgslsmith_index_u32(arg_0, 28u)], vec2<u32>(4294967295u, 28792u))), Struct_2(Struct_1(arg_2.x, arg_0, u_input.a.x, -1i, global2.e)), 0u)), Struct_1(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(arg_2.x * -253f)), ~_wgslsmith_sub_u32(67978u, 1u), 1u | _wgslsmith_mod_u32(global2.e.x, arg_0), global0[_wgslsmith_index_u32(4294967295u, 28u)], select(~vec2<u32>(30300u, global2.b), select(global2.e, u_input.a, false), select(vec2<bool>(true, arg_1.x), arg_1.xz, vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1711f), _wgslsmith_div_f32(-1000f, 2577f), global2.a)), Struct_3(Struct_2(Struct_1(arg_2.x, arg_0, arg_0, -2147483647i, global2.e)), Struct_2(Struct_1(374f, u_input.a.x, 54406u, global0[_wgslsmith_index_u32(0u, 28u)], global2.e)), _wgslsmith_clamp_u32(~21639u, ~4294967295u, ~u_input.a.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1000f))))));
    var var_1 = (-_wgslsmith_sub_i32(~global2.d, 1i) >= 1i) | (global1[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(global2.b, global2.c) ^ 42751u), 7u)] || (~12343u <= _wgslsmith_mod_u32(~global2.c, 35797u)));
    global2 = Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec3_u32(~reverseBits(vec3<u32>(0u, 4294967295u, global2.e.x)), min(vec3<u32>(u_input.a.x, 30413u, global2.b), vec3<u32>(global2.e.x, 37724u, global2.c)) | countOneBits(vec3<u32>(global2.e.x, 4294967295u, 23731u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(13415u, 29537u, 51989u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.b, 2105u, 39201u), vec3<u32>(u_input.a.x, arg_0, 39805u), vec3<u32>(76067u, 0u, 22433u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(60524u, 50369u, 23657u)))), Struct_1(var_0, ~countOneBits(arg_0), (arg_0 & 43162u) & _wgslsmith_div_u32(u_input.a.x, 10052u), global0[_wgslsmith_index_u32(global2.e.x, 28u)], u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) * vec3<f32>(677f, _wgslsmith_f_op_f32(sign(275f)), _wgslsmith_div_f32(global2.a, 974f))), Struct_3(Struct_2(Struct_1(var_0, 44550u, u_input.a.x, -1i, global2.e)), Struct_2(Struct_1(1000f, u_input.a.x, 21474u, 2147483647i, vec2<u32>(61619u, u_input.a.x))), abs(select(u_input.a.x, arg_0, true))))), ~(~firstTrailingBit(1u)), 9500u, ~(-1i), _wgslsmith_sub_vec2_u32(firstTrailingBit(firstTrailingBit(u_input.a) << (global2.e % vec2<u32>(32u))), vec2<u32>(41402u, 1u)));
    var var_2 = -vec4<i32>(_wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 1i), 57785i, global0[_wgslsmith_index_u32(~(~24822u), 28u)], 1i);
    var var_3 = Struct_1(var_0, ((max(843u, 52283u) ^ arg_0) & 32930u) >> (~0u % 32u), firstLeadingBit(reverseBits(0u)), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_2.x, -9540i) & select(vec3<i32>(-43858i, 0i, var_2.x), vec3<i32>(17731i, -13577i, global2.d), true), _wgslsmith_mod_vec3_i32(vec3<i32>(-19939i, -1i, global2.d), ~vec3<i32>(global2.d, 2998i, 25431i))), ~vec2<u32>(~86231u, global2.c) | ~global2.e);
    return _wgslsmith_f_op_f32(504f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-723f + _wgslsmith_f_op_f32(-var_3.a)))), _wgslsmith_f_op_f32(-483f + _wgslsmith_f_op_f32(abs(var_0))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<f32>) -> Struct_4 {
    let var_0 = u_input.a;
    var var_1 = !global1[_wgslsmith_index_u32(var_0.x, 7u)];
    global2 = Struct_1(-585f, 0u, _wgslsmith_add_u32(52040u, ~arg_1), global2.d, u_input.a);
    global3 = array<bool, 14>();
    var var_2 = global2.a;
    return Struct_4(vec2<bool>(global1[_wgslsmith_index_u32(32429u >> (1u % 32u), 7u)], any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 14u)] | true, global1[_wgslsmith_index_u32(4294967295u, 7u)]))), select(_wgslsmith_add_vec4_u32(vec4<u32>(2932u, var_0.x, 109952u, 54711u), vec4<u32>(1u, u_input.a.x, var_0.x, 4294967295u)), firstTrailingBit(~vec4<u32>(0u, 104106u, var_0.x, 1u)), !global1[_wgslsmith_index_u32(u_input.a.x, 7u)] == global3[_wgslsmith_index_u32(u_input.a.x, 14u)]) ^ ~vec4<u32>(0u, 1u, abs(arg_1), ~u_input.a.x));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = func_5(-vec3<i32>(reverseBits(2147483647i), firstLeadingBit(15834i), arg_0.d), 33196u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-390f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(133151u, vec3<bool>(false, false, global1[_wgslsmith_index_u32(global2.e.x, 7u)]), vec3<f32>(366f, arg_0.a, global2.a))), _wgslsmith_f_op_f32(-833f - -1493f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a + global2.a)))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -259f), arg_0.a)));
    global2 = arg_0;
    let var_1 = firstTrailingBit(_wgslsmith_div_vec3_u32(var_0.b.wxy, var_0.b.xzy));
    var var_2 = var_1.x >= u_input.a.x;
    global3 = array<bool, 14>();
    return max(~(~arg_0.c), select(abs(_wgslsmith_add_u32(var_0.b.x, 1095u)), _wgslsmith_sub_u32(func_3(Struct_3(Struct_2(Struct_1(-298f, u_input.a.x, 0u, global2.d, global2.e)), Struct_2(arg_0), 4294967295u), _wgslsmith_mult_u32(1u, u_input.a.x), Struct_3(Struct_2(arg_0), Struct_2(arg_0), arg_0.b)).x, var_1.x >> (_wgslsmith_div_u32(1u, 49322u) % 32u)), !global3[_wgslsmith_index_u32(~(arg_0.e.x ^ 45256u), 14u)]));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1162f - _wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 1u, arg_1.b), vec3<u32>(4294967295u, u_input.a.x, 28099u)), arg_1, vec3<f32>(-275f, -1512f, -1000f), Struct_3(Struct_2(arg_1), Struct_2(Struct_1(-403f, 1u, 75763u, 2147483647i, vec2<u32>(906u, 4294967295u))), 0u)))), 20886u, 80327u, -arg_1.d, ~arg_1.e));
    let var_1 = vec4<i32>(1i, global0[_wgslsmith_index_u32(select(firstTrailingBit(61156u), global2.c << (1u % 32u), -605f == _wgslsmith_f_op_f32(-global2.a)), 28u)], firstLeadingBit(countOneBits(_wgslsmith_clamp_i32(firstLeadingBit(global2.d), ~2147483647i, global2.d))), global2.d);
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)), arg_1.b, global2.b, 49299i, arg_1.e);
    let var_2 = select(!vec4<bool>(global1[_wgslsmith_index_u32(~global2.e.x, 7u)], reverseBits(arg_1.d) > var_0.a.d, arg_2.x, any(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x))), select(select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(var_0.a.e.x, 14u)], true), vec4<bool>(any(arg_2), global2.a < global2.a, false, global1[_wgslsmith_index_u32(u_input.a.x, 7u)] | global1[_wgslsmith_index_u32(36574u, 7u)]), func_5(abs(var_1.zwx), select(30124u, 0u, true), vec3<f32>(634f, -475f, 1457f)).a.x), !vec4<bool>(false, true, false && arg_2.x, true), select(!(!vec4<bool>(arg_2.x, false, arg_2.x, true)), !select(vec4<bool>(true, false, arg_2.x, false), vec4<bool>(global3[_wgslsmith_index_u32(var_0.a.c, 14u)], global1[_wgslsmith_index_u32(global2.c, 7u)], false, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_1.c, 7u)], true)), func_5(vec3<i32>(-42969i, arg_1.d, global0[_wgslsmith_index_u32(global2.e.x, 28u)]), ~arg_1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, arg_1.a, -541f) - vec3<f32>(1346f, var_0.a.a, 2123f))).a.x)), !select(vec4<bool>(false, false, all(vec3<bool>(true, global3[_wgslsmith_index_u32(arg_0, 14u)], arg_2.x)), func_5(vec3<i32>(global2.d, 5222i, var_0.a.d), 1u, vec3<f32>(var_0.a.a, -122f, arg_1.a)).a.x), select(!vec4<bool>(arg_2.x, true, false, global3[_wgslsmith_index_u32(arg_0, 14u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_0.a.b, 7u)], false, true, arg_2.x), vec4<bool>(false, arg_2.x, false, false)), global1[_wgslsmith_index_u32(~77812u, 7u)] & arg_2.x));
    return Struct_4(select(vec2<bool>(all(vec2<bool>(global3[_wgslsmith_index_u32(global2.b, 14u)], true)), all(var_2.zyz)), !var_2.zy, global1[_wgslsmith_index_u32(94013u, 7u)]), vec4<u32>(max(1u, (global2.e.x << (31619u % 32u)) & global2.e.x), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2.c, 0u, 4294967295u, 1u)), ~abs(vec4<u32>(global2.b, arg_1.e.x, 14784u, global2.b))), 45221u, func_3(Struct_3(var_0, Struct_2(Struct_1(arg_1.a, 20318u, 1u, 1i, vec2<u32>(1u, arg_1.b))), ~u_input.a.x), 0u, Struct_3(var_0, var_0, ~arg_1.c)).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global2.e.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1524f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1263f))), _wgslsmith_mult_u32(min(_wgslsmith_clamp_u32(51657u, global2.c, 4294967295u), func_1(Struct_1(-1000f, 4294967295u, u_input.a.x, global2.d, vec2<u32>(27541u, 43262u)))), 4294967295u), max(~(~46356u), _wgslsmith_dot_vec2_u32(~u_input.a, global2.e ^ vec2<u32>(u_input.a.x, 1u))), global0[_wgslsmith_index_u32(u_input.a.x, 28u)], _wgslsmith_mult_vec2_u32(~(~global2.e), vec2<u32>(_wgslsmith_add_u32(0u, u_input.a.x), _wgslsmith_add_u32(4294967295u, u_input.a.x)))), vec2<bool>(any(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 14u)] && global1[_wgslsmith_index_u32(55454u, 7u)], global1[_wgslsmith_index_u32(global2.c, 7u)], global3[_wgslsmith_index_u32(~u_input.a.x, 14u)])), global3[_wgslsmith_index_u32(u_input.a.x, 14u)]));
    let x = u_input.a;
    s_output = StorageBuffer(-52897i, global2.a);
}

