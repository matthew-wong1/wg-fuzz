struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: array<u32, 12>;

var<private> global2: array<f32, 10>;

var<private> global3: array<i32, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32) -> Struct_4 {
    global0 = array<f32, 13>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(46185u, 10u)], -1000f, 1250f, 1000f) - vec4<f32>(-1497f, -137f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(132174u, 12u)], 13u)], 803f)) + vec4<f32>(global0[_wgslsmith_index_u32(40816u, 13u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 13u)], -2006f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1884u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 13u)])) - vec4<f32>(_wgslsmith_f_op_f32(ceil(357f)), -885f, _wgslsmith_div_f32(215f, 149f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(75012u, 10u)]))))));
    var var_1 = Struct_4(true, all(select(vec2<bool>(true, all(vec3<bool>(false, false, false))), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_1 = Struct_4(false, !var_1.b);
    return Struct_4(all(vec3<bool>(!(false && var_1.a), -614f <= _wgslsmith_f_op_f32(step(644f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 13u)])), all(select(vec4<bool>(false, false, var_1.b, var_1.b), vec4<bool>(true, true, var_1.b, var_1.a), vec4<bool>(var_1.b, var_1.b, false, true))))), var_1.a);
}

fn func_1() -> i32 {
    global2 = array<f32, 10>();
    let var_0 = func_2(~(abs(24759i) << (1u % 32u)));
    global3 = array<i32, 27>();
    global0 = array<f32, 13>();
    global3 = array<i32, 27>();
    return 44118i;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = abs(min(vec4<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_2.e, 1u, 64822u, 19635u), vec4<u32>(arg_1, arg_1, 4559u, arg_2.a)), ~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(arg_2.e, 12u)], 4581u, arg_1)), _wgslsmith_clamp_u32(0u, 4294967295u, ~arg_2.a), min(1u, abs(arg_1)), abs(global1[_wgslsmith_index_u32(arg_1, 12u)])), max(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.e, arg_2.e, 57397u, 26999u), vec4<u32>(arg_1, 22809u, 0u, arg_0))), ~vec4<u32>(48411u, arg_0, global1[_wgslsmith_index_u32(arg_1, 12u)], 1507u) << (min(vec4<u32>(19988u, global1[_wgslsmith_index_u32(36955u, 12u)], arg_2.a, 28531u), vec4<u32>(arg_2.a, arg_1, arg_1, global1[_wgslsmith_index_u32(4294967295u, 12u)])) % vec4<u32>(32u)))));
    global0 = array<f32, 13>();
    var var_1 = arg_2;
    var_0 = ~vec4<u32>(reverseBits(arg_2.e), 72515u, 4294967295u, ~43487u) | ~vec4<u32>(arg_1, ~(86905u | global1[_wgslsmith_index_u32(0u, 12u)]), 1u, 62090u);
    var_1 = arg_2;
    return -(~abs(u_input.a));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, arg_1, arg_1)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, arg_1), 4294967295u), 1u, max(44930u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)], 12u)] >> (66862u % 32u))));
    global3 = array<i32, 27>();
    global1 = array<u32, 12>();
    return Struct_1(~global1[_wgslsmith_index_u32(abs(4294967295u), 12u)], !(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-250f, _wgslsmith_f_op_f32(1f + -1517f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(1u, 10u)], 1938f)) - 654f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1239f, global2[_wgslsmith_index_u32(23481u, 10u)], -863f))) - _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(49418u, 10u)], global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(761f, -1220f, global0[_wgslsmith_index_u32(4294967295u, 13u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-619f + -2252f)))))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 38400u, arg_1), reverseBits(vec3<u32>(1u, 1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-vec4<i32>(-60935i, func_1(), ~global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(106941u, 12u)], 12u)], 27u)], func_3(~8028u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)], 4294967295u), Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23416u, 12u)], 12u)], 12u)], 12u)], vec2<bool>(false, false), vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 13u)], -1605f, global0[_wgslsmith_index_u32(43205u, 13u)]), global0[_wgslsmith_index_u32(1u, 13u)], 24254u))), ~(~abs(countOneBits(global1[_wgslsmith_index_u32(4294967295u, 12u)]))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(18047u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], _wgslsmith_dot_vec4_u32(select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 25759u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 12u)], 4294967295u, global1[_wgslsmith_index_u32(0u, 12u)], 40749u), vec4<bool>(true, false, true, false)), _wgslsmith_sub_vec4_u32(vec4<u32>(52876u, global1[_wgslsmith_index_u32(4294967295u, 12u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(124395u, 12u)], 12u)]), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36103u, 12u)], 12u)], 12u)], 1u))))), 10u)]);
    global2 = array<f32, 10>();
    var var_1 = Struct_4(-u_input.a != global3[_wgslsmith_index_u32(~1u, 27u)], all(!vec2<bool>(any(vec4<bool>(false, false, false, true)), true)));
    global0 = array<f32, 13>();
    let var_2 = Struct_3(var_0, vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a, var_0.a), 10u)]))), -1480f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-820f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 10u)]), true))))), Struct_2(_wgslsmith_f_op_f32(step(608f, 2057f))));
    var var_3 = 4294967295u;
    global2 = array<f32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(firstLeadingBit(vec3<i32>(-39544i, u_input.b.x, 2147483647i)) ^ max(vec3<i32>(2299i, -8950i, u_input.a), vec3<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.e, 12u)], 27u)], 12924i, u_input.a))));
}

