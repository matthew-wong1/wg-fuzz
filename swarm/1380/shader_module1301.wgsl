struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 26>;

var<private> global2: u32;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    global2 = 5195u;
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(~(~(~0u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(firstLeadingBit(98256u), 4294967295u), min(~vec2<u32>(27103u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)]), _wgslsmith_div_vec2_u32(vec2<u32>(36120u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25206u, 26u)], 26u)], 26u)], 26u)], 26u)], 26u)]) ^ vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46583u, 26u)], 26u)], 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)]), ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], 26u)]))))), 26u)];
    let var_1 = 53876u;
    var_0 = ~_wgslsmith_clamp_u32(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(67505u, 26u)] | 52512u, 4294967295u), 0u, ~(~35573u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(404f)))), global3.b);
    return var_2.b;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global2 = 1u;
    let var_0 = select(!(!vec4<bool>(true, true, global0.b, true)), !vec4<bool>(true | global0.b, select(arg_0.b, arg_0.a < -287f, true), select(true, false, true) == func_3(), true), !select(vec4<bool>(false, !arg_0.b, any(vec2<bool>(arg_0.b, true)), select(global3.b, true, true)), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)] < 7985u, all(vec3<bool>(true, false, false)), true, any(vec4<bool>(false, false, global0.b, true))), global3.b));
    global2 = firstTrailingBit(6277u);
    global2 = 22985u;
    let var_1 = ~vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(15216u, 26u)], global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52122u, 26u)], 26u)]), 26u)]), 26u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 26u)] << (55009u % 32u), ~11689u), 26u)] | 4294967295u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(81688u, global1[_wgslsmith_index_u32(47939u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(111133u, 26u)], 26u)], global1[_wgslsmith_index_u32(0u, 26u)], 1u))) & ~1u);
    return _wgslsmith_sub_u32(1u, 0u << (0u % 32u));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = vec4<i32>(-u_input.a, i32(-1i) * -5527i, abs(~firstLeadingBit(-61479i)), firstLeadingBit(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-6716i, arg_3, u_input.a), vec3<i32>(u_input.a, 63585i, arg_3), global0.b) | countOneBits(vec3<i32>(arg_3, 1i, u_input.a)), vec3<i32>(u_input.a, u_input.a, arg_3) << (vec3<u32>(arg_1, 49913u, 17079u) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_2.a, 1164f), _wgslsmith_f_op_f32(1434f + 1000f), _wgslsmith_f_op_f32(124f * 460f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1134f, 326f, 1521f))))))));
    var var_2 = ~(~(~countOneBits(global1[_wgslsmith_index_u32(1u, 26u)])));
    var var_3 = vec3<bool>(arg_2.b, global0.b || !(!arg_2.b), global3.b);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(767f, -719f), arg_2.a)))), -1000f);
    return Struct_1(_wgslsmith_f_op_f32(937f * -279f), true);
}

fn func_1() -> vec2<u32> {
    global0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(276f, _wgslsmith_f_op_f32(-675f * _wgslsmith_f_op_f32(global3.a + global0.a)))), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~41892u, 26u)], _wgslsmith_div_u32(firstLeadingBit(60643u) << (global1[_wgslsmith_index_u32(func_2(Struct_1(-132f, global0.b)), 26u)] % 32u), reverseBits(~27749u))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a * -1592f) + _wgslsmith_f_op_f32(1000f - -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1113f)), -557f))), _wgslsmith_f_op_f32(round(global0.a)) <= _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(select(-921f, 1064f, global0.b)))), u_input.a);
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a, global0.a), vec2<f32>(-1000f, global0.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.a, global0.a))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-820f, 969f)))))), global1[_wgslsmith_index_u32(20679u | select(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~33119u, 26u)], _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(1u, 26u)], 77310u), vec3<u32>(global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(60853u, 26u)], global1[_wgslsmith_index_u32(85703u, 26u)]))), 9484u, true), 26u)], func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1038f, _wgslsmith_f_op_f32(global0.a - global0.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.a, global0.a))))), global1[_wgslsmith_index_u32(4294967295u | ~(~global1[_wgslsmith_index_u32(0u, 26u)]), 26u)], func_4(_wgslsmith_div_vec2_f32(vec2<f32>(-852f, 282f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1159f), vec2<f32>(896f, global0.a), vec2<bool>(true, global3.b)))), ~(~23988u), Struct_1(_wgslsmith_f_op_f32(-1154f * global0.a), global3.b), u_input.a), u_input.a), reverseBits(min(1900i, ~(~u_input.a))));
    let var_1 = vec2<u32>(global1[_wgslsmith_index_u32(~reverseBits(max(global1[_wgslsmith_index_u32(64770u, 26u)] >> (3016u % 32u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2535u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8200u, 26u)], 26u)], 26u)], 26u)], 51179u, 40219u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29457u, 26u)], 26u)], global1[_wgslsmith_index_u32(0u, 26u)], 99939u, 19174u)), 26u)])), 26u)], _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(countOneBits(60644u), 26u)], ~global1[_wgslsmith_index_u32(32507u, 26u)], var_0.b), 26u)], _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(0u, 26u)]), min(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<u32>(global1[_wgslsmith_index_u32(29343u, 26u)], 33995u))) | global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)], 26u)]), 26u)]));
    global0 = var_0;
    let var_2 = vec2<i32>(-1i) * -select(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 0i), vec2<bool>(false, false)) << (max(var_1, var_1) % vec2<u32>(32u)), ~vec2<i32>(-55889i, 22057i), global3.b | true);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, any(vec2<bool>(true, any(vec2<bool>(true, true)))));
    var var_1 = vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(22419u, global1[_wgslsmith_index_u32(6938u, 26u)], 1u, 41522u)), max(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 0u, 44858u, global1[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<u32>(32442u, 14325u, 1u, 0u)) ^ reverseBits(vec4<u32>(0u, 47714u, 4294967295u, global1[_wgslsmith_index_u32(9521u, 26u)])))) & max(vec2<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(54247u, 26u)], global1[_wgslsmith_index_u32(5961u, 26u)]) << ((1u >> (global1[_wgslsmith_index_u32(56061u, 26u)] % 32u)) % 32u), abs(1u)), func_1() >> (_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(27817u, 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11411u, 26u)], 26u)], 26u)], 26u)], 26u)]), ~vec2<u32>(global1[_wgslsmith_index_u32(1u, 26u)], 0u)) % vec2<u32>(32u)));
    let var_2 = ~(~(~reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 26u)], 26u)], 0u, global1[_wgslsmith_index_u32(1u, 26u)]))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(888f, -1029f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1279f)) - _wgslsmith_f_op_f32(exp2(global3.a)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-164f, 723f, 711f, 956f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1377f, 2176f, -1000f, var_0.a) * vec4<f32>(-1769f, -1185f, 1823f, global0.a))) - vec4<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -2275f), var_0.a, -1026f))));
    var var_4 = vec3<i32>(max(64654i, select(u_input.a, _wgslsmith_sub_i32(abs(u_input.a), i32(-1i) * -9565i), func_4(vec2<f32>(global3.a, global3.a), ~1u, Struct_1(186f, false), firstTrailingBit(u_input.a)).b)), -firstTrailingBit(max(u_input.a, 57048i) | u_input.a), u_input.a);
    var var_5 = _wgslsmith_sub_u32(~func_1().x, ~global1[_wgslsmith_index_u32(var_2.x, 26u)]);
    global2 = 0u;
    var var_6 = ~_wgslsmith_add_vec4_i32(-(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, var_4.x, var_4.x), vec4<i32>(68989i, -15861i, -8513i, u_input.a)) >> (vec4<u32>(1u, 1u, var_1.x, var_1.x) % vec4<u32>(32u))), vec4<i32>(firstTrailingBit(_wgslsmith_clamp_i32(-903i, 1i, u_input.a)), max(i32(-1i) * -26599i, ~var_4.x), -2147483647i, select(u_input.a, var_4.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), -785f))))), var_2.xz);
}

