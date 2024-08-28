struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_3, 8>;

var<private> global1: array<i32, 2>;

var<private> global2: vec2<i32> = vec2<i32>(19719i, 1819i);

var<private> global3: array<Struct_1, 27>;

var<private> global4: array<bool, 12>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> i32 {
    return global1[_wgslsmith_index_u32(u_input.a, 2u)];
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_2(vec3<bool>(!global4[_wgslsmith_index_u32(4294967295u, 12u)] | all(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 12u)], global4[_wgslsmith_index_u32(u_input.a, 12u)], false)), !(9190u < u_input.a), global4[_wgslsmith_index_u32(u_input.a, 12u)]), true, !select(select(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 12u)], false, true), vec3<bool>(false, true, false), vec3<bool>(true, global4[_wgslsmith_index_u32(16649u, 12u)], false)), select(vec3<bool>(false, false, true), vec3<bool>(global4[_wgslsmith_index_u32(23151u, 12u)], global4[_wgslsmith_index_u32(1u, 12u)], false), global4[_wgslsmith_index_u32(countOneBits(27996u), 12u)]), true), ~global1[_wgslsmith_index_u32(16904u, 2u)]);
    global2 = ~max(min(~(vec2<i32>(global2.x, var_0.d) & vec2<i32>(0i, global1[_wgslsmith_index_u32(u_input.a, 2u)])), -(~vec2<i32>(-1i, 25332i))), vec2<i32>(~(-1i), func_1(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), true)));
    global3 = array<Struct_1, 27>();
    var var_1 = any(vec4<bool>(var_0.b, true, false, true));
    global1 = array<i32, 2>();
    return 0i;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(~arg_0.zz, vec2<u32>(~arg_0.x, 1u)), 0u);
    let var_1 = firstLeadingBit(11740i);
    var var_2 = Struct_3(Struct_2(arg_1, false, select(!select(arg_1, arg_1, arg_1), arg_1, !select(arg_1, arg_1, vec3<bool>(true, global4[_wgslsmith_index_u32(0u, 12u)], global4[_wgslsmith_index_u32(35179u, 12u)]))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-193f, -1741f), vec2<f32>(-343f, -253f)))))));
    global1 = array<i32, 2>();
    var var_3 = vec3<i32>(var_2.a.d, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, var_1), vec2<i32>(0i, global2.x) >> (abs(vec2<u32>(0u, 32165u)) % vec2<u32>(32u))), ~firstLeadingBit(_wgslsmith_sub_i32(1i, -2782i)), global2.x), firstLeadingBit(firstTrailingBit(~2147483647i)));
    return vec4<bool>((true && arg_1.x) || (any(vec2<bool>(true, true)) && false), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-979f * -1014f)) < _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(625f, -1026f)))), arg_1.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 8>();
    global1 = array<i32, 2>();
    global4 = array<bool, 12>();
    global2 = vec2<i32>(_wgslsmith_div_i32(countOneBits(global2.x), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, ~1u | (u_input.a ^ u_input.a)), 2u)]), countOneBits(func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(890f, -1000f, 346f) + vec3<f32>(-337f, -1000f, 584f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1996f, -575f, 794f), vec3<f32>(-359f, -751f, 418f), vec3<bool>(true, true, true))), global4[_wgslsmith_index_u32(u_input.a << (1u % 32u), 12u)])), (false | global4[_wgslsmith_index_u32(2466u, 12u)]) | all(vec3<bool>(global4[_wgslsmith_index_u32(17934u, 12u)], false, global4[_wgslsmith_index_u32(u_input.a, 12u)])))));
    let var_0 = 12492i;
    var var_1 = select(vec4<bool>(select(true, !(1u > u_input.a), true), global4[_wgslsmith_index_u32(0u, 12u)], true, false), vec4<bool>(select(global4[_wgslsmith_index_u32(u_input.a, 12u)] | true, global4[_wgslsmith_index_u32(~31760u, 12u)], true) && (all(vec2<bool>(false, true)) & false), global4[_wgslsmith_index_u32(~u_input.a, 12u)], false, any(!(!vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 12u)], false)))), all(select(!vec4<bool>(global4[_wgslsmith_index_u32(0u, 12u)], true, global4[_wgslsmith_index_u32(u_input.a, 12u)], global4[_wgslsmith_index_u32(u_input.a, 12u)]), !vec4<bool>(true, true, global4[_wgslsmith_index_u32(u_input.a, 12u)], global4[_wgslsmith_index_u32(23755u, 12u)]), func_2(reverseBits(vec3<u32>(0u, 36617u, u_input.a)), !vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 12u)], global4[_wgslsmith_index_u32(0u, 12u)])))));
    let var_2 = vec2<bool>(global4[_wgslsmith_index_u32(1u, 12u)], true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -561f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1012f)));
}

