struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    let var_0 = ~4294967295u;
    let var_1 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2753f), _wgslsmith_f_op_f32(f32(-1f) * -110f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-419f + 1286f) - _wgslsmith_f_op_f32(select(134f, -432f, true)))));
    var var_2 = Struct_2(Struct_1(-2531f, _wgslsmith_div_f32(-770f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-755f)))), vec2<bool>(var_1.a, any(vec2<bool>(true, false)) | all(vec3<bool>(var_1.a, var_1.a, false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1082f, 176f, 724f, 1000f) + vec4<f32>(512f, -829f, 128f, -670f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(292f, -833f, 841f, -311f)) * _wgslsmith_div_vec4_f32(vec4<f32>(270f, -841f, -1250f, 340f), vec4<f32>(564f, 1000f, -1753f, -1500f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-235f, -499f), _wgslsmith_f_op_f32(min(-1897f, 1462f)))), 758f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1538f + 1608f), -451f, -119f, _wgslsmith_f_op_f32(f32(-1f) * -343f))))));
    var_2 = Struct_2(Struct_1(var_2.a.a, _wgslsmith_f_op_f32(f32(-1f) * -551f), vec2<bool>(-911f <= _wgslsmith_f_op_f32(-var_2.b.x), !(false | var_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -461f, var_2.b.x, -1158f), var_2.b))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(var_2.a.d)), var_2.b)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(var_2.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1627f * var_2.b.x))))), _wgslsmith_f_op_f32(-var_2.a.b), vec2<bool>(!var_2.a.c.x, any(vec4<bool>(true, false, true, all(vec4<bool>(var_1.a, false, false, var_1.a))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.a, -344f)))), var_2.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, -1559f)) * _wgslsmith_f_op_f32(max(-1205f, var_2.b.x))), _wgslsmith_div_f32(231f, _wgslsmith_f_op_f32(ceil(1264f)))));
    return vec2<i32>(-1i) * -vec2<i32>(~(-3330i), 0i);
}

fn func_2() -> vec3<f32> {
    let var_0 = 32396u;
    var var_1 = min(abs(reverseBits(_wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, -35298i), func_3(Struct_4(vec2<u32>(u_input.a.x, 4294967295u)))))), vec2<i32>(31136i, -2147483647i));
    let var_2 = vec3<bool>(any(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)))), !((var_1.x <= abs(-19488i)) | true), !(!(!select(false, false, false))));
    let var_3 = Struct_4(~abs(~vec2<u32>(155u, 0u)));
    let var_4 = _wgslsmith_f_op_f32(-1129f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1965f + 1231f)));
    return vec3<f32>(_wgslsmith_f_op_f32(exp2(var_4)), var_4, _wgslsmith_div_f32(454f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) + -122f)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec2<bool>) -> u32 {
    global0 = array<vec3<u32>, 16>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(-571f)), 1926f, arg_2, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1163f, arg_1.x, -720f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 191f, arg_1.x, -1270f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 151f, -1538f, -673f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1221f, 2280f, -1593f, 2139f)))))))));
    let var_1 = false;
    global0 = array<vec3<u32>, 16>();
    var var_2 = -abs(min(_wgslsmith_dot_vec2_i32(-arg_0.yx, ~arg_0.yx), func_3(Struct_4(vec2<u32>(u_input.a.x, u_input.a.x))).x));
    return 24566u;
}

fn func_5(arg_0: vec3<u32>, arg_1: bool) -> Struct_2 {
    global0 = array<vec3<u32>, 16>();
    global0 = array<vec3<u32>, 16>();
    var var_0 = _wgslsmith_dot_vec3_u32(~(~global0[_wgslsmith_index_u32(u_input.a.x, 16u)] ^ vec3<u32>(0u, 60263u, arg_0.x)), ~(~vec3<u32>(arg_0.x, 0u, arg_0.x))) ^ u_input.a.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-599f)), 1279f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1583f * -152f))))))), 1000f);
    var var_2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(select(firstLeadingBit(vec4<u32>(42320u, 1u, 4294967295u, u_input.a.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, 7296u, 1u), false), ~vec4<u32>(75090u, 2125u, 380u, 100639u)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 18953u), _wgslsmith_div_vec4_u32(u_input.a, u_input.a))));
    return Struct_2(Struct_1(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2()).x * 2105f), select(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, true), false), !select(vec2<bool>(false, false), vec2<bool>(false, arg_1), vec2<bool>(false, true)), vec2<bool>(arg_1, u_input.a.x >= u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(688f, -1000f, 491f, var_1))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(544f, var_1, -726f, var_1))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1), -1321f, var_1, -2210f)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<f32>) -> i32 {
    var var_0 = func_5(select(~global0[_wgslsmith_index_u32(func_4(select(vec4<i32>(11877i, 50524i, -2147483647i, -2147483647i), arg_1, vec4<bool>(true, false, true, true)), _wgslsmith_f_op_vec3_f32(func_2()), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), 16u)], _wgslsmith_sub_vec3_u32(vec3<u32>(abs(u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.a.x), 69400u), abs(global0[_wgslsmith_index_u32(10411u, 16u)])), true), (_wgslsmith_add_u32(u_input.a.x, 4294967295u) >= 47375u) & true);
    var var_1 = ~(~select(vec3<u32>(_wgslsmith_mult_u32(44989u, u_input.a.x), ~u_input.a.x, ~4294967295u), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(42402u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), u_input.a.zwx), any(vec4<bool>(var_0.a.c.x, true, true, var_0.a.c.x))));
    global0 = array<vec3<u32>, 16>();
    global0 = array<vec3<u32>, 16>();
    let var_2 = Struct_5(var_0.a.c.x);
    return select(firstTrailingBit(arg_1.x), arg_2, !all(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(5571i, 19278i), ~18252i), min(~(-1i), abs(1i)), func_1(1406f, firstTrailingBit(vec4<i32>(~31225i, abs(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 2147483647i, 24421i), vec4<i32>(0i, 1i, 0i, 2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 24435i, 1i), vec3<i32>(38014i, 46880i, -16241i)))), abs(-1i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-988f, -1000f, -2678f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-952f, 586f, -763f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1337f, -1417f, -804f))))), _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i) >> (vec2<u32>(97342u, u_input.a.x) % vec2<u32>(32u)), ~(-vec2<i32>(2147483647i, 21051i)))));
    let var_1 = vec2<bool>(true, all(select(vec2<bool>(false, u_input.a.x < 17830u), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_2 = Struct_1(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1416f)), select(!vec2<bool>(all(vec2<bool>(var_1.x, true)), var_0.x > 57710i), vec2<bool>(all(select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, false, true, false))), _wgslsmith_f_op_f32(step(547f, 1560f)) <= -1000f), !all(!var_1)), vec4<f32>(-892f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(159f, 1157f) + _wgslsmith_f_op_f32(ceil(-732f))) * 602f), _wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1868f * _wgslsmith_f_op_f32(ceil(-1926f))), -2368f))));
    var var_3 = Struct_4(firstTrailingBit(abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a.wy))) | _wgslsmith_mod_vec2_u32(min(select(vec2<u32>(0u, u_input.a.x), vec2<u32>(5688u, u_input.a.x), vec2<bool>(var_2.c.x, true)), vec2<u32>(u_input.a.x, u_input.a.x)), ~vec2<u32>(u_input.a.x, 41431u)));
    let var_4 = vec4<i32>(-54975i, var_0.x, var_0.x, i32(-1i) * -3032i) | ~max(_wgslsmith_div_vec4_i32(vec4<i32>(13954i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, -41889i, var_0.x, -34179i)) ^ ~vec4<i32>(var_0.x, 0i, var_0.x, -2147483647i), vec4<i32>(-40213i, 2147483647i, -17174i | var_0.x, ~var_0.x));
    global0 = array<vec3<u32>, 16>();
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + func_5(abs(vec3<u32>(0u, 0u, 4121u)), !var_2.c.x).a.d.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_5(u_input.a.wxy, true).b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - 1015f))))));
    let var_6 = Struct_3(_wgslsmith_mult_vec2_u32(u_input.a.xx ^ abs(vec2<u32>(48866u, u_input.a.x)), ~(~u_input.a.wz)) >> (countOneBits(vec2<u32>(0u << (var_3.a.x % 32u), ~u_input.a.x)) % vec2<u32>(32u)), func_5(_wgslsmith_mult_vec3_u32(vec3<u32>(~41564u, u_input.a.x, ~u_input.a.x), vec3<u32>(reverseBits(0u), firstLeadingBit(var_3.a.x), u_input.a.x >> (1u % 32u))), !(!var_1.x)).a);
    var var_7 = vec4<i32>(0i, ~(-6209i), (var_4.x >> (1u % 32u)) >> (~(~0u & _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) % 32u), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(214f, var_6.b.b, -2047f, var_5))), _wgslsmith_div_vec4_f32(vec4<f32>(-489f, var_2.b, var_6.b.d.x, var_5), vec4<f32>(var_2.a, var_6.b.b, var_6.b.b, var_5)))) * var_2.d), vec2<f32>(_wgslsmith_f_op_f32(-var_6.b.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_6.b.d.x + var_5), _wgslsmith_f_op_f32(f32(-1f) * -633f)))))));
}

