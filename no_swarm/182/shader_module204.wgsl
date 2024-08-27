struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<f32, 25>;

var<private> global2: array<i32, 28>;

var<private> global3: f32 = 142f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<u32> {
    var var_0 = 2147483647i;
    global1 = array<f32, 25>();
    let var_1 = ~_wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_2.x, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, 4294967295u, 4294967295u), arg_2.zxx, vec3<u32>(u_input.b, u_input.a.x, u_input.a.x))), ~(~(~vec3<u32>(30799u, u_input.b, 36225u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1162f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-707f, -2178f)) - _wgslsmith_f_op_f32(select(arg_1.a.x, 1043f, any(vec4<bool>(arg_0, true, arg_1.c, arg_1.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 25u)] - global1[_wgslsmith_index_u32(2583u, 25u)])))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_2 = arg_1.a;
    return _wgslsmith_mod_vec4_u32(arg_2, vec4<u32>(~(_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(u_input.b, 0u, 0u, var_1.x)) & u_input.b), 1u, ~1u, 4294967295u));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u ^ ((_wgslsmith_mult_u32(~56794u, _wgslsmith_div_u32(u_input.a.x, 0u)) ^ 4294967295u) >> (~(~(u_input.b >> (1u % 32u))) % 32u)), 19u)];
    let var_1 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(97849u, u_input.b, 47093u, u_input.a.x), vec4<u32>(u_input.b, 50362u, 4294967295u, 33903u))) | select(select(vec4<u32>(u_input.b, u_input.b, u_input.a.x, 26531u), vec4<u32>(1u, u_input.a.x, u_input.b, u_input.a.x), vec4<bool>(arg_1.c, arg_1.c, true, arg_1.c)) & ~vec4<u32>(1u, 4294967295u, u_input.b, 4294967295u), vec4<u32>(0u, ~1u, 53633u, firstTrailingBit(u_input.b)), false), _wgslsmith_mod_vec4_u32(func_3(true, Struct_1(arg_1.a, vec2<i32>(var_0.b.x, arg_1.b.x) << (u_input.a.yy % vec2<u32>(32u)), arg_1.c), ~(vec4<u32>(u_input.b, u_input.b, u_input.a.x, 1u) >> (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u)))), min(firstLeadingBit(max(vec4<u32>(u_input.a.x, u_input.b, u_input.b, u_input.a.x), vec4<u32>(u_input.b, u_input.a.x, 14236u, u_input.b))), ~vec4<u32>(4294967295u, 9284u, u_input.a.x, 1u) & min(vec4<u32>(0u, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.a.x, u_input.a.x, 28408u, 68771u)))), vec4<u32>(u_input.b, u_input.a.x, _wgslsmith_mod_u32(~33990u, u_input.b), u_input.a.x));
    var var_2 = firstTrailingBit(abs(1i));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(505f - _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(7257u, var_1.x), 25u)], _wgslsmith_f_op_f32(abs(arg_1.a.x))))));
    var_3 = -1000f;
    return ~var_1.x;
}

fn func_1() -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(124f, global1[_wgslsmith_index_u32(8458u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)]) - vec4<f32>(-2205f, global1[_wgslsmith_index_u32(3873u, 25u)], -1177f, global1[_wgslsmith_index_u32(u_input.a.x, 25u)])), global0[_wgslsmith_index_u32(21108u, 19u)]) | ((~u_input.a.x << (u_input.b % 32u)) | (countOneBits(u_input.b) >> (~u_input.b % 32u))), ~(_wgslsmith_div_u32(u_input.b, 1u) | firstLeadingBit(~u_input.b))), 19u)];
    var var_1 = vec4<bool>(var_0.c, var_0.c, all(!vec3<bool>(any(vec2<bool>(false, true)), true, any(vec2<bool>(false, false)))), !(!select(var_0.c, all(vec2<bool>(true, false)), var_0.c & var_0.c)));
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 25u)];
    var_1 = vec4<bool>(true, var_1.x, var_1.x, var_1.x);
    var var_3 = u_input.c;
    return StorageBuffer(vec4<i32>(var_3.x, ~min(i32(-1i) * -2774i, var_3.x), -firstTrailingBit(2147483647i >> (u_input.a.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 0i), ~(var_3.wy >> (u_input.a.yy % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

