struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(4294967295u, 4294967295u, 4294967295u, 4294967295u, 0u, 4294967295u, 1u, 1u);

var<private> global1: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_5) -> u32 {
    var var_0 = vec4<f32>(487f, _wgslsmith_f_op_f32(-arg_2.a.c), 254f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) - arg_1));
    var var_1 = arg_2.a.b;
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1158f, -621f, 553f, -565f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.e), -1007f, _wgslsmith_f_op_f32(1604f * var_0.x), 1068f)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 725f, var_0.x) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a.d.x, 452f, var_1.e, arg_1)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.a.c)), _wgslsmith_f_op_f32(step(var_1.e, -571f)), _wgslsmith_f_op_f32(floor(arg_2.a.d.x)), var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1078f, -1634f, var_0.x, 709f)))), arg_2.a.e)));
    let var_3 = select(!vec3<bool>(!var_1.a.x, -372f < _wgslsmith_f_op_f32(-var_0.x), true), !arg_2.a.e.zyy, true);
    return ~abs(1u) >> (arg_2.a.b.b.a % 32u);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = countOneBits(vec3<i32>(~(-649i), _wgslsmith_div_i32(_wgslsmith_mult_i32(i32(-1i) * -24098i, firstLeadingBit(2147483647i)), -47047i), _wgslsmith_mult_i32(-23758i, _wgslsmith_dot_vec2_i32(vec2<i32>(-30217i, 1i) >> (vec2<u32>(arg_2.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19845u, 8u)], 8u)]) % vec2<u32>(32u)), select(vec2<i32>(81061i, 2147483647i), vec2<i32>(0i, 26757i), false)))));
    global1 = !any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), true));
    global1 = ~reverseBits(1i) > firstTrailingBit((i32(-1i) * -65381i) ^ max(var_0.x, _wgslsmith_mult_i32(79241i, var_0.x)));
    let var_1 = Struct_3(-966f, Struct_2(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, false, false)), var_0.x != var_0.x), Struct_1(min(_wgslsmith_mod_u32(37336u, arg_2.x), arg_2.x)), Struct_1(0u), Struct_1(func_3(_wgslsmith_add_vec2_i32(vec2<i32>(0i, var_0.x), var_0.xy), _wgslsmith_div_f32(1000f, 940f), Struct_5(Struct_3(arg_0, Struct_2(vec3<bool>(false, false, false), Struct_1(global0[_wgslsmith_index_u32(35471u, 8u)]), Struct_1(82063u), Struct_1(u_input.a), -633f), -327f, vec3<f32>(arg_1, -1695f, -979f), vec4<bool>(true, true, true, false))))), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_div_f32(-1659f, _wgslsmith_f_op_f32(-arg_0)))), -146f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-106f - arg_0), arg_1, _wgslsmith_f_op_f32(sign(155f)))))), vec4<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1001f, 369f)) <= arg_0, true, true));
    let var_2 = _wgslsmith_sub_vec2_u32(arg_2, firstTrailingBit(~arg_2));
    return Struct_2(vec3<bool>(false, true, !(select(37305i, var_0.x, true) == abs(1i))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, u_input.b, global0[_wgslsmith_index_u32(firstLeadingBit(109499u), 8u)]), max(vec3<u32>(44767u, arg_2.x, 4294967295u), ~vec3<u32>(var_2.x, u_input.b, u_input.a)))), var_1.b.c, Struct_1(_wgslsmith_mult_u32(67869u, 1190u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-673f + var_1.b.e))) + 1503f));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: i32) -> Struct_4 {
    global1 = arg_1.x;
    let var_0 = u_input.a;
    let var_1 = Struct_3(1609f, func_2(763f, 1019f, vec2<u32>(var_0, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-206f, func_2(-2137f, 272f, vec2<u32>(u_input.a, var_0)).e)))) + _wgslsmith_f_op_f32(-672f + _wgslsmith_f_op_f32(f32(-1f) * -685f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(791f, 835f, -126f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 158f, -1558f) + vec3<f32>(-348f, 1561f, 333f)) * vec3<f32>(-895f, -523f, -985f))))), select(select(!select(vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), false), select(!vec4<bool>(false, true, arg_1.x, arg_1.x), select(vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), arg_1.x && true), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), !vec4<bool>(false, arg_1.x, false, false), all(arg_1))), select(vec4<bool>(!arg_1.x, true, true, true), vec4<bool>(true, false, true, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), vec4<bool>(all(vec2<bool>(arg_1.x, true)), global0[_wgslsmith_index_u32(1u, 8u)] > u_input.a, arg_1.x, any(arg_1))), !(!(!arg_1.x))));
    global1 = func_2(_wgslsmith_f_op_f32(-func_2(var_1.d.x, _wgslsmith_f_op_f32(-688f * _wgslsmith_f_op_f32(-var_1.d.x)), countOneBits(vec2<u32>(var_1.b.c.a, var_1.b.b.a))).e), 233f, ~vec2<u32>(var_1.b.c.a, var_0)).a.x;
    global0 = array<u32, 8>();
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_1.d * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-877f, var_1.b.e, var_1.d.x))))) + vec3<f32>(_wgslsmith_f_op_f32(1615f - _wgslsmith_f_op_f32(1446f * var_1.c)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-var_1.c))), var_1.b.e)), var_1.b, -(_wgslsmith_add_vec2_i32(vec2<i32>(arg_2, 31154i), firstTrailingBit(vec2<i32>(-24576i, -1i))) | (vec2<i32>(-1i) * -vec2<i32>(-46455i, arg_0))), var_1.e, _wgslsmith_f_op_f32(-841f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) - var_1.a)) > var_1.d.x);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_5) -> vec4<f32> {
    let var_0 = all(!(!arg_1.d.yyy));
    global1 = all(arg_2.a.e.zx) || (func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 + -272f), arg_2.a.c)), _wgslsmith_f_op_f32(-920f - -507f), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 82799u), vec2<u32>(51464u, arg_1.b.d.a)))).a.x != false);
    let var_1 = ~u_input.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.c, 151f, arg_0, arg_2.a.d.x) + vec4<f32>(arg_0, -1293f, 633f, arg_1.b.e)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(388f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(336f, 1845f)), -679f, 1924f) * _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-162f + 417f), -2914f, true)), func_1(abs(-21434i), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), countOneBits(3096i)), Struct_5(Struct_3(-1298f, Struct_2(vec3<bool>(true, false, true), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)]), Struct_1(global0[_wgslsmith_index_u32(86547u, 8u)]), Struct_1(u_input.a), -663f), -148f, vec3<f32>(-459f, 516f, -1352f), vec4<bool>(false, false, true, true)))))), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(-152f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1247f, -1048f))), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-143f, 532f, -281f)), Struct_2(vec3<bool>(false, true, false), func_1(1i, vec3<bool>(true, false, true), -31127i).b.c, func_2(1600f, 1035f, vec2<u32>(1u, 45792u)).d, func_2(220f, 137f, vec2<u32>(85717u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)])).b, -1177f), vec2<i32>(_wgslsmith_mod_i32(-1i, -31429i), 0i), vec4<bool>(false, false, true, true), true), Struct_5(Struct_3(-2909f, func_1(-81247i, vec3<bool>(true, false, true), 1i).b, _wgslsmith_f_op_f32(f32(-1f) * -469f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2264f, -453f, -1017f)), vec4<bool>(true, true, true, true)))))));
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, select(_wgslsmith_div_i32(0i, 26745i) << (_wgslsmith_sub_u32(u_input.a, 4294967295u) % 32u), -abs(-1i), false)), select(vec2<i32>(1i, 1i), vec2<i32>(firstTrailingBit(1i), 1i) >> (vec2<u32>(0u, ~49461u) % vec2<u32>(32u)), false));
    let var_2 = Struct_2(func_1(-1i, vec3<bool>(global0[_wgslsmith_index_u32(14408u, 8u)] == ~4294967295u, any(vec4<bool>(true, true, false, false)), select(u_input.a, global0[_wgslsmith_index_u32(63316u, 8u)], false) <= ~1u), var_1.x).b.a, Struct_1(_wgslsmith_add_u32(~u_input.a, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), 8u)], 8u)], global0[_wgslsmith_index_u32(65331u, 8u)] ^ u_input.b))), Struct_1(~global0[_wgslsmith_index_u32(u_input.b, 8u)]), Struct_1(min(~u_input.b, 44433u)), _wgslsmith_f_op_f32(-var_0.x));
    global0 = array<u32, 8>();
    var var_3 = var_2;
    global1 = var_2.a.x;
    global0 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(-485f, ~min(vec3<i32>(var_1.x >> (1u % 32u), -var_1.x, -14998i), reverseBits(~vec3<i32>(var_1.x, var_1.x, var_1.x))));
}

