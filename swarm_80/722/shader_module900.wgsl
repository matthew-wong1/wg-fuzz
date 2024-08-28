struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> bool {
    global0 = array<vec4<f32>, 28>();
    global0 = array<vec4<f32>, 28>();
    global0 = array<vec4<f32>, 28>();
    return !arg_0.x && true;
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: f32) -> vec2<u32> {
    let var_0 = select(!vec2<bool>(all(vec2<bool>(false, true)), !all(vec2<bool>(true, false))), select(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false), vec2<bool>(true, false)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, false), vec2<bool>(true, true)), all(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true))), !vec2<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false)), func_1(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(round(arg_2)))));
    global0 = array<vec4<f32>, 28>();
    global0 = array<vec4<f32>, 28>();
    var var_1 = vec3<f32>(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(arg_2 * 881f)), arg_2);
    var var_2 = Struct_1(~select(~_wgslsmith_div_vec3_u32(u_input.a, u_input.a), firstLeadingBit(u_input.a), vec3<bool>(false, true, arg_1.x >= u_input.a.x)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(64476u, arg_1.x, 4294967295u, 88140u), firstLeadingBit(vec4<u32>(u_input.a.x, 60818u, 4335u, arg_1.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(8803u, u_input.a.x, u_input.a.x), ~vec3<u32>(4294967295u, 1u, 1u)), ~(~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, u_input.a.x), firstLeadingBit(u_input.a.xz))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -449f, 686f), vec3<f32>(arg_2, 1000f, 949f)))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_div_f32(-517f, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    return arg_1.xx;
}

fn func_2(arg_0: vec4<bool>) -> bool {
    global0 = array<vec4<f32>, 28>();
    global0 = array<vec4<f32>, 28>();
    var var_0 = Struct_1(~(~u_input.a), vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.yz, func_3(15255i, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), -2852f)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 37538u, 4294967295u, 27680u), vec4<u32>(6565u, u_input.a.x, 1741u, u_input.a.x)) ^ vec4<u32>(u_input.a.x, u_input.a.x, 49023u, u_input.a.x), (vec4<u32>(u_input.a.x, 39231u, u_input.a.x, 19645u) << (vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) << ((vec4<u32>(14606u, 0u, 54664u, 4294967295u) >> (vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(474f, -465f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(495f, _wgslsmith_f_op_f32(f32(-1f) * -871f)) * -2147f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(779f * -1035f)))))));
    global0 = array<vec4<f32>, 28>();
    var var_1 = vec4<u32>(1u, _wgslsmith_sub_u32(12211u & ~var_0.a.x, var_0.b.x >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(74205u, u_input.a.x, var_0.b.x, 0u), vec4<u32>(var_0.b.x, var_0.a.x, var_0.b.x, 4294967295u)) % 32u)), ~97063u, 4294967295u);
    return -u_input.b == -_wgslsmith_mult_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b, -21488i, -43845i), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(select(vec4<bool>(4294967295u == select(51012u, u_input.a.x, true), 58450u == firstTrailingBit(23939u), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), vec4<bool>(all(vec4<bool>(true, true, true, true)), func_1(vec3<bool>(true, true, true), -1207f), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), true), vec4<bool>(true, !(43342u >= u_input.a.x), ~u_input.b >= -13825i, true)));
    var var_1 = _wgslsmith_add_u32(~(~firstLeadingBit(1u)), _wgslsmith_mod_u32(u_input.a.x, ~countOneBits(~0u)));
    let var_2 = Struct_1(u_input.a, vec4<u32>(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(4294967295u, u_input.a.x, 45709u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, ~u_input.a.x, ~0u)), firstLeadingBit(u_input.a.x), func_3(-1i, ~u_input.a, -1000f).x, ~5636u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-315f, 534f))) * 446f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-519f * _wgslsmith_f_op_f32(round(920f))), _wgslsmith_f_op_f32(sign(-222f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-343f + -1044f) - -1479f)))));
    var var_3 = select(~_wgslsmith_add_vec2_u32(~vec2<u32>(var_2.b.x, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.a.x, 119868u) << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), var_2.a.xx)), var_2.a.zz, !vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), false))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_2.b), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -649f)), _wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(exp2(var_2.c.x))), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(floor(1203f)), var_2.c.x));
}

