struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(205f);

var<private> global2: array<i32, 5> = array<i32, 5>(64815i, 2147483647i, -1i, 0i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -850f)))));
    global2 = array<i32, 5>();
    return global0.a;
}

fn func_3() -> u32 {
    global0 = Struct_1(global0.a);
    global2 = array<i32, 5>();
    return u_input.a.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<bool>, arg_3: bool) -> vec4<i32> {
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(845f + global1.a)))), _wgslsmith_f_op_f32(-global1.a)));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -878f) * _wgslsmith_f_op_f32(ceil(-918f))))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_sub_vec2_u32(~(~u_input.a.zx << ((arg_0 << (firstLeadingBit(vec2<u32>(u_input.a.x, arg_0.x)) % vec2<u32>(32u))) % vec2<u32>(32u))), ~u_input.a.zy);
    var_2 = ~(select(arg_0, arg_0, vec2<bool>(false, any(vec4<bool>(arg_3, arg_2.x, true, arg_3)))) << (~max(arg_0, ~vec2<u32>(arg_0.x, u_input.a.x)) % vec2<u32>(32u)));
    return abs(abs(vec4<i32>(~_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(0u, 5u)], 38114i, global2[_wgslsmith_index_u32(var_2.x, 5u)]), _wgslsmith_div_i32(select(-2147483647i, global2[_wgslsmith_index_u32(1u, 5u)], arg_3), ~62545i), ~global2[_wgslsmith_index_u32(arg_0.x, 5u)], ~global2[_wgslsmith_index_u32(0u, 5u)])));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = func_4(u_input.a.zy, (global2[_wgslsmith_index_u32(select(abs(1u), u_input.a.x, true), 5u)] >> (~func_3() % 32u)) == min(global2[_wgslsmith_index_u32(arg_0.x, 5u)], firstLeadingBit(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(0u, 5u)]))), vec2<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))) | true, any(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), false))), false);
    var var_1 = vec3<u32>(_wgslsmith_add_u32(func_3(), 29244u) & ~firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), func_3(), ~arg_0.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_1(-1796f), vec4<bool>(true, false, false, false), vec3<u32>(0u, arg_0.x, 0u))))) * _wgslsmith_f_op_f32(func_1(Struct_1(761f), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec3<u32>(76130u, 20848u, 56689u))))));
    let var_2 = 31268u;
    return Struct_1(2342f);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = select(~global2[_wgslsmith_index_u32(~1u, 5u)], -2147483647i, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)))) | _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(~4294967295u, 5u)], _wgslsmith_sub_i32(~global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 1i));
    global0 = func_2(u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -2183f, arg_1.a))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1104f, arg_1.a, -834f), vec3<f32>(arg_0, 412f, arg_0), true))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, -1153f, 777f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, arg_1.a)))));
    var var_1 = arg_1;
    let var_2 = false;
    var_0 = -74660i;
    return vec4<bool>(true, var_2, all(select(vec4<bool>(true, true, true, var_2), select(!vec4<bool>(false, false, var_2, true), !vec4<bool>(true, var_2, var_2, var_2), false), var_2)), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -332f, global0.a), vec3<f32>(1687f, 1435f, global1.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, 1644f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a, global0.a, global0.a)))))));
    let var_1 = func_5(_wgslsmith_f_op_f32(-var_0.x), func_2(max(reverseBits(u_input.a), u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, _wgslsmith_f_op_f32(func_1(Struct_1(-1843f), vec4<bool>(false, false, false, false), u_input.a)), _wgslsmith_f_op_f32(-global1.a)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global0.a, 236f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.x, var_0.x))))));
    var var_2 = ~(u_input.a.x << (u_input.a.x % 32u));
    var_0 = vec3<f32>(434f, 381f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2133f, _wgslsmith_f_op_f32(min(-1419f, 1111f))), _wgslsmith_div_f32(global0.a, var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(209f * _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-global0.a), 1609f) + vec3<f32>(1747f, var_0.x, -1000f)));
}

