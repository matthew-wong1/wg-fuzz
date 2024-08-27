struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: vec2<bool>,
    e: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_4) -> Struct_3 {
    let var_0 = Struct_1(!arg_2.b.b.a, !(~(~2147483647i) >= (_wgslsmith_div_i32(-4813i, arg_0) << (abs(4294967295u) % 32u))));
    var var_1 = ~(~abs(select(~vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x), select(vec4<u32>(56475u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), arg_2.c.a), vec4<bool>(arg_2.c.b.b, false, var_0.a.x, true))));
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-953f)), arg_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_2.b.a)));
    var var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, i32(-1i) * -42027i, ~u_input.b & _wgslsmith_sub_i32(-27096i, u_input.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, 33971i), vec3<i32>(-1i, _wgslsmith_div_i32(-1i, u_input.b), u_input.b))), _wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_mult_i32(-12468i, -25228i), _wgslsmith_mult_i32(-51608i, u_input.b), u_input.b), -vec3<i32>(~22531i, 1i, 1i)));
    var var_4 = _wgslsmith_dot_vec3_u32(~var_1.wyw, var_1.yyz);
    return arg_2.c;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    global0 = array<vec3<f32>, 7>();
    let var_0 = Struct_1(!arg_2.c.a, !(arg_2.b.b || any(!vec4<bool>(true, false, true, arg_0))));
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    var var_1 = Struct_5(vec3<u32>(0u >> (_wgslsmith_clamp_u32(1u, arg_1, u_input.a.x) % 32u), ~abs(arg_1), 45461u) ^ reverseBits(vec3<u32>(~1u, 1u, 4294967295u)), Struct_3(select(select(func_1(u_input.b, global0[_wgslsmith_index_u32(1u, 7u)], Struct_4(Struct_3(vec4<bool>(var_0.a.x, false, arg_0, false), var_0), Struct_2(arg_3, arg_2.c, arg_2.b, var_0.a.xy), Struct_3(vec4<bool>(var_0.b, var_0.b, arg_0, false), Struct_1(arg_2.b.a, false)), vec2<bool>(false, true), 1330f)).a, !vec4<bool>(false, var_0.a.x, false, arg_2.d.x), !arg_2.b.b), select(!vec4<bool>(arg_2.b.a.x, var_0.a.x, true, false), !vec4<bool>(true, false, false, var_0.a.x), !vec4<bool>(arg_0, false, arg_2.b.b, false)), vec4<bool>(all(vec3<bool>(false, arg_0, false)), !arg_2.b.a.x, arg_0, all(vec4<bool>(true, arg_2.d.x, arg_0, false)))), Struct_1(func_1(u_input.b, global0[_wgslsmith_index_u32(~arg_1, 7u)], Struct_4(Struct_3(vec4<bool>(var_0.a.x, arg_2.b.b, true, arg_2.b.a.x), arg_2.b), arg_2, Struct_3(vec4<bool>(false, arg_0, true, arg_2.d.x), arg_2.c), vec2<bool>(arg_2.b.a.x, var_0.a.x), 662f)).b.a, any(func_1(23211i, vec3<f32>(-1302f, arg_2.a, arg_3), Struct_4(Struct_3(vec4<bool>(true, var_0.a.x, true, false), Struct_1(arg_2.b.a, true)), arg_2, Struct_3(vec4<bool>(arg_0, arg_2.d.x, true, false), Struct_1(vec3<bool>(var_0.b, false, true), arg_0)), arg_2.d, 617f)).a))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), func_1((i32(-1i) * -23992i) & max(u_input.b, 0i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(296f, -644f, arg_3) - global0[_wgslsmith_index_u32(u_input.a.x, 7u)]) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.a, -2549f, arg_3), global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))), Struct_4(Struct_3(vec4<bool>(true, arg_2.d.x, true, var_0.a.x), var_0), arg_2, func_1(-1i, vec3<f32>(556f, arg_3, -636f), Struct_4(Struct_3(vec4<bool>(var_0.b, false, true, arg_2.d.x), Struct_1(arg_2.c.a, var_0.b)), Struct_2(arg_3, var_0, Struct_1(var_0.a, true), var_0.a.zz), Struct_3(vec4<bool>(var_0.b, arg_0, var_0.a.x, true), var_0), vec2<bool>(false, arg_0), -1000f)), func_1(8782i, vec3<f32>(arg_2.a, arg_3, 401f), Struct_4(Struct_3(vec4<bool>(arg_0, false, arg_2.c.b, false), arg_2.b), Struct_2(arg_2.a, Struct_1(var_0.a, arg_0), Struct_1(var_0.a, true), arg_2.b.a.zx), Struct_3(vec4<bool>(arg_0, true, var_0.b, false), Struct_1(var_0.a, arg_0)), var_0.a.yy, arg_3)).a.zz, arg_2.a)).b, Struct_1(vec3<bool>(arg_0, true, u_input.a.x < 25534u), all(vec2<bool>(true, arg_0))), vec2<bool>(true && !arg_0, true && select(var_0.a.x, arg_2.d.x, var_0.b))), 1u, arg_2);
    return select(vec2<bool>(true, var_0.b), select(func_1(u_input.b, vec3<f32>(-1259f, _wgslsmith_f_op_f32(var_1.c.a + -1011f), var_1.c.a), Struct_4(Struct_3(vec4<bool>(var_1.e.d.x, arg_0, true, false), var_0), arg_2, var_1.b, !var_0.a.yx, _wgslsmith_f_op_f32(847f + 584f))).b.a.zx, vec2<bool>(!(-1i == u_input.b), false), !var_0.a.x), ~_wgslsmith_sub_i32(u_input.b, abs(0i)) > (u_input.b | _wgslsmith_clamp_i32(-u_input.b, ~(-5916i), u_input.b ^ 0i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_2 {
    global0 = array<vec3<f32>, 7>();
    var var_0 = Struct_5(~(~vec3<u32>(1u, 1u, 1u) | _wgslsmith_clamp_vec3_u32(vec3<u32>(20375u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 70806u) | vec3<u32>(4294967295u, 64170u, u_input.a.x), vec3<u32>(4294967295u, 1u, u_input.a.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, 0u) % vec3<u32>(32u)))), arg_3, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -320f), arg_3.b, Struct_1(vec3<bool>(false, true, false), !arg_3.b.a.x), func_3(true, firstLeadingBit(70564u), Struct_2(-1645f, Struct_1(arg_3.a.yzx, true), Struct_1(vec3<bool>(arg_3.b.b, false, arg_3.b.a.x), arg_3.a.x), vec2<bool>(true, arg_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), 4294967295u, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 1f), Struct_1(!(!arg_3.b.a), true), Struct_1(arg_3.a.zzw, false), func_3(arg_3.a.x, u_input.a.x, Struct_2(_wgslsmith_f_op_f32(step(-610f, arg_1)), arg_3.b, func_1(-26170i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], Struct_4(Struct_3(vec4<bool>(arg_3.a.x, arg_3.b.b, true, false), arg_3.b), Struct_2(arg_1, arg_3.b, arg_3.b, arg_3.b.a.xy), Struct_3(arg_3.a, arg_3.b), vec2<bool>(arg_3.a.x, true), 799f)).b, vec2<bool>(false, false)), 185f)));
    let var_1 = var_0.c;
    return Struct_2(-1044f, func_1(firstTrailingBit(~(-3225i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.a, var_0.c.a, -299f) - vec3<f32>(var_1.a, var_1.a, arg_1)), global0[_wgslsmith_index_u32(14468u, 7u)]))), Struct_4(func_1(_wgslsmith_mult_i32(arg_2.x, -31551i), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(64599u, 7u)] + vec3<f32>(811f, var_1.a, arg_1)), Struct_4(Struct_3(vec4<bool>(true, true, var_0.e.c.b, var_0.b.b.a.x), var_1.c), Struct_2(-658f, var_0.c.c, arg_3.b, var_1.c.a.zy), Struct_3(arg_3.a, var_0.b.b), var_1.c.a.yx, var_1.a)), var_0.e, arg_3, select(!vec2<bool>(true, var_1.d.x), vec2<bool>(arg_3.b.b, var_0.c.d.x), !vec2<bool>(arg_3.a.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-469f, var_0.e.a)))).b, func_1(u_input.b << ((_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) ^ ~1u) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(var_0.a.x, 7u)]) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1102f, arg_1, 239f), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 7u)]), !vec3<bool>(arg_3.b.b, false, arg_3.b.b)))), Struct_4(var_0.b, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1399f), var_1.c, var_0.b.b, vec2<bool>(var_1.d.x, var_1.b.b)), var_0.b, select(func_1(arg_0.x, global0[_wgslsmith_index_u32(43780u, 7u)], Struct_4(arg_3, Struct_2(var_0.e.a, var_1.b, Struct_1(vec3<bool>(true, true, var_0.c.c.b), true), vec2<bool>(true, true)), arg_3, vec2<bool>(var_1.c.b, true), 2486f)).a.wx, select(vec2<bool>(var_1.c.a.x, arg_3.a.x), vec2<bool>(false, true), arg_3.a.x), var_1.c.b || false), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0.c.a)))))).b, vec2<bool>(any(func_1(_wgslsmith_mult_i32(35230i, 0i), global0[_wgslsmith_index_u32(reverseBits(5761u), 7u)], Struct_4(Struct_3(var_0.b.a, Struct_1(vec3<bool>(var_0.e.c.a.x, var_0.b.b.a.x, arg_3.a.x), var_1.b.a.x)), Struct_2(-281f, arg_3.b, Struct_1(vec3<bool>(true, var_1.c.b, var_0.c.b.a.x), false), var_1.d), Struct_3(arg_3.a, Struct_1(var_1.c.a, var_0.c.d.x)), vec2<bool>(false, true), 1105f)).b.a.yz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(691f)) * _wgslsmith_f_op_f32(-arg_1)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1031f))));
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.c.a, 961f, -134f, _wgslsmith_f_op_f32(-arg_0.e.a)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e.a), arg_0.c.a, _wgslsmith_f_op_f32(arg_0.e.a - arg_0.c.a), arg_0.c.a)))));
    let var_1 = Struct_1(arg_0.e.b.a, func_1(~(2147483647i & u_input.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(var_0.yyz, global0[_wgslsmith_index_u32(4294967295u, 7u)])))), Struct_4(arg_0.b, func_2(vec2<i32>(u_input.b, -1i), arg_0.c.a, vec3<i32>(-1i, u_input.b, -1i), Struct_3(vec4<bool>(false, false, arg_0.e.d.x, arg_0.b.b.b), Struct_1(vec3<bool>(arg_0.e.d.x, arg_0.e.c.b, arg_0.e.b.b), false))), func_1(u_input.b, vec3<f32>(-928f, var_0.x, arg_0.e.a), Struct_4(Struct_3(arg_0.b.a, arg_0.c.b), Struct_2(1844f, Struct_1(vec3<bool>(true, false, arg_0.b.a.x), false), arg_0.b.b, arg_0.e.d), Struct_3(vec4<bool>(false, true, true, false), arg_0.b.b), vec2<bool>(arg_0.c.b.a.x, arg_0.b.a.x), var_0.x)), vec2<bool>(true, arg_0.c.b.b), func_2(vec2<i32>(-15432i, -2147483647i), var_0.x, vec3<i32>(u_input.b, -2147483647i, u_input.b), arg_0.b).a)).b.a.x & false);
    let var_2 = arg_0.e.a;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 1000f, arg_0.e.a) * var_0.xwz) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(73969u, 7u)]))) + vec3<f32>(368f, 428f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + 1102f), _wgslsmith_div_f32(-1328f, -334f))))), _wgslsmith_f_op_vec3_f32(max(var_0.yyz, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 939f, var_0.x))))))));
    var var_4 = all(vec3<bool>(false, true, !(!arg_0.e.c.a.x)));
    return Struct_3(!(!select(vec4<bool>(false, false, var_1.a.x, false), arg_0.b.a, select(vec4<bool>(var_1.a.x, true, arg_0.c.b.b, false), vec4<bool>(var_1.b, var_1.b, false, arg_0.c.b.b), vec4<bool>(arg_0.c.c.b, var_1.b, var_1.b, false)))), func_2(~vec2<i32>(-6096i, 0i) << (vec2<u32>(~u_input.a.x, arg_0.a.x | u_input.a.x) % vec2<u32>(32u)), 1077f, _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.b, -23806i), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -5444i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))) | -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-2147483647i, 0i, 1i)), arg_0.b).c);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_5 {
    let var_0 = all(!arg_1.b.a.zx) | (arg_2.x <= ~u_input.a.x);
    let var_1 = abs(reverseBits(select(select(countOneBits(vec3<i32>(u_input.b, u_input.b, -14523i)), select(vec3<i32>(u_input.b, 32493i, u_input.b), vec3<i32>(2147483647i, u_input.b, 0i), arg_1.b.a), var_0), vec3<i32>(0i, u_input.b, u_input.b), arg_1.a.zwx)));
    var var_2 = abs(vec4<u32>(abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(4294967295u, 4294967295u, arg_0.x)), arg_2.x)), firstLeadingBit(firstLeadingBit(arg_0.x)), 0u, ~arg_2.x));
    global0 = array<vec3<f32>, 7>();
    var var_3 = _wgslsmith_div_f32(func_2(max(-vec2<i32>(-54514i, -2147483647i), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_f_op_f32(-127f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~(-var_1), Struct_3(vec4<bool>(false, false, var_0, arg_1.b.b), arg_1.b)).a, -793f) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1699f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1335f + 120f)))));
    return Struct_5(arg_0.zwz, arg_1, func_2(var_1.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-4420f, 197f)) + _wgslsmith_f_op_f32(802f * 949f))), ~(-countOneBits(var_1)), Struct_3(vec4<bool>(var_0, true, var_0 & arg_1.b.a.x, !var_0), arg_1.b)), _wgslsmith_mod_u32(arg_2.x, arg_2.x), Struct_2(func_2(select(var_1.xy, var_1.zy, func_4(Struct_5(vec3<u32>(0u, 1u, arg_2.x), arg_1, Struct_2(950f, arg_1.b, arg_1.b, vec2<bool>(true, true)), arg_2.x, Struct_2(382f, arg_1.b, Struct_1(arg_1.a.wxz, arg_1.b.b), vec2<bool>(arg_1.a.x, arg_1.b.b)))).b.a.xx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(940f - -1962f)), -vec3<i32>(u_input.b, -54270i, var_1.x), arg_1).a, arg_1.b, Struct_1(arg_1.a.yzz, true), !arg_1.b.a.yy));
}

fn func_6(arg_0: Struct_5) -> Struct_4 {
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-func_2(vec2<i32>(u_input.b, 36406i), _wgslsmith_f_op_f32(848f - arg_0.c.a), ~vec3<i32>(u_input.b, 66381i, 20432i), arg_0.b).a), -442f, arg_0.c.a)));
    global0 = array<vec3<f32>, 7>();
    let var_1 = _wgslsmith_f_op_f32(round(func_2(select(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(16449i, 2147483647i), arg_0.e.d), ~vec2<i32>(2147483647i, -8170i), vec2<i32>(-102949i, u_input.b)), (vec2<i32>(u_input.b, 62429i) << (u_input.a % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, -30630i)), !arg_0.e.b.a.zx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec4<u32>(u_input.a.x, 1u, 0u, arg_0.a.x), Struct_3(vec4<bool>(arg_0.e.c.a.x, false, true, true), Struct_1(arg_0.c.c.a, false)), vec3<u32>(0u, u_input.a.x, arg_0.a.x)).c.a - _wgslsmith_div_f32(-1000f, var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(117f, -747f)) + _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), countOneBits(firstTrailingBit(vec3<i32>(0i, 1949i, -2147483647i)))), Struct_3(!(!vec4<bool>(false, true, arg_0.c.d.x, arg_0.e.b.a.x)), Struct_1(func_4(arg_0).b.a, true))).a));
    return Struct_4(Struct_3(vec4<bool>(func_1(u_input.b, vec3<f32>(514f, 284f, -582f), Struct_4(Struct_3(arg_0.b.a, Struct_1(vec3<bool>(true, arg_0.b.a.x, false), true)), Struct_2(226f, Struct_1(vec3<bool>(true, arg_0.c.b.b, arg_0.e.b.a.x), arg_0.b.b.b), Struct_1(arg_0.c.c.a, arg_0.e.b.b), vec2<bool>(arg_0.b.b.a.x, arg_0.b.b.a.x)), Struct_3(vec4<bool>(true, arg_0.e.b.b, arg_0.b.b.a.x, false), arg_0.c.c), arg_0.b.a.ww, arg_0.c.a)).a.x | arg_0.e.c.a.x, true, true, false), arg_0.b.b), func_5(vec4<u32>(func_5(~vec4<u32>(u_input.a.x, 655u, u_input.a.x, 0u), Struct_3(vec4<bool>(true, arg_0.e.d.x, true, true), Struct_1(vec3<bool>(arg_0.c.c.b, arg_0.e.d.x, arg_0.b.a.x), arg_0.b.b.b)), arg_0.a).a.x, 33558u, abs(0u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, arg_0.d), arg_0.d)), Struct_3(func_5(countOneBits(vec4<u32>(u_input.a.x, 50644u, 13984u, u_input.a.x)), func_5(vec4<u32>(1u, 18910u, arg_0.d, u_input.a.x), arg_0.b, vec3<u32>(9123u, arg_0.a.x, 52529u)).b, vec3<u32>(u_input.a.x, 1u, u_input.a.x) << (vec3<u32>(u_input.a.x, arg_0.d, 74242u) % vec3<u32>(32u))).b.a, arg_0.c.c), vec3<u32>(_wgslsmith_mult_u32(1u, 10227u), _wgslsmith_sub_u32(u_input.a.x, 0u), arg_0.a.x) ^ vec3<u32>(u_input.a.x, 1u, 16734u)).e, func_4(arg_0), vec2<bool>(select(all(arg_0.b.b.a.yx), arg_0.c.b.b & arg_0.b.a.x, true) && (all(vec4<bool>(arg_0.e.c.b, arg_0.b.b.b, arg_0.e.d.x, true)) | !arg_0.c.b.b), func_3(true, 11783u, Struct_2(_wgslsmith_f_op_f32(var_1 + var_0.x), Struct_1(arg_0.e.b.a, false), func_4(arg_0).b, vec2<bool>(true, true)), var_1).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(~(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) >> (vec4<u32>(1u, 4294967295u, 4294967295u, u_input.a.x) % vec4<u32>(32u))), func_4(Struct_5(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 1u, 57233u)), func_1(11943i, vec3<f32>(322f, -397f, 1287f), Struct_4(Struct_3(vec4<bool>(false, false, false, true), Struct_1(vec3<bool>(false, true, true), false)), Struct_2(-590f, Struct_1(vec3<bool>(true, true, true), true), Struct_1(vec3<bool>(true, true, true), true), vec2<bool>(false, true)), Struct_3(vec4<bool>(true, false, true, true), Struct_1(vec3<bool>(true, true, true), false)), vec2<bool>(true, false), 150f)), func_2(vec2<i32>(8214i, u_input.b), -1506f, vec3<i32>(1i, -23714i, 22297i), Struct_3(vec4<bool>(false, true, true, true), Struct_1(vec3<bool>(true, false, false), false))), u_input.a.x, Struct_2(207f, Struct_1(vec3<bool>(false, false, true), false), Struct_1(vec3<bool>(false, false, true), true), vec2<bool>(true, false)))), firstTrailingBit(select(_wgslsmith_div_vec3_u32(vec3<u32>(24130u, 4294967295u, 6515u), vec3<u32>(u_input.a.x, u_input.a.x, 139506u)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), true))));
    let var_1 = min(-(~_wgslsmith_add_i32(-1i, 0i)), u_input.b);
    let var_2 = firstLeadingBit(firstLeadingBit(~vec4<u32>(~u_input.a.x, firstLeadingBit(4294967295u), u_input.a.x >> (u_input.a.x % 32u), 13408u)));
    let var_3 = ~64344u;
    global0 = array<vec3<f32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(0u, countOneBits(~38109u)), var_3, firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b | u_input.b, u_input.b ^ u_input.b, i32(-1i) * -1i, abs(var_1)), vec4<i32>(1i, _wgslsmith_mod_i32(17670i, u_input.b), var_1, -var_1))));
}

