struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
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

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec3<u32>(16993u, 0u, 0u))), Struct_2(Struct_1(vec3<u32>(49258u, 52227u, 35118u)), Struct_1(vec3<u32>(3212u, 0u, 1u))), Struct_2(Struct_1(vec3<u32>(51553u, 9713u, 113541u)), Struct_1(vec3<u32>(81286u, 4294967295u, 41894u))), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<u32>(40803u, 37980u, 1u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(vec3<u32>(1u, 42992u, 0u))), Struct_2(Struct_1(vec3<u32>(18937u, 129409u, 4294967295u)), Struct_1(vec3<u32>(1u, 4294967295u, 1u))), Struct_2(Struct_1(vec3<u32>(0u, 19911u, 90057u)), Struct_1(vec3<u32>(122230u, 56821u, 0u))), Struct_2(Struct_1(vec3<u32>(0u, 1u, 0u)), Struct_1(vec3<u32>(33660u, 45258u, 10235u))), Struct_2(Struct_1(vec3<u32>(35628u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(49564u, 1u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(55422u, 0u, 1u)), Struct_1(vec3<u32>(37341u, 1u, 77402u))), Struct_2(Struct_1(vec3<u32>(76574u, 25522u, 7017u)), Struct_1(vec3<u32>(31393u, 12151u, 17810u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 2994u, 1u)), Struct_1(vec3<u32>(0u, 72282u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(71469u, 1u, 10718u)), Struct_1(vec3<u32>(1u, 1u, 64062u))), Struct_2(Struct_1(vec3<u32>(33677u, 98564u, 13424u)), Struct_1(vec3<u32>(65101u, 4294967295u, 41889u))), Struct_2(Struct_1(vec3<u32>(79324u, 1u, 0u)), Struct_1(vec3<u32>(1008u, 41044u, 31062u))), Struct_2(Struct_1(vec3<u32>(14952u, 27451u, 40638u)), Struct_1(vec3<u32>(34902u, 35603u, 1u))), Struct_2(Struct_1(vec3<u32>(32118u, 1u, 4294967295u)), Struct_1(vec3<u32>(1u, 4294967295u, 34281u))), Struct_2(Struct_1(vec3<u32>(35151u, 1u, 4294967295u)), Struct_1(vec3<u32>(0u, 49072u, 69113u))), Struct_2(Struct_1(vec3<u32>(33171u, 4294967295u, 1u)), Struct_1(vec3<u32>(1u, 4294967295u, 1u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 76238u)), Struct_1(vec3<u32>(1u, 4294967295u, 1u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 12357u, 0u)), Struct_1(vec3<u32>(67015u, 1u, 36219u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 3017u, 10572u)), Struct_1(vec3<u32>(648u, 4294967295u, 10419u))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -521f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1166f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1250f + -390f), -1586f))));
    var var_1 = global1[_wgslsmith_index_u32(~(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 1u, 16152u), vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.d.x))) ^ u_input.b.x), 23u)];
    global1 = array<Struct_2, 23>();
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.a.x, 29272u, var_1.b.a.x), ~(~(u_input.d | firstLeadingBit(var_1.b.a)))), 23u)];
    var var_2 = var_1.a;
    return !(!(!select(true, true, true)));
}

fn func_2(arg_0: vec2<i32>) -> vec4<bool> {
    global1 = array<Struct_2, 23>();
    global0 = !(!select(false, true, false));
    var var_0 = Struct_4(vec2<bool>(!any(vec2<bool>(true, false)), false != !func_3()), ~(1096i ^ -countOneBits(arg_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-502f + _wgslsmith_f_op_f32(-837f * _wgslsmith_f_op_f32(1949f + -173f))), -616f, -1969f), u_input.d);
    let var_1 = 672f;
    global1 = array<Struct_2, 23>();
    return !vec4<bool>(false, func_3(), any(select(vec3<bool>(var_0.a.x, false, var_0.a.x), !vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), !vec3<bool>(var_0.a.x, true, var_0.a.x))), !(1f < _wgslsmith_f_op_f32(ceil(var_1))));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    global1 = array<Struct_2, 23>();
    global0 = any(func_2(countOneBits(vec2<i32>(arg_0 >> (u_input.a % 32u), arg_0))));
    let var_0 = Struct_2(Struct_1(vec3<u32>(0u, ~1u, ~select(u_input.a, u_input.d.x, true))), Struct_1(u_input.d));
    var var_1 = select(vec3<bool>(true, true, !any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), !(!select(func_2(vec2<i32>(-2147483647i, u_input.c)).zzy, vec3<bool>(true, true, true), func_2(vec2<i32>(arg_0, arg_0)).xwz)), vec3<bool>(false, !select(true, any(vec3<bool>(true, true, true)), true), select(false, func_2(reverseBits(vec2<i32>(u_input.c, u_input.c))).x, true)));
    let var_2 = Struct_4(!(!(!var_1.zz)), _wgslsmith_dot_vec4_i32(vec4<i32>(-15608i, u_input.c, _wgslsmith_sub_i32(abs(arg_0), _wgslsmith_div_i32(arg_0, -41073i)), abs(u_input.c)), -vec4<i32>(_wgslsmith_mod_i32(u_input.c, 47139i), -27378i, u_input.c, -u_input.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 849f, -144f), vec3<f32>(-119f, -104f, 748f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-981f, 362f, -1120f))))), func_2(select(firstLeadingBit(vec2<i32>(u_input.c, 2147483647i)), max(vec2<i32>(arg_0, u_input.c), vec2<i32>(arg_0, 28364i)), var_1.x)).x)), vec3<u32>(var_0.b.a.x, 1u, 1u));
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2417f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.c.x, _wgslsmith_div_f32(-1428f, var_2.c.x)))), var_2.c.x, -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(min(~u_input.c, _wgslsmith_clamp_i32(u_input.c, u_input.c, -2147483647i)))) - vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(541f, 441f, 1345f, -1000f) - vec4<f32>(-617f, 1623f, 247f, 1276f)))))));
    global0 = true;
    var var_1 = -vec4<i32>(u_input.c, ~1i, u_input.c, -2147483647i) & max(~countOneBits(vec4<i32>(u_input.c, u_input.c, u_input.c, -18775i)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 53300i), vec4<i32>(27096i, u_input.c, 2147483647i, -35395i)), -vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.c)), firstTrailingBit(vec4<i32>(0i, u_input.c, -1i, u_input.c) & vec4<i32>(-18187i, 0i, 0i, -2147483647i))));
    let var_2 = vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)));
    let var_3 = Struct_3(firstTrailingBit(27649i), Struct_1(~(~u_input.d)), 26870u);
    global0 = select(all(vec4<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)), func_3(), _wgslsmith_f_op_f32(max(var_2.x, var_0.x)) <= 980f, func_3())), true, false);
    var var_4 = global1[_wgslsmith_index_u32(u_input.d.x >> (u_input.e.x % 32u), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xxz);
}

