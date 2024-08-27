struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> bool {
    let var_0 = vec3<u32>(101780u, ~abs(0u), ~countOneBits(arg_0)) & _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, ~firstTrailingBit(arg_0), arg_0), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, 18961u, arg_0), vec3<u32>(287u, arg_0, 4294967295u))));
    let var_1 = abs(u_input.a.x);
    var var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, var_0.x), ~vec2<u32>(0u, 1u) ^ var_0.xx), var_0.yx), countOneBits(vec2<u32>(arg_0, 4294967295u)) << (vec2<u32>(_wgslsmith_add_u32(arg_0, countOneBits(61542u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, 4294967295u, 59116u), ~vec4<u32>(49731u, var_0.x, 32988u, arg_0))) % vec2<u32>(32u)));
    var_2 = ~var_0.yx;
    var_2 = var_0.zx;
    return true;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> bool {
    let var_0 = arg_0.d.e.zz;
    let var_1 = arg_0.a;
    var var_2 = vec4<i32>(arg_1 >> (19618u % 32u), u_input.a.x, ~(-u_input.a.x), -1i);
    var var_3 = max(_wgslsmith_add_u32(~(arg_0.b.e.x ^ arg_0.c.e.x), select(_wgslsmith_dot_vec2_u32(vec2<u32>(64418u, 4294967295u), vec2<u32>(25531u, var_0.x)), 1u, arg_0.d.d)), ~24912u) << (~_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(var_0.x, 16709u)), ~(~vec2<u32>(var_0.x, arg_0.d.e.x))) % 32u);
    var var_4 = Struct_3(arg_0.a, arg_0.b, Struct_1(true, false, vec2<bool>(true, false), false, vec3<u32>(~var_0.x, ~max(var_0.x, var_0.x), abs(arg_0.c.e.x))), arg_0.c);
    return !(!all(vec4<bool>(any(vec3<bool>(false, arg_0.b.a, var_4.b.a)), all(vec4<bool>(false, var_4.c.d, true, var_4.d.a)), func_2(0u, vec4<i32>(-13575i, 1i, -1942i, u_input.a.x)), true)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_3(arg_3.a, Struct_1(arg_2.x, arg_2.x, arg_0.c, !func_2(arg_0.e.x, vec4<i32>(u_input.a.x, 30265i, 1i, u_input.a.x)) & !arg_0.d, countOneBits(vec3<u32>(arg_0.e.x, 1u, 4294967295u) ^ ~vec3<u32>(4294967295u, arg_0.e.x, arg_3.c.e.x))), Struct_1(arg_0.b, u_input.a.x <= u_input.a.x, !(!vec2<bool>(arg_0.c.x, arg_0.d)), func_3(arg_3, -1i, arg_1.a), vec3<u32>(1u, ~arg_3.b.e.x, ~1u) & ~arg_3.c.e), Struct_1(!func_3(arg_3, 0i, arg_3.a.a) != false, true, !select(select(arg_0.c, vec2<bool>(false, false), false), vec2<bool>(true, false), vec2<bool>(true, false)), false, firstLeadingBit(vec3<u32>(~arg_3.b.e.x, _wgslsmith_mult_u32(28518u, arg_0.e.x), 13273u >> (0u % 32u)))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -643f))), Struct_1(true, arg_0.d, var_0.c.c, all(!arg_0.c), arg_3.d.e << (countOneBits(vec3<u32>(0u, 4294967295u, 47370u)) % vec3<u32>(32u))), Struct_1(any(select(vec3<bool>(arg_3.d.a, arg_2.x, arg_0.a), vec3<bool>(var_0.b.c.x, true, true), false)) & all(vec4<bool>(arg_2.x, false, false, false)), all(var_0.d.c), arg_2, func_3(Struct_3(arg_1, Struct_1(arg_0.d, true, vec2<bool>(false, arg_3.c.a), false, vec3<u32>(4294967295u, 9214u, arg_3.d.e.x)), Struct_1(arg_2.x, true, arg_0.c, true, arg_0.e), arg_3.c), -u_input.a.x, 800f), vec3<u32>((var_0.d.e.x ^ 4294967295u) << (var_0.c.e.x % 32u), select(1u, arg_3.c.e.x, false), 9195u)), var_0.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.a.a)))), 1007f, _wgslsmith_div_f32(2811f, _wgslsmith_f_op_f32(-1076f + 712f)))));
    let var_3 = firstLeadingBit(~u_input.a.x);
    var var_4 = arg_0.c.x && true;
    return ~min(firstTrailingBit(4294967295u), select(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_3.b.e, vec3<u32>(arg_3.c.e.x, var_0.d.e.x, 5580u)), vec3<u32>(9901u, 35686u, var_1.b.e.x)), ~45149u, select(var_0.d.e.x != arg_3.c.e.x, false, 42703u == var_1.c.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u & _wgslsmith_mod_u32(26283u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, 7640u), func_1(Struct_1(true, false, vec2<bool>(true, false), true, vec3<u32>(0u, 1u, 0u)), Struct_2(-170f), vec2<bool>(false, true), Struct_3(Struct_2(-376f), Struct_1(false, false, vec2<bool>(false, true), false, vec3<u32>(0u, 1u, 89245u)), Struct_1(false, false, vec2<bool>(false, false), false, vec3<u32>(4294967295u, 38025u, 4294967295u)), Struct_1(true, false, vec2<bool>(false, false), false, vec3<u32>(4294967295u, 0u, 0u)))), firstLeadingBit(0u)), select(~vec3<u32>(0u, 19793u, 4294967295u), ~vec3<u32>(0u, 50824u, 500u), 2147483647i <= u_input.a.x)));
    var var_1 = select(_wgslsmith_add_vec3_u32(min(vec3<u32>(~72135u, ~13351u, ~1u), vec3<u32>(1u, 1u, 1u)), firstTrailingBit(vec3<u32>(~10621u, firstLeadingBit(37376u), 1u))), abs(vec3<u32>(1u, 1u, 1u)) | vec3<u32>(1u, 12976u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(19263u, 77230u), vec2<u32>(79444u, 47321u))), vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false)) & !select(true, false, true)));
    let var_2 = 346f;
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(1730f - var_2)), Struct_1(all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), func_3(Struct_3(Struct_2(1000f), Struct_1(false, false, vec2<bool>(false, false), true, vec3<u32>(var_1.x, var_1.x, 105329u)), Struct_1(true, true, vec2<bool>(true, true), false, vec3<u32>(3102u, 105158u, var_1.x)), Struct_1(false, true, vec2<bool>(false, false), false, vec3<u32>(9422u, 4294967295u, 22345u))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * var_2))), vec2<bool>(true, -519f >= var_2), any(vec2<bool>(select(false, false, false), any(vec3<bool>(true, false, false)))), countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(34685u, 47367u, 53793u), vec3<u32>(28498u, 1u, var_1.x), vec3<u32>(4294967295u, var_1.x, 341u)), vec3<u32>(var_1.x, var_1.x, 4294967295u) >> (vec3<u32>(4294967295u, var_1.x, 1u) % vec3<u32>(32u)), ~vec3<u32>(0u, 5434u, var_1.x)))), Struct_1(func_2(var_1.x, abs(vec4<i32>(-2147483647i, -8629i, u_input.a.x, u_input.a.x) & vec4<i32>(-44470i, 0i, u_input.a.x, u_input.a.x))), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false)), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), true, ~_wgslsmith_sub_vec3_u32(~vec3<u32>(var_1.x, 63952u, var_1.x), abs(vec3<u32>(var_1.x, 10465u, var_1.x)))), Struct_1(!func_3(Struct_3(Struct_2(-595f), Struct_1(false, false, vec2<bool>(true, false), false, vec3<u32>(46693u, var_1.x, var_1.x)), Struct_1(false, false, vec2<bool>(false, true), true, vec3<u32>(var_1.x, 0u, var_1.x)), Struct_1(false, true, vec2<bool>(true, true), true, vec3<u32>(var_1.x, 4294967295u, 48042u))), ~u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -612f)), true, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(1i != u_input.a.x, true)), false, vec3<u32>(~0u | var_1.x, ~1u, ~(31879u << (var_1.x % 32u)))));
    let var_4 = var_3.b.b;
    let var_5 = var_2;
    var var_6 = countOneBits(select(select(_wgslsmith_add_vec2_i32(u_input.a, u_input.a), vec2<i32>(1i, 1i), select(vec2<bool>(true, false), vec2<bool>(var_3.c.c.x, var_3.d.a), false)) | u_input.a, (-vec2<i32>(26984i, u_input.a.x) << ((var_3.d.e.zz | vec2<u32>(679u, var_1.x)) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(-2147483647i, u_input.a.x))), var_3.c.d && var_3.d.d));
    var_6 = select(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-80281i, var_6.x), _wgslsmith_clamp_i32(var_6.x, 2147483647i, 64790i))), u_input.a), reverseBits(countOneBits(firstTrailingBit(_wgslsmith_mod_vec2_i32(u_input.a, u_input.a)))), vec2<bool>(any(select(vec4<bool>(var_3.c.d, false, true, var_3.c.d), select(vec4<bool>(true, false, false, var_3.b.a), vec4<bool>(true, true, false, true), var_3.b.a), select(vec4<bool>(var_3.c.d, true, var_3.b.a, var_3.d.d), vec4<bool>(var_3.c.c.x, true, true, var_3.c.d), vec4<bool>(var_3.d.c.x, var_3.c.b, true, true)))), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~4294967295u, ~var_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.a, -1485f) + vec2<f32>(-1389f, var_3.a.a))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-579f, -420f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_5, var_5)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.a, var_5))), !(!var_3.b.c)))), var_1.x & ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c.e.x, 0u, var_1.x, var_3.b.e.x), vec4<u32>(15172u, var_3.b.e.x, 24002u, var_3.d.e.x) << (vec4<u32>(89639u, var_3.d.e.x, var_1.x, var_3.d.e.x) % vec4<u32>(32u))), -select(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_6.x, var_6.x, -2147483647i), vec3<i32>(1i, 0i, 2147483647i)), ~vec3<i32>(1i, -89023i, 10679i) ^ ~vec3<i32>(var_6.x, 1i, u_input.a.x), vec3<bool>(true, true, true)), u_input.a.x);
}

