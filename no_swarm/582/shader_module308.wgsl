struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(-904f, -1000f, -661f, 141f, -1041f, 422f, -751f, 239f, -838f, 1027f, 207f, 1873f, -522f, 1782f, 446f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: i32) -> u32 {
    var var_0 = Struct_1(-569f, _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.c.zx), abs(~15332u), 1u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 44033u, u_input.c.x), u_input.c.zzx) << (~(~vec3<u32>(7913u, 1539u, arg_0.x)) % vec3<u32>(32u))), arg_2.a);
    var var_1 = Struct_1(-1462f, arg_0.x, _wgslsmith_div_vec2_i32(-vec2<i32>(0i, u_input.d.x), _wgslsmith_sub_vec2_i32(vec2<i32>(30174i, u_input.b.x & -1i), -firstTrailingBit(vec2<i32>(u_input.b.x, arg_3)))));
    let var_2 = Struct_5(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(arg_2.a.x, 2147483647i, var_0.c.x) ^ (vec3<i32>(arg_2.a.x, 10287i, arg_3) << (vec3<u32>(arg_0.x, var_1.b, 1u) % vec3<u32>(32u))), (u_input.d & u_input.d) ^ reverseBits(u_input.d)), vec3<i32>(arg_3, u_input.d.x, 1i)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(max(1404f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(1023f + 1000f)), -927f)))), abs(abs(select(~2899u, 1u, all(vec3<bool>(arg_1.a, false, false))))), ~_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-19224i, arg_2.a.x), select(arg_2.a, vec2<i32>(u_input.b.x, -2147483647i), vec2<bool>(arg_1.a, true))), vec2<i32>(1i, ~u_input.b.x), min(var_0.c, min(vec2<i32>(arg_2.a.x, -1i), arg_2.a))));
    var var_3 = -184f;
    return 1u;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: f32, arg_3: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_u32(u_input.a.yz, vec2<u32>(~u_input.a.x, u_input.c.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(func_3(u_input.a.xx, Struct_4(arg_0), Struct_3(vec2<i32>(arg_1.x, 0i)), arg_1.x), 15u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 15u)] * arg_2)))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.x, u_input.a.x), _wgslsmith_add_u32(32026u, u_input.a.x)), 15u)], global0[_wgslsmith_index_u32(34599u, 15u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1090f, arg_2))) + vec2<f32>(-1648f, _wgslsmith_f_op_f32(max(562f, -2548f)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(u_input.a.x & var_0.x), 15u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 15u)]) - -1690f))), 3348u, select(vec2<i32>(-2147483647i, 2147483647i), min(u_input.d.yy, -(~arg_1)), !vec2<bool>(arg_3.x, !arg_0)));
    var var_3 = vec4<u32>(_wgslsmith_dot_vec4_u32(~select(u_input.c, vec4<u32>(24137u, 1u, 0u, 4294967295u), vec4<bool>(false, arg_3.x, arg_0, arg_3.x)), vec4<u32>(~var_2.b, var_0.x, abs(0u), 99628u)) & ~(~u_input.a.x), max(min(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 49379u, 1u, 4615u), vec4<u32>(1u, u_input.a.x, u_input.c.x, var_2.b)), ~u_input.a.x), ~(~_wgslsmith_sub_u32(var_2.b, var_0.x))), ~(~1u), 0u);
    var_3 = vec4<u32>(abs(firstLeadingBit(u_input.c.x)), ~(~(~(~var_0.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(25468u, 0u), abs(~u_input.a.zx)), var_3.x & select(_wgslsmith_div_u32(var_0.x, var_0.x) ^ var_0.x, 19714u, select(arg_0, arg_0, any(vec3<bool>(false, false, false)))));
    return 1u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = Struct_1(-2115f, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 9686u & u_input.a.x, 64930u, 0u), u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(func_2(arg_0.x, u_input.d.xy, arg_1.x, arg_0.yzx), 4294967295u, ~17480u, max(u_input.c.x, 44506u)), ~(u_input.c | u_input.c))), _wgslsmith_div_vec2_i32(~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, -48515i)), countOneBits(u_input.b.yy)), vec2<i32>(0i >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, u_input.c.x, u_input.c.x)) % 32u), u_input.d.x)));
    global0 = array<f32, 15>();
    var var_1 = Struct_5(min(_wgslsmith_div_i32(0i, 9080i), -countOneBits(-u_input.b.x)));
    var var_2 = true;
    var var_3 = !arg_0.wz;
    return !arg_0.wy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    let var_0 = !(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), func_1(vec4<bool>(false, false, true, true), vec3<f32>(global0[_wgslsmith_index_u32(1u, 15u)], -408f, global0[_wgslsmith_index_u32(u_input.c.x, 15u)])), vec2<bool>(true, true)), ~(-25867i) > u_input.b.x));
    global0 = array<f32, 15>();
    var var_1 = Struct_4(u_input.a.x > u_input.a.x);
    let var_2 = (_wgslsmith_mod_u32(select(~u_input.a.x, u_input.c.x << (85803u % 32u), var_0.x), ~u_input.a.x) >> (max(u_input.a.x, u_input.c.x) % 32u)) == _wgslsmith_dot_vec3_u32(~vec3<u32>(~49594u, u_input.c.x << (4294967295u % 32u), u_input.a.x), _wgslsmith_add_vec3_u32(~vec3<u32>(116972u, u_input.a.x, 78493u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(39141u, 15u)])), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], 1240f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(u_input.c.x, 15u)])))))))));
}

