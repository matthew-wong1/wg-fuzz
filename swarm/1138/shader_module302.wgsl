struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, -1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<f32>) -> i32 {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(~(arg_0 >> (1u % 32u)) ^ (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 9045u, 0u, 33934u)), vec4<u32>(arg_0, arg_0, arg_0, 4294967295u)) << (35279u % 32u)), 19u)], true);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~countOneBits(_wgslsmith_add_vec2_u32(var_0.a.a.xz, vec2<u32>(0u, 0u)))), vec2<u32>(_wgslsmith_clamp_u32(arg_0, var_0.a.b.a.x, _wgslsmith_mod_u32(47746u, 1u)), ~arg_0)), 19u)];
    global1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, ~arg_1.x, reverseBits(global1.x), 1i), vec4<i32>(reverseBits(2147483647i), -1i, min(arg_1.x, arg_1.x), -1401i)), arg_1.x);
    return countOneBits(1i);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec3<f32>) -> Struct_4 {
    let var_0 = Struct_2(vec4<u32>(abs(arg_0.a.a.x), min(~arg_1.a.a.x, ~_wgslsmith_mult_u32(17244u, 25412u)), _wgslsmith_mult_u32(~(~arg_0.a.b.a.x), 1u), ~countOneBits(min(arg_0.a.a.x, 4294967295u))), arg_0.a.b);
    let var_1 = arg_1.a.a.zw;
    global0 = array<Struct_2, 19>();
    let var_2 = var_0.b.b.x;
    var var_3 = _wgslsmith_sub_i32(u_input.b, _wgslsmith_sub_i32(_wgslsmith_add_i32(-global1.x, -abs(global1.x)), func_3(~arg_1.a.a.x, u_input.a.wyy, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-988f, arg_3.x), vec2<f32>(var_0.b.b.x, 403f)), _wgslsmith_f_op_vec2_f32(round(arg_1.a.b.b.zw)))))));
    return Struct_4(u_input.a, Struct_3(Struct_2(countOneBits(vec4<u32>(0u, arg_0.a.a.x, 4294967295u, 1420u)), Struct_1(var_0.a.wxy | vec3<u32>(var_0.a.x, var_1.x, var_0.b.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b.b.x, var_2, 1914f, var_0.b.b.x) * arg_0.a.b.b))), true));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec4<i32>) -> u32 {
    var var_0 = func_2(Struct_3(Struct_2(_wgslsmith_add_vec4_u32(arg_2.b.a.a, ~vec4<u32>(arg_0.b.a.x, arg_0.a.x, 4294967295u, arg_0.b.a.x)), arg_2.b.a.b), true), Struct_3(arg_2.b.a, u_input.a.x <= func_2(arg_2.b, Struct_3(Struct_2(vec4<u32>(4294967295u, 32506u, arg_2.b.a.a.x, arg_2.b.a.b.a.x), Struct_1(arg_0.b.a, arg_0.b.b)), true), _wgslsmith_f_op_vec3_f32(-arg_0.b.b.wxy), arg_0.b.b.wyy).a.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -581f)), arg_2.b.a.b.b.x, _wgslsmith_f_op_f32(-arg_0.b.b.x)), arg_0.b.b.xzx)), arg_2.b.a.b.b.yxx).b.a;
    let var_1 = arg_2.b;
    let var_2 = select(false, true, !arg_1.x);
    var var_3 = vec3<u32>(4294967295u, ~abs(~38621u), ~77305u);
    var var_4 = func_2(func_2(arg_2.b, func_2(arg_2.b, func_2(arg_2.b, func_2(var_1, Struct_3(global0[_wgslsmith_index_u32(308u, 19u)], var_2), var_0.b.b.wzz, arg_0.b.b.xwz).b, vec3<f32>(arg_0.b.b.x, var_1.a.b.b.x, -244f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(888f, 1000f, -1000f))).b, var_0.b.b.wwy, vec3<f32>(_wgslsmith_f_op_f32(round(-1601f)), var_1.a.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))).b, _wgslsmith_f_op_vec3_f32(arg_2.b.a.b.b.zxy * _wgslsmith_div_vec3_f32(arg_0.b.b.www, _wgslsmith_f_op_vec3_f32(max(var_0.b.b.xww, vec3<f32>(arg_0.b.b.x, -1369f, arg_0.b.b.x))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.b.a.b.b.x, 2566f), var_1.a.b.b.x), arg_2.b.a.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(560f, 893f)) + -991f))).b, arg_2.b, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.b.a.b.b.x, 1191f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(trunc(arg_0.b.b.x))), var_1.a.b.b.x))), var_1.a.b.b.yyy).b;
    return arg_2.b.a.b.a.x;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool) -> Struct_3 {
    let var_0 = arg_1.xyw;
    let var_1 = arg_0.b;
    var var_2 = func_2(Struct_3(func_2(Struct_3(global0[_wgslsmith_index_u32(abs(arg_0.a.x), 19u)], func_2(Struct_3(arg_0, true), Struct_3(Struct_2(vec4<u32>(arg_0.a.x, 0u, 2509u, 9755u), var_1), true), vec3<f32>(var_1.b.x, -1184f, 1000f), vec3<f32>(817f, -1022f, arg_0.b.b.x)).b.b), func_2(func_2(Struct_3(Struct_2(arg_0.a, Struct_1(var_1.a, var_1.b)), arg_2), Struct_3(arg_0, true), arg_0.b.b.xzy, vec3<f32>(-1407f, arg_0.b.b.x, var_1.b.x)).b, Struct_3(Struct_2(arg_1, var_1), arg_2), _wgslsmith_f_op_vec3_f32(select(arg_0.b.b.xwz, var_1.b.yxz, vec3<bool>(arg_2, arg_2, true))), var_1.b.wzy).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.b.b.zzy)) - _wgslsmith_f_op_vec3_f32(-arg_0.b.b.xxw)), vec3<f32>(arg_0.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -378f), _wgslsmith_f_op_f32(-var_1.b.x))).b.a, all(vec4<bool>(arg_2, true, any(vec4<bool>(arg_2, true, arg_2, true)), -937f <= arg_0.b.b.x))), Struct_3(arg_0, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(350f, _wgslsmith_f_op_f32(step(127f, _wgslsmith_f_op_f32(step(572f, arg_0.b.b.x)))), _wgslsmith_f_op_f32(max(var_1.b.x, -1329f))) - vec3<f32>(-113f, arg_0.b.b.x, _wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(321f, 704f))))), var_1.b.yzx);
    var var_3 = -1548f;
    var var_4 = !select(!select(!vec3<bool>(false, true, arg_2), select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, true, true), vec3<bool>(var_2.b.b, var_2.b.b, var_2.b.b)), true), select(vec3<bool>(!arg_2, true, false), !select(vec3<bool>(var_2.b.b, arg_2, true), vec3<bool>(var_2.b.b, false, true), var_2.b.b), !(!vec3<bool>(arg_2, false, var_2.b.b))), true);
    return var_2.b;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> u32 {
    var var_0 = arg_3;
    var var_1 = vec2<f32>(-939f, var_0.b.a.b.b.x);
    global0 = array<Struct_2, 19>();
    let var_2 = Struct_4(_wgslsmith_add_vec4_i32(abs(~vec4<i32>(var_0.a.x, u_input.a.x, -81441i, arg_0.x)) ^ u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, ~(-1117i), firstLeadingBit(-94136i), 8511i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 24743i, 2147483647i, u_input.b), var_0.a), max(arg_3.a, ~var_0.a))), func_5(Struct_2(vec4<u32>(abs(0u), 7150u, 9835u, _wgslsmith_add_u32(arg_3.b.a.b.a.x, arg_2.a.b.a.x)), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a.b.a.x, var_0.b.a.a.x, arg_1.a.x), arg_3.b.a.b.a, arg_1.a.wyy), _wgslsmith_f_op_vec4_f32(-var_0.b.a.b.b))), vec4<u32>(~var_0.b.a.b.a.x & select(arg_3.b.a.b.a.x, 17925u, false), func_4(Struct_2(arg_2.a.a, Struct_1(arg_1.b.a, arg_2.a.b.b)), vec3<bool>(arg_2.b, arg_3.b.b, arg_2.b), func_2(Struct_3(Struct_2(arg_1.a, Struct_1(arg_1.a.wyx, vec4<f32>(arg_3.b.a.b.b.x, 459f, arg_1.b.b.x, 1000f))), arg_3.b.b), arg_3.b, vec3<f32>(1005f, -874f, arg_2.a.b.b.x), vec3<f32>(415f, -2033f, var_0.b.a.b.b.x)), vec4<i32>(u_input.a.x, arg_3.a.x, 2147483647i, 2147483647i)), arg_2.a.b.a.x, arg_3.b.a.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.b.x))) < var_0.b.a.b.b.x));
    let var_3 = func_5(func_2(Struct_3(func_5(func_5(Struct_2(vec4<u32>(52720u, 0u, 4294967295u, arg_3.b.a.a.x), arg_2.a.b), vec4<u32>(arg_3.b.a.b.a.x, arg_1.b.a.x, arg_3.b.a.a.x, arg_3.b.a.a.x), true).a, _wgslsmith_mult_vec4_u32(arg_3.b.a.a, arg_2.a.a), true).a, false), arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.b.yzx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.a.b.b.wwx + arg_2.a.b.b.yxx))).b.a, var_0.b.a.a, arg_3.b.a.b.a.x <= 63447u);
    return _wgslsmith_mult_u32(arg_1.a.x, 54758u);
}

fn func_6(arg_0: u32) -> i32 {
    var var_0 = reverseBits(~0u);
    let var_1 = func_5(Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(42012u, ~31144u, 1u >> (arg_0 % 32u), func_2(Struct_3(global0[_wgslsmith_index_u32(0u, 19u)], true), Struct_3(Struct_2(vec4<u32>(8605u, 27419u, arg_0, 10850u), Struct_1(vec3<u32>(arg_0, 43645u, 60264u), vec4<f32>(1000f, 573f, -1000f, -1161f))), false), vec3<f32>(-320f, -711f, -602f), vec3<f32>(282f, 1207f, -1316f)).b.a.a.x), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_0, 1u, arg_0), vec4<u32>(4294967295u, 17173u, arg_0, 76830u)), ~vec4<u32>(1u, arg_0, 78035u, 1u))), func_5(Struct_2(vec4<u32>(arg_0, 40497u, arg_0, 0u) >> (vec4<u32>(4294967295u, arg_0, arg_0, arg_0) % vec4<u32>(32u)), func_2(Struct_3(global0[_wgslsmith_index_u32(1u, 19u)], true), Struct_3(Struct_2(vec4<u32>(arg_0, 4294967295u, 31864u, arg_0), Struct_1(vec3<u32>(34503u, 31272u, 12766u), vec4<f32>(-858f, 684f, 415f, -1094f))), false), vec3<f32>(280f, -1054f, 1000f), vec3<f32>(751f, -1136f, 422f)).b.a.b), func_5(func_5(Struct_2(vec4<u32>(0u, arg_0, arg_0, 55041u), Struct_1(vec3<u32>(arg_0, arg_0, arg_0), vec4<f32>(1000f, -1102f, 1298f, -1000f))), vec4<u32>(arg_0, 30155u, 4294967295u, 115636u), true).a, ~vec4<u32>(arg_0, 0u, 15776u, 9673u), true).a.a, true).a.b), ~countOneBits(abs(~vec4<u32>(4294967295u, 30775u, arg_0, 4294967295u))), all(vec4<bool>(false, false, true, true))).a.b;
    var var_2 = true;
    global1 = reverseBits(~(~(~vec2<i32>(u_input.a.x, global1.x))));
    var var_3 = -vec4<i32>(u_input.a.x, 12890i, max(-71130i, 3360i << (var_1.a.x % 32u)), func_2(func_5(global0[_wgslsmith_index_u32(var_1.a.x, 19u)], vec4<u32>(93445u, var_1.a.x, 0u, 42513u), false), func_5(global0[_wgslsmith_index_u32(4294967295u, 19u)], vec4<u32>(var_1.a.x, 56831u, var_1.a.x, var_1.a.x), false), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(539f, 1000f, 389f), vec3<f32>(214f, -226f, var_1.b.x))), _wgslsmith_f_op_vec3_f32(-var_1.b.yyw)).a.x) >> (~((select(vec4<u32>(4294967295u, arg_0, arg_0, arg_0), vec4<u32>(var_1.a.x, arg_0, var_1.a.x, 17753u), false) & ~vec4<u32>(4802u, 0u, 29318u, arg_0)) & vec4<u32>(abs(1u), func_2(Struct_3(global0[_wgslsmith_index_u32(var_1.a.x, 19u)], false), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 19u)], false), vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x), vec3<f32>(var_1.b.x, -233f, var_1.b.x)).b.a.a.x, ~var_1.a.x, abs(33628u))) % vec4<u32>(32u));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!any(vec4<bool>(true, true, true, true)));
    let var_1 = ~global1.x;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2580f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2247f, -315f)) - -702f)) + -444f)));
    global1 = -reverseBits(vec2<i32>(global1.x, -22426i));
    var_0 = false;
    var_2 = -1913f;
    let var_3 = _wgslsmith_mod_vec2_i32(u_input.a.zz, vec2<i32>(u_input.b, _wgslsmith_add_i32(40837i, _wgslsmith_dot_vec2_i32(~u_input.a.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, global1.x), vec2<i32>(global1.x, -1i))))));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(-global1.x, var_3.x, var_1 << (~68021u % 32u), func_6(func_1(vec2<i32>(var_1, var_1), global0[_wgslsmith_index_u32(4294967295u, 19u)], Struct_3(global0[_wgslsmith_index_u32(4294967295u, 19u)], false), Struct_4(vec4<i32>(var_1, 1i, var_3.x, global1.x), Struct_3(global0[_wgslsmith_index_u32(66696u, 19u)], true))))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(var_1, global1.x, var_3.x, var_3.x), _wgslsmith_div_vec4_i32(vec4<i32>(-69232i, u_input.b, global1.x, -1i), vec4<i32>(1i, u_input.a.x, global1.x, var_1))), u_input.a), select(vec4<bool>(true, false, true, false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_div_f32(-2055f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2578f + -1404f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(-934f, 1000f), _wgslsmith_f_op_f32(select(-2276f, -799f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(524f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(294f, -1344f, false)), _wgslsmith_f_op_f32(ceil(-453f))), func_5(Struct_2(vec4<u32>(85425u, 6525u, 4294967295u, 0u), Struct_1(vec3<u32>(70695u, 4294967295u, 1u), vec4<f32>(-1428f, -1430f, 309f, 3087f))), vec4<u32>(31385u, 4294967295u, 1u, 0u), true).a.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec2<u32>(~68759u, ~func_1(abs(u_input.a.zx), global0[_wgslsmith_index_u32(~11002u, 19u)], func_2(Struct_3(Struct_2(vec4<u32>(4294967295u, 81386u, 16712u, 4294967295u), Struct_1(vec3<u32>(10480u, 16302u, 30285u), vec4<f32>(1370f, -1009f, -397f, 388f))), true), Struct_3(Struct_2(vec4<u32>(21290u, 1u, 1u, 0u), Struct_1(vec3<u32>(17245u, 0u, 3910u), vec4<f32>(713f, 805f, 299f, -898f))), false), vec3<f32>(362f, -1518f, -423f), vec3<f32>(455f, 919f, -831f)).b, Struct_4(vec4<i32>(-30344i, var_3.x, 2147483647i, -17004i), Struct_3(Struct_2(vec4<u32>(1u, 74070u, 0u, 0u), Struct_1(vec3<u32>(4294967295u, 140u, 27346u), vec4<f32>(-966f, -339f, -1241f, 456f))), true)))), u_input.a.zyx, _wgslsmith_div_vec2_f32(vec2<f32>(-1152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_div_vec2_f32(func_2(Struct_3(global0[_wgslsmith_index_u32(4294967295u, 19u)], false), func_2(Struct_3(Struct_2(vec4<u32>(4294967295u, 0u, 14697u, 18289u), Struct_1(vec3<u32>(29839u, 1u, 140032u), vec4<f32>(-845f, 1281f, -485f, 127f))), true), Struct_3(global0[_wgslsmith_index_u32(72092u, 19u)], false), vec3<f32>(-1568f, 1149f, 536f), vec3<f32>(261f, -893f, 379f)).b, _wgslsmith_f_op_vec3_f32(vec3<f32>(764f, -1255f, -813f) + vec3<f32>(917f, -1409f, 592f)), vec3<f32>(251f, -804f, -463f)).b.a.b.b.zx, vec2<f32>(749f, _wgslsmith_f_op_f32(abs(1956f))))));
}

