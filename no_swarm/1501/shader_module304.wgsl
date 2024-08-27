struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<bool>, 25>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> vec3<i32> {
    let var_0 = Struct_1(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(23664i, -52246i)) ^ 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -13558i, -15827i), vec3<i32>(1i, 1i, -53485i)), 25669i), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f + -1125f)))), 894f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(768f + 954f) - _wgslsmith_f_op_f32(abs(-399f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -486f, true)))), 797f), abs(_wgslsmith_clamp_vec3_i32(select(-vec3<i32>(-27692i, -1945i, 0i), abs(vec3<i32>(2147483647i, 1i, 2147483647i)), true), _wgslsmith_sub_vec3_i32(-vec3<i32>(1i, -20642i, 24020i), vec3<i32>(1i, 1i, 1i)), select(reverseBits(vec3<i32>(0i, -2920i, 2147483647i)), vec3<i32>(-31157i, 36677i, -61982i), vec3<bool>(false, true, false)))));
    let var_1 = vec3<i32>(var_0.a.x, min(~(~(~var_0.c.x)), abs(var_0.a.x)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~var_0.c.x, -var_0.c.x >> (1u % 32u)), -16089i));
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -846f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(760f)), _wgslsmith_f_op_f32(ceil(1f))))));
    var var_1 = arg_0;
    global1 = array<vec2<bool>, 25>();
    var var_2 = 1i;
    var var_3 = any(vec4<bool>(true, !any(select(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], vec2<bool>(true, true), false)), all(vec2<bool>(true, true)) || any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), true | !all(vec4<bool>(true, false, true, true))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b.x, var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -923f)), _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(1707f + -694f))), _wgslsmith_f_op_vec4_f32(-arg_1.b))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-887f, -534f, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 + arg_0.b.x)))), _wgslsmith_f_op_f32(-494f - _wgslsmith_f_op_f32(1054f * -1496f)), -693f, 1180f));
}

fn func_2() -> Struct_1 {
    var var_0 = global0.x;
    let var_1 = 1745f;
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 25u)];
    let var_3 = u_input.b.zz ^ max(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(9315u, u_input.a.x), u_input.b.zx, vec2<u32>(u_input.a.x, 26077u)) >> (vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u))), vec2<u32>(4294967295u, 63451u));
    var var_4 = Struct_1(~vec3<i32>(~1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-7940i, 280i), 24874i), -2147483647i), _wgslsmith_f_op_vec4_f32(func_4(Struct_1(-func_3(var_2.x, vec4<u32>(1u, 22261u, var_3.x, 29701u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, -168f) + vec4<f32>(814f, var_1, -1579f, 1252f))), _wgslsmith_mult_vec3_i32(vec3<i32>(-11396i, -3643i, -2147483647i), vec3<i32>(1930i, -1i, 0i))), Struct_1(vec3<i32>(-42492i, max(15853i, -10781i), 9871i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, -292f, var_1) + vec4<f32>(var_1, -1000f, 273f, var_1)))), vec3<i32>(~0i, ~(-46029i), min(-21328i, -71058i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 2116f, -1000f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, var_1, 960f), vec3<f32>(563f, var_1, 758f))))))), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(25845i, 0i, 2147483647i)) & (select(vec3<i32>(-8189i, -18084i, 0i), vec3<i32>(-23882i, -1i, 1i), vec3<bool>(false, false, var_2.x)) & vec3<i32>(1i, 1i, 1i)), vec3<i32>(8776i, ~2147483647i, _wgslsmith_sub_i32(11216i, 13375i) | select(15610i, 0i, var_2.x)), _wgslsmith_add_vec3_i32(firstTrailingBit(~vec3<i32>(-48539i, 2147483647i, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, -1i, 14510i), vec3<i32>(-15372i, 2147483647i, 0i)))));
    return Struct_1(var_4.c, var_4.b, ~(~var_4.a << (~u_input.a % vec3<u32>(32u))) << (~vec3<u32>(~u_input.b.x, ~global0.x, 4294967295u) % vec3<u32>(32u)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = false;
    global1 = array<vec2<bool>, 25>();
    global0 = reverseBits(~u_input.b.xw);
    let var_1 = ~_wgslsmith_mod_i32(-32696i, _wgslsmith_div_i32(abs(-arg_1.a.x), ~max(-3324i, arg_1.c.x)));
    var var_2 = func_2();
    return 1u;
}

fn func_1() -> f32 {
    global0 = countOneBits(_wgslsmith_sub_vec2_u32(u_input.b.zx, vec2<u32>(func_5(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), func_2()), u_input.b.x)));
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(countOneBits(vec3<i32>(-12502i, -6778i, -16490i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(907f, 580f, 1503f, 534f)), vec3<i32>(-45214i, -8292i, -1i)), Struct_1(abs(vec3<i32>(2147483647i, 494i, -1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2563f, 301f, 2281f, 102f)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-261f, 339f, 208f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(151f, 197f, -263f) + vec3<f32>(-1000f, -1499f, -640f))))).zx)));
    var var_1 = vec4<f32>(var_0.x, 551f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(exp2(func_2().b.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1630f, _wgslsmith_f_op_f32(var_0.x * var_0.x)), var_0.x))));
    let var_2 = (true | (-1666f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-var_0.x)))) & true;
    var var_3 = !select(!vec2<bool>(false, var_2), select(vec2<bool>(true, any(vec3<bool>(true, false, false))), vec2<bool>(var_2 || var_2, !var_2), any(vec4<bool>(var_2, false, false, true)) || true), select(select(!global1[_wgslsmith_index_u32(107261u, 25u)], vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, select(false, var_2, false)), select(vec2<bool>(true, false), select(vec2<bool>(var_2, false), global1[_wgslsmith_index_u32(36475u, 25u)], true), all(global1[_wgslsmith_index_u32(4294967295u, 25u)]))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(func_2().c, _wgslsmith_f_op_vec4_f32(vec4<f32>(1136f, -275f, -207f, var_1.x) + vec4<f32>(var_1.x, var_1.x, -1423f, var_1.x)), vec3<i32>(-5542i, 26006i, -1i)), func_2(), _wgslsmith_div_vec3_f32(var_1.zxy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))).x + -588f));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~select(func_3(any(vec4<bool>(true, false, false, false)), ~vec4<u32>(1u, 4294967295u, global0.x, 4294967295u)), ~(~arg_1.a), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -655f))), arg_0.b.x, _wgslsmith_f_op_f32(-arg_1.b.x), 793f), arg_1.a);
    let var_1 = vec2<u32>(countOneBits(u_input.b.x), 4294967295u);
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.b)));
    let var_3 = !vec3<bool>(select(true, !all(global1[_wgslsmith_index_u32(var_1.x, 25u)]), all(global1[_wgslsmith_index_u32(~var_1.x, 25u)])), !(u_input.b.x < ~0u), all(!global1[_wgslsmith_index_u32(global0.x, 25u)]) && true);
    let var_4 = _wgslsmith_div_i32(firstLeadingBit(~(-(~arg_1.a.x))), _wgslsmith_sub_i32(select(var_0.c.x, 1i, all(vec4<bool>(var_3.x, false, false, false))), arg_0.c.x));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(u_input.b.zw, reverseBits(vec2<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(24627u, 4294967295u)))), any(vec4<bool>(true, true, true, true)) != !any(vec2<bool>(false, true))) >> (vec2<u32>(u_input.b.x, global0.x) % vec2<u32>(32u));
    let var_0 = u_input.b;
    var var_1 = func_6(Struct_1(max(_wgslsmith_mult_vec3_i32(-vec3<i32>(20042i, 0i, 0i), vec3<i32>(34152i, 0i, 19886i)), -abs(vec3<i32>(2147483647i, 23995i, -1i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(676f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1235f - -1699f)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1687f - 490f), _wgslsmith_f_op_f32(floor(1288f))))), vec3<i32>(-1i, select(firstLeadingBit(0i), -50733i, true), ~countOneBits(0i))), Struct_1(~(-_wgslsmith_add_vec3_i32(vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(16528i, -1i, -2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1095f, 236f, 398f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-441f, 1234f, -1159f, -1000f), vec4<f32>(822f, -198f, -952f, 293f))), true)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec3<i32>(-29158i, 37880i, -11594i), vec4<f32>(706f, 744f, 1174f, 1061f), vec3<i32>(-7543i, 1i, -1i)), Struct_1(vec3<i32>(-19635i, -17130i, 35408i), vec4<f32>(-2214f, 994f, 871f, -1420f), vec3<i32>(-30097i, -2147483647i, 1i)), vec3<f32>(-164f, -955f, -276f))))), vec3<i32>(firstTrailingBit(1i) & 1i, 1i, abs(~10072i))));
    var_1 = func_2();
    let var_2 = Struct_1(vec3<i32>(var_1.a.x, i32(-1i) * -var_1.a.x, ~(-var_1.a.x)), _wgslsmith_f_op_vec4_f32(-var_1.b), var_1.c);
    let var_3 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(0i, func_3(false, u_input.b).x) & 2147483647i, var_2.a.x, var_1.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(func_6(var_2, var_2).b)), var_2.b)) * vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(701f - -221f), var_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1059f), _wgslsmith_f_op_f32(-func_6(Struct_1(var_1.a, var_2.b, vec3<i32>(var_2.c.x, 2147483647i, var_1.c.x)), Struct_1(vec3<i32>(var_2.c.x, 1i, 1i), var_2.b, var_2.a)).b.x))), -vec3<i32>(func_3(any(global1[_wgslsmith_index_u32(1u, 25u)]), ~vec4<u32>(10578u, 4294967295u, u_input.a.x, 29805u)).x, var_1.a.x, select(-43465i, -2147483647i, false) ^ (var_2.c.x | var_1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b.yyz)), var_3.b.xzy);
}

