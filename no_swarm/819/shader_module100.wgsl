struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<Struct_1, 5>;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global4: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec4<u32>(0u, 3656u, 54489u, 4294967295u), 0u, vec4<u32>(71183u, 16614u, 51732u, 4294967295u), vec2<u32>(4294967295u, 24862u))), Struct_2(Struct_1(vec4<u32>(0u, 1u, 17045u, 22289u), 23877u, vec4<u32>(1u, 53307u, 62408u, 48365u), vec2<u32>(4294967295u, 70514u))), Struct_2(Struct_1(vec4<u32>(22264u, 1u, 101596u, 36754u), 1u, vec4<u32>(35178u, 0u, 4294967295u, 4294967295u), vec2<u32>(52553u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(1982u, 16905u, 1u, 1u), 1u, vec4<u32>(0u, 81586u, 16062u, 1u), vec2<u32>(16315u, 73700u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 2248u, 40992u, 1u), 17816u, vec4<u32>(101741u, 0u, 35299u, 1u), vec2<u32>(4294967295u, 54980u))), Struct_2(Struct_1(vec4<u32>(34510u, 39924u, 32257u, 16234u), 1u, vec4<u32>(1u, 4294967295u, 0u, 11961u), vec2<u32>(0u, 1u))), Struct_2(Struct_1(vec4<u32>(35418u, 17377u, 48750u, 4294967295u), 4294967295u, vec4<u32>(3420u, 44159u, 1u, 4294967295u), vec2<u32>(0u, 61334u))), Struct_2(Struct_1(vec4<u32>(35922u, 4294967295u, 8874u, 1u), 22042u, vec4<u32>(4294967295u, 10168u, 51926u, 19870u), vec2<u32>(45358u, 57290u))), Struct_2(Struct_1(vec4<u32>(0u, 1u, 1u, 63202u), 29976u, vec4<u32>(67922u, 1u, 17162u, 83544u), vec2<u32>(4294967295u, 18434u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 70921u, 1u, 4294967295u), 108100u, vec4<u32>(0u, 1u, 3504u, 21448u), vec2<u32>(1u, 0u))), Struct_2(Struct_1(vec4<u32>(44349u, 0u, 31654u, 1u), 1u, vec4<u32>(1u, 114171u, 418u, 21792u), vec2<u32>(61104u, 33717u))), Struct_2(Struct_1(vec4<u32>(67665u, 0u, 32417u, 4294967295u), 53072u, vec4<u32>(9926u, 61896u, 0u, 1u), vec2<u32>(4208u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 45724u, 2975u), 2571u, vec4<u32>(40680u, 1u, 0u, 40909u), vec2<u32>(44010u, 14228u))));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(global3.x, 13u)];
    var var_1 = _wgslsmith_add_i32(i32(-1i) * -(arg_1.x >> (u_input.c % 32u)), arg_0) > abs(~(-19457i));
    global1 = array<Struct_1, 22>();
    global2 = array<Struct_1, 5>();
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(34494u, 5u)]);
    return _wgslsmith_div_u32(0u, global3.x) & _wgslsmith_add_u32(var_2.a.d.x, u_input.c);
}

fn func_2() -> vec3<u32> {
    global0 = array<f32, 10>();
    return vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(36039u, 8696u, 4294967295u, u_input.e), vec4<u32>(41541u, u_input.c, 35066u, global3.x) | vec4<u32>(u_input.c, u_input.c, 54758u, u_input.c)), global3.x) | ~func_3(firstLeadingBit(u_input.a.x), u_input.a.xxx), u_input.e, abs(~abs(~28922u)));
}

fn func_1() -> Struct_2 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e, global3.x), 13u)];
    let var_1 = _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_0.a.b, 10u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a.d.x, 10u)] - global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(45010u, var_0.a.d.x), 10u)]), -261f)), true));
    global4 = array<Struct_2, 13>();
    global1 = array<Struct_1, 22>();
    global3 = vec2<u32>(var_0.a.d.x, _wgslsmith_dot_vec3_u32(min(var_0.a.a.xwz, _wgslsmith_mod_vec3_u32(var_0.a.a.xzx, var_0.a.c.xyw)), _wgslsmith_sub_vec3_u32(~vec3<u32>(46050u, global3.x, u_input.e), func_2())) << ((~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, u_input.e), vec2<u32>(106521u, 18239u)) << (~u_input.c % 32u)) % 32u));
    return global4[_wgslsmith_index_u32(~(~(_wgslsmith_dot_vec3_u32(var_0.a.a.xyy, ~var_0.a.a.zxx) ^ 1u)), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global3 = vec2<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(_wgslsmith_div_u32(global3.x, ~40007u), ~(25825u | var_0.a.c.x))), global3.x);
    global0 = array<f32, 10>();
    global0 = array<f32, 10>();
    var var_1 = Struct_2(Struct_1(~select(~vec4<u32>(43088u, 4294967295u, 14150u, 39131u), ~var_0.a.c, all(vec2<bool>(false, false))), ~u_input.c, vec4<u32>(firstTrailingBit(firstLeadingBit(u_input.e)), 1u, _wgslsmith_dot_vec3_u32(var_0.a.c.yww, var_0.a.c.xyw) | global3.x, firstLeadingBit(~u_input.e)), vec2<u32>(4294967295u, _wgslsmith_div_u32(22584u, var_0.a.a.x & 0u))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(755f, _wgslsmith_f_op_f32(165f * 1059f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.a.d.x, 10u)])), true)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1.a.b, 10u)], global0[_wgslsmith_index_u32(var_0.a.b, 10u)])))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-182f, _wgslsmith_f_op_f32(-956f - -127f))) * -1894f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-828f, -2011f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1789f) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 10u)] * 1171f))))));
    let var_3 = max(~2147483647i, -1i);
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3, u_input.b, -32020i, -15234i), u_input.a), var_3 & firstLeadingBit(var_3)), -4678i, var_3, ~(~19771i)), ~19955i, global3.x, _wgslsmith_div_vec3_u32(select(vec3<u32>(~0u, abs(global3.x), _wgslsmith_mult_u32(u_input.c, 8303u)), vec3<u32>(4294967295u, 5022u, 6825u | var_0.a.d.x), true), var_1.a.c.xyz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(230f, 1105f, global0[_wgslsmith_index_u32(0u, 10u)])))))));
}

