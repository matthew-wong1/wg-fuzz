struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4>;

var<private> global1: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(1536f, 941f), vec2<f32>(1215f, -1846f), vec2<f32>(636f, 137f), vec2<f32>(-1610f, -492f), vec2<f32>(1807f, 391f), vec2<f32>(-1000f, -733f), vec2<f32>(236f, -1174f), vec2<f32>(-130f, -1523f), vec2<f32>(-1338f, -120f), vec2<f32>(-120f, 1000f), vec2<f32>(2797f, 1486f), vec2<f32>(133f, 222f), vec2<f32>(-1040f, 2308f));

var<private> global2: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(0i, 1i, 1i, -1i), vec4<i32>(2147483647i, i32(-2147483648), 65558i, 11271i), vec4<i32>(24714i, 1i, -13594i, -12126i), vec4<i32>(34497i, -9367i, -43219i, 15269i), vec4<i32>(2147483647i, 1i, i32(-2147483648), 33191i), vec4<i32>(-22510i, -13157i, 2147483647i, -9250i), vec4<i32>(37566i, 2147483647i, 2147483647i, -48226i), vec4<i32>(-1i, -1i, 0i, 1i), vec4<i32>(-25095i, -31231i, 0i, 2147483647i), vec4<i32>(-38004i, 22520i, -73189i, i32(-2147483648)), vec4<i32>(-12201i, 322i, -11887i, -30609i), vec4<i32>(i32(-2147483648), 22753i, -8341i, -46759i), vec4<i32>(32297i, 2147483647i, 0i, -18476i), vec4<i32>(0i, 2147483647i, i32(-2147483648), 0i), vec4<i32>(-17789i, -11264i, -43129i, 2147483647i), vec4<i32>(i32(-2147483648), -12046i, 1i, 9458i), vec4<i32>(2147483647i, i32(-2147483648), 0i, 1i), vec4<i32>(24975i, -1i, 2147483647i, 0i), vec4<i32>(-15834i, i32(-2147483648), 7845i, 39613i), vec4<i32>(-1i, 49983i, 1i, 2147483647i), vec4<i32>(2147483647i, 20808i, i32(-2147483648), 9969i), vec4<i32>(18124i, 1i, 1i, 33358i));

var<private> global3: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(1u, 7090u, 0u, 48069u), vec4<u32>(0u, 4294967295u, 14419u, 16010u), vec4<u32>(70884u, 14553u, 47391u, 51370u), vec4<u32>(4294967295u, 51379u, 1u, 68111u), vec4<u32>(43500u, 4294967295u, 50056u, 0u));

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-1000f, i32(-2147483648), 1214f), Struct_1(-618f, i32(-2147483648), 415f), Struct_1(-628f, 24058i, -264f), Struct_1(1046f, -28259i, 1000f), Struct_1(-687f, 31724i, -278f), Struct_1(1026f, i32(-2147483648), -3274f), Struct_1(-1624f, -4363i, -123f), Struct_1(223f, -49236i, -398f), Struct_1(614f, i32(-2147483648), 2382f), Struct_1(-177f, 2147483647i, -771f), Struct_1(-1000f, -1i, -993f), Struct_1(-136f, 32659i, -226f), Struct_1(1462f, 1i, 709f), Struct_1(381f, -17556i, -1798f), Struct_1(933f, -1i, 1000f), Struct_1(282f, 0i, 544f), Struct_1(1155f, -24758i, -374f), Struct_1(-1000f, -1i, 1250f), Struct_1(-165f, -1i, -303f), Struct_1(-967f, -22791i, -1402f), Struct_1(-853f, 12553i, -396f), Struct_1(-377f, 0i, 883f), Struct_1(1236f, 4419i, -889f), Struct_1(-511f, -1i, -190f), Struct_1(167f, -2941i, 137f), Struct_1(1521f, 42907i, -696f), Struct_1(1383f, 26466i, 1000f), Struct_1(-1000f, 2147483647i, -175f), Struct_1(1387f, 11474i, 413f), Struct_1(-462f, -1954i, -1000f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b)));
    global1 = array<vec2<f32>, 13>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    let var_2 = var_0;
    var var_3 = Struct_2(Struct_1(var_0, ~(-17748i), var_2), var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(574f, 1013f) + _wgslsmith_f_op_f32(max(arg_0.a.c, var_0))))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1560f))), arg_0.a.c, true)));
    return Struct_1(var_3.a.c, u_input.a.x, _wgslsmith_f_op_f32(round(var_0)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: vec2<f32>) -> u32 {
    let var_0 = 510f;
    global0 = array<vec4<i32>, 4>();
    let var_1 = Struct_2(func_2(Struct_2(global4[_wgslsmith_index_u32(~1u, 30u)], var_0, arg_2)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.x)) - _wgslsmith_f_op_f32(var_0 + 661f)))))), all(vec3<bool>(arg_2, any(select(vec3<bool>(true, arg_0.x, arg_0.x), arg_0.wxx, arg_0.ywz)), false)));
    global3 = array<vec4<u32>, 5>();
    global0 = array<vec4<i32>, 4>();
    return ~42039u;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(0u, 30u)];
    let var_1 = Struct_2(global4[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_f_op_f32(f32(-1f) * -900f), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -841f), _wgslsmith_f_op_f32(1468f - -1601f), any(vec3<bool>(var_1.c, true, var_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -808f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1191f, -283f))), var_0.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_1.b, var_1.a.a, var_1.a.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 1000f, 324f, var_0.a) * vec4<f32>(573f, -268f, var_1.a.a, var_0.c)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a.a, -252f, var_1.b, var_0.a))))), vec4<bool>(false, arg_2, var_1.c, all(arg_0.zyw)))), var_1.c)));
    var var_3 = Struct_1(var_1.b, reverseBits(-34566i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.c, 1000f)), _wgslsmith_f_op_f32(floor(-952f))))))));
    let var_4 = -(~reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(global3[_wgslsmith_index_u32(u_input.b.x, 5u)], global3[_wgslsmith_index_u32(arg_1, 5u)], arg_0), vec4<u32>(arg_1, arg_1, 1u, 61966u)), 22u)]));
    return ~arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 30>();
    let var_0 = vec3<u32>(u_input.c.x, ~_wgslsmith_sub_u32(select(_wgslsmith_add_u32(60982u, 0u), u_input.b.x, true), u_input.b.x), _wgslsmith_add_u32(_wgslsmith_div_u32(func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec3<u32>(u_input.b.x, u_input.b.x, u_input.c.x) >> (vec3<u32>(1u, 0u, u_input.c.x) % vec3<u32>(32u)), all(vec2<bool>(false, true)), global1[_wgslsmith_index_u32(0u, 13u)]), ~_wgslsmith_div_u32(0u, u_input.b.x)), func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec3<u32>(81409u, u_input.b.x, 86023u), true, global1[_wgslsmith_index_u32(u_input.c.x, 13u)])));
    var var_1 = !(true || !any(vec2<bool>(true, true)));
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(u_input.a.x >> (func_3(vec4<bool>(true, true, true, true), select(u_input.c.x, 32072u, true), true) % 32u), u_input.a.x), 1i);
    var var_3 = vec2<bool>(any(vec3<bool>(true, true, true)), 2147483647i >= (_wgslsmith_mod_i32(2147483647i, 9304i) & u_input.a.x));
    let var_4 = vec2<u32>(u_input.b.x, var_0.x);
    global4 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, 1u, 35117u, firstTrailingBit(45828u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(var_4.x, 13u)])))), ~((51063u | ~var_4.x) << (var_4.x % 32u)), u_input.a.x, _wgslsmith_div_f32(-2341f, -990f));
}

