struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2117f;

var<private> global1: array<i32, 10>;

var<private> global2: array<vec2<f32>, 8>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = firstTrailingBit(arg_1.a.xy);
    var var_1 = ~vec2<u32>(arg_1.a.x, 6167u);
    global2 = array<vec2<f32>, 8>();
    let var_2 = Struct_1(vec3<u32>(~arg_1.a.x, _wgslsmith_add_u32(firstTrailingBit(0u) ^ arg_1.a.x, ~abs(53699u)), var_0.x), -109f);
    var var_3 = Struct_2(vec4<u32>(var_2.a.x | firstLeadingBit(var_0.x), ~countOneBits(countOneBits(var_0.x)), ~arg_1.a.x, abs(~(~4294967295u))));
    return ~u_input.a.x;
}

fn func_2(arg_0: i32) -> vec4<u32> {
    let var_0 = ~vec2<i32>(func_3(select(vec2<bool>(true, true), vec2<bool>(true, false), true), Struct_1(vec3<u32>(121635u, 1260u, 1u), 1674f)) ^ ~_wgslsmith_mod_i32(54038i, -2147483647i), -64287i);
    let var_1 = _wgslsmith_f_op_f32(1563f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(792f + _wgslsmith_f_op_f32(f32(-1f) * -2156f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1038f + 804f), _wgslsmith_f_op_f32(f32(-1f) * -273f)))) - 749f));
    global0 = -549f;
    let var_2 = abs(~abs(~select(vec2<u32>(80518u, 1u), vec2<u32>(1u, 4294967295u), vec2<bool>(true, true))));
    global2 = array<vec2<f32>, 8>();
    return firstTrailingBit(vec4<u32>(var_2.x, ~_wgslsmith_sub_u32(var_2.x, 4294967295u), var_2.x, 9062u)) << (max(vec4<u32>(_wgslsmith_add_u32(var_2.x << (9647u % 32u), 1u), abs(1u), firstTrailingBit(var_2.x) | ~var_2.x, var_2.x), vec4<u32>(_wgslsmith_div_u32(45488u, 4294967295u), _wgslsmith_div_u32(24992u, var_2.x), _wgslsmith_mod_u32(0u, var_2.x), ~77681u)) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = reverseBits(~0u);
    var var_1 = Struct_1(firstLeadingBit(select(arg_0.a.xzy, vec3<u32>(_wgslsmith_mult_u32(arg_0.a.x, 3291u), ~29178u, _wgslsmith_div_u32(var_0, var_0)), vec3<bool>(true, true, true))), -500f);
    var var_2 = ~arg_0.a.x;
    var var_3 = ~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 45608u), vec4<u32>(var_1.a.x, var_0, var_1.a.x, 4294967295u)), func_2(u_input.a.x)), 0u), 4294967295u, 1u, 0u);
    var var_4 = countOneBits(firstLeadingBit(~reverseBits(~arg_0.a.x)));
    return -460f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1f;
    let var_0 = global2[_wgslsmith_index_u32(~4294967295u, 8u)];
    global0 = _wgslsmith_f_op_f32(func_1(Struct_2(vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = Struct_2(~(countOneBits(vec4<u32>(58083u, 27810u, 32228u, 50518u)) << (countOneBits(vec4<u32>(1u, 31994u, 78867u, 0u)) % vec4<u32>(32u))));
    let var_2 = 4294967295u >= _wgslsmith_div_u32(func_2(-2147483647i).x, 4294967295u);
    global0 = 1064f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(global2[_wgslsmith_index_u32(~4294967295u, 8u)], _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(~var_1.a.x, 8u)] * _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(1u, 8u)] * global2[_wgslsmith_index_u32(var_1.a.x, 8u)])))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, var_0.x, var_2)) * 617f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + -437f), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)))), var_2)), ~2147483647i, reverseBits(u_input.a.yx));
}

