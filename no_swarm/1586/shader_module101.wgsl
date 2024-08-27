struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

var<private> global1: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(1i, -66959i, 2147483647i), vec3<i32>(-22552i, i32(-2147483648), -1i), vec3<i32>(78156i, 1i, 23132i), vec3<i32>(1217i, 15948i, -808i), vec3<i32>(19223i, 52120i, i32(-2147483648)), vec3<i32>(20615i, 83125i, 1i), vec3<i32>(1i, 0i, -41104i), vec3<i32>(28332i, 26095i, 2147483647i), vec3<i32>(4114i, 1i, 1i), vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<i32>(-8709i, 1i, -35178i), vec3<i32>(-41786i, i32(-2147483648), 1i), vec3<i32>(-28141i, 2147483647i, 2147483647i), vec3<i32>(85403i, -3787i, 42190i), vec3<i32>(1i, 1i, -1i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(i32(-2147483648), -2643i, 2147483647i), vec3<i32>(2147483647i, 33171i, 2147483647i), vec3<i32>(2147483647i, 6857i, 42168i), vec3<i32>(15924i, 1i, 23186i), vec3<i32>(-17871i, 10113i, 1i), vec3<i32>(i32(-2147483648), -17779i, 1i), vec3<i32>(2147483647i, 85744i, -53517i), vec3<i32>(17432i, 1i, -1i), vec3<i32>(0i, 2147483647i, -53400i), vec3<i32>(12150i, 35493i, 22961i), vec3<i32>(-1i, 1i, -31864i), vec3<i32>(5998i, -31904i, 31469i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec4<u32> {
    global1 = array<vec3<i32>, 30>();
    global0 = array<vec2<f32>, 19>();
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.c.ywy >> (~(vec3<u32>(u_input.c.x, arg_0.a, u_input.c.x) << (vec3<u32>(26113u, arg_0.e.x, 69617u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(max(arg_1.a, ~arg_1.a), reverseBits(~arg_0.c.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e.x, arg_1.a, 20400u, 4294967295u), arg_0.c))), 19u)]));
    var var_1 = Struct_1(firstTrailingBit(65205u), !(arg_0.c.x != _wgslsmith_dot_vec2_u32(~u_input.c, min(u_input.c, arg_0.e.yy))), vec4<u32>(arg_0.c.x, _wgslsmith_dot_vec3_u32(arg_0.e.yyz, vec3<u32>(59648u, u_input.c.x, arg_2.a)), 71073u, arg_0.a), arg_1.b, ~arg_0.c);
    let var_2 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_0.x)))));
    return vec4<u32>(max(arg_2.a, reverseBits(arg_0.a)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, arg_1.a, 79243u), vec4<u32>(arg_2.a, u_input.c.x, 0u, 57782u)) & arg_1.a), ~(~u_input.c.x), select(arg_1.a, _wgslsmith_mult_u32(1u, select(var_1.c.x, arg_1.a, true)), true)) ^ ~vec4<u32>(~u_input.b, ~4294967295u, 4294967295u, abs(_wgslsmith_div_u32(8883u, arg_0.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> vec3<f32> {
    let var_0 = !vec2<bool>(any(vec2<bool>(!arg_0.b, true)), !(!arg_0.b) == !(arg_0.d | true));
    var var_1 = Struct_2(46857u, arg_0.b);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(abs(447f)))))));
    var var_3 = min(u_input.c.x, 4294967295u);
    let var_4 = vec3<bool>(true, false, any(vec4<bool>(all(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(false, arg_0.b, true, false), vec4<bool>(arg_0.b, false, true, arg_0.d))), any(!var_0), true, !any(vec2<bool>(var_1.b, true)))));
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(3482f, -304f)) - _wgslsmith_f_op_f32(step(var_2, -1429f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 - _wgslsmith_div_f32(378f, 776f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.x, arg_1.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x)))))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = true || ((~(4294967295u << (0u % 32u)) << (_wgslsmith_add_u32(max(0u, arg_0.e.x), arg_0.c.x) % 32u)) > 4294967295u);
    var var_1 = vec4<f32>(1291f, 1000f, -796f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -289f) + _wgslsmith_f_op_f32(138f * 1194f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(20819u, !any(!vec3<bool>(true, arg_0.b, false)), ~func_3(arg_0, Struct_2(arg_0.a, false), Struct_2(arg_0.a, true)), false, reverseBits(arg_0.e)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1734f, var_1.x, -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + -956f), 768f, -308f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_1.x, -921f, var_1.x)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 817f, 1000f) + vec4<f32>(var_1.x, -1171f, var_1.x, -1615f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -494f, var_1.x, var_1.x) * vec4<f32>(var_1.x, -154f, -569f, var_1.x)))))), 1i));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_2.zy, var_1.xz), _wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~(~7422u)), 19u)], _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 243f)))), vec2<bool>(false, all(select(vec3<bool>(var_0, true, arg_0.b), vec3<bool>(arg_0.b, arg_0.d, var_0), vec3<bool>(true, arg_0.b, true)))))));
    var var_4 = select(select(select(vec3<bool>(var_0 && arg_0.d, !arg_0.d, true), vec3<bool>(!arg_0.b, var_3.x <= var_1.x, true), !vec3<bool>(arg_0.d, var_0, true)), !select(vec3<bool>(true, arg_0.b, arg_0.d), select(vec3<bool>(false, false, var_0), vec3<bool>(arg_0.d, false, false), vec3<bool>(true, var_0, false)), arg_0.d), select(select(select(vec3<bool>(true, var_0, true), vec3<bool>(false, arg_0.d, false), false), vec3<bool>(true, true, var_0), !vec3<bool>(var_0, false, false)), select(!vec3<bool>(true, true, arg_0.d), select(vec3<bool>(var_0, false, true), vec3<bool>(var_0, var_0, true), true), !var_0), true)), vec3<bool>(!arg_0.b, !any(vec2<bool>(false, false)), !var_0), select(!(!vec3<bool>(arg_0.d, arg_0.b, false)), select(vec3<bool>(false, true, true), select(select(vec3<bool>(true, false, var_0), vec3<bool>(true, false, false), vec3<bool>(var_0, var_0, true)), select(vec3<bool>(arg_0.b, false, false), vec3<bool>(false, true, var_0), vec3<bool>(arg_0.d, var_0, var_0)), select(vec3<bool>(false, true, true), vec3<bool>(var_0, true, arg_0.d), arg_0.b)), ~1u < u_input.b), !(!(!vec3<bool>(true, false, arg_0.b)))));
    return _wgslsmith_mod_u32(~84921u, u_input.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec2<f32>, 19>();
    var var_0 = Struct_1(1u, arg_1.b, vec4<u32>(firstTrailingBit(max(func_2(Struct_1(4294967295u, arg_1.b, vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.b), arg_1.b, vec4<u32>(4294967295u, u_input.c.x, 90846u, 1u))), ~u_input.c.x)), _wgslsmith_add_u32(countOneBits(4294967295u), u_input.c.x), 55024u, abs(u_input.b)), arg_1.b, vec4<u32>(u_input.c.x, func_2(Struct_1(0u, true, vec4<u32>(arg_1.a, u_input.b, 10145u, 14717u), false, abs(vec4<u32>(arg_1.a, 60244u, 5519u, u_input.b)))), arg_1.a, ~(~arg_1.a)));
    let var_1 = 4294967295u;
    var var_2 = ~(~vec3<u32>(~func_2(Struct_1(41979u, arg_1.b, vec4<u32>(0u, 13906u, 0u, var_0.c.x), arg_1.b, var_0.c)), ~51291u | var_1, ~arg_1.a | ~16121u));
    let var_3 = _wgslsmith_mult_i32(u_input.a, -7011i);
    return Struct_1(var_2.x, !var_0.d, ~vec4<u32>(0u, ~_wgslsmith_mod_u32(1u, u_input.c.x), 0u, arg_1.a), arg_1.b, abs(vec4<u32>(countOneBits(var_0.a), 1u, func_2(Struct_1(u_input.c.x, var_0.d, var_0.e, true, var_0.c)) ^ func_3(Struct_1(var_0.e.x, false, var_0.e, var_0.d, vec4<u32>(20648u, 29394u, var_0.e.x, 84098u)), Struct_2(var_1, var_0.d), arg_1).x, _wgslsmith_add_u32(u_input.b, ~34410u))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_2(arg_3.c.x ^ 12977u, false);
    global0 = array<vec2<f32>, 19>();
    global0 = array<vec2<f32>, 19>();
    let var_1 = true;
    global0 = array<vec2<f32>, 19>();
    return any(vec3<bool>(select(all(!arg_2.zwz), all(select(arg_2.yyw, vec3<bool>(false, false, var_0.b), vec3<bool>(true, false, true))), _wgslsmith_div_f32(1086f, arg_0) == _wgslsmith_f_op_f32(f32(-1f) * -1483f)), firstTrailingBit(arg_3.a) < (1u ^ ~var_0.a), !func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)), Struct_2(arg_1.a, true)).b));
}

fn func_6(arg_0: bool) -> vec4<u32> {
    let var_0 = u_input.b;
    var var_1 = Struct_2(~_wgslsmith_mult_u32(~(~62985u), u_input.b), false);
    global1 = array<vec3<i32>, 30>();
    let var_2 = var_1.b;
    var var_3 = global1[_wgslsmith_index_u32(u_input.c.x, 30u)];
    return reverseBits(vec4<u32>(countOneBits(0u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 0u, var_0, 101969u), vec4<u32>(var_0, u_input.b, var_1.a, u_input.c.x)), 4294967295u, var_1.a & 1u), ~60077u), firstTrailingBit(~u_input.c.x ^ select(1u, 0u, false)), var_1.a >> (_wgslsmith_sub_u32(~1u, ~8839u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 30>();
    var var_0 = ~func_6(func_5(_wgslsmith_f_op_f32(-1263f * 1759f), Struct_2(u_input.c.x, true), vec4<bool>(true, true, true, true), func_1(vec3<f32>(-113f, 884f, -2273f), Struct_2(u_input.c.x, true))) | false);
    var var_1 = Struct_1(~(~(~_wgslsmith_add_u32(55136u, var_0.x))), true, ~(~vec4<u32>(func_1(vec3<f32>(-1544f, -147f, 232f), Struct_2(u_input.c.x, false)).e.x, _wgslsmith_sub_u32(u_input.c.x, 52037u), ~11607u, var_0.x)), false, vec4<u32>(var_0.x, 4294967295u, abs(_wgslsmith_mod_u32(10290u, var_0.x)), var_0.x) & ~countOneBits(reverseBits(vec4<u32>(var_0.x, 69721u, u_input.c.x, u_input.c.x))));
    global0 = array<vec2<f32>, 19>();
    global0 = array<vec2<f32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(~min(1u, max(_wgslsmith_add_u32(u_input.c.x, 0u), firstTrailingBit(4294967295u))));
}

