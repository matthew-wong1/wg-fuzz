struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec2<bool>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 33319i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec3<i32>) -> u32 {
    let var_0 = arg_2;
    let var_1 = vec4<u32>(max(1u, 34225u), arg_1.a.b >> (1u % 32u), firstLeadingBit(arg_1.a.b), ~countOneBits(max(u_input.c.x, 4294967295u)));
    global0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_3.xx, arg_3.xz) ^ arg_3.x, ~(~firstLeadingBit(u_input.b)));
    global0 = 0i;
    return firstLeadingBit(~(~select(~76159u, 25075u, arg_2.b.x)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = -2147483647i;
    global0 = ~(~42518i) << (abs(_wgslsmith_mod_u32(func_3(_wgslsmith_f_op_f32(-arg_0.a.x), Struct_2(arg_0, u_input.c.x), Struct_4(Struct_3(u_input.c, Struct_1(arg_0.a, 112847u, vec3<f32>(-325f, arg_0.c.x, arg_0.a.x)), Struct_2(arg_0, arg_0.b), arg_0.c), vec3<bool>(arg_1, arg_2, false), true), ~vec3<i32>(u_input.b, u_input.a, 1i)), _wgslsmith_mult_u32(u_input.c.x, max(1u, arg_0.b)))) % 32u);
    global0 = (_wgslsmith_mult_i32(~1i, _wgslsmith_mult_i32(~u_input.a, -37080i)) ^ max(-28390i, u_input.b)) << (4294967295u % 32u);
    var var_1 = Struct_2(Struct_1(arg_0.a, min(~_wgslsmith_mult_u32(4294967295u, 1u), arg_0.b), arg_0.c), firstTrailingBit(_wgslsmith_sub_u32(u_input.c.x, countOneBits(~arg_0.b))));
    var_1 = Struct_2(var_1.a, ~arg_0.b << (1u % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c.x) + _wgslsmith_f_op_f32(step(var_1.a.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.a.a.x))))))));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: i32) -> vec3<bool> {
    let var_0 = Struct_5(Struct_3(~min(vec2<u32>(arg_2.x, 4294967295u), u_input.d & u_input.c), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<f32>(-715f, -2074f), arg_2.x, vec3<f32>(109f, -1139f, -1039f)), true, false)), -1213f), ~arg_0, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2308f, 1000f, 1163f), vec3<f32>(-1881f, 538f, 1172f)))))), Struct_2(Struct_1(vec2<f32>(-694f, -606f), ~0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(1118f, -254f, 1000f) * vec3<f32>(3250f, 1769f, 185f))), 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1734f, 611f, -965f) - vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1432f, _wgslsmith_div_f32(-126f, -487f))), 1749f))), select(vec2<bool>(true, true), vec2<bool>(select(false, true, true), true), vec2<bool>(true, true)), min(arg_1, arg_1 >> (_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, arg_0), u_input.c) % vec2<u32>(32u))), false);
    let var_1 = -2147483647i;
    global0 = ~var_1;
    let var_2 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0, 26482u, var_0.a.b.b, var_0.a.a.x), vec4<u32>(arg_2.x, var_0.a.a.x, var_0.a.a.x, 32416u), ~firstTrailingBit(vec4<u32>(25653u, 0u, 17763u, arg_2.x))), vec4<u32>(79279u, 1u, ~_wgslsmith_mult_u32(1u, u_input.d.x), _wgslsmith_add_u32(0u, arg_2.x << (arg_2.x % 32u))));
    global0 = _wgslsmith_add_i32(arg_3, u_input.b);
    return select(select(vec3<bool>(true, true, var_0.e), !select(vec3<bool>(true, var_0.e, var_0.e), select(vec3<bool>(false, var_0.c.x, true), vec3<bool>(false, true, true), var_0.c.x), select(vec3<bool>(false, true, true), vec3<bool>(var_0.c.x, false, var_0.e), var_0.e)), !select(vec3<bool>(var_0.c.x, var_0.c.x, false), select(vec3<bool>(false, true, var_0.c.x), vec3<bool>(true, false, false), vec3<bool>(true, var_0.e, var_0.c.x)), !vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x))), vec3<bool>(any(!(!vec3<bool>(true, var_0.c.x, false))), !(!var_0.e), !all(!vec4<bool>(var_0.e, false, var_0.c.x, true))), select(select(vec3<bool>(!var_0.c.x, false & var_0.c.x, !var_0.c.x), vec3<bool>(false, all(var_0.c), any(vec4<bool>(var_0.e, false, true, var_0.e))), !select(vec3<bool>(var_0.e, false, var_0.e), vec3<bool>(false, var_0.c.x, var_0.c.x), vec3<bool>(false, true, true))), select(select(!vec3<bool>(true, false, var_0.c.x), !vec3<bool>(var_0.c.x, var_0.e, var_0.e), !vec3<bool>(false, true, var_0.c.x)), !(!vec3<bool>(var_0.e, true, var_0.c.x)), !var_0.c.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec3<bool>(true, false, false));
    let var_1 = _wgslsmith_mult_u32(~u_input.c.x, ~37638u);
    var var_2 = func_1(var_1 | u_input.c.x, min(_wgslsmith_mult_vec2_i32(abs(~vec2<i32>(-258i, -12789i)), vec2<i32>(_wgslsmith_mod_i32(1i, -13166i), _wgslsmith_add_i32(15022i, -1i))), reverseBits(~vec2<i32>(-2147483647i, 2147483647i))), select(~max(select(vec4<u32>(var_1, 4421u, 11501u, 4294967295u), vec4<u32>(11510u, u_input.d.x, 4294967295u, var_1), vec4<bool>(var_0, var_0, true, true)), ~vec4<u32>(var_1, u_input.c.x, var_1, 74971u)), _wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(var_1, u_input.c.x, u_input.d.x, 1u)), min(firstLeadingBit(vec4<u32>(0u, u_input.c.x, var_1, var_1)), vec4<u32>(57460u, var_1, u_input.d.x, u_input.d.x) << (vec4<u32>(1u, 50608u, var_1, 0u) % vec4<u32>(32u)))), !(!select(vec4<bool>(true, false, true, var_0), vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(true, var_0, false, var_0)))), -max(~max(u_input.b, 4886i), -u_input.a | abs(18783i)));
    let var_3 = vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, 1u), 33121u, ~(~27502u), u_input.d.x) & vec4<u32>(countOneBits(~(u_input.d.x >> (70502u % 32u))), _wgslsmith_div_u32(92595u, 418u & var_1) >> (var_1 % 32u), 1u, _wgslsmith_sub_u32(85692u, 1u));
    global0 = select(u_input.b | _wgslsmith_sub_i32(u_input.a, 1i), reverseBits(u_input.b), !select(select(true, true, var_0), false, any(!vec4<bool>(true, false, var_0, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2159f, -1949f, 699f, 507f) * vec4<f32>(-379f, 660f, 2391f, 128f))))))), u_input.a, (vec4<i32>(-1i, -9129i, firstTrailingBit(0i), ~(-8616i)) ^ vec4<i32>(u_input.a << (0u % 32u), countOneBits(-18238i), 2147483647i, min(55791i, 0i))) | ((select(vec4<i32>(-10919i, u_input.b, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.b, -44605i, 14592i), var_0) << (vec4<u32>(3242u, 4294967295u, var_3.x, u_input.c.x) % vec4<u32>(32u))) | ~reverseBits(vec4<i32>(-4508i, 0i, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-237f))))));
}

