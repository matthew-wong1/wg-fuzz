struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: i32 = 0i;

var<private> global2: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(1u, 0u, 0u, 0u));

var<private> global3: array<vec3<f32>, 14>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> u32 {
    let var_0 = Struct_2(Struct_1(false, max(u_input.d.wx, firstLeadingBit(select(u_input.d.xy, u_input.d.ww, arg_1.x))), 1i), -vec2<i32>(_wgslsmith_mult_i32(-1i, -1i), u_input.c.x) | vec2<i32>(u_input.c.x, -10675i));
    global1 = ~0i;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-667f - -274f), 170f, 1000f, _wgslsmith_f_op_f32(trunc(593f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-918f, 706f, 1000f, -1000f) * vec4<f32>(832f, 1573f, -1769f, 161f))))))));
    return arg_0;
}

fn func_2() -> Struct_2 {
    global1 = min(-21731i, -11153i) & ~u_input.c.x;
    var var_0 = _wgslsmith_mult_u32(firstTrailingBit(u_input.d.x), ~(_wgslsmith_add_u32(func_3(10428u, global0.xx), abs(1u)) & (func_3(14748u, vec2<bool>(true, true)) << (_wgslsmith_mult_u32(26847u, u_input.d.x) % 32u))));
    let var_1 = Struct_4(global0.x, true, Struct_1(any(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, global0.x), vec4<bool>(false, global0.x, global0.x, false), false), vec4<bool>(true, true, global0.x, global0.x))), reverseBits(vec2<u32>(34119u, 9275u)) ^ (~u_input.d.yx & vec2<u32>(u_input.d.x, 4294967295u)), -1i));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1224f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-726f - -1200f) * 1852f), _wgslsmith_f_op_f32(ceil(-1214f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(842f)), _wgslsmith_f_op_f32(f32(-1f) * -455f))));
    return Struct_2(var_1.c, ~vec2<i32>(-1i, var_1.c.c));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    global1 = arg_1.a.c;
    var var_0 = arg_0;
    var var_1 = arg_2.b;
    var var_2 = arg_2;
    var_0 = _wgslsmith_mod_i32(-(~1i), i32(-1i) * -(i32(-1i) * -arg_0));
    return func_2().a;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1337f)))));
    let var_1 = _wgslsmith_sub_i32(arg_1.c, arg_1.c);
    var var_2 = u_input.b;
    var var_3 = vec3<bool>(true, arg_1.a, global0.x);
    let var_4 = Struct_3(Struct_2(func_4(firstTrailingBit(~(-29692i)), func_2(), Struct_3(func_2(), _wgslsmith_f_op_f32(ceil(-1117f)), ~1i, Struct_2(arg_1, u_input.a.xw))), u_input.e.ww), -350f, var_1, Struct_2(func_4(var_1, func_2(), Struct_3(Struct_2(arg_1, vec2<i32>(arg_1.c, u_input.e.x)), _wgslsmith_f_op_f32(1299f + 2556f), -2147483647i, func_2())), u_input.a.wy));
    return Struct_2(var_4.a.a, -_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(28805i, var_1), abs(vec2<i32>(arg_1.c, 60327i))), var_4.a.b));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_2().a;
    let var_1 = 36276i;
    var var_2 = arg_0;
    let var_3 = min(vec4<i32>(var_1, ~(~var_2.x >> (_wgslsmith_mult_u32(u_input.d.x, u_input.b) % 32u)), ~u_input.e.x, -2147483647i >> (firstLeadingBit(arg_1.a.b.x) % 32u)), u_input.a);
    let var_4 = vec4<f32>(1000f, 3392f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-459f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(453f, -680f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -915f)), -268f)));
    return arg_2.a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec4<i32>) -> Struct_3 {
    global0 = !select(select(!select(vec4<bool>(arg_0.a, global0.x, arg_1.a, global0.x), vec4<bool>(global0.x, arg_0.a, arg_1.a, arg_1.a), vec4<bool>(arg_0.a, arg_1.a, false, false)), !select(vec4<bool>(false, global0.x, global0.x, arg_1.a), vec4<bool>(false, arg_1.a, arg_1.a, false), vec4<bool>(global0.x, false, true, true)), true), !select(select(vec4<bool>(arg_0.a, global0.x, true, false), vec4<bool>(arg_0.a, arg_0.a, false, true), vec4<bool>(true, false, global0.x, arg_0.a)), vec4<bool>(global0.x, global0.x, arg_1.a, true), any(vec3<bool>(arg_1.a, false, true))), vec4<bool>(false, true, arg_0.a, true));
    let var_0 = Struct_1(all(global0.wwx), u_input.d.zx, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, arg_1.c, arg_0.c), arg_3.xwy));
    var var_1 = !var_0.a;
    let var_2 = -12510i;
    let var_3 = 4294967295u;
    return Struct_3(Struct_2(Struct_1(global0.x, ~vec2<u32>(1u, u_input.d.x), var_0.c), min(vec2<i32>(~var_2, firstLeadingBit(arg_2)), vec2<i32>(arg_1.c, -1i))), -548f, -17018i, Struct_2(func_5(-abs(vec3<i32>(1i, var_2, arg_3.x)), Struct_2(arg_1, ~u_input.c.zy), func_2()), firstTrailingBit(_wgslsmith_mod_vec2_i32(max(u_input.e.yz, vec2<i32>(var_0.c, arg_1.c)), abs(vec2<i32>(-11382i, 25957i))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    global0 = !vec4<bool>(any(!select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, false), global0.x)), select(all(!vec4<bool>(true, global0.x, global0.x, false)), !all(vec4<bool>(true, true, global0.x, global0.x)), _wgslsmith_mult_u32(4294967295u, u_input.d.x) != 48995u), true, false);
    let var_1 = u_input.d.yw;
    var var_2 = func_6(func_5(u_input.c, func_1(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.d.xyy, vec3<u32>(u_input.b, u_input.d.x, 49498u), u_input.d.wwy), ~u_input.d.zyy), Struct_1(true, vec2<u32>(4294967295u, 0u) ^ var_1, u_input.a.x), var_1.x, select(!vec4<bool>(global0.x, false, global0.x, global0.x), select(vec4<bool>(global0.x, true, false, false), vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, global0.x, false, false)), global0.x)), func_1(~u_input.d.xwx, Struct_1(func_4(u_input.a.x, Struct_2(Struct_1(false, var_1, u_input.c.x), vec2<i32>(1i, u_input.a.x)), Struct_3(Struct_2(Struct_1(true, vec2<u32>(u_input.b, 99251u), u_input.a.x), vec2<i32>(u_input.a.x, u_input.c.x)), -308f, 9441i, Struct_2(Struct_1(false, vec2<u32>(96387u, 5953u), u_input.a.x), u_input.c.zx))).a, vec2<u32>(var_1.x, var_1.x), u_input.a.x), _wgslsmith_mod_u32(var_1.x, _wgslsmith_div_u32(var_1.x, 0u)), select(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(false, false, false, global0.x), false), select(vec4<bool>(global0.x, true, true, false), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x)), !vec4<bool>(true, false, global0.x, true)))), Struct_1(true, var_1, abs(_wgslsmith_add_i32(u_input.a.x | u_input.a.x, min(-85789i, 0i)))), (i32(-1i) * -2147483647i) >> (0u % 32u), u_input.e);
    var var_3 = u_input.a.xy;
    var var_4 = ~u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-191f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b - var_2.b) + _wgslsmith_f_op_f32(trunc(-1179f)))), u_input.b, 1u, _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(max(772f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(700f)) - var_2.b)))));
}

