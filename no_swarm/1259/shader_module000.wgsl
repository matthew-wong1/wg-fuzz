struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec4<i32>(0i, -1i, -10281i, -1i)), Struct_2(vec4<i32>(6474i, 1i, 1i, -31091i)), Struct_2(vec4<i32>(8953i, 19697i, 1i, 42540i)), Struct_2(vec4<i32>(29282i, -1i, 1i, 33771i)), Struct_2(vec4<i32>(-40165i, 1i, -23440i, 2147483647i)), Struct_2(vec4<i32>(-22801i, 20028i, -18704i, 0i)), Struct_2(vec4<i32>(0i, -3753i, i32(-2147483648), 1i)), Struct_2(vec4<i32>(-54988i, -50560i, -15086i, 36894i)), Struct_2(vec4<i32>(1i, 36659i, -9672i, 34584i)), Struct_2(vec4<i32>(-1i, i32(-2147483648), -3043i, 0i)), Struct_2(vec4<i32>(30188i, 2147483647i, -1i, 7802i)), Struct_2(vec4<i32>(0i, 13335i, i32(-2147483648), 2147483647i)), Struct_2(vec4<i32>(2147483647i, 28371i, -1i, 0i)), Struct_2(vec4<i32>(-98117i, 886i, -19303i, 16244i)), Struct_2(vec4<i32>(1i, -66407i, i32(-2147483648), -1i)), Struct_2(vec4<i32>(-20642i, -83784i, 2147483647i, -55355i)), Struct_2(vec4<i32>(48073i, 1i, 0i, 31062i)), Struct_2(vec4<i32>(23841i, 2147483647i, 2147483647i, 16157i)), Struct_2(vec4<i32>(11259i, 26675i, 1i, 1i)), Struct_2(vec4<i32>(-38209i, 34414i, i32(-2147483648), 30078i)), Struct_2(vec4<i32>(0i, -1i, -28135i, -1i)), Struct_2(vec4<i32>(0i, 0i, -65775i, 1i)), Struct_2(vec4<i32>(-2339i, -1i, -6333i, -34553i)));

var<private> global1: vec3<i32>;

var<private> global2: f32 = -1016f;

var<private> global3: Struct_2;

var<private> global4: array<vec3<f32>, 1>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = true;
    return Struct_1(select(~global3.a, ~reverseBits(_wgslsmith_clamp_vec4_i32(global3.a, arg_0.a, vec4<i32>(global1.x, arg_0.a.x, arg_0.d, 1i))), !vec4<bool>(arg_0.d == global1.x, false, true, !arg_0.c.x)), true, vec2<bool>(var_0, !arg_0.b), arg_0.a.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> i32 {
    var var_0 = -global3.a;
    return ~var_0.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_2, 23>();
    let var_0 = arg_0;
    var var_1 = Struct_2(firstTrailingBit(min(var_0.a, vec4<i32>(arg_0.a.x, 1i, _wgslsmith_add_i32(global1.x, u_input.a), _wgslsmith_mod_i32(1i, u_input.c)))));
    var var_2 = ~var_1.a;
    let var_3 = select(select(vec3<bool>(arg_1.b, arg_1.b, true), select(vec3<bool>(!arg_1.c.x, true, all(vec2<bool>(true, arg_1.b))), select(!vec3<bool>(true, arg_1.b, arg_1.b), vec3<bool>(true, false, true), select(vec3<bool>(arg_1.c.x, false, true), vec3<bool>(arg_1.b, true, false), vec3<bool>(arg_1.c.x, false, false))), select(!vec3<bool>(true, true, arg_1.b), !vec3<bool>(arg_1.c.x, false, arg_1.c.x), false)), !select(!vec3<bool>(true, arg_1.c.x, true), vec3<bool>(arg_1.b, arg_1.c.x, arg_1.b), select(vec3<bool>(arg_1.b, true, arg_1.c.x), vec3<bool>(false, true, false), vec3<bool>(true, arg_1.b, false)))), select(vec3<bool>(false, true, true), vec3<bool>(arg_1.b, true, !any(vec4<bool>(arg_1.b, false, arg_1.c.x, true))), select(select(select(vec3<bool>(false, arg_1.c.x, arg_1.c.x), vec3<bool>(false, arg_1.c.x, arg_1.c.x), vec3<bool>(true, arg_1.c.x, arg_1.c.x)), !vec3<bool>(arg_1.b, arg_1.c.x, arg_1.c.x), arg_1.b && true), !vec3<bool>(true, arg_1.c.x, false), select(!vec3<bool>(arg_1.c.x, true, true), vec3<bool>(true, false, false), !arg_1.b))), arg_1.b);
    return abs(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_add_vec4_i32(global3.a, -(~global3.a)), !(!any(vec3<bool>(true, true, true))), vec2<bool>(true, true), 18772i), _wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(1u, 1u)]));
    let var_1 = Struct_1(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.d, u_input.c, var_0.d, func_2(vec2<f32>(-1437f, -1261f), 1u)), global3.a, vec4<i32>(global3.a.x, -u_input.a, _wgslsmith_mod_i32(global1.x, var_0.a.x), 1i)), all(func_1(func_1(func_1(Struct_1(var_0.a, false, var_0.c, -21299i), vec3<f32>(-412f, 1705f, -1730f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(162f, -285f, -1332f), vec3<f32>(-522f, 1716f, 1183f)))), global4[_wgslsmith_index_u32(~func_3(global0[_wgslsmith_index_u32(1u, 23u)], Struct_1(global3.a, true, vec2<bool>(false, var_0.b), 1i)), 1u)]).c), !select(var_0.c, vec2<bool>(true, any(vec3<bool>(false, var_0.b, var_0.b))), vec2<bool>(true, true)), ~(-_wgslsmith_mod_i32(global1.x & var_0.a.x, 1i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global4[_wgslsmith_index_u32(4294967295u, 1u)], _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global4[_wgslsmith_index_u32(1u, 1u)] - vec3<f32>(-707f, 958f, -1396f)), _wgslsmith_f_op_vec3_f32(abs(global4[_wgslsmith_index_u32(4294967295u, 1u)]))))) - _wgslsmith_f_op_vec3_f32(round(global4[_wgslsmith_index_u32(select(~73528u, 32019u, var_0.c.x & var_1.b), 1u)])))));
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4598u, 1u), vec2<u32>(1u, 61129u)), 0u, 30997u), ~1u) ^ 0u, 23u)];
    var var_3 = select(var_1.c.x, var_2.x < var_2.x, var_0.c.x);
    var_0 = Struct_1(~max(vec4<i32>(global1.x, var_0.a.x, 47158i, global3.a.x), vec4<i32>(-1i, global1.x, var_0.d, 2147483647i) ^ vec4<i32>(-2147483647i, 0i, -15202i, -30538i)) ^ vec4<i32>(~u_input.c ^ 25997i, 2147483647i, var_1.a.x ^ u_input.c, -2147483647i), func_1(func_1(var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, 215f, -1056f), vec3<f32>(var_2.x, -1490f, var_2.x))) * global4[_wgslsmith_index_u32(~306u, 1u)])), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(min(109f, var_2.x)), _wgslsmith_f_op_f32(floor(var_2.x)))))).b, !var_1.c, 16272i);
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(56916u, _wgslsmith_mod_u32(1u, func_3(global0[_wgslsmith_index_u32(21681u, 23u)], var_1)), ~1u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(31854u, 4294967295u, 1u)))), ~((select(vec4<u32>(32531u, 47094u, 24778u, 5052u), vec4<u32>(6947u, 1u, 35049u, 1u), var_0.c.x) & ~vec4<u32>(2121u, 6437u, 54627u, 34717u)) & _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 45274u, 1u, 978u), _wgslsmith_mult_vec4_u32(vec4<u32>(28846u, 1u, 66150u, 24424u), vec4<u32>(1u, 101207u, 19843u, 46447u))))), 23u)];
    let var_5 = global0[_wgslsmith_index_u32(~1u, 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global3.a.x, firstLeadingBit(_wgslsmith_mod_i32(~global3.a.x, min(var_0.d, 0i))), ~(~_wgslsmith_sub_i32(global1.x, 37921i)), ~countOneBits(var_5.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(823f, 421f, -109f, -642f) + vec4<f32>(var_2.x, var_2.x, var_2.x, 1000f))))));
}

