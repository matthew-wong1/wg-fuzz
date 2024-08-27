struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(1i, 1i, 27004i, 2147483647i, 22177i, 0i, 1052i, 38908i, -367i, i32(-2147483648), 2147483647i, 108i, 0i, 1i, i32(-2147483648), -63474i, 18333i);

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>) -> vec3<f32> {
    global0 = array<i32, 17>();
    let var_0 = global1.d;
    var var_1 = Struct_1(509f);
    global0 = array<i32, 17>();
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, ~_wgslsmith_div_i32(-51478i, u_input.c.x) << (0u % 32u), 2147483647i), select(~(~vec3<i32>(-11135i, 7581i, u_input.d.x)), vec3<i32>(u_input.d.x, min(_wgslsmith_mod_i32(global1.c.a.x, global1.c.a.x), _wgslsmith_div_i32(-24741i, global0[_wgslsmith_index_u32(77769u, 17u)])), 1i), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-508f, global1.a, var_1.a))))) * _wgslsmith_f_op_vec3_f32(global1.d - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global1.d))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(213f, 65417u, global1.c, _wgslsmith_f_op_vec3_f32(func_3(~vec3<u32>(~u_input.a, u_input.a, u_input.a | global1.b))));
    var var_1 = global1.b;
    var_1 = global1.b;
    let var_2 = Struct_4(var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1164f), _wgslsmith_f_op_f32(-arg_1.a), arg_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.d.x))))));
    return var_2.a.c;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = Struct_3(global1.a, firstLeadingBit(4294967295u), func_2(firstLeadingBit(vec3<i32>(0i, -15186i, -u_input.c.x)), Struct_1(global1.d.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-346f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a, global1.d.x)) + _wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.a, -611f), -468f))))));
    let var_1 = ~_wgslsmith_mult_vec2_u32(max(select(firstLeadingBit(vec2<u32>(1u, 34444u)), vec2<u32>(1u, global1.b), any(vec3<bool>(false, false, true))), ~(~arg_0.wx)), ~countOneBits(~arg_0.zy));
    global0 = array<i32, 17>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~86u << (~u_input.a % 32u)) ^ 79456u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(func_1(vec4<u32>(global1.b, global1.b, 44488u, 42547u), u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b, global1.b, u_input.a, 6026u), vec4<u32>(4294967295u, global1.b, global1.b, 0u), vec4<u32>(0u, 24663u, 1u, global1.b))), u_input.a)), 17u)];
    let var_1 = Struct_3(global1.d.x, ~(~1u), func_2(-(u_input.c.wyx | global1.c.a), Struct_1(global1.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(716f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), 757f)));
    let var_2 = ~(~(~firstLeadingBit(~vec4<u32>(60107u, 30166u, 35373u, 0u))));
    var var_3 = Struct_1(-926f);
    global0 = array<i32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(u_input.c.yzz, Struct_1(-1040f)).a.x, var_3.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, global1.d.x, var_1.b > 0u)), _wgslsmith_f_op_f32(-975f * var_3.a), _wgslsmith_f_op_f32(f32(-1f) * -629f), 1038f) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global1.a)), _wgslsmith_f_op_f32(ceil(-322f)), global1.d.x, _wgslsmith_f_op_f32(135f + 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-744f, 637f, -738f, var_1.d.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 378f, 523f, var_1.a))))));
}

