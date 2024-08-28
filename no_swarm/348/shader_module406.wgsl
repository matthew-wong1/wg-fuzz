struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true));

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(272f, Struct_1(vec4<i32>(0i, i32(-2147483648), -1i, i32(-2147483648)), vec4<bool>(false, true, false, false), false, false), vec3<f32>(-927f, 241f, -403f), true), Struct_2(349f, Struct_1(vec4<i32>(2598i, -42787i, -54081i, i32(-2147483648)), vec4<bool>(true, true, true, true), true, true), vec3<f32>(-1000f, -1994f, 285f), true), Struct_2(-1415f, Struct_1(vec4<i32>(45115i, 0i, 2147483647i, -53083i), vec4<bool>(false, true, true, false), false, false), vec3<f32>(-1103f, 1167f, 801f), false), Struct_2(-752f, Struct_1(vec4<i32>(-1505i, 47661i, -4339i, 5617i), vec4<bool>(false, true, true, false), true, true), vec3<f32>(1229f, 277f, -967f), true), Struct_2(-546f, Struct_1(vec4<i32>(-28483i, 1i, 1i, -1i), vec4<bool>(true, false, true, false), false, true), vec3<f32>(-773f, -1000f, 2032f), false), Struct_2(-1909f, Struct_1(vec4<i32>(i32(-2147483648), 1i, 2147483647i, 1i), vec4<bool>(false, true, true, false), false, true), vec3<f32>(-289f, -271f, 1563f), true), Struct_2(-440f, Struct_1(vec4<i32>(2147483647i, -59206i, -1i, -13565i), vec4<bool>(false, true, false, true), false, false), vec3<f32>(-1944f, -1133f, 578f), true), Struct_2(358f, Struct_1(vec4<i32>(2633i, -1i, 25173i, 3322i), vec4<bool>(true, false, false, true), false, true), vec3<f32>(-2118f, -211f, 1587f), true), Struct_2(-537f, Struct_1(vec4<i32>(28399i, 2147483647i, -1i, 1i), vec4<bool>(true, false, true, false), false, true), vec3<f32>(177f, 1214f, -1196f), false), Struct_2(115f, Struct_1(vec4<i32>(-16447i, 56010i, 2147483647i, 5226i), vec4<bool>(true, true, true, true), false, true), vec3<f32>(394f, 354f, 1000f), true), Struct_2(590f, Struct_1(vec4<i32>(34086i, 26591i, 1i, i32(-2147483648)), vec4<bool>(true, false, false, false), false, false), vec3<f32>(-1290f, 330f, -171f), false), Struct_2(-1000f, Struct_1(vec4<i32>(1i, 33453i, 1i, i32(-2147483648)), vec4<bool>(false, true, false, true), true, true), vec3<f32>(-2123f, 1416f, -346f), false));

var<private> global2: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    let var_0 = vec4<bool>(true, true, false, u_input.d <= _wgslsmith_dot_vec4_i32(u_input.b, max(firstLeadingBit(u_input.b), vec4<i32>(40427i, 9781i, u_input.b.x, u_input.d))));
    global2 = array<vec4<bool>, 14>();
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(291f, 693f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1291f, _wgslsmith_f_op_f32(max(-1268f, -153f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-479f - _wgslsmith_f_op_f32(abs(893f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(864f, -1000f) * _wgslsmith_f_op_f32(min(-1114f, 794f))) + 1549f))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-450f * -258f), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_add_i32(-2147483647i, u_input.b.x), -15769i, -806i), -abs(vec4<i32>(-2147483647i, u_input.b.x, -4676i, u_input.b.x))), select(vec4<bool>(false, all(global2[_wgslsmith_index_u32(arg_0.x, 14u)]), !var_0.x, true), vec4<bool>(true, select(var_0.x, true, true), var_0.x, true), true), var_0.x, true & !var_0.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(382f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1693f * 1224f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(3665f * 1976f))))), select(!(any(var_0.xxy) == false), any(var_0.zz), all(var_0.yy)));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -276f))))));
    return 1u;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = !all(vec4<bool>(any(!vec3<bool>(arg_3, arg_2, true)), arg_3, arg_2, arg_2));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-355f - -1470f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(519f)))), _wgslsmith_div_f32(-624f, _wgslsmith_f_op_f32(-256f - 473f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f))))));
    var var_2 = min(_wgslsmith_mod_u32(52512u, ~func_3(vec4<u32>(arg_1.x, 520u, arg_1.x, arg_0) & vec4<u32>(arg_1.x, 1u, 0u, u_input.c))), 0u);
    let var_3 = select(~_wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, arg_0), arg_1), ~arg_1), ~(arg_1 << (firstLeadingBit(arg_1) % vec3<u32>(32u))), !(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, arg_2, false), vec3<bool>(arg_3, arg_2, arg_2)))));
    var var_4 = var_3;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: f32, arg_3: f32) -> vec4<i32> {
    global2 = array<vec4<bool>, 14>();
    let var_0 = max(u_input.d, -(-2147483647i << (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 9486u), vec3<u32>(u_input.c, u_input.a, 38485u)), 0u) % 32u)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1153f - arg_3), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(min(-1276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))))), 721f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), 551f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(arg_2, arg_0.x)))));
    global2 = array<vec4<bool>, 14>();
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-743f, _wgslsmith_f_op_f32(sign(273f)))))))));
    return (select(vec4<i32>(min(-35672i, 10410i), _wgslsmith_dot_vec3_i32(u_input.b.xyx, vec3<i32>(6680i, 56676i, u_input.d)), var_0, u_input.b.x), u_input.b, select(global2[_wgslsmith_index_u32(u_input.a, 14u)], select(global2[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], true), global2[_wgslsmith_index_u32(u_input.a, 14u)])) << ((_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 7425u, u_input.a, u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c, u_input.a, 4294967295u), vec4<u32>(u_input.a, 27935u, u_input.a, 50027u))) >> (~vec4<u32>(u_input.a, 4294967295u, u_input.a, 62894u) % vec4<u32>(32u))) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(vec4<u32>((u_input.a ^ u_input.c) & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 21040u, 4294967295u, 0u), vec4<u32>(0u, u_input.c, 24454u, 5246u)), abs(u_input.c) | 5248u, ~_wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_div_u32(u_input.a, u_input.c)), abs(select(vec4<u32>(33121u, 10472u, 4294967295u, 17954u), vec4<u32>(59155u, 99983u, 0u, u_input.c), global0[_wgslsmith_index_u32(28319u, 6u)])) ^ min(~vec4<u32>(4294967295u, 0u, 1u, u_input.c), vec4<u32>(u_input.c, u_input.a, u_input.c, 0u))) % vec4<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32) -> f32 {
    let var_0 = ~_wgslsmith_clamp_i32(0i | min(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), u_input.b.wwx)), ~2147483647i, -1i);
    var var_1 = ~u_input.a;
    var_1 = _wgslsmith_clamp_u32(arg_2 | ~26836u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, 70042u)), ~(~vec2<u32>(55503u, u_input.c))), u_input.c);
    var_1 = u_input.a;
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(abs(-u_input.b), u_input.b), _wgslsmith_mod_vec4_i32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -242f, arg_0))), false, _wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(func_2(~arg_2, _wgslsmith_add_vec3_u32(vec3<u32>(36783u, 1u, arg_2), vec3<u32>(0u, 1u, u_input.c)), true, false))), select(abs(min(u_input.b, u_input.b)), u_input.b >> (min(vec4<u32>(1u, 26357u, u_input.a, 0u), vec4<u32>(4294967295u, arg_2, u_input.a, 0u)) % vec4<u32>(32u)), true)));
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    global2 = array<vec4<bool>, 14>();
    let var_0 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + arg_3), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_0)))));
    global0 = array<vec4<bool>, 6>();
    return Struct_1(vec4<i32>(~u_input.d, firstTrailingBit(-64758i), abs(_wgslsmith_div_i32(-10218i, arg_2.x)), -1i) >> (countOneBits(vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a), ~14367u, u_input.c, u_input.a)) % vec4<u32>(32u)), !global2[_wgslsmith_index_u32(min(firstTrailingBit(~0u), _wgslsmith_div_u32(reverseBits(u_input.c), u_input.a)), 14u)], _wgslsmith_f_op_f32(ceil(-390f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-581f + -1216f)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var var_1 = Struct_1(vec4<i32>(-u_input.b.x << (_wgslsmith_clamp_u32(u_input.c | u_input.a, u_input.c, u_input.a) % 32u), 2147483647i, 1i, _wgslsmith_add_i32(~(2147483647i & u_input.b.x), _wgslsmith_dot_vec4_i32(~u_input.b, ~vec4<i32>(u_input.b.x, u_input.b.x, -18385i, u_input.b.x)))), global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_sub_u32(u_input.a, 0u)), 6u)], var_0.x, true);
    var_1 = func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(887f, -292f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(-305f, 1i, u_input.a)), -1275f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2994f, -1140f))))))), vec4<i32>(_wgslsmith_mult_i32(2147483647i, var_1.a.x), firstTrailingBit(var_1.a.x) ^ _wgslsmith_div_i32(countOneBits(-28256i), -var_1.a.x), -(~(-1i ^ var_1.a.x)), -46909i), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2363f, -389f) - _wgslsmith_f_op_f32(-444f * -979f)), 960f))));
    let var_2 = func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1611f - -380f) * 1311f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(210f, 1264f, var_1.d)) + _wgslsmith_f_op_f32(step(535f, -589f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(460f, _wgslsmith_f_op_f32(f32(-1f) * -2118f))), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1026f)));
    var_1 = Struct_1(u_input.b, func_5(-935f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-996f, 1000f), vec2<f32>(1367f, -802f))))), select(_wgslsmith_add_vec4_i32(~u_input.b, -var_2.a), u_input.b, !select(global2[_wgslsmith_index_u32(25175u, 14u)], vec4<bool>(true, true, var_1.b.x, var_2.d), vec4<bool>(var_0.x, var_2.d, true, false))), _wgslsmith_f_op_f32(abs(129f))).b, _wgslsmith_mod_i32(var_2.a.x & countOneBits(var_1.a.x), var_2.a.x) > select(-2147483647i, -30928i & var_1.a.x, !var_0.x), true);
    var_1 = var_2;
    global0 = array<vec4<bool>, 6>();
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 10302u, u_input.a), abs(vec3<u32>(0u, 68337u, 0u)))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(51277u, u_input.a), u_input.a, u_input.c), ~(~vec3<u32>(u_input.a, u_input.c, 4294967295u)))) ^ min(1u, 1u), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1035f, var_3.c.x), select(min(firstLeadingBit(countOneBits(vec3<u32>(0u, u_input.a, u_input.a))), abs(~vec3<u32>(u_input.c, u_input.c, 4294967295u))), ~(vec3<u32>(u_input.a, u_input.a, u_input.a) | ~vec3<u32>(0u, 440u, 0u)), var_2.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.x * -611f) + _wgslsmith_f_op_f32(sign(var_3.c.x))))))));
}

