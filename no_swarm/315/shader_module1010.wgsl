struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, -31425i, 0i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_mult_vec3_u32(~u_input.a.zzy, _wgslsmith_sub_vec3_u32(u_input.a.zyw, ~_wgslsmith_sub_vec3_u32(~u_input.a.wwy, ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -23856i, global0.x, abs(25046i), min(min(35550i, -1i), ~global0.x) ^ _wgslsmith_clamp_i32(i32(-1i) * -1i, abs(global0.x), _wgslsmith_add_i32(global0.x, global0.x))), abs(~(vec4<i32>(global0.x, 30730i, 66994i, -2147483647i) << (u_input.a % vec4<u32>(32u)))) << ((~min(u_input.a, u_input.a) & u_input.a) % vec4<u32>(32u)));
    let var_2 = 1i;
    global0 = var_1.www;
    var var_3 = Struct_3(Struct_1(any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)) & false, var_1.x, vec3<bool>(true, true, true), ~var_1.x), -989f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -817f, 1886f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(190f, 452f, 1098f), vec3<f32>(-385f, -2562f, 1000f), vec3<bool>(false, false, true)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(146f, -1366f, 1042f), vec3<f32>(-1104f, 687f, 1957f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -677f, 863f) * vec3<f32>(1178f, -204f, 972f)))), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(select(false, true, false), any(vec3<bool>(true, true, false)), all(vec3<bool>(false, false, true))), true)), true);
    return ~(i32(-1i) * -24082i);
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_4 {
    global0 = -_wgslsmith_add_vec3_i32(~(~(-vec3<i32>(global0.x, global0.x, global0.x))), -countOneBits(vec3<i32>(2147483647i, 0i, global0.x)));
    var var_0 = i32(-1i) * -func_3();
    var var_1 = vec2<bool>(-1i == global0.x, arg_0);
    var var_2 = vec3<u32>(27097u, ~(~1u), 30920u);
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_1 * 431f), _wgslsmith_f_op_f32(-arg_1)), vec2<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -790f)), vec2<bool>(true, var_1.x & arg_0))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(490f, -2305f)))), vec2<f32>(-1213f, _wgslsmith_f_op_f32(-264f + arg_1)))))));
    return Struct_4(Struct_3(Struct_1(arg_1 < -518f, -(i32(-1i) * -17117i), select(!vec3<bool>(true, false, arg_0), !vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, arg_0, var_1.x)), _wgslsmith_mod_i32(14200i, countOneBits(global0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(var_3.x - -1219f)), var_3.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, 2119f, var_3.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, 1000f, var_3.x) - vec3<f32>(var_3.x, -1691f, var_3.x))), vec3<f32>(_wgslsmith_f_op_f32(var_3.x - 307f), _wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1857f))), vec3<bool>(_wgslsmith_f_op_f32(ceil(var_3.x)) != _wgslsmith_f_op_f32(f32(-1f) * -430f), arg_0, arg_0), all(vec3<bool>(var_1.x, false, var_1.x)) == var_1.x), any(vec3<bool>(var_1.x, var_1.x, true)));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = vec3<i32>(-37018i, func_2(false, -549f).a.a.d, global0.x);
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-1224f, 1620f), _wgslsmith_div_f32(arg_0.a.b, _wgslsmith_f_op_f32(f32(-1f) * -1078f)), _wgslsmith_f_op_f32(f32(-1f) * -1534f), 1256f);
    var var_2 = arg_3.c.x;
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.c.x * var_1.x), _wgslsmith_div_f32(var_1.x, 1328f))))), _wgslsmith_f_op_f32(arg_0.a.b * 1337f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a.b + 416f), arg_0.a.c.x, arg_3.b.a & true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b, _wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(-arg_3.c.x)) * vec4<f32>(arg_0.a.c.x, _wgslsmith_f_op_f32(select(arg_0.a.c.x, arg_3.c.x, false)), arg_3.c.x, _wgslsmith_f_op_f32(103f + var_1.x)))));
    var var_3 = arg_3.b;
    return vec2<f32>(_wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(-1000f - arg_0.a.c.x));
}

fn func_1(arg_0: bool, arg_1: i32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(arg_0, 695f), true == arg_0, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 8268u, u_input.a.x), u_input.a, u_input.a), Struct_2(Struct_1(true, 2147483647i, vec3<bool>(true, arg_0, arg_0), global0.x), Struct_1(arg_0, arg_1, vec3<bool>(true, arg_0, arg_0), global0.x), vec3<f32>(-1566f, 1797f, 521f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2167f, 1000f))))));
    global0 = vec3<i32>(84040i, -arg_1, -1i);
    let var_1 = vec3<u32>(u_input.a.x, u_input.a.x, 6226u);
    var var_2 = vec4<u32>(~u_input.a.x & _wgslsmith_add_u32(_wgslsmith_add_u32(17295u, u_input.a.x) >> (1u % 32u), ~abs(u_input.a.x)), ~(~_wgslsmith_mod_u32(var_1.x, 4638u) ^ select(0u, 7359u << (0u % 32u), !arg_0)), u_input.a.x, ~var_1.x);
    return -(-(vec3<i32>(38774i, global0.x, arg_1) & -vec3<i32>(0i, 73660i, -19783i)) << (~abs(reverseBits(var_1)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(vec3<i32>(global0.x, global0.x, ~12709i), abs(~func_1(false, global0.x) ^ reverseBits(-vec3<i32>(global0.x, 401i, 0i))));
    global0 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(-max(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -37692i, global0.x), vec3<i32>(global0.x, -1i, global0.x)), _wgslsmith_add_vec3_i32(vec3<i32>(18366i, global0.x, 4639i), vec3<i32>(global0.x, global0.x, global0.x))), select(-vec3<i32>(global0.x, 56551i, -54705i) << (~vec3<u32>(u_input.a.x, 4294967295u, 26416u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, global0.x), vec3<i32>(global0.x, 2303i, global0.x), -vec3<i32>(-1i, global0.x, 4069i)), vec3<bool>(true, true, true)), vec3<i32>(global0.x >> (u_input.a.x % 32u), -global0.x, select(global0.x, global0.x, true)) & -vec3<i32>(global0.x, global0.x, -25775i)), select(-abs(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, global0.x, -2147483647i), vec3<i32>(-47787i, global0.x, global0.x))), vec3<i32>(global0.x, ~_wgslsmith_sub_i32(global0.x, global0.x), 1594i), true));
    var var_0 = u_input.a ^ ~vec4<u32>(~min(u_input.a.x, 33387u), 1u, _wgslsmith_add_u32(u_input.a.x, 0u), u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(915f, 498f, -473f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(670f, 2093f, -443f))))))));
    var_0 = vec4<u32>(30408u, ~countOneBits(47326u), 4294967295u, 30303u);
    var var_2 = vec2<bool>(func_2(true, _wgslsmith_f_op_f32(-var_1.x)).a.a.c.x, !(!(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.x), global0.yy) <= (0i & global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_0.x | 10007u));
}

