struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(1i, -1i), vec2<i32>(21413i, -1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-51333i, -30474i), vec2<i32>(0i, -32534i), vec2<i32>(-1i, -1412i), vec2<i32>(-41773i, -77361i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 38074i), vec2<i32>(22909i, 1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-25510i, -1i), vec2<i32>(2583i, 35100i), vec2<i32>(1i, -6243i), vec2<i32>(1i, -36955i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, 30549i), vec2<i32>(56607i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(1i, 1i), vec2<i32>(9116i, -62675i), vec2<i32>(-61081i, 59831i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -36486i));

var<private> global2: array<Struct_1, 20>;

var<private> global3: array<i32, 29>;

var<private> global4: array<Struct_3, 11>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    global3 = array<i32, 29>();
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -836f) * -332f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1185f, -2121f)), -893f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(423f * 318f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(784f - 942f))), -915f), Struct_1(222f, vec2<bool>(true, true), select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, true, false, true)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -1372f, 890f))))), -817f));
    let var_1 = vec4<i32>(global3[_wgslsmith_index_u32(10517u, 29u)], -1i, 1i, global3[_wgslsmith_index_u32(4294967295u, 29u)]);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(740f - -1297f)), _wgslsmith_f_op_f32(f32(-1f) * -774f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(252f, var_0.b.e)) * _wgslsmith_f_op_f32(var_0.b.a * -248f)))) - vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(abs(var_0.a.x)), var_0.a.x, var_0.b.e));
    let var_3 = select(var_1.x, ~(-2147483647i), var_0.b.b.x);
    return select(u_input.a, _wgslsmith_clamp_u32(abs(1u) | _wgslsmith_mult_u32(global0.x, 1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 25933u, 4294967295u)), reverseBits(global0.zyx)), 23604u) & (_wgslsmith_sub_u32(countOneBits(1u), u_input.a) & global0.x), select(all(vec3<bool>(global3[_wgslsmith_index_u32(global0.x, 29u)] >= 2147483647i, false, all(vec2<bool>(var_0.b.c.x, true)))), any(select(select(vec4<bool>(true, true, var_0.b.b.x, true), var_0.b.c, true), select(var_0.b.c, var_0.b.c, vec4<bool>(true, true, true, var_0.b.c.x)), !var_0.b.c)), true));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    var var_0 = Struct_4(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_0.x < 0i, any(vec2<bool>(true, true)), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, global0.x < 49157u, true), false), true), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(434f))), _wgslsmith_f_op_f32(ceil(1555f)), 227f), global2[_wgslsmith_index_u32(global0.x, 20u)]));
    let var_1 = 0u;
    global1 = array<vec2<i32>, 26>();
    global2 = array<Struct_1, 20>();
    global0 = _wgslsmith_div_vec4_u32(select(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(69638u, 44738u, 7808u, var_1), vec4<u32>(u_input.a, u_input.a, var_1, 18287u))), ~vec4<u32>(func_3(), u_input.a | 88419u, _wgslsmith_sub_u32(u_input.a, 1u), abs(34374u)), var_0.b.b.c), ~max(vec4<u32>(u_input.a, global0.x, 44748u, ~6251u), countOneBits(vec4<u32>(global0.x, global0.x, var_1, var_1) & vec4<u32>(9818u, u_input.a, var_1, u_input.a))));
    return -11437i;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    global1 = array<vec2<i32>, 26>();
    var var_0 = Struct_3(u_input.c.x, ~(~63520u), u_input.b);
    let var_1 = select(select(vec3<bool>(false == all(vec3<bool>(false, false, false)), all(vec2<bool>(true, true)), false), vec3<bool>(!any(vec3<bool>(true, true, false)), any(vec2<bool>(true, true)), false), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), vec3<bool>(false, true, !(!select(false, false, false))), vec3<bool>(false, true, !all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false))));
    var var_2 = arg_1;
    let var_3 = !var_1.zy;
    return Struct_2(vec3<f32>(_wgslsmith_div_f32(-881f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) + _wgslsmith_f_op_f32(arg_0 - -660f))), 870f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) * _wgslsmith_f_op_f32(max(arg_0, arg_0)))), global2[_wgslsmith_index_u32(~(100839u & min(1u, _wgslsmith_mod_u32(0u, arg_1.b))), 20u)]);
}

fn func_1() -> Struct_4 {
    global0 = ~vec4<u32>(49545u, u_input.a & 1u, ~4294967295u, max(reverseBits(u_input.a & 1u), u_input.a));
    let var_0 = vec2<bool>(false, select(((u_input.a & u_input.a) > u_input.a) != any(vec3<bool>(true, false, true)), true, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1326f)) + _wgslsmith_f_op_f32(trunc(-2363f))) * 824f))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -548f), vec2<bool>(var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, select(var_0.x & var_0.x, var_0.x, select(var_0.x, var_0.x, var_0.x)) && !(var_0.x || true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-528f, var_1.x, 781f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, -786f, var_1.x), vec3<f32>(1996f, -610f, -650f))), vec3<f32>(-132f, -666f, var_1.x)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(374f, -650f, var_1.x) - vec3<f32>(143f, 576f, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 1527f))))), 372f);
    var var_3 = func_4(-585f, Struct_3(-30677i, global0.x, vec4<i32>(_wgslsmith_sub_i32(24573i, u_input.b.x) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], u_input.c.x, 15215i), vec3<i32>(global3[_wgslsmith_index_u32(global0.x, 29u)], 11974i, u_input.c.x)), func_2(u_input.c ^ vec3<i32>(-1i, -34447i, global3[_wgslsmith_index_u32(78611u, 29u)])), u_input.c.x, -u_input.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(min(firstLeadingBit(1u), u_input.a), _wgslsmith_dot_vec2_u32(global0.zx, global0.wx) ^ 47370u, _wgslsmith_mult_u32(u_input.a, ~global0.x), ~global0.x), ~(~vec4<u32>(global0.x, 42531u, u_input.a, global0.x) ^ vec4<u32>(u_input.a, 127198u, 61359u, u_input.a))));
    return Struct_4(var_3.b.c, func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1819f))), global4[_wgslsmith_index_u32(u_input.a, 11u)], global0.x >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, u_input.a), ~u_input.a) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 11>();
    var var_0 = func_1();
    var var_1 = max(vec4<u32>(0u, 14356u, abs(0u) & ~(~u_input.a), firstLeadingBit(1u << (firstTrailingBit(global0.x) % 32u))), abs(vec4<u32>(reverseBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, global0.x, u_input.a), vec4<u32>(1u, 4294967295u, 0u, 1u)), _wgslsmith_sub_u32(abs(global0.x), ~u_input.a), u_input.a)));
    let var_2 = var_0.b.b;
    let var_3 = _wgslsmith_clamp_i32(3630i, func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(-50595i, global3[_wgslsmith_index_u32(global0.x, 29u)], -28247i), -vec3<i32>(global3[_wgslsmith_index_u32(1u, 29u)], u_input.b.x, -2147483647i))), 51553i) & _wgslsmith_dot_vec2_i32(min(vec2<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-28327i, global3[_wgslsmith_index_u32(var_1.x, 29u)], u_input.c.x), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 29u)], 45558i, -1i))), ~(-global1[_wgslsmith_index_u32(48567u, 26u)])), vec2<i32>(i32(-1i) * -global3[_wgslsmith_index_u32(var_1.x, 29u)], 27634i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.a, _wgslsmith_div_f32(-116f, func_1().b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.d.x, var_2.e))), var_0.b.a.x))), _wgslsmith_add_u32(1u, ~(~global0.x ^ global0.x)), u_input.b.wxw);
}

