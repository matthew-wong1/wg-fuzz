struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> u32 {
    let var_0 = ~(~max(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(30868u, u_input.d)), vec2<u32>(_wgslsmith_mod_u32(u_input.b, u_input.d), 10034u)));
    global0 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1115f), _wgslsmith_f_op_f32(-1740f + -936f), all(vec2<bool>(true, false))))))));
    var var_2 = global0[_wgslsmith_index_u32(var_0.x, 30u)];
    var_2 = Struct_1(vec2<bool>(var_2.c, true && (_wgslsmith_f_op_f32(-var_1) > -775f)), var_2.b, true & !all(!vec4<bool>(var_2.c, false, var_2.a.x, true)), ~u_input.b);
    return countOneBits(u_input.e);
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = vec4<u32>(_wgslsmith_clamp_u32(func_3(), u_input.d, 0u), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1134u, 24135u, u_input.d, u_input.e), vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u)), countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.d, u_input.d))) << (u_input.e % 32u)), func_3(), 15409u);
    var_0 = abs(~(vec4<u32>(var_0.x, var_0.x, ~var_0.x, _wgslsmith_mult_u32(var_0.x, 119234u)) | vec4<u32>(abs(50564u), u_input.e, firstLeadingBit(4294967295u), u_input.b ^ 1u)));
    var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, var_0.x, u_input.d, u_input.e)), vec4<u32>(var_0.x, 24735u, 0u, u_input.e) >> (vec4<u32>(71658u, 7412u, u_input.b, u_input.d) % vec4<u32>(32u))), abs(~vec4<u32>(u_input.b, 4294967295u, u_input.d, u_input.b))), vec4<u32>(u_input.e, 1u, _wgslsmith_mult_u32(func_3(), _wgslsmith_mod_u32(_wgslsmith_mult_u32(81448u, 1u), _wgslsmith_mult_u32(var_0.x, u_input.e))), reverseBits(_wgslsmith_mult_u32(~var_0.x, ~4294967295u))));
    var var_1 = _wgslsmith_div_i32(firstTrailingBit(-12375i), select(u_input.a.x, arg_0 >> (1u % 32u), true));
    var_0 = ~vec4<u32>(abs(0u), _wgslsmith_add_u32(~select(var_0.x, 0u, false), reverseBits(var_0.x) << (42050u % 32u)), firstLeadingBit(~1u), 1u);
    return true;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = -vec2<i32>(-(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.a.x, u_input.a.x, arg_2.x), arg_2) & -40073i), 1i);
    let var_1 = select(vec2<bool>(arg_1.x, true), vec2<bool>(false != arg_3.c, !(!arg_3.c | false)), !arg_1.x);
    let var_2 = arg_3;
    let var_3 = Struct_1(vec2<bool>(!(false == (var_1.x | var_1.x)), false), select(vec3<bool>(func_2(arg_0.x), true, true), vec3<bool>(arg_3.a.x, all(vec4<bool>(true, arg_1.x, arg_1.x, var_1.x)), true), select(!select(arg_3.b, arg_3.b, arg_3.c), !var_2.b, any(vec4<bool>(true, var_1.x, false, false)))), all(vec3<bool>(arg_1.x, arg_3.b.x || !var_1.x, all(!var_2.b.xy))), arg_3.d);
    return select(vec4<u32>(var_3.d, _wgslsmith_sub_u32(12801u, _wgslsmith_sub_u32(~var_2.d, 53776u)), ~arg_3.d, 1u), _wgslsmith_mult_vec4_u32(~min(~vec4<u32>(var_2.d, var_2.d, u_input.e, 37468u), vec4<u32>(1u, 4294967295u, 0u, var_3.d)), vec4<u32>(34703u, _wgslsmith_div_u32(17573u, 6551u), 24814u, ~arg_3.d) | vec4<u32>(~arg_3.d, min(1180u, 1u), 27668u, ~0u)), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1145f, -1000f, 2992f), vec3<f32>(-705f, 618f, -114f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -572f), _wgslsmith_f_op_f32(-418f + 1000f), _wgslsmith_f_op_f32(select(139f, -537f, false)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(214f, 1693f, -134f)))))));
    var var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(0u, u_input.e), _wgslsmith_add_u32(u_input.d, 59794u), ~u_input.d, 0u), _wgslsmith_sub_vec4_u32(~func_1(vec2<i32>(u_input.a.x, u_input.c.x), vec2<bool>(false, false), vec4<i32>(2147483647i, u_input.c.x, 2147483647i, 38379i), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, false), false, 60963u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 1u, 0u, 29657u), firstLeadingBit(vec4<u32>(u_input.d, 0u, u_input.e, 0u))))) > abs(_wgslsmith_mult_u32(u_input.b, u_input.b));
    var_1 = all(vec3<bool>(any(vec2<bool>(true, true)), false, !all(vec2<bool>(true, true))));
    let var_2 = global0[_wgslsmith_index_u32(11321u, 30u)];
    let var_3 = Struct_1(vec2<bool>(!any(!vec3<bool>(true, var_2.c, true)), var_2.b.x && true), vec3<bool>(!var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2243f) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -332f)), true), var_2.a.x || true, abs(var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -29693i), vec3<i32>(-2147483647i, 1i, 1i)), select(vec3<i32>(-7493i, u_input.c.x, 1i) ^ vec3<i32>(-1i, 9098i, u_input.c.x), vec3<i32>(1i, u_input.c.x, 0i), false))), 64655u, ~abs(-u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(~(-u_input.c.x), -_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), ~(~(-2147483647i)), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x << (var_2.d % 32u))), max(vec4<i32>(u_input.a.x, reverseBits(u_input.c.x), u_input.a.x, max(1i, -11541i)), vec4<i32>(select(-2147483647i, u_input.c.x, var_2.a.x), ~u_input.c.x, min(30555i, -28724i), -3255i))), reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.c.x), u_input.a)) | _wgslsmith_clamp_vec2_i32(abs(_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, u_input.a.x))), select(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(-2225i, -45700i), false), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(55796i, 1i)), countOneBits(vec2<i32>(u_input.a.x, u_input.a.x)), ~vec2<i32>(-13226i, u_input.a.x))));
}

