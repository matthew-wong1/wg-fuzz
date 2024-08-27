struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: bool;

var<private> global2: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global1 = true;
    let var_0 = 1i;
    let var_1 = Struct_1(arg_0.yz, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), 751f, arg_0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_0, vec4<f32>(2201f, arg_0.x, -1419f, -573f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(143f, -152f, 1133f, arg_0.x) - vec4<f32>(-126f, 603f, arg_0.x, -1000f)) * _wgslsmith_f_op_vec4_f32(-arg_0))))), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, var_0), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_0, -1i), vec3<i32>(-31692i, var_0, -28197i)))), -abs(-38378i ^ var_0)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(i32(-1i) * -var_0, var_0 >> (abs(1u) % 32u), ~max(var_0, var_0)), ~var_0 & _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0, 0i, 1i, -10508i)), select(vec4<i32>(var_0, -1i, var_0, -78395i), vec4<i32>(-30080i, 1i, -1i, var_0), true))), vec3<i32>(countOneBits(-_wgslsmith_div_i32(var_0, var_0)), ~firstLeadingBit(~0i), (var_0 ^ reverseBits(19665i)) ^ _wgslsmith_clamp_i32(var_0, ~var_0, countOneBits(var_0))));
    let var_2 = abs(vec4<i32>(~(-82261i), -_wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.c.x, var_0, -65808i), reverseBits(vec3<i32>(3752i, -1i, 47078i))), var_1.d, _wgslsmith_add_i32(var_1.c.x << (~0u % 32u), var_1.e.x)));
    global1 = select(select(any(vec4<bool>(true, true, true, true)) & select(any(vec3<bool>(true, true, false)), true, false), all(vec4<bool>(all(vec2<bool>(true, false)), true, any(vec3<bool>(true, true, true)), all(vec4<bool>(false, true, true, false)))), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), true))), !select(any(vec3<bool>(true, true, true)), false, false), any(vec3<bool>(true, true, true)));
    return arg_0.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1332f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a.x)))))), _wgslsmith_f_op_f32(698f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1794f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, arg_1.b.x, arg_2.b.x, arg_1.a.x) * vec4<f32>(arg_1.b.x, -1546f, 820f, arg_2.b.x)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(arg_2.b)))));
    var var_2 = select(_wgslsmith_mod_vec4_i32(-select(vec4<i32>(2147483647i, arg_2.e.x, arg_1.d, arg_2.e.x), vec4<i32>(arg_1.c.x, arg_1.e.x, arg_2.d, 1i), vec4<bool>(arg_3, arg_0.x, false, true)), ~abs(vec4<i32>(arg_2.e.x, -31287i, arg_1.e.x, -2147483647i))) & abs(min(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.c.x, arg_1.e.x, arg_1.e.x, -2147483647i), vec4<i32>(-26983i, arg_1.e.x, arg_1.c.x, -27574i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-46555i, arg_2.d, 0i, -7266i), vec4<i32>(arg_2.e.x, -1i, arg_2.d, arg_2.c.x)))), vec4<i32>(arg_1.d, arg_2.d, -1i, -1i), select(arg_3, false, !(var_1.x <= arg_2.a.x)) != arg_0.x);
    let var_3 = arg_0.xyx;
    var var_4 = Struct_1(arg_2.a, _wgslsmith_f_op_vec4_f32(-arg_1.b), vec3<i32>(_wgslsmith_mod_i32(arg_2.d, ~(-97582i)), firstTrailingBit(var_2.x), _wgslsmith_dot_vec3_i32(var_2.xyw, vec3<i32>(var_2.x, abs(8556i), 1849i))), -_wgslsmith_mult_i32(var_2.x, _wgslsmith_clamp_i32(var_2.x, arg_2.c.x, ~arg_2.c.x)), select(vec3<i32>(var_2.x, _wgslsmith_mod_i32(-arg_1.e.x, arg_2.e.x), ~min(var_2.x, 1i)), vec3<i32>(abs(arg_2.d), ~countOneBits(var_2.x), -74354i), var_3.x));
    return u_input.b;
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = (abs(arg_0.c.x) & arg_0.e.x) << (func_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), arg_0, arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.d, arg_0.d), select(vec3<i32>(1i, arg_0.d, arg_0.c.x), arg_0.c, vec3<bool>(true, true, false))) == 0i) % 32u);
    return !(!select(vec2<bool>(false, false), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    var var_0 = ~1i;
    global2 = !all(!(!func_1(Struct_1(vec2<f32>(-729f, 130f), vec4<f32>(1230f, 186f, 1000f, -183f), vec3<i32>(35015i, -2147483647i, 1i), -20152i, vec3<i32>(71897i, -1i, -40240i)))));
    global0 = reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 1u, 46891u << (_wgslsmith_mult_u32(u_input.a.x, 4294967295u) % 32u)), ~vec3<u32>(1u, 4294967295u, ~1u)));
    var_0 = 1i | -_wgslsmith_dot_vec4_i32(vec4<i32>(-23469i, countOneBits(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 1i), vec3<i32>(2147483647i, -35270i, -3684i)), 1i), vec4<i32>(0i, 0i, select(-27417i, -49021i, false), ~(-39568i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1609f, _wgslsmith_f_op_f32(-738f + -2842f), _wgslsmith_f_op_f32(f32(-1f) * -1721f), 348f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1592f - 447f), _wgslsmith_f_op_f32(ceil(-1822f)), _wgslsmith_f_op_f32(f32(-1f) * -731f), -1514f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(304f, -1226f, 229f, 1056f) + vec4<f32>(-620f, -771f, 376f, -1544f)))))));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1023f + var_1.x), _wgslsmith_f_op_f32(abs(-960f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(var_1.x)))) + var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -818f), _wgslsmith_f_op_f32(min(-563f, _wgslsmith_f_op_f32(f32(-1f) * -1138f))), var_1.x)), vec3<i32>(1i, 1i, 1i) << (vec3<u32>(~global0.x, ~global0.x ^ global0.x, global0.x) % vec3<u32>(32u)), -_wgslsmith_dot_vec3_i32(-vec3<i32>(-612i, 1i, -107735i), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(17124i, -2147483647i, -2147483647i)), -vec3<i32>(5445i, -1i, -2147483647i))), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(1i, 1i, 1i)), abs(vec3<i32>(~35320i, ~(-2147483647i), ~1i)), -select(vec3<i32>(-2147483647i, 0i, -28195i), vec3<i32>(52399i, 15230i, 11142i), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))));
    let var_3 = _wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(-1787f * _wgslsmith_f_op_f32(min(-1478f, -639f)))) * _wgslsmith_f_op_f32(-var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, var_2.b.yww, var_2.b.xxz, u_input.a.x);
}

