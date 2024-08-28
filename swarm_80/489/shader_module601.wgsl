struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32;

var<private> global2: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(-global0.a.x);
    var var_0 = _wgslsmith_mod_i32(firstLeadingBit(26570i), i32(-1i) * -19385i);
    return Struct_3(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1697f, global0.a.x)))), vec4<i32>(global0.b, ~4242i, u_input.a.x, -(~u_input.a.x) ^ 31843i), max(_wgslsmith_clamp_u32(1u, 20380u, 1u), ~firstTrailingBit(4294967295u)), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -20188i, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.b, global0.b, global0.b), vec3<i32>(-1i, u_input.a.x, -2147483647i))) | u_input.a.x, global0.b));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>) -> bool {
    let var_0 = Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))), 4261u, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.a))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, -746f, arg_0)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0.a))))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.b, 1i), arg_2.x));
    var var_2 = arg_1.d | vec3<i32>(~_wgslsmith_mult_i32(firstTrailingBit(11672i), global0.b >> (var_0.b % 32u)), max(countOneBits(global0.b), ~var_1.b), -arg_1.b.x);
    global1 = 981f;
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.a)) - var_1.a), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-660f, global0.a.x, -1033f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, -189f, -917f), global0.a, vec3<bool>(var_0.a.x, false, var_0.a.x)))))))), var_2.x);
    return var_0.a.x;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1555f, _wgslsmith_f_op_f32(round(1f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 + arg_1)))), arg_1)));
    var var_0 = Struct_5(Struct_1(vec4<bool>(false, all(vec2<bool>(false, false)) == select(true, true, false), true, true), 1u, vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1054f + -1000f) - 1413f))), !(!func_3(arg_1, func_2(), select(vec3<i32>(2147483647i, arg_0, u_input.a.x), vec3<i32>(-55293i, -2147483647i, u_input.a.x), false))), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(749f, 1000f, global0.a.x))), _wgslsmith_add_i32(~(-2147483647i), abs(1i))), 2562u);
    global0 = Struct_4(global0.a, -1i);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1102f + _wgslsmith_f_op_f32(f32(-1f) * -1374f))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 284f) * _wgslsmith_div_f32(-1050f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(min(496f, global0.a.x)))))));
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(global0.a, u_input.a.x);
    let var_0 = reverseBits(~vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 38887u, 21445u), vec4<u32>(1u, 4294967295u, 33163u, 344u)), _wgslsmith_mod_u32(1u, 4294967295u), 26313u)) & _wgslsmith_add_vec4_u32(select(vec4<u32>(func_1(u_input.a.x, -545f, vec4<u32>(50505u, 1u, 0u, 6944u)), 1u << (1u % 32u), ~1u, ~37506u), reverseBits(vec4<u32>(42891u, 4847u, 1u, 23881u)), func_3(_wgslsmith_f_op_f32(min(-1313f, global0.a.x)), Struct_3(global0.a.zx, vec4<i32>(global0.b, -6376i, global0.b, 66557i), 7382u, vec3<i32>(-1i, 1i, -36722i)), vec3<i32>(-32642i, 1i, 19454i))), vec4<u32>(0u, 1u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(47296u, 6197u, 84315u, 48859u), vec4<u32>(4294967295u, 9415u, 71240u, 4294967295u)) >> (1712u % 32u)));
    global1 = -698f;
    let var_1 = true;
    let var_2 = Struct_3(global0.a.xz, -(~countOneBits(vec4<i32>(global0.b, u_input.a.x, global0.b, global0.b) ^ vec4<i32>(global0.b, 3495i, global0.b, -2147483647i))), 4294967295u, -(~vec3<i32>(-20739i, global0.b, u_input.a.x) & vec3<i32>(1i, -global0.b, ~(-2147483647i))));
    global1 = _wgslsmith_f_op_f32(-1292f + 1303f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f - -464f))));
}

