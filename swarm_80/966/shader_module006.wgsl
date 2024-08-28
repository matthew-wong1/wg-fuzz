struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    return true;
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_1(1f, -(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, 24632i, u_input.a.x, u_input.d.x), vec4<i32>(0i, u_input.d.x, u_input.b, 2147483647i) >> (vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c) % vec4<u32>(32u)))));
    var_0 = Struct_1(_wgslsmith_div_f32(var_0.a, _wgslsmith_div_f32(266f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1032f), -1269f))), vec4<i32>(reverseBits(2147483647i), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, 0i, var_0.b.x), var_0.b.ywx) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(u_input.c, u_input.c, 12251u)), ~vec3<u32>(u_input.c, u_input.c, 33896u)) % 32u), _wgslsmith_add_i32(~firstLeadingBit(u_input.b), var_0.b.x), var_0.b.x));
    let var_1 = 4294967295u;
    let var_2 = var_0.b.xxy;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), arg_0.x);
    return global0.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_mult_vec2_i32(max(u_input.a, max(-u_input.a, u_input.a)) | u_input.a, vec2<i32>(u_input.a.x, u_input.a.x));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)) + arg_1))), select(u_input.d, vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(u_input.a), vec2<i32>(var_0.x, var_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.d.x, -8479i, u_input.b), vec4<i32>(arg_3, var_0.x, -47458i, 13271i) << (vec4<u32>(u_input.c, u_input.c, 17245u, u_input.c) % vec4<u32>(32u))), _wgslsmith_div_i32(2147483647i, 23116i), arg_3), func_1(vec3<bool>(arg_2, any(vec4<bool>(arg_2, true, false, true)), arg_2))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-991f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-595f)))), firstTrailingBit(-min(vec4<i32>(var_1.b.x, 5494i, -23145i, arg_3), vec4<i32>(arg_3, 1i, var_0.x, arg_3))));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_1, arg_1)), _wgslsmith_f_op_f32(min(117f, arg_1)), _wgslsmith_f_op_f32(ceil(var_2.a)), _wgslsmith_f_op_f32(arg_1 * -1612f)), vec4<f32>(-161f, var_2.a, -702f, var_2.a)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a))), -525f, _wgslsmith_div_f32(1193f, var_2.a), -542f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-977f, var_2.a, -564f, -1335f)), arg_2));
    return -21642i;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1), firstLeadingBit(u_input.d << (~(vec4<u32>(29070u, arg_0.x, u_input.c, u_input.c) << (vec4<u32>(u_input.c, 1990u, 4294967295u, 68902u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_1 = func_4(!vec2<bool>(func_3(vec2<f32>(-1000f, arg_1)) == any(global0.ywy), global0.x), -1380f, false, 1i);
    let var_2 = !vec2<bool>(countOneBits(11635u) != min(arg_0.x, _wgslsmith_div_u32(u_input.c, 73062u)), true);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-915f)) + 855f));
    let var_4 = u_input.a.x;
    return Struct_1(_wgslsmith_f_op_f32(1839f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f) - var_0.a)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_4, u_input.a.x, -30809i, u_input.d.x), _wgslsmith_mult_vec4_i32(var_0.b, vec4<i32>(u_input.a.x, 47999i, var_0.b.x, 2147483647i))), _wgslsmith_mod_i32(-u_input.b, 1i >> (arg_0.x % 32u)), 25901i, i32(-1i) * -29407i), vec4<i32>(var_0.b.x, var_0.b.x, firstTrailingBit(18829i), ~(36966i | var_0.b.x))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<i32>) -> bool {
    var var_0 = vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1693f * arg_1.x) + -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(624f, arg_1.x))))), arg_1.x);
    global0 = select(!(!select(!vec4<bool>(false, global0.x, true, false), select(vec4<bool>(true, global0.x, true, false), vec4<bool>(false, true, global0.x, false), vec4<bool>(false, global0.x, global0.x, false)), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), vec4<bool>(_wgslsmith_f_op_f32(round(var_0.x)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1285f), arg_1.x), global0.x, (arg_0.b.x ^ ~(-1i)) < _wgslsmith_div_i32(16921i | arg_0.b.x, u_input.b), _wgslsmith_f_op_f32(467f - -444f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(254f)))), vec4<bool>(false, true, true, global0.x & (_wgslsmith_f_op_f32(arg_1.x - var_0.x) >= -108f)));
    global0 = !(!(!select(!vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, false, false, global0.x), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, false, false, global0.x), vec4<bool>(true, true, true, false)))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-var_0.x), 1987f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(floor(605f)), -2278f, _wgslsmith_f_op_f32(-arg_1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.a)), var_0.x, -1000f))));
    let var_2 = -2147483647i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a - -709f), arg_0.a)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1069f - _wgslsmith_f_op_f32(-var_0.x)), -1168f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(select(vec4<bool>(func_1(global0.yww), any(global0.www), !global0.x, true), !vec4<bool>(false, global0.x, false, global0.x), true), vec4<bool>(true, true, !any(vec4<bool>(true, true, true, false)), func_5(func_2(vec3<u32>(u_input.c, 3969u, 0u), -122f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -781f)), ~vec3<i32>(1i, u_input.d.x, u_input.b))), !global0.x | !global0.x);
    global0 = !(!vec4<bool>(global0.x, (u_input.b > -50200i) != true, true && select(global0.x, global0.x, global0.x), !global0.x));
    let var_0 = func_2(~(vec3<u32>(57772u >> (1u % 32u), min(1u, 44525u), 60643u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 1u, 96765u) & vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 25525u, 5063u) & vec3<u32>(7352u, 63764u, 20134u), vec3<u32>(u_input.c, u_input.c, 4294967295u))), 178f);
    var var_1 = ~(-29557i);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1512f, var_0.a))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.a, 267f)), _wgslsmith_f_op_f32(f32(-1f) * -1875f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-697f, var_0.a))))));
    var var_3 = global0.x;
    var_3 = global0.x;
    var var_4 = _wgslsmith_mult_u32(max(16167u, min(~14712u, (40342u ^ u_input.c) >> (41485u % 32u))), _wgslsmith_div_u32(~(~(~4294967295u)), 83595u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(select(14259u, 0u, true), 46967u, 50279u, ~(~u_input.c)), ~countOneBits(vec4<u32>(u_input.c, u_input.c, u_input.c, 85761u))), u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1214f, 1466f, -609f, var_2.x))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, -641f, -846f, var_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.a)), -614f, 1125f, _wgslsmith_f_op_f32(-var_0.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1632f, var_2.x, -803f, var_0.a), vec4<f32>(var_0.a, 307f, -1989f, var_2.x), vec4<bool>(global0.x, global0.x, global0.x, true))))))), u_input.a.x);
}

