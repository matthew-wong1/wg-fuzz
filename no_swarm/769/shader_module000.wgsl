struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec3<u32>,
    d: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: Struct_4,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: Struct_5) -> vec4<bool> {
    let var_0 = countOneBits(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_div_u32(min(1u, 2501u), 1u)), arg_2.d.d));
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-330f + -1000f)) < arg_0.d.a.x, true, !((select(14980u, u_input.a, arg_0.d.b.a.x) >> (arg_0.d.d % 32u)) != 42515u), arg_2.d.b.b.a);
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_2.a.x, _wgslsmith_div_i32(~39721i, _wgslsmith_mult_i32(arg_0.b.x, ~59984i))), arg_2.a | (firstTrailingBit(arg_2.b) ^ abs(_wgslsmith_mult_vec3_i32(arg_2.a, vec3<i32>(0i, 0i, arg_0.b.x)))));
    let var_3 = vec3<bool>(true, arg_2.d.b.a.x, (_wgslsmith_div_u32(arg_0.d.c.x, ~21163u) > ~(arg_0.d.d | 15906u)) || !var_1.x);
    var var_4 = arg_2.e;
    return select(!(!(!select(var_1, vec4<bool>(false, arg_0.d.b.b.a, true, false), vec4<bool>(false, true, false, arg_2.d.b.a.x)))), select(vec4<bool>(_wgslsmith_mod_u32(arg_1.x, 77159u) != 4294967295u, any(!arg_2.d.b.a.zx), var_1.x, var_3.x), arg_2.d.b.a, vec4<bool>(false, !(var_1.x && var_1.x), all(arg_2.d.b.a.xx), false)), select(!(!vec4<bool>(var_3.x, arg_2.d.b.b.a, arg_0.d.b.b.a, arg_0.d.b.b.a)), vec4<bool>(var_1.x, (1041f >= arg_2.d.a.x) && arg_0.d.b.b.a, any(!vec3<bool>(arg_0.d.b.a.x, var_3.x, arg_2.d.b.a.x)), arg_2.d.b.a.x), all(vec3<bool>(true, true, true))));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    global0 = _wgslsmith_dot_vec3_i32(arg_0, ~(-(vec3<i32>(-1i, arg_0.x, arg_0.x) << ((vec3<u32>(u_input.b.x, u_input.b.x, arg_1) | vec3<u32>(u_input.a, u_input.a, arg_1)) % vec3<u32>(32u)))));
    let var_0 = !any(!func_3(Struct_5(vec3<i32>(51090i, -25605i, arg_0.x), arg_0, arg_0.x, Struct_4(vec2<f32>(-626f, 953f), Struct_3(vec4<bool>(true, false, false, false), Struct_1(true)), vec3<u32>(57750u, u_input.b.x, 0u), 4294967295u), -2147483647i), ~vec4<u32>(arg_1, 39324u, u_input.a, 0u), Struct_5(vec3<i32>(83487i, arg_0.x, 43749i), arg_0, arg_0.x, Struct_4(vec2<f32>(337f, -1012f), Struct_3(vec4<bool>(false, false, false, false), Struct_1(false)), vec3<u32>(74196u, 10354u, u_input.b.x), arg_1), -2147483647i)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(680f, -1157f, 576f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(324f, 486f, 509f), vec3<f32>(267f, 1750f, -736f)))), vec3<f32>(788f, _wgslsmith_f_op_f32(min(-2061f, -1426f)), _wgslsmith_f_op_f32(-992f - 1828f)), !vec3<bool>(var_0, var_0, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-784f, 364f, 230f)), vec3<f32>(-700f, 686f, 651f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, -1660f, -632f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1333f, 1043f, -1000f) + vec3<f32>(-338f, -626f, 268f))))));
    let var_2 = Struct_5(arg_0, _wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(arg_0.x, 4277i, 1i))), arg_0.x), arg_0), -19534i, Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_1.x), vec2<f32>(var_1.x, var_1.x)), vec2<f32>(var_1.x, var_1.x), vec2<bool>(var_0, false))), vec2<f32>(var_1.x, var_1.x)), Struct_3(func_3(Struct_5(vec3<i32>(-2147483647i, 2147483647i, arg_0.x), arg_0, 2147483647i, Struct_4(var_1.yx, Struct_3(vec4<bool>(true, false, true, true), Struct_1(var_0)), vec3<u32>(u_input.b.x, arg_1, arg_1), u_input.a), 1i), _wgslsmith_mod_vec4_u32(vec4<u32>(4281u, 41522u, u_input.b.x, 5807u), vec4<u32>(50210u, arg_1, arg_1, u_input.b.x)), Struct_5(arg_0, vec3<i32>(arg_0.x, arg_0.x, 1i), arg_0.x, Struct_4(vec2<f32>(284f, var_1.x), Struct_3(vec4<bool>(var_0, var_0, true, false), Struct_1(true)), vec3<u32>(arg_1, arg_1, 83402u), 11921u), arg_0.x)), Struct_1(var_0)), ~(~(~vec3<u32>(49630u, 4294967295u, u_input.b.x))), _wgslsmith_add_u32(4570u, 0u & u_input.a)), -21022i);
    global0 = -(-2147483647i & select(var_2.e, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, -27962i, 2147483647i, var_2.a.x), vec4<i32>(var_2.b.x, arg_0.x, var_2.c, var_2.b.x), vec4<i32>(-1i, -2147483647i, -32332i, var_2.e)), vec4<i32>(var_2.e, 1i, arg_0.x, -1i)), true));
    return -21814i & _wgslsmith_mult_i32(var_2.b.x, -_wgslsmith_add_i32(arg_0.x & arg_0.x, 7571i));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-countOneBits(vec3<i32>(1i, 1i, 1i)), -(~vec3<i32>(1i, 1i, 1i))), vec3<i32>(~(-10810i), i32(-1i) * -2147483647i, func_2(vec3<i32>(1i, 1i, 1i), ~26066u >> (~u_input.b.x % 32u))));
    global0 = 2147483647i;
    let var_0 = ~28284u;
    global0 = 1i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(836f, -485f, -356f)))), vec3<f32>(_wgslsmith_f_op_f32(1470f - _wgslsmith_f_op_f32(ceil(-1539f))), -537f, _wgslsmith_f_op_f32(ceil(-2185f))))));
    return _wgslsmith_f_op_f32(-var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = _wgslsmith_f_op_f32(-591f - _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(698f)) * var_0))));
    var var_2 = _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(-41064i, ~(-12614i)), -1i), -5826i);
    global0 = ~min(~_wgslsmith_div_i32(firstTrailingBit(2147483647i), ~39762i), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(16851i, 2147483647i, 2147483647i), vec3<i32>(1i, -2147483647i, 28918i)), 1i, ~1i));
    let var_3 = !(u_input.b.x >= 4294967295u);
    var var_4 = 1427f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 729f, var_1))))));
}

