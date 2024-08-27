struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false));

var<private> global1: array<Struct_3, 28>;

var<private> global2: bool;

var<private> global3: array<Struct_3, 6>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    return ~u_input.c.x;
}

fn func_2() -> vec4<f32> {
    global0 = array<vec4<bool>, 27>();
    let var_0 = vec3<u32>(firstTrailingBit(~(0u | u_input.b.x)), _wgslsmith_clamp_u32(1u, ~u_input.b.x, _wgslsmith_sub_u32(87997u, u_input.d.x) & u_input.c.x), firstLeadingBit(1u)) & reverseBits(vec3<u32>(~_wgslsmith_mult_u32(41706u, u_input.a), ~func_3(vec4<f32>(-1229f, 1673f, -2137f, -1000f), 60188u, vec3<i32>(-18205i, 1i, -2147483647i), Struct_1(true, global0[_wgslsmith_index_u32(1u, 27u)], -2531i)), 17109u));
    let var_1 = any(vec2<bool>(true, true));
    let var_2 = 9733i;
    let var_3 = max(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_2, var_2) | (41768i ^ var_2), ~0i), ~min(vec2<i32>(var_2, var_2), vec2<i32>(-1i, -1i)) ^ vec2<i32>(36202i, _wgslsmith_dot_vec3_i32(vec3<i32>(-37252i, 8341i, var_2), vec3<i32>(var_2, 32277i, var_2)))), select(firstLeadingBit(countOneBits(vec2<i32>(var_2, -2147483647i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2, 1i), vec2<i32>(var_2, -80555i) & vec2<i32>(var_2, 0i), abs(vec2<i32>(var_2, 2147483647i))), !vec2<bool>(var_1, true)) & select(-vec2<i32>(-2147483647i, var_2) >> (select(vec2<u32>(4294967295u, var_0.x), var_0.zx, var_1) % vec2<u32>(32u)), vec2<i32>(-39906i << (var_0.x % 32u), var_2), vec2<bool>(all(vec4<bool>(true, var_1, true, var_1)), false)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(742f, -1108f, 1000f, 169f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1466f, _wgslsmith_f_op_f32(f32(-1f) * -143f), 315f, _wgslsmith_f_op_f32(1003f - -360f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-929f, 417f, 1166f, 305f)), vec4<f32>(-286f, -217f, -406f, -539f)))));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-105f, 855f, -512f, -1166f))), _wgslsmith_f_op_vec4_f32(func_2())), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(561f))), _wgslsmith_f_op_f32(ceil(-345f)), _wgslsmith_f_op_f32(max(-322f, -208f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(376f * -1521f))), any(select(!global0[_wgslsmith_index_u32(35333u, 27u)], select(global0[_wgslsmith_index_u32(11598u, 27u)], global0[_wgslsmith_index_u32(31397u, 27u)], vec4<bool>(true, false, true, true)), true)))));
    let var_1 = var_0.x;
    let var_2 = select(vec3<bool>(true, all(vec2<bool>(true, true)), var_0.x <= -826f), vec3<bool>(true, true, true), all(select(global0[_wgslsmith_index_u32(~u_input.c.x, 27u)], select(global0[_wgslsmith_index_u32(4858u, 27u)], select(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], vec4<bool>(true, false, false, true)), vec4<bool>(true, false, false, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1439f)) + _wgslsmith_f_op_f32(var_0.x - var_0.x))))));
    var var_4 = Struct_3(max(vec3<i32>(1i, 74819i, ~7522i) << (firstTrailingBit(~vec3<u32>(14622u, u_input.c.x, u_input.a)) % vec3<u32>(32u)), select(countOneBits(vec3<i32>(78i, -16849i, 0i)), vec3<i32>(-10923i, 28522i, 0i) >> (vec3<u32>(0u, u_input.c.x, 1u) % vec3<u32>(32u)), var_2) | ~vec3<i32>(1i, 1i, 1i)), Struct_1(_wgslsmith_f_op_f32(-1120f - -1105f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), vec4<bool>(true, true, all(select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, true, false), var_2)), false), ~(-1i)), ~(~reverseBits(-vec3<i32>(2147483647i, -17579i, -1i))));
    return var_4.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = any(select(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), any(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, all(select(vec4<bool>(false, false, true, false), global0[_wgslsmith_index_u32(u_input.a, 27u)], true)), true)));
    var var_0 = min(vec3<i32>(min(-24016i, _wgslsmith_mult_i32(~0i, 113239i)), ~(~_wgslsmith_mod_i32(1i, 27067i)), max(func_1(), ~24237i)), _wgslsmith_mod_vec3_i32(max(vec3<i32>(_wgslsmith_div_i32(2147483647i, -2147483647i), -25468i, firstTrailingBit(-1i)), -abs(vec3<i32>(58397i, -40944i, 0i))), vec3<i32>(i32(-1i) * -8269i, 1i, -abs(-30713i))));
    global0 = array<vec4<bool>, 27>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1025f) + -2043f), _wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -766f))))));
    let var_2 = _wgslsmith_add_i32(-29502i, var_0.x ^ ~select(25467i, -2147483647i, true)) > _wgslsmith_sub_i32(-_wgslsmith_add_i32(_wgslsmith_mult_i32(48714i, -29757i), var_0.x), reverseBits(select(max(var_0.x, -37605i), var_0.x, false)));
    let var_3 = select(~(((vec3<i32>(-59441i, -10655i, var_0.x) ^ vec3<i32>(18739i, var_0.x, 0i)) ^ -vec3<i32>(62883i, -8971i, var_0.x)) & ~(vec3<i32>(var_0.x, var_0.x, 29679i) & vec3<i32>(var_0.x, -31741i, var_0.x))), vec3<i32>(var_0.x, var_0.x, 29869i), !vec3<bool>(!var_2, true, var_1.x > 1162f));
    global1 = array<Struct_3, 28>();
    var var_4 = _wgslsmith_mod_vec3_u32(select(min(_wgslsmith_sub_vec3_u32(vec3<u32>(90816u, u_input.a, 1u), vec3<u32>(u_input.c.x, u_input.b.x, u_input.a)), vec3<u32>(u_input.c.x, u_input.b.x, u_input.d.x) << (vec3<u32>(u_input.b.x, u_input.d.x, 4294967295u) % vec3<u32>(32u))) & vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~u_input.b.x, 88069u), abs(min(vec3<u32>(u_input.d.x, u_input.d.x, 24608u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 45078u), vec3<u32>(u_input.b.x, u_input.a, 4294967295u)))), !vec3<bool>(var_2, true, false)), ~(~(~vec3<u32>(u_input.b.x, 1u, 1u))));
    let var_5 = var_0.x >> (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.yx), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f) - _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -1965f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x))), var_4.xx);
}

