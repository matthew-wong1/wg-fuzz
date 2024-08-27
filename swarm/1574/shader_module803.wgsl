struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(1u, 0u), vec2<u32>(1u, 2573u), vec2<u32>(1u, 4294967295u), vec2<u32>(30730u, 0u), vec2<u32>(0u, 80567u), vec2<u32>(1u, 61413u), vec2<u32>(78224u, 16686u), vec2<u32>(21857u, 4294967295u), vec2<u32>(4294967295u, 36117u), vec2<u32>(8237u, 0u), vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(60962u, 4294967295u), vec2<u32>(42390u, 10608u), vec2<u32>(0u, 23346u), vec2<u32>(4294967295u, 0u), vec2<u32>(37747u, 0u), vec2<u32>(61059u, 1u), vec2<u32>(0u, 12883u), vec2<u32>(60621u, 1u), vec2<u32>(120850u, 37874u), vec2<u32>(0u, 20887u), vec2<u32>(1u, 6530u), vec2<u32>(1u, 15668u), vec2<u32>(9345u, 1u));

var<private> global1: array<Struct_4, 23>;

var<private> global2: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(424f, 1000f), vec2<f32>(-2006f, -1000f), vec2<f32>(-1000f, -1217f), vec2<f32>(1000f, 515f), vec2<f32>(-2265f, -782f), vec2<f32>(-996f, -1000f), vec2<f32>(979f, -2511f), vec2<f32>(445f, -1588f), vec2<f32>(1322f, 265f), vec2<f32>(110f, -348f), vec2<f32>(-459f, -662f), vec2<f32>(1000f, 320f), vec2<f32>(1602f, -1084f), vec2<f32>(-519f, -739f), vec2<f32>(904f, 1000f));

var<private> global3: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(10687i, i32(-2147483648), -49155i, -12838i), vec4<i32>(29985i, -1i, -17814i, -15636i), vec4<i32>(40393i, 3839i, 15874i, 13477i), vec4<i32>(0i, 2147483647i, 1i, 22638i), vec4<i32>(-13746i, 25709i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), -12125i, 818i, 37633i), vec4<i32>(1i, 3668i, 0i, i32(-2147483648)), vec4<i32>(2147483647i, 0i, -34471i, i32(-2147483648)), vec4<i32>(9448i, -1i, -1i, -3753i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -52291i), vec4<i32>(44555i, -1i, 4040i, -30736i), vec4<i32>(0i, i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(8684i, 0i, 0i, 2147483647i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global2 = array<vec2<f32>, 15>();
    global1 = array<Struct_4, 23>();
    return select(any(vec4<bool>(true, false, !select(false, true, false), false)), select(true, true, false), any(vec3<bool>(!(u_input.b > u_input.b), true, true)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_1 {
    global0 = array<vec2<u32>, 25>();
    global2 = array<vec2<f32>, 15>();
    global0 = array<vec2<u32>, 25>();
    global3 = array<vec4<i32>, 13>();
    let var_0 = Struct_1(~reverseBits(arg_0.a), func_3(), ~arg_0.c);
    return arg_0;
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> Struct_1 {
    let var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(abs(~countOneBits(10917u)), 23u)];
    var var_2 = true;
    var var_3 = func_2(var_1.a.a, vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(-973f)), _wgslsmith_f_op_f32(-998f + -480f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-394f, -1394f)))), arg_0);
    var var_4 = vec2<bool>(func_2(Struct_1(~var_3.a, arg_0.a.a.b, abs(~u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1496f, 307f, 1041f, -428f)))), global1[_wgslsmith_index_u32(29847u, 23u)]).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(709f))) + -618f) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1023f)))), 314f, !var_0)));
    return Struct_1(~vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, ~vec4<u32>(36123u, 4294967295u, 0u, 9326u)), min(1u, var_3.c), countOneBits(_wgslsmith_sub_u32(17167u, 1u))), var_1.a.c.b, var_1.a.a.c);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: u32) -> vec2<bool> {
    global3 = array<vec4<i32>, 13>();
    global1 = array<Struct_4, 23>();
    return select(!(!(!select(vec2<bool>(arg_0.a.b, arg_0.c.b), vec2<bool>(arg_0.a.b, arg_0.c.b), arg_0.a.b))), vec2<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1440f)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-694f * -1041f), _wgslsmith_f_op_f32(962f * -845f)), arg_0.b == abs(-u_input.b)), all(vec2<bool>((false & arg_0.a.b) | func_3(), any(vec2<bool>(true, false)) | arg_0.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~min(~vec3<u32>(u_input.a, 1u, 1u) >> (u_input.c.ywz % vec3<u32>(32u)), u_input.c.zyw), any(func_4(Struct_3(func_1(global1[_wgslsmith_index_u32(u_input.a, 23u)], false), _wgslsmith_mult_i32(-5080i, u_input.b), Struct_1(u_input.c.xwz, false, 36020u)), _wgslsmith_clamp_vec2_u32(u_input.c.yz << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(min(1u, u_input.a), 25u)], vec2<u32>(0u, 0u)), ~u_input.a)), func_2(func_2(Struct_1(vec3<u32>(u_input.c.x, u_input.a, u_input.c.x), true, 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-323f, 778f, 1069f, -928f) - vec4<f32>(1f, 1f, 1f, 1f)), global1[_wgslsmith_index_u32(48675u, 23u)]), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(501f, -717f, _wgslsmith_f_op_f32(f32(-1f) * -338f), _wgslsmith_f_op_f32(f32(-1f) * -1138f)))), Struct_4(Struct_3(func_2(Struct_1(u_input.c.wzw, false, 31673u), vec4<f32>(486f, -776f, 139f, -769f), global1[_wgslsmith_index_u32(u_input.a, 23u)]), 0i >> (u_input.a % 32u), Struct_1(u_input.c.zww, true, u_input.c.x)))).a.x);
    global3 = array<vec4<i32>, 13>();
    global2 = array<vec2<f32>, 15>();
    let var_1 = global1[_wgslsmith_index_u32(~(~18923u), 23u)];
    global1 = array<Struct_4, 23>();
    let var_2 = func_2(func_1(global1[_wgslsmith_index_u32(var_1.a.c.a.x, 23u)], select(-72824i, abs(5573i), func_4(var_1.a, var_1.a.c.a.yz, var_0.c).x) >= max(~1i, i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(796f - 425f), _wgslsmith_f_op_f32(max(-402f, -1338f)), _wgslsmith_f_op_f32(983f * -1987f), _wgslsmith_f_op_f32(-538f + -733f)))), global1[_wgslsmith_index_u32(~(~abs(~16580u)), 23u)]).a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(471f)) - -616f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1278f - 274f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1507f, 406f) + _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(var_2.x, 15u)])) * _wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(~var_2.x, 15u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(857f, -845f) - vec2<f32>(-1251f, 1257f))))), vec4<u32>(var_0.c, 1u, 44530u, _wgslsmith_mult_u32(firstLeadingBit(~var_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.a.c, var_1.a.c.c, 1u, var_1.a.c.a.x), u_input.c))), i32(-1i) * -13371i, -26430i, _wgslsmith_mod_vec4_i32(global3[_wgslsmith_index_u32(u_input.c.x, 13u)], global3[_wgslsmith_index_u32(~var_2.x, 13u)]));
}

