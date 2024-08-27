struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<f32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = 2147483647i;

var<private> global2: vec2<f32> = vec2<f32>(-911f, 2081f);

var<private> global3: i32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    global3 = -30446i;
    var var_0 = vec4<bool>(true, true, !(global0.a || global0.d.x), global0.d.x);
    global1 = min(global0.b.b, arg_0.a.x | arg_0.b);
    global0 = Struct_2((-1i & _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(24433i, u_input.c.x)), _wgslsmith_add_i32(-13427i, u_input.c.x))) != ~firstTrailingBit(u_input.a), Struct_1(arg_0.a, u_input.a, vec3<u32>(firstTrailingBit(36507u), ~(~0u), 0u), _wgslsmith_f_op_f32(exp2(global2.x))), _wgslsmith_f_op_f32(sign(-1000f)), !(!select(!global0.d, select(vec2<bool>(false, true), vec2<bool>(false, false), var_0.x), !var_0.xy)), Struct_1(_wgslsmith_mult_vec3_i32(global0.e.a, global0.e.a), u_input.a, firstTrailingBit(vec3<u32>(~2669u, _wgslsmith_mult_u32(global0.b.c.x, 43151u), max(arg_1.x, 49472u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-973f, _wgslsmith_f_op_f32(global0.b.d + arg_0.d))))));
    let var_1 = global0.d;
    return arg_0.a.x;
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global0 = Struct_2(false, Struct_1(_wgslsmith_add_vec3_i32(-(global0.e.a & vec3<i32>(1i, global0.e.a.x, -2147483647i)), vec3<i32>(u_input.b, firstTrailingBit(-2147483647i), global0.b.b)), _wgslsmith_add_i32(u_input.c.x, i32(-1i) * -34843i), _wgslsmith_mod_vec3_u32(~(global0.e.c << (global0.b.c % vec3<u32>(32u))), global0.b.c), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.d), _wgslsmith_f_op_f32(-global2.x)), global0.e.d)), -270f, vec2<bool>(!global0.d.x, global0.e.a.x < 31969i), Struct_1(global0.b.a, func_3(global0.b, abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 2731u, 1u), vec4<u32>(global0.e.c.x, 4294967295u, 64655u, 70552u)))), firstTrailingBit(global0.e.c | vec3<u32>(4294967295u, arg_0.x, global0.e.c.x)) >> (~(~global0.b.c) % vec3<u32>(32u)), global2.x));
    let var_0 = global0.a;
    var var_1 = global0.b;
    var var_2 = global0.e;
    var var_3 = select(vec4<bool>(true, global0.d.x, u_input.a != 1i, global0.d.x), select(select(vec4<bool>(any(vec3<bool>(global0.a, global0.d.x, true)), false, global0.a, true), vec4<bool>(global0.d.x, u_input.c.x >= 2147483647i, true, global0.d.x), select(!vec4<bool>(global0.a, true, global0.a, true), vec4<bool>(false, false, global0.a, global0.a), global0.d.x)), vec4<bool>(true, !(false | global0.d.x), false, all(select(vec4<bool>(true, global0.d.x, global0.a, false), vec4<bool>(true, global0.d.x, global0.d.x, global0.d.x), true))), select(select(vec4<bool>(false, global0.d.x, global0.d.x, global0.a), !vec4<bool>(true, true, global0.a, false), true), vec4<bool>(false, all(vec3<bool>(true, global0.a, true)), global0.d.x, false), all(!vec4<bool>(true, true, global0.a, true)))), !global0.a);
    return Struct_2(15706u >= _wgslsmith_mod_u32(~firstLeadingBit(var_2.c.x), 58041u), Struct_1(vec3<i32>(var_2.b, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, -47189i), var_2.a.zx)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, 1i, var_2.a.x, -18640i), vec4<i32>(-52182i, 56381i, u_input.b, var_1.b)), max(-1i, 1i))), u_input.a, var_2.c, global0.b.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-446f - var_1.d))), global0.d, global0.e);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4) -> Struct_2 {
    global1 = -20523i | u_input.c.x;
    global0 = Struct_2(false, func_2(abs(global0.b.c.yz | max(vec2<u32>(global0.b.c.x, arg_2.b.d.b.c.x), global0.e.c.zx))).b, _wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(659f * arg_1.b.d)), !(!select(!arg_1.d, vec2<bool>(arg_1.a, arg_1.a), true)), func_2(global0.e.c.zx).e);
    let var_0 = global0.b.a;
    var var_1 = select(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(-13116i), _wgslsmith_add_i32(arg_1.e.b, -20402i), global0.b.a.x, -2147483647i), -(~vec4<i32>(2147483647i, global0.e.b, 13493i, 1i))) == -(~(-4182i) << (1u % 32u)), !(arg_1.a || !arg_1.a), false);
    var var_2 = Struct_5((-func_3(arg_2.b.e, vec4<u32>(arg_2.b.c.c.x, arg_2.b.b.b.c.x, 0u, 1u)) == 0i) || false);
    return Struct_2(var_2.a, Struct_1(arg_2.b.d.b.a, firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 0i, 30696i, 33096i), vec4<i32>(var_0.x, -42333i, -19972i, arg_1.e.b), vec4<i32>(-2147483647i, var_0.x, 0i, u_input.b)), abs(vec4<i32>(var_0.x, 3368i, 89532i, var_0.x)))), func_2(arg_2.b.d.e.c.yx >> (countOneBits(arg_1.e.c.zy) % vec2<u32>(32u))).b.c, arg_2.c.x), _wgslsmith_f_op_f32(sign(-1367f)), arg_1.d, global0.b);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = arg_2.a;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.e.d) * 936f) + arg_2.e.d) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.e.d), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.x, -587f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1949f, -562f) + 707f)));
    let var_2 = _wgslsmith_clamp_i32(~abs(~(-global0.e.b)), u_input.c.x, ~countOneBits(abs(u_input.a)));
    let var_3 = arg_2.a;
    var var_4 = _wgslsmith_mod_vec3_i32(vec3<i32>(0i, _wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_mod_i32(u_input.b, max(arg_1.b.a.x, var_2)), func_2(abs(vec2<u32>(2025u, arg_2.d.b.c.x))).b.a.x), abs(-22778i)), arg_1.e.a);
    return select(select(arg_1.d, arg_1.d, select(vec2<bool>(arg_2.b.a, func_4(295f, arg_1, Struct_4(var_1, arg_2, vec3<f32>(-1323f, arg_2.b.e.d, var_0.x))).a), select(global0.d, global0.d, false), func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), arg_2.b.b.c.yx)).d)), select(select(!(!vec2<bool>(global0.a, arg_1.a)), !(!arg_1.d), arg_1.d), select(!select(global0.d, arg_2.d.d, arg_1.a), func_2(vec2<u32>(5514u, arg_2.b.b.c.x)).d, true), global0.d.x), global0.d);
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = global0.b.a.xy;
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(~abs(max(global0.b.c.x, global0.b.c.x)), ~(~35468u)), min(_wgslsmith_mult_u32(~global0.b.c.x, global0.e.c.x), global0.e.c.x) | (_wgslsmith_dot_vec2_u32(~global0.b.c.yy, global0.b.c.zy & global0.e.c.xy) >> (~4294967295u % 32u)));
    global3 = 2147483647i;
    let var_2 = Struct_2(true, global0.b, _wgslsmith_f_op_f32(trunc(global0.b.d)), func_5(_wgslsmith_f_op_f32(-global0.e.d), func_4(global2.x, func_2(global0.b.c.yx | global0.b.c.yy), Struct_4(_wgslsmith_f_op_f32(abs(global2.x)), Struct_3(vec4<f32>(-1553f, global0.e.d, -1594f, global0.b.d), Struct_2(global0.d.x, global0.b, global0.c, vec2<bool>(true, global0.a), global0.b), Struct_1(vec3<i32>(var_0.x, global0.b.a.x, var_0.x), arg_0, global0.e.c, global2.x), Struct_2(global0.a, Struct_1(vec3<i32>(arg_0, global0.b.b, arg_0), 0i, global0.b.c, global0.e.d), 1000f, vec2<bool>(global0.d.x, global0.a), Struct_1(global0.b.a, u_input.a, vec3<u32>(var_1, 12184u, 0u), -1842f)), global0.b), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-571f, global0.b.d, global0.b.d))))), Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.e.d, -210f, global0.e.d, -320f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.d, -841f, global2.x, -168f)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, global0.d.x, false), vec4<bool>(true, false, global0.d.x, false)))), Struct_2(false, func_4(global2.x, Struct_2(global0.d.x, global0.e, 221f, global0.d, global0.e), Struct_4(global0.e.d, Struct_3(vec4<f32>(global2.x, global0.c, global0.b.d, global0.b.d), Struct_2(true, Struct_1(global0.e.a, 30419i, vec3<u32>(4294967295u, 17323u, 4294967295u), global2.x), 1891f, vec2<bool>(true, global0.a), Struct_1(vec3<i32>(arg_0, -2147483647i, u_input.b), -2147483647i, global0.e.c, 386f)), Struct_1(global0.e.a, var_0.x, vec3<u32>(16428u, 0u, 100706u), global0.c), Struct_2(global0.d.x, global0.e, 224f, vec2<bool>(true, false), Struct_1(global0.b.a, 19841i, vec3<u32>(4294967295u, 1u, 0u), global2.x)), Struct_1(global0.e.a, var_0.x, vec3<u32>(global0.e.c.x, var_1, global0.e.c.x), -1784f)), vec3<f32>(-285f, -1011f, -1672f))).e, global2.x, global0.d, global0.e), func_2(vec2<u32>(80537u, 65462u)).e, func_2(global0.e.c.yz), func_2(~vec2<u32>(98963u, global0.e.c.x)).e)), Struct_1(-global0.e.a, u_input.b, ~(vec3<u32>(13388u, 4294967295u, var_1) & _wgslsmith_mult_vec3_u32(global0.e.c, vec3<u32>(global0.e.c.x, 4294967295u, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), global0.b.d)))));
    let var_3 = global0.b.c.x;
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f)), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(761f, 1000f, global0.e.d, 983f), vec4<f32>(global0.c, global2.x, global2.x, var_2.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 518f, var_2.c, global0.e.d) * vec4<f32>(global2.x, global2.x, global0.c, 530f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global0.b.d, -172f, var_2.b.d))))), Struct_2(!global0.d.x, var_2.b, -1592f, var_2.d, func_2(var_2.e.c.yz).e), Struct_1(select(var_2.e.a, firstLeadingBit(var_2.e.a), select(vec3<bool>(global0.a, true, global0.d.x), vec3<bool>(global0.d.x, false, true), vec3<bool>(true, true, false))), var_0.x, ~vec3<u32>(var_2.b.c.x, 1u, 45198u), func_4(-810f, Struct_2(false, Struct_1(global0.b.a, global0.e.b, vec3<u32>(var_1, 8803u, 4294967295u), -971f), -486f, global0.d, Struct_1(vec3<i32>(0i, -1i, u_input.a), 1i, global0.e.c, -305f)), Struct_4(368f, Struct_3(vec4<f32>(-238f, -880f, global2.x, -969f), var_2, global0.e, Struct_2(var_2.d.x, var_2.e, -1000f, vec2<bool>(true, var_2.d.x), Struct_1(vec3<i32>(-49258i, u_input.c.x, 2147483647i), var_0.x, var_2.e.c, var_2.e.d)), global0.e), vec3<f32>(global0.b.d, -221f, global2.x))).e.d), var_2, global0.e), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -480f), global2.x, _wgslsmith_f_op_f32(226f * _wgslsmith_f_op_f32(step(var_2.b.d, 710f)))));
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.x, -2206f)), global2.x) + 1728f);
    global3 = 2147483647i;
    return any(vec3<bool>(false, arg_0.b.b.a || !arg_0.b.b.d.x, !arg_0.b.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(-999f >= _wgslsmith_f_op_f32(global0.e.d * _wgslsmith_div_f32(_wgslsmith_f_op_f32(599f + global0.c), _wgslsmith_f_op_f32(select(1224f, global0.e.d, global0.a)))), all(vec4<bool>((17902u | global0.e.c.x) != ~global0.b.c.x, global0.a, !(!global0.a), false)), func_6(func_1(select(-global0.b.a.x, global0.e.b, true)), 1562f, ~(~vec4<u32>(0u, 4294967295u, global0.e.c.x, 40184u)) & ~(vec4<u32>(25865u, 0u, 1u, 12933u) | vec4<u32>(global0.b.c.x, global0.e.c.x, 0u, global0.b.c.x)), func_1(firstLeadingBit(u_input.c.x))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1465f), _wgslsmith_f_op_f32(global2.x - -1000f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, global2.x), vec2<f32>(779f, 2137f), true)))), vec2<f32>(global0.c, global0.e.d)))));
    var var_1 = abs(u_input.a);
    var var_2 = 20849u;
    global3 = u_input.b;
    let var_3 = 42685u;
    var var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, ~func_4(global2.x, Struct_2(false, global0.e, -588f, global0.d, Struct_1(global0.b.a, -2147483647i, global0.e.c, global2.x)), func_1(-2147483647i)).b.c ^ vec3<u32>(global0.b.c.x, global0.e.c.x, firstLeadingBit(1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1411f, global2.x, 434f, 1000f) * vec4<f32>(-656f, global2.x, 578f, 2000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(780f, global0.b.d, global2.x, 1000f) - vec4<f32>(global2.x, global0.e.d, 548f, -547f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global0.c, 675f, 1156f)))))), min(u_input.b, global0.b.b));
}

