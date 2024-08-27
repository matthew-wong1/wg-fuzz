struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(993f))), -1715f));
    var var_1 = ~23659u & u_input.b;
    let var_2 = ~_wgslsmith_sub_u32(~11699u, _wgslsmith_mod_u32(4294967295u, u_input.b));
    let var_3 = Struct_2(Struct_1(vec2<bool>(any(!global1.a), !all(vec4<bool>(true, global1.a.x, false, false)))));
    let var_4 = Struct_3(var_3.a, Struct_1(var_3.a.a), 36123i);
    return var_3.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: Struct_3) -> bool {
    let var_0 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, ~16123u), abs(max(vec2<u32>(7853u, arg_2), vec2<u32>(567u, arg_2)))));
    let var_1 = arg_1;
    var var_2 = arg_3;
    var_2 = Struct_3(Struct_1(!(!vec2<bool>(arg_3.b.a.x, true))), Struct_1(select(func_2().a, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)] <= 1i, all(vec2<bool>(true, arg_3.b.a.x))), true)), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c, global0[_wgslsmith_index_u32(~var_0.x, 4u)], arg_3.c), countOneBits(vec3<i32>(-8526i, 1i, 1i)))));
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_2, 16363u), 4u)];
    return arg_3.a.a.x;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<f32>) -> vec3<bool> {
    global1 = func_2();
    let var_0 = Struct_2(Struct_1(select(select(vec2<bool>(global1.a.x, global1.a.x), global1.a, vec2<bool>(global1.a.x, global1.a.x)), !func_2().a, (global0[_wgslsmith_index_u32(u_input.b, 4u)] << (arg_0 % 32u)) <= -8838i)));
    return select(vec3<bool>(func_3(var_0, Struct_1(func_2().a), arg_0, Struct_3(func_2(), var_0.a, arg_1)), true, true), vec3<bool>(true, var_0.a.a.x, any(select(select(vec3<bool>(var_0.a.a.x, global1.a.x, false), vec3<bool>(true, global1.a.x, global1.a.x), var_0.a.a.x), !vec3<bool>(global1.a.x, var_0.a.a.x, global1.a.x), all(vec2<bool>(false, false))))), select(!(!(!vec3<bool>(global1.a.x, global1.a.x, global1.a.x))), !(!select(vec3<bool>(global1.a.x, false, global1.a.x), vec3<bool>(true, true, true), global1.a.x)), global1.a.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), -278f, _wgslsmith_f_op_f32(floor(-424f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1266f, -992f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-442f, -155f, 303f) - vec3<f32>(-509f, -297f, -786f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(274f, 921f, 500f), vec3<f32>(230f, -143f, 1346f))))))));
    var var_1 = global1.a.x;
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    let var_2 = Struct_3(Struct_1(!(!vec2<bool>(true, arg_0.x))), func_2(), -_wgslsmith_dot_vec2_i32(vec2<i32>(-arg_3.x, ~arg_1.x), ~reverseBits(vec2<i32>(8720i, global0[_wgslsmith_index_u32(u_input.a, 4u)]))));
    return Struct_3(Struct_1(vec2<bool>(any(!arg_0), arg_0.x && !var_2.b.a.x)), func_2(), var_2.c | global0[_wgslsmith_index_u32(~min(_wgslsmith_mult_u32(10115u, 49879u), ~u_input.b), 4u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(!select(!vec3<bool>(global1.a.x, true, global1.a.x), vec3<bool>(false, true, global1.a.x), select(global1.a.x, false, global1.a.x)), func_1(_wgslsmith_div_u32(u_input.b << (u_input.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.a), vec4<u32>(u_input.b, u_input.b, 0u, u_input.b))), 2147483647i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2576f, 1182f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1260f, -2097f))))), vec3<bool>(global1.a.x, global1.a.x, global1.a.x)), firstTrailingBit(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 4u)], -9448i, global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(1u, 4u)])), vec4<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(0u, 4u)]), -2147483647i, 2147483647i, ~global0[_wgslsmith_index_u32(0u, 4u)]))), vec4<bool>(global1.a.x, true, any(vec2<bool>(global1.a.x, true)), all(func_2().a)), -_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 4u)], 4510i) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(42587u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<i32>(1i, global0[_wgslsmith_index_u32(10690u, 4u)])), -(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]) ^ vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(61868u, 4u)]))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2711f, -450f), vec2<f32>(716f, 441f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(728f, 2162f) - vec2<f32>(226f, 645f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(534f, 1410f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-113f, -648f)))))));
    global1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1497f), var_1.x, _wgslsmith_f_op_f32(abs(var_1.x))));
    var_2 = vec3<f32>(110f, -360f, -1486f);
    var var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(4294967295u, 15528u, 1u), max(vec3<u32>(u_input.b, 4294967295u, 26500u), ~vec3<u32>(0u, u_input.a, u_input.a)), func_1(26739u << (0u % 32u), global0[_wgslsmith_index_u32(57687u, 4u)], var_1)), ~vec3<u32>(38683u, 1u, ~69461u))), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(4294967295u, _wgslsmith_div_u32(1u, _wgslsmith_add_u32(8797u, u_input.a)), !var_0.b.a.x), select(abs(firstLeadingBit(~vec2<u32>(12257u, 4294967295u))), ~abs(~vec2<u32>(4294967295u, 0u)), true));
}

