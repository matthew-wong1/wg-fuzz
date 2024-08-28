struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 9>;

var<private> global2: array<u32, 15>;

var<private> global3: Struct_1;

var<private> global4: u32 = 1u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: bool) -> bool {
    global3 = Struct_1(!select(arg_0, select(!global3.b, global3.b, arg_0), !(!arg_0)), !select(select(!arg_0, select(global3.b, global3.a, vec3<bool>(arg_0.x, global3.a.x, arg_0.x)), select(arg_0, vec3<bool>(arg_0.x, arg_2, true), global3.c)), arg_0, global3.b.x), global3.c, arg_1, u_input.a.x);
    var var_0 = 1i & ((1i | _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(17594i, 51574i, 723i, 8901i), vec4<i32>(-2147483647i, -27541i, 0i, 11336i)), select(2147483647i, -1i, true))) ^ min(-countOneBits(1i), -8756i));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(542f, 823f));
    var_1 = global1[_wgslsmith_index_u32(33574u, 9u)];
    global1 = array<vec2<f32>, 9>();
    return arg_0.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    let var_0 = func_3(select(global3.a, vec3<bool>(all(global3.a.xy), arg_1.c, true), global3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f) + -265f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(733f, -189f))))), !(!arg_1.c));
    var var_1 = all(!vec4<bool>(true, false, true, func_3(vec3<bool>(true, true, false), -689f, arg_2) || select(true, false, global3.b.x)));
    var var_2 = u_input.a.x;
    var_1 = !(global3.d != global3.d) || all(vec3<bool>(false, true, !arg_2 & !arg_1.c));
    let var_3 = arg_0;
    return select(vec3<bool>(true && all(!vec4<bool>(global3.b.x, var_0, true, false)), false, any(select(vec4<bool>(true, var_0, false, false), !vec4<bool>(false, global3.c, false, false), vec4<bool>(var_0, true, false, true)))), !(!(!select(arg_1.b, vec3<bool>(var_0, true, global3.c), true))), !(!global3.a));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(func_4(global3.e, Struct_1(vec3<bool>(all(vec4<bool>(true, true, global3.b.x, false)), false && global3.c, 905f >= global3.d), vec3<bool>(true, global3.a.x, true), func_3(global3.b, _wgslsmith_f_op_f32(ceil(arg_0.x)), global3.c != global3.b.x), 1823f, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(max(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)]), 15u)], u_input.a.x, 20185u)), true), global3.b, true, global3.d, 4294967295u);
    var var_1 = var_0;
    let var_2 = _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -27255i), _wgslsmith_mod_vec2_i32(reverseBits(max(vec2<i32>(-34492i, -23913i), vec2<i32>(1i, 22335i))), _wgslsmith_add_vec2_i32(vec2<i32>(-1097i, 18262i), abs(vec2<i32>(2147483647i, 1i))))) & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~0i, i32(-1i) * -33144i, abs(-45263i)), countOneBits(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(-1i, -2147483647i, -62269i, 84044i), vec4<i32>(8584i, 1i, 0i, 6463i)), firstLeadingBit(vec4<i32>(-18673i, 9732i, -17966i, -2900i)), vec4<i32>(1i, 1i, 1i, 1i))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) * global3.d), -1525f)))));
    global0 = -438f;
    return Struct_1(vec3<bool>(true, any(func_4(~30872u, Struct_1(var_1.b, var_1.a, var_0.b.x, global3.d, 4549u), -1i >= var_2)), false), select(!(!func_4(global3.e, Struct_1(var_1.a, vec3<bool>(var_1.b.x, false, var_1.a.x), global3.c, var_0.d, global3.e), var_1.a.x)), func_4(77591u << ((57211u ^ u_input.a.x) % 32u), Struct_1(vec3<bool>(var_1.a.x, var_0.c, var_1.a.x), select(var_0.a, global3.b, global3.b.x), true, -341f, ~1u), !(false == var_1.b.x)), true), !(any(vec3<bool>(global3.b.x, var_0.c, false)) && global3.b.x) && global3.a.x, _wgslsmith_f_op_f32(max(var_1.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))))), _wgslsmith_div_u32(u_input.a.x, var_0.e));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(!vec3<bool>(true, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(597f, -1640f, -1000f, arg_0.d))).b.x, arg_3.x), global3.b, true && (_wgslsmith_mult_u32(_wgslsmith_sub_u32(25655u, arg_1.e), arg_1.e) <= (_wgslsmith_sub_u32(4294967295u, u_input.a.x) & ~4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d * arg_0.d)))), 4294967295u);
    var var_1 = arg_1;
    var var_2 = Struct_1(vec3<bool>(!(!any(vec2<bool>(true, false))), _wgslsmith_dot_vec2_u32(abs(u_input.a), ~u_input.a) == _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_1.e, global3.e), var_0.e), true), vec3<bool>(arg_0.c, true, var_1.c && true), firstTrailingBit(10920u) == _wgslsmith_add_u32(~1u, ~(~arg_0.e)), arg_0.d, countOneBits(~global3.e));
    var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(661f, arg_1.d, global3.d, -1272f))), vec4<f32>(_wgslsmith_f_op_f32(min(221f, var_1.d)), var_0.d, arg_0.d, _wgslsmith_div_f32(2053f, arg_0.d)))));
    let var_3 = _wgslsmith_add_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1837u, 15u)], 15u)], _wgslsmith_sub_u32(arg_0.e, 62184u)), _wgslsmith_mult_u32(6636u, ~var_0.e) | u_input.a.x);
    return Struct_1(vec3<bool>(1u == (global3.e >> (var_1.e % 32u)), func_4(global3.e, arg_1, false && arg_0.c).x, false), select(global3.b, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-561f, global3.d, arg_1.d, 707f))))).a, false), !(arg_2 <= arg_2), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-984f * -415f))), global3.e);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = func_5(func_2(vec4<f32>(-250f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.d + arg_0), _wgslsmith_f_op_f32(floor(arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 733f)), Struct_1(vec3<bool>(!global3.a.x, false, true), !global3.a, !global3.b.x && (_wgslsmith_f_op_f32(round(global3.d)) >= 1175f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + global3.d) - 500f), 4294967295u ^ firstTrailingBit(u_input.a.x)), _wgslsmith_mult_i32(firstLeadingBit(arg_1.x), -27054i), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1011f, global3.d, arg_0, -2078f), vec4<f32>(1000f, global3.d, 678f, global3.d), global3.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-487f, global3.d, 837f, arg_0), vec4<f32>(106f, global3.d, 586f, global3.d)), global3.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-374f, arg_0, arg_0, arg_0) * vec4<f32>(1191f, 1176f, arg_0, global3.d)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d, 118f, arg_0, 436f))))).b.yy);
    let var_1 = _wgslsmith_f_op_f32(max(-132f, global3.d));
    var var_2 = !global3.b;
    global1 = array<vec2<f32>, 9>();
    global2 = array<u32, 15>();
    return Struct_1(vec3<bool>(var_0.c, true, false), func_5(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -104f, -721f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -343f, 1042f, var_0.d) * vec4<f32>(780f, -433f, 291f, var_0.d)))), Struct_1(vec3<bool>(!global3.b.x, true, true), !var_0.a, true, _wgslsmith_div_f32(219f, -1551f), u_input.a.x), 1i, !(!func_2(vec4<f32>(var_1, -716f, 583f, 1181f)).a.xz)).b, !(arg_1.x <= arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -631f)), ~68891u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 15>();
    let var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_div_f32(global3.d, _wgslsmith_f_op_f32(floor(609f))), global3.d), ~(~(~_wgslsmith_div_vec2_i32(vec2<i32>(66443i, -1208i), vec2<i32>(-1i, -1i)))));
    global1 = array<vec2<f32>, 9>();
    let var_1 = func_5(var_0, var_0, -2147483647i | _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(308i, -39783i, -21122i, 50446i), vec4<i32>(1i, 4500i, 2147483647i, 22384i)), ~(~(-24815i))), vec2<bool>(true, false));
    var var_2 = func_2(vec4<f32>(global3.d, -454f, var_1.d, var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit((vec3<i32>(-1i) * -vec3<i32>(0i, 1i, -18392i)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, 0i) >> (vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(1u, 15u)], 0u) % vec3<u32>(32u)), vec3<i32>(87127i, -1i, -23440i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(663f, -1261f, var_2.b.x)) + var_1.d)))), var_2.d);
}

