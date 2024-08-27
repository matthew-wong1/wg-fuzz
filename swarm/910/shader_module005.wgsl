struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(12458u, 76949u, 4294967295u, 1u), vec4<u32>(16958u, 13608u, 82561u, 8653u), vec4<u32>(75770u, 1u, 4294967295u, 0u), vec4<u32>(8173u, 0u, 98117u, 4294967295u), vec4<u32>(1u, 10671u, 1u, 0u), vec4<u32>(4822u, 38542u, 0u, 21344u), vec4<u32>(16599u, 4294967295u, 0u, 88927u), vec4<u32>(1u, 5673u, 4868u, 4294967295u), vec4<u32>(1u, 35310u, 4294967295u, 1u), vec4<u32>(1u, 70465u, 17417u, 1u), vec4<u32>(31803u, 1u, 26711u, 23742u), vec4<u32>(1u, 102814u, 32109u, 57940u), vec4<u32>(28068u, 16225u, 0u, 1u), vec4<u32>(101641u, 44114u, 50946u, 1u), vec4<u32>(26703u, 1u, 30369u, 4294967295u), vec4<u32>(78655u, 0u, 54128u, 9162u), vec4<u32>(4294967295u, 4294967295u, 11950u, 0u), vec4<u32>(1u, 0u, 1099u, 1u), vec4<u32>(14220u, 47070u, 0u, 78819u), vec4<u32>(1u, 98164u, 95351u, 4294967295u), vec4<u32>(31461u, 1u, 4294967295u, 42185u), vec4<u32>(4294967295u, 1u, 1u, 32312u), vec4<u32>(20056u, 49957u, 0u, 33821u), vec4<u32>(4294967295u, 1u, 21356u, 34236u), vec4<u32>(61091u, 1u, 63840u, 44112u), vec4<u32>(18753u, 0u, 30488u, 4294967295u), vec4<u32>(60702u, 0u, 1u, 1u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(u_input.d, reverseBits(u_input.d) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(63614u, 0u, u_input.a)) % 32u), select(u_input.a, _wgslsmith_mult_u32(1u, 1u), true)), u_input.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-463f * arg_0.x))));
    var var_2 = Struct_1(-328f, !(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) + 1739f)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return _wgslsmith_f_op_vec2_f32(select(arg_0, arg_0, vec2<bool>(var_2.b.x, _wgslsmith_mod_u32(1u, 71719u) > _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_0), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, var_0), vec2<u32>(var_0, 4238u))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>) -> f32 {
    global1 = array<vec4<u32>, 28>();
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-499f, 801f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2646f)) + -713f) - _wgslsmith_f_op_f32(132f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_0)).x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_1.x)), arg_1.x)) < 1384f));
    let var_1 = global0[_wgslsmith_index_u32(~(~(~88203u)), 31u)];
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-139f, -1145f, arg_1.x)))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(203f - var_1.a), var_1.a), 387f, _wgslsmith_f_op_f32(min(-738f, arg_0.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0, 1000f), 439f, _wgslsmith_f_op_f32(select(arg_0.x, 820f, true)))))));
    var var_3 = 1310u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1554f) - _wgslsmith_f_op_f32(var_0 * arg_1.x)))) * _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-363f)))))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_1) -> f32 {
    global1 = array<vec4<u32>, 28>();
    global1 = array<vec4<u32>, 28>();
    global1 = array<vec4<u32>, 28>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.d, 31u)];
    var var_1 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-493f, var_0.c)))) + _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.a, arg_3.a), vec2<f32>(-1648f, arg_3.a))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1341f, arg_3.a, -605f, var_0.a) + vec4<f32>(1863f, 548f, var_0.a, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_3.c)), var_0.c, _wgslsmith_f_op_f32(select(528f, -1137f, var_0.b.x)), _wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(1116f, 416f))).x)))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = !arg_0;
    global1 = array<vec4<u32>, 28>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_2(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(22626u, 39091u), vec2<u32>(1u, u_input.d)), _wgslsmith_add_u32(41476u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, u_input.d), vec4<u32>(4294967295u, 4294967295u, 0u, 14816u)))), min(vec2<i32>(arg_3, _wgslsmith_clamp_i32(2147483647i, arg_1, u_input.b)), vec2<i32>(-1i) * -vec2<i32>(u_input.b, -10815i)), -3593i, Struct_1(-104f, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2))))), !select(vec3<bool>(all(vec2<bool>(arg_0, arg_0)), any(vec2<bool>(false, false)), false), select(!vec3<bool>(true, true, arg_0), !vec3<bool>(false, true, arg_0), !vec3<bool>(true, false, arg_0)), select(vec3<bool>(true, false, true), !vec3<bool>(arg_0, arg_0, false), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, true), true))), _wgslsmith_f_op_f32(func_2(~(~u_input.d), ~(-vec2<i32>(1i, u_input.c)) & _wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.b, -2147483647i)), min(vec2<i32>(0i, 23912i), vec2<i32>(u_input.c, arg_3))), ~(-42812i), Struct_1(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(f32(-1f) * -377f)), !select(vec3<bool>(true, true, false), vec3<bool>(arg_0, arg_0, arg_0), arg_0), arg_2))));
    let var_2 = 0i;
    let var_3 = 23127u;
    return -258f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-935f - _wgslsmith_f_op_f32(f32(-1f) * -305f)), vec3<bool>(!(92805i < (u_input.b << (u_input.a % 32u))), any(vec3<bool>(0i != u_input.c, true, all(vec2<bool>(false, true)))), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1360f)) + _wgslsmith_f_op_f32(sign(649f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, u_input.b, _wgslsmith_div_f32(-158f, -1000f), u_input.c >> (u_input.d % 32u))) + _wgslsmith_div_f32(-1413f, 1f)), !(u_input.d > 1u))));
    var var_1 = vec3<bool>(select(any(!var_0.b.zx), false, all(vec3<bool>(-23895i > u_input.c, select(var_0.b.x, true, false), !var_0.b.x))), true, _wgslsmith_sub_i32(-31305i, u_input.b) >= max(-u_input.c, _wgslsmith_mult_i32(abs(u_input.c), u_input.b << (u_input.a % 32u))));
    let var_2 = vec3<i32>(-1i) * -(vec3<i32>(~u_input.b, -14950i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, u_input.c, -27779i), vec4<i32>(944i, u_input.b, -1i, u_input.b))) << (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 19572u, u_input.d), vec3<u32>(u_input.a, 4294967295u, u_input.a)) % vec3<u32>(32u)));
    global0 = array<Struct_1, 31>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(var_0.c, var_0.c))).x)), select(vec3<bool>(var_0.b.x, false, select(true, any(vec4<bool>(var_1.x, var_0.b.x, false, true)), select(var_0.b.x, false, var_1.x))), var_0.b, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * var_0.c) + _wgslsmith_f_op_f32(trunc(var_0.c)))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -277f), var_0.c));
    var_1 = vec3<bool>(select(true, all(vec4<bool>(false, false, var_0.b.x, false)), !(!(!var_0.b.x))), _wgslsmith_f_op_f32(func_4(var_4.xz, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -372f, var_3.a, var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, var_0.a, var_3.c, 1761f) - vec4<f32>(-327f, var_0.c, 429f, var_0.c)))))) < var_3.c, true);
    let var_5 = vec2<u32>(~(~(u_input.a & u_input.a) | abs(~1u)), u_input.a);
    var var_6 = vec4<bool>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-936f, var_0.c)), _wgslsmith_f_op_vec2_f32(floor(var_4.yz)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c, var_0.a, var_4.x, var_4.x), vec4<f32>(var_3.c, var_0.c, -1348f, -1183f)))))) <= _wgslsmith_f_op_f32(var_4.x * var_4.x), !all(vec3<bool>(true, var_3.b.x, false)) | select(any(select(var_0.b.yy, vec2<bool>(var_1.x, var_0.b.x), var_3.b.x)), select(true, var_1.x, var_3.b.x) || all(vec2<bool>(var_1.x, true)), false), var_0.b.x, var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), var_5), 4294967295u), vec2<u32>(5148u, ~var_5.x), !var_6.xx), ~countOneBits(max(var_5, vec2<u32>(u_input.a, var_5.x)))), _wgslsmith_f_op_f32(trunc(-1000f)), ~4294967295u);
}

