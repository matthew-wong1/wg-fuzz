struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(false, vec2<bool>(true, false)), Struct_5(true, vec2<bool>(true, true)), Struct_5(false, vec2<bool>(false, false)), Struct_5(true, vec2<bool>(false, true)), Struct_5(false, vec2<bool>(true, false)), Struct_5(true, vec2<bool>(true, false)), Struct_5(false, vec2<bool>(false, false)), Struct_5(false, vec2<bool>(true, false)), Struct_5(true, vec2<bool>(false, false)), Struct_5(false, vec2<bool>(false, false)), Struct_5(false, vec2<bool>(true, false)), Struct_5(false, vec2<bool>(false, false)), Struct_5(false, vec2<bool>(false, true)), Struct_5(true, vec2<bool>(false, false)), Struct_5(true, vec2<bool>(true, false)), Struct_5(false, vec2<bool>(false, false)), Struct_5(false, vec2<bool>(true, false)));

var<private> global1: Struct_1 = Struct_1(vec2<u32>(28913u, 1u), 14912i);

var<private> global2: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: bool) -> i32 {
    let var_0 = 14137u;
    var var_1 = arg_2;
    let var_2 = _wgslsmith_sub_vec2_u32(abs(firstLeadingBit(select(vec2<u32>(4294967295u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, global1.a.x), u_input.a.zz, u_input.a.zx), vec2<bool>(true, arg_1.b.x)))), u_input.a.yx);
    global1 = Struct_1(var_2, _wgslsmith_div_i32(abs(_wgslsmith_mult_i32(min(u_input.c, global1.b), countOneBits(-11074i))), -13858i));
    var var_3 = 4294967295u;
    return -59969i;
}

fn func_2() -> Struct_3 {
    return Struct_3(vec2<bool>(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(232f + 3030f))) < 1099f), Struct_1(~u_input.a.yz, func_3(Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 492i, global1.b, 0i), vec4<i32>(global1.b, u_input.c, -58999i, u_input.c)), min(global1.b, 1i)), Struct_5(true, vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(363f, -128f, 1228f)), true)), vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, ~(~global1.a.x)), ~(~(~11286u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -431f), _wgslsmith_f_op_f32(617f * -2324f), -856f))))), all(vec2<bool>(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_4(Struct_1(~(~(~global1.a)), _wgslsmith_mult_i32(1i, select(u_input.c, ~arg_1.b.b, arg_1.a.x))));
    var var_1 = -924f;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, _wgslsmith_div_f32(func_2().d.x, _wgslsmith_f_op_f32(f32(-1f) * -843f)), _wgslsmith_f_op_f32(func_2().d.x + _wgslsmith_f_op_f32(f32(-1f) * -306f)), arg_0.x) * _wgslsmith_f_op_vec4_f32(-arg_0));
    let var_3 = Struct_2(-select(~(~vec4<i32>(var_0.a.b, arg_1.b.b, u_input.c, u_input.c)), abs(vec4<i32>(1842i, -1i, var_0.a.b, arg_1.b.b)), !arg_1.e), 43076i);
    global2 = _wgslsmith_add_u32(abs(1u), u_input.b);
    return Struct_4(func_2().b);
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_4 {
    var var_0 = vec3<i32>(1i, _wgslsmith_clamp_i32(global1.b, 24756i >> (global1.a.x % 32u), u_input.c), _wgslsmith_clamp_i32(countOneBits(0i), ~min(global1.b, u_input.c ^ global1.b), _wgslsmith_add_i32(min(-49818i, -12092i), -41017i)));
    let var_1 = Struct_1(abs(select(firstTrailingBit(select(vec2<u32>(arg_1, arg_0), vec2<u32>(arg_1, 0u), vec2<bool>(false, false))), ~vec2<u32>(global1.a.x, 4294967295u), true || (u_input.a.x == 70536u))), ~(~_wgslsmith_mult_i32(-u_input.c, _wgslsmith_dot_vec2_i32(var_0.yy, vec2<i32>(global1.b, 1i)))));
    global0 = array<Struct_5, 17>();
    return func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(514f, -179f, 1197f, 124f), vec4<f32>(-800f, -784f, -132f, -487f))))), func_2());
}

fn func_5(arg_0: Struct_4, arg_1: f32) -> Struct_1 {
    let var_0 = vec2<i32>(54618i, firstTrailingBit(~func_2().b.b));
    global1 = arg_0.a;
    global1 = Struct_1(~arg_0.a.a, -_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(global1.b, 0i), firstLeadingBit(27239i)), var_0));
    let var_1 = Struct_3(vec2<bool>(true, any(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))), Struct_1(vec2<u32>(~(~global1.a.x), abs(~44224u)), -19408i), abs(u_input.a.xz), func_2().d, !(_wgslsmith_sub_i32(-22331i, -1i) > arg_0.a.b));
    var var_2 = Struct_5(false, select(func_2().a, !var_1.a, func_2().a));
    return arg_0.a;
}

fn func_6(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(arg_2.d));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-441f, -1919f, _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_vec3_f32(floor(arg_2.d)));
    global1 = arg_2.b;
    global1 = func_1(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(57726u, _wgslsmith_mult_u32(26319u, 61375u | global1.a.x))), _wgslsmith_sub_u32(~3324u, 33165u)).a;
    let var_1 = func_2();
    return Struct_2(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, arg_2.b.b, 0i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.b.b, global1.b, 2147483647i, -2147483647i), vec4<i32>(-2147483647i, 2147483647i, 539i, var_1.b.b)), vec4<i32>(var_1.b.b, arg_2.b.b, arg_2.b.b, u_input.c)), -arg_2.b.b | (var_1.b.b ^ ~select(-1i, arg_2.b.b, arg_2.e)));
}

fn func_7(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_5(any(vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true)), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), ((i32(-1i) * -13444i) == _wgslsmith_sub_i32(u_input.c, -10074i)) || (any(vec2<bool>(true, false)) || (global1.a.x >= u_input.a.x))));
    var var_1 = var_0.a;
    global2 = global1.a.x;
    let var_2 = Struct_5(var_0.a, select(vec2<bool>(true, var_0.a), vec2<bool>(true, true || (var_0.b.x | var_0.a)), var_0.a));
    let var_3 = u_input.b;
    return max(_wgslsmith_clamp_i32(firstTrailingBit(arg_0.b), -15838i, ~2147483647i), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(-min(abs(vec3<i32>(-30675i, 0i, u_input.c)), firstLeadingBit(vec3<i32>(global1.b, 0i, u_input.c))), vec3<i32>(_wgslsmith_clamp_i32(-1i, -2147483647i, u_input.c), global1.b, ~u_input.c) << (u_input.a % vec3<u32>(32u))), ~vec3<i32>(max(33467i, u_input.c) ^ global1.b, ~(-2147483647i), -4330i));
    global2 = 12023u;
    global2 = _wgslsmith_dot_vec3_u32(reverseBits(~firstTrailingBit(_wgslsmith_add_vec3_u32(u_input.a, u_input.a))), max(~_wgslsmith_add_vec3_u32(u_input.a ^ vec3<u32>(u_input.a.x, 28172u, u_input.a.x), ~vec3<u32>(global1.a.x, 14756u, global1.a.x)), ~u_input.a));
    let var_1 = func_7(func_6(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-287f, 275f)))), Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_5(func_1(4520u, global1.a.x), -708f), ~vec2<u32>(global1.a.x, global1.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(226f, -1975f, 269f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(251f, 1202f, 214f) + vec3<f32>(-1165f, -238f, -889f))), false & all(vec2<bool>(false, false)))));
    var_0 = min(vec3<i32>(_wgslsmith_sub_i32(-2816i, -var_1), 18432i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, var_1, global1.b), vec4<i32>(33363i, global1.b, u_input.c, global1.b)), select(_wgslsmith_mult_i32(u_input.c, u_input.c), -var_1, global1.b != -48136i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(23353i, 0i, -42875i), vec3<i32>(0i, -7334i, u_input.c))) ^ vec3<i32>(abs((global1.b >> (1u % 32u)) ^ global1.b), -(func_4(vec4<f32>(427f, 304f, -116f, -1396f), Struct_3(vec2<bool>(false, true), Struct_1(global1.a, global1.b), vec2<u32>(50508u, 17783u), vec3<f32>(1170f, 1052f, 805f), true)).a.b | u_input.c), -(u_input.c ^ -4542i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(select(~vec4<i32>(var_1, -13985i, -8532i, u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(var_1, -21685i, u_input.c, var_0.x), vec4<i32>(global1.b, var_0.x, -36344i, u_input.c)), vec4<bool>(true, true, true, true)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -2147483647i, global1.b, 33569i), vec4<i32>(0i, -1i, u_input.c, var_0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_0.x, u_input.c, 0i), vec4<i32>(-1i, var_1, 2147483647i, -1i)))) << (vec4<u32>(min(0u, ~u_input.a.x), u_input.b, ~global1.a.x, ~64411u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -41417i, 1i, 29015i), vec4<i32>(-9395i, 48365i, -54115i, var_0.x))), vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 4404i, var_1, var_1), vec4<i32>(u_input.c, var_0.x, u_input.c, u_input.c)), _wgslsmith_div_i32(u_input.c | global1.b, func_3(Struct_2(vec4<i32>(-924i, global1.b, var_0.x, global1.b), 30623i), Struct_5(true, vec2<bool>(false, false)), vec3<f32>(-477f, -854f, 541f), true)), -2147483647i, min(-1i, select(1i, 2147483647i, true)))), vec3<i32>(_wgslsmith_mult_i32(2147483647i | _wgslsmith_dot_vec2_i32(var_0.xz, vec2<i32>(-2147483647i, 9044i)), ~(-var_1)), -11863i, -global1.b), firstTrailingBit(-min(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.c, 0i), vec3<i32>(-1i, 1i, 1i)), vec3<i32>(1i, -44539i, var_1))), abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-37155i, -2147483647i, var_1, -2147483647i), vec4<i32>(var_1, -6532i, u_input.c, 2147483647i)) | _wgslsmith_add_i32(var_0.x, global1.b), abs(1i), -9047i, var_1)));
}

