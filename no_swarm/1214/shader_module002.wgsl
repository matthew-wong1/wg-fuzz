struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> vec4<bool> {
    let var_0 = -282f;
    var var_1 = arg_0;
    var_1 = vec4<u32>(var_1.x, 0u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.x, ~max(arg_0.x, arg_0.x)), _wgslsmith_sub_u32(52763u, _wgslsmith_mult_u32(1u, 0u))), ~var_1.x);
    let var_2 = vec2<bool>(false, true);
    var var_3 = vec2<u32>(4294967295u, ~1u);
    return vec4<bool>(var_2.x, true, var_2.x, arg_1);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>) -> Struct_1 {
    return Struct_1(!arg_0.x, -1902i, _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(round(arg_0.x))));
    var_0 = _wgslsmith_f_op_f32(-1408f + _wgslsmith_f_op_f32(f32(-1f) * -713f));
    let var_1 = true;
    var var_2 = func_3(func_2(countOneBits(~min(vec4<u32>(25340u, 1u, 44915u, 1u), vec4<u32>(0u, 43745u, 32714u, 16480u))), var_1, u_input.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, -1000f, 223f), vec4<f32>(-1176f, arg_0.x, arg_0.x, arg_0.x), false))))))));
    let var_3 = func_3(!vec4<bool>(false, all(vec3<bool>(false, true, false)), true, true), vec4<f32>(415f, _wgslsmith_f_op_f32(step(var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) * -871f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1749f * _wgslsmith_f_op_f32(max(var_2.c, arg_0.x))))), 731f));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>, arg_3: bool) -> Struct_1 {
    let var_0 = -416f >= _wgslsmith_f_op_f32(-arg_1);
    let var_1 = ~(firstLeadingBit(vec4<u32>(1u, abs(38556u), 4294967295u, min(arg_2.x, arg_2.x))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, _wgslsmith_div_u32(arg_2.x, 10730u), _wgslsmith_sub_u32(arg_2.x, arg_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(60408u, arg_2.x, arg_2.x, 80683u), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), abs(countOneBits(vec4<u32>(1u, arg_2.x, 4294967295u, arg_2.x)))) % vec4<u32>(32u)));
    let var_2 = ~(~_wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 5539i)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, arg_0.b, 26079i), reverseBits(vec3<i32>(u_input.a, arg_0.b, -52507i)))));
    let var_3 = Struct_1(true, _wgslsmith_add_i32(firstTrailingBit(1i) >> (_wgslsmith_sub_u32(19256u, arg_2.x) % 32u), arg_0.b) | -_wgslsmith_div_i32(arg_0.b, ~u_input.a), -451f);
    let var_4 = !(!var_0);
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    return func_3(vec4<bool>(true, true, false, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-469f, arg_1.c, arg_1.c, 1120f))))), vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1595f - 467f), _wgslsmith_f_op_f32(abs(arg_1.c)))), _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(760f, 952f)))), arg_0)));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(false, true, arg_0.a, any(!select(select(vec4<bool>(arg_0.a, false, false, arg_0.a), vec4<bool>(true, arg_0.a, arg_0.a, true), vec4<bool>(false, false, arg_0.a, arg_0.a)), !vec4<bool>(arg_0.a, arg_0.a, true, true), !arg_0.a)));
    var_0 = select(func_2(~vec4<u32>(35895u, _wgslsmith_sub_u32(4294967295u, 26089u), ~42668u, 0u), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, -407f) - vec2<f32>(-1562f, arg_0.c)) - vec2<f32>(arg_0.c, 947f))).a, 21184i), select(select(vec4<bool>(func_5(var_0.x, arg_0).a, true, true, arg_0.a == false), !vec4<bool>(false, true, var_0.x, false), !func_2(vec4<u32>(11170u, 27672u, 0u, 1u), false, 21622i)), func_2(~vec4<u32>(1u, 1u, 1u, 1u), true, 1i), var_0.x), func_3(select(select(!vec4<bool>(true, var_0.x, false, false), func_2(vec4<u32>(0u, 21669u, 0u, 79741u), true, arg_0.b), !vec4<bool>(var_0.x, var_0.x, arg_0.a, arg_0.a)), func_2(vec4<u32>(0u, 0u, 23189u, 1u), false, 66866i | arg_0.b), vec4<bool>(false, var_0.x, arg_0.a, func_4(Struct_1(arg_0.a, 25346i, arg_0.c), 1052f, vec3<u32>(0u, 4294967295u, 11304u), var_0.x).a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c) - vec4<f32>(arg_0.c, -434f, 1366f, arg_0.c)))))).a);
    let var_1 = -830f;
    let var_2 = arg_0;
    let var_3 = func_5(var_2.a, func_3(select(vec4<bool>(!arg_0.a, func_2(vec4<u32>(2655u, 1u, 20117u, 4294967295u), false, 50i).x, all(vec2<bool>(true, var_0.x)), var_2.a || var_2.a), !(!vec4<bool>(var_0.x, true, arg_0.a, false)), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, _wgslsmith_f_op_f32(min(arg_0.c, -1000f)), _wgslsmith_f_op_f32(var_2.c + var_2.c), -503f))));
    return func_3(select(!vec4<bool>(true, true, var_2.a, !var_3.a), !select(!vec4<bool>(arg_0.a, arg_0.a, true, var_2.a), func_2(vec4<u32>(9018u, 18799u, 81435u, 9800u), arg_0.a, var_2.b), var_0.x | true), func_2(vec4<u32>(1u, 1u, 1u, 1u), true, var_3.b)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-507f, -145f, _wgslsmith_f_op_f32(arg_0.c * var_2.c), func_5(true, var_3).c) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, -253f, 219f) * vec4<f32>(-211f, var_3.c, var_3.c, var_2.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -1117f, -120f, 4016f) - vec4<f32>(var_2.c, arg_0.c, 1324f, -1639f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.c, -124f, 695f, -178f), vec4<f32>(var_2.c, var_1, -217f, var_1), arg_0.a))) + vec4<f32>(func_1(vec2<f32>(arg_0.c, arg_0.c)).c, _wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(floor(var_2.c)), _wgslsmith_f_op_f32(var_1 + -468f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(true, func_4(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-892f, 1253f))), 2040f, _wgslsmith_div_vec3_u32(~vec3<u32>(49044u, 16994u, 14722u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 33158u, 37234u), vec3<u32>(75314u, 11194u, 1u))), true)));
    let var_1 = !select(vec2<bool>(true, false), !vec2<bool>(!var_0.a, all(vec4<bool>(var_0.a, true, true, false))), !func_2(firstLeadingBit(vec4<u32>(1u, 1u, 31252u, 7328u)), func_3(vec4<bool>(true, false, var_0.a, true), vec4<f32>(1289f, var_0.c, var_0.c, var_0.c)).a, i32(-1i) * -37075i).yx);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, -323f), vec2<f32>(var_0.c, var_0.c))).c, var_0.c)))));
    var var_3 = var_0;
    var var_4 = vec4<f32>(func_4(func_6(var_0), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 633f)))).c, max(vec3<u32>(25294u, 0u, ~4294967295u), vec3<u32>(1u, 1u, 1u)), true).c, var_2, var_2, _wgslsmith_f_op_f32(-var_2));
    let var_5 = vec4<bool>(_wgslsmith_div_f32(-1681f, var_4.x) < _wgslsmith_f_op_f32(-var_4.x), func_3(select(!(!vec4<bool>(var_0.a, false, var_1.x, var_3.a)), select(vec4<bool>(var_3.a, false, var_1.x, true), vec4<bool>(false, var_0.a, var_1.x, true), true), vec4<bool>(true, !var_1.x, true, select(true, true, var_3.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 916f, 994f, var_0.c) * vec4<f32>(var_3.c, -1594f, 237f, 755f)), _wgslsmith_div_vec4_f32(vec4<f32>(1410f, var_3.c, -1055f, 484f), vec4<f32>(-932f, 619f, 595f, 620f)))))).a, !(4294967295u >= _wgslsmith_dot_vec2_u32(vec2<u32>(35507u, 12867u), firstTrailingBit(vec2<u32>(11373u, 94061u)))), func_1(var_4.zy).a);
    let var_6 = vec4<u32>(_wgslsmith_add_u32(~54360u, abs(0u)), _wgslsmith_add_u32(0u << (firstTrailingBit(0u) % 32u), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(19195u, 48579u, 17207u, 2128u)), ~vec4<u32>(1u, 1u, 1u, 1u))), 0u, select(~_wgslsmith_dot_vec2_u32(~vec2<u32>(3341u, 0u), vec2<u32>(1u, 0u)), _wgslsmith_mult_u32(~(~73131u), _wgslsmith_dot_vec3_u32(~vec3<u32>(17837u, 60355u, 4294967295u), vec3<u32>(4294967295u, 38194u, 4294967295u))), !(!(var_3.b < 0i))));
    var var_7 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}

