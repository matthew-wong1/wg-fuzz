struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, false, false, true, false, true, true, true);

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(160f, -2949f), vec2<f32>(-739f, 505f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2109f, -839f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(567f, -927f))))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(852f, -119f) - 259f), -1430f), _wgslsmith_f_op_f32(-1421f - 331f)));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1274f))))));
    let var_1 = -max(-_wgslsmith_clamp_i32(-u_input.a.x, -15131i, -1i), min(u_input.a.x, -13974i));
    global1 = arg_0;
    var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-489f, _wgslsmith_f_op_f32(-var_0.x))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
}

fn func_2() -> bool {
    global1 = Struct_1(countOneBits(global1.d), _wgslsmith_f_op_f32(func_3(Struct_1(global1.d, global1.c, !global1.c, global1.a), Struct_1(_wgslsmith_mod_u32(global1.d, global1.d), !global0[_wgslsmith_index_u32(4294967295u, 8u)], !global0[_wgslsmith_index_u32(6505u, 8u)], min(4294967295u, global1.d)), select(u_input.a.x != u_input.a.x, true, !global0[_wgslsmith_index_u32(78194u, 8u)]), Struct_1(_wgslsmith_mod_u32(10954u, global1.d), any(vec2<bool>(global1.b, global0[_wgslsmith_index_u32(global1.a, 8u)])), true, ~global1.d))) <= 1f, false, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d, 1u) | vec2<u32>(28545u, global1.a), vec2<u32>(1u, 1u)), ~global1.a));
    var var_0 = Struct_1(~4294967295u, true, true, _wgslsmith_clamp_u32(~1u, abs(~global1.d) & ~0u, _wgslsmith_mod_u32(firstTrailingBit(0u), countOneBits(global1.d))));
    let var_1 = Struct_1(_wgslsmith_sub_u32(~(~23414u) ^ ~global1.a, 46595u), _wgslsmith_f_op_f32(sign(1062f)) <= 1892f, !global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~global1.a, var_0.d, select(var_0.a, 71016u, global1.b)), 8u)], 4294967295u);
    global1 = var_1;
    var var_2 = firstLeadingBit(vec3<u32>(9992u, var_0.a, reverseBits(42049u)));
    return true;
}

fn func_1() -> StorageBuffer {
    global1 = Struct_1(1u, func_2(), false, _wgslsmith_sub_u32(~(~1u), global1.a));
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(max(~global1.a, global1.a & 0u), ~0u, ~global1.a & 0u) ^ _wgslsmith_div_vec3_u32(abs(vec3<u32>(global1.d, 4294967295u, 1u)), abs(countOneBits(vec3<u32>(global1.a, 172u, global1.a)))), abs(select(select(~vec3<u32>(global1.d, 1u, 44286u), _wgslsmith_div_vec3_u32(vec3<u32>(global1.a, global1.a, 6912u), vec3<u32>(0u, 4294967295u, global1.d)), global1.a < global1.d), vec3<u32>(0u, ~17109u, ~0u), !func_2())));
    global0 = array<bool, 8>();
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(u_input.a, ~u_input.a), u_input.a.x << (var_0.x % 32u), i32(-1i) * -_wgslsmith_div_i32(1130i, abs(u_input.a.x)));
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(13073u, firstLeadingBit(countOneBits(global1.d)), ~countOneBits(0u)) & ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(47796u, 14326u, global1.a), vec3<u32>(global1.d, var_0.x, 8479u))), vec3<u32>(4294967295u, var_0.x, 0u));
    return StorageBuffer(vec2<u32>(firstTrailingBit(11814u), global1.d), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(232f, 2045f, -547f, -914f)))))))), _wgslsmith_div_i32(var_1, var_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(297f - -1734f), _wgslsmith_f_op_f32(f32(-1f) * -810f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1283f - 2468f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 8>();
    let x = u_input.a;
    s_output = func_1();
}

