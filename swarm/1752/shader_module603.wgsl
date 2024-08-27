struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = i32(-1i) * -abs(63213i);
    global0 = vec3<bool>(false, false, func_3(arg_1).c != (func_2(arg_2, _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a, 4294967295u, 54931u, 59104u), vec4<u32>(57221u, u_input.a.x, 45514u, 17315u))).b > -47583i));
    var var_1 = !select(!vec3<bool>(!arg_2.c, true, true), !vec3<bool>(global1.c, arg_2.c, func_2(arg_2, vec4<u32>(0u, arg_1.a, 1u, 1u)).c), select(vec3<bool>(global1.c, global1.a <= 7868u, true), select(vec3<bool>(arg_1.c, arg_1.c, arg_1.c), !vec3<bool>(global0.x, arg_1.c, arg_1.c), global1.c == false), true));
    var var_2 = abs(select(-abs(-arg_0.ww), vec2<i32>(-1i) * -(arg_0.ww & vec2<i32>(arg_2.b, 7785i)), arg_2.c));
    global0 = vec3<bool>(all(vec3<bool>(func_3(Struct_1(arg_1.a, u_input.c, global0.x)).c, true, global0.x)), global1.c, all(!(!select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(arg_1.c, false, global1.c, global1.c), vec4<bool>(var_1.x, arg_2.c, arg_2.c, arg_1.c)))));
    return func_2(arg_2, vec4<u32>(~(~23466u) >> (max(arg_2.a, 37728u) % 32u), 1u ^ arg_2.a, firstLeadingBit(abs(u_input.a.x)), global1.a));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = u_input.a.yy;
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -588f);
    var var_3 = -263f;
    var_0 = select(~vec2<u32>(4294967295u & min(var_0.x, 0u), func_2(Struct_1(arg_1.a, arg_1.b, false), ~vec4<u32>(arg_1.a, u_input.a.x, 4294967295u, 67278u)).a), u_input.a.xx, u_input.a.x == _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.x, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(3436u, var_1.a, var_1.a))), countOneBits(0u)));
    return -893f;
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<f32>) -> Struct_1 {
    global0 = !(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(global0.x, global0.x, false)))));
    let var_0 = ~_wgslsmith_clamp_vec4_u32(~arg_0, arg_0, arg_0);
    global1 = Struct_1(_wgslsmith_dot_vec4_u32(~var_0, vec4<u32>(~(~global1.a), 10224u, ~24037u, 9904u)), 9418i, global1.c);
    global0 = !vec3<bool>(global0.x, global1.c, true);
    global0 = !select(select(!(!vec3<bool>(global0.x, global0.x, global1.c)), select(vec3<bool>(global0.x, global1.c, true), vec3<bool>(true, global1.c, global1.c), global1.b < u_input.d), select(select(vec3<bool>(true, global0.x, global1.c), vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, true, global1.c)), select(vec3<bool>(global1.c, false, true), vec3<bool>(global1.c, global0.x, false), false), !vec3<bool>(false, global0.x, global0.x))), select(select(vec3<bool>(false, global0.x, true), vec3<bool>(true, true, global1.c), !vec3<bool>(global0.x, global0.x, true)), vec3<bool>(all(vec2<bool>(global0.x, false)), false, func_3(Struct_1(71536u, -2259i, global1.c)).c), global1.c), true);
    return func_4(vec4<i32>(-1i, 1i, global1.b, global1.b), Struct_1(~func_3(func_3(Struct_1(4294967295u, global1.b, global1.c))).a, 17696i, true), func_2(Struct_1(var_0.x, global1.b, global1.c), reverseBits(var_0)));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = func_6(select(abs(~vec4<u32>(global1.a, global1.a, global1.a, 4294967295u)), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, global1.a, 1u, global1.a), min(vec4<u32>(4294967295u, 4294967295u, 31941u, global1.a), vec4<u32>(global1.a, global1.a, 4294967295u, 0u))), vec4<bool>(!global1.c, global1.c, global0.x, true)) << (~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(28955u, u_input.a.x, 0u, global1.a), vec4<u32>(global1.a, u_input.a.x, 4294967295u, u_input.a.x)), u_input.a.x | global1.a, ~global1.a, ~global1.a) % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(max(-212f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(262f, arg_0)), _wgslsmith_f_op_f32(-1854f + -900f))))), _wgslsmith_f_op_f32(func_5(global1.b | 0i, func_4(vec4<i32>(0i, 7191i, -32207i, -6124i), func_2(Struct_1(u_input.a.x, 2147483647i, global0.x), vec4<u32>(u_input.a.x, 23401u, global1.a, 54302u)), func_3(Struct_1(4294967295u, global1.b, false))))), 1103f, 1867f));
    global0 = vec3<bool>((-1i << (var_0.a % 32u)) >= (var_0.b | global1.b), func_3(func_4(~(~vec4<i32>(-27407i, -41434i, global1.b, global1.b)), Struct_1(global1.a | global1.a, var_0.b, all(vec3<bool>(true, true, true))), func_3(func_6(vec4<u32>(1129u, 0u, global1.a, 5126u), vec4<f32>(1264f, -152f, arg_0, 549f))))).c, true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f), arg_0));
    let var_2 = select(vec3<bool>(any(vec4<bool>(u_input.b.x <= -2147483647i, true, global1.c, var_0.c & false)), any(!select(vec4<bool>(true, global0.x, false, global1.c), vec4<bool>(false, global1.c, false, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, false))), global1.c), select(vec3<bool>(!any(vec3<bool>(var_0.c, true, false)), !func_6(vec4<u32>(var_0.a, global1.a, 0u, global1.a), vec4<f32>(arg_0, var_1, arg_0, 862f)).c, true), select(vec3<bool>(true, false, var_0.c), select(vec3<bool>(true, true, true), vec3<bool>(global0.x, false, false), global1.c), vec3<bool>(func_6(vec4<u32>(39072u, 0u, 1u, 0u), vec4<f32>(arg_0, -1000f, 575f, -742f)).c, global1.c, !global1.c)), global1.c), false);
    var_0 = func_4(u_input.b, Struct_1(max(firstLeadingBit(u_input.a.x), max(var_0.a, 0u)) | _wgslsmith_dot_vec3_u32(u_input.a ^ u_input.a, u_input.a), var_0.b, !var_0.c), func_6(abs(vec4<u32>(firstLeadingBit(var_0.a), 2673u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1648u, 4294967295u, var_0.a, 0u), vec4<u32>(1u, 18986u, 56004u, 38228u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, var_1, arg_0, -201f), vec4<f32>(var_1, var_1, var_1, var_1), global0.x)), vec4<f32>(arg_0, arg_0, arg_0, 348f)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~global1.a, _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(global1.b, u_input.b.x, 52702i, -2147483647i) & u_input.b, u_input.b), ~vec4<i32>(-1i, -1i, 0i, u_input.b.x) ^ (~u_input.b << (~vec4<u32>(2998u, global1.a, 0u, u_input.a.x) % vec4<u32>(32u)))), !func_1(-1264f) || func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(647f)))));
    global0 = select(select(select(vec3<bool>(global1.c, u_input.a.x > 0u, global1.b < global1.b), select(!vec3<bool>(var_0.c, false, global0.x), !vec3<bool>(var_0.c, false, true), select(vec3<bool>(false, global0.x, var_0.c), vec3<bool>(var_0.c, true, true), false)), any(vec3<bool>(var_0.c, global0.x, false))), !(!select(vec3<bool>(global1.c, global1.c, false), vec3<bool>(false, true, true), true)), func_4(abs(u_input.b), var_0, Struct_1(_wgslsmith_div_u32(u_input.a.x, 0u), func_2(Struct_1(22207u, -2147483647i, false), vec4<u32>(u_input.a.x, u_input.a.x, var_0.a, u_input.a.x)).b, global1.c | global0.x)).c), !select(vec3<bool>(true, false && global0.x, false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(var_0.c, true, false), vec3<bool>(global1.c, global0.x, var_0.c), var_0.c), vec3<bool>(true, true, var_0.c)), all(!vec4<bool>(global0.x, false, false, false))), global1.c);
    global0 = !(!vec3<bool>(global0.x, select(true, true, 0u <= var_0.a), true));
    let var_1 = _wgslsmith_sub_vec3_i32(((vec3<i32>(-11647i, -43954i, 1i) >> (u_input.a % vec3<u32>(32u))) << (u_input.a % vec3<u32>(32u))) | vec3<i32>(-7446i, _wgslsmith_mod_i32(global1.b, -5732i), 38728i), -abs(u_input.b.wwx)) >> (u_input.a % vec3<u32>(32u));
    global0 = vec3<bool>(select(global1.c, global1.c, false), any(!(!vec2<bool>(true, global1.c))) || (func_6(~vec4<u32>(0u, global1.a, 1u, u_input.a.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(2134f, -258f, 531f, -125f), vec4<f32>(1096f, 1413f, 930f, -1000f)))).b < max(var_1.x, var_1.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -889f, -1712f, 195f)), vec4<f32>(-417f, 238f, 1519f, -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -599f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -2152f), _wgslsmith_f_op_f32(sign(1000f)))))), u_input.b.zw, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(515f, 656f)))), -303f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(392f))))));
}

