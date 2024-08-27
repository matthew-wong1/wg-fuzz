struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(29933i, 86915u), Struct_1(2147483647i, 1u), Struct_1(i32(-2147483648), 1u), Struct_1(19027i, 1u));

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(67953u, 56943u, 11824u), vec3<u32>(18883u, 0u, 44103u), vec3<u32>(1u, 1u, 26874u), vec3<u32>(12080u, 35138u, 33910u), vec3<u32>(48465u, 26446u, 6147u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(61478u, 26471u, 33573u), vec3<u32>(0u, 42609u, 4294967295u), vec3<u32>(12820u, 0u, 51946u), vec3<u32>(1u, 72775u, 1u), vec3<u32>(28523u, 8203u, 20607u), vec3<u32>(11829u, 1u, 0u));

var<private> global3: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    var var_0 = select(!vec2<bool>(any(vec3<bool>(false, true, true)), true), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), select(select(vec2<bool>(false, 30338i >= global3.a), vec2<bool>(false, any(vec4<bool>(true, true, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), true)), vec2<bool>(true, true), !vec2<bool>(all(vec4<bool>(false, true, false, false)), false)));
    var var_1 = Struct_1(~50965i, _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, u_input.a ^ countOneBits(global3.b)), _wgslsmith_dot_vec3_u32(~(~global2[_wgslsmith_index_u32(global3.b, 13u)]), vec3<u32>(~global3.b, 0u, abs(global3.b)))));
    global2 = array<vec3<u32>, 13>();
    var var_2 = select(vec2<bool>(var_0.x, false), select(select(!vec2<bool>(var_0.x, true), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), false), false), select(!vec2<bool>(true, var_0.x), vec2<bool>(true, true), !(var_0.x && var_0.x)), select(var_0.x, false, any(vec3<bool>(var_0.x, true, true))) & any(vec2<bool>(var_0.x, true))), vec2<bool>(all(vec2<bool>(var_0.x, true)), true));
    var_0 = select(vec2<bool>(!any(select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_2.x, false, true), vec3<bool>(var_0.x, var_2.x, false))), true), !vec2<bool>(var_0.x, var_2.x), var_2.x);
    return abs(global3.b);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = 1085u;
    var var_1 = ~reverseBits(vec4<i32>(i32(-1i) * -49945i, -56045i << (1u % 32u), 7353i, abs(55988i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, -19594i, 0i), ~vec4<i32>(66743i, 1i, global3.a, 2147483647i)));
    var var_2 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_1.zxz, -var_1.zyx), max(1i, max(~arg_0, global3.a))), func_3());
    var var_3 = any(!select(!vec3<bool>(true, arg_2.x, true), vec3<bool>(true, all(vec3<bool>(true, false, true)), arg_2.x), true));
    var_2 = Struct_1(-1i, arg_1.a.x);
    return !vec2<bool>(any(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), any(vec2<bool>(any(vec2<bool>(false, arg_2.x)), 9320i <= var_1.x)));
}

fn func_1(arg_0: bool, arg_1: f32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 754f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -2071f) * vec2<f32>(arg_1, arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(661f, arg_1)), func_2(global3.a, Struct_2(vec4<u32>(4294967295u, 0u, 1u, global3.b)), vec2<bool>(false, arg_0), Struct_2(vec4<u32>(40377u, u_input.a, 4294967295u, u_input.a)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(min(arg_1, arg_1))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<f32>, arg_3: u32) -> Struct_1 {
    let var_0 = ~(~min(reverseBits(vec4<u32>(4294967295u, 1u, arg_3, 28728u)) ^ ~vec4<u32>(arg_3, arg_3, 0u, 29882u), vec4<u32>(0u, 32882u << (arg_3 % 32u), ~u_input.a, 1u)));
    let var_1 = vec3<bool>(!all(select(select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(true, false, arg_1, arg_1)), !vec4<bool>(true, arg_1, false, false), select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(true, false, false, true), vec4<bool>(arg_1, true, true, arg_1)))), arg_1, ((_wgslsmith_mod_i32(global3.a, -1i) << (u_input.a % 32u)) >= _wgslsmith_add_i32(1i, reverseBits(global3.a))) || all(select(select(vec2<bool>(false, true), vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1)), !vec2<bool>(false, arg_1), vec2<bool>(false, arg_1))));
    let var_2 = vec2<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global3.b, ~global3.b), countOneBits(max(var_0.yzz, vec3<u32>(10775u, arg_3, u_input.a))))), min(~u_input.a, var_0.x));
    let var_3 = Struct_2(select(var_0, vec4<u32>(select(64636u, 10295u, true) ^ var_0.x, func_3() | ~0u, 1u, ~func_3()), var_1.x));
    var var_4 = global1[_wgslsmith_index_u32(88587u, 4u)];
    return Struct_1(global3.a, ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(global3.b, countOneBits(~global3.b) << (u_input.a % 32u)), u_input.a, _wgslsmith_mod_u32(global3.b, 4294967295u));
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    global3 = func_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1457f, 1467f))), true, _wgslsmith_f_op_vec2_f32(func_1(true, -1410f)), _wgslsmith_mod_u32(global3.b, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(~global3.a, abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(~1i, 2147483647i, global3.a, 2147483647i), reverseBits(reverseBits(vec4<i32>(global3.a, -2147483647i, 0i, global3.a))), select(vec4<i32>(1i, -21562i, global3.a, 0i) & vec4<i32>(-28294i, global3.a, global3.a, global3.a), vec4<i32>(39290i, global3.a, global3.a, global3.a), global3.a < 75690i))));
}

