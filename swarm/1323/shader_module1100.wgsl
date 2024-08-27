struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-2290i, 0i, -43784i, 0i, -16024i, i32(-2147483648), 2147483647i, -18101i, 4497i, i32(-2147483648), 1i, 1i, 12699i, 16500i, -1i, 1i, 0i, 1248i);

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, 9817i);

var<private> global2: array<Struct_2, 13>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = all(select(!vec3<bool>(false, arg_1.a > 1465f, true), vec3<bool>(true, true, false), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))));
    let var_1 = arg_1;
    global0 = array<i32, 18>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - -367f) - -383f))), var_1.a)));
    let var_3 = 564f;
    return -u_input.b.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(abs(_wgslsmith_sub_vec2_u32(~(vec2<u32>(arg_0.x, arg_0.x) & vec2<u32>(arg_0.x, 1u)), ~(~vec2<u32>(26533u, arg_0.x)))), arg_0);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-470f + 998f))) * _wgslsmith_f_op_f32(select(-1167f, _wgslsmith_f_op_f32(f32(-1f) * -480f), true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(213f)) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f)))));
    global1 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(0i, _wgslsmith_mult_i32(arg_1.x, arg_1.x)), -18132i), _wgslsmith_mod_i32(func_3(Struct_1(var_1.a), Struct_1(806f), Struct_1(2043f)), abs(12244i)) >> (~4294967295u % 32u)), -global1.x << (arg_0.x % 32u));
    let var_2 = vec4<f32>(-1855f, -237f, -1602f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-207f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f))))));
    var var_3 = Struct_2(func_3(Struct_1(var_1.a), Struct_1(var_2.x), Struct_1(var_1.a)));
    return Struct_1(_wgslsmith_f_op_f32(abs(-1305f)));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    var var_0 = func_2(min(reverseBits(vec2<u32>(firstLeadingBit(1u), 1u)), vec2<u32>(~1u, ~abs(44762u))), -vec4<i32>(-1i, -82i, i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 0i, global1.x), ~vec3<i32>(0i, 3656i, 8386i))));
    let var_1 = (_wgslsmith_f_op_f32(f32(-1f) * -1822f) < _wgslsmith_f_op_f32(-var_0.a)) | arg_0.x;
    var var_2 = Struct_2(_wgslsmith_sub_i32(1i, -1i));
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    return -1164f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a.wy;
    var var_0 = u_input.b.yx;
    global2 = array<Struct_2, 13>();
    let var_1 = Struct_2(36272i);
    var var_2 = vec3<u32>(4294967295u, min(0u << (firstLeadingBit(~0u) % 32u), ~(~(~14418u))), ~firstLeadingBit(~(~4294967295u)));
    var_0 = -vec2<i32>(-_wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, global0[_wgslsmith_index_u32(var_2.x, 18u)]), var_0.x), ~(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(8394u, 18u)], _wgslsmith_div_f32(-360f, _wgslsmith_f_op_f32(max(922f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(vec3<bool>(false, true, false)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1401f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -127f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2594f * -111f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -802f) - -957f))), -263f);
}

