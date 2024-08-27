struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: array<vec3<bool>, 23>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = abs(vec2<i32>(1i, -_wgslsmith_mod_i32(-2147483647i, -arg_2.c.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.a.a))))), (1u ^ _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_2.b.b, arg_2.a.c), 1u)) ^ _wgslsmith_sub_u32((u_input.a >> (arg_0.b % 32u)) ^ ~1u, arg_0.b), reverseBits(~arg_0.b) | reverseBits(_wgslsmith_add_u32(~41776u, select(u_input.a, arg_0.b, true))));
    var var_2 = any(vec2<bool>(all(vec4<bool>(1i > arg_2.c.x, select(true, false, true), any(vec4<bool>(true, true, false, false)), true)), true));
    var var_3 = !select(false, true, any(vec2<bool>(false, false)));
    var var_4 = Struct_2(Struct_1(189f, ~(~647u), 1u), arg_2.b, _wgslsmith_sub_vec2_i32(arg_2.c, vec2<i32>(_wgslsmith_clamp_i32(-8372i, -var_0.x, 1i), -(~var_0.x))));
    return _wgslsmith_f_op_f32(521f + 297f);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = vec4<f32>(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, u_input.a), vec2<u32>(0u, 4294967295u))), 9u)])), 1099f), arg_2.a.a, _wgslsmith_f_op_f32(select(-1261f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(110131u, 9u)])), _wgslsmith_f_op_f32(-arg_0.a), false)))), true)));
    global1 = array<vec3<bool>, 23>();
    let var_1 = all(vec2<bool>(all(vec4<bool>(true, true, true, true)), false));
    global0 = array<f32, 9>();
    var var_2 = vec2<i32>(0i, 2147483647i) << (_wgslsmith_mod_vec2_u32(~select(abs(arg_1.xz), arg_1.zz, u_input.a <= 1u), firstLeadingBit(~(arg_1.zz << (arg_1.zy % vec2<u32>(32u))))) % vec2<u32>(32u));
    return firstLeadingBit(reverseBits(abs(~arg_1.yz)));
}

fn func_2(arg_0: vec3<u32>) -> StorageBuffer {
    global0 = array<f32, 9>();
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(14008u, 9u)], ~5567u, 0u << (arg_0.x % 32u));
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, arg_0.x), 9u)], 1u, select(4294967295u, var_0.c, false)), u_input.c.xxz, Struct_2(Struct_1(global0[_wgslsmith_index_u32(var_0.b, 9u)], 0u, u_input.a), Struct_1(global0[_wgslsmith_index_u32(var_0.b, 9u)], var_0.b, var_0.c), reverseBits(vec2<i32>(0i, u_input.d))))), firstTrailingBit(_wgslsmith_div_u32(~u_input.a, _wgslsmith_dot_vec2_u32(arg_0.yz, arg_0.yz))), 54751u), firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 14178u, 1u), vec4<u32>(arg_0.x, 4294967295u, 1u, 21816u), vec4<u32>(arg_0.x, 40197u, arg_0.x, 99558u)), vec4<u32>(var_0.b, 62349u, arg_0.x, 58555u)), 1u, ~arg_0.x << (1u % 32u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(abs(arg_0.x), 9u)]), 1u, u_input.a), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a << (25980u % 32u), firstTrailingBit(var_0.b), firstLeadingBit(19284u)), 9u)], ~(~var_0.c), var_0.c), ~vec2<i32>(-u_input.b, 1i)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, global0[_wgslsmith_index_u32(arg_0.x, 9u)])) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(43934u, 9u)]))))), 5939u, 0u);
    var_0 = var_2;
    return StorageBuffer(u_input.b, u_input.b, u_input.d);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: bool) -> StorageBuffer {
    global1 = array<vec3<bool>, 23>();
    global1 = array<vec3<bool>, 23>();
    var var_0 = 1u;
    var_0 = u_input.a;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(1u, u_input.a), abs(69425u)), 9u)];
    return func_2(~min(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, arg_0.c, arg_1), vec3<u32>(4294967295u, 36450u, u_input.a)), max(vec3<u32>(1u, arg_0.c, 22929u) >> (vec3<u32>(arg_1, arg_1, 0u) % vec3<u32>(32u)), ~vec3<u32>(arg_0.c, 1u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(850f, 22245u, 1u), reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 21229u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 42340u)), 832u) ^ u_input.a), global0[_wgslsmith_index_u32(~(u_input.a << (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u)) << ((~42012u & firstTrailingBit(u_input.a)) % 32u), 9u)], true);
}

