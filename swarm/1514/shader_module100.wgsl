struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<bool>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(true, 1u), true, vec2<bool>(false, true), Struct_2(true, 1u), i32(-2147483648));

var<private> global1: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(true, false));

var<private> global2: f32 = -907f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec2<f32>) -> vec4<f32> {
    var var_0 = Struct_2(~_wgslsmith_add_u32(global0.d.b, ~global0.a.b) != abs(_wgslsmith_div_u32(global0.a.b, _wgslsmith_mod_u32(global0.d.b, global0.d.b))), u_input.a.x);
    let var_1 = var_0.a;
    let var_2 = u_input.b;
    var var_3 = !(!(!select(vec4<bool>(false, true, true, global0.c.x), vec4<bool>(true, var_0.a, false, var_0.a), 1000f <= arg_0.x)));
    global2 = 999f;
    return vec4<f32>(-147f, -348f, 1141f, -683f);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = false;
    global2 = arg_1.a.x;
    global1 = array<vec2<bool>, 1>();
    global0 = Struct_3(global0.a, 1063f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1188f - 1000f), arg_1.a.x)), global0.c, global0.d, ~(-2147483647i));
    global0 = Struct_3(Struct_2(any(select(vec3<bool>(global0.c.x, false, false), select(vec3<bool>(global0.a.a, var_0, true), vec3<bool>(var_0, var_0, false), global0.d.a), select(vec3<bool>(false, global0.a.a, true), vec3<bool>(global0.b, global0.c.x, var_0), global0.d.a))), u_input.a.x), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x)) != _wgslsmith_f_op_f32(-arg_1.a.x)), select(vec2<bool>(any(select(global0.c, vec2<bool>(false, false), global1[_wgslsmith_index_u32(54483u, 1u)])), true), global1[_wgslsmith_index_u32(98828u << (global0.a.b % 32u), 1u)], all(!vec4<bool>(var_0, false, var_0, true))), global0.a, ~(-global0.e));
    return ((~_wgslsmith_sub_i32(global0.e, -7511i) >> (4294967295u % 32u)) == -1i) | (-409f >= arg_1.a.x);
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> f32 {
    let var_0 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), -1317f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f + -1000f)))), vec2<bool>(firstLeadingBit(~75419i) == firstTrailingBit(u_input.b.x), !arg_0.a.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1, -1726f), arg_1, -1384f, _wgslsmith_f_op_f32(-295f * 591f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(796f, _wgslsmith_f_op_f32(select(-869f, _wgslsmith_f_op_f32(-arg_1), func_3(0i, Struct_1(vec4<f32>(658f, 358f, arg_1, -1000f))))), _wgslsmith_f_op_vec4_f32(func_1(vec2<f32>(arg_1, -1731f))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_1)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(ceil(arg_1))), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 1299f) - -521f), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-1508f + -156f)))));
    var var_1 = max(u_input.b.x, u_input.c.x);
    let var_2 = var_0;
    let var_3 = reverseBits(~vec4<u32>(arg_0.a.b, ~u_input.a.x, arg_0.d.b, _wgslsmith_dot_vec4_u32(vec4<u32>(34168u, 5470u, u_input.a.x, 4294967295u), vec4<u32>(global0.a.b, 1u, 4294967295u, 1u))) ^ vec4<u32>(4294967295u ^ ~global0.a.b, 67457u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u), max(~u_input.a.x, 61942u)));
    var var_4 = ~abs(firstLeadingBit(_wgslsmith_add_u32(1u, u_input.a.x << (49706u % 32u))));
    return _wgslsmith_f_op_f32(1f * -925f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 1>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec2<f32>(-279f, 857f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-390f, 532f, 1453f, -1073f) * vec4<f32>(1223f, 1293f, -180f, 406f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1664f), _wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(global0.d.a, u_input.a.x), global0.b, global0.c, global0.a, u_input.c.x), 948f)), 1111f, _wgslsmith_f_op_f32(-450f * -1459f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(365f, 175f, 435f, 807f), vec4<f32>(594f, 761f, 696f, -964f), vec4<bool>(global0.a.a, true, false, false))))))), !(!(!vec4<bool>(global0.c.x, global0.a.a, global0.a.a, true))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(213f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(779f + 1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), 1536f)), _wgslsmith_f_op_f32(sign(1148f)))), select(!(global0.a.b >= 35984u), var_0.a.x != _wgslsmith_f_op_f32(246f * var_0.a.x), !(u_input.b.x <= global0.e)))), 1513f);
    global1 = array<vec2<bool>, 1>();
    global1 = array<vec2<bool>, 1>();
    var var_2 = Struct_4(Struct_1(var_0.a), !global0.d.a, reverseBits(_wgslsmith_div_vec2_u32(u_input.a.zx, u_input.a.yx)), Struct_3(global0.d, global0.d.a, global0.c, Struct_2(false, u_input.a.x), _wgslsmith_mult_i32(global0.e, 67275i)));
    var_0 = var_2.a;
    let var_3 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(23555u), ~0u, 1u << (global0.d.b % 32u), _wgslsmith_div_u32(0u, global0.d.b)), vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a.zy), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~83016u);
}

