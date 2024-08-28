struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<f32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 25>;

var<private> global2: array<f32, 4>;

var<private> global3: array<i32, 11>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<i32>) -> vec4<u32> {
    global3 = array<i32, 11>();
    var var_0 = global1[_wgslsmith_index_u32(~4294967295u, 25u)];
    global1 = array<bool, 25>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(0u), 4u)] - -1547f) + -273f);
    global3 = array<i32, 11>();
    return countOneBits(vec4<u32>(~4294967295u, 1u, firstLeadingBit(~0u), 26658u) | vec4<u32>(0u, ~53546u, ~5206u, firstTrailingBit(27315u) >> (4294967295u % 32u)));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_4(776u, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(2918u, 4u)], _wgslsmith_f_op_f32(sign(-1585f))), select(4294967295u, ~1u, true), Struct_2(1i), true);
    global3 = array<i32, 11>();
    var var_1 = vec2<bool>(true, var_0.e);
    var var_2 = Struct_2(_wgslsmith_sub_i32(1i, 43476i) >> (~(var_0.a & countOneBits(43673u)) % 32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-2743f, 584f, -463f, var_0.b), vec4<f32>(global2[_wgslsmith_index_u32(24105u, 4u)], -1213f, global2[_wgslsmith_index_u32(var_0.c, 4u)], -421f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1016f, -457f, -413f, var_0.b)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(1000f * -305f), -390f, 434f))));
    return ~(~(reverseBits(~vec4<u32>(66961u, 0u, 70907u, var_0.c)) << (countOneBits(~vec4<u32>(var_0.a, var_0.c, 4294967295u, var_0.c)) % vec4<u32>(32u))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32) -> i32 {
    var var_0 = vec2<i32>(min(global3[_wgslsmith_index_u32(~reverseBits(arg_1.c), 11u)], _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(~56698u, 11u)], u_input.a, -arg_1.d.a)) ^ _wgslsmith_mult_i32(_wgslsmith_sub_i32(max(-4809i, 2147483647i), 0i), u_input.a), 10257i);
    global3 = array<i32, 11>();
    var var_1 = _wgslsmith_sub_i32(2147483647i, _wgslsmith_add_i32(var_0.x, global3[_wgslsmith_index_u32(~(~12591u), 11u)]));
    let var_2 = arg_1.d;
    var var_3 = vec3<u32>(~(_wgslsmith_dot_vec4_u32(func_3(), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_2, arg_0.b.e, 19632u), vec4<u32>(45695u, 1572u, arg_0.a.e, 7022u))) >> (4294967295u % 32u)), 45279u & _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(69368u, 1u, arg_2)), ~vec3<u32>(0u, arg_2, arg_0.b.e)), ~(~16166u)), ~arg_0.c.x | _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_2, 1u, 34257u, arg_1.c) ^ vec4<u32>(59773u, 31859u, arg_0.a.e, arg_0.a.e)), ~select(vec4<u32>(4294967295u, arg_1.c, arg_1.a, arg_1.a), vec4<u32>(25502u, 4294967295u, arg_2, arg_0.a.e), vec4<bool>(false, arg_0.b.b, true, arg_0.e.b))));
    return _wgslsmith_mod_i32(-39426i, 19656i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 4>();
    var var_0 = abs(_wgslsmith_div_u32(~8263u, 67152u));
    let var_1 = u_input.b >> (select(vec4<u32>(4294967295u, 1u, ~_wgslsmith_div_u32(58367u, 20800u), ~(63702u >> (1u % 32u))), func_1(u_input.b.wyy), vec4<bool>(func_2(Struct_3(Struct_1(vec3<f32>(-280f, -1955f, global2[_wgslsmith_index_u32(1u, 4u)]), global1[_wgslsmith_index_u32(67926u, 25u)], vec2<f32>(-410f, -1000f), vec4<f32>(global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], -1318f), 32263u), Struct_1(vec3<f32>(-1821f, global2[_wgslsmith_index_u32(66852u, 4u)], -1000f), true, vec2<f32>(global2[_wgslsmith_index_u32(11055u, 4u)], -367f), vec4<f32>(global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(42965u, 4u)], global2[_wgslsmith_index_u32(22892u, 4u)], global2[_wgslsmith_index_u32(70631u, 4u)]), 41985u), vec2<u32>(4294967295u, 444u), -661f, Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(38774u, 4u)], global2[_wgslsmith_index_u32(53811u, 4u)], -1219f), false, vec2<f32>(global2[_wgslsmith_index_u32(46624u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)]), vec4<f32>(global2[_wgslsmith_index_u32(0u, 4u)], -1551f, -1022f, global2[_wgslsmith_index_u32(4294967295u, 4u)]), 1u)), Struct_4(55131u, -1000f, 4294967295u, Struct_2(-56288i), false), 95657u) <= (global3[_wgslsmith_index_u32(1u, 11u)] >> (0u % 32u)), false, true, true)) % vec4<u32>(32u));
    var var_2 = Struct_2(firstLeadingBit(-1i));
    var var_3 = Struct_4(func_3().x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(46070u, 4u)]), global2[_wgslsmith_index_u32(~62479u, 4u)]))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(57107u, 72711u, 0u), ~vec3<u32>(1u, 4294967295u, 39395u)), 4u)] + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~56269u, 4u)])))), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(func_1(var_1.yxy), vec4<u32>(1u, 1u, 1u, 1u)), ~1u), max(4294967295u, func_3().x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~countOneBits(vec4<u32>(0u, 1u, 1u, 22166u)))), Struct_2(var_2.a & firstLeadingBit(global3[_wgslsmith_index_u32(1u, 11u)] << (40767u % 32u))), true);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_3.b - _wgslsmith_f_op_f32(-var_3.b)), -402f, -547f))), all(vec2<bool>(true, !(var_3.e & var_3.e))), vec2<f32>(global2[_wgslsmith_index_u32(var_3.a, 4u)], var_3.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2123f, 330f, _wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_3.a, 4u)] * 407f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(603f, 1000f, -595f, 108f)) - vec4<f32>(global2[_wgslsmith_index_u32(65069u, 4u)], var_3.b, var_3.b, -272f)))), true)), countOneBits(_wgslsmith_dot_vec3_u32(~func_1(var_1.yyx).xww, ~abs(vec3<u32>(1u, var_3.c, 0u)))));
    let var_5 = min(_wgslsmith_sub_i32(-2147483647i, var_1.x), ~var_1.x);
    var var_6 = firstLeadingBit(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 1i, -2147483647i, 1i), vec4<i32>(2147483647i, 2147483647i, var_3.d.a, u_input.a)) >> (max(vec4<u32>(1u, 1u, 4294967295u, ~4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(var_4.e, 32500u, var_3.c, var_4.e), vec4<u32>(var_4.e, 1u, var_3.a, 52011u))) % vec4<u32>(32u)));
    var_6 = _wgslsmith_sub_vec4_i32(countOneBits(var_1), -vec4<i32>(1i, var_2.a, global3[_wgslsmith_index_u32(var_4.e, 11u)] ^ _wgslsmith_clamp_i32(-2147483647i, 32551i, -2147483647i), countOneBits(19883i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global3[_wgslsmith_index_u32(33765u, 11u)], -15599i, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_4.e << (0u % 32u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(19614u, var_4.e, 69935u, 0u), vec4<u32>(var_4.e, var_3.a, 23553u, var_3.c), global1[_wgslsmith_index_u32(63500u, 25u)]), ~vec4<u32>(var_4.e, 16433u, 6022u, var_4.e)), 0u), 11u)]), vec4<i32>(abs(abs(-59281i)), ~(-2147483647i), _wgslsmith_add_i32(var_2.a, countOneBits(2147483647i)), -1i), var_6.yzw, var_1.xx, vec3<u32>(abs(var_4.e), _wgslsmith_sub_u32(var_4.e, var_3.a), var_4.e));
}

