struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
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

var<private> global0: array<f32, 30> = array<f32, 30>(-197f, 542f, -636f, -1159f, -1000f, -107f, 197f, -1000f, -1226f, -661f, -2041f, -851f, -1671f, 601f, 1814f, 379f, -1399f, -857f, -261f, -217f, -326f, -1137f, -1142f, -518f, 1013f, -196f, 286f, 612f, -597f, 1649f);

var<private> global1: array<Struct_3, 2>;

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(-422f, Struct_1(-1000f, -38080i, true), vec2<bool>(true, false)), Struct_2(-253f, Struct_1(-628f, 0i, true), vec2<bool>(false, true)), Struct_2(471f, Struct_1(-1072f, 1i, false), vec2<bool>(false, true)), Struct_2(-1354f, Struct_1(-218f, 2147483647i, false), vec2<bool>(false, true)), Struct_2(-703f, Struct_1(515f, i32(-2147483648), false), vec2<bool>(true, false)), Struct_2(-822f, Struct_1(-990f, 67925i, true), vec2<bool>(false, false)), Struct_2(-226f, Struct_1(-1012f, -1i, false), vec2<bool>(true, false)), Struct_2(248f, Struct_1(455f, -7606i, true), vec2<bool>(true, true)), Struct_2(2119f, Struct_1(1492f, -38988i, true), vec2<bool>(false, false)), Struct_2(502f, Struct_1(378f, 14901i, true), vec2<bool>(false, true)), Struct_2(393f, Struct_1(-370f, 641i, false), vec2<bool>(false, true)), Struct_2(-466f, Struct_1(1221f, 1i, true), vec2<bool>(true, false)), Struct_2(835f, Struct_1(1000f, 65984i, true), vec2<bool>(false, false)), Struct_2(-424f, Struct_1(329f, 0i, true), vec2<bool>(false, true)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = !select(!vec4<bool>(false, select(true, true, false), true, any(vec2<bool>(true, true))), select(vec4<bool>(true, all(vec2<bool>(true, false)), false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)) && true);
    global2 = array<Struct_2, 14>();
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c, 47691u, u_input.c), 2u)];
    global2 = array<Struct_2, 14>();
    global1 = array<Struct_3, 2>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)], _wgslsmith_f_op_f32(-var_1.b.a)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-302f, _wgslsmith_f_op_f32(arg_0 * -1612f))))));
}

fn func_3() -> vec4<bool> {
    global2 = array<Struct_2, 14>();
    let var_0 = all(select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true))), true));
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, i32(-1i) * -u_input.a.x, max(-u_input.b, countOneBits(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(2147483647i, 19766i, 0i, u_input.a.x))))), select(vec3<i32>(max(firstLeadingBit(u_input.b), -u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 75156i, -25468i), vec3<i32>(0i, 1i, 0i) & u_input.a.zxz), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, -21807i, -2147483647i, u_input.b)), -vec4<i32>(u_input.b, u_input.b, 0i, 1i))), u_input.a.zxz, any(vec3<bool>(any(vec3<bool>(var_0, true, var_0)), false, var_0 != true))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.c, 30u)], global0[_wgslsmith_index_u32(65726u, 30u)]))), global0[_wgslsmith_index_u32(~(~u_input.c), 30u)])), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f)) != global0[_wgslsmith_index_u32(~(~abs(u_input.c)), 30u)]);
    global2 = array<Struct_2, 14>();
    return vec4<bool>(true, var_2.c, all(!vec3<bool>(var_2.c, true, any(vec3<bool>(var_0, var_2.c, var_2.c)))), !(2147483647i > var_2.b) & !(13963u >= (1u & u_input.c)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: i32, arg_3: vec3<f32>) -> u32 {
    global1 = array<Struct_3, 2>();
    global2 = array<Struct_2, 14>();
    let var_0 = func_3();
    var var_1 = arg_2;
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, u_input.c), 30u)];
    global2 = array<Struct_2, 14>();
    let var_1 = u_input.a.zzy;
    var var_2 = global0[_wgslsmith_index_u32(~func_2(u_input.a.zzy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 30u)]) - _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(232f * global0[_wgslsmith_index_u32(u_input.c, 30u)])))), -_wgslsmith_mod_i32(u_input.b, var_1.x) | (_wgslsmith_sub_i32(var_1.x, var_1.x) ^ ~u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 30u)], 1000f, 842f) * vec3<f32>(2075f, global0[_wgslsmith_index_u32(u_input.c, 30u)], global0[_wgslsmith_index_u32(57645u, 30u)])) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(23051u, 30u)]) + vec3<f32>(187f, global0[_wgslsmith_index_u32(u_input.c, 30u)], -1000f))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 30u)])), _wgslsmith_f_op_f32(f32(-1f) * -1600f), _wgslsmith_f_op_f32(step(308f, -1121f))))), 30u)];
    global2 = array<Struct_2, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(-1i), _wgslsmith_mod_i32(41710i, countOneBits(_wgslsmith_mod_i32(var_1.x, u_input.a.x))), var_1.x ^ var_1.x));
}

