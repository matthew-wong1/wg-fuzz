struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 10>;

var<private> global2: Struct_2 = Struct_2(86417u, vec2<i32>(-786i, -1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_add_u32(~global0.a >> (0u % 32u), global0.a) & global2.a, !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), 73054u >= global2.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, 1147f, -2231f, -915f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, -1307f, global1[_wgslsmith_index_u32(45186u, 10u)]), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-187f, 2923f, -512f, -907f), vec4<f32>(global1[_wgslsmith_index_u32(global2.a, 10u)], global1[_wgslsmith_index_u32(global2.a, 10u)], arg_0, global1[_wgslsmith_index_u32(global2.a, 10u)])))))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(687f, 671f, -997f, global1[_wgslsmith_index_u32(global0.a, 10u)]), vec4<f32>(global1[_wgslsmith_index_u32(6828u, 10u)], 1627f, 1704f, 987f), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1394f, arg_0, 221f, -888f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-287f, arg_0, 780f, -222f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -583f, arg_0))) * vec4<f32>(_wgslsmith_f_op_f32(-136f * global1[_wgslsmith_index_u32(global2.a, 10u)]), _wgslsmith_f_op_f32(f32(-1f) * -2193f), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global2.a, 10u)])), -167f)), !(!var_0.b))));
    return var_0.a;
}

fn func_2() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-312f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global2.a), 10u)] - global1[_wgslsmith_index_u32(0u, 10u)]), -1145f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-682f, global1[_wgslsmith_index_u32(global0.a, 10u)], -1000f) - vec3<f32>(2444f, global1[_wgslsmith_index_u32(61349u, 10u)], global1[_wgslsmith_index_u32(18155u, 10u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1118f, -1429f, 886f)))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)))));
    let var_1 = -529f;
    let var_2 = Struct_2(~(func_3(1f, -u_input.d, vec3<i32>(3301i, global0.b.x, 2147483647i)) & 45702u), ~vec2<i32>(global2.b.x, global2.b.x));
    global2 = Struct_2(~firstLeadingBit(~countOneBits(var_2.a)), abs(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, global2.b.x) | vec2<i32>(global2.b.x, 6724i), vec2<i32>(u_input.b, u_input.b))));
    let var_3 = true & all(vec3<bool>(true, true, true));
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) - var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a, 10u)]) - _wgslsmith_f_op_f32(-var_1)) * var_1), 526f), vec3<f32>(_wgslsmith_f_op_f32(abs(228f)), 810f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-134f * 1000f)), var_1))), !(global1[_wgslsmith_index_u32(~global2.a, 10u)] == -110f)));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2());
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, 2147483647i) >> (_wgslsmith_mult_u32(global2.a, global2.a) % 32u), -_wgslsmith_sub_i32(global2.b.x, -11458i)) ^ global0.b.x, global2.b.x);
    return Struct_2(global0.a, u_input.c.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_1();
    global1 = array<f32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(828f + _wgslsmith_f_op_f32(-1852f * _wgslsmith_f_op_f32(f32(-1f) * -242f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 10u)])));
}

