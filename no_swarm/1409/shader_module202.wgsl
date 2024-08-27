struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_2(-852f, 4294967295u, vec2<f32>(1502f, -504f), 4294967295u)), Struct_3(Struct_2(-1202f, 0u, vec2<f32>(461f, -1080f), 1u)), Struct_3(Struct_2(573f, 1u, vec2<f32>(-243f, -211f), 8039u)), Struct_3(Struct_2(-1636f, 4294967295u, vec2<f32>(786f, 1000f), 18196u)), Struct_3(Struct_2(-199f, 4294967295u, vec2<f32>(930f, -849f), 1u)), Struct_3(Struct_2(1044f, 56813u, vec2<f32>(-1231f, 1505f), 1u)), Struct_3(Struct_2(1000f, 98531u, vec2<f32>(110f, 720f), 1u)), Struct_3(Struct_2(379f, 2772u, vec2<f32>(-1000f, -1254f), 18801u)), Struct_3(Struct_2(555f, 9216u, vec2<f32>(736f, -443f), 9519u)), Struct_3(Struct_2(-1117f, 9466u, vec2<f32>(-1117f, -451f), 4294967295u)), Struct_3(Struct_2(534f, 45861u, vec2<f32>(1045f, 597f), 65229u)), Struct_3(Struct_2(-1000f, 1u, vec2<f32>(-172f, 340f), 15740u)), Struct_3(Struct_2(271f, 109128u, vec2<f32>(-256f, -535f), 27494u)), Struct_3(Struct_2(997f, 70409u, vec2<f32>(-1000f, 1434f), 4294967295u)), Struct_3(Struct_2(976f, 29792u, vec2<f32>(-326f, -917f), 2064u)), Struct_3(Struct_2(1000f, 1u, vec2<f32>(-1253f, -1869f), 0u)), Struct_3(Struct_2(-854f, 4294967295u, vec2<f32>(-551f, 318f), 47830u)), Struct_3(Struct_2(1066f, 0u, vec2<f32>(596f, -1351f), 20248u)), Struct_3(Struct_2(-856f, 51076u, vec2<f32>(1624f, 641f), 1u)), Struct_3(Struct_2(-917f, 26655u, vec2<f32>(729f, -1000f), 1u)), Struct_3(Struct_2(104f, 1u, vec2<f32>(755f, -1343f), 1u)), Struct_3(Struct_2(-2096f, 1u, vec2<f32>(594f, -308f), 1u)), Struct_3(Struct_2(1518f, 3909u, vec2<f32>(-538f, -1063f), 0u)), Struct_3(Struct_2(-338f, 69285u, vec2<f32>(-608f, -139f), 51543u)), Struct_3(Struct_2(-889f, 15272u, vec2<f32>(-315f, -205f), 50831u)), Struct_3(Struct_2(-1000f, 0u, vec2<f32>(-934f, -530f), 1u)), Struct_3(Struct_2(129f, 1u, vec2<f32>(-1555f, 181f), 5690u)), Struct_3(Struct_2(1015f, 18089u, vec2<f32>(-1241f, -400f), 64349u)), Struct_3(Struct_2(-899f, 59801u, vec2<f32>(133f, 422f), 4294967295u)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global0 = array<vec3<f32>, 20>();
    var var_0 = ~select(21893u, ~4294967295u, any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)) && all(vec2<bool>(true, false)));
    let var_1 = abs(~(-2147483647i));
    global1 = array<Struct_3, 29>();
    let var_2 = false;
    return -354f;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: f32) -> vec4<f32> {
    global0 = array<vec3<f32>, 20>();
    global1 = array<Struct_3, 29>();
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(arg_3 + arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(0i, arg_2, arg_2, arg_2)))), -1314f, arg_3))));
    let var_1 = _wgslsmith_f_op_f32(257f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(round(var_0.x)))) - _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(min(var_0.x, 510f))))));
    global1 = array<Struct_3, 29>();
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1779f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2164f - arg_3))))));
}

fn func_1(arg_0: i32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1506f)) + 630f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -665f) + -1466f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -294f))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_2(u_input.a, true, -2147483647i, 463f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(302f, 755f, 600f, 347f), vec4<f32>(-1011f, 721f, 124f, 1452f)))))))));
    global0 = array<vec3<f32>, 20>();
    var var_1 = _wgslsmith_div_i32(-1i, _wgslsmith_mod_i32(arg_0, -1i)) ^ max(-25122i ^ arg_0, _wgslsmith_add_i32(abs(arg_0), arg_0));
    global1 = array<Struct_3, 29>();
    global1 = array<Struct_3, 29>();
    return Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-744f - var_0.x))), _wgslsmith_f_op_f32(func_3(vec4<i32>(0i, arg_0, arg_0, arg_0) & vec4<i32>(arg_0, -43640i, 16992i, arg_0))), _wgslsmith_f_op_f32(-525f + _wgslsmith_f_op_f32(select(var_0.x, -281f, false))), var_0.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 18227u, 4294967295u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 39164u, 51352u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(37516u, u_input.a, u_input.a, 6726u)), vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.a, u_input.a), min(u_input.a, 66305u), ~0u, 0u)) & ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(23856u, u_input.a, u_input.a, u_input.a), vec4<u32>(56430u, u_input.a, u_input.a, u_input.a))), Struct_1(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - 1066f))), reverseBits(reverseBits(-19481i)), arg_0, _wgslsmith_add_vec2_u32(~firstLeadingBit(vec2<u32>(0u, u_input.a)), vec2<u32>(u_input.a, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 29>();
    var var_0 = func_1(-_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(96425i, -2147483647i, -39387i, -2579i), ~vec4<i32>(11185i, -29464i, 2147483647i, -2147483647i)), abs(vec4<i32>(1i, 1i, 1i, 1i))));
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(0i).a.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.zz))))), var_0.c.c);
}

