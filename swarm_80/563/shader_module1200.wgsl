struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(-893f, vec3<bool>(false, true, true)), Struct_1(-530f, vec3<bool>(true, false, true)), vec3<i32>(20399i, -56683i, 15939i), false));

var<private> global2: vec4<i32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(334f, vec3<bool>(false, true, false)), Struct_1(1905f, vec3<bool>(false, false, true)), vec3<i32>(2147483647i, 1i, 0i), true);

var<private> global4: f32 = 753f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<u32> {
    global2 = ~(-firstTrailingBit(select(vec4<i32>(-38543i, -26891i, -1i, global2.x), firstTrailingBit(vec4<i32>(global2.x, global1.a.c.x, u_input.a, global3.c.x)), true)));
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.b.a)));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -712f);
    let var_1 = Struct_5(Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.b.a)) + global1.a.a.a), !global3.b.b)), global2.wx, ~(~min(_wgslsmith_clamp_vec2_i32(global2.xy, global1.a.c.xy, vec2<i32>(1i, global2.x)), vec2<i32>(u_input.b, -9266i))));
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.b.a)) + _wgslsmith_f_op_f32(f32(-1f) * -1211f)) * _wgslsmith_f_op_f32(f32(-1f) * -1033f))) + global1.a.a.a);
    return firstLeadingBit(vec3<u32>(arg_0.x, reverseBits(~0u), 6925u)) & min(arg_0, ~(~arg_0));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = 0u;
    let var_1 = Struct_3(global1.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(812f, -1000f));
    var var_3 = ~select(abs(~min(vec3<u32>(var_0, 39781u, 1u), vec3<u32>(1u, 12200u, 4294967295u))), ~func_3(~vec3<u32>(45629u, 0u, 27015u)), global1.a.a.b);
    global0 = arg_1.x;
    return Struct_2(var_1.a.a, Struct_1(_wgslsmith_f_op_f32(-1000f * 307f), arg_1.zzz), vec3<i32>(_wgslsmith_add_i32(min(~u_input.b, firstTrailingBit(var_1.a.c.x)), reverseBits(-991i)), ~countOneBits(~global2.x), 2147483647i), true);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = vec4<bool>(global1.a.a.b.x, !global3.b.b.x, !(!global1.a.a.b.x), false);
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(max(vec2<u32>(17016u, 29582u), vec2<u32>(4294967295u, 1u)), ~vec2<u32>(75951u, 1u)), ~_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), vec2<u32>(31924u, 25819u))), ~75700u);
    var var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f)), arg_2);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, -768f, -1000f, global1.a.b.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-188f, -1000f, global3.a.a, 1042f)))), vec4<bool>(all(select(vec2<bool>(arg_1.a.b.x, arg_1.d), arg_1.b.b.zy, false)), arg_2.x, var_2.b.b.x, _wgslsmith_f_op_f32(min(570f, 619f)) != arg_3.x))));
    return Struct_1(_wgslsmith_f_op_f32(min(arg_3.x, _wgslsmith_f_op_f32(floor(var_2.b.a)))), vec3<bool>(global1.a.a.b.x | arg_2.x, (any(vec4<bool>(true, false, false, arg_1.a.b.x)) != any(arg_1.a.b.yx)) != false, true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_5) -> i32 {
    global2 = arg_1;
    global4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3.a.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a))));
    global4 = _wgslsmith_f_op_f32(1000f - 1704f);
    global1 = Struct_3(func_2(arg_0.a, vec4<bool>((arg_2 & 4294967295u) == 4294967295u, false, arg_1.x <= firstTrailingBit(u_input.b), arg_0.b.x)));
    var var_0 = ~(arg_1 | ~vec4<i32>(_wgslsmith_div_i32(arg_1.x, 44130i), _wgslsmith_clamp_i32(arg_3.c.x, global1.a.c.x, global1.a.c.x), 1i | global1.a.c.x, _wgslsmith_clamp_i32(global3.c.x, 2147483647i, global2.x)));
    return -func_2(-209f, vec4<bool>(true, false, false, !global1.a.d)).c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(global1.a.b, global3.a, vec3<i32>(global3.c.x ^ func_4(func_1(vec4<i32>(global2.x, -25710i, 71585i, global2.x), global1.a, vec4<bool>(global1.a.a.b.x, global1.a.a.b.x, global3.a.b.x, global3.a.b.x), vec3<f32>(global3.a.a, global3.b.a, -667f)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, -25966i, -1i), vec4<i32>(global2.x, global2.x, -2147483647i, global1.a.c.x)), min(20848u, 0u), Struct_5(Struct_4(Struct_1(global1.a.b.a, vec3<bool>(global3.a.b.x, global1.a.b.b.x, global1.a.d))), global3.c.xy, vec2<i32>(7615i, u_input.b))), -11933i, global3.c.x | 36219i), false);
    global0 = select(reverseBits(111048u) ^ ~select(0u, 87167u, true), 1u, select(true, global1.a.a.b.x, true) || false) <= 70926u;
    let var_0 = Struct_4(func_2(global1.a.b.a, vec4<bool>(true, func_1(firstLeadingBit(vec4<i32>(global3.c.x, u_input.a, u_input.b, global2.x)), func_2(1574f, vec4<bool>(global1.a.a.b.x, true, global1.a.d, global1.a.d)), !vec4<bool>(global3.d, global3.d, false, global1.a.a.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.a.a, global3.a.a, global1.a.b.a), vec3<f32>(global1.a.a.a, global1.a.a.a, -303f), global1.a.b.b.x))).b.x, _wgslsmith_f_op_f32(-global1.a.a.a) >= 2405f, false)).b);
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1118f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.a.a + var_0.a.a)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.a - global1.a.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.a.a)) * _wgslsmith_f_op_f32(exp2(func_2(-393f, vec4<bool>(global3.a.b.x, global3.b.b.x, global3.d, false)).a.a))))));
    global0 = false;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(979f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-938f, 234f) + var_0.a.a)) + _wgslsmith_f_op_f32(floor(var_0.a.a)));
    var var_2 = select(select(select(vec4<bool>(global3.a.b.x != true, true, all(vec3<bool>(false, global1.a.b.b.x, true)), global1.a.b.a < 453f), vec4<bool>(false | var_0.a.b.x, !global1.a.a.b.x, !global3.b.b.x, true), select(!vec4<bool>(false, global3.a.b.x, global1.a.b.b.x, global1.a.b.b.x), vec4<bool>(false, global1.a.d, false, false), global1.a.d)), !vec4<bool>(true, func_1(vec4<i32>(global3.c.x, 16327i, 1i, -1i), global1.a, vec4<bool>(global3.a.b.x, false, global1.a.a.b.x, false), vec3<f32>(901f, global3.a.a, global1.a.a.a)).b.x, all(vec2<bool>(var_0.a.b.x, false)), !global1.a.a.b.x), func_1(select(vec4<i32>(global3.c.x, -9222i, 13630i, global1.a.c.x), vec4<i32>(-51986i, global2.x, global2.x, u_input.b), true), Struct_2(var_0.a, Struct_1(global3.a.a, var_0.a.b), vec3<i32>(global2.x, 1269i, -1i), var_0.a.b.x), !vec4<bool>(true, true, global3.d, false), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.a, var_0.a.a, -1000f), vec3<f32>(343f, var_0.a.a, 2034f))).a > global3.a.a), vec4<bool>(true, true, any(!(!vec4<bool>(global3.b.b.x, global1.a.b.b.x, true, global3.a.b.x))), any(select(vec4<bool>(global3.a.b.x, global3.d, global1.a.b.b.x, global1.a.d), select(vec4<bool>(var_0.a.b.x, global1.a.b.b.x, true, global1.a.b.b.x), vec4<bool>(global1.a.a.b.x, true, var_0.a.b.x, global3.a.b.x), vec4<bool>(true, false, global3.b.b.x, false)), true))), global1.a.d);
    global2 = vec4<i32>(_wgslsmith_mult_i32(~func_4(global3.b, vec4<i32>(global3.c.x, -5872i, 1i, -1i) ^ vec4<i32>(0i, 9267i, -16418i, 2147483647i), ~3281u, Struct_5(var_0, global1.a.c.xx, global2.xz)), -_wgslsmith_clamp_i32(global3.c.x >> (0u % 32u), 21315i, 1i)), _wgslsmith_div_i32(func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(869f)))), select(vec4<bool>(true, false, false, global3.b.b.x), vec4<bool>(false, var_0.a.b.x, var_2.x, global1.a.d), var_0.a.b.x | false)).c.x, global2.x), ~1i, -1i);
    var_2 = select(vec4<bool>(true, var_2.x, all(var_2.ywx), false), select(select(select(!vec4<bool>(true, true, var_0.a.b.x, true), !vec4<bool>(false, var_2.x, global3.d, global1.a.a.b.x), false && var_2.x), select(select(vec4<bool>(true, true, false, var_2.x), vec4<bool>(global1.a.b.b.x, false, var_0.a.b.x, var_2.x), vec4<bool>(true, false, global1.a.a.b.x, global1.a.b.b.x)), vec4<bool>(true, true, var_2.x, true), false), !(!vec4<bool>(false, global1.a.b.b.x, false, global3.b.b.x))), select(vec4<bool>(global1.a.c.x != u_input.b, var_2.x, global2.x <= 2147483647i, !var_2.x), select(!vec4<bool>(false, false, true, var_0.a.b.x), !vec4<bool>(false, global1.a.b.b.x, var_2.x, global1.a.d), 0i > global2.x), select(!vec4<bool>(var_2.x, false, var_2.x, true), !vec4<bool>(false, true, var_0.a.b.x, false), var_0.a.b.x)), true), select(select(vec4<bool>(global1.a.a.b.x && global3.a.b.x, var_0.a.b.x, !var_0.a.b.x, true), !(!vec4<bool>(var_0.a.b.x, true, false, false)), true), !vec4<bool>(var_0.a.b.x, all(var_0.a.b.yy), global1.a.d, global3.b.a > 682f), true));
    let x = u_input.a;
    s_output = StorageBuffer(global2.yzw);
}

