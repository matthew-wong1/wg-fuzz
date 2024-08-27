struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(1009f, -233f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -690f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-212f)), 268f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1714f, 1387f))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(806f * 2098f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(478f, -278f)) + _wgslsmith_f_op_f32(f32(-1f) * -1503f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -270f)))), _wgslsmith_f_op_f32(trunc(443f))));
    return ~(~(vec3<u32>(u_input.b.x, ~u_input.a, global0.x) >> ((vec3<u32>(global0.x, 2866u, 66480u) & min(u_input.b, u_input.b)) % vec3<u32>(32u))));
}

fn func_2(arg_0: Struct_4) -> bool {
    global0 = vec3<u32>(42493u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.a.b, u_input.b), ~(~vec3<u32>(72020u, 1u, arg_0.a.a.d))), u_input.b.x);
    global0 = vec3<u32>(global0.x & 43323u, ~abs(arg_0.a.a.d), abs(18263u));
    var var_0 = arg_0.a.a.d;
    global0 = func_3();
    global0 = vec3<u32>(arg_0.a.b.x, ~arg_0.a.c.d, global0.x) | ~arg_0.a.b;
    return true;
}

fn func_1() -> Struct_1 {
    return Struct_1(abs(select(-27566i, ~(~42587i), global0.x == 8103u)), vec3<bool>(true, func_2(Struct_4(Struct_3(Struct_1(-2147483647i, vec3<bool>(true, false, true), vec3<f32>(-683f, 506f, -1589f), 4294967295u), vec3<u32>(global0.x, 33420u, global0.x), Struct_1(30613i, vec3<bool>(true, false, true), vec3<f32>(1909f, -1498f, -453f), 0u), 2147483647i))), true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1781f, -468f, -324f) * vec3<f32>(-1956f, -2167f, -3617f))))))), _wgslsmith_dot_vec2_u32(min(u_input.b.yx, vec2<u32>(~u_input.b.x, ~2288u)), global0.xx));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    var var_0 = arg_2.d.x;
    var_0 = -187f;
    let var_1 = Struct_4(Struct_3(arg_0, ~u_input.b, func_1(), -36938i));
    let var_2 = Struct_4(var_1.a);
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(func_1().d, arg_0.d), 17174u);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-_wgslsmith_add_i32(1i, -(~45948i)), func_4(func_1(), true, Struct_2(u_input.b.x ^ 4294967295u, countOneBits(u_input.b.x), Struct_1(-2147483647i, vec3<bool>(false, false, true), vec3<f32>(971f, -1029f, 1399f), 4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2125f, -197f, 1335f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-324f, 1000f, 451f))), Struct_2(1u, global0.x, func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(515f, -524f, 160f)), vec3<f32>(-103f, 508f, -1000f))) ^ min(-1i, -(~(-1i))), true);
    var var_1 = Struct_4(Struct_3(func_1(), u_input.b, Struct_1(1i, !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<f32>(_wgslsmith_f_op_f32(995f * -2269f), _wgslsmith_f_op_f32(step(-498f, 907f)), 1000f), global0.x), 16439i));
    let var_2 = var_1.a.c.c.yz;
    let var_3 = Struct_4(Struct_3(func_1(), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a | var_1.a.b.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 1u, u_input.a)), 1u), vec3<u32>(1u, func_3().x, ~var_1.a.c.d), vec3<u32>(_wgslsmith_sub_u32(u_input.a, 1u), _wgslsmith_mod_u32(var_1.a.b.x, global0.x), 1u)), var_1.a.a, var_0 | 1i));
    global0 = ~select(vec3<u32>(_wgslsmith_mod_u32(global0.x, ~61662u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_1.a.c.d), u_input.b.yx), 1u), var_3.a.b, vec3<bool>(var_1.a.a.b.x, any(select(var_1.a.a.b.zx, vec2<bool>(var_3.a.c.b.x, true), vec2<bool>(var_3.a.a.b.x, var_1.a.c.b.x))), any(!vec4<bool>(false, var_3.a.c.b.x, false, var_1.a.c.b.x))));
    var_1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(4759i, var_0, select(min(firstLeadingBit(0i), ~var_0), 1i, true)), _wgslsmith_div_u32(u_input.b.x, ~(~var_3.a.b.x)), vec2<f32>(886f, _wgslsmith_f_op_f32(var_3.a.c.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.c.c.x * -129f)))), func_1().d, _wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(_wgslsmith_sub_i32(var_3.a.a.a, -2561i)), var_0, ~_wgslsmith_add_i32(-41128i, var_3.a.d)), firstTrailingBit(_wgslsmith_div_vec3_i32(select(vec3<i32>(-3197i, 0i, var_0), vec3<i32>(17649i, var_3.a.a.a, var_1.a.a.a), false), -vec3<i32>(-2147483647i, -51682i, var_3.a.c.a)))));
}

