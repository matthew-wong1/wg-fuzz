struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(17096u, 65559u, 4294967295u, 1u);

var<private> global1: Struct_1 = Struct_1(vec3<i32>(6053i, 1i, 31852i), vec2<i32>(52776i, i32(-2147483648)), false, 37330u, vec4<f32>(718f, -749f, 350f, -489f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    global0 = ~(~(~vec4<u32>(u_input.a, global0.x & global1.d, 61996u, ~u_input.a)));
    global0 = abs(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 9462u, global1.d, global1.d), countOneBits(vec4<u32>(u_input.a, global1.d, global1.d, u_input.a) ^ vec4<u32>(1u, u_input.a, global0.x, u_input.a)))));
    let var_0 = !vec4<bool>((_wgslsmith_dot_vec2_u32(vec2<u32>(68286u, 58693u), vec2<u32>(4294967295u, global0.x)) >> ((u_input.a << (global0.x % 32u)) % 32u)) <= u_input.a, true, global1.c, false);
    var var_1 = ~1u;
    let var_2 = vec4<i32>(-1i, -4817i, i32(-1i) * -9948i, 29813i) << (vec4<u32>(~(~(~1u)), u_input.a, _wgslsmith_add_u32(~_wgslsmith_mult_u32(0u, u_input.a), 4294967295u), 106864u) % vec4<u32>(32u));
    return vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i ^ var_2.x, -49470i, firstLeadingBit(~1i)), -firstLeadingBit(~vec3<i32>(var_2.x, var_2.x, 0i))), 1i, _wgslsmith_dot_vec2_i32(select(min(global1.a.zx >> (vec2<u32>(global1.d, u_input.a) % vec2<u32>(32u)), reverseBits(vec2<i32>(global1.a.x, -33087i))), reverseBits(-var_2.zz), var_0.wy), global1.a.zy), abs(-27206i));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(firstTrailingBit(global1.a.x), _wgslsmith_clamp_i32(global1.a.x, 35143i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.x, -2147483647i, global1.b.x, global1.b.x), vec4<i32>(global1.b.x, 19886i, global1.a.x, global1.a.x)), global1.b.x)), ~vec4<i32>(global1.b.x, global1.a.x, global1.b.x, 55695i), global1.c), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.x, -2147483647i, -4062i, 16998i), vec4<i32>(global1.b.x, global1.b.x, global1.a.x, global1.a.x)), func_3(Struct_2(global1.e.yy))), select(firstTrailingBit(min(vec4<i32>(global1.a.x, global1.b.x, -2192i, global1.b.x), vec4<i32>(-2147483647i, -26058i, -13598i, 21208i))), abs(vec4<i32>(1i, global1.b.x, global1.b.x, global1.b.x)), !(false | global1.c))));
    global1 = Struct_1(global1.a, vec2<i32>(-2521i, -_wgslsmith_add_i32(-var_0, _wgslsmith_div_i32(global1.a.x, var_0))), all(select(select(select(vec3<bool>(global1.c, false, global1.c), vec3<bool>(true, global1.c, true), vec3<bool>(global1.c, false, true)), !vec3<bool>(true, global1.c, false), true), vec3<bool>(select(true, true, global1.c), true, all(vec4<bool>(global1.c, false, true, global1.c))), select(select(vec3<bool>(false, true, global1.c), vec3<bool>(true, false, global1.c), vec3<bool>(global1.c, global1.c, global1.c)), select(vec3<bool>(true, global1.c, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)))), firstLeadingBit(global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, global1.e.x, _wgslsmith_f_op_f32(round(global1.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -274f)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(global1.e, global1.e))))));
    var var_1 = var_0;
    var var_2 = max(_wgslsmith_add_u32(~(~59334u), 98737u) | max(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(9200u, 1724u, global1.d, global1.d), vec4<u32>(1u, 36954u, global0.x, u_input.a))), global0.x);
    var var_3 = global1.b;
    return all(!(!select(select(vec2<bool>(global1.c, false), vec2<bool>(false, true), global1.c), select(vec2<bool>(global1.c, global1.c), vec2<bool>(global1.c, global1.c), vec2<bool>(false, true)), !vec2<bool>(global1.c, true))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: bool) -> Struct_2 {
    global1 = Struct_1(max(abs(~global1.a), -vec3<i32>(1i, -8551i, abs(global1.b.x))), -func_3(arg_0).yy, global1.c, global1.d, vec4<f32>(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1379f, _wgslsmith_f_op_f32(f32(-1f) * -555f))))), arg_2, _wgslsmith_f_op_f32(global1.e.x - -1482f)));
    var var_0 = Struct_2(global1.e.zw);
    let var_1 = arg_0;
    let var_2 = func_3(Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.a, arg_0.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(417f, arg_0.a.x) - vec2<f32>(arg_2, var_0.a.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-849f, -575f) - vec2<f32>(1063f, var_0.a.x))), false)))).zw;
    var var_3 = ~global1.d;
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = countOneBits(~vec4<u32>(~reverseBits(48498u), countOneBits(5606u), _wgslsmith_mult_u32(4294967295u, global0.x) >> (1u % 32u), ~(~global0.x)));
    let var_0 = ~global1.b.x;
    global0 = ~reverseBits(abs(vec4<u32>(countOneBits(63138u), _wgslsmith_div_u32(global0.x, u_input.a), 0u, global1.d)));
    var var_1 = !(!vec3<bool>(!func_2(), false, !(global1.c & true)));
    let var_2 = _wgslsmith_add_vec4_i32(select(_wgslsmith_clamp_vec4_i32(func_3(arg_1), ~vec4<i32>(1i, var_0, 1i, global1.b.x), func_3(func_4(arg_0, global0.x, global1.e.x, global1.c))), ((vec4<i32>(-2147483647i, var_0, -13229i, var_0) << (vec4<u32>(2811u, 0u, global0.x, 46021u) % vec4<u32>(32u))) ^ select(vec4<i32>(var_0, var_0, var_0, var_0), vec4<i32>(global1.b.x, var_0, var_0, -1i), global1.c)) & ~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -25989i, global1.a.x, -2147483647i), vec4<i32>(var_0, -56852i, -29057i, var_0)), !any(select(vec2<bool>(global1.c, false), var_1.zy, var_1.xz))), select(-(~_wgslsmith_add_vec4_i32(vec4<i32>(global1.b.x, -45961i, global1.b.x, 1i), vec4<i32>(var_0, var_0, var_0, var_0))), vec4<i32>(var_0, -global1.b.x, 5293i, 51857i) | max(~vec4<i32>(global1.b.x, -6883i, 7172i, -1i), abs(vec4<i32>(21716i, global1.a.x, 2147483647i, 41027i))), vec4<bool>(any(!vec3<bool>(true, global1.c, false)), !any(vec3<bool>(false, false, true)), all(vec2<bool>(true, global1.c)), all(select(vec4<bool>(var_1.x, true, true, global1.c), vec4<bool>(var_1.x, global1.c, global1.c, true), vec4<bool>(false, global1.c, global1.c, var_1.x))))));
    return Struct_1(~vec3<i32>(_wgslsmith_mult_i32(-1290i & global1.a.x, _wgslsmith_add_i32(1i, -18621i)), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 0i, -11734i, var_0), vec4<i32>(var_0, -1i, global1.a.x, global1.b.x))), var_0), vec2<i32>(var_0, -28660i), global1.c, ~global0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(global1.e, _wgslsmith_f_op_vec4_f32(-global1.e))))));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = false;
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, select(_wgslsmith_sub_u32(0u, global0.x) & global0.x, ~reverseBits(3886u), all(!vec2<bool>(global1.c, true)))), vec2<u32>(0u ^ _wgslsmith_clamp_u32(global0.x, ~0u, 60194u), u_input.a));
    global1 = func_5(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global1.e.wy)))), reverseBits(~1u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1192f, global1.e.x)), var_0 | func_2()), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1117f, global1.e.x))), _wgslsmith_f_op_f32(trunc(global1.e.x)))));
    global1 = Struct_1(vec3<i32>(-1i, global1.a.x, func_3(func_4(func_4(Struct_2(vec2<f32>(-313f, global1.e.x)), 47826u, global1.e.x, true), global0.x, 1f, true)).x), max(-vec2<i32>(_wgslsmith_sub_i32(global1.b.x, global1.b.x), -global1.b.x), vec2<i32>(func_3(Struct_2(global1.e.yw)).x, 18916i)), !(!(!func_5(Struct_2(vec2<f32>(global1.e.x, global1.e.x)), Struct_2(vec2<f32>(global1.e.x, -2343f))).c)), countOneBits(~46132u), _wgslsmith_div_vec4_f32(func_5(func_4(func_4(Struct_2(global1.e.yy), var_1.x, arg_0, true), ~global1.d, _wgslsmith_f_op_f32(-arg_0), true), Struct_2(vec2<f32>(-1269f, arg_0))).e, vec4<f32>(_wgslsmith_f_op_f32(-248f * _wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(297f))), _wgslsmith_f_op_f32(global1.e.x + -436f))));
    var var_2 = select(vec2<bool>(var_0, select(!global1.c, func_2(), select(all(vec2<bool>(false, global1.c)), var_0, true))), !select(vec2<bool>(all(vec2<bool>(false, var_0)), var_0), select(vec2<bool>(false, true), !vec2<bool>(var_0, true), var_0), firstTrailingBit(global0.x) != 0u), !vec2<bool>(global1.c, var_0));
    return all(select(vec3<bool>(false, true, true), vec3<bool>(_wgslsmith_f_op_f32(arg_0 - arg_0) != 2389f, var_0, var_2.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(all(select(vec2<bool>(true, false), select(vec2<bool>(global1.c, true), vec2<bool>(true, true), vec2<bool>(true, global1.c)), true)), !func_1(141f), any(vec4<bool>(func_1(-1020f), global1.c, true, select(true, false, global1.c))), false), !select(!(!vec4<bool>(false, true, global1.c, false)), vec4<bool>(true, false, u_input.a >= global0.x, false), !select(vec4<bool>(true, global1.c, global1.c, false), vec4<bool>(global1.c, global1.c, global1.c, true), global1.c)), true);
    var var_1 = Struct_1(vec3<i32>(-global1.b.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(1i, global1.b.x, -1i, global1.a.x)), -vec4<i32>(global1.b.x, global1.a.x, -1i, global1.a.x)), 1i, global1.b.x), global1.a.x), global1.b, var_0.x, abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 47992u, u_input.a) | global0.wyx, global0.ywx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global1.e + vec4<f32>(global1.e.x, 480f, -1788f, -1955f)))) * _wgslsmith_div_vec4_f32(global1.e, global1.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(378f, var_1.e.x)))))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(47940u, global1.d), ~global0.xy), global0.wy), countOneBits(~reverseBits(global0.xwz)), _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_vec4_f32(min(global1.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, var_1.e.x, var_1.e.x, -137f)) + _wgslsmith_f_op_vec4_f32(-global1.e)))));
}

