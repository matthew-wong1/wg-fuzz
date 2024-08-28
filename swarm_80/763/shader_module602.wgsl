struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_5) -> i32 {
    global0 = _wgslsmith_sub_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-36589i, -11564i, arg_2.a.b.x), ~vec3<i32>(-12457i, 37097i, u_input.a.x)), 35653i, firstTrailingBit(arg_2.d.b.b.x)), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(global0.x, global0.x, 15179i), arg_2.d.b.b.x, _wgslsmith_mod_i32(-1i, -18607i)) ^ ~_wgslsmith_mod_vec3_i32(arg_2.a.b.wwz, arg_2.d.b.b.xyw), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, arg_2.d.e.b.x), u_input.a), vec2<i32>(-9489i, 32409i) ^ global0.zz), -37723i)));
    var var_0 = select(vec2<bool>(true, true), arg_2.b, arg_2.a.e);
    var var_1 = Struct_3(_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.b.x | arg_2.a.a.x, ~19224u), 7040u), vec4<u32>(8049u, _wgslsmith_sub_u32(arg_2.e.b.x, arg_2.a.a.x), 4117u, arg_0));
    let var_2 = -_wgslsmith_div_i32(~(2147483647i | u_input.e) ^ ~max(14130i, arg_2.a.b.x), abs(~arg_2.d.e.b.x));
    var_1 = arg_2.e;
    return global0.x;
}

fn func_2() -> Struct_3 {
    global0 = vec3<i32>(-func_3(min(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), u_input.c.x << (1u % 32u)), _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, global0.x), 1i), Struct_5(Struct_1(u_input.b, vec4<i32>(global0.x, -1i, 4024i, 1i), -539f, vec2<f32>(-307f, -1394f), true), vec2<bool>(true, false), false, Struct_2(vec3<bool>(false, false, true), Struct_1(u_input.b, vec4<i32>(u_input.d.x, 46444i, -1i, global0.x), -216f, vec2<f32>(-1223f, 653f), false), u_input.b.x, u_input.d, Struct_1(u_input.b, vec4<i32>(u_input.e, -1i, -55900i, u_input.d.x), 1092f, vec2<f32>(-167f, -1611f), true)), Struct_3(4294967295u, u_input.b))), _wgslsmith_clamp_i32(-12217i, max(u_input.e, -(~global0.x)), -13204i), global0.x);
    global0 = ~(-abs(vec3<i32>(global0.x, 0i, i32(-1i) * -1i)));
    return Struct_3(1u, abs(vec4<u32>(~u_input.b.x, 4294967295u, 0u, abs(1u))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_add_vec3_i32(vec3<i32>(min(-1i, -1i), arg_2.b.b.x ^ firstTrailingBit(firstTrailingBit(25024i)), -2147483647i | firstLeadingBit(u_input.e)), arg_2.b.b.xyy);
    let var_0 = arg_2.b.a.x;
    global0 = vec3<i32>(-global0.x, global0.x, _wgslsmith_div_i32(u_input.e, ~(~(-27655i))));
    global0 = -(~vec3<i32>(abs(-2147483647i), select(i32(-1i) * -21063i, -6547i, true), 0i));
    var var_1 = (abs((1i ^ arg_2.b.b.x) ^ arg_2.e.b.x) | global0.x) | arg_1;
    return arg_2;
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: vec3<i32>) -> vec3<i32> {
    global0 = arg_2;
    global0 = vec3<i32>(~firstLeadingBit(-1i), 1i, ~(-(_wgslsmith_mod_i32(-8109i, 1i) ^ _wgslsmith_mult_i32(global0.x, 65009i))));
    global0 = -arg_2;
    var var_0 = func_4(func_2(), firstTrailingBit(global0.x & global0.x), Struct_2(!(!vec3<bool>(arg_1.a, true, arg_1.a)), Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b.x, u_input.c.x, 48544u, arg_1.b.x), vec4<u32>(arg_1.b.x, 66838u, arg_1.b.x, 0u)), _wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(14038u, u_input.c.x, 11162u, 0u), u_input.b)), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, 18306i, u_input.e, arg_2.x), vec4<i32>(global0.x, 25259i, arg_2.x, global0.x), vec4<i32>(-1i, -2147483647i, u_input.a.x, u_input.e)), -vec4<i32>(-1i, u_input.e, u_input.a.x, global0.x)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_0), vec2<f32>(921f, 1047f))), false), func_2().b.x, -(-arg_2.yx ^ ~arg_2.yy), Struct_1(vec4<u32>(_wgslsmith_mod_u32(34152u, arg_1.b.x), 4294967295u, abs(4302u), firstTrailingBit(4294967295u)), vec4<i32>(_wgslsmith_mod_i32(global0.x, arg_2.x), arg_2.x, u_input.a.x, ~arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) - _wgslsmith_f_op_f32(arg_0 * -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(342f, -854f))), false != (u_input.a.x > 0i))));
    global0 = arg_2;
    return firstTrailingBit(vec3<i32>(~_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.d.x, 0i), ~2147483647i), 1i, i32(-1i) * -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-370f * _wgslsmith_f_op_f32(-667f + -313f)) + -230f) + -850f));
    global0 = vec3<i32>(u_input.a.x, 16065i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.x), _wgslsmith_div_vec2_i32(u_input.d, global0.yz)), _wgslsmith_div_i32(-global0.x, -1i))) ^ abs(-(~reverseBits(vec3<i32>(u_input.a.x, u_input.d.x, 2147483647i))));
    global0 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -(vec3<i32>(2147483647i, u_input.e, u_input.e) | vec3<i32>(u_input.d.x, u_input.a.x, global0.x)), select(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, global0.x, global0.x), vec3<i32>(u_input.e, global0.x, global0.x)), _wgslsmith_div_vec3_i32(select(vec3<i32>(global0.x, 1i, u_input.d.x), vec3<i32>(global0.x, 0i, u_input.e), true), func_1(var_0, Struct_4(false, u_input.b), vec3<i32>(-1i, u_input.a.x, u_input.e))), !func_4(Struct_3(18709u, u_input.b), global0.x, Struct_2(vec3<bool>(false, false, false), Struct_1(vec4<u32>(1u, 67409u, 16020u, u_input.c.x), vec4<i32>(global0.x, u_input.d.x, u_input.a.x, u_input.d.x), var_0, vec2<f32>(var_0, -1241f), false), 14333u, vec2<i32>(-46154i, -62285i), Struct_1(vec4<u32>(1u, u_input.b.x, 0u, 17197u), vec4<i32>(32002i, -68592i, -30095i, 39113i), -1000f, vec2<f32>(-1000f, -113f), false))).a)), ~(~vec3<i32>(0i, -65233i, _wgslsmith_clamp_i32(global0.x, 1i, -80822i))));
    global0 = _wgslsmith_mod_vec3_i32(-(~(~abs(vec3<i32>(global0.x, global0.x, u_input.e)))), ~vec3<i32>(u_input.a.x, 1i, func_4(Struct_3(u_input.b.x, vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.b.x)), 47420i, func_4(Struct_3(4294967295u, u_input.b), u_input.a.x, Struct_2(vec3<bool>(true, false, true), Struct_1(u_input.b, vec4<i32>(31176i, -39191i, 1i, 0i), -154f, vec2<f32>(var_0, var_0), true), u_input.c.x, vec2<i32>(57581i, u_input.e), Struct_1(vec4<u32>(4294967295u, 1u, 104511u, 117884u), vec4<i32>(65099i, 0i, -1i, 4051i), 1168f, vec2<f32>(1000f, var_0), false)))).e.b.x));
    var var_1 = firstTrailingBit(select(-select(vec2<i32>(-11994i, -1i), global0.yy, false) | max(vec2<i32>(38728i, global0.x), vec2<i32>(u_input.e, 1i)), vec2<i32>(_wgslsmith_mult_i32(global0.x, _wgslsmith_add_i32(7028i, -32628i)), -1i), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, all(vec4<bool>(false, false, true, false))))));
    let var_2 = Struct_5(func_4(func_2(), 57164i, func_4(func_2(), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, u_input.d.x), u_input.a), func_4(func_2(), func_1(495f, Struct_4(false, vec4<u32>(u_input.c.x, 18919u, 54962u, 4294967295u)), vec3<i32>(1i, var_1.x, -1i)).x, Struct_2(vec3<bool>(true, false, true), Struct_1(vec4<u32>(24311u, u_input.b.x, u_input.c.x, 1u), vec4<i32>(2147483647i, global0.x, -1i, global0.x), -723f, vec2<f32>(var_0, 800f), false), u_input.c.x, u_input.a, Struct_1(u_input.b, vec4<i32>(u_input.a.x, 1i, var_1.x, 17243i), var_0, vec2<f32>(var_0, var_0), false))))).e, vec2<bool>(!(any(vec4<bool>(true, false, false, false)) && false), select(any(vec2<bool>(true, true)) | true, !any(vec2<bool>(true, false)), ~u_input.b.x > firstLeadingBit(u_input.c.x))), !(_wgslsmith_dot_vec3_i32(func_4(Struct_3(7281u, u_input.b), 2147483647i, Struct_2(vec3<bool>(true, true, false), Struct_1(u_input.b, vec4<i32>(34481i, -53772i, global0.x, -32617i), var_0, vec2<f32>(1496f, var_0), true), 10457u, u_input.a, Struct_1(u_input.b, vec4<i32>(u_input.d.x, u_input.d.x, -1042i, 58342i), -381f, vec2<f32>(367f, -126f), true))).b.b.xyz, _wgslsmith_clamp_vec3_i32(vec3<i32>(42872i, -2147483647i, global0.x), vec3<i32>(60497i, u_input.d.x, u_input.d.x), vec3<i32>(-2147483647i, 1i, -28380i))) > var_1.x), func_4(Struct_3(~u_input.b.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(23751u, 22577u, u_input.b.x, u_input.b.x), ~u_input.b, u_input.b)), reverseBits(~var_1.x), func_4(func_2(), _wgslsmith_mod_i32(_wgslsmith_add_i32(var_1.x, -36506i), 52226i), func_4(Struct_3(4294967295u, vec4<u32>(u_input.c.x, 0u, 44935u, 18363u)), u_input.d.x | 1i, Struct_2(vec3<bool>(false, false, true), Struct_1(u_input.b, vec4<i32>(u_input.e, -23795i, 33800i, 1i), 1119f, vec2<f32>(var_0, -591f), true), u_input.b.x, u_input.a, Struct_1(u_input.b, vec4<i32>(var_1.x, global0.x, -20559i, 1i), -530f, vec2<f32>(-1000f, 579f), false))))), Struct_3(50107u, _wgslsmith_add_vec4_u32(abs(vec4<u32>(0u, u_input.b.x, 11988u, u_input.c.x) | u_input.b), max(abs(vec4<u32>(1u, 105144u, 0u, u_input.c.x)), vec4<u32>(u_input.c.x, 4294967295u, u_input.b.x, 44596u)))));
    let var_3 = Struct_5(var_2.a, vec2<bool>(var_2.b.x, select(all(!vec3<bool>(false, false, var_2.c)), (var_0 >= var_0) && (var_2.a.b.x == global0.x), !(10133u <= var_2.a.a.x))), false, func_4(var_2.e, -1i, var_2.d), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.d.b.d.x + -1184f), var_0, -1503f, -980f))));
}

