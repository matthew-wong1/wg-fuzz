struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1733f, 134f, -669f, 1625f);

var<private> global1: array<Struct_4, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>) -> vec4<f32> {
    let var_0 = Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(256f, global0.x, global0.x, arg_1))))))), arg_0, -1113f, arg_0);
    let var_1 = select(!select(select(select(vec4<bool>(var_0.e.a, var_0.e.a, arg_0.a, true), vec4<bool>(arg_0.a, arg_0.a, false, var_0.a.a), var_0.a.a), !vec4<bool>(arg_0.a, true, true, arg_0.a), select(vec4<bool>(true, var_0.e.a, false, arg_0.a), vec4<bool>(var_0.e.a, var_0.a.a, false, false), vec4<bool>(var_0.a.a, var_0.c.a, false, arg_0.a))), select(select(vec4<bool>(false, var_0.a.a, var_0.c.a, var_0.c.a), vec4<bool>(var_0.a.a, arg_0.a, arg_0.a, arg_0.a), true), select(vec4<bool>(var_0.e.a, true, arg_0.a, arg_0.a), vec4<bool>(var_0.c.a, true, true, false), var_0.e.a), select(vec4<bool>(var_0.a.a, var_0.e.a, arg_0.a, true), vec4<bool>(true, false, arg_0.a, false), vec4<bool>(arg_0.a, true, false, arg_0.a))), false), vec4<bool>(1i < arg_0.e, arg_0.a, var_0.e.a, var_0.a.d != 0u), select(select(vec4<bool>(true, all(vec3<bool>(false, true, true)), select(true, false, var_0.e.a), false), vec4<bool>(arg_0.d < 0u, -2147483647i <= var_0.c.b, any(vec3<bool>(arg_0.a, false, true)), any(vec4<bool>(var_0.e.a, arg_0.a, true, arg_0.a))), !(!vec4<bool>(true, var_0.e.a, true, var_0.e.a))), vec4<bool>(true, arg_0.a, (0u ^ arg_0.d) > arg_0.d, select(!var_0.e.a, var_0.a.a, false)), false));
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.d, _wgslsmith_div_u32(10357u, ~max(arg_0.d, 4294967295u))), vec2<u32>(arg_0.d, arg_0.d));
    global1 = array<Struct_4, 19>();
    var var_3 = ~_wgslsmith_clamp_u32(~(~abs(var_2.x)), ~52437u, firstTrailingBit(var_0.a.d));
    return var_0.b;
}

fn func_2() -> bool {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.x, 620f), global0.x, true)), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(true, u_input.a.x, 1396f, 1u, 18244i), -405f, u_input.a.xzy))))) - _wgslsmith_f_op_vec4_f32(func_3(Struct_2(true, -8673i, global0.x, ~0u, -7758i << (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(200f)) * _wgslsmith_f_op_f32(611f * -643f)), -vec3<i32>(u_input.a.x, 1i, u_input.a.x) | vec3<i32>(-36673i, -1i, 9874i)))));
    var var_0 = !(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true), true));
    var var_1 = min(firstLeadingBit(abs(vec4<i32>(u_input.a.x, u_input.a.x, -47669i, u_input.a.x) >> (~vec4<u32>(4294967295u, 44119u, 99427u, 185u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(u_input.a, -vec4<i32>(-u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x << (11708u % 32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -862f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x - 1177f)), _wgslsmith_f_op_f32(f32(-1f) * -620f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-258f, 1117f, 549f, -175f) * vec4<f32>(global0.x, global0.x, global0.x, -1893f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(687f, global0.x, -721f, 1946f) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 1539f, 1000f), vec4<f32>(-773f, global0.x, global0.x, global0.x))))));
    let var_3 = _wgslsmith_f_op_f32(-var_2.x);
    return var_0.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.c, global0.x, global0.x, arg_1.c)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.c, -146f, 758f, 566f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-730f, arg_1.c, 594f, -873f)))), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(arg_1.c, -1067f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, -1550f)))) - vec4<f32>(-1603f, arg_1.c, 1190f, arg_1.c));
    var var_1 = _wgslsmith_mult_i32(u_input.a.x, -(arg_0.x ^ ~_wgslsmith_mod_i32(arg_0.x, arg_1.b)));
    var_1 = arg_1.e & 1i;
    global1 = array<Struct_4, 19>();
    return arg_1;
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_3(Struct_2(true, u_input.a.x, global0.x, _wgslsmith_clamp_u32(5065u, 75059u, ~(~1u)), ~u_input.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -687f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-953f, -268f, -1222f, global0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -499f, -190f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, global0.x, -109f, -683f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1000f, 458f, 306f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-100f, global0.x, -1525f, global0.x))) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1238f)))), func_4(u_input.a.wxx, Struct_2(func_2(), max(~0i, max(0i, u_input.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(569f)))), _wgslsmith_mod_u32(1u, ~22964u), -2147483647i)), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0.x, 713f))))), true)), Struct_2(any(vec4<bool>(any(vec2<bool>(true, false)), true, true, -1i != u_input.a.x)), ~u_input.a.x, -832f, _wgslsmith_div_u32(firstTrailingBit(~1u), 48065u), abs(1i)));
    var_0 = Struct_3(var_0.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.c, 860f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -634f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_0.a, 674f, u_input.a.xww)).x), var_0.b.x)), func_4(-u_input.a.zxy, Struct_2(!var_0.c.a, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(749f, 2269f)), firstLeadingBit(1u), ~(~25111i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-872f)))), var_0.c);
    let var_1 = Struct_1(var_0.a.a, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(-713f, _wgslsmith_f_op_f32(trunc(var_0.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f) + -749f), _wgslsmith_f_op_f32(select(-167f, 845f, true))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.c, -1000f, 118f, -796f) * vec4<f32>(global0.x, 851f, -1039f, global0.x))), vec4<f32>(_wgslsmith_f_op_f32(abs(1265f)), -537f, -194f, _wgslsmith_f_op_vec4_f32(func_3(Struct_2(var_0.a.a, u_input.a.x, -1169f, 6125u, 0i), var_0.a.c, u_input.a.xwy)).x)))));
    let var_2 = !select(!vec3<bool>(var_1.b, any(vec4<bool>(var_1.b, false, var_1.b, true)), true), vec3<bool>(var_0.e.a, true, !var_1.b), !vec3<bool>(true, var_0.a.a, any(vec3<bool>(var_0.e.a, var_1.b, true))));
    let var_3 = Struct_2(!(~5715i > u_input.a.x), _wgslsmith_mod_i32(-1i, 34657i), global0.x, 0u, u_input.a.x);
    return !(!var_2.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!(!select(vec2<bool>(false, false), func_1(), u_input.a.x == 2147483647i)));
    global1 = array<Struct_4, 19>();
    let var_1 = !any(select(vec4<bool>(var_0, var_0, !var_0, var_0), !(!vec4<bool>(false, var_0, true, false)), all(!vec4<bool>(false, true, false, var_0))));
    global1 = array<Struct_4, 19>();
    var var_2 = true;
    let var_3 = !any(vec3<bool>(true, all(vec4<bool>(true, var_0, true, false)) || true, var_1));
    var var_4 = -_wgslsmith_mult_i32(abs(abs(u_input.a.x)), u_input.a.x);
    var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(i32(-1i) * -1183i, 1i), -7963i), u_input.a.x), ~firstLeadingBit(-(u_input.a.yx ^ vec2<i32>(29267i, -697i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, 1u, 1u, 1u), u_input.a.x, _wgslsmith_f_op_f32(-global0.x), firstTrailingBit(~select(1u, ~0u, all(vec3<bool>(false, var_1, false)))));
}

