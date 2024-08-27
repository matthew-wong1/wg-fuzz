struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-2329f, 348f, -229f, 1650f), vec4<f32>(619f, -1000f, 278f, 457f), vec4<f32>(-919f, 1804f, -1022f, 1306f));

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<f32, 23>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1386f, arg_3.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(38972u, 23u)], arg_0) - vec2<f32>(324f, 328f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-780f, 998f))) - vec2<f32>(-245f, 1330f)))))));
    let var_1 = true && (arg_2 | arg_2);
    var var_2 = ~arg_3.c;
    return var_1;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    global0 = array<vec4<f32>, 3>();
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(abs(countOneBits(u_input.c) | u_input.c), -2147483647i), arg_2.b.x, select(_wgslsmith_mod_i32(arg_3.c, min(min(1i, -1i), countOneBits(-15499i))), -1i ^ ~(-arg_3.c), all(global1.xz)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(-38079i, -1i, 1i), vec3<i32>(-8465i, arg_2.b.x, 0i)), vec3<i32>(_wgslsmith_mod_i32(-27834i, arg_3.c), _wgslsmith_mult_i32(arg_2.b.x, 35206i), _wgslsmith_add_i32(-15605i, -21766i))), -vec3<i32>(_wgslsmith_sub_i32(arg_3.c, -29799i), 1i, 2147483647i << (arg_3.a % 32u))));
    var var_1 = select(!select(select(global1.zx, global1.yx, true), global1.yz, all(select(vec2<bool>(arg_0, global1.x), vec2<bool>(global1.x, arg_0), true))), select(vec2<bool>(false | (global1.x & global1.x), any(vec3<bool>(false, arg_0, global1.x))), !global1.yz, global1.yy), select(!select(!global1.zx, select(vec2<bool>(arg_0, false), vec2<bool>(true, true), vec2<bool>(true, global1.x)), true || arg_0), global1.yz, global1.x));
    let var_2 = 3139f;
    return !all(select(select(!vec3<bool>(true, global1.x, var_1.x), !vec3<bool>(false, arg_0, false), true), vec3<bool>(true, any(vec3<bool>(true, false, false)), true), select(vec3<bool>(true, false, false), vec3<bool>(var_1.x, true, false), true)));
}

fn func_1(arg_0: i32, arg_1: u32) -> vec3<f32> {
    var var_0 = arg_1;
    global1 = select(!select(select(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, true, global1.x)), !vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, true, true)), vec3<bool>(66870u <= arg_1, func_2(1424f, true, global1.x, Struct_2(u_input.a.x, global2[_wgslsmith_index_u32(arg_1, 23u)], u_input.c)), !global1.x), countOneBits(arg_0) >= u_input.b), !(!vec3<bool>(func_3(global1.x, 25475i, Struct_1(vec2<u32>(arg_1, u_input.a.x), vec3<i32>(u_input.c, 1i, u_input.c)), Struct_2(1493u, global2[_wgslsmith_index_u32(42973u, 23u)], 1i)), true, global1.x)), false);
    global2 = array<f32, 23>();
    var_0 = 4294967295u;
    global2 = array<f32, 23>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-516f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(25929u, 23u)] + 1621f) - _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(64169u, 23u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(413f, _wgslsmith_f_op_f32(f32(-1f) * -1806f), any(vec3<bool>(true, global1.x, global1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(121f, -1515f, global2[_wgslsmith_index_u32(4294967295u, 23u)]) - _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], 572f, global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec3<f32>(545f, 812f, global2[_wgslsmith_index_u32(0u, 23u)]))) * _wgslsmith_f_op_vec3_f32(func_1(u_input.b, u_input.a.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(715f)) - -745f), _wgslsmith_f_op_f32(-1f))));
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(reverseBits(-47702i), -u_input.c), reverseBits(max(vec2<i32>(u_input.c, 23645i), ~vec2<i32>(-5630i, u_input.b)))), vec2<i32>(u_input.c, u_input.b));
    var var_2 = Struct_2(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(27093i, 36247u)).x)) + var_0.x)), ~27632i >> (1u % 32u));
    var var_3 = -2046f;
    let var_4 = vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), _wgslsmith_add_vec2_u32(firstTrailingBit(u_input.a.zz), vec2<u32>(0u, 1u)))), _wgslsmith_div_u32(u_input.a.x, ~abs(37984u)) | (~(u_input.a.x ^ u_input.a.x) << (~u_input.a.x % 32u)), _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) ^ vec3<u32>(127488u, 30413u, var_2.a)), u_input.a), 49418u);
    global0 = array<vec4<f32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yy), vec2<f32>(_wgslsmith_f_op_f32(step(1000f, -1185f)), _wgslsmith_div_f32(-1270f, -1332f)))), ~select(vec3<u32>(1722u, 1u, var_4.x), vec3<u32>(u_input.a.x, 27672u, 88323u), vec3<bool>(false, false, false)) ^ u_input.a, u_input.b, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(597f - -1682f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1012f))), select(!global1.x, all(vec3<bool>(false, global1.x, global1.x)), true))), var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(var_2.b - var_0.x))))), 966f));
}

