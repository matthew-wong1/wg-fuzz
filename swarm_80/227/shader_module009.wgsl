struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-652f, 364f, -662f, -1484f), vec4<f32>(1330f, -760f, 246f, 165f), vec4<f32>(1391f, 310f, 727f, 569f), vec4<f32>(1000f, -1091f, -896f, 1668f), vec4<f32>(-240f, -1682f, 838f, -247f), vec4<f32>(258f, 1511f, 1128f, -491f), vec4<f32>(-1125f, 1000f, 1000f, -1214f), vec4<f32>(-339f, 907f, 2072f, -833f), vec4<f32>(382f, -902f, 1062f, 138f), vec4<f32>(824f, 176f, -1000f, 279f), vec4<f32>(-1102f, 295f, -1379f, 202f), vec4<f32>(-229f, -254f, -439f, -440f), vec4<f32>(-613f, 319f, -403f, -1348f), vec4<f32>(-2313f, 817f, -2373f, 1000f), vec4<f32>(1000f, -129f, -532f, -152f), vec4<f32>(-323f, 2041f, -2506f, 358f), vec4<f32>(1471f, 2643f, 1818f, -213f), vec4<f32>(1942f, 958f, 731f, 1197f), vec4<f32>(-1539f, 1362f, -639f, -693f), vec4<f32>(-314f, 829f, -764f, -469f), vec4<f32>(-750f, -1766f, 1738f, 909f), vec4<f32>(159f, -1000f, -1576f, -1661f), vec4<f32>(-476f, -1000f, -1111f, -109f), vec4<f32>(1452f, 572f, -1923f, 1000f));

var<private> global1: array<vec3<u32>, 31>;

var<private> global2: bool = true;

var<private> global3: array<vec2<f32>, 30>;

var<private> global4: vec4<f32> = vec4<f32>(527f, -1007f, -1454f, -485f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(min(min(vec3<i32>(-11199i, 1i, -65056i), vec3<i32>(2147483647i, u_input.a, 2147483647i)), ~vec3<i32>(u_input.a, -50976i, 9217i)), vec3<i32>(0i, -1i, u_input.a) & -vec3<i32>(u_input.a, u_input.a, u_input.a)), ~_wgslsmith_add_i32(3268i, 1i) >> (1u % 32u));
    var var_1 = Struct_2(1u);
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(global4.xyx));
    var_1 = Struct_2(36073u);
    var_1 = Struct_2(reverseBits(35340u));
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_3() -> u32 {
    global2 = -1i > u_input.a;
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(12959u, 31u)], vec3<u32>(0u, 25043u, 12547u)), 24u)])) - global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~24435u, 44691u), 24u)])))));
    global3 = array<vec2<f32>, 30>();
    var var_1 = global4.x;
    global0 = array<vec4<f32>, 24>();
    return firstLeadingBit(firstLeadingBit(1u));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_2, arg_2, 37094u, arg_2)), abs(vec4<u32>(arg_2, _wgslsmith_add_u32(arg_2, 2489u), 30565u & arg_2, _wgslsmith_mod_u32(16310u, arg_2)))));
    var var_1 = Struct_2(arg_2);
    var_0 = Struct_2(~(~_wgslsmith_mod_u32(arg_2, 39414u)));
    let var_2 = ~u_input.a;
    global4 = _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(firstLeadingBit(var_0.a)), ~var_1.a, ~(~var_0.a)), 24u)]);
    return Struct_2(0u);
}

fn func_1() -> bool {
    let var_0 = func_4(_wgslsmith_f_op_f32(func_2()), _wgslsmith_sub_i32(u_input.a ^ u_input.a, countOneBits(~u_input.a >> (51762u % 32u))), _wgslsmith_div_u32(func_3(), 1u), select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - global4.x)), true, false));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-130f - _wgslsmith_f_op_f32(-1218f + global4.x)));
    let var_2 = var_0;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global4.x, global4.x, true)), -212f) * global4.x)) * global4.x);
    let var_3 = (-4042i << (firstLeadingBit(var_0.a) % 32u)) >= u_input.a;
    return !(u_input.a != max(~(-16364i) << (var_2.a % 32u), -(~1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(true, func_1(), select(true, false, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))));
    var var_1 = func_4(_wgslsmith_f_op_f32(ceil(-659f)), _wgslsmith_sub_i32(~(-u_input.a) & u_input.a, i32(-1i) * -1i), 1u, var_0.a);
    var var_2 = Struct_1(var_0.b.x | all(select(vec3<bool>(var_0.a, var_0.a, var_0.b.x), var_0.b, !vec3<bool>(true, var_0.b.x, var_0.b.x))), vec3<bool>(all(!(!vec4<bool>(var_0.a, var_0.a, var_0.b.x, var_0.b.x))), var_0.a, func_1()));
    var var_3 = _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(func_4(global4.x, ~u_input.a, var_1.a, global4.x == _wgslsmith_f_op_f32(trunc(1739f))).a & 1u, 24u)] - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-328f, _wgslsmith_div_f32(142f, -723f), _wgslsmith_f_op_f32(round(679f)), global4.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 24u)])) - global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.a, 75323u), 24u)])), global0[_wgslsmith_index_u32(var_1.a, 24u)]));
    var var_4 = Struct_1(true, var_0.b);
    global4 = vec4<f32>(var_3.x, _wgslsmith_f_op_f32(var_3.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1593f - global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.x)) + _wgslsmith_f_op_f32(step(var_3.x, 1417f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2041f + global4.x) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-275f)))))), 140f);
    var_4 = Struct_1(true, vec3<bool>(any(var_2.b.zy), var_4.a, var_4.a));
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, abs(var_1.a));
}

