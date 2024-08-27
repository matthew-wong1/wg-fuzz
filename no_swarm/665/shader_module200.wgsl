struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1064f;

var<private> global1: vec2<i32>;

var<private> global2: array<bool, 32> = array<bool, 32>(true, false, true, true, true, true, true, true, true, true, true, false, false, false, false, true, true, true, false, true, true, false, false, true, false, true, false, false, true, true, true, true);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = vec3<u32>(firstTrailingBit(1u), ~(~(~0u)) << (0u % 32u), min(62605u, 1u));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 1007f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(668f, -1080f))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(234f, 706f), vec2<f32>(-661f, -1193f)) * vec2<f32>(309f, -238f))))));
    return 1275f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1745f), -1567f, _wgslsmith_f_op_f32(117f - 442f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(min(881f, -2314f)), -1312f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-868f, 481f, 889f) - vec3<f32>(1244f, -1253f, 1780f)), vec3<f32>(-681f, 1400f, 1460f), vec3<bool>(false, true, global2[_wgslsmith_index_u32(65282u, 32u)]))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-447f, 504f, 1000f) - vec3<f32>(-183f, 1013f, 568f)), vec3<f32>(1000f, -1292f, -721f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1456f, -208f, -1000f) * vec3<f32>(1243f, 154f, -913f))) - vec3<f32>(_wgslsmith_f_op_f32(min(1086f, -244f)), _wgslsmith_f_op_f32(round(473f)), _wgslsmith_f_op_f32(func_3())))));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_sub_u32(~countOneBits(~3232u), 1u), _wgslsmith_mod_u32(11525u, 1u | _wgslsmith_dot_vec3_u32(vec3<u32>(41192u, 1u, 1u), reverseBits(vec3<u32>(28620u, 34664u, 92432u)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 179f, -438f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-482f, 105f, -273f))))));
    let var_2 = Struct_1(!(1u < _wgslsmith_mult_u32(0u, ~var_1)));
    var var_3 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_sub_u32(var_1, ~0u), ~(abs(0u) << (abs(var_1) % 32u))), 32u)]);
    return Struct_1(any(vec2<bool>(false || var_3.a, false)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(825f + 1217f))))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-970f, 1f)));
    return 21407i;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = 2147483647i;
    global2 = array<bool, 32>();
    let var_1 = -1i >> (1u % 32u);
    global1 = abs(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(max(global1.x, global1.x), -80598i), func_4(vec2<u32>(1u, 1u), func_2())), -(~(vec2<i32>(38129i, u_input.a) ^ vec2<i32>(var_1, -14078i)))));
    var var_2 = vec2<bool>(true, true);
    return _wgslsmith_f_op_f32(675f - -1356f);
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> vec4<u32> {
    let var_0 = Struct_1(!global2[_wgslsmith_index_u32(~(~16739u), 32u)]);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-311f * -1054f) + 301f)));
    let var_2 = _wgslsmith_div_i32(firstTrailingBit(-_wgslsmith_add_i32(arg_2.x, -82266i)), -17797i);
    let var_3 = var_0;
    global2 = array<bool, 32>();
    return select(vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(52057u, 1u, 21215u, 4294967295u), vec4<u32>(72546u, 1u, 0u, 1u)), 23303u), ~(~(~18750u)), abs(24414u), ~max(42784u, 4294967295u)), ~(~select(countOneBits(vec4<u32>(0u, 2140u, 48440u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 77115u, 0u), vec4<u32>(0u, 20400u, 71208u, 0u)), 1878i != arg_2.x)), !vec4<bool>(var_3.a, arg_0.x, var_0.a | (var_1 > 446f), any(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(countOneBits(92u), 32u)];
    let var_1 = func_5(!select(vec2<bool>(u_input.a > 26382i, true), !select(vec2<bool>(global2[_wgslsmith_index_u32(26490u, 32u)], true), vec2<bool>(global2[_wgslsmith_index_u32(1u, 32u)], true), false), select(vec2<bool>(global2[_wgslsmith_index_u32(41477u, 32u)], true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, global2[_wgslsmith_index_u32(57482u, 32u)])), !vec2<bool>(global2[_wgslsmith_index_u32(0u, 32u)], true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(true, global2[_wgslsmith_index_u32(17782u, 32u)], global2[_wgslsmith_index_u32(46809u, 32u)]))))), vec3<i32>(-_wgslsmith_mod_i32(global1.x | global1.x, 0i), 34260i, countOneBits(_wgslsmith_mult_i32(global1.x, 11715i))), _wgslsmith_clamp_i32(~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(-2147483647i, 50469i))), select(global1.x, u_input.a >> (_wgslsmith_div_u32(92327u, 12771u) % 32u), false), func_4(~(~vec2<u32>(44048u, 1u)), Struct_1(select(global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(28882u, 32u)])))));
    let var_2 = true;
    let var_3 = var_1;
    var_0 = true;
    var_0 = any(vec4<bool>(any(vec3<bool>(false, var_2, true)) & true, var_2, any(vec3<bool>(!global2[_wgslsmith_index_u32(var_3.x, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)] & false, global2[_wgslsmith_index_u32(var_3.x, 32u)] && global2[_wgslsmith_index_u32(var_3.x, 32u)])), global2[_wgslsmith_index_u32(0u, 32u)]));
    let var_4 = any(select(vec3<bool>(!(global1.x < u_input.a), var_2, any(!vec3<bool>(false, var_2, global2[_wgslsmith_index_u32(var_3.x, 32u)]))), !select(select(vec3<bool>(global2[_wgslsmith_index_u32(var_3.x, 32u)], var_2, false), vec3<bool>(true, false, true), vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 32u)], var_2, var_2)), vec3<bool>(false, var_2, global2[_wgslsmith_index_u32(var_1.x, 32u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 32u)], var_2, false)), select(!select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, true, false), global2[_wgslsmith_index_u32(44453u, 32u)]), !vec3<bool>(true, global2[_wgslsmith_index_u32(var_3.x, 32u)], var_2), ~var_1.x != max(1u, 48294u))));
    let x = u_input.a;
    s_output = StorageBuffer(-select(global1.x, abs(u_input.a), true) | select(u_input.a, 2147483647i, firstLeadingBit(global1.x) >= 1i), -208f, -_wgslsmith_div_i32(_wgslsmith_add_i32(11674i, _wgslsmith_mod_i32(u_input.a, u_input.a)), u_input.a));
}

