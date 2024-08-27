struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_4(Struct_1(0u, any(!(!vec4<bool>(true, true, false, global1.e))), countOneBits(firstLeadingBit(u_input.c.x)), u_input.c, all(select(vec4<bool>(true, global1.b, global1.e, true), !vec4<bool>(true, true, global1.e, false), !vec4<bool>(global1.e, true, global1.b, true)))), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~select(global1.c, u_input.e.x, false), firstTrailingBit(_wgslsmith_add_u32(global1.c, 40988u)), ~4294967295u), 9u)]);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1004f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), -870f)) * -223f);
    global0 = array<f32, 9>();
    let var_2 = _wgslsmith_f_op_f32(var_0.b - global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(var_0.a.d | reverseBits(vec4<u32>(u_input.e.x, u_input.e.x, 987u, 1u)), vec4<u32>(1u, u_input.e.x, ~u_input.c.x, var_0.a.a & var_0.a.c))), 9u)]);
    let var_3 = ~(~(countOneBits(~4294967295u) & countOneBits(abs(u_input.c.x))));
    return reverseBits(u_input.c.zww << (reverseBits(vec3<u32>(_wgslsmith_mod_u32(1838u, var_3), ~var_3, firstTrailingBit(4294967295u))) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(global1.d.x), u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(68093u, 35461u), u_input.c.x), global1.c), ~u_input.c), min((_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.d.x), vec3<i32>(u_input.b, u_input.a.x, 17682i)) >> (func_3() % vec3<u32>(32u))) >> (firstTrailingBit(vec3<u32>(1u, 69866u, global1.a)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.d.x, u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 13820i, 3529i), vec3<i32>(2147483647i, -2147483647i, u_input.b))), abs(~vec3<i32>(u_input.d.x, u_input.b, 2147483647i)))), _wgslsmith_sub_i32(u_input.b, ~u_input.d.x), select(select(!vec3<bool>(true, true, global1.e), !select(vec3<bool>(global1.b, true, global1.b), vec3<bool>(false, global1.b, false), vec3<bool>(false, global1.e, global1.e)), vec3<bool>(!global1.e, global1.b, true)), select(!select(vec3<bool>(global1.b, global1.b, true), vec3<bool>(global1.b, true, true), vec3<bool>(global1.b, false, global1.b)), select(select(vec3<bool>(global1.e, true, global1.b), vec3<bool>(global1.e, true, global1.b), vec3<bool>(global1.e, global1.e, global1.b)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, global1.e, true), vec3<bool>(true, false, true), global1.e)), global1.b), vec3<bool>(!all(vec4<bool>(false, global1.e, true, global1.b)), false, !all(vec3<bool>(false, global1.b, global1.e)))), true);
    var var_1 = -591f;
    global1 = Struct_1(0u, all(select(select(!var_0.d, select(var_0.d, vec3<bool>(var_0.d.x, true, global1.b), true), any(vec4<bool>(global1.e, true, true, var_0.d.x))), var_0.d, all(vec2<bool>(var_0.e, var_0.e)) & (global1.b && var_0.d.x))), select(53443u, 30342u << (~(~var_0.a) % 32u), global1.b), countOneBits(u_input.c), !(_wgslsmith_f_op_f32(select(-1151f, -790f, global1.b)) == 1304f));
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, func_3().x, ~global1.d.x), ~global1.d.zwx) ^ ~_wgslsmith_mult_u32(0u, u_input.e.x), ~56510u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1.d.x, 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_2(vec2<f32>(184f, global0[_wgslsmith_index_u32(arg_0.b.d.x, 9u)])), 9u)]) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_1.a, 9u)]))))), 625f, _wgslsmith_f_op_f32(f32(-1f) * -167f)));
    global0 = array<f32, 9>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(686f)) - _wgslsmith_f_op_f32(-arg_0.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_0.b.a, 9u)])) - _wgslsmith_f_op_f32(f32(-1f) * -725f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) * _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(-2698f)))));
    return !(abs(abs(_wgslsmith_clamp_u32(38212u, u_input.e.x, arg_1.a))) < ~(~(~arg_1.c)));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<f32, 9>();
    let var_0 = all(!vec3<bool>(!global1.b, (-4341i ^ u_input.d.x) < ~1i, false));
    global1 = Struct_1(1u, select(false, !(var_0 && true) | (~(-936i) != u_input.b), true), ~(~26424u), vec4<u32>(~((0u & global1.c) ^ ~4294967295u), ~global1.d.x, min(abs(select(4294967295u, 37807u, false)), arg_1.b.c), 4294967295u), (countOneBits(u_input.b) > -1i) & true);
    global0 = array<f32, 9>();
    let var_1 = Struct_3(0u >> (1u % 32u), select(vec3<i32>(-1i) * -vec3<i32>(-40330i, -1i, 13171i), vec3<i32>(_wgslsmith_mod_i32(-52757i, u_input.a.x), 2147483647i, ~u_input.d.x) << (global1.d.zxx % vec3<u32>(32u)), !vec3<bool>(!var_0, arg_1.a.x != 345f, all(vec3<bool>(arg_1.c, global1.b, true)))), ~(~abs(u_input.a.x) ^ u_input.d.x), vec3<bool>(global1.e, var_0, global1.b), false);
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(478f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-618f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 9u)])) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(62590u, 9u)], -1000f))))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(370f, 547f, global1.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(263f, -1342f, false)) * _wgslsmith_div_f32(-414f, global0[_wgslsmith_index_u32(global1.c, 9u)]))), Struct_1(global1.a, !(!global1.b), 0u, ~(~vec4<u32>(12799u, global1.c, u_input.c.x, 58223u)), !global1.e), true, (global1.b == func_1(Struct_2(vec2<f32>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)]), Struct_1(u_input.c.x, true, 36917u, global1.d, global1.e), false, global1.e), Struct_1(4294967295u, global1.e, 70880u, u_input.c, false))) && global1.e));
    global1 = var_0;
    global1 = var_0;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(26521u, 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-556f + -622f))) - global0[_wgslsmith_index_u32(0u >> (_wgslsmith_mult_u32(var_0.a, global1.c) % 32u), 9u)]))), -1000f, global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(~u_input.e.x, var_0.c, var_0.a)), 9u)]);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], var_1.x, global0[_wgslsmith_index_u32(41910u, 9u)])))))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) + _wgslsmith_f_op_f32(565f * 658f)), _wgslsmith_f_op_f32(1075f - _wgslsmith_f_op_f32(var_2.x + -2425f))) + vec2<f32>(_wgslsmith_f_op_f32(var_2.x * global0[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) - global0[_wgslsmith_index_u32(max(4294967295u, var_0.d.x), 9u)]))), Struct_1(_wgslsmith_mod_u32(~30967u, func_2(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, -183f), vec2<f32>(324f, -1118f)))), select(true, !var_0.e, func_4(var_1.x, Struct_2(vec2<f32>(var_2.x, global0[_wgslsmith_index_u32(57430u, 9u)]), var_0, false, global1.b)).a >= global1.d.x), global1.c, ~vec4<u32>(_wgslsmith_div_u32(1u, 32077u), reverseBits(0u), ~1u, 1u), true), -(~_wgslsmith_clamp_i32(-1i, u_input.a.x, 21815i)) >= ~u_input.d.x, 160f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-317f - var_2.x) * _wgslsmith_f_op_f32(var_1.x * -153f))));
    let var_4 = vec3<bool>(global1.e, true, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.zz, ~_wgslsmith_mod_vec3_i32(-(~vec3<i32>(u_input.a.x, 0i, -37718i)), min(vec3<i32>(-1i, -74169i, u_input.a.x), vec3<i32>(-1i, u_input.b, -1i))), var_2.x, ~vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), _wgslsmith_div_i32(-2252i, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, u_input.b), i32(-1i) * -2147483647i)), ~(~(~(u_input.e.x ^ 0u))));
}

