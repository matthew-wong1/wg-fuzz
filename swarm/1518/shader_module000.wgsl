struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<vec2<i32>, 5>;

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<u32>(1u, 4294967295u), vec2<u32>(89806u, 73588u), false, false, Struct_1(70620u, 49975i, vec4<bool>(false, true, true, true), -722f, -1492f)), Struct_2(vec2<u32>(1u, 0u), vec2<u32>(60049u, 9265u), true, false, Struct_1(50733u, 10959i, vec4<bool>(true, true, false, true), 668f, -1209f)), Struct_2(vec2<u32>(13806u, 0u), vec2<u32>(14208u, 40752u), true, true, Struct_1(7423u, -25299i, vec4<bool>(true, false, false, false), 804f, -1000f)), Struct_2(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u), true, false, Struct_1(61597u, 27903i, vec4<bool>(false, false, false, false), 1723f, 1224f)), Struct_2(vec2<u32>(1u, 35021u), vec2<u32>(0u, 0u), false, true, Struct_1(59457u, -40265i, vec4<bool>(false, false, true, true), 309f, 565f)), Struct_2(vec2<u32>(41224u, 32340u), vec2<u32>(1u, 1u), true, false, Struct_1(0u, 1i, vec4<bool>(false, false, false, false), -1014f, -1211f)), Struct_2(vec2<u32>(1u, 65131u), vec2<u32>(1u, 17250u), true, true, Struct_1(2162u, -21513i, vec4<bool>(false, true, true, true), 1146f, 1000f)), Struct_2(vec2<u32>(44960u, 4294967295u), vec2<u32>(1u, 9988u), true, false, Struct_1(23537u, -29143i, vec4<bool>(true, false, false, false), -370f, 625f)), Struct_2(vec2<u32>(30517u, 22792u), vec2<u32>(3684u, 4294967295u), true, true, Struct_1(4294967295u, -36259i, vec4<bool>(true, true, false, false), 354f, -319f)), Struct_2(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 82642u), false, false, Struct_1(0u, 51303i, vec4<bool>(true, false, true, false), -2134f, -941f)), Struct_2(vec2<u32>(2275u, 68025u), vec2<u32>(4294967295u, 0u), false, true, Struct_1(4294967295u, -9315i, vec4<bool>(false, true, true, true), -917f, -309f)), Struct_2(vec2<u32>(53681u, 12966u), vec2<u32>(4294967295u, 4294967295u), false, true, Struct_1(37373u, 6384i, vec4<bool>(true, false, true, false), -537f, -513f)), Struct_2(vec2<u32>(1u, 0u), vec2<u32>(6393u, 22419u), false, false, Struct_1(5361u, 0i, vec4<bool>(false, true, true, true), -1000f, -427f)), Struct_2(vec2<u32>(1u, 4294967295u), vec2<u32>(38155u, 25373u), true, true, Struct_1(0u, 2147483647i, vec4<bool>(true, false, true, true), 300f, -666f)), Struct_2(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), true, true, Struct_1(0u, i32(-2147483648), vec4<bool>(true, true, true, true), -1283f, 1298f)), Struct_2(vec2<u32>(1u, 49444u), vec2<u32>(1u, 2949u), false, true, Struct_1(1u, 1i, vec4<bool>(true, true, false, true), 1412f, -216f)), Struct_2(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 4294967295u), false, true, Struct_1(1u, 2147483647i, vec4<bool>(false, false, false, true), 112f, -150f)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    return _wgslsmith_mult_u32(firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(58790u, 58971u, 0u, 0u))), min(~1u, 1u));
}

fn func_2() -> Struct_4 {
    let var_0 = !(!(!vec2<bool>(!global0[_wgslsmith_index_u32(4294967295u, 25u)], true)));
    global0 = array<bool, 25>();
    var var_1 = Struct_1(_wgslsmith_clamp_u32(1u, 77987u, func_3(_wgslsmith_f_op_f32(f32(-1f) * -410f))) << ((4294967295u | firstTrailingBit(5573u)) % 32u), 18577i << (max(10492u, _wgslsmith_clamp_u32(countOneBits(46645u), 1u, 1u)) % 32u), !select(vec4<bool>(var_0.x, all(var_0), global0[_wgslsmith_index_u32(~4294967295u, 25u)], false), select(select(vec4<bool>(false, true, var_0.x, global0[_wgslsmith_index_u32(46393u, 25u)]), vec4<bool>(false, true, true, var_0.x), vec4<bool>(true, false, var_0.x, false)), !vec4<bool>(true, true, var_0.x, global0[_wgslsmith_index_u32(38726u, 25u)]), select(vec4<bool>(false, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(72295u, 25u)], false, var_0.x, false), true)), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(13627u, 25u)], false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(441f)))))), -1096f);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f)) - var_1.e) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e + -1540f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(978f, 956f), vec2<f32>(var_1.e, -1788f))))), select(!all(select(vec4<bool>(global0[_wgslsmith_index_u32(9878u, 25u)], false, global0[_wgslsmith_index_u32(var_1.a, 25u)], var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), false)), any(!var_1.c.wwx), !(u_input.b.x > ~u_input.a)), 4294967295u, Struct_1(var_1.a, min(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, -1i), vec2<i32>(u_input.b.x, u_input.b.x)), -min(-31295i, -2147483647i)), select(select(vec4<bool>(var_0.x, var_1.c.x, true, true), var_1.c, !var_1.c), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)] && false, true && var_1.c.x, !global0[_wgslsmith_index_u32(0u, 25u)], false), select(!var_1.c, vec4<bool>(true, var_0.x, global0[_wgslsmith_index_u32(4294967295u, 25u)], var_1.c.x), var_1.c)), -850f, _wgslsmith_f_op_f32(abs(577f))));
    var_2 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-131f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(717f))), (global0[_wgslsmith_index_u32(13526u, 25u)] || false) | global0[_wgslsmith_index_u32(firstLeadingBit(var_2.d), 25u)])))), _wgslsmith_f_op_vec2_f32(var_2.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e, var_1.d) * var_2.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, var_1.d))))), any(!var_2.e.c), var_2.e.a, var_2.e);
    return Struct_4(global2[_wgslsmith_index_u32(36569u, 17u)]);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> vec3<f32> {
    var var_0 = func_2();
    let var_1 = var_0.a.e;
    var var_2 = 47035i;
    global1 = array<vec2<i32>, 5>();
    global1 = array<vec2<i32>, 5>();
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(881f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.e.d * -1254f)), !global0[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.e))), _wgslsmith_f_op_f32(2224f - _wgslsmith_f_op_f32(var_0.a.e.e + 110f))), var_1.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.e.d, _wgslsmith_f_op_f32(var_1.d - arg_0.a.e.d), -369f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.e.e, 365f, var_0.a.e.e) * vec3<f32>(417f, arg_0.a.e.e, 1964f))), vec3<f32>(func_2().a.e.d, _wgslsmith_f_op_f32(-arg_0.a.e.e), _wgslsmith_f_op_f32(var_1.e + var_1.e)), vec3<bool>(!arg_0.a.c, true, var_1.c.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32, arg_3: i32) -> Struct_1 {
    global0 = array<bool, 25>();
    let var_0 = -1i;
    var var_1 = ~(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.a, arg_0.a) << (~arg_0.a % 32u), 1u) << (~arg_0.a % 32u));
    global1 = array<vec2<i32>, 5>();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_2(), -vec3<i32>(u_input.a, 6854i, arg_0.b), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a, 22719u, arg_0.a), vec3<u32>(2664u, 58100u, 87062u)), ~vec4<u32>(34971u, 46189u, arg_0.a, arg_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.e, arg_2, arg_0.d), vec3<f32>(arg_0.d, arg_2, 578f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-170f - 481f), -296f), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1443f)) - _wgslsmith_f_op_f32(f32(-1f) * -143f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2484f, -516f, arg_2) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0.d, -1169f) + vec3<f32>(-221f, arg_0.d, -1541f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-134f, arg_2, arg_0.d)) * vec3<f32>(arg_0.d, arg_2, 956f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_0.e)), vec3<f32>(559f, -568f, arg_2))), vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(-2786f, arg_2), _wgslsmith_f_op_f32(-343f - arg_2))))));
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * arg_2.e)) + _wgslsmith_div_f32(-1268f, 1524f))), arg_0.b, !arg_2.c.x, arg_0.d, func_1(func_1(arg_2, !select(vec2<bool>(global0[_wgslsmith_index_u32(arg_2.a, 25u)], false), vec2<bool>(false, arg_0.c), vec2<bool>(global0[_wgslsmith_index_u32(arg_2.a, 25u)], false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-932f * 868f) - _wgslsmith_f_op_f32(-arg_0.e.e)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(14670i, -9782i), u_input.b), ~u_input.b)), vec2<bool>(false & arg_2.c.x, true), _wgslsmith_f_op_f32(sign(-982f)), ~(arg_0.e.b ^ arg_0.e.b) << (arg_2.a % 32u)));
    global2 = array<Struct_2, 17>();
    global2 = array<Struct_2, 17>();
    global1 = array<vec2<i32>, 5>();
    global0 = array<bool, 25>();
    return func_1(Struct_1(~(~var_0.e.a), 2147483647i, vec4<bool>(var_0.e.c.x || all(vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(-arg_1) != 782f, ~(-1i) == var_0.e.b, true), _wgslsmith_f_op_f32(abs(func_2().a.e.d)), -648f), !select(!func_2().a.e.c.xz, func_1(Struct_1(51540u, arg_2.b, vec4<bool>(false, true, global0[_wgslsmith_index_u32(42442u, 25u)], false), -536f, arg_0.e.d), arg_2.c.xz, func_1(Struct_1(arg_2.a, u_input.b.x, arg_2.c, -162f, arg_0.b.x), arg_2.c.yy, var_0.b.x, u_input.a).d, var_0.e.b).c.zw, global0[_wgslsmith_index_u32(arg_2.a, 25u)] & (false != var_0.c)), _wgslsmith_div_f32(487f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * -213f)))), arg_0.e.b);
}

fn func_6(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: bool) -> Struct_4 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.a.e.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.e.d) * 460f), -698f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-387f * _wgslsmith_f_op_f32(f32(-1f) * -1076f))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    global0 = array<bool, 25>();
    let var_1 = func_6(Struct_4(Struct_2(vec2<u32>(25679u, ~0u), min(~vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u)), global0[_wgslsmith_index_u32(reverseBits(1u), 25u)], true, func_5(Struct_3(var_0.x, var_0.yx, global0[_wgslsmith_index_u32(3786u, 25u)], 19075u, Struct_1(33135u, 2147483647i, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], true, global0[_wgslsmith_index_u32(0u, 25u)], true), -1016f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x), func_1(Struct_1(4294967295u, u_input.a, vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(35362u, 25u)], global0[_wgslsmith_index_u32(26298u, 25u)]), -2680f, var_0.x), vec2<bool>(true, global0[_wgslsmith_index_u32(13647u, 25u)]), var_0.x, 2147483647i)))), global1[_wgslsmith_index_u32(func_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_vec3_f32(func_4(Struct_4(Struct_2(vec2<u32>(4294967295u, 1u), vec2<u32>(65005u, 1u), false, global0[_wgslsmith_index_u32(6341u, 25u)], Struct_1(50649u, -2147483647i, vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(1u, 25u)]), -1000f, 510f))), min(vec3<i32>(46621i, -31607i, u_input.b.x), vec3<i32>(-32090i, -2147483647i, 15960i)), ~vec3<u32>(35976u, 25075u, 119112u), ~vec4<u32>(23298u, 52345u, 80232u, 99231u))).yz, true, ~1u, Struct_1(~20620u, -2147483647i, vec4<bool>(global0[_wgslsmith_index_u32(60378u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(54554u, 25u)]), 779f, 870f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1035f, -1109f))), Struct_1(1u, u_input.a, func_2().a.e.c, 437f, 490f)).a, 5u)], false);
    let var_2 = var_0.x;
    global2 = array<Struct_2, 17>();
    let var_3 = Struct_3(var_0.x, var_0.xy, var_1.a.c, _wgslsmith_dot_vec2_u32(~var_1.a.a, vec2<u32>(_wgslsmith_add_u32(46302u, select(1u, 47438u, true)), var_1.a.b.x)), func_6(var_1, abs(vec2<i32>(_wgslsmith_mult_i32(-1i, var_1.a.e.b), -1i)), (u_input.b.x != (i32(-1i) * -1i)) != func_5(Struct_3(var_0.x, vec2<f32>(-1616f, var_2), var_1.a.d, 4294967295u, Struct_1(var_1.a.b.x, 2147483647i, var_1.a.e.c, 106f, var_1.a.e.e)), _wgslsmith_f_op_f32(step(var_1.a.e.d, -221f)), func_6(var_1, u_input.b, var_1.a.e.c.x).a.e).c.x).a.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(max(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(55956u, 4294967295u, 32515u, 0u)), vec4<u32>(18180u, var_3.e.a, var_1.a.b.x, var_3.e.a), vec4<u32>(var_3.d, 0u, 1u, var_1.a.e.a)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 15529u, var_1.a.b.x, var_1.a.e.a), ~vec4<u32>(0u, var_3.e.a, 1u, 83639u))), firstLeadingBit(firstLeadingBit(vec4<u32>(var_1.a.e.a, 10218u, var_1.a.e.a, var_3.d)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, var_3.d, 1u), vec4<u32>(1u, var_1.a.b.x, var_1.a.a.x, var_3.d))), _wgslsmith_div_vec4_u32(~(vec4<u32>(var_1.a.b.x, 90661u, 26818u, 4294967295u) | vec4<u32>(4294967295u, 0u, 1u, var_1.a.e.a)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 42219u, 0u), vec4<u32>(4294967295u, var_1.a.b.x, 4294967295u, 4294967295u)), abs(vec4<u32>(var_1.a.a.x, 24642u, var_1.a.a.x, var_1.a.a.x))))), -617f, ~(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 39544u, var_3.e.a), vec3<u32>(var_1.a.a.x, 0u, var_3.d)), ~vec3<u32>(var_3.e.a, 66085u, var_3.d)) >> ((_wgslsmith_add_vec3_u32(vec3<u32>(var_3.e.a, 0u, 48453u), vec3<u32>(0u, var_1.a.a.x, var_3.e.a)) ^ ~vec3<u32>(0u, var_1.a.b.x, 1u)) % vec3<u32>(32u))), 1128u);
}

