struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool = false;

var<private> global2: array<i32, 31> = array<i32, 31>(-43560i, 0i, 2147483647i, 2147483647i, 33878i, 1i, 2147483647i, 2340i, -1i, i32(-2147483648), -1i, -1i, -22958i, 0i, 0i, 12962i, 0i, i32(-2147483648), 1i, -1i, -1i, 2147483647i, 2147483647i, 1i, -20114i, 1i, -87300i, -16229i, 2147483647i, -27744i, 8916i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_1 {
    global0 = u_input.d.yx;
    var var_0 = _wgslsmith_sub_u32(36909u, 1u);
    let var_1 = -2147483647i;
    return Struct_1(49110u);
}

fn func_1(arg_0: vec2<bool>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 960f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-2117f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1786f) + -1162f))));
    let var_1 = func_2();
    global0 = vec2<i32>(1i, 23591i);
    global0 = vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, u_input.c.x)), ~u_input.b), global2[_wgslsmith_index_u32(var_1.a, 31u)]), -global2[_wgslsmith_index_u32(1726u, 31u)]));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)), _wgslsmith_f_op_f32(var_0.x - var_0.x))) + vec2<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(var_0.x, var_0.x))));
    return u_input.b;
}

fn func_3() -> vec2<f32> {
    global1 = all(vec4<bool>(any(vec2<bool>(true, true)), false, true, true));
    global1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1019f, 111f))) + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1000f * 147f))) > _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-808f, 1826f)), -1000f))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f * _wgslsmith_f_op_f32(f32(-1f) * -642f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(515f, -905f) + -1000f)))) > 668f;
    var var_0 = select(vec3<bool>(true, true, false), !(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true)), select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(0u, 31u)] < global2[_wgslsmith_index_u32(3551u, 31u)]), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true), vec3<bool>(~4294967295u != _wgslsmith_clamp_u32(12042u, 113289u, 4294967295u), -1004f == _wgslsmith_f_op_f32(round(1000f)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), true));
    let var_1 = max(vec4<u32>(26311u, 1u, countOneBits(0u), 1u), abs(~vec4<u32>(1u, 1u, 1u, 1u)));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(649f, 599f))) * vec2<f32>(-702f, -2335f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -reverseBits(func_1(vec2<bool>(true, true)) >> (vec2<u32>(98u, 0u) % vec2<u32>(32u)));
    let var_0 = func_2();
    var var_1 = u_input.e;
    global0 = vec2<i32>(u_input.c.x, abs(-abs(-1i)) | _wgslsmith_mod_i32(~(u_input.d.x ^ u_input.b.x), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(7273i, -2147483647i, global0.x)), u_input.d.zyz)));
    let var_2 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1174f + -520f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(787f, var_2)), -1186f))) - _wgslsmith_f_op_vec2_f32(func_3()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 1959f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -482f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-837f, var_2), vec2<f32>(var_3.x, 347f))), vec2<f32>(481f, _wgslsmith_f_op_f32(ceil(var_3.x))), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)))))), abs(u_input.a.x) << (_wgslsmith_mod_u32(var_0.a, ~abs(1u)) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2671i, -1i, -43513i), u_input.c), select(reverseBits(-6860i), _wgslsmith_mult_i32(-22167i, global0.x), any(vec4<bool>(false, false, true, false))), ~(~(-2147483647i)), u_input.a.x), vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], 26800i, firstTrailingBit(2147483647i), 1i) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(34991u, 11377u, 33500u, 15185u), vec4<u32>(0u, var_0.a, 0u, var_0.a)) ^ firstTrailingBit(vec4<u32>(1u, var_0.a, 0u, 3111u))) % vec4<u32>(32u))), var_3.x);
}

