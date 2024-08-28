struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(39279u, 38618u);

var<private> global1: array<f32, 4> = array<f32, 4>(244f, -1000f, -1120f, 495f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> i32 {
    var var_0 = ~31585u;
    var_0 = min(~41380u, _wgslsmith_sub_u32(4294967295u, 0u));
    let var_1 = ~0u;
    global1 = array<f32, 4>();
    let var_2 = vec2<f32>(arg_1, -535f);
    return 1i;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<f32>, arg_3: u32) -> vec4<i32> {
    return ~(~vec4<i32>(reverseBits(7280i >> (arg_3 % 32u)), func_2(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), arg_0), _wgslsmith_f_op_f32(-arg_2.x)), func_2(vec2<bool>(true, true), 183f), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(52674i, -2147483647i, -16715i), 23342i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2352i, -34825i, 1i), vec4<i32>(-35225i, 15948i, 1i, 1i)))));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global0 = array<u32, 2>();
    let var_0 = (_wgslsmith_add_i32(1140i, ~2140i) & _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 20319i, -1i) << (arg_0.ywz % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))) | 38791i;
    global1 = array<f32, 4>();
    let var_1 = firstLeadingBit(0i);
    let var_2 = _wgslsmith_f_op_f32(select(336f, _wgslsmith_f_op_f32(max(1f, -571f)), any(select(vec3<bool>(arg_0.x == 1188u, true, any(vec3<bool>(false, false, false))), vec3<bool>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11297u, 2u)], 2u)] == arg_0.x, true, global1[_wgslsmith_index_u32(71452u, 4u)] > 628f), all(vec4<bool>(true, true, true, true))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(arg_0.x, 4u)])))), _wgslsmith_f_op_f32(sign(var_2)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(25498u, 4u)])) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1492f, global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), global1[_wgslsmith_index_u32(~2662u, 4u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -775f), 509f) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1230f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(698u, 2u)], 4u)]), 275f)))));
    var var_1 = ~_wgslsmith_add_vec4_i32(~firstTrailingBit(reverseBits(vec4<i32>(-15129i, -32317i, -70358i, -23483i))), func_1(true, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], vec2<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 1000f), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(0u, 4u)], 420f))), min(1u, u_input.a.x)));
    global1 = array<f32, 4>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4277u, 4u)]) + _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.a.x, 67632u, u_input.a.x, global0[_wgslsmith_index_u32(0u, 2u)])))) - 966f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(28506u, 4294967295u, u_input.a.x, u_input.a.x))) * _wgslsmith_f_op_f32(var_0 + var_0))))), 718f);
    var var_3 = global0[_wgslsmith_index_u32(~43166u, 2u)];
    let var_4 = var_1.zx;
    let x = u_input.a;
    s_output = StorageBuffer(27445u, vec3<u32>(u_input.a.x, u_input.a.x, ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 2u)], u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)], 4u)], 398f)), _wgslsmith_f_op_f32(-462f + -425f))))));
}

