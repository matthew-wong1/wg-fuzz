struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3>;

var<private> global1: vec3<i32> = vec3<i32>(-1i, 24281i, i32(-2147483648));

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(30593u, vec4<u32>(1u, 0u, 4294967295u, 4294967295u), true), true, Struct_1(4294967295u, vec4<u32>(17662u, 0u, 4294967295u, 10109u), false), false), Struct_2(Struct_1(79249u, vec4<u32>(9645u, 4294967295u, 0u, 18635u), false), false, Struct_1(59572u, vec4<u32>(1u, 4739u, 4294967295u, 1u), false), true), Struct_2(Struct_1(21472u, vec4<u32>(1u, 32162u, 50349u, 4294967295u), false), true, Struct_1(45391u, vec4<u32>(12577u, 1u, 19467u, 1u), false), true), Struct_2(Struct_1(4294967295u, vec4<u32>(15256u, 81098u, 43843u, 4294967295u), false), true, Struct_1(1u, vec4<u32>(0u, 1u, 50197u, 78402u), true), false), Struct_2(Struct_1(48973u, vec4<u32>(1u, 19668u, 21914u, 4294967295u), false), false, Struct_1(1u, vec4<u32>(0u, 41827u, 0u, 7701u), true), false), Struct_2(Struct_1(68826u, vec4<u32>(0u, 688u, 4294967295u, 1u), false), false, Struct_1(0u, vec4<u32>(6933u, 33039u, 7588u, 4294967295u), true), true), Struct_2(Struct_1(36196u, vec4<u32>(20816u, 0u, 25461u, 10324u), true), true, Struct_1(49892u, vec4<u32>(14363u, 1u, 5012u, 95940u), true), true), Struct_2(Struct_1(0u, vec4<u32>(31019u, 31596u, 0u, 4294967295u), true), true, Struct_1(10711u, vec4<u32>(34937u, 1u, 27997u, 24742u), true), false), Struct_2(Struct_1(3516u, vec4<u32>(4294967295u, 0u, 12536u, 4294967295u), true), true, Struct_1(5883u, vec4<u32>(34848u, 135596u, 1u, 15680u), false), false), Struct_2(Struct_1(1u, vec4<u32>(16950u, 1u, 82930u, 1u), true), false, Struct_1(99496u, vec4<u32>(1u, 1u, 5311u, 4294967295u), false), true), Struct_2(Struct_1(4294967295u, vec4<u32>(75652u, 1u, 35964u, 1055u), true), false, Struct_1(0u, vec4<u32>(0u, 0u, 65806u, 69489u), true), false), Struct_2(Struct_1(5724u, vec4<u32>(0u, 18763u, 0u, 4294967295u), false), true, Struct_1(48756u, vec4<u32>(0u, 4294967295u, 59550u, 10349u), false), true), Struct_2(Struct_1(4294967295u, vec4<u32>(1u, 4294967295u, 4294967295u, 20858u), false), true, Struct_1(4294967295u, vec4<u32>(0u, 17419u, 0u, 4294967295u), false), true), Struct_2(Struct_1(73329u, vec4<u32>(0u, 0u, 24383u, 6029u), true), false, Struct_1(26606u, vec4<u32>(0u, 4294967295u, 53701u, 26758u), false), true), Struct_2(Struct_1(55806u, vec4<u32>(27821u, 94531u, 1u, 4294967295u), false), true, Struct_1(55140u, vec4<u32>(0u, 0u, 4179u, 22139u), false), false), Struct_2(Struct_1(10695u, vec4<u32>(29467u, 44195u, 2986u, 1u), false), true, Struct_1(42124u, vec4<u32>(4294967295u, 0u, 1u, 0u), false), true));

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(96468u, vec4<u32>(4294967295u, 2623u, 0u, 136418u), false), Struct_1(0u, vec4<u32>(67883u, 4294967295u, 5601u, 4294967295u), false), Struct_1(4380u, vec4<u32>(50844u, 3650u, 65053u, 1u), false), Struct_1(4294967295u, vec4<u32>(4294967295u, 0u, 27634u, 1u), true), Struct_1(18324u, vec4<u32>(6422u, 25235u, 18972u, 0u), true), Struct_1(0u, vec4<u32>(21316u, 58593u, 79588u, 36374u), false), Struct_1(57646u, vec4<u32>(15836u, 35155u, 4951u, 1u), true), Struct_1(33422u, vec4<u32>(14550u, 25736u, 4294967295u, 41051u), true), Struct_1(4294967295u, vec4<u32>(46928u, 4294967295u, 4294967295u, 4294967295u), false), Struct_1(0u, vec4<u32>(0u, 83934u, 42429u, 6291u), true), Struct_1(21730u, vec4<u32>(4294967295u, 41828u, 20786u, 4294967295u), false), Struct_1(1u, vec4<u32>(77183u, 0u, 7594u, 0u), true), Struct_1(29268u, vec4<u32>(54853u, 6731u, 2483u, 0u), false), Struct_1(4294967295u, vec4<u32>(1u, 75808u, 87176u, 4294967295u), true), Struct_1(1u, vec4<u32>(4294967295u, 1u, 39400u, 0u), false), Struct_1(1089u, vec4<u32>(1u, 1u, 1u, 30308u), true), Struct_1(4294967295u, vec4<u32>(6971u, 0u, 4294967295u, 0u), true), Struct_1(0u, vec4<u32>(4294967295u, 56241u, 1u, 1u), false), Struct_1(79264u, vec4<u32>(0u, 74860u, 1u, 1u), false));

var<private> global4: vec3<f32> = vec3<f32>(-746f, -413f, -1000f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    global4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global4.x) * vec3<f32>(global4.x, 695f, global4.x)), vec3<f32>(481f, 3130f, global4.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global4.x + global4.x), _wgslsmith_f_op_f32(f32(-1f) * -575f), 1496f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -787f, global4.x) * vec3<f32>(-337f, 899f, global4.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1283f, global4.x, -136f)))), any(vec4<bool>(true, true, u_input.b.x > u_input.b.x, all(vec2<bool>(false, false))))))));
    var var_0 = u_input.b.x;
    let var_1 = any(select(!vec3<bool>(true, any(vec2<bool>(false, true)), all(vec4<bool>(true, false, true, true))), vec3<bool>(_wgslsmith_f_op_f32(exp2(global4.x)) == -1311f, false, true), vec3<bool>(any(vec3<bool>(true, true, true)), true, true)));
    var var_2 = select(select(select(!vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, !var_1, !(0u < u_input.b.x)), select(vec3<bool>(var_1 && false, true, all(vec4<bool>(var_1, true, false, true))), vec3<bool>(true, var_1 | true, var_1), vec3<bool>(true, true, true))), !vec3<bool>(global4.x < _wgslsmith_f_op_f32(ceil(global4.x)), reverseBits(u_input.b.x) != u_input.b.x, false), !(!(!vec3<bool>(true, false, var_1))));
    var var_3 = ~(~_wgslsmith_add_vec2_u32(~(~u_input.b.zz), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(u_input.b.x, 61486u))));
    return ~_wgslsmith_div_u32(12333u, ~(~max(18057u, var_3.x)));
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    global4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(142f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1852f, _wgslsmith_div_f32(902f, global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * 1028f))));
    var var_0 = arg_0;
    return global2[_wgslsmith_index_u32(func_3() | _wgslsmith_add_u32(reverseBits(1u), abs(arg_0.c.x)), 16u)];
}

fn func_1() -> Struct_2 {
    return func_2(Struct_4(min(vec3<i32>(-2147483647i, -1i, u_input.a.x) | select(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], false), global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), 526f, vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(1u, u_input.b.x, 0u)), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x))), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_2(Struct_1(4294967295u, var_0.a.b, all(select(select(vec4<bool>(var_0.b, true, var_0.a.c, false), vec4<bool>(var_0.c.c, var_0.b, var_0.c.c, var_0.b), var_0.c.c), select(vec4<bool>(false, var_0.b, false, true), vec4<bool>(var_0.b, var_0.d, false, var_0.b), vec4<bool>(true, var_0.a.c, true, false)), var_0.d))), true, global3[_wgslsmith_index_u32(~countOneBits(_wgslsmith_mult_u32(u_input.b.x, 1u)), 19u)], var_0.a.c);
    var var_2 = true;
    let var_3 = -205f;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1252f, _wgslsmith_f_op_f32(-var_3)), global4.yx)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global4.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global4.x) - global4.xz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, -309f)) + _wgslsmith_f_op_vec2_f32(round(global4.yy))), true))));
    let var_5 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -602f), _wgslsmith_f_op_f32(exp2(var_3)), -605f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3, var_4.x, -2183f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 630f, var_3)), _wgslsmith_div_vec3_f32(vec3<f32>(var_4.x, var_3, global4.x), vec3<f32>(var_3, var_4.x, var_3)), !vec3<bool>(var_1.d, var_0.c.c, var_0.b))))), select(!select(select(vec3<bool>(var_0.c.c, false, var_1.c.c), vec3<bool>(var_0.b, true, var_1.d), vec3<bool>(false, false, var_1.a.c)), !vec3<bool>(true, var_1.a.c, false), global1.x < -1i), select(vec3<bool>(true, var_1.b, var_0.d), !select(vec3<bool>(var_1.a.c, false, false), vec3<bool>(var_1.a.c, var_1.c.c, var_0.a.c), vec3<bool>(var_1.a.c, true, true)), !select(vec3<bool>(var_1.d, var_0.c.c, false), vec3<bool>(false, true, true), vec3<bool>(var_1.a.c, var_1.d, false))), !var_1.c.c)));
    var_2 = 1f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1819f - global4.x), _wgslsmith_f_op_f32(exp2(var_4.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - -291f), -600f)));
    var_0 = global2[_wgslsmith_index_u32(53245u, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

