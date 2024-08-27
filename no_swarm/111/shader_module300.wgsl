struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(35295u, -2996i), Struct_1(1u, -1i), Struct_1(4294967295u, 0i), Struct_1(34628u, 25338i), Struct_1(26774u, 2147483647i), Struct_1(39351u, 51184i), Struct_1(51628u, i32(-2147483648)));

var<private> global1: array<f32, 32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<bool>) -> vec4<i32> {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = arg_0.yyx;
    global0 = array<Struct_1, 7>();
    var var_1 = u_input.a.yxy;
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(~(~var_1.x), 2147483647i, u_input.b, -19340i), vec4<i32>(_wgslsmith_mod_i32(-69016i, _wgslsmith_sub_i32(0i, -2147483647i)), 2147483647i, max(max(u_input.a.x, var_1.x), u_input.b), 0i) >> (~vec4<u32>(~34573u, 1u, ~1u, u_input.d >> (0u % 32u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(-vec4<i32>(min(var_1.x, 0i), countOneBits(u_input.e.x), u_input.b ^ -20108i, var_1.x), u_input.a));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(0u, 7u)];
    return reverseBits(~15906u);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = Struct_1(func_3(arg_1), 21304i);
    let var_1 = !vec4<bool>(arg_2.x, arg_1.b >= var_0.b, arg_2.x, true);
    var var_2 = vec2<bool>(any(vec3<bool>(false & any(vec4<bool>(true, true, true, true)), false, arg_0.x)), all(select(arg_0.yw, select(select(vec2<bool>(true, arg_2.x), var_1.ww, false), var_1.zx, select(arg_0.yz, vec2<bool>(true, arg_0.x), arg_2)), all(!arg_0))));
    let var_3 = var_0;
    var var_4 = var_3;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(var_3.a, 32u)], 506f) * vec2<f32>(-1649f, -2036f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(var_0.a, 32u)], global1[_wgslsmith_index_u32(var_4.a, 32u)])))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(var_3.a, 32u)]) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f))) + vec2<f32>(613f, -628f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 32>();
    global0 = array<Struct_1, 7>();
    global1 = array<f32, 32>();
    global0 = array<Struct_1, 7>();
    var var_0 = u_input.c > _wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_clamp_i32(-1i, u_input.e.x, u_input.c), u_input.e.x, ~(-61784i), (u_input.e.x >> (23282u % 32u)) | _wgslsmith_dot_vec4_i32(u_input.e, u_input.a)), ~(-func_1(vec4<bool>(false, true, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.d, 32u)])), _wgslsmith_f_op_f32(-1896f * -1545f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-571f, global1[_wgslsmith_index_u32(1u, 32u)]) + vec2<f32>(318f, global1[_wgslsmith_index_u32(1u, 32u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(false, true, true, true), global0[_wgslsmith_index_u32(76599u, 7u)], vec2<bool>(false, true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.d, 32u)], global1[_wgslsmith_index_u32(u_input.d, 32u)]))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.d, 32u)])))), vec2<bool>(true, 4294967295u == _wgslsmith_div_u32(u_input.d, 55598u)))), global1[_wgslsmith_index_u32(4294967295u, 32u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(669f * global1[_wgslsmith_index_u32(u_input.d, 32u)]) * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(99829u, 32u)], 467f)) - -514f), _wgslsmith_f_op_f32(f32(-1f) * -247f), -467f), ~(-(~(u_input.e.x ^ -37682i))));
}

