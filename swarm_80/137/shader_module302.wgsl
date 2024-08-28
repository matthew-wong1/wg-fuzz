struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = Struct_1(select(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<bool>(true, true), false), select(!vec2<bool>(true, all(vec4<bool>(true, false, true, false))), vec2<bool>(false, true), false), reverseBits(u_input.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-328f - -387f) + _wgslsmith_f_op_f32(-662f - 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1488f, -783f))) * -800f))));
    var var_1 = Struct_1(!select(var_0.b, select(select(var_0.a, var_0.a, var_0.a.x), !vec2<bool>(true, var_0.b.x), true), true), !(!var_0.b), _wgslsmith_div_vec4_i32(var_0.c, vec4<i32>(var_0.c.x, _wgslsmith_sub_i32(u_input.a.x, countOneBits(11920i)), ~(-u_input.a.x), ~42016i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.d)))))));
    return var_0.a.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(select(_wgslsmith_f_op_f32(f32(-1f) * -1075f) >= arg_1.x, true, !(u_input.a.x == 23463i)), all(vec3<bool>(true, true, true))), vec2<bool>(false, !func_3()), _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(max(2147483647i, u_input.a.x), ~(-27485i), firstLeadingBit(1i), u_input.a.x)) >> (u_input.b % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(127f, arg_2)))));
    var var_1 = firstLeadingBit(countOneBits(_wgslsmith_sub_u32(~1u, u_input.b.x)) | (56423u | _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)));
    return Struct_1(select(var_0.b, !var_0.b, var_0.a.x), select(select(!var_0.b, !var_0.b, var_0.a.x), vec2<bool>(true, true), var_0.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), max(59849i, -2147483647i), ~u_input.a.x, u_input.a.x), -(~vec4<i32>(var_0.c.x, var_0.c.x, 1i, -16904i))) << (vec4<u32>(abs(u_input.b.x), ~(~4294967295u), 12480u, _wgslsmith_mod_u32(~4294967295u, u_input.b.x & u_input.b.x)) % vec4<u32>(32u)), -451f);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: u32, arg_3: i32) -> vec2<bool> {
    let var_0 = 1i;
    var var_1 = arg_1.x;
    var var_2 = func_2(vec4<u32>(_wgslsmith_mult_u32(arg_2, ~abs(u_input.b.x)), arg_0, 0u, arg_0), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), 735f, _wgslsmith_div_f32(1000f, -930f)), -1000f);
    var var_3 = min(var_0, _wgslsmith_dot_vec3_i32(-u_input.a.yzx, u_input.a.yzx & -firstLeadingBit(u_input.a.zzz)));
    var var_4 = vec4<u32>(min(select(~abs(arg_2), 1u, arg_1.x), u_input.b.x), _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(u_input.b, firstTrailingBit(vec4<u32>(8497u, 30200u, 1u, arg_0) & u_input.b))), arg_2, firstLeadingBit(4294967295u));
    return vec2<bool>(all(vec4<bool>(false & any(arg_1.ywy), any(select(arg_1.zzz, vec3<bool>(false, var_2.a.x, false), arg_1.xww)), func_2(u_input.b, vec3<f32>(322f, -412f, 154f), var_2.d).c.x == -arg_3, false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-574f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1139f * -543f) + 1459f) + _wgslsmith_f_op_f32(f32(-1f) * -630f)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-2020f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - var_0.x) - 2034f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f)), _wgslsmith_f_op_f32(-var_0.x)));
    let var_1 = Struct_1(select(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), select(vec2<bool>(true, true), func_1(11861u, vec4<bool>(false, true, true, false), ~u_input.b.x, select(1i, 32449i, false)), vec2<bool>(true, true)), func_2(vec4<u32>(firstLeadingBit(4294967295u), u_input.b.x, 38070u, ~u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1096f, 1589f, var_0.x)))), 1381f).a), !vec2<bool>(all(vec4<bool>(false, false, false, true)) | false, func_1(1u, vec4<bool>(true, true, true, false), 1u, 2147483647i).x), u_input.a, 909f);
    let var_2 = func_2(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32((u_input.b >> (vec4<u32>(u_input.b.x, 0u, 4294967295u, 1u) % vec4<u32>(32u))) ^ ~vec4<u32>(33618u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(max(u_input.b.x, 4294967295u), ~u_input.b.x, min(u_input.b.x, u_input.b.x), u_input.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, firstTrailingBit(u_input.b.x), 37484u, 54433u), vec4<u32>(~u_input.b.x, abs(1703u), u_input.b.x << (1u % 32u), ~u_input.b.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -670f, var_0.x), _wgslsmith_div_vec3_f32(vec3<f32>(1329f, var_0.x, var_0.x), vec3<f32>(533f, var_1.d, var_0.x)), !vec3<bool>(false, var_1.b.x, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d, var_1.d, -1000f), vec3<f32>(var_0.x, -844f, var_1.d))), vec3<bool>(false && var_1.a.x, var_1.a.x && true, var_1.a.x & false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -448f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(exp2(var_1.d))))), _wgslsmith_f_op_f32(f32(-1f) * -685f));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, var_0.x)))))));
    var var_3 = abs(min(43584u, abs(~u_input.b.x)));
    var var_4 = abs(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, max(2147483647i, -1i)), -8185i)) ^ vec2<i32>(select(var_2.c.x, ~(-12845i), !var_1.a.x), var_1.c.x);
    var var_5 = _wgslsmith_mult_vec4_i32(select(var_1.c, -countOneBits(-var_1.c), !(!vec4<bool>(var_2.b.x, var_1.a.x, false, var_1.b.x))), var_1.c);
    var_0 = vec2<f32>(var_1.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1005f * -190f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1084f, 265f)), _wgslsmith_f_op_f32(207f + -1611f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1054f));
}

