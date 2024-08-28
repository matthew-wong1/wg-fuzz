struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<f32, 25> = array<f32, 25>(238f, -542f, -411f, -833f, 981f, -1534f, 441f, -1161f, -724f, 1003f, 1000f, -285f, -160f, -2233f, -381f, -1349f, 469f, -680f, 241f, -106f, -1244f, -936f, -1000f, -2211f, -764f);

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<i32>(2147483647i, 2147483647i), false, -11345i, 13439u, -29405i), Struct_1(vec2<i32>(1i, 0i), true, i32(-2147483648), 83624u, i32(-2147483648)), Struct_1(vec2<i32>(-1i, 1i), true, 2147483647i, 0u, 1i), Struct_1(vec2<i32>(35875i, -4013i), true, -11836i, 0u, -5269i), Struct_1(vec2<i32>(i32(-2147483648), 29702i), true, -21909i, 0u, -53294i), Struct_1(vec2<i32>(i32(-2147483648), 0i), true, 28118i, 13103u, 77581i), Struct_1(vec2<i32>(i32(-2147483648), -1i), true, 51364i, 1u, 0i), Struct_1(vec2<i32>(0i, 10397i), false, -18787i, 0u, 43750i), Struct_1(vec2<i32>(0i, -1i), true, -74192i, 0u, 9986i), Struct_1(vec2<i32>(25386i, i32(-2147483648)), true, 22483i, 66668u, 2147483647i), Struct_1(vec2<i32>(44333i, 1i), false, 2147483647i, 0u, 11173i), Struct_1(vec2<i32>(-40280i, 1i), true, 0i, 3738u, 0i), Struct_1(vec2<i32>(i32(-2147483648), 0i), true, -6268i, 4294967295u, -28850i), Struct_1(vec2<i32>(18314i, 6507i), true, 2147483647i, 15621u, -17683i), Struct_1(vec2<i32>(1i, 0i), false, 1965i, 1u, 0i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~countOneBits(arg_0), 25u)], global1[_wgslsmith_index_u32(arg_0, 25u)]))), arg_1));
    let var_1 = ~4294967295u < arg_2.x;
    var var_2 = global2[_wgslsmith_index_u32(~(arg_0 & u_input.a.x), 15u)];
    var var_3 = ~1u;
    global1 = array<f32, 25>();
    return 74259u;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(14524u, 15u)], ~33792u, ~59347u, u_input.a.x), ~(~vec4<u32>(24354u, global0[_wgslsmith_index_u32(1u, 15u)], u_input.a.x, u_input.a.x))), -1521f, _wgslsmith_sub_vec4_u32(vec4<u32>(14119u, 1u, 116769u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38335u, 15u)], 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], 10976u, u_input.a.x)) & vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 41653u), 1u, u_input.a.x, 55435u)), 25u)] - 1676f);
    let var_1 = -(i32(-1i) * -u_input.c.x) != reverseBits(_wgslsmith_mod_i32(arg_0.x, ~arg_0.x | u_input.c.x));
    var var_2 = 8505i;
    var_2 = -7176i;
    var var_3 = _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(0u, 25u)], 419f));
    return global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(u_input.a.x, ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x))), 15u)];
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = array<f32, 25>();
    var var_0 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_mod_i32(~0i, -arg_0.a.x), _wgslsmith_sub_i32(max(u_input.d, -2894i), _wgslsmith_dot_vec2_i32(u_input.c.ww, vec2<i32>(-2147483647i, u_input.d)))), true, ~(-_wgslsmith_mod_i32(52506i, arg_0.c)), _wgslsmith_add_u32(u_input.a.x, ~(~34099u)), _wgslsmith_sub_i32(firstTrailingBit(arg_0.c), -u_input.b)));
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 15u)]);
    let var_2 = ~(~(_wgslsmith_add_u32(0u, 76626u) >> (var_0.a.d % 32u))) >> (func_1(-(~u_input.c.zww), any(vec4<bool>(true, true, true, true))).d % 32u);
    let var_3 = select(!vec3<bool>(true & var_1.a.b, any(select(vec4<bool>(var_0.a.b, var_0.a.b, arg_0.b, var_0.a.b), vec4<bool>(false, var_0.a.b, false, var_1.a.b), var_0.a.b)), any(!vec4<bool>(true, var_1.a.b, var_0.a.b, arg_0.b))), vec3<bool>(!(1i != var_1.a.c), arg_0.b, any(vec2<bool>(true, u_input.c.x == -62004i))), vec3<bool>(!(!(var_1.a.d != var_0.a.d)), true, true));
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 15>();
    let var_0 = Struct_2(Struct_1(firstTrailingBit(vec2<i32>(-u_input.b, _wgslsmith_sub_i32(5386i, u_input.c.x))), func_3(func_1(vec3<i32>(-2147483647i, u_input.c.x, u_input.b), true)) || (any(vec3<bool>(true, true, true)) == true), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, max(u_input.c.x, u_input.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 29211i), ~vec2<i32>(20009i, -51433i))), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_sub_u32(4294967295u, 12632u)), ~abs(u_input.c.x << (u_input.a.x % 32u))));
    let var_1 = ~(~min(var_0.a.e, _wgslsmith_clamp_i32(reverseBits(var_0.a.a.x), 21613i, var_0.a.c)));
    let var_2 = select(select(!select(!vec3<bool>(false, var_0.a.b, true), !vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b), false), !vec3<bool>(true, all(vec3<bool>(false, var_0.a.b, false)), var_0.a.b), true), select(select(!vec3<bool>(var_0.a.b, false, true), !select(vec3<bool>(true, false, var_0.a.b), vec3<bool>(var_0.a.b, true, false), false), vec3<bool>(true, true, true)), vec3<bool>(var_0.a.b, true, any(vec3<bool>(var_0.a.b, var_0.a.b, false)) == var_0.a.b), select(vec3<bool>(any(vec4<bool>(true, var_0.a.b, var_0.a.b, var_0.a.b)), true, u_input.c.x <= -22066i), !select(vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b), vec3<bool>(var_0.a.b, true, var_0.a.b), vec3<bool>(false, true, false)), var_0.a.b)), vec3<bool>(var_0.a.b, var_0.a.d < global0[_wgslsmith_index_u32(firstLeadingBit(abs(global0[_wgslsmith_index_u32(3170u, 15u)])), 15u)], true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1958f, 747f), vec2<f32>(global1[_wgslsmith_index_u32(var_0.a.d, 25u)], global1[_wgslsmith_index_u32(var_0.a.d, 25u)])))))), 59479u, firstTrailingBit(u_input.c));
}

