struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>) -> vec4<f32> {
    var var_0 = (~abs(select(vec3<u32>(u_input.b.x, 0u, u_input.a.x), vec3<u32>(0u, u_input.c, u_input.a.x), global0.b)) ^ _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.c, 4294967295u, 86493u)), abs(~vec3<u32>(u_input.c, 25239u, 1u)))) >> (countOneBits(~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(22280u, 16945u, u_input.b.x)), ~vec3<u32>(u_input.c, 18835u, u_input.c), firstLeadingBit(vec3<u32>(u_input.c, 1u, 26051u)))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-312f, arg_0.x, arg_0.x, arg_1.x), vec4<f32>(var_1, -2219f, 726f, global0.c), global0.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 526f, arg_0.x, var_1) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, 778f, global0.c, global0.a)))) - vec4<f32>(-1091f, 1000f, _wgslsmith_f_op_f32(step(1766f, -1118f)), _wgslsmith_div_f32(arg_1.x, -222f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-916f, var_1, arg_0.x, global0.c), vec4<f32>(var_1, 1234f, global0.c, var_1))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1157f, 1048f, 463f, var_1) - vec4<f32>(791f, 1492f, -853f, 357f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a, arg_0.x, 1286f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2467f, arg_1.x, arg_1.x, 406f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, 858f, 1136f) * vec4<f32>(-1303f, arg_0.x, var_1, global0.c))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    let var_0 = ~2147483647i;
    global0 = arg_1.c;
    global0 = arg_0;
    global0 = arg_1.c;
    var var_1 = select(select(select(select(select(vec3<bool>(global0.b, global0.d, global0.b), vec3<bool>(false, true, false), global0.d), vec3<bool>(global0.b, true, global0.b), true), vec3<bool>(true, arg_0.d, false), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, -12832i, 0i, var_0), vec4<i32>(var_0, 0i, var_0, 1i)) <= 37641i), select(vec3<bool>(false, false, select(arg_1.c.d, false, global0.d)), vec3<bool>(u_input.c > 0u, true, true), false), vec3<bool>(arg_1.a.x, _wgslsmith_f_op_f32(-global0.c) <= _wgslsmith_f_op_f32(-global0.a), 1u >= (1u >> (arg_1.b.x % 32u)))), select(vec3<bool>((var_0 <= var_0) && any(vec3<bool>(true, true, arg_0.d)), arg_1.c.d, any(vec3<bool>(global0.b, arg_1.c.d, false))), !(!(!vec3<bool>(arg_0.b, global0.b, false))), select(select(vec3<bool>(true, arg_1.a.x, global0.d), !vec3<bool>(arg_0.b, arg_0.b, true), 16053i <= var_0), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1.c.b, arg_1.a.x, false), vec3<bool>(false, false, false), true), arg_1.a.x), arg_0.b)), all(vec2<bool>(true, global0.d)));
    return arg_1.c.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    global0 = arg_2;
    global0 = arg_1.c;
    let var_0 = !vec4<bool>(func_4(arg_2, Struct_4(vec2<bool>(arg_1.a.x, global0.b), arg_0, arg_1.c, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.c), _wgslsmith_f_op_vec4_f32(func_3(arg_1.e.zzz, vec3<f32>(arg_1.e.x, -495f, arg_2.c))))), true, !arg_2.d, arg_1.c.d);
    var var_1 = Struct_4(select(arg_1.a, select(select(vec2<bool>(false, true), arg_1.a, arg_2.d), select(!arg_1.a, select(vec2<bool>(var_0.x, false), var_0.wx, vec2<bool>(arg_1.c.b, true)), var_0.x || true), true), all(!var_0.xxy)), vec3<u32>(u_input.b.x, 68836u, u_input.b.x), arg_2, ~37376u, _wgslsmith_f_op_vec4_f32(max(arg_1.e, arg_1.e)));
    let var_2 = Struct_2(arg_2, Struct_1(794f, var_1.a.x, _wgslsmith_f_op_f32(-1f), true), _wgslsmith_dot_vec2_i32(~(firstLeadingBit(vec2<i32>(0i, -2147483647i)) >> ((arg_1.b.zx & vec2<u32>(1u, arg_0.x)) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(-1i, -2147483647i), vec2<i32>(-2147483647i, -2351i), vec2<bool>(arg_1.a.x, false))), vec2<i32>(-1i) * -vec2<i32>(-24624i, 2147483647i))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-480f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1114f + arg_2.a), _wgslsmith_f_op_f32(trunc(arg_1.e.x)), !var_2.a.b)))), _wgslsmith_f_op_f32(abs(-843f)));
}

fn func_1() -> vec3<u32> {
    var var_0 = false;
    var var_1 = select(!vec2<bool>(true, -126f < _wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.c, u_input.c, 1558u), Struct_4(vec2<bool>(false, true), vec3<u32>(1u, u_input.b.x, u_input.a.x), Struct_1(-219f, global0.d, -1273f, global0.d), 12973u, vec4<f32>(-576f, -551f, -324f, global0.a)), Struct_1(-167f, global0.d, -1882f, true), vec2<bool>(global0.d, global0.d)))), vec2<bool>(!(!(!global0.b)), true), global0.d);
    let var_2 = u_input.b.x >= (u_input.c ^ ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.b.x), u_input.b), ~20302u, false));
    var_0 = !any(vec4<bool>(var_2, var_2, var_2, all(vec3<bool>(var_1.x, false, false))));
    let var_3 = true;
    return _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~(~12062u), u_input.c), u_input.a.x, 21302u), ~(max(vec3<u32>(u_input.a.x, 27393u, 4294967295u), select(vec3<u32>(u_input.b.x, 4294967295u, u_input.a.x), vec3<u32>(52485u, 4190u, 0u), vec3<bool>(true, var_2, global0.d))) << (vec3<u32>(u_input.b.x, u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.a.x)) % vec3<u32>(32u))));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = false;
    let var_1 = false;
    let var_2 = Struct_3(-countOneBits(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_div_i32(_wgslsmith_sub_i32(~(~(-27554i)), -3379i), firstLeadingBit(-1i)), _wgslsmith_clamp_i32(6391i | (18502i << (_wgslsmith_div_u32(4294967295u, arg_1.x) % 32u)), -1i, 2147483647i), select(select(select(vec4<bool>(false, true, var_1, global0.b), !vec4<bool>(false, false, false, var_1), vec4<bool>(false, false, global0.d, true)), !select(vec4<bool>(var_1, global0.b, global0.d, true), vec4<bool>(true, global0.b, false, false), vec4<bool>(true, var_1, var_1, true)), all(vec2<bool>(false, false))), vec4<bool>(any(vec3<bool>(false, var_1, true)), global0.d, true, true), any(vec3<bool>(any(vec4<bool>(true, var_1, true, var_1)), true, !global0.b))), 0i);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(global0.c - global0.a), global0.a, global0.c);
    let var_4 = (i32(-1i) * -(i32(-1i) * -5904i)) << (arg_0.x % 32u);
    return Struct_1(_wgslsmith_f_op_f32(func_2(vec3<u32>(4294967295u, 4294967295u, arg_1.x), Struct_4(var_2.d.zy, countOneBits(vec3<u32>(1u, 0u, 4294967295u)), Struct_1(-1223f, any(vec3<bool>(global0.b, global0.b, false)), _wgslsmith_f_op_f32(-global0.c), !var_2.d.x), reverseBits(36175u), vec4<f32>(-210f, _wgslsmith_f_op_f32(-265f + global0.a), _wgslsmith_f_op_f32(f32(-1f) * -1859f), _wgslsmith_div_f32(global0.a, -1624f))), Struct_1(234f, var_1, _wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.b.x, 41250u, 98930u), Struct_4(vec2<bool>(true, false), vec3<u32>(arg_0.x, 3458u, 30410u), Struct_1(var_3.x, false, -632f, var_2.d.x), u_input.a.x, vec4<f32>(var_3.x, 1000f, var_3.x, global0.a)), Struct_1(var_3.x, true, global0.a, true), vec2<bool>(var_1, var_2.d.x))), (false | global0.d) || var_1), select(select(vec2<bool>(false, var_2.d.x), var_2.d.wz, !var_2.d.wx), !(!vec2<bool>(var_2.d.x, var_1)), vec2<bool>(all(vec2<bool>(var_2.d.x, global0.d)), var_2.d.x & false)))), var_2.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.x * global0.a))), func_4(Struct_1(_wgslsmith_f_op_f32(step(-567f, -708f)), true, _wgslsmith_f_op_f32(select(var_3.x, var_3.x, global0.d)), all(vec2<bool>(global0.d, true))), Struct_4(vec2<bool>(false, var_2.d.x), countOneBits(arg_0), Struct_1(var_3.x, true, var_3.x, var_1), ~80869u, vec4<f32>(global0.a, -449f, global0.a, -429f))) != all(!select(vec2<bool>(global0.b, true), var_2.d.xw, global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.c, 58071u, _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x))), abs(~firstLeadingBit(vec4<u32>(63278u, u_input.a.x, u_input.b.x, 26158u)))));
    global0 = func_5(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, ~var_0.x, 17792u), (vec3<u32>(4294967295u, 4294967295u, 7001u) ^ vec3<u32>(var_0.x, u_input.c, var_0.x)) ^ vec3<u32>(46523u, 54094u, 4294967295u)), func_1()), firstTrailingBit(_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.b), vec2<u32>(1u, u_input.a.x)) >> ((_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, var_0.x), var_0.xy, var_0.zx) & vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u))));
    global0 = func_5(var_0, _wgslsmith_div_vec2_u32(var_0.yy, _wgslsmith_div_vec2_u32(var_0.xz, vec2<u32>(func_1().x, select(var_0.x, 39926u, false)))));
    let var_1 = countOneBits(firstTrailingBit(-1i));
    global0 = func_5(_wgslsmith_sub_vec3_u32(max(func_1(), select(vec3<u32>(var_0.x, 39510u, 0u), vec3<u32>(88499u, var_0.x, 1825u), global0.d)), ~select(vec3<u32>(4451u, var_0.x, 1u), var_0, vec3<bool>(false, false, true))) << (abs(var_0) % vec3<u32>(32u)), select(u_input.a, var_0.zx, !select(select(vec2<bool>(global0.b, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(global0.d, true), false)));
    global0 = Struct_1(_wgslsmith_div_f32(global0.a, -448f), !(!global0.d), global0.a, any(select(select(select(vec3<bool>(global0.b, true, false), vec3<bool>(global0.d, global0.d, true), global0.d), !vec3<bool>(global0.d, false, global0.d), vec3<bool>(global0.b, false, global0.b)), vec3<bool>(any(vec3<bool>(true, false, global0.d)), false, true), select(!vec3<bool>(false, false, global0.b), !vec3<bool>(global0.d, global0.d, global0.d), select(vec3<bool>(false, global0.d, false), vec3<bool>(true, false, true), global0.b)))));
    var var_2 = vec2<bool>(any(select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, true), !vec2<bool>(global0.b, true))), !(all(select(vec4<bool>(global0.d, false, true, global0.b), vec4<bool>(true, global0.b, global0.d, true), global0.d)) && global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, _wgslsmith_sub_vec2_i32(vec2<i32>(var_1, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(11208i, 1i)), vec2<i32>(var_1, -2147483647i) >> (vec2<u32>(47483u, 1u) % vec2<u32>(32u)))), vec2<i32>(-23974i, max(var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, var_1, -2147483647i), vec4<i32>(0i, -1i, var_1, var_1))))), ~_wgslsmith_add_i32(~(-6512i), select(~(-57100i), ~(-76245i), true)), vec2<u32>(u_input.a.x, u_input.a.x) | var_0.yy, _wgslsmith_clamp_u32(0u, ~u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1291u, 64840u, var_0.x), var_0), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, u_input.c, u_input.c), var_0)) << (firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) % 32u)));
}

