struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(2147483647i, 1i, i32(-2147483648), 0i, -1i, 1i, 23021i, -1i, 0i, 51714i, -27857i, -38395i, 0i, 41269i, -9562i, 23320i, 1i, -1397i, -18513i, -2132i, -458i, -39436i, 15187i, 2147483647i, -4656i, -47934i, 14902i);

var<private> global1: array<bool, 29> = array<bool, 29>(false, true, true, true, false, false, true, false, true, true, true, true, true, true, true, true, true, false, true, true, true, false, false, false, true, false, false, true, true);

var<private> global2: array<Struct_1, 12>;

var<private> global3: vec3<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> u32 {
    global1 = array<bool, 29>();
    let var_0 = Struct_3(~_wgslsmith_clamp_i32((global0[_wgslsmith_index_u32(global3.x, 27u)] >> (u_input.b % 32u)) | global0[_wgslsmith_index_u32(~64144u, 27u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u << (u_input.b % 32u), firstTrailingBit(u_input.a.x)), 27u)], _wgslsmith_mod_i32(u_input.d, 1i)), vec3<bool>(true, true, all(vec2<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(33643u, 29u)], false, false)), true))), (~(6851u << (0u % 32u)) & global3.x) ^ firstLeadingBit(~(~0u)), _wgslsmith_f_op_f32(sign(-307f)));
    var var_1 = select(true, any(vec4<bool>(false, var_0.b.x, true, true)), !all(!vec3<bool>(false, var_0.b.x, true)));
    var var_2 = var_0.a;
    global0 = array<i32, 27>();
    return abs(47481u);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_2))))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1148f, -547f, -330f)), vec3<f32>(584f, -1924f, arg_2))))), global1[_wgslsmith_index_u32(min(~91202u, global3.x), 29u)]));
    global1 = array<bool, 29>();
    var var_1 = 91827u;
    var var_2 = _wgslsmith_div_i32(8812i, -_wgslsmith_dot_vec3_i32(countOneBits(countOneBits(vec3<i32>(-41223i, global0[_wgslsmith_index_u32(4294967295u, 27u)], 11786i))), -_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.d, u_input.d), vec3<i32>(-14403i, 14942i, u_input.d))));
    let var_3 = arg_0;
    return ~_wgslsmith_mult_vec2_i32(abs(firstTrailingBit(vec2<i32>(-1i, u_input.d))), vec2<i32>(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 27u)], ~u_input.d)) << (vec2<u32>(min(_wgslsmith_mod_u32(~0u, ~global3.x), ~0u), global3.x) % vec2<u32>(32u));
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_mod_u32(~(~1u), _wgslsmith_mod_u32(u_input.b | u_input.a.x, _wgslsmith_sub_u32(select(func_2(), u_input.c.x, false), global3.x)));
    var var_1 = u_input.c;
    let var_2 = _wgslsmith_add_i32(global0[_wgslsmith_index_u32(46016u, 27u)], -_wgslsmith_mod_i32(~(-global0[_wgslsmith_index_u32(global3.x, 27u)]), ~u_input.d));
    var var_3 = vec4<i32>(-select(-abs(-1i), -u_input.d, all(vec2<bool>(false, true)) & global1[_wgslsmith_index_u32(func_2(), 29u)]), _wgslsmith_add_i32(abs(global0[_wgslsmith_index_u32(var_1.x, 27u)]), -1487i & _wgslsmith_dot_vec4_i32(-arg_0, arg_0)), -_wgslsmith_dot_vec2_i32(func_3(global3.x >= var_1.x, all(vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(36602u, 29u)])), _wgslsmith_f_op_f32(floor(448f))), firstTrailingBit(vec2<i32>(var_2, 86463i))), ~firstTrailingBit(_wgslsmith_clamp_i32(i32(-1i) * -84065i, func_3(global1[_wgslsmith_index_u32(var_0, 29u)], global1[_wgslsmith_index_u32(46408u, 29u)], 1231f).x, ~2147483647i)));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1323f);
    return Struct_3(arg_0.x, select(!select(!vec3<bool>(global1[_wgslsmith_index_u32(global3.x, 29u)], false, true), select(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(var_1.x, 29u)]), vec3<bool>(global1[_wgslsmith_index_u32(11269u, 29u)], true, true), false), false), !vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 29u)], true, true), true == (max(4294967295u, var_0) >= ~34643u)), _wgslsmith_div_u32(var_1.x, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-932f, _wgslsmith_f_op_f32(-180f - 1034f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1182f * 195f)), all(vec3<bool>(global1[_wgslsmith_index_u32(1u, 29u)], true, true))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> bool {
    let var_0 = -1077f;
    var var_1 = arg_1.c;
    var var_2 = Struct_1(false, vec3<i32>(0i >> (1u % 32u), -arg_0.a.b.x, abs(abs(-11021i))), arg_0.a.d, global1[_wgslsmith_index_u32(0u, 29u)]);
    global3 = u_input.c;
    let var_3 = Struct_2(Struct_1(true, vec3<i32>(0i, _wgslsmith_dot_vec2_i32(reverseBits(var_2.b.xy), arg_0.a.b.xx), 1i), 39690u != (arg_1.c | abs(51626u)), global1[_wgslsmith_index_u32(4294967295u, 29u)]), func_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, var_2.b.x, 23119i, arg_1.a), vec4<i32>(arg_0.a.b.x, 1i, -29890i, 12096i)) & arg_0.a.b.x, _wgslsmith_sub_i32(-2147483647i, arg_0.a.b.x >> (global3.x % 32u)), countOneBits(global0[_wgslsmith_index_u32(~global3.x, 27u)]), (i32(-1i) * -2147483647i) >> (~global3.x % 32u))).a, global2[_wgslsmith_index_u32(4294967295u, 12u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1.d)))));
    return global1[_wgslsmith_index_u32(~(~(~_wgslsmith_sub_u32(52308u, u_input.b))), 29u)];
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<f32>) -> StorageBuffer {
    var var_0 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0, global3.x), firstTrailingBit(0u))), 29u)], abs(max(vec3<i32>(1i, -68319i, global0[_wgslsmith_index_u32(arg_0, 27u)]), vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(35287u, 27u)]) << (u_input.c % vec3<u32>(32u)))), all(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 29u)], true)), arg_1.x && arg_1.x), ~(i32(-1i) * -u_input.d), Struct_1(true, _wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.d, min(global0[_wgslsmith_index_u32(arg_0, 27u)], 35138i), -35121i), vec3<i32>(u_input.d, u_input.d, 1i) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, global3.x), u_input.c) % vec3<u32>(32u))), true, global1[_wgslsmith_index_u32(global3.x, 29u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(604f * _wgslsmith_f_op_f32(-arg_2.x)), true)));
    var var_1 = var_0.a;
    var var_2 = Struct_2(Struct_1(arg_1.x, select(_wgslsmith_mult_vec3_i32(var_0.c.b, countOneBits(var_1.b)), vec3<i32>(-var_0.c.b.x, global0[_wgslsmith_index_u32(abs(global3.x), 27u)], 31895i), var_0.c.a), global1[_wgslsmith_index_u32(reverseBits(max(abs(u_input.a.x), u_input.b & global3.x)), 29u)], false), var_1.b.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1320f, arg_2.x)) + _wgslsmith_f_op_f32(-var_0.d)) < var_0.d, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(var_1.b, var_0.c.b) << (u_input.c % vec3<u32>(32u)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_0, 27u)], -28270i, global0[_wgslsmith_index_u32(arg_0, 27u)]), vec3<i32>(var_1.b.x, -5650i, global0[_wgslsmith_index_u32(arg_0, 27u)]), vec3<i32>(25328i, 12828i, -2147483647i))), global1[_wgslsmith_index_u32(global3.x, 29u)] || var_0.a.d, any(!arg_1)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-arg_2.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.d))))))));
    global2 = array<Struct_1, 12>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * 808f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(func_1(vec4<i32>(-1i, 15653i, 1i, var_2.a.b.x)).d, -190f))))));
    return StorageBuffer(vec3<i32>(var_0.a.b.x, _wgslsmith_add_i32(abs(-var_1.b.x), -11716i), var_2.a.b.x), select(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 10532u, arg_0, 61240u), vec4<u32>(u_input.b, 16979u, global3.x, 1u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, global3.x, global3.x), ~vec4<u32>(arg_0, u_input.b, 24746u, 35914u)), _wgslsmith_f_op_f32(-332f - var_3.x) == _wgslsmith_div_f32(964f, -726f)) ^ ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, global3.x, 19263u), vec4<u32>(u_input.b, arg_0, 4294967295u, 0u), vec4<u32>(1u, 59882u, u_input.c.x, 29869u)) | _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c.x, global3.x, 37645u), vec4<u32>(5522u, u_input.c.x, global3.x, global3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(u_input.b, vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(93387u, 26616u, u_input.b, u_input.c.x)), vec4<u32>(global3.x, global3.x, global3.x, u_input.c.x))), 29u)], true != func_4(Struct_4(Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], vec3<i32>(2147483647i, u_input.d, 0i), global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)])), func_1(vec4<i32>(1i, 24262i, -2147483647i, u_input.d)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1575f, -1185f)))))));
}

