struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(18220i, 35502i, 1i, 1i), vec4<i32>(2147483647i, -31664i, 2147483647i, 25159i), vec4<i32>(33443i, i32(-2147483648), 0i, 1i), vec4<i32>(i32(-2147483648), -30423i, 1i, 1i), vec4<i32>(3546i, -39128i, 1i, -22737i), vec4<i32>(27154i, 2147483647i, i32(-2147483648), 16792i), vec4<i32>(i32(-2147483648), -19056i, 1i, -28537i), vec4<i32>(-1i, 0i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 69062i, i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, -19142i, 0i), vec4<i32>(34760i, -1i, -1i, 2147483647i), vec4<i32>(1i, 45117i, 2147483647i, 564i));

var<private> global1: array<bool, 12>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> u32 {
    global0 = array<vec4<i32>, 12>();
    var var_0 = 75473u;
    let var_1 = 2727u;
    let var_2 = -firstLeadingBit(46400i);
    var_0 = select(u_input.b, 0u, false);
    return var_1;
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: u32, arg_3: vec4<i32>) -> vec2<bool> {
    global0 = array<vec4<i32>, 12>();
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-arg_3.x, arg_1, 2869i), arg_3.xzw), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-arg_0, arg_0), ~(vec3<i32>(2147483647i, arg_1, 0i) >> (u_input.d % vec3<u32>(32u))))), reverseBits(vec3<i32>(_wgslsmith_sub_i32(u_input.e, arg_1), _wgslsmith_add_i32(countOneBits(arg_0.x), _wgslsmith_add_i32(20922i, 10595i)), _wgslsmith_mod_i32(arg_3.x, min(-14474i, arg_3.x)))));
    var var_1 = arg_3.x;
    let var_2 = ~global0[_wgslsmith_index_u32(abs(1u), 12u)];
    var var_3 = arg_2;
    return select(!select(vec2<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(52353u, 12u)], false, global1[_wgslsmith_index_u32(35830u, 12u)], true)), global1[_wgslsmith_index_u32(firstLeadingBit(0u), 12u)]), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 12u)])), vec2<bool>(any(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(u_input.d.x, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], true, global1[_wgslsmith_index_u32(53779u, 12u)]), vec3<bool>(true, false, true))), global1[_wgslsmith_index_u32(max(~select(8752u, u_input.c.x, global1[_wgslsmith_index_u32(17495u, 12u)]), 1u), 12u)]), !any(select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_2, 12u)], true), global1[_wgslsmith_index_u32(1u, 12u)]), vec2<bool>(true, false), !vec2<bool>(false, global1[_wgslsmith_index_u32(arg_2, 12u)]))));
}

fn func_1(arg_0: f32) -> vec3<u32> {
    let var_0 = u_input.c;
    var var_1 = firstLeadingBit(_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, firstTrailingBit(15765i), ~54374i), _wgslsmith_sub_vec3_i32(min(vec3<i32>(64767i, -10375i, 1i) & vec3<i32>(-1559i, u_input.e, -18374i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, -43790i, u_input.e), vec3<i32>(u_input.e, u_input.a.x, 1i))), ~(-vec3<i32>(1i, 2147483647i, 0i)))));
    global0 = array<vec4<i32>, 12>();
    let var_2 = select(func_3(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, 1i, u_input.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, u_input.e, u_input.a.x), vec3<i32>(u_input.a.x, var_1.x, var_1.x)))), 0i, 4294967295u, global0[_wgslsmith_index_u32(func_2() ^ 0u, 12u)] << (select(~vec4<u32>(u_input.b, var_0.x, 4294967295u, var_0.x), vec4<u32>(u_input.d.x, 1u, 33219u, 58937u), true) % vec4<u32>(32u))), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]), true);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(537f, arg_0, arg_0, 1634f) + vec4<f32>(-732f, arg_0, 621f, arg_0)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, -152f, arg_0, arg_0))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, -1236f, arg_0), vec4<f32>(arg_0, arg_0, -892f, 1000f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-913f, arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 284f, 269f) + vec4<f32>(1401f, arg_0, -730f, 422f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 185f) * vec4<f32>(1196f, arg_0, arg_0, arg_0))))));
    return _wgslsmith_clamp_vec3_u32(u_input.d, u_input.d, vec3<u32>(109393u, u_input.d.x, countOneBits(firstTrailingBit(_wgslsmith_clamp_u32(20298u, 0u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = u_input.d.x;
    global1 = array<bool, 12>();
    var var_2 = _wgslsmith_mod_vec3_u32(func_1(-183f), min(_wgslsmith_sub_vec3_u32(~abs(u_input.d), func_1(_wgslsmith_f_op_f32(1741f - -1198f))), countOneBits(~func_1(588f))));
    var var_3 = ~firstLeadingBit(vec4<u32>(firstLeadingBit(var_2.x), 31811u, ~u_input.c.x, ~0u)) >> (vec4<u32>(_wgslsmith_mod_u32(reverseBits(u_input.b), 4294967295u) & (1u << (~u_input.d.x % 32u)), u_input.b, (~15821u & var_2.x) ^ _wgslsmith_mult_u32(~u_input.b, var_2.x & var_2.x), ~27052u) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1233f, -354f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(516f, -1537f) * vec2<f32>(-423f, 1199f)), vec2<bool>(true, true))), vec2<f32>(1f, 1f)))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e & 17959i, u_input.e ^ 42978i), _wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.e, u_input.a.x, u_input.e), vec3<i32>(u_input.a.x, u_input.e, 23719i), vec3<bool>(false, true, false)), -vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i))), 1i), _wgslsmith_add_i32(u_input.e, u_input.e), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1614f, -345f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-783f, 1012f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) + vec2<f32>(-412f, 978f)) * vec2<f32>(-487f, -102f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(937f, -265f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1188f, -421f), vec2<f32>(1000f, -796f))))), _wgslsmith_div_f32(1230f, _wgslsmith_f_op_f32(497f + -155f)) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(157f)))))));
}

