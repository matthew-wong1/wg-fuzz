struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

var<private> global1: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(1186f, -484f), vec2<f32>(998f, -549f), vec2<f32>(-506f, -272f), vec2<f32>(276f, 1295f), vec2<f32>(-129f, 1481f), vec2<f32>(1268f, -117f), vec2<f32>(1180f, 692f), vec2<f32>(-1327f, 574f), vec2<f32>(-264f, -436f), vec2<f32>(-2862f, -290f), vec2<f32>(-414f, 1908f), vec2<f32>(-194f, -735f), vec2<f32>(-1000f, -755f), vec2<f32>(-910f, -388f));

var<private> global2: i32 = 1i;

var<private> global3: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(732f, 774f, 378f), vec3<f32>(-919f, -812f, -467f), vec3<f32>(-1000f, 240f, 898f), vec3<f32>(-1410f, -695f, -1077f), vec3<f32>(1009f, 316f, -772f), vec3<f32>(-640f, -687f, -979f), vec3<f32>(900f, -2363f, -1428f), vec3<f32>(445f, 730f, 413f), vec3<f32>(-699f, -651f, 1866f), vec3<f32>(580f, -1035f, -768f), vec3<f32>(-1957f, 1166f, 362f), vec3<f32>(949f, 121f, 2596f), vec3<f32>(-483f, 165f, 254f));

var<private> global4: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(0i, 2147483647i, -1i, -1i), vec4<i32>(-37072i, 1814i, -4672i, 0i), vec4<i32>(i32(-2147483648), -27466i, 1i, -1i), vec4<i32>(27639i, -27536i, 6959i, -22792i), vec4<i32>(-1i, -29419i, 2147483647i, 73184i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(-795f, false);
    var var_1 = -1i;
    var var_2 = 1u;
    global4 = array<vec4<i32>, 5>();
    var var_3 = true & var_0.b;
    return 0u;
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.c.a)));
    var var_1 = Struct_3(arg_3.e.a, Struct_2(arg_3.c, 63699u, vec2<bool>(true & (arg_2.b & arg_2.b), select(62862u >= arg_0.x, any(arg_3.e.b.c), false))), ~u_input.a, Struct_2(Struct_1(_wgslsmith_div_f32(214f, _wgslsmith_f_op_f32(ceil(-624f))), all(select(vec3<bool>(arg_2.b, true, true), global0[_wgslsmith_index_u32(arg_0.x, 7u)], global0[_wgslsmith_index_u32(arg_3.e.d.b, 7u)]))), arg_3.e.a.b, vec2<bool>(arg_3.c.b, true)));
    var var_2 = arg_3.b;
    global1 = array<vec2<f32>, 14>();
    var var_3 = select(!(!select(vec4<bool>(arg_3.d, arg_3.c.b, arg_2.b, false), vec4<bool>(true, false, arg_3.d, true), true)), select(vec4<bool>(true, !select(true, var_1.b.a.b, var_1.d.c.x), true, !all(vec2<bool>(false, false))), !(!(!vec4<bool>(arg_2.b, false, var_2.c.x, var_2.a.b))), select(vec4<bool>(542f == arg_2.a, u_input.a > 1u, select(false, arg_3.d, var_1.b.a.b), true), vec4<bool>(true, all(vec4<bool>(false, true, arg_3.e.d.a.b, true)), !arg_2.b, all(vec4<bool>(true, false, true, false))), !all(vec4<bool>(false, true, arg_2.b, true)))), any(vec3<bool>((arg_3.e.a.b | 54511u) > (4294967295u << (arg_3.b.b % 32u)), var_2.a.b, (arg_2.a <= -2696f) & (true | arg_3.e.d.a.b))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-774f + var_2.a.a) - 564f))) + arg_1);
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_4 {
    global1 = array<vec2<f32>, 14>();
    global3 = array<vec3<f32>, 13>();
    let var_0 = vec3<f32>(-1333f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-265f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.a, 41057u, 23266u), 1148f, Struct_1(130f, true), Struct_4(646f, Struct_2(Struct_1(894f, true), 0u, vec2<bool>(false, false)), Struct_1(193f, arg_1), arg_1, Struct_3(Struct_2(Struct_1(668f, false), 0u, vec2<bool>(false, false)), Struct_2(Struct_1(-1544f, false), u_input.a, vec2<bool>(false, false)), 5819u, Struct_2(Struct_1(-449f, false), arg_0, vec2<bool>(arg_1, true)))))) - _wgslsmith_f_op_f32(587f + -592f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(372f * -547f)))), _wgslsmith_f_op_f32(ceil(868f)));
    var var_1 = vec2<bool>(true, !arg_1);
    var var_2 = -(abs(firstTrailingBit(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x))) >> (u_input.a % 32u));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~vec3<u32>(1u, 16194u, 4294967295u), _wgslsmith_f_op_f32(-var_0.x), Struct_1(var_0.x, arg_1), Struct_4(-420f, Struct_2(Struct_1(-1000f, var_1.x), 1u, vec2<bool>(arg_1, true)), Struct_1(var_0.x, true), false, Struct_3(Struct_2(Struct_1(var_0.x, arg_1), u_input.a, vec2<bool>(true, true)), Struct_2(Struct_1(530f, arg_1), u_input.a, vec2<bool>(false, false)), 18906u, Struct_2(Struct_1(var_0.x, arg_1), arg_0, vec2<bool>(true, var_1.x)))))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(1252f + _wgslsmith_f_op_f32(var_0.x + var_0.x)), all(vec2<bool>(false, var_1.x)) || false), u_input.a, select(vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x), vec2<bool>(false, var_0.x == var_0.x))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), select(var_1.x, true, true && any(global0[_wgslsmith_index_u32(arg_0, 7u)]))), true, Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.x), var_1.x), ~1u, vec2<bool>(true, arg_1)), Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.x * -473f), arg_0 >= 4294967295u), ~arg_0, !(!vec2<bool>(var_1.x, true))), abs(select(countOneBits(0u), 1u, false)), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1009f), var_1.x), arg_0, select(!vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1)), vec2<bool>(arg_1, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32) -> Struct_4 {
    var var_0 = max(arg_1.e.d.b, u_input.a) ^ 7548u;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(~(~1u), 13u)] * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(-627f, arg_0.a), -170f)))) - global3[_wgslsmith_index_u32(u_input.a, 13u)]);
    global1 = array<vec2<f32>, 14>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(19375u, ~max(0u, _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.b.b, arg_1.e.a.b), ~u_input.a))), 14u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(436f - arg_0.a));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-284f, arg_0.a), 436f, false))), func_2(~_wgslsmith_div_u32(0u, u_input.a), all(!vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b))).e.a, func_2(~_wgslsmith_clamp_u32(~8049u, arg_1.e.d.b, ~arg_1.e.d.b), !(!arg_1.e.a.c.x)).b.a, arg_0.b, Struct_3(Struct_2(arg_1.b.a, arg_1.e.a.b, arg_1.e.a.c), arg_1.b, arg_1.e.d.b, Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_1.x), -33824i == arg_2), _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 4294967295u), ~arg_1.e.a.b), arg_1.e.d.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-847f * -1141f)) - 1743f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-107f + _wgslsmith_f_op_f32(step(865f, 487f))) * -925f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-811f * -298f))))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1690f))))));
    var var_1 = u_input.c.x;
    let var_2 = func_4(Struct_1(var_0.a, true), func_2(func_1(), select(false, var_0.b, var_0.b)), 2147483647i);
    let var_3 = ~abs(max(select(u_input.c, firstTrailingBit(u_input.c), select(vec4<bool>(var_0.b, true, var_0.b, var_2.e.b.a.b), vec4<bool>(var_0.b, false, var_2.b.a.b, true), vec4<bool>(var_2.b.a.b, false, true, var_0.b))), vec4<i32>(_wgslsmith_sub_i32(u_input.e.x, 368i), -2147483647i, _wgslsmith_clamp_i32(-2147483647i, u_input.e.x, 9608i), 1i)));
    global0 = array<vec3<bool>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_2.e.c, ~(~0u << (u_input.a % 32u)), 20490u, 1u), ~(-vec2<i32>(-2147483647i, u_input.c.x)));
}

