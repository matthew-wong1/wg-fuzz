struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: Struct_1 = Struct_1(418f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global1.a + global1.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * var_0.a), _wgslsmith_f_op_f32(global1.a + var_0.a)) * var_0.a)));
    let var_2 = Struct_1(1442f);
    let var_3 = -_wgslsmith_div_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 2584i, 9044i, global0[_wgslsmith_index_u32(0u, 5u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], 2147483647i, -9544i)) & -1i, select(1i, -1i, true)), -1i);
    return -639f;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    var var_0 = any(select(select(select(!vec4<bool>(arg_0, arg_0, arg_0, true), !vec4<bool>(false, arg_0, true, false), !vec4<bool>(arg_0, true, arg_0, false)), !(!vec4<bool>(true, true, arg_0, arg_0)), !arg_0 || (false || arg_0)), select(select(vec4<bool>(false, arg_0, false, arg_0), !vec4<bool>(true, arg_0, arg_0, true), arg_0), select(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, true, false, true), vec4<bool>(false, arg_0, false, arg_0)), select(vec4<bool>(arg_0, false, true, true), vec4<bool>(false, arg_0, arg_0, arg_0), false), false || arg_0), arg_0), arg_0));
    global1 = Struct_1(_wgslsmith_div_f32(439f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1018f)))));
    global1 = Struct_1(global1.a);
    var var_1 = select(!(!(!vec4<bool>(false, false, arg_0, false))), vec4<bool>(false, any(select(!vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0))), true, true), all(vec3<bool>(arg_0, all(vec4<bool>(false, true, arg_0, false)), !(true | arg_0))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(global1.a)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + global1.a)) + 1000f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a * 629f)))), global1.a, arg_0));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(max(2295f, -694f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))))));
    var var_1 = ~abs(4294967295u);
    let var_2 = _wgslsmith_clamp_vec3_u32(u_input.a.zyx, ~select(vec3<u32>(~arg_1.x, _wgslsmith_add_u32(arg_0, 17406u), abs(arg_1.x)), vec3<u32>(4294967295u, ~0u, arg_1.x), !(arg_2.a != 553f)), u_input.a.xwx);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(max(-1560f, var_0.a)));
    global0 = array<i32, 5>();
    return vec4<f32>(_wgslsmith_f_op_f32(func_3(!(!arg_3.x), _wgslsmith_mult_i32(select(i32(-1i) * -1i, -18542i, arg_3.x), firstLeadingBit(global0[_wgslsmith_index_u32(1u, 5u)])), select(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global0[_wgslsmith_index_u32(arg_0, 5u)]), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(26149u, 5u)])), vec2<i32>(global0[_wgslsmith_index_u32(74823u, 5u)], -2147483647i) ^ vec2<i32>(global0[_wgslsmith_index_u32(arg_0, 5u)], -4782i)), reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, global0[_wgslsmith_index_u32(54982u, 5u)]), vec2<i32>(global0[_wgslsmith_index_u32(21535u, 5u)], global0[_wgslsmith_index_u32(53157u, 5u)]))), arg_3.x))), _wgslsmith_f_op_f32(1270f + arg_2.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -525f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1904f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.a, var_3.a))) - -138f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + arg_2.a)) - _wgslsmith_f_op_f32(-arg_2.a))));
}

fn func_1() -> StorageBuffer {
    global1 = Struct_1(108f);
    global0 = array<i32, 5>();
    let var_0 = -abs(vec3<i32>(-(~global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), -min(2084i, 22911i), global0[_wgslsmith_index_u32(1u, 5u)]));
    var var_1 = ~_wgslsmith_div_vec3_i32(var_0, vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -2147483647i, -9118i));
    var var_2 = true;
    return StorageBuffer(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1164f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(4294967295u))), global1.a, _wgslsmith_div_f32(-1000f, -665f), _wgslsmith_div_f32(-249f, _wgslsmith_f_op_f32(-global1.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, _wgslsmith_f_op_f32(global1.a * 1000f), _wgslsmith_f_op_f32(abs(-1509f))))), _wgslsmith_f_op_vec4_f32(func_4(~((u_input.a.x & u_input.a.x) & u_input.a.x), min(_wgslsmith_mod_vec4_u32(u_input.a ^ vec4<u32>(u_input.a.x, 33664u, u_input.a.x, 66591u), u_input.a), ~(~vec4<u32>(77279u, u_input.a.x, u_input.a.x, 30128u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, 17574i, vec2<i32>(-17426i, var_1.x))) - -1273f)), select(vec4<bool>(false, true, false, false), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))), true))), abs(abs(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.wzw, u_input.a.zwx), ~u_input.a.wzy))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global1.a);
    global0 = array<i32, 5>();
    let var_1 = ~(~_wgslsmith_mod_vec3_u32(u_input.a.zxy, ~(~vec3<u32>(u_input.a.x, 1u, 4294967295u))));
    var var_2 = var_1.x;
    let var_3 = firstLeadingBit(var_1);
    global0 = array<i32, 5>();
    global1 = Struct_1(var_0);
    let var_4 = 1i;
    var var_5 = _wgslsmith_clamp_u32(abs(152193u), var_3.x >> (u_input.a.x % 32u), ~u_input.a.x);
    let x = u_input.a;
    s_output = func_1();
}

