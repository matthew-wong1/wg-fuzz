struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-1760f, 1u), Struct_1(326f, 60525u), Struct_1(1000f, 3394u), Struct_1(1508f, 0u), Struct_1(-1121f, 1u), Struct_1(1000f, 4294967295u), Struct_1(1081f, 47847u), Struct_1(651f, 27656u), Struct_1(-431f, 4294967295u), Struct_1(-1174f, 37590u), Struct_1(-863f, 1u), Struct_1(-1191f, 0u), Struct_1(1000f, 0u), Struct_1(-1021f, 4294967295u), Struct_1(-1000f, 12846u), Struct_1(623f, 3659u), Struct_1(-135f, 35434u), Struct_1(-432f, 37402u), Struct_1(119f, 1u), Struct_1(-386f, 4294967295u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool) -> vec4<i32> {
    var var_0 = vec3<bool>(arg_2, !arg_0.b, _wgslsmith_add_u32(u_input.a.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 49919u), vec2<u32>(72u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0.c.b, 5143u, u_input.c.x) << (vec4<u32>(u_input.a.x, arg_0.c.b, 4294967295u, arg_0.c.b) % vec4<u32>(32u)), countOneBits(u_input.a))) < 70039u);
    var var_1 = select(vec3<i32>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1040i), vec2<i32>(u_input.e.x, -23181i)) >> ((1u << (0u % 32u)) % 32u)), reverseBits(arg_0.a), -35435i << (arg_0.c.b % 32u)), select(vec3<i32>(-8181i, countOneBits(_wgslsmith_mod_i32(arg_1.x, -12582i)), _wgslsmith_sub_i32(u_input.e.x, -75047i) & ~(-52330i)), u_input.e, true), true);
    var_1 = arg_1.wzz;
    let var_2 = select(vec3<bool>(any(vec4<bool>(!arg_0.b, false, arg_0.b, arg_0.b || false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_0.c.a)), _wgslsmith_div_f32(317f, 904f))) > _wgslsmith_div_f32(-228f, _wgslsmith_f_op_f32(floor(-1346f))), any(select(!var_0.xz, var_0.xy, var_0.yy))), !select(select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, arg_2, true)), vec3<bool>(arg_0.b, var_0.x, arg_2), !vec3<bool>(arg_2, false, true)), select(vec3<bool>(arg_0.b, true, false), vec3<bool>(true, true, true), select(false, false, var_0.x)), select(!vec3<bool>(false, arg_0.b, false), select(vec3<bool>(arg_0.b, true, arg_2), vec3<bool>(false, arg_0.b, var_0.x), true), false)), vec3<bool>(any(select(vec2<bool>(true, true), var_0.xy, select(vec2<bool>(true, var_0.x), var_0.zx, true))), arg_0.b, all(var_0.zx)));
    global0 = all(vec4<bool>(false, u_input.b > arg_0.c.b, false && arg_2, var_0.x));
    return _wgslsmith_div_vec4_i32(~firstLeadingBit(vec4<i32>(-2147483647i, 1i, firstLeadingBit(arg_1.x), arg_0.a)), arg_1);
}

fn func_4(arg_0: Struct_4) -> bool {
    var var_0 = arg_0.c;
    global0 = any(select(vec2<bool>(true, true), vec2<bool>(true, (u_input.e.x <= -41852i) == true), (all(vec3<bool>(true, false, false)) != select(false, false, true)) || (true | select(false, false, true))));
    let var_1 = Struct_1(arg_0.a.x, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(~20377u, ~var_0.b, arg_0.c.b & 4294967295u), vec3<u32>(arg_0.c.b, ~u_input.a.x, ~u_input.b))));
    let var_2 = !vec4<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), any(vec4<bool>(true, select(false, false, true), all(vec2<bool>(true, true)), true)), true, select(all(vec2<bool>(true, true)), true, any(vec2<bool>(true, true))) | true);
    var var_3 = _wgslsmith_f_op_f32(var_1.a + var_1.a);
    return u_input.e.x >= abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, u_input.e.x), arg_0.b.yw));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> Struct_4 {
    global0 = !(func_4(Struct_4(vec3<f32>(252f, -2067f, 758f), func_3(Struct_3(12709i, arg_0.x, global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<i32>(0i, u_input.d.x, -55222i, 1964i), true), Struct_1(1455f, 46844u), u_input.d.x)) | arg_2.x);
    let var_0 = _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(i32(-1i) * -u_input.e.x, _wgslsmith_div_i32(~1i, abs(2147483647i)))), u_input.e.xx);
    global0 = false;
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(843f, 1724f, -1460f), vec3<f32>(1606f, -1215f, 1152f), true)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1660f, 379f, 1518f) * vec3<f32>(101f, 239f, 329f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(466f, -528f, 1000f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-215f, -607f, -359f))), !arg_0.x)))), _wgslsmith_sub_vec4_i32(~vec4<i32>(arg_1.x >> (9603u % 32u), _wgslsmith_sub_i32(-35641i, -4918i), _wgslsmith_mod_i32(2147483647i, -1i), var_0), vec4<i32>(-46025i, 2147483647i, i32(-1i) * -19580i, -2147483647i)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1227f - -207f))))), ~max(u_input.a.x, firstTrailingBit(21703u))), -43120i);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5) -> f32 {
    var var_0 = arg_1;
    global0 = true;
    var var_1 = arg_1.a.a.x;
    var_0 = arg_1;
    let var_2 = arg_1.a.b;
    return _wgslsmith_f_op_f32(f32(-1f) * -454f);
}

fn func_1(arg_0: vec4<u32>) -> bool {
    global0 = true;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_5(Struct_3(28837i, 2147483647i != select(0i, 0i, false), Struct_1(1978f, _wgslsmith_mod_u32(4294967295u, 4142u))), Struct_5(func_2(vec2<bool>(true, true), u_input.d.yx, select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false))))), arg_0.x);
    var var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 526f)), vec3<f32>(838f, 859f, var_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, -113f)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), func_4(Struct_4(vec3<f32>(var_0.a, -442f, -530f), vec4<i32>(1i, u_input.d.x, u_input.e.x, u_input.e.x), Struct_1(var_0.a, var_0.b), -1709i))))), select(-vec4<i32>(u_input.e.x, -17507i, u_input.e.x, 33422i), max(func_3(Struct_3(u_input.e.x, false, Struct_1(-1000f, arg_0.x)), vec4<i32>(-51592i, 2147483647i, -1i, u_input.d.x), false), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 0i, -2147483647i), vec4<i32>(-2147483647i, 1i, 0i, -8106i))), func_4(Struct_4(vec3<f32>(-576f, var_0.a, var_0.a), vec4<i32>(16171i, u_input.e.x, -1i, u_input.e.x), Struct_1(-1000f, u_input.b), 1i))), var_0, _wgslsmith_mod_i32(32812i, _wgslsmith_mod_i32(27111i, u_input.e.x) << (_wgslsmith_clamp_u32(arg_0.x, var_0.b, 43907u) % 32u))));
    let var_2 = select(vec2<bool>(true, -693f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.c.a)))), vec2<bool>(true, true), vec2<bool>(2147483647i >= min(~(-36460i), u_input.e.x), true || any(vec4<bool>(true, true, true, true))));
    var var_3 = -13956i;
    return ((false & var_2.x) & !var_2.x) && func_4(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 596f, 824f)), vec4<i32>(-2147483647i, 17402i, ~1i, 16197i << (arg_0.x % 32u)), Struct_1(_wgslsmith_f_op_f32(abs(-734f)), _wgslsmith_div_u32(var_1.a.c.b, 1u)), var_1.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 20>();
    global0 = false || !((1i == _wgslsmith_add_i32(2147483647i, u_input.e.x)) | func_1(vec4<u32>(u_input.a.x, 1u, 4294967295u, 48153u)));
    let var_0 = func_2(select(vec2<bool>(true, true), select(vec2<bool>(any(vec3<bool>(true, false, true)), true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), u_input.e.yz, select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true), !(!(u_input.d.x != 2147483647i)))).c.b;
    var var_1 = Struct_1(-1144f, _wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(41736u, 58856u)));
    global0 = true & (var_1.a >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(316f, _wgslsmith_f_op_f32(step(-127f, var_1.a)), true)) - _wgslsmith_f_op_f32(var_1.a * 242f)));
    var_1 = func_2(select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, false)), vec2<bool>(0i <= (u_input.e.x | -5357i), true), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), false)), u_input.d.zz, vec4<bool>(true, _wgslsmith_f_op_f32(exp2(var_1.a)) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.a) * var_1.a), select(var_1.a == var_1.a, true, true) & (any(vec3<bool>(true, false, true)) && any(vec3<bool>(true, false, true))), any(vec4<bool>(true, true, true, true)))).c;
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_3(~(~28598i), true, global1[_wgslsmith_index_u32(abs(~var_0), 20u)]), _wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, u_input.e.x, 2147483647i), vec4<i32>(25498i, u_input.e.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.e.x, u_input.d.x, -3910i, u_input.e.x)), select(-vec4<i32>(u_input.d.x, u_input.d.x, u_input.e.x, u_input.e.x), ~vec4<i32>(u_input.e.x, 2147483647i, u_input.e.x, 45549i), vec4<bool>(true, true, true, true))), any(vec2<bool>(true, func_1(u_input.a)))).yxz);
}

