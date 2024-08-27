struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: Struct_4,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
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

var<private> global0: vec2<f32> = vec2<f32>(816f, -746f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    return vec3<i32>(arg_0.b, arg_0.b, select(1i, u_input.b.x, any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    global0 = vec2<f32>(-829f, -955f);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x);
    var var_0 = vec3<bool>(select(arg_0, true, arg_0 | arg_0), true, !any(vec2<bool>(true, true)));
    let var_1 = u_input.c;
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~u_input.c & u_input.c, 0u, 38727u), 1u), _wgslsmith_sub_u32(u_input.c, 21910u));
    return Struct_3(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(~u_input.a, u_input.a), _wgslsmith_sub_vec3_i32(func_3(Struct_4(vec4<u32>(0u, var_1, 40781u, 38005u), u_input.b.x, vec3<u32>(9135u, 0u, 1u))), ~firstLeadingBit(vec3<i32>(-2147483647i, u_input.b.x, u_input.d)))), arg_0, true, ~96471u, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(148f, _wgslsmith_f_op_f32(ceil(-906f)))))), global0.x, -1241f, 911f));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_i32(min(-_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.a.x, u_input.b.x)), u_input.a.xy), _wgslsmith_div_vec2_i32(vec2<i32>(~u_input.b.x, countOneBits(0i)), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(4424i, 7815i), vec2<i32>(0i, u_input.d), vec2<i32>(1i, u_input.b.x))))), vec2<i32>(select(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d, -33232i, u_input.b.x), vec4<i32>(1i, u_input.b.x, u_input.a.x, u_input.b.x)), any(vec2<bool>(false, false))), 55452i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global0.x);
    var var_2 = -5883i;
    var var_3 = func_2(true & (~u_input.a.x > 1i));
    global0 = _wgslsmith_f_op_vec2_f32(-var_3.e.wx);
    return Struct_1(~min(firstLeadingBit(u_input.c), ~(~1u)), vec2<bool>(all(!select(vec2<bool>(false, var_3.b), vec2<bool>(var_3.c, false), vec2<bool>(var_3.b, var_3.c))), false), !(_wgslsmith_div_f32(var_3.e.x, _wgslsmith_f_op_f32(step(-1180f, global0.x))) == _wgslsmith_div_f32(-1020f, var_3.e.x)));
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> Struct_4 {
    let var_0 = ~min(~vec3<i32>(_wgslsmith_add_i32(arg_0.c.b, 21171i), u_input.a.x, u_input.a.x ^ 25716i), -min(~vec3<i32>(arg_0.c.b, -12207i, u_input.a.x), vec3<i32>(arg_0.c.b, arg_0.c.b, 2147483647i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_2(arg_0.c.b == 1i).e.x, global0.x)));
    let var_2 = select(select(select(select(vec3<bool>(arg_0.d.b.c, true, arg_0.d.b.c), vec3<bool>(true, arg_0.d.b.b.x, false), true), !select(vec3<bool>(false, false, true), vec3<bool>(arg_0.b.b.x, arg_0.d.b.c, false), vec3<bool>(false, true, false)), !(arg_0.b.a == 15837u)), vec3<bool>(false, true, any(arg_0.d.b.b)), !(!vec3<bool>(false, arg_0.b.b.x, true))), !(!select(!vec3<bool>(arg_0.d.b.c, arg_0.d.b.b.x, arg_0.b.c), select(vec3<bool>(arg_0.b.c, true, false), vec3<bool>(false, true, arg_0.d.b.c), vec3<bool>(false, arg_0.d.b.b.x, arg_0.d.b.b.x)), select(vec3<bool>(arg_0.b.b.x, arg_0.d.b.b.x, true), vec3<bool>(arg_0.b.b.x, arg_0.b.c, false), vec3<bool>(false, true, arg_0.d.b.c)))), any(!select(vec3<bool>(arg_0.b.b.x, true, arg_0.d.b.c), vec3<bool>(arg_0.b.c, arg_0.b.b.x, arg_0.d.b.b.x), !vec3<bool>(arg_0.d.b.c, arg_0.d.b.c, arg_0.b.b.x))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-601f, 830f) - arg_0.e.xy), _wgslsmith_f_op_vec2_f32(-arg_0.e.yz)))) + _wgslsmith_f_op_vec2_f32(-func_2(var_2.x | true).e.yz)) * arg_0.e.yz);
    var var_3 = vec4<i32>(var_0.x, ~arg_0.c.b, ~u_input.d, reverseBits(~1i));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -846f)), func_1(), Struct_4(~(~vec4<u32>(4294967295u, 0u, u_input.c, u_input.c)), _wgslsmith_div_i32(-u_input.d, i32(-1i) * -10811i), vec3<u32>(1u, ~u_input.c, _wgslsmith_mult_u32(4294967295u, 0u))), Struct_2(global0.x, Struct_1(countOneBits(u_input.c), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), all(vec3<bool>(true, true, false)))), vec3<f32>(-1297f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -705f), global0.x)), _wgslsmith_f_op_f32(-global0.x))), u_input.c);
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-346f)) - global0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - -1000f)))));
    let var_1 = var_0.b;
    var var_2 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(var_0.b, -2147483647i, -14336i), vec3<i32>(-(~(-2147483647i)), -26562i, 0i), reverseBits(-vec3<i32>(max(var_1, 2147483647i), max(var_1, 33887i), var_1)));
    var_2 = abs(vec3<i32>(-9370i, 68215i, -47006i));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-546f + global0.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.x) - vec2<f32>(global0.x, global0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1697f)))) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(step(285f, 637f)))), vec2<bool>(true, true)));
    let var_3 = Struct_2(global0.x, func_1());
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1255f, 640f, 822f), vec3<f32>(global0.x, -291f, -1412f), false)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1165f, global0.x, global0.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -326f), var_3.a, _wgslsmith_f_op_f32(-global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f - var_3.a) - _wgslsmith_f_op_f32(-var_4.x)))), max(~(~vec3<u32>(49886u, 4294967295u, u_input.c)), vec3<u32>(19290u, reverseBits(u_input.c), u_input.c)) | var_0.a.yyz, vec2<i32>(var_0.b, -(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, u_input.a.x), u_input.a) & -5685i)), ~vec3<i32>(-63545i, ~var_1 | _wgslsmith_dot_vec3_i32(vec3<i32>(18680i, var_1, var_2.x), vec3<i32>(1i, u_input.a.x, u_input.b.x)), max(reverseBits(var_0.b), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, -1i), u_input.a.xz))));
}

