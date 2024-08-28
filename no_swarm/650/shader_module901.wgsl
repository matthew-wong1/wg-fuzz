struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: bool) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1335f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 21u)])))))), Struct_1(false), Struct_1(true), vec4<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(arg_0, 21u)], 1000f)), -402f, -1782f, _wgslsmith_f_op_f32(min(120f, global0[_wgslsmith_index_u32(1u, 21u)]))));
    global0 = array<f32, 21>();
    return -248f;
}

fn func_3(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_2(1353f, Struct_1(arg_0), Struct_1(all(!vec4<bool>(false, false, arg_0, arg_0))), vec4<f32>(global0[_wgslsmith_index_u32(16697u, 21u)], global0[_wgslsmith_index_u32(~u_input.b.x, 21u)], _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zyx, u_input.b.xwz), 21u)], _wgslsmith_f_op_f32(f32(-1f) * -1403f), arg_0 | arg_0)), global0[_wgslsmith_index_u32(4294967295u, 21u)]));
    var var_1 = 1u;
    var_1 = u_input.b.x & ~1u;
    let var_2 = ~firstTrailingBit(_wgslsmith_mult_u32(u_input.b.x, 4294967295u));
    let var_3 = var_0.b;
    return Struct_1(select(-311f <= var_0.a, true, any(select(vec4<bool>(false, false, var_3.a, true), !vec4<bool>(arg_0, true, false, true), false))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_3(_wgslsmith_f_op_f32(ceil(672f)) >= _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), _wgslsmith_f_op_f32(func_2(u_input.b.x, false)), false))), 16988i);
    var var_1 = -(~min(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, 26021i), vec3<i32>(u_input.c, 34228i, 0i)), 2147483647i), vec2<i32>(-u_input.c, u_input.c)));
    let var_2 = Struct_2(-789f, func_3(15531u > min(firstTrailingBit(u_input.b.x), _wgslsmith_clamp_u32(0u, u_input.b.x, 47354u)), var_1.x), func_3(any(!vec3<bool>(var_0.a, var_0.a, false)) || (true & !var_0.a), var_1.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], -1000f, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)]) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 21u)], 167f, global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(22146u, 21u)]))))))));
    var var_3 = true;
    var var_4 = !vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(var_2.b.a, false), vec2<bool>(false, var_2.c.a), vec2<bool>(true, var_2.b.a)), select(vec2<bool>(var_2.c.a, var_0.a), vec2<bool>(true, var_2.c.a), vec2<bool>(var_2.c.a, true)))), true);
    return Struct_1(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_mod_u32(u_input.b.x, 44259u)), 21u)])) == 432f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 21u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-947f + global0[_wgslsmith_index_u32(81618u, 21u)])))), Struct_1(all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1358f, -2421f, -1000f, global0[_wgslsmith_index_u32(18077u, 21u)]), vec4<f32>(-286f, global0[_wgslsmith_index_u32(24541u, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)], -896f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-646f, global0[_wgslsmith_index_u32(2211u, 21u)], 1248f, 1000f), vec4<f32>(global0[_wgslsmith_index_u32(1u, 21u)], 1097f, 2306f, -341f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1064f, -2558f, 738f, -468f) + vec4<f32>(-679f, -1523f, global0[_wgslsmith_index_u32(u_input.b.x, 21u)], -513f))), true)) - vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 4294967295u), 21u)], _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 21u)])), 752f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(28619u, 21u)])))))));
    global0 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(961f * 171f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * -467f))), -24329i, _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~(vec2<u32>(51120u, 4294967295u) & u_input.b.xw), vec2<u32>(u_input.b.x, u_input.b.x >> (4294967295u % 32u))), vec2<u32>(30183u, ~1u ^ _wgslsmith_mod_u32(u_input.b.x, u_input.b.x))), _wgslsmith_add_u32(1u, 1u));
}

