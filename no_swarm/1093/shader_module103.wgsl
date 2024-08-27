struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: bool) -> vec2<f32> {
    global0 = Struct_2(max(global0.a, min(vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, global0.a.x), ~1i, global0.a.x), vec3<i32>(u_input.b.x, abs(arg_2), global0.a.x))), global0.c, Struct_1(global0.d.a, global0.d.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d.a.zy)), vec3<u32>(30991u, ~global0.c.d.x, abs(u_input.c)) >> (vec3<u32>(~25683u, ~5053u, global0.c.d.x) % vec3<u32>(32u))), global0.c);
    global0 = Struct_2(max(~u_input.b.wzw, u_input.b.wyx), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.c.c.x, global0.d.a.x, 681f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.a))), global0.c.c.x, global0.b.a.zy, global0.c.d), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.a.x, global0.c.b, global0.b.c.x)))), -1493f, _wgslsmith_f_op_vec2_f32(-global0.d.a.yx), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(17771u, 12636u, global0.b.d.x, u_input.c), vec4<u32>(1u, global0.c.d.x, global0.c.d.x, 19168u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.d.x, global0.b.d.x, 4294967295u, u_input.a), vec4<u32>(u_input.a, global0.c.d.x, u_input.c, 47023u)), u_input.a) & global0.c.d), global0.c);
    var var_0 = global0.c.a;
    var var_1 = abs(32493u) | _wgslsmith_sub_u32(abs(~88133u), u_input.c);
    let var_2 = vec2<bool>(false && arg_3, arg_0);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-global0.d.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yx) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, var_0.x)))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -672f) - var_0.yz)))))) - global0.c.c);
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(_wgslsmith_sub_vec3_i32(firstLeadingBit(global0.a), -(~_wgslsmith_mod_vec3_i32(vec3<i32>(32209i, global0.a.x, global0.a.x), u_input.b.yxy))), global0.c, global0.b, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.c.c.x, global0.d.c.x, -1456f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global0.d.a, global0.b.a), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.c.a.x, -469f, 728f))), true))), _wgslsmith_f_op_f32(-global0.d.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(true, global0.b.c.x, global0.a.x, true))), ~(~_wgslsmith_clamp_vec3_u32(global0.d.d, global0.c.d, vec3<u32>(u_input.c, u_input.c, 56500u)))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-857f, global0.d.c.x, -837f)), _wgslsmith_div_f32(global0.d.a.x, -1306f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global0.c.b)), _wgslsmith_div_f32(478f, 211f))), _wgslsmith_f_op_f32(1251f - -356f))), global0.d.d);
    global0 = Struct_2(vec3<i32>(global0.a.x, _wgslsmith_clamp_i32(1i, countOneBits(global0.a.x), u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, 1i, -4015i) >> ((global0.b.d & global0.d.d) % vec3<u32>(32u)), abs(select(u_input.b.ywx, u_input.b.wxw, vec3<bool>(false, true, true))))), global0.c, global0.c, global0.d);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(723f + global0.d.b), global0.b.a.x, _wgslsmith_f_op_f32(172f - var_0.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, global0.b.b, var_0.b), global0.b.a), _wgslsmith_f_op_vec3_f32(-var_0.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(all(vec4<bool>(false, true, false, false)), _wgslsmith_div_f32(global0.d.a.x, global0.b.a.x), _wgslsmith_clamp_i32(-12978i, global0.a.x, u_input.b.x), false)).x)), global0.b.c, firstTrailingBit(~var_0.d));
    let var_2 = ~(-(abs(max(vec2<i32>(7201i, u_input.b.x), vec2<i32>(-15999i, 17410i))) | vec2<i32>(-4022i, 0i << (global0.b.d.x % 32u))));
    return Struct_2(u_input.b.yzz >> (~vec3<u32>(4294967295u, _wgslsmith_sub_u32(global0.d.d.x, 39809u), firstTrailingBit(u_input.a)) % vec3<u32>(32u)), var_0, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, global0.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - 537f) * -1344f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-407f)), _wgslsmith_div_f32(-443f, -485f))), abs(~_wgslsmith_mod_vec3_u32(var_0.d, var_0.d))), global0.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<f32>) -> Struct_1 {
    global0 = arg_0;
    var var_0 = _wgslsmith_f_op_vec2_f32(-global0.d.c);
    let var_1 = func_2().c;
    let var_2 = func_2().c;
    global0 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(-32527i, 2147483647i, firstLeadingBit(2147483647i)), ~(-vec3<i32>(arg_0.a.x, -32580i, 2147483647i) << (~vec3<u32>(global0.c.d.x, 7024u, arg_0.c.d.x) % vec3<u32>(32u)))), arg_0.c, arg_0.c, func_2().d);
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), -350f, _wgslsmith_f_op_f32(-824f - 668f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1744f - -514f), func_2().b.b, -141f) + var_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-206f, var_1.c.x), _wgslsmith_f_op_f32(trunc(-1174f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.c.x)), arg_0.c.b), var_2.c)) + _wgslsmith_f_op_vec2_f32(var_2.a.yx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_2.c))))), countOneBits(min(reverseBits(vec3<u32>(1u, 39241u, var_1.d.x)), reverseBits(global0.b.d))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2772f + global0.d.a.x), _wgslsmith_f_op_f32(sign(global0.c.b)), all(vec3<bool>(true, false, false)))))) - _wgslsmith_f_op_vec2_f32(func_3(true, _wgslsmith_f_op_f32(f32(-1f) * -985f), 24504i, all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), true)))).x);
    let var_1 = arg_1.a.x;
    global0 = func_2();
    global0 = Struct_2(vec3<i32>(u_input.b.x, -2147483647i, _wgslsmith_mult_i32(~1i, arg_2.a.x) & _wgslsmith_add_i32(2147483647i, arg_1.a.x)), func_4(arg_2, vec2<bool>(false, !(u_input.c == arg_1.d.d.x)), global0.d.a), arg_2.c, func_4(func_2(), vec2<bool>(true, all(vec2<bool>(true, true))), arg_2.b.a));
    global0 = func_2();
    return Struct_1(arg_2.d.a, _wgslsmith_f_op_f32(round(-400f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1.d.a.zz + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_2.d.a.zx + vec2<f32>(1459f, global0.d.c.x))))))), arg_2.b.d);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.d.a))), _wgslsmith_f_op_f32(floor(arg_2)), global0.c.a.zy, global0.b.d);
    var_0 = func_5(func_4(func_2(), vec2<bool>(!(!arg_0), arg_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-623f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * -1584f), _wgslsmith_f_op_vec2_f32(func_3(all(vec3<bool>(false, arg_0, arg_0)), var_0.a.x, u_input.b.x, arg_0)).x)), Struct_2(-u_input.b.wwy, global0.b, Struct_1(global0.b.a, var_0.a.x, _wgslsmith_f_op_vec2_f32(exp2(var_0.a.yy)), vec3<u32>(_wgslsmith_add_u32(21835u, arg_1), firstTrailingBit(0u), 4294967295u)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(-1000f, -1258f, global0.c.b)))), 373f, global0.d.a.xy, ~(~vec3<u32>(4294967295u, 10201u, 1u)))), Struct_2(u_input.b.xxx ^ firstTrailingBit(func_2().a), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, arg_2, global0.d.a.x) + vec3<f32>(858f, 767f, var_0.c.x)) + vec3<f32>(121f, global0.d.c.x, arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-2089f, var_0.a.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-656f, global0.d.b))), firstTrailingBit(var_0.d)), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.c.a.x, -723f, var_0.c.x))), 1148f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(global0.c.c, var_0.a.yz)), _wgslsmith_f_op_vec2_f32(var_0.c + var_0.c), select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), arg_0))), vec3<u32>(0u, 0u, arg_1)), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(global0.b.a)))), arg_2, var_0.c, ~_wgslsmith_div_vec3_u32(global0.d.d, var_0.d))));
    var_0 = global0.c;
    var var_1 = countOneBits(~_wgslsmith_clamp_u32(1u, ~min(77176u, 1u), 6712u & _wgslsmith_div_u32(var_0.d.x, 4294967295u)));
    let var_2 = global0.c;
    return func_2();
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    global0 = func_2();
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(firstLeadingBit(firstTrailingBit(vec3<i32>(global0.a.x, -global0.a.x, 1i))), func_6(func_1(all(vec3<bool>(false, true, false)), u_input.c | global0.c.d.x, global0.b.c.x), global0.b.d, vec3<i32>(min(max(u_input.b.x, u_input.b.x), u_input.b.x), func_2().a.x, -2147483647i ^ ~global0.a.x), false), Struct_1(_wgslsmith_f_op_vec3_f32(-global0.c.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0.b.c.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.d.c.x + global0.c.c.x)))), global0.c.c, vec3<u32>(4294967295u, func_5(Struct_1(global0.b.a, 1371f, vec2<f32>(global0.b.c.x, global0.c.c.x), vec3<u32>(24437u, 12829u, 1u)), Struct_2(global0.a, global0.c, global0.d, Struct_1(vec3<f32>(-229f, -2311f, 1999f), -277f, vec2<f32>(-694f, -193f), vec3<u32>(58241u, global0.b.d.x, 1u))), Struct_2(vec3<i32>(0i, global0.a.x, -2147483647i), Struct_1(global0.d.a, global0.b.b, global0.b.a.xy, vec3<u32>(18651u, u_input.a, 3845u)), Struct_1(vec3<f32>(global0.b.b, -194f, 964f), 514f, vec2<f32>(global0.d.b, global0.c.b), vec3<u32>(u_input.a, 4294967295u, 49779u)), Struct_1(global0.c.a, 187f, vec2<f32>(-1831f, global0.c.a.x), global0.c.d))).d.x ^ ~0u, max(_wgslsmith_add_u32(0u, 1u), func_2().b.d.x))), global0.c);
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(global0.c.a + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-360f, 459f, global0.b.b), global0.d.a), global0.c.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.b * global0.c.c.x))))), global0.c.a.zz, ~global0.d.d);
    let var_1 = Struct_2(vec3<i32>(i32(-1i) * -(~401i), ~((i32(-1i) * -2147483647i) & (global0.a.x & u_input.b.x)), global0.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-822f, var_0.c.x, -550f), vec3<f32>(global0.b.b, global0.c.c.x, var_0.c.x))), _wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(471f, global0.d.c.x, global0.b.a.x)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(2504f, global0.b.b, var_0.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(264f, 168f, 1000f) + var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.b.a.zy, vec2<f32>(var_0.a.x, -2006f), vec2<bool>(false, false)))), vec3<u32>(countOneBits(global0.d.d.x), func_6(Struct_2(u_input.b.wxx, Struct_1(vec3<f32>(-635f, var_0.b, -2205f), -1202f, global0.c.c, var_0.d), global0.d, Struct_1(global0.d.a, 186f, global0.c.a.xz, vec3<u32>(80346u, global0.b.d.x, 35654u))), var_0.d, global0.a, false).d.x, var_0.d.x) | _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(global0.b.d.x, global0.d.d.x, 1u)), vec3<u32>(4294967295u, global0.d.d.x, global0.d.d.x), func_2().c.d)), func_2().d, var_0);
    var var_2 = var_1.b.d;
    let var_3 = any(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), vec3<bool>(true, false, all(vec3<bool>(true, true, false))), any(vec2<bool>(true, true))), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true), vec3<bool>(all(vec2<bool>(true, true)), false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~7570u), _wgslsmith_mult_vec3_i32(vec3<i32>(~(i32(-1i) * -35071i), 2147483647i >> (_wgslsmith_mult_u32(var_2.x, var_1.d.d.x) % 32u), global0.a.x), _wgslsmith_div_vec3_i32((vec3<i32>(1i, -2147483647i, 2147483647i) >> (global0.b.d % vec3<u32>(32u))) ^ vec3<i32>(var_1.a.x, 4651i, 32865i), min(~vec3<i32>(var_1.a.x, global0.a.x, u_input.b.x), u_input.b.wxz << (var_0.d % vec3<u32>(32u))))), var_1.d.a.x, vec4<f32>(var_1.d.c.x, var_0.c.x, _wgslsmith_f_op_f32(floor(204f)), _wgslsmith_f_op_f32(ceil(769f))), 1u);
}

