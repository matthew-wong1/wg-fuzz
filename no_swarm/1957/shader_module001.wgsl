struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<bool, 13> = array<bool, 13>(true, false, false, true, true, true, true, false, false, false, false, false, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = arg_1.x;
    global1 = array<bool, 13>();
    global1 = array<bool, 13>();
    global1 = array<bool, 13>();
    global0 = countOneBits(vec4<u32>(~countOneBits(countOneBits(26656u)), 4294967295u, global0.x, _wgslsmith_div_u32(_wgslsmith_div_u32(global0.x, ~global0.x), 47860u)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2332f), 313f));
}

fn func_3() -> vec4<u32> {
    global0 = ~(vec4<u32>(~(global0.x | 45495u), global0.x, u_input.a.x, _wgslsmith_clamp_u32(98674u, u_input.a.x, 0u) >> (~u_input.a.x % 32u)) | ~(~(vec4<u32>(0u, u_input.a.x, global0.x, u_input.a.x) & vec4<u32>(4294967295u, global0.x, 43346u, global0.x))));
    global1 = array<bool, 13>();
    var var_0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-25676i, 65142i), _wgslsmith_add_i32(0i, 1151i)) >> (min(~u_input.a, min(vec2<u32>(27365u, 0u), u_input.a)) % vec2<u32>(32u)), ~(-_wgslsmith_div_vec2_i32(vec2<i32>(-49410i, -2147483647i), vec2<i32>(-243i, 84683i))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1726f, _wgslsmith_f_op_f32(-1882f * _wgslsmith_f_op_f32(525f + 1160f))))), 1084f));
    var var_2 = !(!select(vec3<bool>(!global1[_wgslsmith_index_u32(global0.x, 13u)], global1[_wgslsmith_index_u32(~4294967295u, 13u)], any(vec2<bool>(true, true))), vec3<bool>(false, global1[_wgslsmith_index_u32(global0.x, 13u)], select(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 13u)])), global1[_wgslsmith_index_u32(~firstLeadingBit(global0.x), 13u)]));
    return ~(~(~(~vec4<u32>(global0.x, 54699u, global0.x, 1u)))) & firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(25926u, global0.x, u_input.a.x, 92383u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(13160u, u_input.a.x, 0u, global0.x), vec4<u32>(global0.x, global0.x, u_input.a.x, 4294967295u))));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_mod_i32(-23554i, 72118i);
    global1 = array<bool, 13>();
    global0 = ~(~(~((vec4<u32>(8883u, global0.x, u_input.a.x, 4294967295u) | vec4<u32>(100298u, u_input.a.x, global0.x, u_input.a.x)) >> (func_3() % vec4<u32>(32u)))));
    global1 = array<bool, 13>();
    global1 = array<bool, 13>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -588f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(1u, global0.x), ~vec3<i32>(2147483647i, 2147483647i, 0i)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1526f) * _wgslsmith_f_op_f32(max(-1366f, 1433f))))), 355f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2148f, 456f) + _wgslsmith_div_f32(926f, -1000f))))));
    var var_1 = Struct_1(select(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(60787u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], false, global1[_wgslsmith_index_u32(global0.x, 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 13u)], true, global1[_wgslsmith_index_u32(58102u, 13u)], false), global1[_wgslsmith_index_u32(0u, 13u)]), all(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(global0.x, 13u)], global1[_wgslsmith_index_u32(global0.x, 13u)]))), select(!vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 13u)], false, global1[_wgslsmith_index_u32(3040u, 13u)], true), vec4<bool>(select(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(global0.x, 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), !global1[_wgslsmith_index_u32(22199u, 13u)], global1[_wgslsmith_index_u32(59300u, 13u)] || global1[_wgslsmith_index_u32(u_input.a.x, 13u)], !global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), all(!vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 13u)], false, false))), !(!(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(global0.x, 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)])))));
    let var_2 = Struct_1(vec4<bool>(all(vec3<bool>(global0.x <= 0u, global1[_wgslsmith_index_u32(7573u, 13u)], true)), false, var_1.a.x, global1[_wgslsmith_index_u32(global0.x, 13u)]));
    var var_3 = _wgslsmith_dot_vec4_i32(~max(~(~vec4<i32>(53722i, 0i, 26144i, -3788i)), ~(-vec4<i32>(-2147483647i, 21979i, 1i, -43853i))), select(reverseBits(~vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(11911i << (u_input.a.x % 32u), 1i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -15425i, 37454i), vec3<i32>(-24660i, 1i, 1i))) & vec4<i32>(1i, 1i, 1i, 1i), var_1.a));
    let var_4 = global0.x;
    global0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(10958u, _wgslsmith_sub_u32(~global0.x, global0.x), _wgslsmith_dot_vec3_u32(abs(global0.xzz), vec3<u32>(global0.x, u_input.a.x, global0.x)), min(~global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(30117u, u_input.a.x, u_input.a.x, global0.x), vec4<u32>(17533u, 4294967295u, u_input.a.x, 1u)))), countOneBits(reverseBits(vec4<u32>(37407u, _wgslsmith_div_u32(1u, u_input.a.x), ~global0.x, ~global0.x))), ~(~(~(~vec4<u32>(6204u, 4294967295u, 4294967295u, global0.x)))));
    let var_5 = ~(vec3<i32>(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-66858i, -7533i)), -9780i) | vec3<i32>(1i, 1i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(-var_5.x);
}

