struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(1u, 0u, 0u, 72209u, 1u, 4294967295u, 47485u);

var<private> global1: array<bool, 16>;

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(1i);

var<private> global4: Struct_1 = Struct_1(-59909i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    global2 = ~(~_wgslsmith_add_i32(global3.a, firstLeadingBit(-13754i)));
    var var_0 = global3.a ^ u_input.a;
    global0 = array<u32, 7>();
    global3 = Struct_1(2147483647i);
    let var_1 = Struct_1(min(abs(countOneBits(-2147483647i)), countOneBits(global3.a)));
    return -2147483647i;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>) -> Struct_1 {
    global4 = Struct_1(u_input.a);
    global3 = Struct_1(func_3());
    global4 = Struct_1(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(-2147483647i, 26955i), ~1i) & max(0i, abs(max(global4.a, u_input.a))));
    global0 = array<u32, 7>();
    global2 = reverseBits(global3.a);
    return Struct_1(-_wgslsmith_sub_i32(i32(-1i) * -1i, max(global3.a, _wgslsmith_clamp_i32(0i, global4.a, global4.a))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec2<f32> {
    global2 = 6860i;
    var var_0 = arg_1;
    let var_1 = vec4<bool>((-47069i == (global4.a ^ 35875i)) & all(select(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 16u)], global1[_wgslsmith_index_u32(33611u, 16u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(5041u, 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 16u)], false, global1[_wgslsmith_index_u32(4294967295u, 16u)]), global1[_wgslsmith_index_u32(arg_2 ^ 34605u, 16u)])), global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 1u, 32999u, arg_2)), max(vec4<u32>(arg_2, global0[_wgslsmith_index_u32(43452u, 7u)], arg_2, arg_2), vec4<u32>(arg_2, 13288u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 7u)], arg_2)) | ~vec4<u32>(4294967295u, arg_2, arg_0.x, global0[_wgslsmith_index_u32(21054u, 7u)])), 16u)], all(vec2<bool>(all(vec4<bool>(false, global1[_wgslsmith_index_u32(96811u, 16u)], global1[_wgslsmith_index_u32(35002u, 16u)], global1[_wgslsmith_index_u32(arg_2, 16u)])), true)) || all(select(vec2<bool>(true, true), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 7u)], 16u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 7u)], 16u)], false), vec2<bool>(true, false), false))));
    var var_2 = true;
    global3 = func_2(vec4<f32>(_wgslsmith_f_op_f32(step(476f, -241f)), -1143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -348f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-243f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + -2327f))))), vec3<bool>(true, !all(vec3<bool>(var_1.x, true, var_1.x)) || false, global1[_wgslsmith_index_u32(abs(abs(30849u)), 16u)]));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-381f, 1909f)), _wgslsmith_f_op_f32(f32(-1f) * -250f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(822f, 480f))))))));
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(max(abs(min(vec3<u32>(global0[_wgslsmith_index_u32(32902u, 7u)], global0[_wgslsmith_index_u32(68650u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(93724u, 7u)], 7u)]), vec3<u32>(global0[_wgslsmith_index_u32(1u, 7u)], 1u, global0[_wgslsmith_index_u32(1u, 7u)]))), min(~vec3<u32>(global0[_wgslsmith_index_u32(0u, 7u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 7u)]), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4764u, 7u)], 7u)], 1u))), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1252f, 1203f, 269f, -828f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-119f, 1780f, -359f, -1557f) - vec4<f32>(606f, 1878f, -980f, -580f))), select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 16u)], global1[_wgslsmith_index_u32(42325u, 16u)], true), select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(63261u, 16u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72852u, 7u)], 16u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)], 16u)]), -1i >= u_input.a)), 41296u, Struct_1(global3.a))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-161f, -394f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(274f, 315f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1298f, -146f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-611f, 424f) - vec2<f32>(1064f, -304f))))));
    var var_1 = any(select(select(vec3<bool>(select(global1[_wgslsmith_index_u32(0u, 16u)], true, true), true, !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 16u)]), !(!vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48912u, 7u)], 16u)], false, false)), !vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1835u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 16u)], true)), select(vec3<bool>(all(vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34376u, 7u)], 7u)], 7u)], 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 7u)], 7u)], 16u)])), !global1[_wgslsmith_index_u32(1u, 16u)], !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 16u)]), !select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 16u)], false, false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18739u, 7u)], 16u)]), false), !(!vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(84569u, 7u)], 7u)], 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29172u, 7u)], 16u)]))), global1[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)] & ~95271u), 16u)]));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * var_0.x), var_0.x), select(!any(vec2<bool>(false, false)), global1[_wgslsmith_index_u32(~(17295u | global0[_wgslsmith_index_u32(0u, 7u)]), 16u)], true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(183f * _wgslsmith_f_op_f32(-var_0.x)) - -212f))));
    var var_3 = !vec2<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(23454u, 1u), 7u)], 7u)], 7u)], 16u)]);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(600f)));
    return min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-40995i, ~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.a, -1i, global3.a, u_input.a), reverseBits(vec4<i32>(1i, u_input.a, global3.a, global4.a)))), vec3<i32>(-1i) * -(vec3<i32>(global4.a, 1i, global3.a) << (vec3<u32>(global0[_wgslsmith_index_u32(9737u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(4140u, 7u)]) % vec3<u32>(32u))), abs(vec3<i32>(min(global4.a, 0i), global4.a, ~1i))), max(-(~(~vec3<i32>(u_input.a, u_input.a, 1i))), -max(vec3<i32>(1i, 2147483647i, 32486i), vec3<i32>(-8835i, global4.a, -21174i)) << (vec3<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), 1u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 16>();
    global2 = ~(-global4.a);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1764f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-288f, 1361f)))) - _wgslsmith_f_op_f32(select(-666f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-196f)))), !any(vec3<bool>(true, global1[_wgslsmith_index_u32(14968u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -681f)))));
    var var_1 = !(!select(!select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(65103u, 16u)], false), true), !select(vec2<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 16u)]), vec2<bool>(false, false), vec2<bool>(false, global1[_wgslsmith_index_u32(21312u, 16u)])), vec2<bool>(true, true)));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(~func_1(), vec3<i32>(min(~(-2147483647i), -global3.a), -11512i ^ global4.a, -global4.a)), -(u_input.a ^ (~(-34265i) | _wgslsmith_dot_vec3_i32(vec3<i32>(global3.a, global3.a, u_input.a), vec3<i32>(30176i, -1i, global3.a)))), _wgslsmith_mult_i32(u_input.a, ~(~0i << (global0[_wgslsmith_index_u32(5569u, 7u)] % 32u))));
    var var_3 = min(vec4<u32>(~(~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 47922u), 7u)]), 86056u, ~(~firstTrailingBit(35949u)), global0[_wgslsmith_index_u32(~2424u, 7u)] & countOneBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15293u, 7u)], 7u)])), vec4<u32>(_wgslsmith_clamp_u32(0u, ~31660u & _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44782u, 7u)], 7u)], 81480u), ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11136u, 7u)], 7u)], 4294967295u)), ~38547u, _wgslsmith_dot_vec3_u32(select(select(vec3<u32>(global0[_wgslsmith_index_u32(63091u, 7u)], global0[_wgslsmith_index_u32(45921u, 7u)], 5900u), vec3<u32>(1u, 80143u, 0u), vec3<bool>(var_1.x, false, false)), ~vec3<u32>(44795u, 59020u, 1u), select(vec3<bool>(var_1.x, false, true), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(185u, 7u)], 7u)], 7u)], 16u)], var_1.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5519u, 7u)], 16u)]), true)), vec3<u32>(global0[_wgslsmith_index_u32(1u, 7u)], ~global0[_wgslsmith_index_u32(16282u, 7u)], 4294967295u)), 4294967295u));
    let var_4 = firstLeadingBit(25575u) & reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.x, 7u)], 7u)], 40117u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.x, 7u)], 7u)]), vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], 0u)), global0[_wgslsmith_index_u32(1u, 7u)]) >> (var_3.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32((130400u | _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26410u, 7u)], 7u)]), ~43370u)) | countOneBits(4294967295u), 7u)], vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1804f))), -1403f), vec2<i32>(_wgslsmith_mod_i32(global4.a, -(~(-1i))), _wgslsmith_add_i32(-34985i, reverseBits(firstLeadingBit(global4.a)))), var_3.x, -((min(vec3<i32>(global3.a, global3.a, -4309i), vec3<i32>(-2147483647i, 1i, 20156i)) | vec3<i32>(40453i, u_input.a, var_2.x)) | _wgslsmith_mod_vec3_i32(~vec3<i32>(global3.a, 0i, var_2.x), -vec3<i32>(8015i, 2147483647i, -25374i))));
}

