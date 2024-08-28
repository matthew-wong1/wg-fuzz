struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<bool>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: f32, arg_3: vec3<u32>) -> bool {
    let var_0 = !(!any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false))));
    return !(!(0i > _wgslsmith_dot_vec3_i32(arg_0.yzx | vec3<i32>(u_input.a, arg_0.x, arg_0.x), firstTrailingBit(vec3<i32>(1870i, arg_0.x, 2147483647i)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = Struct_3(Struct_1(arg_0.x, _wgslsmith_mult_u32(1u, 0u), 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1106f, -733f, -2115f, 1276f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(449f, -857f, -935f, 1166f) * vec4<f32>(-1752f, -1298f, -978f, -1357f)), select(vec4<bool>(true, true, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), arg_1))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1383f, -500f, -2563f, 400f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(742f, -603f, -179f, -1483f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1026f, -376f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-453f, -395f), vec2<f32>(719f, -804f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1266f, 377f)))), _wgslsmith_mod_i32(arg_0.x, (2147483647i ^ arg_0.x) | 1i) >= select(~firstLeadingBit(arg_0.x), ~arg_0.x, true), Struct_2(!(!vec4<bool>(arg_1.x, true, false, arg_1.x)), any(vec4<bool>(false, true, any(vec3<bool>(arg_1.x, true, arg_1.x)), true))), true);
    return select(select(vec4<bool>(arg_1.x, select(all(var_0.c.a), false, true), var_0.d, var_0.c.b), vec4<bool>(!all(var_0.c.a.ww), var_0.b, false, !arg_1.x), !vec4<bool>(false && arg_1.x, false, var_0.a.b <= var_0.a.c, false)), vec4<bool>(false, true, true, true), true);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(select(vec4<bool>(true, all(vec2<bool>(true, true)), any(vec2<bool>(false, true)), true), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), func_3(arg_0, select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true))), ~(~0u) < select(~1u, countOneBits(8801u), select(false, false, false))), true);
    var_0 = Struct_2(var_0.a, false);
    let var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.yy, vec2<i32>(~u_input.a, -16072i)), min(-firstTrailingBit(vec2<i32>(2147483647i, 0i)), vec2<i32>(abs(min(-29808i, -11837i)), -2147483647i)));
    global0 = array<vec3<u32>, 19>();
    var var_2 = true;
    return Struct_1(-8954i, _wgslsmith_div_u32(abs(firstTrailingBit(_wgslsmith_add_u32(40911u, 104720u))), ~(4294967295u | firstTrailingBit(1u))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~global0[_wgslsmith_index_u32(712u, 19u)], _wgslsmith_sub_vec3_u32(vec3<u32>(8012u, 17940u, 36216u), global0[_wgslsmith_index_u32(44612u, 19u)])) ^ firstLeadingBit(_wgslsmith_sub_u32(9869u, 0u)), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(68226u, 19u)], vec3<u32>(9969u, 0u, 73330u)), 0u)), arg_1, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -883f)), _wgslsmith_f_op_f32(step(-298f, _wgslsmith_f_op_f32(arg_1.x * 369f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_2(select(func_3(~vec3<i32>(1i, arg_0.a.a, 33120i) ^ vec3<i32>(arg_0.a.a, arg_3, -5434i), !select(vec4<bool>(arg_0.d, arg_0.b, arg_0.d, false), vec4<bool>(arg_0.d, false, arg_0.b, true), vec4<bool>(arg_0.c.a.x, false, false, arg_0.b))), arg_0.c.a, vec4<bool>(func_3(~vec3<i32>(u_input.a, arg_3, -2147483647i), arg_0.c.a).x, func_3(-vec3<i32>(9000i, 0i, -9053i), !arg_0.c.a).x, true, false)), all(!(!vec3<bool>(arg_0.c.a.x, arg_0.c.a.x, false))));
    let var_1 = Struct_4(func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(-2147483647i), 0i, -47497i), -vec3<i32>(-49811i, -2147483647i, -17773i), max(vec3<i32>(1i, -1i, arg_0.a.a), -vec3<i32>(arg_0.a.a, u_input.a, 49566i))), arg_0.a.d), vec4<i32>(-1i) * -(~select(vec4<i32>(arg_3, u_input.a, arg_3, -1i), vec4<i32>(-33507i, arg_3, arg_3, u_input.a), var_0.a)), vec3<bool>(0u >= arg_0.a.b, func_3(~reverseBits(vec3<i32>(u_input.a, arg_3, 53444i)), arg_0.c.a).x, any(arg_0.c.a.wwy)), func_3(~(~vec3<i32>(-38884i, arg_3, arg_3)) >> ((min(vec3<u32>(0u, 1u, arg_0.a.b), global0[_wgslsmith_index_u32(0u, 19u)]) & _wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], vec3<u32>(arg_0.a.b, arg_0.a.c, arg_0.a.c), global0[_wgslsmith_index_u32(arg_0.a.b, 19u)])) % vec3<u32>(32u)), !arg_0.c.a).x, Struct_2(func_3(-_wgslsmith_add_vec3_i32(vec3<i32>(arg_3, 6855i, -16033i), vec3<i32>(61830i, u_input.a, u_input.a)), vec4<bool>(!var_0.b, !arg_0.d, false, var_0.b != arg_0.b)), any(!vec4<bool>(false, false, var_0.a.x, false))));
    global0 = array<vec3<u32>, 19>();
    var var_2 = 2154u;
    var_2 = _wgslsmith_mult_u32(arg_0.a.c, ~max(var_1.a.b, _wgslsmith_mult_u32(arg_0.a.b, 11898u << (var_1.a.b % 32u))));
    return var_1.a;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4) -> Struct_4 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(func_2(arg_2.b.www, vec4<f32>(-719f, arg_2.a.d.x, -359f, arg_2.a.e.x)).a, -u_input.a), 21281i), 30216u, 2990u, vec4<f32>(-431f, func_2(vec3<i32>(-31281i, 85625i, -1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-399f, 1000f, arg_2.a.d.x, -1463f))).d.x, arg_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x))), arg_2.a.d.zx), false, Struct_2(select(!vec4<bool>(false, false, false, arg_0.e.b), arg_0.e.a, vec4<bool>(arg_2.c.x, arg_2.c.x, true, true)), false), arg_2.c.x);
    global0 = array<vec3<u32>, 19>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-arg_1.d);
    global0 = array<vec3<u32>, 19>();
    var var_2 = arg_2.e;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    var var_0 = Struct_2(select(!vec4<bool>(true, false, any(vec2<bool>(true, false)), true), vec4<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), true && all(vec2<bool>(false, false)), func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-13524i, u_input.a, u_input.a, -1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(429f, -522f, -2059f)), -1380f, ~global0[_wgslsmith_index_u32(0u, 19u)])), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true)) & any(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), true);
    var var_1 = -1i;
    let var_2 = func_5(Struct_4(func_4(Struct_3(func_2(vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<f32>(-559f, 1915f, 732f, 946f)), var_0.a.x, Struct_2(var_0.a, false), !var_0.a.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(1558f + -1000f), _wgslsmith_f_op_f32(-491f + 115f), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1834f))), _wgslsmith_mult_i32(u_input.a, u_input.a) << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u)), _wgslsmith_mult_vec4_i32(-(~vec4<i32>(u_input.a, -35287i, -1i, u_input.a)), vec4<i32>(-1i) * -vec4<i32>(2147483647i, -28863i, -2147483647i, u_input.a)), !select(!var_0.a.yzx, !vec3<bool>(var_0.b, var_0.b, false), var_0.a.x & true), var_0.b || true, Struct_2(!var_0.a, var_0.b)), func_2(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(47059u, 4294967295u, 0u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 0i, -1i), vec3<i32>(1i, u_input.a, 36438i)), vec3<i32>(u_input.a, -1i, 5180i)), (vec3<i32>(u_input.a, u_input.a, u_input.a) >> (global0[_wgslsmith_index_u32(0u, 19u)] % vec3<u32>(32u))) | ~vec3<i32>(u_input.a, -1i, -19483i)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-916f))), _wgslsmith_f_op_f32(func_4(Struct_3(Struct_1(u_input.a, 55099u, 4294967295u, vec4<f32>(2917f, -1496f, -847f, 381f), vec2<f32>(-853f, -1362f)), true, Struct_2(var_0.a, false), var_0.a.x), vec4<f32>(-1256f, 1750f, -1080f, 1405f), 595f, 1i).d.x * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1365f))), Struct_4(func_2(~vec3<i32>(12127i, u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -504f, -1597f, -1992f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-534f, 217f, 736f, -1098f), vec4<f32>(1171f, 408f, -1000f, 1591f), true))))), _wgslsmith_div_vec4_i32(~max(vec4<i32>(-1i, u_input.a, u_input.a, -45874i), vec4<i32>(-1i, 2147483647i, u_input.a, u_input.a)), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)), var_0.a.yxy, var_0.b, Struct_2(vec4<bool>(u_input.a >= u_input.a, true, true, true), true)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_5(func_5(Struct_4(Struct_1(0i, var_2.a.b, var_2.a.b, vec4<f32>(var_2.a.d.x, var_2.a.d.x, 1385f, var_2.a.d.x), vec2<f32>(var_2.a.e.x, var_2.a.e.x)), vec4<i32>(-2147483647i, 0i, u_input.a, u_input.a), vec3<bool>(var_0.b, true, var_0.b), false, var_2.e), var_2.a, var_2), func_5(var_2, var_2.a, var_2).a, func_5(var_2, var_2.a, Struct_4(var_2.a, vec4<i32>(-22579i, u_input.a, -31057i, var_2.a.a), vec3<bool>(var_0.a.x, var_0.a.x, var_2.d), var_2.d, var_2.e))), var_2.a, func_5(func_5(var_2, Struct_1(u_input.a, 4294967295u, 7961u, var_2.a.d, vec2<f32>(912f, var_2.a.d.x)), Struct_4(var_2.a, var_2.b, var_0.a.wxz, false, var_2.e)), Struct_1(-11666i, var_2.a.c, var_2.a.c, vec4<f32>(var_2.a.e.x, 297f, -1000f, -1070f), vec2<f32>(3321f, var_2.a.d.x)), var_2)).a.e.x * -297f));
    let var_4 = func_5(Struct_4(Struct_1(_wgslsmith_dot_vec4_i32(abs(var_2.b), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.a, var_2.b.x, var_2.a.a, -2059i), var_2.b)), ~(~var_2.a.b), _wgslsmith_sub_u32(~1u, var_2.a.b), var_2.a.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.d.yw + var_2.a.e))), firstTrailingBit(firstTrailingBit(var_2.b) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(12356u, var_2.a.b, var_2.a.b, 53144u), vec4<u32>(117538u, 1u, 0u, 45004u), vec4<u32>(var_2.a.b, 1u, var_2.a.b, var_2.a.c)) % vec4<u32>(32u))), !var_0.a.xzw, select(var_2.c.x, any(var_0.a), var_0.a.x), var_2.e), var_2.a, Struct_4(var_2.a, vec4<i32>(0i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.c, var_2.a.c), vec2<u32>(10557u, var_2.a.b)) % 32u), u_input.a, ~(~(-21965i)), u_input.a), vec3<bool>(true | !var_2.e.a.x, !var_2.d, true), true, Struct_2(vec4<bool>(true, true, true, true), var_2.e.a.x))).e;
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(566f))) - _wgslsmith_f_op_f32(exp2(var_2.a.e.x))), _wgslsmith_f_op_f32(-var_2.a.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(-(~vec2<i32>(u_input.a, -2147483647i) ^ firstLeadingBit(vec2<i32>(-60261i, var_2.a.a))), _wgslsmith_clamp_vec2_i32(~(var_2.b.xy >> (vec2<u32>(4294967295u, var_2.a.b) % vec2<u32>(32u))), vec2<i32>(-1i, _wgslsmith_sub_i32(19319i, u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.a.a, 1779i), var_2.b.xw) ^ var_2.b.zw)), _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(var_2.a.a), -1i, -countOneBits(var_2.b.x), ~(-2147483647i)), var_2.b), _wgslsmith_clamp_vec3_u32(~(vec3<u32>(4294967295u, var_2.a.b, var_2.a.c) >> (global0[_wgslsmith_index_u32(1u, 19u)] % vec3<u32>(32u))), global0[_wgslsmith_index_u32(var_2.a.c, 19u)], _wgslsmith_div_vec3_u32(vec3<u32>(var_2.a.b, var_2.a.b, var_2.a.b), ~global0[_wgslsmith_index_u32(97485u, 19u)])) >> ((global0[_wgslsmith_index_u32(var_2.a.b, 19u)] & vec3<u32>(~var_2.a.b, var_2.a.b, 0u)) % vec3<u32>(32u)));
}

