struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-17253i, 4294967295u, -1i, vec4<f32>(1240f, -515f, -262f, 814f), vec3<i32>(2147483647i, -9108i, -57354i));

var<private> global1: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true));

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec3<bool> {
    global2 = Struct_1(0i, ~global2.b, 1i, global2.d, vec3<i32>(4089i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, -437i, 70049i, u_input.c) >> (vec4<u32>(25216u, global2.b, u_input.a, 30071u) % vec4<u32>(32u)), -vec4<i32>(global2.c, global2.c, 0i, global0.a))), -30102i));
    global0 = Struct_1(max(global2.c, (global2.c << (1u % 32u)) >> (0u % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), firstLeadingBit(min(vec2<u32>(0u, global2.b), vec2<u32>(75269u, 0u)))) & _wgslsmith_sub_u32(firstTrailingBit(~36858u), reverseBits(27678u)), global0.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.d - global2.d)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1187f - global0.d.x), _wgslsmith_f_op_f32(trunc(global2.d.x)), _wgslsmith_f_op_f32(trunc(global0.d.x)), _wgslsmith_f_op_f32(global2.d.x * 1000f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(global2.d, vec4<f32>(global2.d.x, global0.d.x, -2158f, global2.d.x), true)), vec4<f32>(412f, -167f, -1280f, -319f), any(vec3<bool>(false, true, true)))))), ~_wgslsmith_sub_vec3_i32(global2.e, ~(vec3<i32>(global2.a, 20119i, 1i) << (vec3<u32>(4294967295u, u_input.a, 68041u) % vec3<u32>(32u)))));
    let var_0 = 0u;
    return global1[_wgslsmith_index_u32(global2.b, 4u)];
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>) -> vec4<f32> {
    let var_0 = global2.c;
    var var_1 = false;
    var var_2 = Struct_1(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global2.e.zx, global2.e.xz), vec2<i32>(-12414i, -12131i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 17622i, global2.e.x, global2.e.x), select(vec4<i32>(-43151i, -18208i, u_input.c, 0i), vec4<i32>(36827i, -32107i, u_input.d, 39323i), arg_1.x)), countOneBits(~0i)), abs(_wgslsmith_dot_vec4_u32((vec4<u32>(arg_0.x, 72423u, global0.b, arg_0.x) ^ vec4<u32>(u_input.a, u_input.a, global0.b, u_input.a)) ^ vec4<u32>(arg_0.x, global0.b, arg_0.x, u_input.a), vec4<u32>(firstLeadingBit(arg_0.x), 1u, ~arg_0.x, _wgslsmith_dot_vec2_u32(arg_0, arg_0)))), reverseBits(-1i) << ((_wgslsmith_sub_u32(23226u, 0u) ^ select(~u_input.a, max(global0.b, u_input.a), false)) % 32u), _wgslsmith_f_op_vec4_f32(global2.d * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f * 291f)), _wgslsmith_f_op_f32(-global2.d.x), global0.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global2.d.x)))))), max(vec3<i32>(firstTrailingBit(-28244i ^ global2.a), min(~global2.e.x, global2.c), ~(-6875i)), vec3<i32>(_wgslsmith_sub_i32(u_input.c, global0.a), -1i, firstLeadingBit(global2.c))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.x - global0.d.x))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d.x, global2.d.x)))));
    var var_3 = -max(abs(-vec4<i32>(var_2.a, -1i, global0.a, 7062i)) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(var_2.b, var_2.b, 1u, var_2.b), vec4<u32>(global2.b, 8088u, 1u, 19839u)) % vec4<u32>(32u)), min(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.e.x, -54115i, 0i, u_input.c), vec4<i32>(global2.a, 31467i, var_2.e.x, global2.a), vec4<i32>(0i, 3759i, var_2.e.x, global0.a)), vec4<i32>(global2.e.x, u_input.b, u_input.b, var_2.a), u_input.d >= global2.a), ~(-vec4<i32>(-1i, global2.a, -11322i, 16235i))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(760f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global2.d.x)), -1075f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0.d.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -226f) - _wgslsmith_f_op_f32(-global0.d.x))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = vec2<u32>(20487u, global0.b);
    let var_1 = global2.a;
    global2 = Struct_1(global2.a, abs(global2.b), global2.e.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global2.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1137f, -575f, -1000f, -499f))))), min(-(~(~global2.e)), -max(vec3<i32>(global0.a, 2147483647i, global2.e.x), -global0.e)));
    var var_2 = Struct_1(_wgslsmith_mod_i32(~(i32(-1i) * -1i), min(u_input.c, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-6614i, 0i), ~global2.e.x))), _wgslsmith_clamp_u32(countOneBits(~0u), global2.b, _wgslsmith_div_u32(_wgslsmith_mod_u32(3276u, global0.b), var_0.x) & ~global2.b), _wgslsmith_sub_i32(-_wgslsmith_sub_i32(max(25650i, 66615i), _wgslsmith_dot_vec2_i32(global2.e.xx, vec2<i32>(global2.e.x, 13767i))), ~u_input.c), global0.d, global0.e);
    var var_3 = abs(~var_2.b & ~4294967295u);
    return Struct_1(1i, 4294967295u, global0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(~(vec2<u32>(42102u, 40809u) & vec2<u32>(47148u, var_2.b)), select(!global1[_wgslsmith_index_u32(36499u, 4u)], func_3(), false)))), vec3<i32>(~11129i, u_input.c, -1i));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d.xxy - vec3<f32>(arg_2, 269f, -685f)))));
    global1 = array<vec3<bool>, 4>();
    global1 = array<vec3<bool>, 4>();
    let var_1 = -abs(select(vec4<i32>(arg_1.x, i32(-1i) * -1i, 2620i, ~arg_3.a), ~(~vec4<i32>(arg_1.x, u_input.d, arg_1.x, -39968i)), vec4<bool>(func_3().x, all(vec2<bool>(true, true)), false, all(vec4<bool>(true, true, true, true)))));
    global0 = Struct_1(~(-2147483647i), 22067u, ~1i, global0.d, firstTrailingBit(-func_2(global2.b, vec4<f32>(global2.d.x, var_0.x, arg_0.x, 876f)).e) ^ _wgslsmith_div_vec3_i32(var_1.zyy, arg_1.xxx));
    return func_2(arg_3.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2.d), global0.d, all(select(vec2<bool>(true, true), func_3().zx, true)))));
}

fn func_6(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = !all(select(arg_0, select(vec2<bool>(true, false), arg_0, false), false)) && !all(vec3<bool>(all(arg_0), true, true));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.d.x, global2.d.x, arg_0.x)) * _wgslsmith_f_op_f32(-global0.d.x)) * 182f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(225f + -554f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)) * -824f), arg_2.d.x);
    let var_2 = arg_2.b;
    global0 = Struct_1(_wgslsmith_mod_i32(-(-global2.e.x & ~u_input.d), global2.c), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_2, arg_2.b), ~(~(~62156u))), (1i ^ u_input.c) | global2.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_1, var_1)) * _wgslsmith_f_op_vec4_f32(-global2.d)), func_5(var_1.wzy, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, global2.e.x, u_input.d, 9127i), vec4<i32>(u_input.d, u_input.d, 2147483647i, -24726i)), -900f, arg_2).d, !select(vec4<bool>(false, true, var_0, arg_0.x), vec4<bool>(arg_1, true, true, false), arg_1))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(vec2<u32>(2025u, 0u), vec3<bool>(arg_0.x, true, true))), _wgslsmith_f_op_vec4_f32(round(var_1))))), vec3<i32>(9817i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c, select(arg_2.a, -2147483647i, false)), 62i), _wgslsmith_dot_vec3_i32(vec3<i32>(26537i, 1i, global0.a), abs(arg_2.e)) << (var_2 % 32u)));
    let var_3 = ~(~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, global0.b), ~128834u), func_5(arg_3, vec4<i32>(global0.e.x, global0.c, global2.e.x, 0i) & vec4<i32>(u_input.d, u_input.c, 1i, global2.e.x), _wgslsmith_f_op_f32(global0.d.x + global0.d.x), func_2(29480u, vec4<f32>(405f, -359f, global2.d.x, var_1.x))).b, abs(min(global2.b, u_input.a))));
    return arg_2;
}

fn func_1() -> i32 {
    global2 = func_6(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, all(vec4<bool>(false, false, false, false)))), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), false, func_5(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(global0.d.x)), -295f, _wgslsmith_div_f32(global0.d.x, 344f)), vec3<f32>(-205f, _wgslsmith_div_f32(-1249f, global2.d.x), _wgslsmith_f_op_f32(698f - -592f)))), select(firstTrailingBit(-vec4<i32>(-1i, 1i, global0.e.x, u_input.d)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 1i, global0.a, 0i), vec4<i32>(0i, global0.a, u_input.b, 65072i)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(1315f * global0.d.x), func_2(global0.b, vec4<f32>(global2.d.x, -353f, _wgslsmith_f_op_f32(exp2(global2.d.x)), global0.d.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.x, global2.d.x, global2.d.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d.yxw))));
    global2 = func_2(firstTrailingBit(_wgslsmith_clamp_u32(global2.b, 0u, abs(72963u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3487f, global2.d.x, 1000f, global2.d.x)), vec4<f32>(1135f, global0.d.x, -200f, -727f)))));
    global0 = Struct_1(_wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(func_2(global2.b, vec4<f32>(-1099f, global0.d.x, global0.d.x, -714f)).e, _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, 47916i), global2.e, global0.e)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(4559i, global2.a, -2147483647i), firstTrailingBit(global0.e)), reverseBits(func_6(vec2<bool>(true, false), true, Struct_1(global2.c, 1u, global0.c, vec4<f32>(global0.d.x, global2.d.x, 1272f, global2.d.x), global0.e), vec3<f32>(178f, global2.d.x, global2.d.x)).c))), 1u, _wgslsmith_mod_i32(firstLeadingBit(14493i), -firstLeadingBit(-33912i)) ^ func_6(vec2<bool>(true, true), !any(vec4<bool>(false, true, true, false)), func_6(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true, func_2(global2.b, global2.d), vec3<f32>(1000f, global2.d.x, global0.d.x)), _wgslsmith_f_op_vec3_f32(sign(func_5(global2.d.xwx, vec4<i32>(global0.e.x, 0i, global0.e.x, u_input.c), -1123f, Struct_1(u_input.d, global0.b, global0.c, vec4<f32>(global2.d.x, -1468f, -414f, global2.d.x), vec3<i32>(-17550i, 1i, -2147483647i))).d.yxz))).c, global2.d, func_5(vec3<f32>(global2.d.x, _wgslsmith_f_op_f32(global0.d.x + global0.d.x), 158f), reverseBits(-select(vec4<i32>(global0.e.x, -67243i, 1i, global2.c), vec4<i32>(-28817i, 52447i, 1i, 26265i), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x - global0.d.x) - _wgslsmith_f_op_f32(global2.d.x - func_2(u_input.a, global2.d).d.x)), Struct_1(global0.a, 1u, (22917i << (global2.b % 32u)) ^ -1i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global2.d))), firstLeadingBit(vec3<i32>(37445i, global2.c, -1i)))).e);
    global0 = func_6(!(!vec2<bool>(true, all(vec2<bool>(true, true)))), global0.e.x > ~(-(u_input.d >> (u_input.a % 32u))), func_6(func_3().xz, true, Struct_1(~global0.e.x | u_input.d, abs(~global0.b), ~(-2147483647i) & (global2.c >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(global0.d)))), ~(~vec3<i32>(-2147483647i, global0.a, global2.a))), global0.d.yyy), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d.xyx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global0.d.xyz * vec3<f32>(-2281f, global2.d.x, global2.d.x))))))));
    return ~(-21908i);
}

fn func_7(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_1;
    global0 = arg_1;
    global0 = arg_1;
    var var_0 = vec2<u32>(arg_0, 1u ^ (~1u >> (u_input.a % 32u)));
    global0 = arg_1;
    return Struct_1(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global0.a, _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_clamp_i32(global0.c, global0.c, global2.a)), ~firstLeadingBit(32171i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(17361i ^ u_input.c, -u_input.b), -56388i)), _wgslsmith_div_u32(~1u, var_0.x & (global0.b << (global2.b % 32u))) >> (global0.b % 32u), _wgslsmith_mod_i32(abs(~_wgslsmith_div_i32(arg_1.e.x, global0.a)), global2.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.d.x, global0.d.x)), 1383f, global0.d.x, _wgslsmith_f_op_f32(select(global0.d.x, -369f, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1560f, global2.d.x, global2.d.x, 541f))), vec4<bool>(false, all(vec4<bool>(true, false, true, false)), true, true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.d * global0.d)) * _wgslsmith_div_vec4_f32(vec4<f32>(380f, -230f, global0.d.x, 506f), global0.d))), vec3<i32>(_wgslsmith_mod_i32(max(arg_1.a & u_input.d, min(0i, arg_1.a)), global2.a), _wgslsmith_add_i32(-1i, abs(arg_1.c)), _wgslsmith_add_i32(global2.e.x, -u_input.c << (var_0.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(4294967295u, Struct_1(abs(func_1()), countOneBits(_wgslsmith_mult_u32(33960u, global0.b << (48420u % 32u))), global2.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -921f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.d.x, -211f)) - 118f), global2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x))), vec3<i32>(global2.c, 2147483647i, 1i & ~global2.c)));
    global2 = Struct_1(global0.a, ~global0.b, -1i, _wgslsmith_div_vec4_f32(global2.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(130f, global0.d.x, global0.d.x, -790f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(747f, -1000f, global2.d.x, global2.d.x))) - global2.d)), -(_wgslsmith_add_vec3_i32(global2.e, ~global2.e) << (vec3<u32>(abs(0u), ~41723u, _wgslsmith_mult_u32(u_input.a, global2.b)) % vec3<u32>(32u))));
    global2 = func_6(select(!func_3().yy, vec2<bool>(true, true), vec2<bool>(true, true)), ~(~max(u_input.b, -2147483647i)) != u_input.b, Struct_1(_wgslsmith_mod_i32(global0.a, countOneBits(1i)), _wgslsmith_add_u32(15919u & reverseBits(u_input.a), global2.b), reverseBits(-16460i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.d.x, -202f, 349f, global0.d.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, 500f, global0.d.x, 763f)))), vec3<i32>(global0.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global0.c, -2147483647i, 2147483647i), vec4<i32>(-43382i, 16315i, 6547i, -8943i)), _wgslsmith_sub_i32(reverseBits(global2.e.x), u_input.c >> (54377u % 32u)))), _wgslsmith_div_vec3_f32(global2.d.xyw, _wgslsmith_div_vec3_f32(vec3<f32>(-714f, 1000f, global2.d.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.d.xxy) + vec3<f32>(-1028f, global0.d.x, global2.d.x)))));
    var var_0 = vec2<bool>(any(vec4<bool>(false, true, !(global2.a != 2147483647i), true)), false);
    let var_1 = func_7(~countOneBits(~global2.b), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.d.x, _wgslsmith_f_op_f32(round(143f))) - global0.d.zzz), firstTrailingBit(vec4<i32>(global2.c, global0.a, 46998i, 2147483647i) ^ vec4<i32>(u_input.b, -2147483647i, 6189i, global2.c)) | (vec4<i32>(-1i) * -vec4<i32>(0i, -31067i, global2.a, -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -917f) - _wgslsmith_f_op_f32(-global2.d.x)) * _wgslsmith_f_op_f32(-1326f + func_5(vec3<f32>(159f, global0.d.x, global2.d.x), vec4<i32>(54931i, -2147483647i, global2.a, u_input.d), global0.d.x, Struct_1(global0.e.x, u_input.a, u_input.b, global0.d, vec3<i32>(global0.c, global2.a, global2.c))).d.x)), Struct_1(reverseBits(reverseBits(u_input.c)), ~global2.b, _wgslsmith_sub_i32(0i, 16953i), global2.d, -(global2.e | global2.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_7(_wgslsmith_div_u32(0u, var_1.b), func_2(global0.b, global2.d)).d.x), global2.d.x)), vec3<u32>(1u, select(22930u, abs(17210u), !(global0.b > global2.b)), _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a, global2.b), vec2<u32>(var_1.b, global0.b)) ^ ~vec2<u32>(61470u, var_1.b), ~vec2<u32>(global0.b, u_input.a))));
}

