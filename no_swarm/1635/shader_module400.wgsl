struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(525f, 527f, 141f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1738f, -1000f, 1000f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-141f, 330f, -1210f) - vec3<f32>(943f, 1000f, -325f))), vec3<f32>(_wgslsmith_f_op_f32(474f * 1151f), -1344f, _wgslsmith_f_op_f32(-172f - 1000f)), !select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(9212u, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(46094u, 25u)], global0[_wgslsmith_index_u32(95247u, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(53526u, 25u)], global0[_wgslsmith_index_u32(10960u, 25u)]))))) - vec3<f32>(_wgslsmith_f_op_f32(floor(-821f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(102f)) * _wgslsmith_f_op_f32(f32(-1f) * -1654f)))), -1532f));
    let var_1 = !(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 23885u), 25u)], true)));
    return reverseBits(_wgslsmith_div_u32(~(434u >> (1u % 32u)), 8566u));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_0 = Struct_1(1074f);
    let var_1 = abs(~(~(~func_3(u_input.a))));
    let var_2 = firstLeadingBit(select(abs(-vec3<i32>(u_input.a.x, 6948i, u_input.a.x)) & countOneBits(min(vec3<i32>(u_input.a.x, -12882i, 1i), vec3<i32>(u_input.a.x, -45657i, -10391i))), max(vec3<i32>(1i, -2692i, u_input.a.x), ~vec3<i32>(1i, 56597i, 0i)), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(56886u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]))));
    return Struct_1(1996f);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -165f;
    return func_2(1u, ~abs(countOneBits(~14985u)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -firstLeadingBit(-u_input.a.x);
    var var_1 = ~reverseBits(0i);
    var_1 = var_0;
    let var_2 = Struct_1(944f);
    let var_3 = !(!select(select(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 25u)]), !vec2<bool>(global0[_wgslsmith_index_u32(7341u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), false), select(vec2<bool>(false, false), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 25u)])), all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(19070u, 25u)], global0[_wgslsmith_index_u32(6067u, 25u)]))), any(vec2<bool>(true, true))));
    return func_2(~(~1u), _wgslsmith_add_u32(reverseBits(0u), 1u));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1700f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) * _wgslsmith_f_op_f32(abs(arg_0.x)))))));
    var_0 = func_5(func_4(countOneBits(-_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), func_2(_wgslsmith_div_u32(~47438u, countOneBits(1u)), 24996u), select(!vec2<bool>(false, arg_1.x), arg_1.ww, !arg_1.xx), func_2(abs(4294967295u), 1u)));
    global0 = array<bool, 25>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1101f)), var_0.a, arg_0.x, -1110f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-169f, arg_0.x, -995f, 1455f) - vec4<f32>(arg_0.x, var_0.a, -1824f, -356f))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -554f), _wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(440f - var_0.a)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 1277f), var_0.a, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_0.a, var_0.a, var_0.a))))));
    global0 = array<bool, 25>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_4(u_input.a.x, Struct_1(var_1.x), arg_1.ww, Struct_1(1843f)).a)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(var_1.x, arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2036f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(150f)), 1f, global0[_wgslsmith_index_u32(48251u, 25u)])), -125f, _wgslsmith_div_f32(-107f, _wgslsmith_f_op_f32(max(427f, -2695f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2135f, 1000f, 835f, 1267f), vec4<f32>(2002f, -1000f, -1617f, 1183f), vec4<bool>(global0[_wgslsmith_index_u32(1561u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], false, false)))) * vec4<f32>(_wgslsmith_f_op_f32(-787f - 1348f), _wgslsmith_f_op_f32(min(-279f, 300f)), _wgslsmith_f_op_f32(func_1(vec3<f32>(420f, -106f, 705f), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(56400u, 25u)]))), 1854f))));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1342f, var_0.x, -1233f, var_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(691f, -322f, 1022f, var_0.x) - vec4<f32>(331f, 614f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_0.x, -1195f, var_0.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(-1148f, 1217f, 993f, var_0.x), vec4<bool>(true, false, false, true))))), vec4<bool>(global0[_wgslsmith_index_u32(countOneBits(73120u), 25u)], true, !global0[_wgslsmith_index_u32(1u, 25u)], any(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(94680u, 25u)], false))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(step(var_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2 + vec4<f32>(-355f, var_0.x, var_2.x, var_0.x)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 946f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-103f * var_2.x)), var_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-972f, var_2.x, -568f, var_0.x), vec4<f32>(var_0.x, var_2.x, var_0.x, var_0.x)))))))));
    let var_4 = 1u;
    var var_5 = vec3<bool>(!(var_4 >= 57288u), false, global0[_wgslsmith_index_u32(13917u, 25u)]);
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(var_2.x * -1000f)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(func_1(vec3<f32>(var_3.x, -1000f, var_0.x), vec4<bool>(var_5.x, var_5.x, var_5.x, false)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 674f, -375f)), vec4<bool>(true, false, var_5.x, var_5.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -671f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_2))), select(vec4<bool>(global0[_wgslsmith_index_u32(var_4, 25u)], true, all(vec4<bool>(var_5.x, false, true, var_5.x)), true), select(!vec4<bool>(true, var_5.x, var_5.x, false), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4294967295u, 25u)]), global0[_wgslsmith_index_u32(4294967295u, 25u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(46959u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], false, var_5.x), vec4<bool>(true, var_5.x, false, false), vec4<bool>(var_5.x, false, var_5.x, var_5.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(5740u, ~(~vec2<u32>(_wgslsmith_mod_u32(4294967295u, 36782u), var_4 >> (var_4 % 32u))), var_4, _wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.a.x, -1i), _wgslsmith_sub_vec3_i32(max(firstTrailingBit(vec3<i32>(-13152i, var_1, 675i)), vec3<i32>(2147483647i, u_input.a.x, var_1)), vec3<i32>(11054i, _wgslsmith_dot_vec4_i32(vec4<i32>(-31824i, 0i, u_input.a.x, 23627i), vec4<i32>(var_1, u_input.a.x, u_input.a.x, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(22097i, var_1), vec2<i32>(2147483647i, 1i))))), ~var_1);
}

