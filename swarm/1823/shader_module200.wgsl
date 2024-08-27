struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

var<private> global1: array<i32, 28>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = 1u;
    global0 = array<vec3<bool>, 21>();
    var var_1 = arg_0.d;
    var_1 = arg_0.d;
    var var_2 = 1946f;
    return 1503f;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, -1462f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(false, Struct_1(-542f, vec2<u32>(u_input.e, u_input.b), global1[_wgslsmith_index_u32(u_input.b, 28u)], u_input.d.yyy), vec2<bool>(false, arg_1), Struct_2(arg_0.x, -1i, 1u)))) - _wgslsmith_f_op_f32(-715f * 1374f)))), u_input.d.zy, -global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(~u_input.a), 5572u), 28u)], ~(~u_input.d.wyw) | (_wgslsmith_div_vec3_u32(firstTrailingBit(u_input.d.wzz), u_input.d.yyz << (vec3<u32>(u_input.d.x, 19421u, u_input.e) % vec3<u32>(32u))) << (~vec3<u32>(37059u, 4294967295u, u_input.b) % vec3<u32>(32u))));
    var var_1 = arg_0;
    let var_2 = Struct_1(-134f, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a & _wgslsmith_dot_vec4_u32(u_input.d, u_input.d), _wgslsmith_dot_vec4_u32(u_input.d, ~u_input.d)), ~countOneBits(vec2<u32>(62736u, 56126u))), 1i, var_0.d);
    var var_3 = _wgslsmith_div_u32(countOneBits(var_2.d.x), u_input.b) << (_wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_mod_u32(var_2.d.x, var_2.b.x) >> (1u % 32u), ~_wgslsmith_clamp_u32(reverseBits(var_0.b.x), 36247u | u_input.b, ~var_0.d.x)) % 32u);
    var_3 = _wgslsmith_sub_u32(1u, var_0.b.x);
    return var_2.a;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    global1 = array<i32, 28>();
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    global1 = array<i32, 28>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1099f, arg_0.b.a, 614f, -948f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_0.b.a, arg_1, 890f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -451f, arg_1, arg_1) - vec4<f32>(-631f, 1000f, arg_1, -827f)))))));
    return arg_0.b;
}

fn func_1(arg_0: vec2<f32>) -> vec2<i32> {
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(arg_0.x, 1000f, -908f, -1346f), false))) < arg_0.x, Struct_1(arg_0.x, vec2<u32>(19143u, select(32590u, u_input.b, false)), ~(-u_input.c), u_input.d.wyz), vec2<bool>(true, true), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)), 3320i, _wgslsmith_add_u32(26991u, u_input.d.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + -1662f), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.x, -1152f))))), ~u_input.c >= (_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.e, 28u)], -2147483647i) >> (max(1u, u_input.e) % 32u)))));
    global1 = array<i32, 28>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) * arg_0.x) - 183f), 742f, 2071f, _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(136f * -999f)))))));
    let var_2 = !any(select(vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(var_1, _wgslsmith_f_op_vec4_f32(-var_1)));
    return select(select(~(-(~vec2<i32>(u_input.c, u_input.c))), -vec2<i32>(u_input.c, global1[_wgslsmith_index_u32(u_input.e, 28u)]) ^ vec2<i32>(_wgslsmith_mod_i32(-51403i, 1i), _wgslsmith_mod_i32(u_input.c, u_input.c)), vec2<bool>(!(!var_2), false)), ~_wgslsmith_mult_vec2_i32(~(-vec2<i32>(global1[_wgslsmith_index_u32(97606u, 28u)], 1i)), select(vec2<i32>(2147483647i, u_input.c), vec2<i32>(u_input.c, u_input.c) & vec2<i32>(0i, 12584i), select(vec2<bool>(true, false), vec2<bool>(var_2, true), var_2))), !select(select(select(vec2<bool>(true, var_2), vec2<bool>(var_2, false), var_2), !vec2<bool>(false, var_2), 4294967295u >= u_input.b), vec2<bool>(var_0.c != -51369i, var_2), !vec2<bool>(false, var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(~_wgslsmith_dot_vec2_i32(~func_1(vec2<f32>(-157f, -359f)), vec2<i32>(max(-2147483647i, -1i), ~1i)), 1i, _wgslsmith_dot_vec2_i32(-min(~vec2<i32>(24876i, u_input.c), abs(vec2<i32>(u_input.c, global1[_wgslsmith_index_u32(u_input.e, 28u)]))), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-16726i, global1[_wgslsmith_index_u32(28955u, 28u)], global1[_wgslsmith_index_u32(u_input.e, 28u)]) >> (vec3<u32>(22785u, u_input.a, 26163u) % vec3<u32>(32u)), select(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 28u)], 53914i, global1[_wgslsmith_index_u32(u_input.b, 28u)]), vec3<i32>(1i, -1i, global1[_wgslsmith_index_u32(4294967295u, 28u)]), false)))), global1[_wgslsmith_index_u32(~4294967295u, 28u)]);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(233f, 1000f, false)), _wgslsmith_f_op_f32(select(-1292f, -880f, true)))), _wgslsmith_f_op_f32(func_2(vec4<f32>(1587f, -462f, 616f, -612f), true)), -773f, _wgslsmith_div_f32(-377f, _wgslsmith_f_op_f32(f32(-1f) * -958f)))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-func_4(Struct_3(true, Struct_1(-1322f, u_input.d.wx, u_input.c, u_input.d.yxx), vec2<bool>(false, true), Struct_2(1000f, u_input.c, u_input.a)), -324f).a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - -729f), _wgslsmith_f_op_f32(-1000f - -465f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -559f)), -722f))));
    global1 = array<i32, 28>();
    global0 = array<vec3<bool>, 21>();
    global1 = array<i32, 28>();
    global0 = array<vec3<bool>, 21>();
    var var_2 = vec3<f32>(686f, var_1.x, 594f);
    let x = u_input.a;
    s_output = StorageBuffer(min(var_0.x, -_wgslsmith_mult_i32(-1i, 1i)), vec2<u32>(~_wgslsmith_mult_u32(u_input.b, ~29862u), ~11598u & (u_input.a | ~31185u)), _wgslsmith_add_i32(func_1(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec4<f32>(var_1.x, -1000f, 683f, var_1.x), false)), _wgslsmith_f_op_f32(-var_2.x))).x, _wgslsmith_sub_i32(countOneBits(abs(u_input.c)), i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_2.x, -1030f, var_2.x) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1458f, -1575f, 174f, 890f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(510f, var_2.x, -2383f, var_2.x) - vec4<f32>(895f, var_1.x, -858f, 862f))))), 41651u);
}

