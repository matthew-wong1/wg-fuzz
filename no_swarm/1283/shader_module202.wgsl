struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-627f, 1593f, -1444f, 127f), vec3<i32>(1i, 1i, 2458i), vec2<u32>(39211u, 4294967295u), vec4<f32>(700f, 288f, 1404f, -660f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec2<u32> {
    var var_0 = -vec3<i32>(15536i, select(~firstLeadingBit(37442i), -1i, arg_0.a || all(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a))), arg_0.c.b.x);
    var var_1 = -vec4<i32>(u_input.a, ~1i, -54508i, -2147483647i);
    var_0 = vec3<i32>(select(var_1.x, abs(7534i), true), ~(u_input.e | 29377i), _wgslsmith_sub_i32(global0.b.x, var_0.x));
    var var_2 = _wgslsmith_div_f32(arg_0.c.d.x, _wgslsmith_f_op_f32(-global0.a.x));
    var var_3 = reverseBits(-1i);
    return _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.x, global0.c.x), arg_1.yx);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(round(-1118f));
    let var_1 = global0.b.x << (_wgslsmith_add_u32(_wgslsmith_mod_u32(~4294967295u, arg_0.c.x), _wgslsmith_dot_vec4_u32(arg_1, _wgslsmith_clamp_vec4_u32(arg_1 & arg_1, arg_1, vec4<u32>(arg_1.x, arg_0.c.x, u_input.c, 75500u)))) % 32u);
    var var_2 = global0.d.x;
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.x)) - 888f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1765f))), arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-213f)), _wgslsmith_f_op_f32(-arg_0.d.x), false)) * global0.a.x)), ((_wgslsmith_sub_vec3_i32(arg_0.b, vec3<i32>(-2147483647i, global0.b.x, var_1)) >> (arg_1.xwy % vec3<u32>(32u))) & _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 6507i), global0.b)) & _wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(arg_0.b, vec3<i32>(0i, 2147483647i, -1i)), abs(-global0.b)), func_3(Struct_2(true, vec3<u32>(1u, 32279u, arg_0.c.x), Struct_1(arg_0.a, _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 62361i, u_input.e), arg_0.b), vec2<u32>(108314u, 13791u), global0.d)), arg_1.yxx), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(floor(932f)), _wgslsmith_div_f32(-2281f, _wgslsmith_f_op_f32(step(global0.a.x, arg_0.a.x))), _wgslsmith_f_op_f32(-global0.d.x)), vec4<f32>(arg_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2049f - arg_0.a.x), _wgslsmith_f_op_f32(abs(global0.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.d.x, 1401f, false)))), _wgslsmith_div_f32(global0.d.x, global0.a.x))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.x, global0.d.x)) + -418f)), global0.d.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.d.x, arg_0.d.x, -787f, var_3.d.x), var_3.a, true)) + _wgslsmith_f_op_vec4_f32(arg_0.a - global0.a)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<u32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(global0.a, global0.b, global0.c, vec4<f32>(global0.d.x, global0.d.x, 1407f, arg_1)), vec4<u32>(global0.c.x, arg_2.x, 65885u, arg_2.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(245f, arg_1, arg_1, 616f) - vec4<f32>(global0.a.x, 1733f, 1000f, -459f)))))), firstTrailingBit(select(global0.b, global0.b, any(arg_0.yz) | arg_0.x)), reverseBits(~(~(~vec2<u32>(global0.c.x, 44414u)))), _wgslsmith_f_op_vec4_f32(-global0.d));
    global0 = Struct_1(vec4<f32>(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -873f)), _wgslsmith_f_op_f32(-global0.a.x), global0.a.x), global0.b, max(~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(global0.c, vec2<u32>(global0.c.x, arg_2.x)), vec2<u32>(1u, u_input.d.x)), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(u_input.c, 0u, arg_2.x)), ~1u)), global0.a);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(arg_1 * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a.x, 421f)) - 2113f), arg_1) - vec4<f32>(_wgslsmith_f_op_f32(step(arg_1, global0.d.x)), _wgslsmith_f_op_f32(-104f + -1649f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-465f, 317f, arg_0.x)))), _wgslsmith_f_op_f32(sign(217f)))), ~(~(global0.b << ((u_input.d ^ vec3<u32>(arg_2.x, 1u, 0u)) % vec3<u32>(32u)))), vec2<u32>(abs(global0.c.x), 6802u | ~(~u_input.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -345f)), arg_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -354f) * 575f))));
    let var_0 = abs(~_wgslsmith_dot_vec3_u32(u_input.b, ~u_input.b));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(global0.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1289f, arg_1, 353f, arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d) + vec4<f32>(global0.a.x, arg_1, -1700f, arg_1)))), true || select(true, arg_0.x, true & arg_0.x))), ~abs(global0.b), min(vec2<u32>(~0u, u_input.d.x) | global0.c, arg_2), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d), _wgslsmith_f_op_vec4_f32(floor(global0.a))), global0.a)))));
    return Struct_1(global0.d, global0.b, arg_2, global0.d);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = global0.c | (abs(vec2<u32>(func_3(Struct_2(true, u_input.d, arg_2), vec3<u32>(4294967295u, 51605u, 0u)).x, func_1(vec3<bool>(arg_0.x, true, true), 2160f, u_input.d.yz).c.x)) >> (vec2<u32>(arg_2.c.x, global0.c.x) % vec2<u32>(32u)));
    let var_1 = Struct_2(false, ~(~vec3<u32>(0u, 0u, 1u)), arg_2);
    let var_2 = var_1;
    global0 = func_1(vec3<bool>(false, !var_1.a, all(arg_0.wxx)), _wgslsmith_f_op_f32(floor(func_1(vec3<bool>(var_1.a & var_2.a, var_2.a, var_2.a), 1407f, ~u_input.b.xx).a.x)), reverseBits(firstTrailingBit(~vec2<u32>(1u, var_1.b.x))));
    return vec4<bool>(all(vec4<bool>(true, var_2.a, false, var_2.a)), !var_2.a, all(select(!select(arg_0.yx, arg_0.wz, arg_0.xx), arg_0.zy, select(arg_0.yx, !arg_0.zx, !arg_0.x))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!func_4(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), true), u_input.e, func_1(vec3<bool>(true, false, true), -1005f, u_input.b.xz ^ global0.c)));
    global0 = func_1(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), vec3<bool>(true, true, true), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(-503f * global0.d.x), abs(vec2<u32>(~15652u, u_input.b.x)) & vec2<u32>(u_input.b.x, ~(u_input.d.x << (0u % 32u))));
    global0 = func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(min(global0.d.x, 1000f)), vec2<u32>(_wgslsmith_dot_vec2_u32((u_input.b.yy >> (u_input.d.xz % vec2<u32>(32u))) | reverseBits(global0.c), ~vec2<u32>(89764u, u_input.c) << (countOneBits(u_input.d.zy) % vec2<u32>(32u))), 78439u));
    let var_1 = 23269u;
    let var_2 = _wgslsmith_mult_u32(~var_1, ~(~4294967295u));
    var var_3 = _wgslsmith_mod_u32(min(func_3(Struct_2(true, ~u_input.d, Struct_1(vec4<f32>(global0.d.x, -474f, global0.d.x, -632f), vec3<i32>(u_input.a, global0.b.x, 0i), u_input.b.xx, vec4<f32>(170f, -1901f, -991f, 1232f))), u_input.b).x, firstLeadingBit(0u)), global0.c.x);
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) + vec4<f32>(547f, 1134f, global0.a.x, 1224f)), _wgslsmith_f_op_vec4_f32(abs(func_1(vec3<bool>(true, false, true), 1095f, vec2<u32>(var_2, u_input.b.x)).d))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global0.d * global0.d))))), global0.b, select(select(u_input.b.yz, ~vec2<u32>(global0.c.x, var_2), any(vec2<bool>(true, true))), u_input.b.zz, true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(_wgslsmith_f_op_f32(1676f * 603f), -1962f, _wgslsmith_f_op_f32(trunc(1875f)), _wgslsmith_f_op_f32(select(-1000f, global0.a.x, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1043f, _wgslsmith_f_op_f32(-global0.a.x), global0.d.x, _wgslsmith_f_op_f32(exp2(global0.d.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(func_1(vec3<bool>(true, true, false), 832f, vec2<u32>(global0.c.x, var_2)).a.x))))), select(~vec3<u32>(min(1u, var_4.c.x), 1u, _wgslsmith_clamp_u32(global0.c.x, 1310u, 4294967295u)), _wgslsmith_sub_vec3_u32(~(~u_input.b), _wgslsmith_mult_vec3_u32(abs(u_input.d), ~u_input.b)), false), -vec2<i32>(~(u_input.e & 44753i), global0.b.x));
}

