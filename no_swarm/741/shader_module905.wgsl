struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: array<vec4<i32>, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(6725u, 25u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~0u, 25u)])) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2103f, global0[_wgslsmith_index_u32(u_input.a, 25u)]) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], -792f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], -445f) - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], 948f))))))), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(max(vec2<u32>(4294967295u, 1u), vec2<u32>(14537u, u_input.a)), select(vec2<u32>(13316u, u_input.a), vec2<u32>(56004u, 38570u), true)), firstTrailingBit(vec2<u32>(0u, 0u)) << ((vec2<u32>(4294967295u, 1u) | vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 69897u), reverseBits(vec2<u32>(1u, 79087u))), select(abs(vec2<u32>(u_input.a, 67749u)), ~vec2<u32>(u_input.a, u_input.a), all(vec3<bool>(false, false, true))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(1u, 25u)])))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2102f, global0[_wgslsmith_index_u32(u_input.a, 25u)]) - vec2<f32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)])))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, 0u <= u_input.a, all(vec4<bool>(true, true, true, true))), true), u_input.b.x, ~((global1[_wgslsmith_index_u32(u_input.a, 7u)] & vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -14358i)) & max(vec4<i32>(u_input.b.x, -17921i, -50456i, u_input.b.x), global1[_wgslsmith_index_u32(u_input.a, 7u)]))), vec2<i32>(~(-31697i << (u_input.a % 32u)), countOneBits(-u_input.b.x)) >> (~(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), false);
    var var_1 = false;
    let var_2 = Struct_1(vec2<f32>(-1122f, -584f), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 25u)] != global0[_wgslsmith_index_u32(~0u, 25u)], !var_0.c.b.x, !any(vec3<bool>(false, var_0.e, true)), false), select(vec4<bool>(var_0.c.b.x, any(vec3<bool>(var_0.c.b.x, var_0.c.b.x, var_0.e)), select(var_0.c.b.x, var_0.c.b.x, var_0.e), select(true, var_0.e, var_0.e)), var_0.c.b, vec4<bool>(all(var_0.c.b), -40295i >= u_input.b.x, all(vec3<bool>(var_0.c.b.x, false, var_0.c.b.x)), true)), select(var_0.c.b, var_0.c.b, all(!vec3<bool>(false, var_0.e, true)))), reverseBits(var_0.c.c), select(~(countOneBits(vec4<i32>(u_input.b.x, -8136i, 0i, var_0.d.x)) ^ global1[_wgslsmith_index_u32(22022u >> (var_0.b.x % 32u), 7u)]), select(abs(vec4<i32>(1i, u_input.b.x, 0i, var_0.c.c)), select(var_0.c.d, vec4<i32>(var_0.d.x, u_input.b.x, var_0.d.x, u_input.b.x), var_0.c.b), vec4<bool>(any(vec3<bool>(false, var_0.e, true)), true, any(vec3<bool>(true, var_0.c.b.x, false)), var_0.c.b.x)), !var_0.c.b));
    let var_3 = var_0.c.a.x;
    var var_4 = var_2.b.x;
    return !var_0.e;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(29302u, 25u)], global0[_wgslsmith_index_u32(33163u, 25u)]))))), select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(!(u_input.b.x >= u_input.b.x), func_3(), true, !(u_input.a >= u_input.a))), 1i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(22763u, select(min(u_input.a, u_input.a), _wgslsmith_add_u32(90351u, 63595u), true)) << (u_input.a % 32u), 7u)]);
    let var_1 = -(u_input.b.x & ~_wgslsmith_sub_i32(countOneBits(-165i), _wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(-2147483647i, u_input.b.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 25u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 25u)] + 545f))), 1399f)));
    let var_3 = u_input.b;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.a.x)))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(max(var_2.zz, vec2<f32>(global0[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-var_0.a.x))))), ~vec2<u32>(u_input.a, u_input.a), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_2.x) - var_2.zz))), var_0.b, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_3.x, var_0.d.x)), ~var_0.d.yy), -1i), vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(var_3.xx, u_input.b.yy)), min(var_1, u_input.b.x) ^ 1i, ~(-var_0.d.x), -select(var_0.c, var_3.x, false))), abs(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, 13041i, 9000i), ~2147483647i), -15789i)), false);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(-1148f));
    global0 = array<f32, 25>();
    var var_1 = u_input.b.x;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.c.a.x)), _wgslsmith_f_op_f32(abs(-634f)))))), -878f, _wgslsmith_div_f32(_wgslsmith_div_f32(func_2().c.a.x, _wgslsmith_f_op_f32(sign(-1637f))), arg_2.c.a.x));
    var var_3 = arg_2.c;
    return func_2().c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = true;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.b.x, 25u)] + var_0.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3, 25u)])))) * _wgslsmith_f_op_f32(round(-1678f))), _wgslsmith_f_op_f32(round(var_0.a.x)));
    var var_3 = func_4(vec3<u32>(_wgslsmith_mod_u32(39349u, 77713u), ~_wgslsmith_dot_vec2_u32(~var_0.b, vec2<u32>(arg_3, 23523u)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, arg_1.b.x, 4294967295u, 59059u), vec4<u32>(arg_3, var_0.b.x, arg_3, 49590u)), arg_2.b.x)), abs(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(arg_3, 1u, arg_1.b.x, u_input.a)), vec4<u32>(14629u, u_input.a, arg_2.b.x, arg_2.b.x) & firstTrailingBit(vec4<u32>(0u, arg_1.b.x, var_0.b.x, arg_1.b.x)), ~countOneBits(vec4<u32>(u_input.a, arg_3, 7582u, 19512u)))), func_2(), firstLeadingBit(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_1.b.x, arg_3, arg_1.b.x, 1u)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(8662u, 4294967295u, var_0.b.x, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, arg_2.b.x, 87934u), vec4<u32>(arg_1.b.x, 31400u, u_input.a, 37677u))))));
    let var_4 = arg_2.b.x;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x + arg_1.a.x), var_3.a.x), !vec4<bool>(_wgslsmith_f_op_f32(exp2(var_3.a.x)) >= _wgslsmith_div_f32(-391f, arg_2.a.x), true, any(vec4<bool>(arg_1.e, var_1, false, false)), true), _wgslsmith_mod_i32(u_input.b.x, firstTrailingBit(abs(~(-65385i)))), var_3.d);
}

fn func_1() -> i32 {
    let var_0 = func_5(func_4(~vec3<u32>(u_input.a, ~1005u, _wgslsmith_mult_u32(61041u, 42551u)), vec4<u32>(~0u, u_input.a, ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(5692u, u_input.a))) << (~(vec4<u32>(0u, 83683u, 16473u, 0u) ^ vec4<u32>(1u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)), func_2(), vec4<u32>(33222u, _wgslsmith_clamp_u32(36253u, 0u, u_input.a), ~u_input.a, ~19521u) << (~(~vec4<u32>(u_input.a, u_input.a, 0u, 25210u)) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], -596f) * vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], -1683f))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-969f, global0[_wgslsmith_index_u32(59651u, 25u)]))), vec2<f32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)])))), ~_wgslsmith_div_vec2_u32(vec2<u32>(114977u, u_input.a), vec2<u32>(u_input.a, 59274u) & vec2<u32>(u_input.a, 32081u)), func_2().c, vec2<i32>(4939i, func_2().c.d.x), !(true & any(vec2<bool>(true, false)))), func_2(), ~(~u_input.a));
    var var_1 = Struct_1(var_0.a, var_0.b, ~func_4(vec3<u32>(0u, 1u, 1u), ~firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), Struct_2(var_0.a, _wgslsmith_mod_vec2_u32(vec2<u32>(42826u, 0u), vec2<u32>(u_input.a, u_input.a)), Struct_1(vec2<f32>(-1000f, global0[_wgslsmith_index_u32(14172u, 25u)]), vec4<bool>(var_0.b.x, true, true, var_0.b.x), 19070i, var_0.d), vec2<i32>(40689i, u_input.b.x), var_0.b.x | true), ~(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))).c, vec4<i32>(select(var_0.c, ~u_input.b.x << (u_input.a % 32u), false), func_2().d.x, 2147483647i, ~firstTrailingBit(23804i)));
    var_1 = var_0;
    global0 = array<f32, 25>();
    var var_2 = func_2();
    return -22857i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 7>();
    global1 = array<vec4<i32>, 7>();
    global0 = array<f32, 25>();
    var var_0 = ~u_input.b.x != ~func_1();
    let var_1 = func_2().a;
    let var_2 = func_2().c;
    var var_3 = countOneBits(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(80373u, 29104u, 1u) | vec3<u32>(4294967295u, u_input.a, u_input.a)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(11372u, 1u, 0u), select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(18007u, u_input.a, u_input.a), false)), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(0u, 0u, u_input.a)) ^ ~vec3<u32>(u_input.a, u_input.a, u_input.a))));
    let var_4 = func_4(select(vec3<u32>(1u, 1u, 1u) | _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, var_3.x), vec3<u32>(var_3.x, 56629u, var_3.x)), select(vec3<u32>(0u, 4294967295u, u_input.a), vec3<u32>(u_input.a, var_3.x, var_3.x), vec3<bool>(true, var_2.b.x, var_2.b.x))), (~vec3<u32>(0u, var_3.x, var_3.x) << (vec3<u32>(0u, 6066u, var_3.x) % vec3<u32>(32u))) & _wgslsmith_add_vec3_u32(abs(vec3<u32>(33669u, u_input.a, 0u)), ~vec3<u32>(u_input.a, 1u, 1u)), true), ~_wgslsmith_mod_vec4_u32(~(vec4<u32>(68734u, 1u, var_3.x, u_input.a) ^ vec4<u32>(4294967295u, 1u, u_input.a, var_3.x)), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, var_3.x, 0u) & vec4<u32>(u_input.a, 48540u, 49987u, 1u))), func_2(), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(var_3.x, 4294967295u, u_input.a, 35884u)), vec4<u32>(u_input.a, _wgslsmith_mult_u32(4294967295u, 0u), 0u, firstTrailingBit(var_3.x))) ^ ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(14923u, u_input.a, 0u, 90726u), vec4<u32>(0u, var_3.x, 0u, 4294967295u), var_2.b), ~vec4<u32>(u_input.a, 107543u, var_3.x, u_input.a))).b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, ~u_input.a, ~select(70909u, _wgslsmith_clamp_u32(u_input.a, u_input.a, 1u), var_3.x > 44376u), 39478u), 33563u >> (1u % 32u), ~(~vec3<u32>(15502u, 4294967295u, 52933u) | abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, var_3.x), vec3<u32>(var_3.x, var_3.x, 1u), vec3<u32>(4294967295u, 21583u, 7384u)))), countOneBits(var_2.d.xzz), 1257f);
}

