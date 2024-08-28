struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(1i, -48786i, 5687i, 0i, 2147483647i, 1i, 1i, i32(-2147483648), 1i, 0i, 2147483647i, 2147483647i, 0i, 1i, -8092i, -2481i, i32(-2147483648));

var<private> global1: array<i32, 24> = array<i32, 24>(-1i, 0i, 25402i, -50237i, -1i, -13174i, 2147483647i, 1i, 1i, 2147483647i, -57508i, 1i, 7465i, 1i, i32(-2147483648), 7104i, -21931i, -34686i, 2147483647i, i32(-2147483648), 2147483647i, 1i, -1i, 1i);

var<private> global2: array<vec4<f32>, 8>;

var<private> global3: array<vec3<f32>, 13>;

var<private> global4: array<Struct_5, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: u32) -> vec4<f32> {
    let var_0 = -121f;
    global3 = array<vec3<f32>, 13>();
    let var_1 = global4[_wgslsmith_index_u32(~firstLeadingBit(2923u), 7u)];
    global4 = array<Struct_5, 7>();
    global2 = array<vec4<f32>, 8>();
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1951f)), -706f, arg_1, 615f) + _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_div_f32(var_0, 506f)), -218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), var_0) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2, 81177u), 8u)]) - global2[_wgslsmith_index_u32(select(29281u ^ arg_2, 0u, true), 8u)])), !(!(all(vec4<bool>(true, false, true, true)) & true))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_5, arg_3: vec4<f32>) -> vec2<f32> {
    let var_0 = vec2<bool>(true, -global0[_wgslsmith_index_u32(~(0u | u_input.b), 17u)] < (global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(24393u, u_input.b, 4294967295u), vec3<u32>(0u, 27757u, 1u)), u_input.b, false), 24u)] & -2147483647i));
    let var_1 = Struct_4(Struct_1(arg_1, -777f, arg_0.d.xy, _wgslsmith_f_op_vec4_f32(-arg_3), any(vec4<bool>(!arg_0.e, any(vec4<bool>(true, arg_1, arg_0.e, true)), all(vec4<bool>(true, true, true, true)), false & var_0.x))), Struct_3(var_0.x, true, -min(vec3<i32>(4064i, 0i, arg_2.a), vec3<i32>(u_input.a.x, u_input.a.x, 2278i)) & ~vec3<i32>(global1[_wgslsmith_index_u32(32062u, 24u)], u_input.a.x, 15178i)), Struct_2(Struct_1(any(select(vec4<bool>(arg_0.e, true, false, false), vec4<bool>(arg_0.e, arg_0.a, arg_1, false), vec4<bool>(false, false, true, arg_1))), _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(u_input.b, u_input.b, u_input.b, 47411u) & vec4<u32>(u_input.b, 1u, 0u, u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -374f), u_input.b)).x, vec2<f32>(1f, _wgslsmith_f_op_f32(floor(554f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_3.x, arg_3.x, arg_3.x) * vec4<f32>(-665f, 1347f, -582f, arg_3.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, -317f, arg_3.x, arg_0.d.x))), false), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, ~24236u, u_input.b), ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b, 20010u), vec3<u32>(43298u, 4294967295u, u_input.b))), u_input.b == ~1u, var_0.x));
    var var_2 = var_1.b;
    var var_3 = all(var_0);
    global0 = array<i32, 17>();
    return var_1.a.c;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-832f, 196f)) * -1262f))), 344f));
    let var_1 = Struct_4(Struct_1(!any(vec3<bool>(true, true, false)), -1225f, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(false, -253f, vec2<f32>(529f, 956f), global2[_wgslsmith_index_u32(22722u, 8u)], true), true, global4[_wgslsmith_index_u32(arg_1.x, 7u)], _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 0u), 2063f, arg_1.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-701f, 531f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-318f, 446f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -710f), _wgslsmith_f_op_f32(f32(-1f) * -897f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(false, -883f, vec2<f32>(-983f, 412f), global2[_wgslsmith_index_u32(arg_1.x, 8u)], false), true, global4[_wgslsmith_index_u32(arg_1.x, 7u)], vec4<f32>(-1481f, 1088f, -195f, 1585f))).x), any(vec2<bool>(false, false)) & (true & (6915u <= u_input.b))), Struct_3(true, false, vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0, arg_0, -1i), vec4<i32>(u_input.a.x, arg_0, global1[_wgslsmith_index_u32(4294967295u, 24u)], -52310i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(45033u, u_input.b, arg_1.x, 47680u), reverseBits(vec4<u32>(arg_1.x, u_input.b, arg_1.x, 100755u))), 17u)], 49150i)), Struct_2(Struct_1(true, -1605f, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1390f, -623f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1233f, -176f), vec2<f32>(540f, 390f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-285f, 179f, -1116f, 1023f)), vec4<f32>(-1000f, -463f, 863f, 1283f))), true), ~select(firstLeadingBit(vec3<u32>(arg_1.x, u_input.b, arg_1.x)), vec3<u32>(arg_1.x, 27925u, u_input.b), true), false, false));
    let var_2 = -2147483647i | firstTrailingBit(_wgslsmith_add_i32(var_1.b.c.x, reverseBits(global0[_wgslsmith_index_u32(arg_1.x, 17u)] << (69832u % 32u))));
    var var_3 = var_1.c;
    var var_4 = var_1.c.d;
    return var_1;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0.a.d.x;
    let var_1 = arg_0.b;
    var var_2 = !all(select(select(vec4<bool>(true, false, false, false), !vec4<bool>(arg_2.e, false, var_1.b, arg_2.a), !vec4<bool>(arg_2.a, arg_0.b.a, arg_0.a.e, arg_2.e)), !(!vec4<bool>(true, arg_2.e, true, false)), arg_2.a));
    var var_3 = !vec3<bool>(any(vec4<bool>(true, select(true, false, false), var_1.b == arg_0.c.c, arg_0.c.b.x <= u_input.b)), func_2(var_1.c.x, vec2<u32>(arg_0.c.b.x, arg_0.c.b.x)).c.d, arg_2.e);
    var var_4 = var_1.c.x;
    return arg_0.c.a;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(func_5(func_2(~u_input.a.x, reverseBits(countOneBits(vec2<u32>(u_input.b, u_input.b)))), Struct_5(countOneBits(39835i)), Struct_1(true || select(true, true, false), _wgslsmith_f_op_vec4_f32(func_3(~vec4<u32>(u_input.b, u_input.b, 55348u, 4294967295u), -678f, func_2(-69369i, vec2<u32>(u_input.b, 1u)).c.b.x)).x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1241f, 1003f))), vec2<f32>(-1000f, -392f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -748f, 1000f, 479f) - global2[_wgslsmith_index_u32(~4294967295u, 8u)]), firstLeadingBit(20918i) > -global0[_wgslsmith_index_u32(89825u, 17u)])), vec3<u32>(~u_input.b, u_input.b, u_input.b), false, abs(abs(u_input.b)) >= u_input.b);
    let var_1 = false;
    global0 = array<i32, 17>();
    var var_2 = var_0.a.c.x;
    var_0 = Struct_2(Struct_1(var_0.d, 1283f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.d.x, -464f) - _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(1u, 1u, var_0.b.x, 0u), -1349f, u_input.b)).x), -1090f), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(0u, 8u)]), true), _wgslsmith_div_vec3_u32(~vec3<u32>(firstTrailingBit(u_input.b), ~1u, 23679u), vec3<u32>(_wgslsmith_mult_u32(u_input.b, var_0.b.x), 21627u & u_input.b, ~_wgslsmith_div_u32(0u, var_0.b.x))), all(select(vec4<bool>(true, !var_1, func_5(Struct_4(var_0.a, Struct_3(true, var_1, vec3<i32>(global0[_wgslsmith_index_u32(0u, 17u)], -10937i, -2147483647i)), Struct_2(Struct_1(var_1, 168f, vec2<f32>(-289f, var_0.a.d.x), vec4<f32>(-1892f, var_0.a.b, var_0.a.d.x, var_0.a.c.x), var_1), var_0.b, var_1, var_0.c)), global4[_wgslsmith_index_u32(u_input.b, 7u)], var_0.a).e, u_input.b != var_0.b.x), !select(vec4<bool>(var_1, var_0.c, false, true), vec4<bool>(var_1, false, var_0.d, true), false), !(!var_0.d))), !(-792f > _wgslsmith_f_op_vec2_f32(func_4(Struct_1(var_0.c, var_0.a.d.x, vec2<f32>(var_0.a.d.x, -1000f), vec4<f32>(-825f, 1299f, var_0.a.b, 1168f), false), true, global4[_wgslsmith_index_u32(~u_input.b, 7u)], vec4<f32>(var_0.a.c.x, var_0.a.d.x, var_0.a.c.x, -486f))).x));
    return Struct_1(any(!select(vec3<bool>(var_1, true, var_1), vec3<bool>(true, false, var_0.d), vec3<bool>(false, false, var_1))), _wgslsmith_f_op_f32(min(1053f, _wgslsmith_f_op_f32(step(-353f, -1148f)))), vec2<f32>(-1374f, _wgslsmith_f_op_f32(-var_0.a.d.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(var_0.a.d)))), func_5(func_2(0i, abs(~var_0.b.yy)), Struct_5(12787i), func_2(-22486i, var_0.b.xz).c.a).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global4 = array<Struct_5, 7>();
    let var_1 = Struct_1(func_2(-u_input.a.x, abs(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b) << (vec2<u32>(87985u, u_input.b) % vec2<u32>(32u)), var_0.e))).b.a, -1066f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b) << (vec4<u32>(51238u, 1u, 47824u, u_input.b) % vec4<u32>(32u)), func_1().c.x, 8099u)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(440f, 379f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c.x, var_0.b), vec2<f32>(var_0.c.x, var_0.b))))), global2[_wgslsmith_index_u32(4294967295u, 8u)], false);
    global4 = array<Struct_5, 7>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(522f, -1212f))))) - var_1.c.x), _wgslsmith_f_op_f32(-128f - _wgslsmith_div_f32(1000f, -257f)), _wgslsmith_f_op_f32(abs(-1223f)));
    let var_3 = vec2<bool>(false | var_0.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.b)));
}

