struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    var var_0 = firstTrailingBit(1u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1137f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-586f - -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -409f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(831f * -1233f)))))));
    var var_3 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)))), true);
    var_0 = 1u;
    return var_3.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(exp2(arg_0.x))))));
    let var_0 = _wgslsmith_div_vec2_i32(max(max(select(u_input.a.xz, ~vec2<i32>(2147483647i, -10051i), !vec2<bool>(arg_1.x, arg_1.x)), arg_2), vec2<i32>(u_input.a.x, countOneBits(2147483647i))), vec2<i32>(2147483647i, -(i32(-1i) * -23883i)) & ~(~vec2<i32>(arg_2.x, u_input.a.x)));
    var var_1 = !func_3();
    var var_2 = vec2<bool>(arg_1.x, arg_1.x);
    var var_3 = Struct_4(Struct_2(19830i));
    return arg_1.zz;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool) -> Struct_4 {
    global0 = -1055f;
    global0 = 1151f;
    var var_0 = ~(~(~vec3<u32>(44833u, arg_0.d.x, 1u) & _wgslsmith_add_vec3_u32(~vec3<u32>(1579u, arg_0.d.x, 1u), abs(vec3<u32>(78737u, arg_0.d.x, 43319u)))));
    return Struct_4(Struct_2(1i));
}

fn func_1() -> Struct_4 {
    var var_0 = func_4(Struct_1(select(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(652f, -836f) * vec2<f32>(625f, -1844f)), vec3<bool>(true, true, true), u_input.a.ww), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1502f, 1097f)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec2<i32>(-46651i, -54765i)), func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 1570f), vec2<f32>(717f, -283f))), vec3<bool>(true, true, true), abs(u_input.a.xz))), true, 30680i, ~(~abs(vec2<u32>(1u, 47010u)))), (vec4<i32>(i32(-1i) * -19082i, i32(-1i) * -2147483647i, u_input.a.x, _wgslsmith_mult_i32(87054i, -1i)) ^ firstLeadingBit(-vec4<i32>(0i, 0i, u_input.a.x, u_input.a.x))) & u_input.a, abs(u_input.a.x) != _wgslsmith_dot_vec3_i32(u_input.a.wzx, abs(firstTrailingBit(vec3<i32>(u_input.a.x, -70525i, u_input.a.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -213f, 796f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(645f, -148f, -448f) + vec3<f32>(-317f, -332f, -224f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(907f, -338f, -317f))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2260f, -324f, 1722f)))) * vec3<f32>(_wgslsmith_f_op_f32(sign(-598f)), _wgslsmith_f_op_f32(trunc(-928f)), 954f)), vec3<bool>(true, true, true))));
    var var_2 = func_4(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), select(func_2(vec2<f32>(784f, 882f), vec3<bool>(true, false, true), u_input.a.yx), vec2<bool>(true, true), vec2<bool>(false, true))), func_3(), countOneBits(-15616i), ~vec2<u32>(22298u, 0u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-_wgslsmith_mod_i32(17007i, -34255i), _wgslsmith_sub_i32(var_0.a.a, var_0.a.a), ~(-2147483647i), firstTrailingBit(select(-1i, -1i, false))), -(~u_input.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - -355f))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -380f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f - 1575f))));
    var var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~4294967295u, 23940u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 1u), reverseBits(~vec2<u32>(0u, 18628u))), firstTrailingBit(~(~vec2<u32>(0u, 0u)))));
    global0 = var_1.x;
    return Struct_4(Struct_2(select(var_2.a.a, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, var_2.a.a, 2147483647i), vec3<i32>(var_0.a.a, var_0.a.a, -2147483647i)), u_input.a.xzz | u_input.a.ywy), any(vec4<bool>(false, true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(45051i);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-353f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1054f)))))) + -1064f);
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1399f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1348f + 486f))) + _wgslsmith_f_op_f32(ceil(1507f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(174f - -276f)))));
    var var_3 = vec2<bool>(true, u_input.a.x == var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(892f + -1806f), _wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_div_f32(var_2.x, 276f), -665f) * vec4<f32>(_wgslsmith_f_op_f32(round(967f)), _wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 958f, var_2.x, -165f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-176f, var_2.x, var_2.x, -1000f) + vec4<f32>(var_2.x, var_2.x, -1587f, var_2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, -1143f))), false))), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(-var_2.x), -2147483647i);
}

