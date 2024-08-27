struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, false, true, true, true, false, true, false, true, false, false, true, true, true);

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-1896f, 45677u), Struct_1(-103f, 1u), Struct_1(750f, 1u), Struct_1(2212f, 1u), Struct_1(1427f, 0u), Struct_1(-281f, 80590u), Struct_1(-1164f, 85324u), Struct_1(-1796f, 1u), Struct_1(744f, 1u), Struct_1(-1689f, 93931u), Struct_1(-2331f, 4294967295u), Struct_1(1404f, 0u), Struct_1(-347f, 35264u), Struct_1(-149f, 0u), Struct_1(-852f, 19948u), Struct_1(2179f, 0u), Struct_1(612f, 4294967295u), Struct_1(-389f, 22666u), Struct_1(116f, 1u), Struct_1(597f, 59550u), Struct_1(-854f, 1u), Struct_1(981f, 18705u), Struct_1(-1263f, 0u), Struct_1(919f, 41381u), Struct_1(-672f, 10836u), Struct_1(899f, 33343u), Struct_1(-622f, 25335u), Struct_1(638f, 4294967295u), Struct_1(-1021f, 28284u));

var<private> global2: Struct_2;

var<private> global3: f32 = -1113f;

var<private> global4: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(arg_1.a, global2.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1691f, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -111f), false))) - _wgslsmith_f_op_f32(f32(-1f) * -666f)), reverseBits(global4.d));
    global0 = array<bool, 15>();
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1438f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(805f))))) + _wgslsmith_f_op_f32(min(742f, -2314f))));
    global0 = array<bool, 15>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(894f * 1000f), global2.b, !any(vec3<bool>(global0[_wgslsmith_index_u32(10485u, 15u)], false, false)))));
}

fn func_2() -> u32 {
    global1 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(286f + 982f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)), 1f))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-983f - 1005f), global2.b, _wgslsmith_f_op_f32(func_3(abs(-(~(-2147483647i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-193f)) * var_0.x), 40791u))), select(-min(max(vec3<i32>(global2.d.x, 41964i, global2.d.x), global4.d), vec3<i32>(u_input.a.x, global4.d.x, 0i)), vec3<i32>(~u_input.a.x, global2.d.x >> (65476u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global4.d.x, 1i, global2.d.x), vec4<i32>(2147483647i, u_input.a.x, global2.d.x, -1i))) | -firstLeadingBit(global4.d), all(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)], false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 15u)]), true))));
    global4 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-685f, 1792f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-424f, -482f))))))), _wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c) - -1485f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(667f))), ~_wgslsmith_add_vec3_i32(global4.d, _wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, 2147483647i, 1i), -var_1.d)));
    global2 = var_1;
    return 1020u;
}

fn func_1() -> vec4<i32> {
    global0 = array<bool, 15>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-434f * -179f))), countOneBits(~_wgslsmith_mod_u32(func_2(), firstTrailingBit(4294967295u))));
    global3 = -503f;
    global1 = array<Struct_1, 29>();
    var var_1 = true;
    return vec4<i32>(global2.d.x, select(abs(~1i), 1i, _wgslsmith_f_op_f32(global4.c - _wgslsmith_f_op_f32(round(global2.b))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.c + 1139f)))), i32(-1i) * -8545i, max(_wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, 29642i), _wgslsmith_mod_i32(10108i, global4.d.x)), _wgslsmith_mult_i32(firstLeadingBit(u_input.a.x), 10544i)) ^ 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = array<Struct_1, 29>();
    var var_1 = 849f;
    var var_2 = !select(!select(select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], false, global0[_wgslsmith_index_u32(1u, 15u)]), global0[_wgslsmith_index_u32(40809u, 15u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(12357u, 15u)], true), select(vec3<bool>(true, global0[_wgslsmith_index_u32(93592u, 15u)], false), vec3<bool>(global0[_wgslsmith_index_u32(79476u, 15u)], true, global0[_wgslsmith_index_u32(33896u, 15u)]), vec3<bool>(global0[_wgslsmith_index_u32(39293u, 15u)], false, false))), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(31850u, 15u)])), all(select(select(vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], true, global0[_wgslsmith_index_u32(71331u, 15u)]), true), select(vec3<bool>(global0[_wgslsmith_index_u32(4915u, 15u)], global0[_wgslsmith_index_u32(66815u, 15u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(5413u, 15u)], global0[_wgslsmith_index_u32(39486u, 15u)]), false), all(vec4<bool>(global0[_wgslsmith_index_u32(94133u, 15u)], true, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(34780u, 15u)])))));
    global1 = array<Struct_1, 29>();
    var_0 = any(select(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 15u)], true, select(!var_2.x, true, false), !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(17335u, 1u), 15u)]), !(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 15u)], var_2.x)), false));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - -746f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -455f), -1074f)))), -508f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.c))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), _wgslsmith_mod_u32(~abs(firstTrailingBit(4294967295u)), ~(_wgslsmith_sub_u32(48969u, 16227u) | firstTrailingBit(0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_div_f32(global2.c, global2.b))))), -vec2<i32>(14959i, ~global2.d.x), vec2<i32>(-9628i, countOneBits(reverseBits(u_input.a.x)) ^ -global2.d.x));
}

