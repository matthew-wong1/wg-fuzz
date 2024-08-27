struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19>;

var<private> global1: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(72570u, 70295u, 0u, 60253u), vec4<u32>(48196u, 10980u, 12874u, 1u), vec4<u32>(0u, 38752u, 4294967295u, 18102u), vec4<u32>(29556u, 1u, 89136u, 0u), vec4<u32>(0u, 5360u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 1u, 52461u, 4294967295u), vec4<u32>(18862u, 14893u, 0u, 0u), vec4<u32>(4294967295u, 1566u, 71237u, 5645u), vec4<u32>(4415u, 25930u, 140688u, 16959u), vec4<u32>(35421u, 77449u, 37372u, 2010u), vec4<u32>(0u, 14948u, 0u, 74909u), vec4<u32>(42383u, 1u, 4294967295u, 4294967295u), vec4<u32>(15238u, 1u, 61234u, 4294967295u), vec4<u32>(0u, 0u, 12686u, 40528u), vec4<u32>(4294967295u, 4294967295u, 87648u, 13742u), vec4<u32>(85592u, 4294967295u, 0u, 4294967295u), vec4<u32>(38923u, 1u, 27635u, 3274u), vec4<u32>(3619u, 0u, 58958u, 1u), vec4<u32>(65902u, 4294967295u, 86608u, 1u), vec4<u32>(1u, 4294967295u, 18202u, 0u), vec4<u32>(4294967295u, 4294967295u, 5389u, 0u), vec4<u32>(17754u, 1u, 1u, 48775u));

var<private> global2: f32 = 644f;

var<private> global3: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(72566u, 4294967295u, 22679u), vec3<u32>(26882u, 0u, 0u));

var<private> global4: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<f32>) -> bool {
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(~(62217u & ~(u_input.b >> (111118u % 32u))), 3u)], arg_0, _wgslsmith_f_op_vec2_f32(-arg_2.yz), _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)), -1000f)))));
    global0 = array<vec4<u32>, 19>();
    global0 = array<vec4<u32>, 19>();
    let var_1 = _wgslsmith_clamp_u32((u_input.b | u_input.b) ^ var_0.a.x, reverseBits(0u), ~_wgslsmith_clamp_u32(22560u, abs(~62786u), var_0.a.x));
    var_0 = Struct_1(vec3<u32>(u_input.b, countOneBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 12300u, 39779u), global3[_wgslsmith_index_u32(35723u, 3u)]), ~0u)), var_1), !arg_0, _wgslsmith_f_op_vec2_f32(trunc(var_0.c)), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(round(arg_2.x))));
    return u_input.c.x <= u_input.c.x;
}

fn func_2(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = any(vec4<bool>(true, true, true, true));
    global4 = u_input.b;
    global4 = u_input.d;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-469f * _wgslsmith_f_op_f32(floor(222f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-541f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1105f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -766f) + -333f))), all(select(vec3<bool>(true, all(vec4<bool>(false, false, true, true)), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)))));
    var_1 = _wgslsmith_f_op_f32(-511f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(510f - -1000f) * -791f))));
    return select(select(select(vec4<bool>(true, all(vec2<bool>(false, true)), true, true), vec4<bool>(true, false, true, func_3(vec2<bool>(false, true), true, vec4<f32>(-1985f, 1814f, 101f, 228f))), true), select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, false))), all(vec2<bool>(true, true))), true), !vec4<bool>(select(false, u_input.b > 153256u, false), func_3(vec2<bool>(true, true), false, vec4<f32>(-977f, 1128f, -152f, -124f)) == all(vec2<bool>(true, true)), false, false), select(vec4<bool>(any(vec3<bool>(false, true, true)), false, false, true), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true)), vec4<bool>(true, true, all(vec3<bool>(false, true, true)), true), true), false));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: bool) -> vec2<f32> {
    let var_0 = Struct_1(vec3<u32>(abs(~u_input.d), 4294967295u, _wgslsmith_mult_u32(u_input.b, 47553u)) ^ reverseBits(global3[_wgslsmith_index_u32(12249u, 3u)]), !arg_1.wx, vec2<f32>(_wgslsmith_f_op_f32(step(1000f, -1522f)), 1f), -267f);
    global1 = array<vec4<u32>, 23>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2691f, var_0.c.x)) + var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -624f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -851f) * _wgslsmith_f_op_f32(max(var_0.d, 214f)))), vec3<f32>(_wgslsmith_f_op_f32(step(812f, 966f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d + var_0.d), -959f)), true)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.x, var_0.d, 798f), vec3<f32>(var_0.c.x, var_0.c.x, 1882f), arg_1.yxx)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-253f, var_0.d, -1254f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.d, -1000f, var_0.c.x), vec3<f32>(var_0.c.x, 621f, var_0.c.x))))))));
    var var_2 = var_0;
    var var_3 = var_0;
    return _wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_div_vec2_f32(vec2<f32>(-1452f, _wgslsmith_f_op_f32(abs(var_2.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2061f, var_1.x)), var_0.c, !var_3.b)) * var_2.c)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(u_input.c.wxz, !select(func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e.x, 2147483647i), u_input.c.yy)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true))), func_2(vec2<i32>(-2147483647i, 57214i))), true));
    global1 = array<vec4<u32>, 23>();
    global0 = array<vec4<u32>, 19>();
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(1u, u_input.d)) ^ min(0u, 36372u), reverseBits(1u)), ~max(~4294967295u, u_input.b), ~(~u_input.b)), vec2<bool>(true, all(vec3<bool>(true, true, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 250f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec2_f32(func_4(-min(vec3<i32>(-1i, 0i, u_input.c.x), u_input.c.zwz), select(vec4<bool>(true, -151f == var_0.x, select(true, true, true), true), func_2(firstLeadingBit(vec2<i32>(533i, -1i))), vec4<bool>(true, true, true, true)), !(any(vec2<bool>(true, false)) & true))).x);
    let var_2 = vec4<bool>(true, var_1.b.x, var_1.b.x, true);
    return Struct_1(select(reverseBits(vec3<u32>(0u, _wgslsmith_clamp_u32(u_input.d, var_1.a.x, var_1.a.x), _wgslsmith_add_u32(42294u, var_1.a.x))), select(~vec3<u32>(4294967295u, 4294967295u, 31569u), global3[_wgslsmith_index_u32(4294967295u, 3u)], u_input.b < 1u), var_2.yxz), !var_2.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - -291f))), _wgslsmith_f_op_f32(max(var_1.d, _wgslsmith_f_op_f32(-1981f + _wgslsmith_f_op_f32(trunc(-828f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 100007u), vec2<u32>(43767u, 1u))), 4294967295u, u_input.b), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(531f, -254f)), _wgslsmith_f_op_f32(round(-983f))))) < -201f);
    var_0 = Struct_2(~vec3<u32>(firstLeadingBit(var_0.a.x) >> (var_0.a.x % 32u), 54320u & _wgslsmith_mult_u32(u_input.d, u_input.b), min(47242u, var_0.a.x)), func_1(), select(var_0.c, func_2(abs(vec2<i32>(-21478i, -7032i))).x, !var_0.b.b.x));
    global2 = var_0.b.c.x;
    var_0 = Struct_2(global3[_wgslsmith_index_u32(~countOneBits(var_0.a.x), 3u)], Struct_1(_wgslsmith_sub_vec3_u32(~(vec3<u32>(71432u, 0u, 4294967295u) | var_0.b.a), select(_wgslsmith_div_vec3_u32(var_0.b.a, vec3<u32>(42164u, u_input.d, var_0.a.x)), ~global3[_wgslsmith_index_u32(34950u, 3u)], true)), var_0.b.b, var_0.b.c, _wgslsmith_f_op_f32(var_0.b.d * _wgslsmith_f_op_f32(-var_0.b.d))), true);
    let var_1 = Struct_2(var_0.b.a, Struct_1(vec3<u32>(u_input.d, var_0.a.x, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(var_0.a.x, 19u)], vec4<u32>(u_input.d, var_0.b.a.x, 0u, 1u))) & firstLeadingBit(~vec3<u32>(var_0.b.a.x, var_0.b.a.x, var_0.a.x)), func_1().b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b.d, -561f), var_0.b.c)))))), 2387f), !((~66633u != (u_input.d | u_input.b)) || (var_0.c || true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_1.b.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -573f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.d)))), var_1.b.c.x, _wgslsmith_f_op_f32(1929f - _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(163f, 1204f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(856f, var_1.b.c.x, var_1.b.c.x, var_1.b.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1156f, -1226f, var_1.b.d, var_1.b.c.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(133f, 428f, -392f, var_0.b.c.x), vec4<f32>(var_0.b.c.x, var_2.x, 1521f, var_2.x))), vec4<f32>(var_2.x, 1801f, 250f, var_1.b.c.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.c.x)))), 1494f)), _wgslsmith_div_vec2_f32(var_1.b.c, vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f)))), -698i, -1257f);
}

