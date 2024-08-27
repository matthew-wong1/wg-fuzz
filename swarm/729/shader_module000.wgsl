struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(398f, -1000f, -1000f, 1298f, -544f, -1000f, -958f, -387f, -2318f, -411f, -236f, -503f, -344f, 1000f, -489f, 435f, -520f, -283f, -1122f, -2583f, -1617f, 1521f, -1000f, 290f, 707f);

var<private> global1: array<bool, 2>;

var<private> global2: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true));

var<private> global3: array<Struct_1, 15>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<f32, 25>();
    global3 = array<Struct_1, 15>();
    global2 = array<vec4<bool>, 21>();
    let var_0 = vec3<i32>((-max(u_input.b, -2147483647i) << ((_wgslsmith_sub_u32(arg_0.e, arg_0.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0.a, 4294967295u, 2671u), vec4<u32>(arg_0.e, u_input.a, u_input.a, u_input.d.x)) % 32u)) % 32u)) | select(u_input.b, u_input.b, all(!vec3<bool>(arg_0.d, arg_0.d, true))), 3588i, _wgslsmith_mult_i32(u_input.c, arg_0.c));
    let var_1 = _wgslsmith_add_u32(~arg_0.e, _wgslsmith_mult_u32(u_input.a, abs(~(~arg_0.b))));
    return global3[_wgslsmith_index_u32(min(~_wgslsmith_dot_vec3_u32(~u_input.d, ~vec3<u32>(13903u, u_input.a, u_input.a)), arg_0.a), 15u)];
}

fn func_1() -> Struct_3 {
    global3 = array<Struct_1, 15>();
    let var_0 = global3[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(u_input.a, u_input.a & 55171u), 45127u, true), 15u)];
    global1 = array<bool, 2>();
    var var_1 = Struct_2(func_2(global3[_wgslsmith_index_u32(~firstTrailingBit(u_input.a) << (4294967295u % 32u), 15u)]));
    let var_2 = Struct_3(vec3<bool>(u_input.a == 1u, true, !var_1.a.d), Struct_2(Struct_1(u_input.d.x, u_input.d.x, ~var_0.c, global1[_wgslsmith_index_u32(~var_0.a, 2u)], u_input.a)));
    return Struct_3(vec3<bool>(!(_wgslsmith_add_i32(-1i, 0i) <= var_1.a.c), true, any(vec2<bool>(var_2.a.x, true))), Struct_2(func_2(var_2.b.a)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    let var_0 = 2147483647i;
    var var_1 = global2[_wgslsmith_index_u32(34220u, 21u)];
    var var_2 = arg_0;
    let var_3 = arg_2.b;
    let var_4 = Struct_1(4294967295u, ~(~_wgslsmith_mult_u32(0u, select(4294967295u, 36165u, var_1.x))), -(~1i), (~arg_1.b.a.c >= -(~var_3.a.c)) && arg_2.b.a.d, 1u);
    return Struct_1(u_input.d.x, max(54018u, 1u), -2147483647i, false, arg_2.b.a.e);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = select(vec4<bool>((abs(arg_0.b) & _wgslsmith_mod_u32(4294967295u, arg_0.e)) <= 66333u, _wgslsmith_f_op_f32(-1005f * arg_2) <= _wgslsmith_div_f32(global0[_wgslsmith_index_u32(min(0u, 1u), 25u)], _wgslsmith_f_op_f32(sign(-294f))), func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 + 1263f), _wgslsmith_f_op_f32(-arg_2))), Struct_3(vec3<bool>(false, false, true), func_1().b), Struct_3(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(54024u, 2u)], false), vec3<bool>(true, false, arg_0.d), arg_0.d), func_1().b), arg_0.c).d, arg_0.d | global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, 0u), 2u)]), vec4<bool>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b, 1u, 1u), vec3<u32>(0u, u_input.a, arg_0.a) >> (vec3<u32>(arg_0.e, 4294967295u, 74801u) % vec3<u32>(32u))) <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0.a, u_input.d.x, u_input.d.x), vec4<u32>(29314u, 40922u, arg_0.b, u_input.d.x)), func_2(global3[_wgslsmith_index_u32(~u_input.d.x, 15u)]).d, !(func_2(Struct_1(arg_0.b, 22116u, 2062i, false, u_input.a)).c >= (i32(-1i) * -76105i)), false), global2[_wgslsmith_index_u32(39509u, 21u)]);
    var var_1 = func_1();
    var_0 = vec4<bool>(arg_1.x == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-420f)))), !global1[_wgslsmith_index_u32(~(~var_1.b.a.b), 2u)], u_input.a >= arg_0.b, true);
    global0 = array<f32, 25>();
    var var_2 = -232f;
    return func_1();
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], -588f, -233f, global0[_wgslsmith_index_u32(5964u, 25u)]))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], 1000f, global0[_wgslsmith_index_u32(13007u, 25u)]), vec4<f32>(-1808f, global0[_wgslsmith_index_u32(47402u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], -723f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2778f, global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(arg_1.a.b, 25u)], global0[_wgslsmith_index_u32(38076u, 25u)]) * vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(arg_0.b.a.a, 25u)], -320f, global0[_wgslsmith_index_u32(arg_2.b.a.a, 25u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-827f, -1005f, global0[_wgslsmith_index_u32(1u, 25u)], 258f)), vec4<bool>(true, true, true, true))), -29931i >= _wgslsmith_sub_i32(-27636i, arg_1.a.c))))));
    var var_2 = -min(-_wgslsmith_mult_i32(func_4(Struct_1(11189u, arg_2.b.a.a, 1i, true, u_input.d.x), vec4<f32>(var_1.x, 1290f, 160f, global0[_wgslsmith_index_u32(1u, 25u)]), global0[_wgslsmith_index_u32(1u, 25u)], vec3<i32>(arg_1.a.c, arg_1.a.c, 0i)).b.a.c, 48054i), min(arg_2.b.a.c, arg_1.a.c));
    let var_3 = global1[_wgslsmith_index_u32(arg_0.b.a.e ^ _wgslsmith_div_u32(12399u, firstLeadingBit(0u)), 2u)];
    let var_4 = func_1().b;
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec3<bool>(!(!(!global1[_wgslsmith_index_u32(4294967295u, 2u)])), true, !any(select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 2u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(13096u, 2u)]), vec2<bool>(true, true)))), func_5(func_4(func_3(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(8458u, 25u)]), func_1(), Struct_3(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 2u)], true), Struct_2(Struct_1(u_input.a, u_input.a, 5840i, global1[_wgslsmith_index_u32(60655u, 2u)], 4294967295u))), u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(55604u, 25u)], 247f, 202f, -1589f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1780f, global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(15442u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)])))), -646f, ~(-vec3<i32>(u_input.b, u_input.b, 1097i))), func_1().b, func_1(), !(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(40254u, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)])))));
    var var_1 = global2[_wgslsmith_index_u32(~13441u | ((~var_0.b.a.e << (countOneBits(~u_input.a) % 32u)) ^ _wgslsmith_sub_u32(~var_0.b.a.e, var_0.b.a.b)), 21u)];
    var var_2 = var_0.b.a.b;
    var_1 = select(global2[_wgslsmith_index_u32(~(~52591u), 21u)], global2[_wgslsmith_index_u32(1u, 21u)], func_1().b.a.d == true);
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(~(~var_0.b.a.b), 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-287f)) + -333f), _wgslsmith_f_op_f32(1067f + global0[_wgslsmith_index_u32(~var_0.b.a.b, 25u)]), global0[_wgslsmith_index_u32(1u, 25u)]))));
    let var_4 = func_4(Struct_1(~_wgslsmith_div_u32(~4294967295u, 51043u), u_input.d.x, -2147483647i, (_wgslsmith_f_op_f32(var_3.x + 1198f) < _wgslsmith_f_op_f32(748f * var_3.x)) || all(vec2<bool>(var_1.x, false)), var_0.b.a.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(886f, -576f, global0[_wgslsmith_index_u32(u_input.d.x, 25u)], 1075f), vec4<f32>(var_3.x, 2594f, -222f, var_3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(641f, var_3.x, global0[_wgslsmith_index_u32(var_0.b.a.a, 25u)], -797f) + var_3) + vec4<f32>(-315f, -1479f, global0[_wgslsmith_index_u32(u_input.d.x, 25u)], var_3.x)))), global0[_wgslsmith_index_u32(0u, 25u)], vec3<i32>(~var_0.b.a.c, ~(~_wgslsmith_mod_i32(1i, u_input.b)), countOneBits(-57119i))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_4.a.e, 77363u, var_4.a.b), vec4<u32>(~abs(u_input.a), var_0.b.a.a, ~select(4294967295u, 9268u, var_1.x), ~reverseBits(var_4.a.e))), 2147483647i, func_2(global3[_wgslsmith_index_u32(133965u, 15u)]).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~var_0.b.a.e, 25u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 25u)]), 701f)), -22207i);
}

