struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(false, Struct_1(vec2<f32>(1403f, -1000f))), vec3<f32>(-385f, 959f, 807f), vec3<i32>(i32(-2147483648), -1i, -20960i), 2147483647i);

var<private> global1: vec3<i32> = vec3<i32>(1i, -41574i, i32(-2147483648));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_4(Struct_3(arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -468f, 682f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b))), ~vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(2147483647i, -1i), select(arg_1.c.x, -1i, arg_1.a.a)), arg_1.d), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(arg_0)))));
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.b)), global0.c, global1.x);
    let var_1 = var_0.a;
    let var_2 = Struct_4(var_0.a, _wgslsmith_f_op_vec2_f32(sign(arg_0)));
    let var_3 = Struct_3(Struct_2(!(select(-18815i, var_1.d, true) != 1i), Struct_1(_wgslsmith_f_op_vec2_f32(var_2.a.a.b.a + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 1005f))))), var_2.a.b, var_0.a.c, var_0.a.c.x);
    return var_1.b.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(min(global0.b.x, global0.b.x)) == -1562f, global0.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)), ~abs(~vec3<i32>(global0.c.x, global0.d, global0.c.x)), -global0.c.x), global0.a.b.a);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.a.b.xz))));
    var var_2 = global0.b;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec2<f32>(273f, 1997f), Struct_3(var_0.a.a, vec3<f32>(-762f, 786f, var_0.b.x), vec3<i32>(2147483647i, -1454i, global0.d), 55307i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b.x, 766f)) + _wgslsmith_f_op_f32(var_0.a.a.b.a.x * var_1.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-545f - _wgslsmith_f_op_f32(-1127f - global0.a.b.a.x)))), global0.b.x);
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b.x, var_3.x), _wgslsmith_f_op_vec2_f32(sign(var_3.xw)))), var_2.yy))));
    return var_1;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = u_input.a.x;
    var var_1 = firstLeadingBit(63058u);
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(196f)), _wgslsmith_f_op_f32(-118f * -1595f), true)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_2.a.x)), _wgslsmith_div_f32(760f, arg_0.a.b.x)))), arg_2.a.x));
    let var_3 = Struct_4(arg_0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a) * vec2<f32>(-901f, arg_0.b.x)), _wgslsmith_f_op_vec2_f32(select(arg_0.a.b.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, arg_0.b.x)), select(vec2<bool>(true, false), vec2<bool>(true, true), true))), global0.a.a)), vec2<f32>(_wgslsmith_div_f32(283f, -2130f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_2.a.x))))), !vec2<bool>(all(vec4<bool>(global0.a.a, global0.a.a, arg_0.a.a.a, arg_0.a.a.a)), global1.x > 65114i))));
    let var_4 = _wgslsmith_mult_vec2_u32(u_input.a, ~vec2<u32>(~1u, 1u));
    return arg_0.a.d;
}

fn func_5(arg_0: vec3<u32>, arg_1: bool) -> Struct_2 {
    let var_0 = arg_0.x;
    let var_1 = 1u;
    var var_2 = false;
    var var_3 = !(!(!((0u < arg_0.x) || true)));
    global1 = countOneBits(~vec3<i32>(_wgslsmith_add_i32(11915i, -1i), ~global0.d, select(2505i, global1.x, global0.a.a))) ^ (global0.c << (arg_0 % vec3<u32>(32u)));
    return Struct_2(!(global0.d < -4839i), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(588f * global0.b.x) * global0.a.b.a.x), _wgslsmith_div_f32(-752f, _wgslsmith_f_op_f32(floor(374f))))));
}

fn func_1(arg_0: f32) -> bool {
    global0 = Struct_3(func_5(firstLeadingBit(select(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(48711u, u_input.a.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.a.x, 24560u), select(vec3<bool>(true, global0.a.a, false), vec3<bool>(global0.a.a, global0.a.a, false), global0.a.a))), func_4(Struct_4(Struct_3(global0.a, global0.b, global0.c, -34073i), global0.b.xz), func_2(), global0.a.b) == global0.d), vec3<f32>(903f, arg_0, -1092f), -_wgslsmith_sub_vec3_i32(~vec3<i32>(global1.x, global0.d, 28452i), global0.c), reverseBits(1i));
    global1 = vec3<i32>(i32(-1i) * -25217i, 1i, global0.d);
    global0 = Struct_3(global0.a, vec3<f32>(-485f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(arg_0 * -1294f)) + 895f), arg_0), vec3<i32>(global0.c.x, global1.x, global0.d), -max(-global0.d, max(global1.x << (u_input.a.x % 32u), abs(-2147483647i))));
    global1 = countOneBits(global0.c);
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec3_f32(-global0.b), -_wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, global1.x, global0.c.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(49021u, 20820u, u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(global0.c, global0.c << (vec3<u32>(u_input.a.x, 11119u, u_input.a.x) % vec3<u32>(32u)))), select(~firstTrailingBit(global1.x), -global1.x, global0.a.a));
    return false & all(vec3<bool>(arg_0 <= -1534f, false, all(select(vec4<bool>(global0.a.a, global0.a.a, global0.a.a, false), vec4<bool>(false, global0.a.a, global0.a.a, true), vec4<bool>(true, global0.a.a, global0.a.a, true)))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = vec2<u32>(reverseBits(_wgslsmith_div_u32(u_input.a.x, ~(68284u & arg_2))), arg_2);
    var var_1 = _wgslsmith_clamp_u32(u_input.a.x, ~abs(u_input.a.x), 27200u) != (~arg_2 ^ select(max(~27276u, 57358u), max(0u, u_input.a.x), arg_1.a & !arg_0.a.a));
    let var_2 = arg_0;
    var var_3 = global0.a.b.a;
    global0 = Struct_3(arg_1, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(func_5(vec3<u32>(u_input.a.x, 3026u, 1u), all(vec3<bool>(false, var_2.a.a, false))).b.a.x, _wgslsmith_f_op_f32(func_3(vec2<f32>(arg_1.b.a.x, global0.b.x), Struct_3(Struct_2(false, global0.a.b), vec3<f32>(global0.b.x, 1276f, 627f), vec3<i32>(35002i, -2017i, arg_0.d), -27027i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b.a.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2.b)) + vec3<f32>(1050f, -907f, 970f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b.x, 301f, -171f)))))))), select(_wgslsmith_div_vec3_i32(arg_0.c, _wgslsmith_mod_vec3_i32(arg_0.c, var_2.c)), _wgslsmith_clamp_vec3_i32(firstTrailingBit(~vec3<i32>(arg_0.d, var_2.d, global1.x)), ~vec3<i32>(var_2.c.x, arg_0.c.x, global1.x), countOneBits(~vec3<i32>(global1.x, -44862i, global1.x))), !vec3<bool>(true, !arg_0.a.a, any(vec4<bool>(true, true, false, var_2.a.a)))), arg_0.c.x);
    return 50786i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(_wgslsmith_add_i32(countOneBits(1i), global1.x) >> (1u % 32u), func_6(Struct_3(global0.a, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-587f, global0.a.b.a.x, -302f))), firstLeadingBit(reverseBits(global0.c)), 19916i), Struct_2(func_1(_wgslsmith_f_op_f32(370f * global0.b.x)), global0.a.b), u_input.a.x), global1.x);
    var var_0 = _wgslsmith_clamp_vec3_i32(~(-(~reverseBits(global0.c))), select(vec3<i32>(-1i, -global1.x, ~2147483647i) << (select(vec3<u32>(u_input.a.x, 5235u, 14981u), reverseBits(vec3<u32>(u_input.a.x, 106229u, u_input.a.x)), select(true, global0.a.a, global0.a.a)) % vec3<u32>(32u)), select(select(global0.c, vec3<i32>(global0.d, -2668i, global0.d) ^ vec3<i32>(global1.x, -2147483647i, 13698i), !vec3<bool>(false, global0.a.a, global0.a.a)), reverseBits(vec3<i32>(global0.d, 13607i, 33237i) ^ vec3<i32>(-2147483647i, -45075i, global0.c.x)), false), vec3<bool>(global0.a.a, !func_5(vec3<u32>(1u, 0u, u_input.a.x), global0.a.a).a, true)), global0.c);
    let var_1 = !(!(!(!(!global0.a.a))));
    let var_2 = func_1(1511f);
    global1 = vec3<i32>(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(global0.c.x, global0.d, var_0.x, -50382i), vec4<i32>(-2147483647i, 2147483647i, -39446i, 31010i), vec4<bool>(true, global0.a.a, global0.a.a, true)) & firstLeadingBit(~vec4<i32>(-25113i, global1.x, global1.x, global1.x)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(28517i, -2147483647i, 0i, 1i) ^ vec4<i32>(global0.c.x, 52081i, var_0.x, 0i), vec4<i32>(23635i, 22227i, global0.c.x, global0.d) ^ vec4<i32>(2147483647i, global0.c.x, global0.c.x, var_0.x), !vec4<bool>(true, var_2, false, false)), min(vec4<i32>(global0.d, global0.d, global1.x, global0.c.x), vec4<i32>(1i, global1.x, global0.c.x, 0i)) | min(vec4<i32>(global1.x, global0.d, 27155i, var_0.x), vec4<i32>(global1.x, -15440i, -45056i, var_0.x)))), var_0.x, _wgslsmith_mult_i32(global0.c.x, 400i));
    var var_3 = abs(reverseBits(firstTrailingBit(~vec4<u32>(321u, u_input.a.x, u_input.a.x, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_3.x, 74636u, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_3.x, u_input.a.x), u_input.a, false), vec2<u32>(var_3.x, 1u)))));
}

