struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.d.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f) - -1383f))), -2027f, !(arg_2.a <= 188f) | true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.b + arg_1.b) + vec4<f32>(arg_0.d.b.x, arg_2.a, arg_2.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d.b.x - -266f), arg_1.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-830f)), arg_1.b.x)), !arg_1.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(round(arg_2.b));
    let var_2 = _wgslsmith_clamp_i32(-2147483647i, -4192i, 6473i) & 0i;
    var_0 = Struct_3(_wgslsmith_f_op_f32(round(1036f)), _wgslsmith_f_op_vec4_f32(arg_2.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_1)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f)))), true);
    var_0 = arg_2;
    return _wgslsmith_div_vec4_u32(~arg_0.b, ~select(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 4294967295u, 1u, 44993u), arg_0.c | arg_0.b), ~vec4<u32>(78132u, arg_0.d.c, arg_0.d.c, arg_1.c), !(!vec4<bool>(true, true, arg_2.d, true))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(ceil(1624f));
    var_0 = arg_1.a;
    let var_1 = max(u_input.c, min(~_wgslsmith_div_u32(45634u, u_input.c), ~u_input.c));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -226f)));
    var var_2 = Struct_2(arg_1.d, vec4<u32>(_wgslsmith_mult_u32(var_1, 0u), max(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 1u, u_input.c, var_1), vec4<u32>(var_1, u_input.c, u_input.c, 4294967295u)), _wgslsmith_clamp_u32(12159u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 0u, u_input.c), vec3<u32>(u_input.c, u_input.c, 34276u)), 1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(51455u, u_input.c)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1, u_input.c), vec2<u32>(1u, u_input.c), vec2<u32>(46172u, var_1))), ~vec2<u32>(18097u, u_input.c)), 0u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 64668u, 120180u) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, var_1, var_1), vec3<u32>(u_input.c, u_input.c, 16923u)) % vec3<u32>(32u)), ~(~vec3<u32>(var_1, var_1, var_1))), u_input.c, 1u, _wgslsmith_dot_vec4_u32(func_3(Struct_2(arg_1.d, vec4<u32>(var_1, 0u, var_1, u_input.c), vec4<u32>(25339u, 0u, u_input.c, u_input.c), Struct_1(vec3<bool>(false, false, true), vec4<f32>(518f, -1570f, -1602f, 779f), u_input.c, false)), Struct_1(vec3<bool>(true, false, false), vec4<f32>(arg_1.b.x, arg_1.c, arg_1.c, arg_1.c), 1u, false), Struct_3(-706f, vec4<f32>(arg_1.c, 483f, arg_1.c, arg_1.b.x), arg_1.c, true)), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_1, 90786u, 0u, var_1), vec4<u32>(0u, var_1, 33709u, var_1))))), Struct_1(vec3<bool>(false, !arg_1.d, select(true, arg_1.d && false, true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b)))), max(45537u, var_1 >> (40337u % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + arg_1.c))));
    return true;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(667f, 102f, 635f), vec3<f32>(-849f, 997f, -819f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-636f, -104f, 190f), vec3<f32>(1023f, -418f, 1574f), vec3<bool>(false, false, true))), func_2(vec4<i32>(2147483647i, -33952i, u_input.b.x, u_input.d), Struct_3(-158f, vec4<f32>(1000f, 1424f, -1266f, 1114f), -1531f, false), 1i)))))));
    let var_1 = true;
    var var_2 = Struct_3(-1628f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-656f, var_0.x, var_0.x, 272f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1380f, var_0.x, var_0.x, -1000f) + vec4<f32>(1236f, 554f, -755f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -1296f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 1641f)))), var_0.x, all(vec4<bool>(var_1, all(!vec2<bool>(var_1, var_1)), false, all(vec3<bool>(var_1, var_1, true)))));
    let var_3 = _wgslsmith_sub_i32(u_input.b.x, max(u_input.b.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, 2147483647i, u_input.d), select(select(vec3<i32>(-1i, u_input.b.x, 1i), vec3<i32>(-1i, u_input.d, u_input.a.x), var_1), _wgslsmith_mod_vec3_i32(vec3<i32>(58980i, u_input.d, u_input.d), vec3<i32>(u_input.a.x, u_input.d, 32081i)), !vec3<bool>(false, false, var_2.d)))));
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1282f)))));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(0i, (_wgslsmith_mod_i32(~1i, _wgslsmith_mult_i32(u_input.a.x, -2063i)) ^ u_input.d) << (u_input.c % 32u));
    let var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, -36924i, -2147483647i) & vec3<i32>(u_input.a.x, 9212i, u_input.b.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.d, -1i), vec3<i32>(u_input.d, u_input.b.x, -31761i)))), ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, -41763i), vec4<i32>(17206i, u_input.a.x, u_input.b.x, u_input.d))) & _wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 6014i, u_input.d), vec4<i32>(35483i, 2147483647i, 1i, u_input.a.x))), vec4<i32>(u_input.d, func_1(), ~u_input.d, u_input.a.x)), _wgslsmith_mult_vec2_u32(firstTrailingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 56376u), vec2<u32>(50059u, 20838u))), vec2<u32>(func_3(Struct_2(true, vec4<u32>(var_1, 5064u, 54541u, u_input.c), vec4<u32>(var_1, u_input.c, 1u, var_1), Struct_1(vec3<bool>(true, false, false), vec4<f32>(-1060f, 1223f, -276f, 145f), 1u, false)), Struct_1(vec3<bool>(false, true, false), vec4<f32>(623f, -244f, 393f, 1124f), 49355u, false), Struct_3(231f, vec4<f32>(-661f, 1449f, 605f, -201f), 419f, true)).x, var_1)), firstLeadingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -2147483647i), u_input.b)));
}

