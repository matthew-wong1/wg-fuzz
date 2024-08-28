struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> bool {
    let var_0 = vec3<i32>(1i, select(firstLeadingBit(~u_input.a.x) >> (~1u % 32u), _wgslsmith_mult_i32(30580i, ~u_input.a.x >> (u_input.b.x % 32u)), true), u_input.a.x | _wgslsmith_dot_vec4_i32(~u_input.a, u_input.a));
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    return true;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    var var_0 = Struct_1(1u);
    var var_1 = abs(vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(~vec2<i32>(-11922i, arg_0.x)), (vec2<i32>(2147483647i, 5743i) & arg_0.wx) ^ arg_0.ww), u_input.a.x));
    var_1 = arg_0.yw;
    let var_2 = Struct_2(Struct_1(60695u), _wgslsmith_dot_vec4_i32(~select(-vec4<i32>(var_1.x, 2147483647i, 32121i, var_1.x), -arg_0, func_3(true, vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], -1492f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)]))), arg_0), 334f, _wgslsmith_f_op_vec3_f32(vec3<f32>(711f, 288f, 321f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(14866u, 9u)], -1000f, global0[_wgslsmith_index_u32(var_0.a, 9u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(var_0.a, 9u)], global0[_wgslsmith_index_u32(var_0.a, 9u)]))))));
    var var_3 = u_input.b;
    return var_3.x;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(min(~reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, 0i, -19900i)), u_input.a), vec4<i32>(~u_input.a.x, 0i, 1i, u_input.a.x | ~u_input.a.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u | _wgslsmith_sub_u32(arg_0, 48300u), 9u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(107006u, 9u)]) * 813f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_2(u_input.a), firstTrailingBit(3564u)), 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 9u)])))) * 402f));
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(41530u, 9u)], var_1, 1f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-235f)), _wgslsmith_f_op_f32(abs(1069f)), _wgslsmith_f_op_f32(min(var_1, var_1))) + vec3<f32>(_wgslsmith_f_op_f32(var_1 + global0[_wgslsmith_index_u32(10619u, 9u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(74998u, 9u)] * -435f), _wgslsmith_f_op_f32(var_1 * var_1)))));
    return Struct_1(~(~_wgslsmith_mult_u32(reverseBits(arg_0), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(~reverseBits(1u), u_input.b.x, u_input.b.x, ~u_input.b.x);
    let var_1 = true;
    let var_2 = abs(min(u_input.a.ww, ~u_input.a.yw) >> (~var_0.xz % vec2<u32>(32u)));
    var var_3 = -78531i;
    let var_4 = Struct_1(28200u);
    var var_5 = _wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(35333u, 4294967295u))), u_input.b.xx);
    var var_6 = Struct_2(func_1(~abs(1u)), ~(_wgslsmith_add_i32(abs(-1i), ~(-1293i)) & abs(countOneBits(u_input.a.x))), global0[_wgslsmith_index_u32(var_0.x, 9u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)])) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -442f, global0[_wgslsmith_index_u32(10555u, 9u)]))))) - vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-652f))), -1110f)));
    global0 = array<f32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(func_1(~func_1(52207u).a).a, 9u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~var_4.a, 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.c)))), max(1u, abs(~var_4.a)) >> (_wgslsmith_dot_vec4_u32(var_0, ~var_0) % 32u), var_4.a, min(abs(var_4.a), var_5.x));
}

