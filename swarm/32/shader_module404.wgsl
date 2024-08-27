struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<u32>(1u, 4294967295u, 30424u, 38732u)), Struct_1(vec4<u32>(77025u, 33330u, 25076u, 53847u)), Struct_1(vec4<u32>(34989u, 88983u, 1u, 4294967295u)), Struct_1(vec4<u32>(43722u, 4294967295u, 1u, 54864u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 41102u, 11783u)), Struct_1(vec4<u32>(22016u, 86681u, 7378u, 97026u)), Struct_1(vec4<u32>(0u, 42793u, 71433u, 4294967295u)), Struct_1(vec4<u32>(15685u, 4294967295u, 44899u, 73214u)), Struct_1(vec4<u32>(36686u, 1u, 46034u, 1u)), Struct_1(vec4<u32>(49089u, 0u, 0u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 65937u)), Struct_1(vec4<u32>(1u, 22095u, 41294u, 55977u)), Struct_1(vec4<u32>(4294967295u, 74154u, 94130u, 1u)), Struct_1(vec4<u32>(4914u, 31527u, 48294u, 21661u)), Struct_1(vec4<u32>(55833u, 45442u, 1u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 13450u, 4294967295u, 38844u)), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 6665u)), Struct_1(vec4<u32>(0u, 35832u, 1u, 1u)), Struct_1(vec4<u32>(64394u, 1u, 1u, 103258u)), Struct_1(vec4<u32>(17260u, 60061u, 20367u, 0u)), Struct_1(vec4<u32>(4294967295u, 51386u, 16786u, 1u)), Struct_1(vec4<u32>(979u, 63379u, 4294967295u, 88823u)), Struct_1(vec4<u32>(55690u, 4294967295u, 4985u, 1u)), Struct_1(vec4<u32>(22564u, 4294967295u, 6686u, 4294967295u)), Struct_1(vec4<u32>(85660u, 14186u, 0u, 67800u)));

var<private> global1: bool = true;

var<private> global2: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

var<private> global3: vec3<i32> = vec3<i32>(0i, 46770i, 2147483647i);

var<private> global4: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<u32>(7960u, 0u, 7428u, 4294967295u)), Struct_1(vec4<u32>(40853u, 1u, 4294967295u, 1u)), Struct_1(vec4<u32>(39350u, 1u, 9934u, 15402u)), Struct_1(vec4<u32>(65388u, 4294967295u, 32260u, 70526u)), Struct_1(vec4<u32>(34266u, 915u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 17027u, 0u, 1u)), Struct_1(vec4<u32>(25211u, 34371u, 77433u, 4149u)), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 42438u)), Struct_1(vec4<u32>(54728u, 4294967295u, 4939u, 19886u)), Struct_1(vec4<u32>(36070u, 64431u, 0u, 0u)), Struct_1(vec4<u32>(1u, 5556u, 1u, 41690u)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = vec2<bool>(select(true, all(vec4<bool>(false, true, true, false)), false) == all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true)), any(vec2<bool>(true, any(vec2<bool>(false, false)))));
    var var_1 = var_0.x;
    var_1 = var_0.x;
    global1 = !var_0.x;
    let var_2 = !select(vec4<bool>(!var_0.x, true, !(!var_0.x), any(vec4<bool>(false, true, false, var_0.x)) && all(vec2<bool>(true, var_0.x))), !select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), u_input.d > 1i), !vec4<bool>(!var_0.x, global3.x == global3.x, all(vec2<bool>(true, false)), false));
    return vec3<bool>(true, true, !var_2.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<u32> {
    global1 = true;
    var var_0 = Struct_1(_wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(arg_1.a, vec4<u32>(arg_1.a.x, u_input.b, 24842u, 71554u), reverseBits(arg_1.a))), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 50023u, u_input.a), select(arg_1.a, ~arg_1.a, !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))));
    var_0 = Struct_1(arg_1.a);
    global2 = array<vec3<bool>, 7>();
    global4 = array<Struct_1, 11>();
    return vec3<u32>(firstLeadingBit(4895u) ^ ~(var_0.a.x >> ((4294967295u >> (u_input.b % 32u)) % 32u)), ~(~_wgslsmith_clamp_u32(abs(4294967295u), firstTrailingBit(29963u), firstLeadingBit(46316u))), 97389u);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global1 = false;
    let var_0 = u_input.b;
    return Struct_1(vec4<u32>(~(~firstLeadingBit(1u)), _wgslsmith_dot_vec3_u32(func_4(vec3<f32>(1030f, -1654f, -1000f), global4[_wgslsmith_index_u32(~var_0, 11u)], func_3(665f, global0[_wgslsmith_index_u32(0u, 25u)])), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.ywz, arg_0.zxw), arg_0.yxy)), 33150u, u_input.a));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<u32>) -> u32 {
    global2 = array<vec3<bool>, 7>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1157f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -901f) * -500f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1207f, -247f, var_0.x, -647f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(122f, var_0.x, -1207f, -147f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -491f, var_0.x, var_0.x))))), vec4<bool>(true, false, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))), !select(true, true, true)))) + vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + _wgslsmith_f_op_f32(var_0.x + var_0.x)))), -1432f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * _wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(sign(var_0.x))));
    var var_2 = Struct_1(arg_0.a);
    global0 = array<Struct_1, 25>();
    return arg_0.a.x;
}

fn func_1() -> f32 {
    let var_0 = 1u;
    let var_1 = var_0;
    let var_2 = Struct_1(firstLeadingBit(vec4<u32>(func_5(func_2(vec4<u32>(var_1, 61324u, 0u, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0, var_1), vec2<u32>(u_input.a, var_1)), ~vec2<u32>(13520u, var_1)), abs(~var_0), select(~9963u, ~4294967295u, u_input.d > 0i), ~0u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1220f, 769f, -164f, -2144f)), _wgslsmith_div_vec4_f32(vec4<f32>(-556f, -236f, -1648f, 825f), vec4<f32>(1138f, 893f, -384f, -2062f)), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1417f, -1000f, -500f, -800f))))));
    var var_4 = global4[_wgslsmith_index_u32(func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), var_3.x, _wgslsmith_f_op_f32(1075f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), -605f)))), Struct_1((~vec4<u32>(17437u, var_0, 1u, var_1) << (~vec4<u32>(32193u, var_1, 1u, u_input.b) % vec4<u32>(32u))) << (var_2.a % vec4<u32>(32u))), select(vec3<bool>(select(var_3.x < 388f, true, any(vec2<bool>(true, true))), !func_3(-327f, global0[_wgslsmith_index_u32(210u, 25u)]).x, select(true, true, true)), global2[_wgslsmith_index_u32(min(~(~61863u), ~var_2.a.x), 7u)], all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))))).x, 11u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.x))) * 1791f))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    global3 = vec3<i32>(2900i << (arg_1.a.x % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c, global3.x, 13053i, -14080i), firstLeadingBit(-vec4<i32>(global3.x, global3.x, 2147483647i, u_input.c))), vec4<i32>(_wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(u_input.d, global3.x)), global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-14924i, 1i, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(global3.x, u_input.c, global3.x), vec3<i32>(11996i, -34256i, 40631i))), global3.x)), _wgslsmith_dot_vec3_i32(select(~vec3<i32>(global3.x, -1i, 93702i), vec3<i32>(global3.x, u_input.c, u_input.d), !global2[_wgslsmith_index_u32(42629u, 7u)]), ~vec3<i32>(-21402i, -2147483647i, u_input.c)) << ((~arg_1.a.x << (1008u % 32u)) % 32u));
    global3 = ~(-(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -1i, 20181i)) << (firstTrailingBit(arg_1.a.wxx) % vec3<u32>(32u)));
    global2 = array<vec3<bool>, 7>();
    let var_0 = vec4<u32>(countOneBits(~1u), 22877u, ~(~1u), _wgslsmith_add_u32(4294967295u, func_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(513f, 109f, -791f)))), Struct_1(~arg_1.a), global2[_wgslsmith_index_u32(1u, 7u)]).x));
    global4 = array<Struct_1, 11>();
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_0.xx * _wgslsmith_f_op_vec2_f32(arg_0.xy * vec2<f32>(311f, _wgslsmith_f_op_f32(1935f * arg_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yx * arg_0.yy))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec2_f32(arg_0.yz + vec2<f32>(arg_0.x, arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.b, ~6608u, _wgslsmith_dot_vec2_u32(vec2<u32>(49329u, 16641u), vec2<u32>(u_input.b, u_input.a))), abs(vec4<u32>(u_input.b, 4294967295u, u_input.a, 0u))) & vec4<u32>(1u, firstLeadingBit(u_input.b << (1u % 32u)), abs(42329u), _wgslsmith_sub_u32(~u_input.a, u_input.b)));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_6(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-286f, 1625f))), _wgslsmith_f_op_f32(func_1()), 1f))), Struct_1(var_0.a), true));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1975f, 1729f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))) * vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x))) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x - 276f), _wgslsmith_f_op_f32(f32(-1f) * -616f), any(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(min(-1914f, -321f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-537f * 323f), 1084f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, var_1.x), vec2<f32>(-1989f, var_1.x))) + _wgslsmith_div_vec2_f32(vec2<f32>(327f, -1574f), vec2<f32>(var_1.x, var_1.x))))));
    var var_2 = -15067i;
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2216f, -646f, var_1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(var_1.x, var_1.x, 664f)))))));
    let var_4 = func_2(firstLeadingBit(var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.wz, _wgslsmith_f_op_f32(f32(-1f) * -597f), var_0.a.x, var_1.x, vec3<f32>(2084f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1218f)));
}

