struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<vec4<i32>, 21>;

var<private> global2: f32 = 566f;

var<private> global3: array<bool, 22> = array<bool, 22>(true, false, true, true, true, false, true, true, true, false, true, true, false, true, true, true, true, false, false, false, true, false);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~arg_0.a, 8u)];
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1914f);
    global1 = array<vec4<i32>, 21>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))) + var_0.b);
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(max(-482f, -274f));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    global2 = 1059f;
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1546f, arg_0.x)))));
    var var_1 = arg_0.x;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0, -752f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(35435u, 8u)], global1[_wgslsmith_index_u32(1u, 21u)])))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-393f, -267f)), _wgslsmith_f_op_f32(1048f - arg_0.x))))) * -454f);
    var var_2 = select(!(!vec3<bool>(all(vec3<bool>(true, global3[_wgslsmith_index_u32(31345u, 22u)], true)), global3[_wgslsmith_index_u32(~1u, 22u)], all(vec4<bool>(false, global3[_wgslsmith_index_u32(17483u, 22u)], false, global3[_wgslsmith_index_u32(0u, 22u)])))), !(!(!select(vec3<bool>(global3[_wgslsmith_index_u32(39930u, 22u)], global3[_wgslsmith_index_u32(21076u, 22u)], true), vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 22u)], global3[_wgslsmith_index_u32(10325u, 22u)]), vec3<bool>(global3[_wgslsmith_index_u32(13198u, 22u)], global3[_wgslsmith_index_u32(42350u, 22u)], true)))), !(!(!select(vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 22u)], true), vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 22u)], global3[_wgslsmith_index_u32(48103u, 22u)]), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(0u, 22u)], false)))));
    return _wgslsmith_add_u32(1u, 0u);
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    var var_0 = ~vec3<u32>(~14247u, _wgslsmith_mult_u32(~34491u, func_2(vec2<f32>(arg_0.x, 1000f)) ^ 5507u), firstLeadingBit(~26876u));
    global3 = array<bool, 22>();
    global1 = array<vec4<i32>, 21>();
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(var_0.x, ~var_0.x), min(var_0.x, var_0.x), abs(var_0.x), _wgslsmith_div_u32(max(var_0.x, abs(~var_0.x)), 14023u));
    var var_2 = u_input.a.x;
    return _wgslsmith_f_op_f32(sign(848f));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)))) + vec3<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + arg_0.b) + _wgslsmith_f_op_f32(select(arg_2, arg_2, true))), arg_2))));
    let var_1 = ~arg_3.yz;
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(ceil(arg_2)) == 1464f, global3[_wgslsmith_index_u32(~(~((arg_0.a << (var_1.x % 32u)) & firstLeadingBit(0u))), 22u)], arg_0.a < ~min(arg_3.x, ~37711u), any(!(!select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(var_1.x, 22u)], global3[_wgslsmith_index_u32(var_1.x, 22u)], global3[_wgslsmith_index_u32(var_1.x, 22u)]), vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(0u, 22u)]), true))));
    let var_3 = vec3<u32>(1u, ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a, arg_3.x, arg_3.x, 0u), ~vec4<u32>(4294967295u, arg_0.a, var_1.x, arg_3.x)) ^ 4294967295u), arg_3.x >> (1u % 32u));
    var var_4 = vec2<bool>(true, any(select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 22u)], var_2.x, var_2.x, var_2.x), !vec4<bool>(var_2.x, var_2.x, false, false), u_input.a.x > u_input.a.x)) | !(_wgslsmith_f_op_f32(func_1(arg_1)) > _wgslsmith_f_op_f32(min(arg_2, arg_0.b))));
    return _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(arg_0.a, arg_3.x), 4294967295u), vec2<u32>(var_3.x, ~_wgslsmith_clamp_u32(41763u, 9749u, 15342u))), vec2<u32>(~(~abs(var_1.x)), ~min(_wgslsmith_clamp_u32(var_3.x, arg_0.a, 0u), ~46457u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 16481i;
    let var_1 = ~global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(_wgslsmith_sub_u32(58327u, 0u), reverseBits(select(1u, 49935u, global3[_wgslsmith_index_u32(4294967295u, 22u)])))), 21u)];
    var var_2 = ~(-var_1.xz | var_1.yy);
    let var_3 = Struct_1(firstLeadingBit(~4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1321f, -213f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1325f + -991f) - 2064f))));
    let var_4 = func_4(Struct_1(var_3.a, _wgslsmith_f_op_f32(func_1(vec3<f32>(460f, _wgslsmith_f_op_f32(abs(625f)), _wgslsmith_f_op_f32(var_3.b - 108f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1609f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1246f + var_3.b) * _wgslsmith_f_op_f32(exp2(var_3.b))), 1000f)), -1537f, min(~(~firstLeadingBit(vec3<u32>(var_3.a, 4294967295u, 0u))), ~max(vec3<u32>(var_3.a, var_3.a, 19163u), vec3<u32>(4594u, 1111u, var_3.a))));
    global2 = 596f;
    var_2 = reverseBits(var_1.wy);
    var var_5 = vec2<i32>(var_1.x, abs(var_1.x) | (13936i ^ _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, var_0, 27205i))));
    var_5 = u_input.a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.b, -1062f, 508f, 1146f), vec4<f32>(var_3.b, var_3.b, var_3.b, var_3.b), vec4<bool>(global3[_wgslsmith_index_u32(var_3.a, 22u)], global3[_wgslsmith_index_u32(57249u, 22u)], false, false))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b - var_3.b)), var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b + -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1163f - var_3.b))))), 16414u, ~var_4.x, 270f);
}

