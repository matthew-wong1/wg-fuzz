struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(false, 1u, 17518u, vec3<f32>(-1673f, 1000f, -1644f)), Struct_1(true, 4294967295u, 4294967295u, vec3<f32>(-324f, 418f, 1000f)), Struct_1(false, 1u, 33834u, vec3<f32>(-238f, 102f, -1338f)), Struct_1(false, 90450u, 42659u, vec3<f32>(-2344f, 1695f, -952f)), Struct_1(false, 23497u, 1u, vec3<f32>(1158f, 320f, 633f)), Struct_1(true, 1u, 1476u, vec3<f32>(581f, 1098f, 749f)), Struct_1(true, 4422u, 18371u, vec3<f32>(541f, -599f, -1150f)), Struct_1(true, 1u, 77675u, vec3<f32>(-1770f, 1608f, 842f)), Struct_1(false, 4294967295u, 0u, vec3<f32>(1449f, -450f, -1091f)), Struct_1(true, 1u, 25009u, vec3<f32>(-1000f, -925f, 936f)), Struct_1(false, 0u, 43277u, vec3<f32>(593f, -656f, -1000f)), Struct_1(false, 4294967295u, 128246u, vec3<f32>(-386f, 802f, 1000f)), Struct_1(false, 28374u, 22774u, vec3<f32>(-291f, -841f, -603f)), Struct_1(true, 3023u, 0u, vec3<f32>(993f, -261f, 1000f)), Struct_1(true, 0u, 5895u, vec3<f32>(2554f, -1039f, 824f)), Struct_1(true, 0u, 3180u, vec3<f32>(371f, -1687f, -1095f)), Struct_1(false, 1u, 4294967295u, vec3<f32>(1172f, 479f, -1056f)), Struct_1(true, 4294967295u, 0u, vec3<f32>(-544f, -784f, 499f)), Struct_1(true, 6411u, 4294967295u, vec3<f32>(-1047f, -908f, 931f)), Struct_1(false, 1u, 1u, vec3<f32>(-346f, 688f, -795f)), Struct_1(false, 4294967295u, 1u, vec3<f32>(671f, -589f, 1049f)), Struct_1(false, 4294967295u, 4294967295u, vec3<f32>(-371f, -370f, 212f)), Struct_1(false, 0u, 4294967295u, vec3<f32>(772f, -2425f, -649f)), Struct_1(true, 0u, 1u, vec3<f32>(-2034f, 380f, 625f)), Struct_1(true, 102609u, 37624u, vec3<f32>(1060f, 796f, -1000f)), Struct_1(false, 1u, 0u, vec3<f32>(1022f, -601f, 657f)), Struct_1(false, 9345u, 52008u, vec3<f32>(-293f, -1881f, -1000f)), Struct_1(false, 5286u, 15696u, vec3<f32>(-1282f, -499f, -441f)), Struct_1(true, 1u, 62280u, vec3<f32>(1000f, -726f, 673f)), Struct_1(false, 2003u, 1u, vec3<f32>(1671f, 1000f, 485f)));

var<private> global1: array<vec4<u32>, 30>;

var<private> global2: array<bool, 9> = array<bool, 9>(true, false, true, true, false, true, true, false, false);

var<private> global3: array<vec2<f32>, 10>;

var<private> global4: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: bool) -> u32 {
    global2 = array<bool, 9>();
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1750f) - _wgslsmith_f_op_f32(ceil(-1847f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1014f) - _wgslsmith_f_op_f32(trunc(1859f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(167f + 910f)))))));
    let var_0 = u_input.a;
    var var_1 = Struct_1(false, 11596u, ~88044u, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-621f, 1691f, 1093f) + _wgslsmith_div_vec3_f32(vec3<f32>(147f, 722f, 794f), vec3<f32>(-755f, 426f, 792f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -252f), -904f), vec3<f32>(464f, _wgslsmith_f_op_f32(max(290f, -557f)), _wgslsmith_f_op_f32(f32(-1f) * -999f)), vec3<bool>(global2[_wgslsmith_index_u32(abs(15198u), 9u)], true, !global2[_wgslsmith_index_u32(23086u, 9u)]))))));
    var var_2 = _wgslsmith_div_u32((1u | _wgslsmith_mod_u32(firstLeadingBit(var_0.x), 1u)) << (~u_input.b % 32u), var_1.b);
    return 3364u;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_1(true, _wgslsmith_add_u32(0u, 1u), ~func_3(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a, arg_1.a, -8845i), vec3<i32>(arg_1.a, arg_1.a, -16923i)), firstTrailingBit(vec3<i32>(66554i, arg_1.a, 0i))), arg_1.b.b.c, true), arg_1.b.a.d);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)))), all(select(select(vec2<bool>(global2[_wgslsmith_index_u32(var_0.b, 9u)], false), !vec2<bool>(global2[_wgslsmith_index_u32(67536u, 9u)], false), vec2<bool>(true, false)), vec2<bool>(u_input.a.x != arg_2.c, false), arg_2.a.a))));
    var var_2 = Struct_2(var_0, var_0, 34659u, vec2<u32>(countOneBits(~1u >> (_wgslsmith_mult_u32(arg_1.b.a.b, 0u) % 32u)), _wgslsmith_clamp_u32(u_input.b, ~(~arg_0), ~1u)));
    return 1u;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>) -> vec4<i32> {
    global3 = array<vec2<f32>, 10>();
    var var_0 = Struct_2(Struct_1(all(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 9u)])) || any(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(23000u, 9u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)]))), 4294967295u, _wgslsmith_add_u32(func_2(4294967295u, Struct_3(2147483647i, Struct_2(global0[_wgslsmith_index_u32(45887u, 30u)], Struct_1(false, u_input.a.x, 0u, arg_0.yww), 65636u, u_input.a.zx), arg_0.wxx, -357f), Struct_2(Struct_1(true, 0u, u_input.b, vec3<f32>(arg_0.x, -483f, arg_0.x)), global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 53963u, vec2<u32>(4294967295u, u_input.a.x))), ~(u_input.a.x & 0u)), arg_0.xyy), Struct_1(true, ~func_2(~57487u, Struct_3(-14910i, Struct_2(global0[_wgslsmith_index_u32(u_input.b, 30u)], Struct_1(global2[_wgslsmith_index_u32(65469u, 9u)], 45384u, u_input.b, arg_0.zxy), u_input.b, u_input.a.xz), vec3<f32>(-1000f, arg_0.x, 650f), -210f), Struct_2(Struct_1(global2[_wgslsmith_index_u32(23093u, 9u)], 1u, 2634u, arg_0.xwz), Struct_1(false, u_input.b, 4294967295u, arg_0.yyy), 61834u, u_input.a.xx)), u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, 829f, arg_1.x))))), u_input.b, vec2<u32>(0u, 4148u));
    var var_1 = var_0.a.a;
    global3 = array<vec2<f32>, 10>();
    let var_2 = !(!(!select(select(vec2<bool>(true, true), vec2<bool>(var_0.b.a, true), true), vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 9u)]), select(vec2<bool>(false, true), vec2<bool>(false, var_0.b.a), vec2<bool>(var_0.a.a, false)))));
    return vec4<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(22965i, -5294i, -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-9694i, 51046i, 2147483647i), -vec3<i32>(43916i, 16853i, 4916i))), ~(~countOneBits(-3593i)), _wgslsmith_sub_i32(countOneBits(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(1i, -2147483647i, 12473i), vec3<i32>(-13063i, 0i, 7499i), var_0.a.a))), -_wgslsmith_mod_i32(56515i, 1i)) & vec4<i32>(1i, _wgslsmith_div_i32(min(-34122i, -12829i), _wgslsmith_mod_i32(~(-1i), _wgslsmith_clamp_i32(1i, -2147483647i, 0i))), 0i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, -20599i, 12740i), -vec4<i32>(27031i, 2147483647i, -25523i, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    let var_0 = !vec2<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(102687u, 1u, _wgslsmith_mod_u32(4294967295u, u_input.b))), 9u)]);
    global3 = array<vec2<f32>, 10>();
    global0 = array<Struct_1, 30>();
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(667f, -255f, 199f, -455f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(477f, -1570f, -1329f, 2868f))))))), _wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(58191u, u_input.b)), firstLeadingBit(~u_input.a.xy)), 10u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, ~(~u_input.a.x)), 10u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(countOneBits(-2147483647i), -select(1i, var_1.x, global2[_wgslsmith_index_u32(4294967295u, 9u)])) << (u_input.b % 32u), _wgslsmith_mult_vec2_i32(var_1.yz, firstLeadingBit(var_1.xx | vec2<i32>(5429i, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1052f + _wgslsmith_f_op_f32(f32(-1f) * -517f)))), (i32(-1i) * -_wgslsmith_mod_i32(18661i, 40078i)) ^ firstLeadingBit(~_wgslsmith_mult_i32(var_1.x, 0i)));
}

