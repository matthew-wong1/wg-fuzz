struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_3,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, false, false, false, true, false, false, true, true, false, false, false, false, true, true, false, false, true, true, false, false, false, false, false, false, false, true, true, true, false, true);

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec2<bool>(false, true), 26312i, true), Struct_1(vec2<bool>(false, true), -19976i, false), true, vec4<i32>(1i, -37508i, i32(-2147483648), 9269i), false), Struct_2(Struct_1(vec2<bool>(true, true), 79001i, true), Struct_1(vec2<bool>(true, true), 1i, true), true, vec4<i32>(31273i, 1i, 75313i, 0i), false), Struct_2(Struct_1(vec2<bool>(false, false), -15665i, true), Struct_1(vec2<bool>(true, false), 1i, false), false, vec4<i32>(-1i, -1i, i32(-2147483648), -35479i), true), Struct_2(Struct_1(vec2<bool>(false, true), 2147483647i, false), Struct_1(vec2<bool>(false, false), 27334i, true), false, vec4<i32>(-4644i, 0i, -24460i, 1i), false), Struct_2(Struct_1(vec2<bool>(true, false), 0i, true), Struct_1(vec2<bool>(false, false), i32(-2147483648), true), true, vec4<i32>(24235i, 2147483647i, -22543i, 0i), false), Struct_2(Struct_1(vec2<bool>(true, true), 2147483647i, true), Struct_1(vec2<bool>(true, true), 0i, true), true, vec4<i32>(43327i, i32(-2147483648), -1i, 2147483647i), false), Struct_2(Struct_1(vec2<bool>(true, true), 39915i, true), Struct_1(vec2<bool>(false, true), 1i, false), false, vec4<i32>(-15510i, -20733i, 41788i, 0i), true), Struct_2(Struct_1(vec2<bool>(false, false), 1i, false), Struct_1(vec2<bool>(false, false), -8764i, false), true, vec4<i32>(1391i, i32(-2147483648), i32(-2147483648), 2147483647i), false), Struct_2(Struct_1(vec2<bool>(true, true), 21153i, false), Struct_1(vec2<bool>(true, true), -54706i, true), true, vec4<i32>(-12126i, -70561i, 27429i, 1i), true), Struct_2(Struct_1(vec2<bool>(true, true), 4851i, true), Struct_1(vec2<bool>(true, true), -34852i, true), false, vec4<i32>(26668i, i32(-2147483648), -43715i, i32(-2147483648)), true), Struct_2(Struct_1(vec2<bool>(true, true), 1i, true), Struct_1(vec2<bool>(false, false), 65799i, true), true, vec4<i32>(0i, 2147483647i, 0i, 0i), true), Struct_2(Struct_1(vec2<bool>(false, true), -1i, true), Struct_1(vec2<bool>(true, true), 2147483647i, false), true, vec4<i32>(-64708i, -11273i, 2147483647i, 9592i), false), Struct_2(Struct_1(vec2<bool>(false, true), i32(-2147483648), false), Struct_1(vec2<bool>(false, true), i32(-2147483648), false), false, vec4<i32>(2147483647i, -10512i, 0i, i32(-2147483648)), true), Struct_2(Struct_1(vec2<bool>(true, true), 0i, false), Struct_1(vec2<bool>(true, false), 1i, false), true, vec4<i32>(-41940i, 34548i, -43294i, -23048i), false), Struct_2(Struct_1(vec2<bool>(false, true), i32(-2147483648), true), Struct_1(vec2<bool>(true, true), i32(-2147483648), true), true, vec4<i32>(-1i, -464i, 1i, i32(-2147483648)), true));

var<private> global2: array<bool, 11> = array<bool, 11>(true, true, true, false, true, false, false, true, false, true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = vec4<i32>(~1i, -39002i, firstLeadingBit(u_input.a), arg_3.b.b);
    let var_1 = Struct_3(-1i, Struct_1(vec2<bool>(all(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], arg_3.e, arg_3.b.a.x)), global2[_wgslsmith_index_u32(32456u, 11u)]), -2147483647i, !(!(!global2[_wgslsmith_index_u32(0u, 11u)]))));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, -2147483647i), _wgslsmith_div_i32(~select(u_input.a, ~arg_2.x, all(arg_3.b.a)), 25570i));
    var var_3 = Struct_3(1i, arg_3.b);
    global2 = array<bool, 11>();
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-305f, -300f), vec2<f32>(arg_0, 712f))))))), all(vec4<bool>(var_1.b.a.x, true, -765f < _wgslsmith_f_op_f32(select(-477f, -1000f, var_1.b.a.x)), true))));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec2<f32> {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = arg_0.b;
    var_1 = arg_0.b;
    let var_2 = arg_0;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(sign(-870f)), abs(vec4<u32>(79331u, 1u, 67818u, 59248u)), vec4<i32>(7099i, arg_0.a, arg_0.b.b, arg_1) >> (vec4<u32>(22069u, 16349u, 1u, 56446u) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(56093u, 15u)])) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 964f) + vec2<f32>(-435f, -273f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-288f, 1218f)))))));
}

fn func_1() -> u32 {
    global1 = array<Struct_2, 15>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(651f, -1414f), vec2<f32>(-1000f, -615f))), _wgslsmith_f_op_vec2_f32(func_2(Struct_3(u_input.a, Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(17943u, 31u)], false), -34593i, global0[_wgslsmith_index_u32(0u, 31u)])), 2147483647i)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-909f, -1802f)))));
    let var_1 = all(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(20439u, 11u)], false, global0[_wgslsmith_index_u32(0u, 31u)]), !select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(63599u, 11u)], global0[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 31u)], false, true, global0[_wgslsmith_index_u32(28118u, 31u)]), true), (global0[_wgslsmith_index_u32(0u, 31u)] & true) || global2[_wgslsmith_index_u32(69193u, 11u)])) == !(u_input.a > (_wgslsmith_clamp_i32(-1i, -4976i, 2147483647i) ^ u_input.a));
    global0 = array<bool, 31>();
    var var_2 = ~min(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(22579u, 1u, 4294967295u), vec3<u32>(18961u, 53555u, 4294967295u), vec3<u32>(4294967295u, 15120u, 1u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4194u, 2087u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 31031u), vec3<u32>(34108u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u)), ~vec3<u32>(71254u, 4294967295u, 0u))) & ~vec3<u32>(1u, 1u, 1u);
    return _wgslsmith_mod_u32(var_2.x, ~(~(~1u)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: u32) -> Struct_4 {
    global2 = array<bool, 11>();
    global0 = array<bool, 31>();
    var var_0 = Struct_4(-(~(vec3<i32>(u_input.a, -1i, 2147483647i) >> (vec3<u32>(arg_2, 53332u, 45684u) % vec3<u32>(32u)))), Struct_3(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(11088i, u_input.a, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 10778i, u_input.a), vec3<i32>(-2147483647i, u_input.a, 17454i))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a, 24319i), vec3<i32>(u_input.a, u_input.a, u_input.a))), Struct_1(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 31u)]), i32(-1i) * -1i, arg_2 >= arg_2)), Struct_3(40666i, Struct_1(select(vec2<bool>(global2[_wgslsmith_index_u32(arg_1.x, 11u)], true), !vec2<bool>(true, global2[_wgslsmith_index_u32(12195u, 11u)]), select(vec2<bool>(true, global2[_wgslsmith_index_u32(26624u, 11u)]), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(arg_2, 31u)], global2[_wgslsmith_index_u32(arg_2, 11u)]))), ~_wgslsmith_add_i32(-1i, -1i), true)), -2147483647i, vec2<i32>(-1i) * -vec2<i32>(~0i, u_input.a));
    let var_1 = Struct_1(vec2<bool>(any(vec3<bool>(arg_0 <= arg_0, !var_0.c.b.a.x, true)), true), ~max(max(-19587i, ~26655i), -1i), arg_0 != _wgslsmith_f_op_f32(-arg_0));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -316f);
    return Struct_4(select(firstLeadingBit(var_0.a) ^ var_0.a, firstLeadingBit(var_0.a), global0[_wgslsmith_index_u32(~max(arg_2, 96718u), 31u)]), var_0.c, var_0.b, _wgslsmith_sub_i32(-22402i, 0i), abs(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.a, -2147483647i), ~vec2<i32>(var_1.b, 1i), select(false, true, false)), vec2<i32>(-2147483647i, var_0.e.x) << (firstLeadingBit(arg_1.zy) % vec2<u32>(32u)), var_0.a.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1025f * -239f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1095f)), -800f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1701f)))) * 1748f)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 1u, 0u)), ~(~1u), 59910u), firstLeadingBit(~vec3<u32>(1u, 1u, 1u))), _wgslsmith_sub_u32(func_1(), firstTrailingBit(1u)));
    let var_1 = global1[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(60188u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 1u)), ~vec2<u32>(17137u, 0u))) & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), min(vec3<u32>(44140u, 19867u, 25796u), vec3<u32>(13202u, 40174u, 0u)))), 15u)];
    var var_2 = Struct_4(vec3<i32>(_wgslsmith_mod_i32(select(min(u_input.a, 0i), var_0.b.a, true), u_input.a), -14930i << (1u % 32u), ~_wgslsmith_div_i32(min(24116i, -2147483647i), _wgslsmith_dot_vec2_i32(var_1.d.yy, var_1.d.xy))), Struct_3(-countOneBits(u_input.a), Struct_1(vec2<bool>(var_0.b.b.c, var_0.c.b.c), ~var_0.c.b.b, true)), var_0.b, 0i, vec2<i32>(_wgslsmith_clamp_i32(2147483647i, abs(var_0.e.x), 1i), ~var_0.b.b.b) & (var_0.a.yx ^ var_1.d.wx));
    var var_3 = 1u;
    let var_4 = _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, ~60817u), reverseBits(31722u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(1799f * -1178f), -541f), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(min(658f, -500f)), max(vec4<u32>(var_4, 57609u, 0u, 3742u), vec4<u32>(0u, var_4, 6275u, 74509u)), vec4<i32>(-356i, var_1.b.b, var_0.b.a, -1i), Struct_2(var_1.b, var_0.c.b, var_0.b.b.c, vec4<i32>(-1i, 2147483647i, u_input.a, 0i), true))))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1030f, _wgslsmith_f_op_f32(-141f * 123f))))), 12607u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1399f + -1181f), _wgslsmith_f_op_f32(min(-1265f, -907f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -351f)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_1.d.x, var_0.b.a)), _wgslsmith_sub_vec2_i32(var_1.d.wz, var_0.e)), min(select(61176i, var_2.e.x, var_1.a.c), var_1.a.b), 2147483647i & var_0.a.x, _wgslsmith_add_i32(var_1.d.x, _wgslsmith_dot_vec2_i32(var_1.d.xz, vec2<i32>(-1i, var_2.b.b.b)))), abs(var_1.d)), vec2<u32>((89229u >> (var_4 % 32u)) >> (131065u % 32u), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(72781u, 58652u), firstTrailingBit(0u))));
}

