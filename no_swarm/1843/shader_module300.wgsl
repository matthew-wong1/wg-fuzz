struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-236f, -122f, -213f, 1000f, -271f, -527f, -2059f, 537f, -344f, -175f, 2325f, 260f, 631f, -1000f, -297f, 1289f, 1998f, -121f, -544f, -567f, 397f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<f32, 21>();
    var var_0 = any(vec4<bool>(any(vec4<bool>(any(vec3<bool>(arg_0.a.x, true, arg_0.a.x)), -885f <= global0[_wgslsmith_index_u32(1u, 21u)], false, any(vec4<bool>(arg_0.a.x, arg_0.a.x, true, false)))), arg_0.a.x | arg_0.a.x, true | ((u_input.d <= u_input.a) || arg_0.a.x), !arg_0.a.x & !any(vec2<bool>(arg_0.a.x, false))));
    var var_1 = arg_0;
    let var_2 = Struct_1(select(vec2<bool>(all(select(vec4<bool>(arg_0.a.x, var_1.a.x, var_1.a.x, true), vec4<bool>(arg_0.a.x, true, false, false), vec4<bool>(var_1.a.x, true, false, false))), any(var_1.a)), select(vec2<bool>(true, !arg_0.a.x), select(select(var_1.a, vec2<bool>(arg_0.a.x, var_1.a.x), vec2<bool>(var_1.a.x, arg_0.a.x)), var_1.a, vec2<bool>(arg_0.a.x, var_1.a.x)), select(var_1.a, vec2<bool>(var_1.a.x, true), arg_0.a.x)), var_1.a.x), _wgslsmith_f_op_vec4_f32(min(var_1.b, arg_0.c)), var_1.b, var_1.d);
    var_0 = any(!(!vec4<bool>(false && var_1.a.x, !var_2.a.x, !var_2.a.x, all(vec4<bool>(true, false, false, var_1.a.x)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1156f, _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x))))) + var_1.b.x);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(!vec2<bool>(any(vec4<bool>(true, false, false, false)), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(11165u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], -1907f)), vec4<f32>(653f, global0[_wgslsmith_index_u32(35403u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], 861f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 21u)], 1346f, -646f, global0[_wgslsmith_index_u32(34559u, 21u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1626f, global0[_wgslsmith_index_u32(93053u, 21u)], global0[_wgslsmith_index_u32(21366u, 21u)], global0[_wgslsmith_index_u32(72531u, 21u)])))) - vec4<f32>(-502f, global0[_wgslsmith_index_u32(reverseBits(93208u), 21u)], _wgslsmith_f_op_f32(746f + global0[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(46038u, 21u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 286f, -1014f, global0[_wgslsmith_index_u32(20597u, 21u)])))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(67504u, 0u)), reverseBits(vec2<u32>(36170u, 11567u))) & (~vec2<u32>(25160u, 29332u) << (firstTrailingBit(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))), vec2<u32>(~_wgslsmith_div_u32(1499u, 4294967295u), 1u)), 21u)]);
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(!var_0.a, _wgslsmith_div_vec4_f32(var_0.c, var_0.b), _wgslsmith_f_op_vec4_f32(-var_0.c), global0[_wgslsmith_index_u32(1u, 21u)]))), _wgslsmith_div_f32(581f, -325f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(47720u, 21u)]))), 1159f)), _wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, global0[_wgslsmith_index_u32(0u, 21u)])) * _wgslsmith_f_op_f32(max(var_0.c.x, global0[_wgslsmith_index_u32(121391u, 21u)]))), var_0.a.x && var_0.a.x)))));
    let var_2 = Struct_1(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1320f - _wgslsmith_f_op_f32(-var_0.d)) + 1110f), _wgslsmith_f_op_f32(trunc(var_0.b.x)), var_0.c.x, global0[_wgslsmith_index_u32(min(~abs(13544u), max(_wgslsmith_sub_u32(4294967295u, 3104u), ~1u)), 21u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d), global0[_wgslsmith_index_u32(abs(4294967295u), 21u)], global0[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 21u)])), vec4<f32>(global0[_wgslsmith_index_u32(19686u, 21u)], var_1.x, 1000f, 1213f)) * vec4<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(20234u, 0u)), 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(17247u, 21u)] + 468f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 21u)]))), _wgslsmith_div_f32(1249f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_div_f32(var_1.x, var_0.d))))));
    global0 = array<f32, 21>();
    let var_3 = Struct_1(vec2<bool>(all(!var_2.a), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(4294967295u, 24616u, 0u), vec3<u32>(4294967295u, 13750u, 53800u))) == select(~77620u, 1330u, var_0.a.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_1 + var_1))))))), vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<bool>(true, false), vec4<f32>(-1467f, var_2.c.x, var_1.x, var_0.b.x), _wgslsmith_f_op_vec4_f32(round(var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -671f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - var_1.x)), -1097f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(~4294967295u), 21u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-116f * _wgslsmith_f_op_f32(-var_2.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.c.x)), 1f), var_3.d)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<bool>(var_3.a.x, var_2.a.x), var_2.b, var_0.c, var_2.c.x))))))))));
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    global0 = array<f32, 21>();
    let var_1 = vec4<f32>(-1322f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(abs(0u), 21u)]))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~5997u, 7492u), vec3<u32>(25105u >> (0u % 32u), 1u, ~1u)), 21u)])), global0[_wgslsmith_index_u32(0u, 21u)]);
    var var_2 = Struct_1(!select(!select(vec2<bool>(false, var_0), vec2<bool>(var_0, true), false), vec2<bool>(false, !var_0), !(!vec2<bool>(var_0, var_0))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 21u)] * 1319f), -501f, _wgslsmith_div_f32(1529f, -826f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 21u)], -272f, global0[_wgslsmith_index_u32(1u, 21u)], 593f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(var_1))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], -1762f, var_1.x, var_1.x) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -611f, -823f, var_1.x), var_1, true))))), var_1.x);
    var var_3 = _wgslsmith_div_u32(~(~0u), _wgslsmith_mult_u32(49240u, ~(~_wgslsmith_mult_u32(1u, 1u))));
    return Struct_1(select(vec2<bool>(var_2.a.x, true), !(!select(var_2.a, vec2<bool>(false, true), false)), !vec2<bool>(!var_0, var_0)), var_1, _wgslsmith_div_vec4_f32(var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1 * vec4<f32>(var_1.x, -663f, var_2.c.x, -1272f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, global0[_wgslsmith_index_u32(6817u, 21u)], -231f, global0[_wgslsmith_index_u32(30241u, 21u)])) * vec4<f32>(580f, var_1.x, 1484f, 343f)))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    let var_0 = ~firstTrailingBit(abs(vec3<u32>(min(1u, 64488u), ~0u, _wgslsmith_sub_u32(1u, 0u))));
    let var_1 = func_1();
    let var_2 = vec3<bool>(true, true, _wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.d, u_input.c.x, u_input.a, u_input.c.x)), reverseBits(~vec4<i32>(2147483647i, -3300i, u_input.b, u_input.a))) > 2147483647i);
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-u_input.a), u_input.c, ~(~var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.d)) - _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(reverseBits(var_0.x), 21u)], global0[_wgslsmith_index_u32(~var_0.x, 21u)]))) - -217f), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.d, -1i, 0i)), ~(~(~vec3<i32>(u_input.b, -2147483647i, 2147483647i)))));
}

