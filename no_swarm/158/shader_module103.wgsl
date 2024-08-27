struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 11> = array<i32, 11>(-1i, -1i, 15044i, 2147483647i, -40210i, -42635i, -26515i, 22705i, i32(-2147483648), 2147483647i, 1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-721f, -321f), vec2<f32>(-1427f, 384f), arg_0.x)))))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f))))));
    global0 = true;
    global0 = (!(var_0.x != _wgslsmith_f_op_f32(-var_0.x)) && (2573f <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(851f)))))) != all(select(arg_0, vec2<bool>(false, !arg_0.x), vec2<bool>(arg_0.x, !arg_0.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 681f, var_0.x, -181f))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-182f, var_0.x, var_0.x, var_0.x), vec4<f32>(-1894f, -211f, var_0.x, -466f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(151f, 995f, -208f, 247f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(119f, var_0.x, var_0.x, 1227f) * vec4<f32>(var_0.x, var_0.x, var_0.x, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 583f, -545f, 1343f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, _wgslsmith_f_op_f32(step(var_0.x, 1000f)), _wgslsmith_f_op_f32(726f + -602f), _wgslsmith_f_op_f32(exp2(var_0.x))))));
    var var_2 = arg_0.x;
    return !select(vec4<bool>(true, arg_0.x, select(any(vec4<bool>(arg_0.x, false, arg_0.x, false)), arg_0.x, any(vec4<bool>(arg_0.x, true, true, arg_0.x))), false), !select(select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true), true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), false), abs(16681u) == (select(50435u, u_input.a.x, false) << (1u % 32u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>) -> i32 {
    let var_0 = Struct_1(true);
    global0 = true;
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(u_input.a.x >> (u_input.a.x % 32u), u_input.a.x), 1u, ~_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_add_u32(5986u, 4668u))), 11u)];
    var var_2 = vec4<bool>(false, !var_0.a, !any(!func_3(vec2<bool>(true, true))), select(var_0.a, false, !all(func_3(vec2<bool>(var_0.a, var_0.a)).zw)));
    global1 = array<i32, 11>();
    return ~reverseBits(1i << (1u % 32u));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 1i), vec2<i32>(global1[_wgslsmith_index_u32(50949u, 11u)], global1[_wgslsmith_index_u32(30130u, 11u)]) | vec2<i32>(global1[_wgslsmith_index_u32(1u, 11u)], -2147483647i)), ~(-global1[_wgslsmith_index_u32(11818u, 11u)])), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(738f, -2226f, 772f, 569f)), firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(18905u, 11u)], -2147483647i, global1[_wgslsmith_index_u32(1u, 11u)]))) | max(-global1[_wgslsmith_index_u32(91959u, 11u)], firstTrailingBit(global1[_wgslsmith_index_u32(1u, 11u)]))), -(~25680i ^ _wgslsmith_div_i32(max(1i, 0i), func_2(vec4<f32>(-1000f, 1397f, -683f, 1086f), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 27445i, 10039i)))));
    let var_1 = countOneBits(u_input.a.x) != 66948u;
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), reverseBits(u_input.a.xww))), _wgslsmith_dot_vec3_u32(u_input.a.xwz, vec3<u32>(firstLeadingBit(u_input.a.x), 1u << (u_input.a.x % 32u), ~1u))), 11u)] >> ((_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x) | 1u) & select(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), 1u), true)) % 32u);
    let var_2 = 36429u;
    let var_3 = vec4<i32>(~_wgslsmith_sub_i32(~global1[_wgslsmith_index_u32(var_2, 11u)] << ((var_2 >> (var_2 % 32u)) % 32u), ~2147483647i), max(select(15450i, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], true), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-6540i, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(var_2, 11u)]), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 14762i, -8872i)), ~vec3<i32>(global1[_wgslsmith_index_u32(22380u, 11u)], global1[_wgslsmith_index_u32(var_2, 11u)], global1[_wgslsmith_index_u32(var_2, 11u)])), _wgslsmith_add_i32(~1i, firstTrailingBit(-61128i)))), max(-32209i, _wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(1u, 11u)] | ~2067i, 9057i)), 24709i);
    return _wgslsmith_mod_i32(var_3.x, i32(-1i) * -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_clamp_i32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x), 11u)], _wgslsmith_sub_i32(~func_1(), func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-709f, 387f, -2650f, -958f))), vec3<i32>(37624i, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(u_input.a.x, 11u)]))), abs(min(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(1u, 11u)])) ^ global1[_wgslsmith_index_u32(reverseBits(~1u), 11u)]));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(591f)) - _wgslsmith_f_op_f32(864f - 176f))), -165f, -203f), vec3<f32>(580f, -559f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -445f)))), !select(false, true, true) && false));
    let var_2 = select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, all(vec4<bool>(true, true, false, true)), true)), select(true, false && any(vec2<bool>(true, true)), false), any(vec2<bool>(any(vec4<bool>(true, false, false, false)), func_3(vec2<bool>(false, false)).x))), false);
    var var_3 = Struct_2(-_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 49283i), vec2<i32>(global1[_wgslsmith_index_u32(20242u, 11u)], 2147483647i)), -vec2<i32>(-2147483647i, 13442i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_1.x, -1702f, _wgslsmith_f_op_f32(var_1.x - 946f))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1105f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.x)))))));
    var var_5 = 1u;
    var var_6 = global1[_wgslsmith_index_u32(u_input.a.x, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(max(countOneBits(36720u), ~u_input.a.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, 17608u, 13556u, 4294967295u)), firstLeadingBit(31608u))), ~(~1u ^ u_input.a.x)));
}

