struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<vec2<i32>, 6>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global1 = array<vec2<i32>, 6>();
    global0 = array<bool, 18>();
    return -u_input.a;
}

fn func_3() -> vec3<u32> {
    global0 = array<bool, 18>();
    let var_0 = ~(~(vec4<u32>(select(4294967295u, 40201u, false), 0u, firstTrailingBit(14792u), 4294967295u) | vec4<u32>(~87145u, 24893u, ~1u, ~0u)));
    global1 = array<vec2<i32>, 6>();
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, max(var_0.x, reverseBits(4294967295u))), var_0.yz);
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1605f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-121f))))), vec2<f32>(1f, 1f));
    return vec3<u32>(min(~abs(var_1.x), var_1.x), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(var_0.x, var_0.x, ~var_0.x), 1u), ~(28453u | abs(firstLeadingBit(var_1.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> bool {
    global0 = array<bool, 18>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-456f - _wgslsmith_f_op_f32(291f + 1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1147f), _wgslsmith_f_op_f32(f32(-1f) * -2119f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(296f + 560f) * _wgslsmith_f_op_f32(abs(886f)))) + _wgslsmith_f_op_f32(-1273f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f)))));
    var var_2 = arg_0.a.x;
    var var_3 = 7090u;
    return global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_2.a.x, 11227u), 18u)];
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: vec3<f32>) -> bool {
    let var_0 = ~vec4<i32>(u_input.a, _wgslsmith_div_i32(func_2(Struct_1(vec2<u32>(0u, 98646u), vec3<i32>(1i, -3241i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), 28773i)), i32(-1i) * -2147483647i), u_input.a, u_input.a);
    global1 = array<vec2<i32>, 6>();
    global1 = array<vec2<i32>, 6>();
    let var_1 = func_4(Struct_1(max(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), firstLeadingBit(var_0.xyx), ~vec4<i32>(var_0.x, 0i, -2147483647i, abs(u_input.a)), -1i), ~abs(select(func_3(), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_2.x, true), vec3<bool>(true, arg_0, false)))), Struct_1(~firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(27580u, 19639u), vec2<u32>(15980u, 0u))), _wgslsmith_add_vec3_i32(-reverseBits(vec3<i32>(var_0.x, u_input.a, var_0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(12412i, -1i, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a, var_0.x), vec3<i32>(1i, 0i, u_input.a)))), select(-vec4<i32>(-2147483647i, var_0.x, -2147483647i, -11002i), (vec4<i32>(var_0.x, 41445i, var_0.x, 12751i) ^ vec4<i32>(-25368i, u_input.a, var_0.x, u_input.a)) | _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.a, -18897i, u_input.a), vec4<i32>(var_0.x, 59204i, -26697i, -2147483647i)), global0[_wgslsmith_index_u32(select(reverseBits(4294967295u), abs(41261u), global0[_wgslsmith_index_u32(0u, 18u)]), 18u)]), i32(-1i) * -7540i));
    let var_2 = Struct_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(19351u, 17665u), vec2<u32>(1u, 1u), !arg_2)), vec3<i32>(2147483647i, -((u_input.a << (4294967295u % 32u)) & var_0.x), -2147483647i), vec4<i32>(16880i, _wgslsmith_clamp_i32(1i, min(min(-49380i, u_input.a), 0i), ~firstLeadingBit(0i)), 2147483647i, -2147483647i), -20317i);
    return global0[_wgslsmith_index_u32(firstLeadingBit(var_2.a.x), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!all(vec4<bool>(any(vec3<bool>(true, false, false)), true, false, func_1(global0[_wgslsmith_index_u32(20856u, 18u)], vec2<f32>(-672f, -1088f), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(56452u, 18u)]), vec3<f32>(-1706f, -137f, 1000f)))), !all(!select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 18u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 18u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 18u)]))), any(!vec3<bool>(!global0[_wgslsmith_index_u32(4294967295u, 18u)], select(true, false, false), true)));
    let var_1 = ~abs(35575u);
    global0 = array<bool, 18>();
    var var_2 = -u_input.a;
    global1 = array<vec2<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(func_3().x, 75999u, 8349u ^ var_1), vec3<u32>(0u, 0u, 0u) << (~vec3<u32>(8825u, 59660u, var_1) % vec3<u32>(32u))) | _wgslsmith_dot_vec3_u32(vec3<u32>(max(0u, var_1), 0u << (1u % 32u), 1u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 20986u, var_1), vec3<u32>(var_1, 4294967295u, var_1)), var_1, ~25286u)), ~vec3<u32>(var_1, reverseBits(firstLeadingBit(var_1)), (1u | var_1) & var_1), vec2<i32>(u_input.a, _wgslsmith_mult_i32(-(i32(-1i) * -16137i), 0i)), ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -55902i, u_input.a), vec3<i32>(1i, u_input.a, u_input.a)) ^ (vec3<i32>(u_input.a, -1i, 25157i) << (~vec3<u32>(var_1, var_1, 1u) % vec3<u32>(32u)))));
}

