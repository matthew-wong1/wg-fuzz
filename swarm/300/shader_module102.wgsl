struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2;

var<private> global2: i32 = 2147483647i;

var<private> global3: i32 = 1i;

var<private> global4: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(0u, 32089u), vec2<u32>(57262u, 1u), vec2<u32>(0u, 11195u), vec2<u32>(10740u, 805u), vec2<u32>(0u, 54114u), vec2<u32>(0u, 1u), vec2<u32>(71277u, 49045u), vec2<u32>(11628u, 4294967295u), vec2<u32>(21715u, 4294967295u), vec2<u32>(9158u, 37218u), vec2<u32>(0u, 11852u), vec2<u32>(1u, 1u), vec2<u32>(1u, 50676u), vec2<u32>(19344u, 1u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(445f, -316f))), _wgslsmith_f_op_f32(-1000f + -310f))))), vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(global0.x, 100626u)), vec2<u32>(4283u, 1u)), ~0u, global0.x, ~(global0.x | ~global0.x)), -2168f);
    global3 = u_input.b.x;
    let var_1 = Struct_3(var_0.a, var_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a, -1159f))) * -928f))));
    global4 = array<vec2<u32>, 14>();
    var var_2 = vec3<bool>(-u_input.b.x <= _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_add_i32(u_input.b.x, 2147483647i)), u_input.a), true, !all(vec4<bool>(true, false, true, false)) || all(select(select(vec3<bool>(global1.a, true, true), vec3<bool>(true, global1.a, true), vec3<bool>(false, global1.a, false)), select(vec3<bool>(true, true, true), vec3<bool>(global1.a, false, false), global1.a), !vec3<bool>(false, global1.a, global1.a))));
    return -35545i;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1211f, 1000f, 324f, -755f), vec4<f32>(587f, -429f, 1189f, 1176f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1532f, 108f, -1115f, 841f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1081f, -1057f, -675f, -359f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(152f, -213f, 509f, 1740f) + vec4<f32>(876f, 1046f, 1457f, 297f))))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1017f, -101f)), _wgslsmith_f_op_f32(sign(var_0.x)))), ~abs(countOneBits(vec4<u32>(global0.x, 0u, global0.x, global0.x))), var_0.x);
    var var_2 = Struct_5(Struct_4(Struct_1(func_3() & (i32(-1i) * -26190i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, -1000f, var_0.x, -882f), vec4<f32>(var_1.c, var_0.x, var_1.c, var_0.x)))))), var_1);
    let var_3 = Struct_4(Struct_1(-firstTrailingBit(-1i), _wgslsmith_f_op_vec4_f32(floor(var_2.a.a.b))));
    let var_4 = _wgslsmith_div_vec3_u32(var_2.b.b.yxx, vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(var_2.b.b.x, 1u)), var_2.b.b.x, 6341u) | var_1.b.zxz);
    return var_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_3 {
    global0 = _wgslsmith_sub_vec2_u32(~arg_2.b.zy, vec2<u32>(~_wgslsmith_add_u32(global0.x, 6701u), abs(arg_2.b.x)) | (vec2<u32>(~arg_2.b.x, global0.x) & countOneBits(vec2<u32>(global0.x, 55683u) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)) * 1338f)) != -1000f;
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(max(arg_2.c, -1000f)))), _wgslsmith_f_op_f32(-166f * -599f))), _wgslsmith_f_op_f32(-593f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -570f) * _wgslsmith_f_op_f32(1000f + arg_2.c))))));
    global1 = Struct_2(!arg_1.x);
    var var_2 = _wgslsmith_f_op_f32(trunc(arg_2.a));
    return Struct_3(arg_2.c, ~_wgslsmith_mod_vec4_u32((arg_2.b ^ vec4<u32>(global0.x, 4294967295u, arg_2.b.x, global0.x)) & vec4<u32>(global0.x, 0u, 33852u, 1u), select(firstTrailingBit(vec4<u32>(arg_2.b.x, 3211u, 8933u, 1969u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_2.b.x, arg_2.b.x, 54770u), vec4<u32>(global0.x, 20555u, arg_2.b.x, 34456u)), select(vec4<bool>(arg_0.a, true, true, global1.a), vec4<bool>(arg_1.x, arg_1.x, false, false), false))), arg_2.a);
}

fn func_1(arg_0: Struct_4) -> Struct_5 {
    let var_0 = true || !(!global1.a);
    var var_1 = _wgslsmith_div_u32(global0.x, 4294967295u & select(~_wgslsmith_div_u32(4294967295u, global0.x), 13410u, all(vec3<bool>(global1.a, false, true))));
    let var_2 = func_4(Struct_2(all(!vec3<bool>(var_0, var_0, true))), vec2<bool>(true, true), func_2());
    var var_3 = vec4<f32>(var_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1477f)) + _wgslsmith_f_op_f32(f32(-1f) * -102f)))), var_2.a, -1982f);
    global4 = array<vec2<u32>, 14>();
    return Struct_5(Struct_4(Struct_1(abs(653i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, arg_0.a.b.x, var_3.x, arg_0.a.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(385f, -433f, -309f, -2392f))))), func_2());
}

fn func_5(arg_0: Struct_5) -> f32 {
    var var_0 = global0.x;
    var var_1 = !(!select(select(!vec4<bool>(false, false, global1.a, true), !vec4<bool>(false, global1.a, false, global1.a), arg_0.b.a < -163f), vec4<bool>(u_input.b.x > arg_0.a.a.a, true, u_input.a <= 2147483647i, global1.a), global1.a));
    let var_2 = func_2();
    let var_3 = Struct_1(_wgslsmith_mult_i32(19807i, u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1579f - -108f) - 111f), _wgslsmith_f_op_f32(trunc(func_2().c)), var_2.a, -1547f)));
    global4 = array<vec2<u32>, 14>();
    return _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(411f, -292f)));
}

fn func_6(arg_0: vec4<f32>) -> StorageBuffer {
    let var_0 = vec2<f32>(func_1(Struct_4(Struct_1(_wgslsmith_div_i32(-25253i, 2836i), _wgslsmith_f_op_vec4_f32(-arg_0)))).a.a.b.x, func_1(Struct_4(func_1(Struct_4(Struct_1(-2147483647i, arg_0))).a.a)).a.a.b.x);
    var var_1 = Struct_5(Struct_4(func_1(func_1(func_1(Struct_4(Struct_1(u_input.a, vec4<f32>(var_0.x, var_0.x, arg_0.x, arg_0.x)))).a).a).a.a), Struct_3(arg_0.x, reverseBits(~select(vec4<u32>(13876u, 1u, global0.x, global0.x), vec4<u32>(global0.x, 0u, 0u, 44189u), global1.a)), 1289f));
    var var_2 = !select(vec3<bool>(all(vec4<bool>(true, false, global1.a, global1.a)), true, true != !global1.a), select(vec3<bool>(any(vec2<bool>(false, true)), false, global1.a), !select(vec3<bool>(global1.a, true, global1.a), vec3<bool>(global1.a, true, global1.a), true), vec3<bool>(global1.a, !global1.a, all(vec3<bool>(false, true, global1.a)))), true);
    var var_3 = Struct_5(var_1.a, Struct_3(118f, ~vec4<u32>(max(var_1.b.b.x, global0.x), ~4294967295u, _wgslsmith_div_u32(var_1.b.b.x, global0.x), 7584u), -389f));
    var var_4 = var_0;
    return StorageBuffer(vec4<u32>(4294967295u, var_1.b.b.x, firstTrailingBit(min(var_1.b.b.x, abs(var_1.b.b.x))), global0.x), -110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a.a.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1i;
    global1 = Struct_2(global1.a);
    global2 = -47671i;
    global3 = _wgslsmith_dot_vec3_i32(~u_input.b.xzy, _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, 80385i), u_input.b.xxx), select(abs(u_input.b.xzy), vec3<i32>(-10869i, u_input.b.x, 7536i), vec3<bool>(true, true, true)), u_input.b.xyw), u_input.b.yyz));
    var var_0 = all(vec3<bool>(!(u_input.a >= _wgslsmith_add_i32(u_input.b.x, 1i)), !any(!vec4<bool>(global1.a, global1.a, false, global1.a)), true));
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1255f - -1748f)), _wgslsmith_f_op_f32(func_5(func_1(Struct_4(Struct_1(1i, vec4<f32>(1000f, -1000f, -395f, -1214f)))))), _wgslsmith_f_op_f32(func_5(Struct_5(Struct_4(Struct_1(0i, vec4<f32>(-121f, -1000f, -941f, -1177f))), Struct_3(1000f, vec4<u32>(71413u, 58225u, global0.x, 0u), 1089f)))), -538f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1121f, -663f, 316f, -744f) + vec4<f32>(-1000f, -299f, -846f, -634f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-313f, 2220f, -1067f, 1098f), vec4<f32>(1905f, -155f, -974f, 935f), vec4<bool>(global1.a, global1.a, global1.a, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1375f, -2340f, 754f, 2470f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-241f, 892f, 136f, 1799f) + vec4<f32>(1048f, -792f, 1000f, 514f)))))));
}

