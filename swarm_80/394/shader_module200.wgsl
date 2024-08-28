struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global1: array<u32, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    global1 = array<u32, 26>();
    let var_0 = firstTrailingBit(select(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 49974i, -34835i) ^ (vec4<i32>(u_input.a, 11061i, -2147483647i, u_input.a) >> (vec4<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)]) % vec4<u32>(32u)))), vec4<i32>(~countOneBits(-2147483647i), -5911i, 0i << (1u % 32u), 8521i), !select(vec4<bool>(true, global0.b.x, global0.a.x, true), vec4<bool>(true, true, global0.a.x, false), all(vec2<bool>(global0.a.x, true)))));
    let var_1 = Struct_2(select(global0.a, select(vec3<bool>(true, global0.b.x, false), vec3<bool>(false, !global0.b.x, global0.b.x), global0.a), select(vec3<bool>(global0.b.x, true, any(vec3<bool>(global0.b.x, false, true))), vec3<bool>(false, true, global0.b.x), true)), select(vec3<bool>(true, false, 4294967295u > global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 27805u), 26u)]), select(global0.b, !(!global0.a), _wgslsmith_mod_u32(14834u, global1[_wgslsmith_index_u32(37666u, 26u)]) != firstLeadingBit(4294967295u)), global0.a));
    global0 = Struct_2(!(!vec3<bool>(var_1.b.x && var_1.b.x, true, global0.b.x & false)), vec3<bool>(any(vec4<bool>(true, any(vec3<bool>(false, true, false)), global0.a.x, true)), var_1.b.x & !(global0.b.x != false), global0.b.x));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -384f))))));
    return global0.a;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    global0 = Struct_2(select(select(func_3(), global0.a, vec3<bool>(false, func_3().x, 953u >= global1[_wgslsmith_index_u32(0u, 26u)])), global0.a, false), global0.a);
    global0 = Struct_2(vec3<bool>(global0.a.x, true, global0.b.x), global0.a);
    var var_0 = all(!global0.b);
    var var_1 = -1452f;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-arg_0.x));
    return _wgslsmith_div_f32(var_2.a, -575f);
}

fn func_4(arg_0: vec2<f32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(2186f, arg_0.x, arg_0.x, arg_0.x) + vec4<f32>(-241f, arg_0.x, 1026f, 399f))))))));
    var var_1 = global0.a.xy;
    var var_2 = abs(65315u);
    let var_3 = var_0.x;
    global1 = array<u32, 26>();
    return vec4<f32>(803f, _wgslsmith_f_op_f32(select(-1322f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -912f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 1000f));
}

fn func_1(arg_0: Struct_3) -> u32 {
    global1 = array<u32, 26>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(615f, -1379f, 665f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(465f + arg_0.a), 985f, global1[_wgslsmith_index_u32(12833u, 26u)] >= 1619u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -1029f, 464f, arg_0.a))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1820f, 741f, 2361f, -261f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -1000f, 1473f, arg_0.a) - vec4<f32>(-521f, -272f, arg_0.a, arg_0.a)))), !(!(!vec4<bool>(global0.b.x, true, true, true))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(-561f * -460f), _wgslsmith_f_op_f32(func_2(vec3<f32>(arg_0.a, arg_0.a, -463f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1774f, arg_0.a, arg_0.a, 1000f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a, arg_0.a, -211f, -659f)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_f32(abs(arg_0.a))) * _wgslsmith_f_op_f32(-var_0.x)))) * _wgslsmith_f_op_f32(-221f * 688f));
    var var_2 = countOneBits(~(~vec3<u32>(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)]) << (vec3<u32>(_wgslsmith_clamp_u32(9554u, 39753u, global1[_wgslsmith_index_u32(12170u, 26u)]), max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13096u, 26u)], 26u)], 4294967295u), select(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], global0.a.x)) % vec3<u32>(32u))));
    var var_3 = Struct_2(global0.a, global0.b);
    return ~(~abs(abs(4294967295u))) >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.x, 26u)], 26u)] % 32u);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: f32, arg_3: u32) -> Struct_2 {
    let var_0 = global0.a;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_2, -469f)), -1000f));
    let var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-890f, 1045f, var_1) + vec3<f32>(var_1, arg_2, arg_2)))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(var_1, 1685f), _wgslsmith_f_op_f32(f32(-1f) * -1477f), _wgslsmith_f_op_f32(max(1020f, arg_2))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1047f, arg_2, 459f), vec3<f32>(var_1, -454f, -675f))))), !select(vec3<bool>(true, true, global0.b.x), vec3<bool>(var_0.x, false, true), vec3<bool>(true, false, false))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-445f - 760f), _wgslsmith_f_op_f32(func_2(vec3<f32>(arg_2, var_1, arg_2))), 161f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(677f, arg_2, -450f))))))));
    let var_4 = u_input.a;
    return Struct_2(select(func_3(), vec3<bool>(any(!vec4<bool>(false, var_0.x, true, arg_1.x)), _wgslsmith_div_f32(var_3.x, -1585f) < 342f, global0.b.x), vec3<bool>(!global0.b.x, true, !(!global0.b.x))), vec3<bool>(true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(27507u, 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)], 25925u))) | _wgslsmith_add_u32(global1[_wgslsmith_index_u32(88538u, 26u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)]), func_1(Struct_3(-472f))), vec3<bool>(global0.a.x, global0.a.x, any(select(global0.b.yz, vec2<bool>(global0.b.x, global0.a.x), global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1102f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(1193f, 118f))).x - 431f))), ~(~_wgslsmith_clamp_u32(40953u, abs(0u), 4294967295u)));
    global0 = Struct_2(func_3(), vec3<bool>(!all(func_5(vec2<u32>(3933u, 34090u), global0.a, 1000f, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21629u, 26u)], 26u)], 26u)], 26u)]).a), true, _wgslsmith_div_i32(u_input.a, u_input.a) > _wgslsmith_sub_i32(-32869i, -u_input.a)));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1896f, 103f, 1069f, -651f)))) * vec4<f32>(-447f, -193f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1670f + -966f), _wgslsmith_f_op_f32(max(-1410f, 993f)), global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(269f, 462f))).x))));
    var var_1 = Struct_3(_wgslsmith_div_f32(-321f, _wgslsmith_f_op_f32(f32(-1f) * -689f)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f)));
    global1 = array<u32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(Struct_3(var_0.x)), vec2<u32>(_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(0u, 26u)], ~14504u), reverseBits(~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * -1115f))), ~firstTrailingBit(~12494u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2020f, 127f) * _wgslsmith_f_op_f32(-var_2)), var_0.x)));
}

