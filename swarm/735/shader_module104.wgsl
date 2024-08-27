struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(false, true), Struct_1(true, true), Struct_1(false, true), Struct_1(false, true), Struct_1(false, false), Struct_1(false, false), Struct_1(false, false), Struct_1(true, true), Struct_1(false, true), Struct_1(false, true), Struct_1(false, true), Struct_1(false, true), Struct_1(true, false), Struct_1(false, true), Struct_1(false, true), Struct_1(true, false), Struct_1(true, false), Struct_1(false, false), Struct_1(true, true), Struct_1(false, false));

var<private> global1: array<i32, 17>;

var<private> global2: array<f32, 25> = array<f32, 25>(790f, -227f, 602f, 616f, 1470f, 1000f, -810f, -171f, -869f, 326f, 1570f, 818f, -487f, -1000f, -222f, -357f, -1070f, 968f, -523f, -767f, -754f, -1034f, 272f, 2378f, 1000f);

var<private> global3: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> vec2<f32> {
    global0 = array<Struct_1, 20>();
    global2 = array<f32, 25>();
    global0 = array<Struct_1, 20>();
    global3 = arg_0.b;
    let var_0 = Struct_1(arg_2.b, arg_2.a);
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(1u, 25u)], -1680f))), arg_1.b.yy, select(!vec2<bool>(arg_1.c.b, arg_2.a), !vec2<bool>(var_0.a, true), vec2<bool>(arg_1.c.b, true)))))));
}

fn func_2(arg_0: i32) -> vec4<f32> {
    global2 = array<f32, 25>();
    var var_0 = ~arg_0;
    global0 = array<Struct_1, 20>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(true, !any(vec2<bool>(true, true))), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], -1730f) * vec2<f32>(-223f, global2[_wgslsmith_index_u32(u_input.a.x, 25u)])), vec3<f32>(-1377f, 364f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 25u)])), global0[_wgslsmith_index_u32(u_input.a.x ^ ~1u, 20u)], 0u, Struct_1(true, true)), Struct_1(any(vec2<bool>(false, true)), true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(231f, global2[_wgslsmith_index_u32(u_input.a.x, 25u)], global2[_wgslsmith_index_u32(u_input.a.x, 25u)])))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(410f, global2[_wgslsmith_index_u32(4294967295u, 25u)]), global2[_wgslsmith_index_u32(65165u, 25u)], _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(u_input.a.x, 25u)]))))), Struct_1(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false), true)), any(vec4<bool>(true, all(vec4<bool>(true, true, true, false)), all(vec4<bool>(false, false, true, false)), true))), _wgslsmith_clamp_u32(min(22440u, ~41668u), firstTrailingBit(~0u), 1u), Struct_1(select(any(vec2<bool>(false, true)), true, true), true));
    global1 = array<i32, 17>();
    return vec4<f32>(_wgslsmith_f_op_f32(min(309f, 1191f)), _wgslsmith_f_op_f32(-2460f - _wgslsmith_f_op_f32(floor(var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(var_1.c, Struct_3(_wgslsmith_f_op_vec2_f32(select(var_1.a, vec2<f32>(443f, 1401f), vec2<bool>(var_1.c.b, var_1.c.a))), vec3<f32>(957f, 107f, global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), var_1.e, reverseBits(0u), var_1.c), global0[_wgslsmith_index_u32(~select(var_1.d, var_1.d, var_1.c.a), 20u)])).x * -1888f), var_1.b.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(-2147483647i)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -455f, -839f, arg_2)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -762f) * vec4<f32>(1011f, global2[_wgslsmith_index_u32(4294967295u, 25u)], arg_2, arg_2))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-188f + -367f), global2[_wgslsmith_index_u32(1u, 25u)], 211f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(372f, global2[_wgslsmith_index_u32(u_input.a.x, 25u)], arg_2, 844f)))), true)))), vec4<bool>(true, true, _wgslsmith_dot_vec3_i32(-u_input.c, ~u_input.c) <= max(u_input.c.x, firstTrailingBit(-19506i)), true)));
    global0 = array<Struct_1, 20>();
    global3 = any(vec3<bool>(true, true, true));
    global1 = array<i32, 17>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(-246f, _wgslsmith_f_op_f32(floor(804f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1f)))))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_0.x, 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1596f) * arg_1.x))), -1843f);
    return true;
}

fn func_4(arg_0: bool, arg_1: bool) -> vec3<i32> {
    var var_0 = Struct_4(Struct_1(_wgslsmith_mod_u32(4294967295u, min(88350u, u_input.a.x)) >= (u_input.a.x << (~4294967295u % 32u)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 25u)] + global2[_wgslsmith_index_u32(47287u, 25u)]), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(36367u, u_input.a.x), 25u)]), _wgslsmith_div_f32(356f, -1000f)))));
    let var_1 = Struct_4(Struct_1(true | any(select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(false, false, var_0.a.b, true), var_0.a.b)), arg_0), var_0.b);
    global0 = array<Struct_1, 20>();
    var var_2 = vec3<i32>(countOneBits(-u_input.c.x) | 1i, firstTrailingBit(u_input.c.x), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 17u)] ^ (abs(-u_input.c.x) | 0i));
    var var_3 = 26453i;
    return _wgslsmith_sub_vec3_i32(max(u_input.c, vec3<i32>(~31248i << (u_input.a.x % 32u), u_input.c.x, -20123i)), select(u_input.c, vec3<i32>(global1[_wgslsmith_index_u32(~0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(819u, u_input.a.x, 19590u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 45295u)) % 32u), 17u)], _wgslsmith_div_i32(_wgslsmith_mult_i32(-29718i, -2328i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), var_2.xx)), ~min(global1[_wgslsmith_index_u32(21721u, 17u)], 15000i)), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(func_4(true, any(vec3<bool>(true, true, func_1(u_input.a, vec3<f32>(-104f, global2[_wgslsmith_index_u32(u_input.a.x, 25u)], -468f), global2[_wgslsmith_index_u32(67798u, 25u)])))), vec3<i32>(-(min(1i, u_input.c.x) & -1i), func_4(all(vec3<bool>(true, true, true)), !all(vec2<bool>(false, true))).x, select(-(~u_input.c.x), 1i, true)));
    var var_1 = -(vec3<i32>(-min(u_input.c.x, 1i), abs(_wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(-9006i, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]))), -(~global1[_wgslsmith_index_u32(85733u, 17u)])) >> (~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 0u) & vec3<u32>(u_input.a.x, u_input.a.x, 1u)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mod_i32(var_0.x, firstTrailingBit(var_0.x)))).x));
    global0 = array<Struct_1, 20>();
    var_0 = vec3<i32>(-min(u_input.b, select(1i, ~41517i, true)), -var_1.x, 58775i);
    let var_3 = ~((-select(13468i, u_input.c.x, false) & select(abs(59363i), global1[_wgslsmith_index_u32(0u, 17u)], all(vec4<bool>(false, true, true, false)))) << (abs(u_input.a.x) % 32u));
    let var_4 = 62287i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -463f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(62755u, 25u)], -1303f, global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], global2[_wgslsmith_index_u32(u_input.a.x, 25u)], global2[_wgslsmith_index_u32(63181u, 25u)]), false)), Struct_1(true, false), u_input.a.x << (0u % 32u), global0[_wgslsmith_index_u32(4294967295u, 20u)]), Struct_1(true, true))).x, _wgslsmith_f_op_f32(abs(-1253f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 25u)] * -301f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - -1087f), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.a.x, 25u)])))))), ~vec2<u32>(85406u, u_input.a.x));
}

