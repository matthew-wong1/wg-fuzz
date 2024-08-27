struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 10> = array<bool, 10>(true, false, true, false, false, true, false, false, false, true);

var<private> global2: vec2<bool>;

var<private> global3: u32;

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(abs(global0.a))))), -1684f, 992f);
    let var_1 = Struct_1(-289f);
    return abs(-vec4<i32>(7162i, 15210i, ~(~0i), 1i));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> bool {
    var var_0 = -max(min(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), countOneBits(vec4<i32>(-2147483647i, 2147483647i, 1i, 0i))), ~abs(vec4<i32>(-1041i, -1053i, -8611i, 26585i))), reverseBits(select(vec4<i32>(-1i, 2147483647i, 39437i, -28098i), func_2(arg_2), true)));
    return _wgslsmith_sub_u32(26689u, u_input.a) == 11943u;
}

fn func_3() -> vec3<u32> {
    var var_0 = global2.x;
    let var_1 = global0.a;
    var var_2 = vec4<u32>(~abs(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 2481u, 45770u)), reverseBits(u_input.a))), 43407u, _wgslsmith_clamp_u32(0u & firstTrailingBit(u_input.a), u_input.a, min(u_input.a, u_input.a)), 16944u);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, global0.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1049f))))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-658f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))) * _wgslsmith_f_op_f32(global0.a + global0.a));
    return ~vec3<u32>(44763u, _wgslsmith_mod_u32(~(u_input.a ^ 48042u), ~var_2.x), _wgslsmith_add_u32(1u << (var_2.x % 32u), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a * 1130f))));
    global1 = array<bool, 10>();
    global3 = _wgslsmith_sub_u32(u_input.a, u_input.a ^ 28837u);
    var var_1 = _wgslsmith_add_i32(~43819i, min(_wgslsmith_div_i32(0i << (~u_input.a % 32u), max(1i, -40360i)), ~(-2147483647i)));
    let var_2 = abs(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(33071u, u_input.a), max(vec2<u32>(1u, 6977u), vec2<u32>(4294967295u, 83911u))))) == 40862u;
    var var_3 = ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, u_input.a, 0u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(15000u, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 49272u, u_input.a) % vec3<u32>(32u))), vec3<bool>(var_2, func_1(global2.x, u_input.a, Struct_1(603f)), global1[_wgslsmith_index_u32(~u_input.a, 10u)])), func_3());
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.a)), -157f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -max(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)), select(vec4<u32>(52130u, 4294967295u, ~_wgslsmith_add_u32(1u, u_input.a), 0u), vec4<u32>(_wgslsmith_clamp_u32(28388u, _wgslsmith_mult_u32(u_input.a, 4294967295u), 19137u), _wgslsmith_mod_u32(16998u, _wgslsmith_div_u32(u_input.a, 4294967295u)), max(~40030u, firstLeadingBit(u_input.a)), _wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, 14094u), vec2<u32>(u_input.a, 0u)), vec2<u32>(2999u, u_input.a))), !global2.x));
}

