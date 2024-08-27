struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_3(vec2<i32>(u_input.b, _wgslsmith_sub_i32(1i, -arg_0.e)), select(select(select(select(arg_0.c.xz, vec2<bool>(false, false), arg_0.c.x), arg_0.c.wy, select(vec2<bool>(true, false), vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.c.x)), select(!vec2<bool>(true, arg_0.c.x), select(arg_0.c.yy, vec2<bool>(arg_0.c.x, arg_0.c.x), false), arg_0.c.x), arg_0.c.x), vec2<bool>(1i == u_input.b, false), !(!vec2<bool>(arg_0.c.x, false))), arg_0);
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>((i32(-1i) * -46764i) & (-1i & u_input.b), arg_0.e, -37956i), _wgslsmith_mult_vec3_i32(vec3<i32>(abs(34714i), arg_0.e, 11906i), vec3<i32>(i32(-1i) * -19514i, -40447i, 13519i | var_0.a.x))) << (abs(~4294967295u) % 32u);
    var_1 = -28455i;
    var var_2 = false;
    var var_3 = 4222u;
    return _wgslsmith_mult_u32(~u_input.c.x, 37083u);
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> f32 {
    let var_0 = vec2<i32>((~34695i & (_wgslsmith_add_i32(-37483i, u_input.b) & 61344i)) << (0u % 32u), -26653i);
    let var_1 = ~(min(select(u_input.a.x ^ arg_0.x, 61706u, select(false, true, false)), _wgslsmith_mod_u32(~4294967295u, 1u)) << (~1u % 32u));
    let var_2 = firstTrailingBit(vec2<u32>(abs(3264u), _wgslsmith_dot_vec4_u32(~vec4<u32>(11136u, 1u, 0u, var_1), vec4<u32>(~u_input.a.x, _wgslsmith_mod_u32(39885u, arg_0.x), var_1, min(arg_0.x, arg_0.x)))));
    let var_3 = Struct_2(select(~(min(vec4<u32>(34136u, 54071u, arg_0.x, arg_0.x), vec4<u32>(54657u, 1u, arg_0.x, 4294967295u)) | (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 23734u) << (vec4<u32>(var_1, 4294967295u, var_1, var_2.x) % vec4<u32>(32u)))), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 64758u), arg_0), 47096u, max(_wgslsmith_mult_u32(1u, 10556u), u_input.c.x), 25047u), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), true), false)), select(vec4<bool>(true, true, var_0.x == u_input.b, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, true, true)), any(vec4<bool>(false, true, false, true))), reverseBits(vec3<i32>(var_0.x, var_0.x, -1i)));
    global0 = array<Struct_3, 25>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(732f, arg_1)), 1f)) * 1508f)) + 320f);
}

fn func_4(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-504f, arg_0, -295f) - vec3<f32>(-168f, arg_0, arg_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1734f, -581f, 627f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1992f), _wgslsmith_f_op_f32(f32(-1f) * -1393f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-355f + arg_0), arg_0, arg_0) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -985f, arg_0), vec3<f32>(arg_0, -386f, arg_0))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -946f, -1000f)))));
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(arg_0)), vec3<u32>(_wgslsmith_mod_u32(~u_input.c.x ^ (u_input.a.x & 61427u), ~max(1u, u_input.a.x)), func_2(Struct_1(-836f, u_input.a, vec4<bool>(true, true, true, false), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1257f, -1000f, var_0.x), vec3<f32>(arg_0, -1541f, -972f))), _wgslsmith_add_i32(-1i, u_input.b))), u_input.c.x & _wgslsmith_mod_u32(firstTrailingBit(1u), abs(7555u))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), all(vec2<bool>(false, false))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), arg_0 < -2045f), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0, vec3<f32>(279f, 1321f, 238f))) * var_0) * _wgslsmith_f_op_vec3_f32(-var_0))), _wgslsmith_mod_i32(56476i, u_input.b));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, var_0.x))))), u_input.c, select(var_1.c, select(var_1.c, !vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, true), var_1.c.x), !select(select(vec4<bool>(var_1.c.x, true, false, true), vec4<bool>(var_1.c.x, false, false, false), true), select(vec4<bool>(var_1.c.x, var_1.c.x, true, true), vec4<bool>(var_1.c.x, true, var_1.c.x, false), var_1.c), var_1.c)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_div_f32(199f, var_0.x), var_0.x), ~var_1.e);
    return -(var_2.e << (var_2.b.x % 32u));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(780f, 1462f) * 811f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(232f, _wgslsmith_f_op_f32(select(1053f, 1686f, false)))))), all(arg_1.b.yxx)));
    let var_1 = all(arg_1.b.zyx);
    global0 = array<Struct_3, 25>();
    return Struct_2(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, arg_1.a.x, u_input.c.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), (select(vec4<u32>(7096u, arg_1.a.x, arg_1.a.x, 0u), arg_1.a, vec4<bool>(false, true, true, true)) ^ ~vec4<u32>(u_input.c.x, 1u, 4294967295u, u_input.c.x)) >> (arg_1.a % vec4<u32>(32u))), vec4<bool>(true == !all(arg_1.b.xx), u_input.c.x >= 0u, any(arg_1.b.wzx), true), _wgslsmith_mod_vec3_i32(min(_wgslsmith_div_vec3_i32(~vec3<i32>(0i, arg_1.c.x, u_input.b), -arg_1.c), abs(arg_1.c)), min(-vec3<i32>(-1i, 2147483647i, arg_0) | arg_1.c, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.b, 2147483647i), ~arg_1.c))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = 1i;
    let var_1 = func_5(func_4(_wgslsmith_f_op_f32(func_3(vec3<u32>(func_2(Struct_1(arg_0, u_input.c, vec4<bool>(true, true, true, false), vec3<f32>(arg_0, -380f, -1115f), -2147483647i)), _wgslsmith_add_u32(u_input.c.x, 4294967295u), _wgslsmith_sub_u32(u_input.a.x, 1u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -574f)))))), Struct_2(vec4<u32>(1u, reverseBits(u_input.a.x << (4294967295u % 32u)), u_input.c.x, u_input.a.x), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), true), vec4<bool>(true, true, true, true)), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, 8636i, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -2459i)), -1i))));
    let var_2 = countOneBits(firstLeadingBit(var_1.a.x));
    let var_3 = Struct_1(arg_0, ~var_1.a.yxx, !(!var_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(arg_0))))), u_input.b);
    let var_4 = ~(-24853i);
    return var_1;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_2 {
    global0 = array<Struct_3, 25>();
    var var_0 = func_1(-602f).b.xy;
    var_0 = vec2<bool>(arg_0.b.x, select(true && (~arg_0.c.x >= _wgslsmith_mod_i32(8264i, 25834i)), false, arg_2.b.x));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(1f)), ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, arg_0.a.x, 1u), vec3<u32>(0u, arg_2.a.x, 18354u))), arg_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1453f, -508f, 160f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-318f, 1675f, -295f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1830f, -1000f, 1734f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-729f, 238f, 216f) - vec3<f32>(1464f, 1399f, -1855f)))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(411f, _wgslsmith_f_op_f32(func_3(vec3<u32>(arg_1.x, 1u, 13541u), 486f)), _wgslsmith_f_op_f32(abs(-322f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(474f, 1000f, 1232f) * vec3<f32>(462f, 691f, 860f))))))), func_5(u_input.b, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-847f))))).c.x);
    var_0 = var_1.c.wx;
    return Struct_2(min(firstTrailingBit(_wgslsmith_mod_vec4_u32(~arg_0.a, select(arg_1, vec4<u32>(arg_1.x, 0u, var_1.b.x, 31807u), vec4<bool>(false, false, true, arg_0.b.x)))), arg_0.a), var_1.c, firstLeadingBit(_wgslsmith_mult_vec3_i32(arg_0.c, vec3<i32>(var_1.e, arg_2.c.x, u_input.b) & vec3<i32>(657i, arg_0.c.x, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(517f), ~_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x)), min(vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x), vec4<u32>(u_input.c.x, 20763u, u_input.a.x, 12034u)), select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 0u), vec4<bool>(true, true, false, true))) ^ ~min(vec4<u32>(9660u, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, 113u, u_input.c.x), vec4<u32>(u_input.c.x, 1u, 17073u, 0u))), func_1(_wgslsmith_f_op_f32(step(-334f, -477f))));
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    let var_1 = 153f;
    let x = u_input.a;
    s_output = StorageBuffer(((vec4<i32>(-53674i, u_input.b, u_input.b, -23142i) ^ -vec4<i32>(17527i, -31049i, u_input.b, var_0.c.x)) | (-vec4<i32>(var_0.c.x, var_0.c.x, u_input.b, u_input.b) ^ ~vec4<i32>(0i, var_0.c.x, u_input.b, var_0.c.x))) << (vec4<u32>(1u, firstTrailingBit(_wgslsmith_mod_u32(72122u, 35153u)), firstLeadingBit(~u_input.a.x), abs(_wgslsmith_add_u32(39892u, 0u))) % vec4<u32>(32u)));
}

