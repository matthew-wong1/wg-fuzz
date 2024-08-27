struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 23>;

var<private> global2: f32;

var<private> global3: u32 = 4294967295u;

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = -1000f;
    let var_1 = arg_1;
    global2 = -898f;
    let var_2 = true;
    global3 = ~firstLeadingBit(firstTrailingBit(_wgslsmith_sub_u32(global4.a.x, 35418u)) >> (~arg_2.a.x % 32u));
    return 1i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> bool {
    let var_0 = reverseBits(abs(select(vec4<i32>(i32(-1i) * -2147483647i, func_3(arg_3, true, arg_1, Struct_1(arg_1.a)), ~0i, max(34043i, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(-29276i, -25296i, -1i, 1362i), vec4<i32>(12617i, -2012i, 16950i, -2147483647i)) << (firstTrailingBit(arg_0.a) % vec4<u32>(32u)), vec4<bool>(false, false, true, true))));
    let var_1 = arg_1;
    var var_2 = select(!select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), true), vec4<bool>(true, true, true, true), vec4<bool>(select(false, false, false), arg_1.a.x == var_1.a.x, false, true)), vec4<bool>(true & any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), any(vec3<bool>(true, true, true)), !(!any(global1[_wgslsmith_index_u32(global0.a.x, 23u)])), true), vec4<bool>(any(vec3<bool>(true, true, true)), false, any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), true));
    let var_3 = vec2<bool>(false, var_2.x);
    var var_4 = arg_0;
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<u32>, arg_3: vec4<bool>) -> u32 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(-1251f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-455f)) - _wgslsmith_f_op_f32(abs(-794f))))))));
    let var_2 = ~vec2<u32>(~min(global4.a.x, global4.a.x), 0u);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - _wgslsmith_f_op_f32(-1707f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -972f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(abs(127f)), true)))));
    var var_3 = ~(vec3<u32>(26489u << (1u % 32u), min(abs(68790u), ~global0.a.x), global0.a.x) & ~vec3<u32>(arg_2.x, 20013u, countOneBits(arg_2.x)));
    return var_3.x;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: u32) -> Struct_1 {
    global1 = array<vec2<bool>, 23>();
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_div_u32((arg_3 >> (arg_2 % 32u)) & ~0u, func_4(global1[_wgslsmith_index_u32(1u, 23u)], all(vec2<bool>(true, true)), min(global4.a, ~global4.a), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), func_2(arg_0, arg_0, 38100u, -1069f)))), _wgslsmith_mod_u32(~30524u, 1u ^ func_4(select(global1[_wgslsmith_index_u32(arg_2, 23u)], global1[_wgslsmith_index_u32(13745u, 23u)], vec2<bool>(true, true)), true, global4.a, select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true))), func_4(select(vec2<bool>(true, true), select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0.a, global4.a), 23u)], vec2<bool>(false, true), true), vec2<bool>(true, true)), -firstTrailingBit(arg_1) < -19125i, arg_0.a, select(vec4<bool>(true, true, any(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))), true)));
    let var_1 = -1398f;
    global4 = arg_0;
    global4 = Struct_1(firstTrailingBit(vec4<u32>(arg_3, 145u, ~25577u, 1u)));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = false == (_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1250f, 392f, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-644f, 309f)), _wgslsmith_f_op_f32(f32(-1f) * -755f)))) > -559f);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(815f, -504f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(843f, _wgslsmith_f_op_f32(floor(-114f)))) - _wgslsmith_f_op_f32(f32(-1f) * -773f)), -1000f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-290f, 1090f, 1855f), vec3<f32>(-1000f, -1672f, -245f), false)), vec3<f32>(-184f, -537f, 443f))), vec3<f32>(_wgslsmith_f_op_f32(-412f + 610f), _wgslsmith_f_op_f32(f32(-1f) * -256f), 367f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(228f)), _wgslsmith_f_op_f32(f32(-1f) * -184f), 1f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1674f, -1177f, 1005f) + vec3<f32>(-557f, -109f, -2391f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(115f, -1000f, 419f) + vec3<f32>(172f, 650f, -589f)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)))))), true));
    let var_2 = -_wgslsmith_add_i32(~34902i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -4415i) << (~global0.a.yz % vec2<u32>(32u)), (vec2<i32>(-2147483647i, 2147483647i) >> (vec2<u32>(u_input.a, arg_2) % vec2<u32>(32u))) | vec2<i32>(-3160i, 2147483647i)));
    var var_3 = (vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_2, 1i), var_2), 62971i) & _wgslsmith_clamp_vec2_i32(~firstLeadingBit(vec2<i32>(-2147483647i, var_2)), _wgslsmith_mod_vec2_i32(select(vec2<i32>(-38443i, -21436i), vec2<i32>(56535i, var_2), vec2<bool>(false, false)), vec2<i32>(28836i, -7670i)), _wgslsmith_add_vec2_i32(vec2<i32>(var_2, var_2), -vec2<i32>(2147483647i, 2147483647i)))) | ~min(reverseBits(abs(vec2<i32>(var_2, var_2))), ~(~vec2<i32>(2147483647i, var_2)));
    var_0 = ((~arg_0.a.x << (firstLeadingBit(arg_0.a.x) % 32u)) << (firstTrailingBit(~arg_0.a.x) % 32u)) == max(~(global0.a.x << (_wgslsmith_sub_u32(arg_1.a.x, 13485u) % 32u)), arg_0.a.x);
    return Struct_1((global0.a | ~vec4<u32>(9970u, 17322u, 4294967295u, 1u)) >> (arg_0.a % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(global4.a);
    var var_0 = 4497u;
    let var_1 = any(!vec3<bool>(true, all(global1[_wgslsmith_index_u32(15792u, 23u)]), true | all(vec2<bool>(true, true))));
    let var_2 = -67699i >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global4.a ^ global4.a, global4.a), global4.a.x) % 32u);
    global4 = func_5(func_1(Struct_1(global0.a), 5322i, 4294967295u, ~83773u), Struct_1(~global0.a), 4294967295u);
    let var_3 = _wgslsmith_f_op_f32(select(309f, 763f, false));
    var var_4 = -364f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3, var_3, 818f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2319f, -310f, 214f)))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1239f, -1537f, var_3)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-363f, var_3, 975f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, -354f, 603f)) - vec3<f32>(var_3, 148f, var_3))), select(!select(vec3<bool>(var_1, var_1, false), vec3<bool>(true, var_1, var_1), var_1), select(!vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_1, var_1), any(vec4<bool>(true, false, var_1, var_1))), !(!vec3<bool>(var_1, var_1, var_1))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1566f, 974f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3, var_3), vec2<f32>(var_3, var_3), global1[_wgslsmith_index_u32(u_input.a, 23u)])), vec2<f32>(-457f, var_3))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_3, -144f), _wgslsmith_div_vec2_f32(vec2<f32>(var_3, 1000f), vec2<f32>(348f, -432f)))))), _wgslsmith_f_op_f32(-431f * -889f), -countOneBits(min(vec2<i32>(-12594i, var_2) | vec2<i32>(-2147483647i, -9146i), vec2<i32>(var_2, var_2))));
}

