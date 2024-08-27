struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(select(true, all(vec4<bool>(false, true, true, true)), true), false | any(vec2<bool>(true, false)), all(vec3<bool>(true, true, true)), u_input.a.x <= u_input.a.x), select(!any(vec4<bool>(false, true, true, false)), true, !any(vec2<bool>(true, true)))), vec2<u32>(1u, 1u), Struct_1(vec4<bool>((i32(-1i) * -29110i) <= _wgslsmith_div_i32(arg_0, 2147483647i), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false))), all(vec2<bool>(true, true)), 2147483647i < reverseBits(u_input.a.x)), select(vec4<bool>(true, false, true, any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), true), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -633f), _wgslsmith_f_op_f32(round(1328f))) + vec2<f32>(695f, 1f))), Struct_1(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false), true), !(-1194i > _wgslsmith_clamp_i32(42642i, arg_0, u_input.a.x))));
    var var_1 = Struct_2(Struct_1(var_0.a.b, !var_0.c.a, true), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.x, 23982u), select(firstLeadingBit(var_0.b), select(vec2<u32>(14799u, 1u), vec2<u32>(var_0.b.x, 0u), vec2<bool>(true, true)), false)), var_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x - -641f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d.x), 646f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.d, var_0.d, var_0.c.b.xx)))))), var_0.a);
    var_1 = var_0;
    global0 = 2147483647i;
    var_1 = Struct_2(Struct_1(select(vec4<bool>(var_1.a.b.x, any(vec2<bool>(false, var_1.e.b.x)), false, true), select(vec4<bool>(false, var_0.c.b.x, true, var_1.e.a.x), vec4<bool>(var_0.c.c, false, var_1.a.c, var_1.e.b.x), var_1.e.a), select(select(vec4<bool>(var_1.e.a.x, var_0.e.c, var_0.c.b.x, false), vec4<bool>(false, false, false, var_0.a.c), vec4<bool>(true, var_0.a.a.x, true, true)), !var_0.e.a, var_0.a.a.x)), var_0.e.b, false), var_1.b, var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.d.x, 998f), vec2<f32>(-1784f, 773f), var_0.e.a.xx)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.d)) + _wgslsmith_f_op_vec2_f32(max(var_0.d, var_1.d))))), Struct_1(!(!select(var_0.a.b, var_0.a.b, vec4<bool>(false, var_1.a.c, false, true))), select(!var_1.e.a, var_1.e.b, select(!var_1.e.a.x, !var_1.a.b.x, select(true, false, true))), !var_1.c.c));
    return false;
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global1 = true || (!(any(vec3<bool>(true, true, false)) & true) && true);
    global1 = func_3(_wgslsmith_dot_vec3_i32(u_input.a, max(-select(u_input.a, vec3<i32>(13786i, u_input.a.x, 13768i), vec3<bool>(false, true, false)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 1871i, u_input.a.x), _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, 1i, u_input.a.x)))));
    var var_0 = vec4<i32>(-1i, 0i, 21290i, 16623i);
    var_0 = vec4<i32>(min(u_input.a.x, 2147483647i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, 1i), var_0.x), -(i32(-1i) * -8334i), ~(-countOneBits(17002i) & -abs(u_input.a.x)));
    var var_1 = Struct_1(select(vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(-114962i, var_0.x, -2147483647i), var_0.yyy) < -1i, true, true, true), !select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), vec4<bool>(true, true, true, true), all(vec3<bool>(all(vec4<bool>(true, false, false, true)), !func_3(u_input.a.x), false)));
    return ~abs(4294967295u);
}

fn func_4(arg_0: u32, arg_1: f32) -> vec3<bool> {
    return !select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, true, true), arg_1 < arg_1)), vec3<bool>(true, true, true), true | !all(vec2<bool>(true, false)));
}

fn func_5(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(-588f)), _wgslsmith_f_op_f32(f32(-1f) * -1097f), _wgslsmith_f_op_f32(f32(-1f) * -2478f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), -964f, _wgslsmith_f_op_f32(round(273f)))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(-309f)), _wgslsmith_div_f32(-849f, -1241f), _wgslsmith_f_op_f32(ceil(134f))))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_5(func_4(27165u ^ ~func_2(vec2<u32>(16523u, 56380u)), _wgslsmith_f_op_f32(trunc(arg_0.x))), 72408u, Struct_1(vec4<bool>(func_4(0u, arg_0.x).x && false, firstTrailingBit(18959u) != ~10477u, true, all(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_0.x <= -1000f, true, all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, false)))), false)));
    var var_1 = !func_3(arg_1);
    let var_2 = ~(u_input.a.zx & select(_wgslsmith_add_vec2_i32(u_input.a.xy << (vec2<u32>(4294967295u, 24248u) % vec2<u32>(32u)), u_input.a.zx), vec2<i32>(-6266i, ~u_input.a.x), true));
    var var_3 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(96304u, ~(~0u), ~_wgslsmith_sub_u32(68249u, 0u)), 1u, 1u), 0u, _wgslsmith_mod_u32(select(99235u, 12800u, _wgslsmith_f_op_f32(arg_0.x + var_0.x) >= var_0.x), max(~42537u, func_2(~vec2<u32>(37092u, 48500u)))));
    global0 = ~_wgslsmith_div_i32(reverseBits(_wgslsmith_mult_i32(38582i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), vec4<i32>(-14300i, 1i, 15508i, var_2.x), vec4<bool>(false, false, false, false)), abs(vec4<i32>(17840i, arg_1, 0i, -41371i))), _wgslsmith_mult_vec4_i32(vec4<i32>(38101i, 1i, var_2.x, u_input.a.x), select(vec4<i32>(45701i, -2147483647i, var_2.x, var_2.x), vec4<i32>(-2147483647i, arg_1, 0i, 1i), true))));
    return !vec4<bool>(true, !select(true, true, false), all(vec3<bool>(false, false, select(true, true, false))), select(true, true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = any(select(select(func_1(vec4<f32>(1260f, 612f, 1052f, 1046f), u_input.a.x), vec4<bool>(func_4(4294967295u, -575f).x, any(vec3<bool>(true, false, var_0)), false, u_input.a.x < u_input.a.x), true), select(vec4<bool>(false, var_0, !var_0, true), func_1(vec4<f32>(648f, 345f, -1073f, 586f), _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), vec4<bool>(any(vec3<bool>(var_0, true, true)), select(var_0, true, true), var_0, var_0)), all(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-341f, 1234f, 313f, -1209f)), ~(-2147483647i)).yz)));
    let var_1 = Struct_2(Struct_1(func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-538f, -569f, 226f, 1922f))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i) << (vec3<u32>(55596u, 4294967295u, 13753u) % vec3<u32>(32u)), vec3<i32>(-13008i, -2147483647i, 3472i))), select(select(select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, true, var_0, false), false), vec4<bool>(false, true, false, var_0), true), !(!vec4<bool>(false, var_0, var_0, var_0)), true), var_0), ~(~(select(vec2<u32>(1u, 55071u), vec2<u32>(0u, 58029u), vec2<bool>(false, var_0)) ^ vec2<u32>(54947u, 4294967295u))), Struct_1(!func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-131f, 1659f, -210f, 1268f), vec4<f32>(-617f, -1048f, 1253f, 206f)), -6515i), vec4<bool>(true, var_0, all(vec3<bool>(var_0, true, false)), all(select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, false, var_0), vec3<bool>(var_0, var_0, var_0)))), true), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1287f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f))), Struct_1(!vec4<bool>(var_0, !var_0, !var_0, var_0), !func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1085f, -918f, 884f, -1031f)), -21274i), false));
    let var_2 = Struct_1(var_1.e.a, vec4<bool>(any(!func_1(vec4<f32>(1316f, var_1.d.x, -2391f, var_1.d.x), 1i).wzz), false, var_1.a.c, var_0), true);
    var var_3 = var_1;
    var var_4 = Struct_2(Struct_1(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-764f, -1159f, var_1.d.x, 1292f))), u_input.a.x), select(vec4<bool>(all(vec2<bool>(false, var_0)), var_2.b.x, true, true), !(!var_1.e.a), func_1(vec4<f32>(-943f, 2056f, var_3.d.x, var_1.d.x), 1i).x), var_2.b.x), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u >> (var_3.b.x % 32u)), countOneBits(max(vec2<u32>(25079u, var_3.b.x), vec2<u32>(0u, 27104u)))), var_2, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -273f))), _wgslsmith_f_op_f32(abs(var_3.d.x))), var_1.d)), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_3.b.x, var_3.b.x, 0u), max(vec3<u32>(42567u, 1u, 93215u), vec3<u32>(1u, 4294967295u, 46603u)), ~vec3<u32>(62641u, var_1.b.x, var_4.b.x))), _wgslsmith_div_vec3_u32(vec3<u32>(7918u, ~var_4.b.x, _wgslsmith_clamp_u32(var_1.b.x, var_4.b.x, var_1.b.x)), vec3<u32>(4294967295u, 68835u, reverseBits(1u)))), ~min(vec4<u32>(41064u, var_1.b.x, var_3.b.x, var_4.b.x), firstTrailingBit(vec4<u32>(14223u, var_1.b.x, 1u, 21333u))) ^ max(~vec4<u32>(0u, 1u, var_3.b.x, var_3.b.x), min(~vec4<u32>(var_4.b.x, 11523u, var_1.b.x, 4294967295u), ~vec4<u32>(var_3.b.x, 4294967295u, var_3.b.x, var_4.b.x))), var_3.b.x);
}

