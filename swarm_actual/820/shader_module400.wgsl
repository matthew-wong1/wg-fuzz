struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> bool {
    var var_0 = -1000f;
    return false;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-437f, 769f) + vec2<f32>(-784f, -605f)))))), vec2<f32>(-1197f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(661f)))))), false));
    var var_1 = Struct_4(Struct_3(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, global1.a.x, global1.a.x), ~vec3<i32>(global1.a.x, 6852i, global1.a.x)), ~(i32(-1i) * -2147483647i)), Struct_2(select(vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(false, false, global0.x), vec3<bool>(false, global0.x, false), global0.x), !vec3<bool>(false, global0.x, true)), _wgslsmith_div_i32(23153i, -57223i) | _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, -80853i), vec2<i32>(global1.a.x, 1i)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(9046u, 4294967295u), vec2<u32>(u_input.b.x, 70504u)), 53936u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.b.xx)), vec4<bool>(true, global0.x || global0.x, global0.x, true))), select(select(select(!vec3<bool>(false, false, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), true), !select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(any(select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, true, true, true))), global0.x, any(vec4<bool>(true, global0.x, false, true))), select(vec3<bool>(true, true, var_0.x >= 1683f), !(!vec3<bool>(global0.x, global0.x, global0.x)), !select(vec3<bool>(global0.x, true, true), vec3<bool>(true, global0.x, true), global0.x))), Struct_2(select(select(select(vec3<bool>(true, true, true), vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, true))), vec3<bool>(false, true, true), global0.x), ~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, 2147483647i, global1.a.x, -6390i), vec4<i32>(-26021i, 0i, -55420i, global1.a.x))), u_input.b.xxx, select(select(!vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(global0.x, false, global0.x, true), false), vec4<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, false)), true, global0.x, global0.x), select(!vec4<bool>(true, global0.x, true, global0.x), !vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(false, global0.x, true, false)))), Struct_3(countOneBits(0i), Struct_2(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), !global0.x), -17318i, ~(~vec3<u32>(u_input.b.x, u_input.a.x, 12416u)), !(!vec4<bool>(global0.x, global0.x, true, false)))), global0.x);
    let var_2 = var_0.x;
    var_1 = Struct_4(var_1.a, vec3<bool>(true, !(!global0.x), true), Struct_2(vec3<bool>(!func_2(), global0.x, true), abs(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-37724i, var_1.a.b.b, global1.a.x), vec3<i32>(var_1.d.b.b, var_1.c.b, -12725i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, global1.a.x), vec3<i32>(global1.a.x, var_1.d.a, global1.a.x)))), abs(~reverseBits(u_input.b.zwx)), vec4<bool>(all(select(global0.zy, vec2<bool>(var_1.e, var_1.a.b.d.x), true)), false, false, false && !global0.x)), Struct_3(-(73382i << (_wgslsmith_mod_u32(4294967295u, u_input.b.x) % 32u)), Struct_2(!var_1.a.b.d.yzz, max(var_1.d.b.b, firstTrailingBit(var_1.d.a)), var_1.d.b.c, select(select(vec4<bool>(false, global0.x, global0.x, global0.x), var_1.d.b.d, var_1.c.d), var_1.c.d, var_1.a.b.d))), true);
    var_1 = Struct_4(var_1.a, vec3<bool>(all(global0.xx), global0.x, false), Struct_2(select(!vec3<bool>(global0.x, var_1.b.x, false), !vec3<bool>(var_1.c.d.x, true, global0.x), select(select(var_1.c.a, vec3<bool>(global0.x, false, false), var_1.d.b.d.wxy), !var_1.c.a, var_1.a.b.d.wxw)), global1.a.x, vec3<u32>(1u, ~(~var_1.d.b.c.x), ~358u), var_1.d.b.d), Struct_3(~(-1i), Struct_2(select(vec3<bool>(false, global0.x, true), !var_1.a.b.d.xyw, select(vec3<bool>(var_1.b.x, false, var_1.e), var_1.c.a, false)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(15824i, global1.a.x, global1.a.x, 0i), vec4<i32>(var_1.c.b, var_1.d.b.b, var_1.c.b, -24681i), vec4<i32>(var_1.a.a, global1.a.x, var_1.c.b, var_1.d.a)), -vec4<i32>(global1.a.x, global1.a.x, var_1.c.b, -2147483647i)), _wgslsmith_mult_vec3_u32(vec3<u32>(57895u, var_1.d.b.c.x, 4294967295u), ~vec3<u32>(var_1.a.b.c.x, 26770u, 21103u)), select(var_1.d.b.d, !vec4<bool>(global0.x, true, true, var_1.d.b.d.x), vec4<bool>(global0.x, global0.x, global0.x, false)))), var_1.e);
    return -1867f;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: f32, arg_3: f32) -> bool {
    let var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(abs(abs(vec4<i32>(global1.a.x, -1i, global1.a.x, 1i))), _wgslsmith_sub_vec4_i32(~max(vec4<i32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec4<i32>(-36144i, global1.a.x, global1.a.x, global1.a.x)), vec4<i32>(global1.a.x, 6254i, global1.a.x, 27166i | global1.a.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(~2147483647i, min(global1.a.x, global1.a.x), -22139i, -10290i), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(0i, global1.a.x, 0i, global1.a.x), vec4<i32>(2147483647i, 2147483647i, global1.a.x, -40835i)))));
    var var_1 = vec3<bool>(global0.x, func_2(), !(!global0.x));
    let var_2 = u_input.b.yyw;
    global0 = vec3<bool>(any(vec4<bool>(func_2(), true, true & var_1.x, !global0.x)) | true, (var_2.x & abs(var_2.x)) == ~(~(~var_2.x)), !func_2());
    var_1 = select(!vec3<bool>(!var_1.x, true, global0.x), vec3<bool>(global0.x || var_1.x, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3)), _wgslsmith_f_op_f32(func_3())) != arg_3), !(any(!var_1.yx) || all(!vec4<bool>(true, false, var_1.x, var_1.x))));
    return false | var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f)), 1704f)))));
    let var_1 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, -1000f) - vec4<f32>(var_0, var_0, var_0, -2748f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -484f, var_0, -1739f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1176f, var_0, var_0, -500f)))) * vec4<f32>(var_0, _wgslsmith_f_op_f32(select(var_0, 307f, false)), _wgslsmith_f_op_f32(-1266f + 623f), _wgslsmith_f_op_f32(339f + -366f)))), ~24154u, 543f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))));
    let var_2 = u_input.b;
    global0 = vec3<bool>(func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)), vec4<f32>(var_0, var_0, 553f, -820f), !var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, -1407f, var_0, var_0))))), u_input.b.x | u_input.a.x, 449f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0))), global0.x, !global0.x);
    global0 = !(!select(vec3<bool>(any(vec3<bool>(true, global0.x, false)), !global0.x, global0.x), !vec3<bool>(false, var_1, false), all(vec4<bool>(true, true, true, true))));
    var var_3 = vec2<bool>(var_1, !var_1 || true);
    var_3 = vec2<bool>(true != !var_1, global0.x);
    let var_4 = _wgslsmith_mult_vec4_i32(-vec4<i32>(-6814i, _wgslsmith_dot_vec2_i32(global1.a, global1.a), _wgslsmith_dot_vec3_i32(-vec3<i32>(global1.a.x, -2147483647i, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global1.a.x, global1.a.x), vec3<i32>(global1.a.x, global1.a.x, 1i), vec3<i32>(2147483647i, global1.a.x, 2147483647i))), abs(~(-1i))), vec4<i32>(global1.a.x, global1.a.x, _wgslsmith_mod_i32(global1.a.x & select(global1.a.x, global1.a.x, false), -48174i >> (0u % 32u)), global1.a.x));
    global1 = Struct_1(min(vec2<i32>(i32(-1i) * -1i, var_4.x), ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.a.x, 0i), vec2<i32>(0i, global1.a.x), vec2<i32>(10649i, global1.a.x)) & var_4.wy)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~0u) | ~countOneBits(1u), ~vec2<u32>(_wgslsmith_clamp_u32(~u_input.b.x, var_2.x, u_input.b.x), ~(u_input.b.x << (13026u % 32u))));
}

