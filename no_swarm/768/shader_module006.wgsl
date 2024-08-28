struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(i32(-2147483648));

var<private> global1: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(2383f, -472f, 1000f), vec3<f32>(358f, 800f, -820f), vec3<f32>(-2325f, -715f, -1024f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(~(~u_input.a.x), ~1u)), u_input.a.x);
    let var_1 = _wgslsmith_mod_u32(abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~(~0u))), max(max(u_input.a.x ^ 31016u, 4294967295u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(66008u, var_0, 4552u), vec3<u32>(1u, var_0, u_input.a.x) ^ vec3<u32>(var_0, u_input.a.x, 29406u)) % 32u), 4294967295u));
    var var_2 = -575f;
    var var_3 = countOneBits(vec2<u32>(0u, u_input.a.x));
    var_2 = -164f;
    return false;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_2 {
    let var_0 = vec4<bool>(false, any(!select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec2<bool>(false, true)))), all(select(vec2<bool>(all(vec3<bool>(true, true, true)), func_3()), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))))), all(vec4<bool>(false, true, all(vec2<bool>(true, true)), true)));
    global0 = Struct_2(i32(-1i) * -(~(7501i >> (u_input.a.x % 32u))));
    var var_1 = Struct_1(!(!(!vec4<bool>(false, true, var_0.x, var_0.x))), vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(~u_input.a), u_input.a), select(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x, any(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, var_0.x), var_0.zwy)))), _wgslsmith_f_op_f32(818f * _wgslsmith_f_op_f32(floor(-396f))), u_input.a.x);
    let var_2 = all(vec4<bool>(any(select(var_1.a, vec4<bool>(false, var_1.a.x, var_1.a.x, var_0.x), var_0)), select(u_input.b.x > -2147483647i, !var_0.x, var_1.c > -1386f) || true, true, !var_1.a.x));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(var_1.c, _wgslsmith_f_op_f32(exp2(var_1.c)))), var_1.c);
    return Struct_2(~(-_wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, arg_0.x), 1i)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    let var_0 = u_input.b.x;
    global0 = func_2(vec2<i32>(func_2(-(vec2<i32>(arg_3, -19763i) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))), i32(-1i) * -35216i).a, 1i), arg_3);
    global0 = func_2(u_input.b.zx << (u_input.a % vec2<u32>(32u)), arg_3);
    let var_1 = select(!select(select(vec2<bool>(arg_0.x, arg_0.x), !arg_0, true), !arg_0, vec2<bool>(arg_0.x, all(arg_0))), !arg_0, !arg_0);
    let var_2 = false;
    return Struct_3(any(vec2<bool>(!any(vec4<bool>(arg_0.x, var_1.x, var_1.x, true)), true)), -3128i);
}

fn func_5(arg_0: Struct_3) -> f32 {
    var var_0 = ~(~(~19623u));
    var var_1 = 304f;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-396f, 764f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1735f, 1215f), vec2<f32>(587f, -580f), vec2<bool>(arg_0.a, true))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-358f)), -680f), select(vec2<bool>(true, true), vec2<bool>(arg_0.a, arg_0.a), select(vec2<bool>(true, true), vec2<bool>(arg_0.a, false), arg_0.a))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x));
    var var_3 = ~_wgslsmith_mult_i32(4511i, ~global0.a);
    return var_2.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    let var_0 = 27961i;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_5(func_4(vec2<bool>(true, true), select(vec3<i32>(9587i, global0.a, -46114i), u_input.b | vec3<i32>(global0.a, -2147483647i, var_0), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), func_2(vec2<i32>(-40278i, global0.a), 0i), 794i)))));
    global0 = func_2(-(~(~_wgslsmith_sub_vec2_i32(vec2<i32>(-17517i, u_input.b.x), vec2<i32>(-34342i, 36473i)))), 2147483647i);
    global1 = array<vec3<f32>, 3>();
    let var_2 = -reverseBits(reverseBits(_wgslsmith_div_i32(u_input.b.x, 0i)));
    return Struct_2(-(var_0 >> (~(~37776u) % 32u)));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: i32) -> Struct_3 {
    global1 = array<vec3<f32>, 3>();
    var var_0 = Struct_2(_wgslsmith_add_i32(firstLeadingBit(reverseBits(-28129i >> (u_input.a.x % 32u))), -10203i));
    var var_1 = Struct_1(select(vec4<bool>(!arg_1.x, arg_1.x, true, (arg_1.x || false) || true), !select(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), false), !vec4<bool>(true, arg_1.x, true, false)), !arg_1.x), select(_wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.a, u_input.a), u_input.a ^ (vec2<u32>(4294967295u, u_input.a.x) << (vec2<u32>(48810u, 56556u) % vec2<u32>(32u)))), u_input.a, arg_1), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -543f) + -2004f))))), reverseBits(4294967295u));
    var var_2 = !all(select(arg_1, !select(var_1.a.xy, var_1.a.yz, vec2<bool>(true, true)), var_1.c <= var_1.c));
    let var_3 = arg_0;
    return func_4(var_1.a.zw, vec3<i32>(13483i, arg_3 << (18037u % 32u), _wgslsmith_mod_i32(~select(var_3.a, -37269i, var_1.a.x), -2147483647i)), Struct_2(var_3.a), 160i);
}

fn func_7(arg_0: u32, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_2) -> f32 {
    global0 = Struct_2(arg_3.a);
    let var_0 = ~u_input.a << (vec2<u32>(_wgslsmith_div_u32(countOneBits(44699u), u_input.a.x), 1u) % vec2<u32>(32u));
    global0 = arg_3;
    return -1144f;
}

fn func_8(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_2(global0.a);
    global1 = array<vec3<f32>, 3>();
    let var_1 = abs(~abs(_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, 1u), vec3<u32>(u_input.a.x, 38273u, 4294967295u), vec3<u32>(u_input.a.x, 1957u, 4294967295u)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_5(func_6(Struct_2(var_0.a), !vec2<bool>(arg_1.x, arg_3.x), abs(-65542i), abs(var_0.a)))))), 1258f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -709f) * arg_0.x) + arg_0.x));
    global0 = func_1(abs(var_1), u_input.a.x << (~(~(~var_1.x)) % 32u));
    return func_2(firstTrailingBit(vec2<i32>(abs(-1i), countOneBits(2147483647i >> (var_1.x % 32u)))), 11365i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 3>();
    global0 = func_8(vec2<f32>(_wgslsmith_f_op_f32(func_7(u_input.a.x, func_6(func_1(vec3<u32>(1u, u_input.a.x, u_input.a.x), 7783u), vec2<bool>(false, true), _wgslsmith_div_i32(global0.a, global0.a), 9656i), vec2<bool>(true, func_3()), Struct_2(global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_7(u_input.a.x, Struct_3(true, u_input.b.x), vec2<bool>(false, true), Struct_2(global0.a)))))), select(vec3<bool>((4294967295u > u_input.a.x) | (global0.a >= 1i), all(vec4<bool>(true, true, false, true)) & func_4(vec2<bool>(false, true), u_input.b, Struct_2(u_input.b.x), global0.a).a, ~1u > _wgslsmith_add_u32(u_input.a.x, 0u)), vec3<bool>(func_3(), true, func_4(select(vec2<bool>(true, true), vec2<bool>(false, true), true), u_input.b, Struct_2(-1i), 2147483647i).a), false), true, !select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_0 = Struct_1(select(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), !(func_4(vec2<bool>(true, true), u_input.b, Struct_2(-43418i), u_input.b.x).a && false)), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(946f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-2380f, 612f))))), _wgslsmith_dot_vec3_u32(vec3<u32>(~(~1u), ~_wgslsmith_mult_u32(0u, u_input.a.x), u_input.a.x), select(~vec3<u32>(1u, 1u, 63108u), vec3<u32>(1u, _wgslsmith_mod_u32(4294967295u, 96669u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(u_input.a.x, 23974u, u_input.a.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)))));
    global1 = array<vec3<f32>, 3>();
    let var_1 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a >> (abs(1u) % 32u), var_0.c);
}

