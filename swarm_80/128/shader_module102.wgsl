struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(933f, vec2<f32>(587f, 1596f), 38899u, 8684i), Struct_1(-1001f, vec2<f32>(1199f, 529f), 4294967295u, 0i), Struct_1(-330f, vec2<f32>(-1000f, -1043f), 1u, 2147483647i), Struct_1(-1211f, vec2<f32>(394f, 343f), 1u, 130847i), Struct_1(-1606f, vec2<f32>(1042f, 686f), 4294967295u, -2523i), Struct_1(759f, vec2<f32>(877f, -131f), 1u, 2147483647i), Struct_1(1000f, vec2<f32>(493f, -1000f), 16715u, 1i), Struct_1(1402f, vec2<f32>(601f, 760f), 1u, 0i), Struct_1(703f, vec2<f32>(-878f, 441f), 1u, -33140i), Struct_1(-141f, vec2<f32>(-1398f, 2350f), 12324u, 2147483647i), Struct_1(1301f, vec2<f32>(-1077f, 406f), 57316u, 76i), Struct_1(-131f, vec2<f32>(-1264f, 393f), 33400u, i32(-2147483648)), Struct_1(567f, vec2<f32>(636f, -489f), 13237u, i32(-2147483648)), Struct_1(1099f, vec2<f32>(-1821f, -1256f), 4294967295u, 2147483647i), Struct_1(-1174f, vec2<f32>(-147f, 2323f), 724u, 27839i), Struct_1(-656f, vec2<f32>(-341f, 1418f), 1u, -1i));

var<private> global2: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(58303u, 73214u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 176u), vec2<u32>(4294967295u, 1u), vec2<u32>(43219u, 0u), vec2<u32>(3636u, 24313u), vec2<u32>(21954u, 70125u), vec2<u32>(61083u, 109244u), vec2<u32>(77541u, 0u), vec2<u32>(4294967295u, 24000u), vec2<u32>(1u, 2798u), vec2<u32>(4294967295u, 0u), vec2<u32>(27320u, 30106u), vec2<u32>(80565u, 56226u), vec2<u32>(35858u, 50672u), vec2<u32>(34860u, 4294967295u), vec2<u32>(0u, 65284u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(1u, 29552u), vec2<u32>(0u, 0u), vec2<u32>(23889u, 84636u), vec2<u32>(62892u, 1u), vec2<u32>(1u, 43427u), vec2<u32>(1u, 1u), vec2<u32>(23085u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 25712u), vec2<u32>(0u, 64941u), vec2<u32>(647u, 4229u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1359f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-500f)), _wgslsmith_f_op_f32(-427f * -286f)))), -542f, 536f)));
    var var_1 = ~vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(38888i, 2147483647i) & select(vec2<i32>(0i, 80170i), vec2<i32>(-2147483647i, 6387i), vec2<bool>(false, true)), _wgslsmith_div_vec2_i32(-vec2<i32>(57791i, 1293i), select(vec2<i32>(2147483647i, 486i), vec2<i32>(2147483647i, -2147483647i), false))), 14965i);
    global1 = array<Struct_1, 16>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1700f, var_0.x, var_0.x, -532f) * vec4<f32>(_wgslsmith_f_op_f32(var_0.x - 2563f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1361f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.yz)) * _wgslsmith_f_op_vec2_f32(var_0.wz * var_0.xx)))))), max(firstLeadingBit(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 2050u), u_input.a), 38386u, ~u_input.a.x)), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.a.x, 35120u))), u_input.a.x, select(~u_input.a.x, firstLeadingBit(3810u), var_1.x > -20437i), u_input.a.x)));
    return 54737u;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_2(arg_0.b, ~vec4<u32>(~_wgslsmith_add_u32(arg_0.c, 6708u), 4294967295u, ~_wgslsmith_div_u32(27496u, u_input.a.x), ~arg_0.c));
    global0 = array<Struct_1, 4>();
    var_0 = Struct_2(arg_0.b, var_0.b);
    global1 = array<Struct_1, 16>();
    return global0[_wgslsmith_index_u32(~(20216u & countOneBits(~func_3())), 4u)];
}

fn func_4(arg_0: Struct_1) -> i32 {
    global2 = array<vec2<u32>, 31>();
    return -1940i;
}

fn func_1(arg_0: bool) -> vec3<i32> {
    global2 = array<vec2<u32>, 31>();
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -169f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(637f, 2556f))), _wgslsmith_f_op_f32(-1084f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-492f)) + _wgslsmith_div_f32(735f, 2493f)))), ~abs(~vec4<u32>(4294967295u, u_input.a.x, 0u, 0u)));
    let var_1 = var_0.a.x;
    var var_2 = Struct_1(var_1, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(var_1, var_1)))))), u_input.a.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 135i), abs(vec2<i32>(1i, 48575i))) | func_4(func_2(Struct_1(-642f, var_0.a, 45241u, 2147483647i), 0i, false)), 1i));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(var_0.a, _wgslsmith_f_op_vec2_f32(select(var_0.a, var_2.b, vec2<bool>(arg_0, arg_0))))), var_2.b)) * var_0.a), firstLeadingBit(countOneBits(~select(vec4<u32>(var_2.c, 1u, var_0.b.x, var_0.b.x), var_0.b, true))));
    return ~(~(~vec3<i32>(firstLeadingBit(19022i), min(var_2.d, -1i), min(var_2.d, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_i32(func_1(true) << (_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 24691u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 692u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 38352u), u_input.a))) % vec3<u32>(32u)), vec3<i32>(-44871i, 28602i, reverseBits(_wgslsmith_div_i32(-40057i, -2147483647i))));
    global0 = array<Struct_1, 4>();
    global2 = array<vec2<u32>, 31>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-260f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-134f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-740f, -861f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-568f, 101f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 857f))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, -208f, false)) + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<u32>(_wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(u_input.a.x, 31u)], vec2<u32>(u_input.a.x, u_input.a.x) ^ global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), 23993u, 4294967295u, u_input.a.x) >> (~select(~vec4<u32>(22146u, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u), false) % vec4<u32>(32u)));
    global2 = array<vec2<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~func_2(func_2(Struct_1(272f, var_1, var_2.b.x, var_0.x), 36290i, false), ~var_0.x, true).d, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1831f));
}

