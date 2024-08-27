struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_3(Struct_1(select(vec3<bool>(arg_0.b.a.x, arg_0.b.a.x, arg_0.a.x < arg_0.a.x), vec3<bool>(select(arg_0.b.a.x, false, true), false != arg_0.b.a.x, any(vec3<bool>(arg_0.c, arg_0.b.a.x, arg_0.c))), true)));
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_f32(1488f + -846f);
    var var_3 = !select(select(!select(vec4<bool>(false, true, arg_0.b.a.x, false), vec4<bool>(false, arg_0.b.a.x, false, true), false), !select(vec4<bool>(false, true, var_0.a.a.x, arg_0.b.a.x), vec4<bool>(arg_0.b.a.x, true, var_1.a.x, true), vec4<bool>(arg_0.c, var_0.a.a.x, var_0.a.a.x, true)), !select(vec4<bool>(false, arg_0.c, true, var_1.a.x), vec4<bool>(false, false, var_1.a.x, true), var_0.a.a.x)), vec4<bool>(any(!vec3<bool>(true, var_0.a.a.x, false)), any(var_0.a.a.xy) | (var_2 == var_2), all(!vec2<bool>(false, var_0.a.a.x)), true | any(vec4<bool>(false, var_0.a.a.x, arg_0.c, arg_0.b.a.x))), arg_0.c);
    var_1 = Struct_1(var_1.a);
    return 0u;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> vec4<bool> {
    let var_0 = -abs(firstLeadingBit((arg_1 & arg_0.x) ^ ~arg_0.x));
    let var_1 = true;
    let var_2 = func_3(Struct_2(min(arg_0.wzx, ~(~arg_0.xxy)), Struct_1(vec3<bool>(var_1, any(vec2<bool>(var_1, var_1)), var_1)), true));
    var var_3 = Struct_3(Struct_1(vec3<bool>(var_1, var_1, true)));
    var_3 = Struct_3(var_3.a);
    return !(!select(vec4<bool>(all(var_3.a.a.yx), var_3.a.a.x, var_3.a.a.x, any(vec3<bool>(var_3.a.a.x, var_1, var_1))), !select(vec4<bool>(false, var_1, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, var_3.a.a.x, false, true)), var_3.a.a.x));
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0;
    var var_1 = min(-_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-4360i, var_0.a.x, var_0.a.x, -22151i) ^ vec4<i32>(0i, -2147483647i, -4468i, -1i), min(vec4<i32>(arg_0.a.x, -63798i, 1i, -2147483647i), vec4<i32>(arg_0.a.x, var_0.a.x, arg_0.a.x, arg_0.a.x))), ~firstTrailingBit(vec4<i32>(5634i, var_0.a.x, arg_0.a.x, 1i)), -vec4<i32>(arg_0.a.x, 2147483647i, 2147483647i, var_0.a.x)), select(vec4<i32>(i32(-1i) * -45823i, var_0.a.x, ~var_0.a.x, -1i), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.a.x, -37007i, arg_0.a.x), vec4<i32>(var_0.a.x, -43274i, arg_0.a.x, 1i))), !func_2(vec4<i32>(15767i, var_0.a.x, -2147483647i, -17670i), var_0.a.x, -666f)) | abs(vec4<i32>(-1i) * -vec4<i32>(var_0.a.x, -2147483647i, arg_0.a.x, arg_0.a.x)));
    var var_2 = var_0.b;
    return u_input.b.x;
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2(vec3<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -10227i, -2147483647i, -1i), vec4<i32>(1i, 0i, -22429i, 1i)), reverseBits(vec4<i32>(-22889i, 2147483647i, -2147483647i, 83300i))), 65701i, i32(-1i) * -1i), Struct_1(vec3<bool>(false, func_2(vec4<i32>(6168i, 0i, 2147483647i, -40044i), 39154i, -1372f).x | all(vec4<bool>(false, false, true, false)), true)), all(func_2(-max(vec4<i32>(-1i, 20990i, -1i, -1i), vec4<i32>(0i, -15166i, -2147483647i, -24849i)), firstLeadingBit(~13508i), -213f).wzz));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1600f + 1242f)) * _wgslsmith_f_op_f32(-685f + _wgslsmith_f_op_f32(-628f + -336f))))));
    var_0 = Struct_2(var_0.a, Struct_1(var_0.b.a), !(all(!vec4<bool>(false, var_0.c, var_0.c, true)) && any(!var_0.b.a.xz)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1175f, 587f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-162f, -316f))))));
    var var_3 = countOneBits(69229u);
    return Struct_1(var_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(countOneBits(~vec4<u32>(~1u, 1u, func_1(Struct_2(vec3<i32>(12267i, 19742i, -1i), Struct_1(vec3<bool>(false, false, true)), true)), u_input.a)));
    var_0 = func_4(vec4<u32>(abs(1u), u_input.b.x, u_input.a, 14244u));
    var var_1 = func_4(vec4<u32>(~21648u, firstTrailingBit(u_input.b.x), u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, u_input.b), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 0u))), ~(~42297u))));
    var var_2 = Struct_3(func_4(firstTrailingBit(vec4<u32>(19272u | u_input.b.x, 1u, ~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(11683u, u_input.a, 81922u, 4294967295u), vec4<u32>(u_input.a, 24649u, 4294967295u, u_input.b.x))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-855f, 1000f, 780f, 1595f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-227f, 1399f, -1128f, 2097f)))))));
    let var_4 = Struct_2(-vec3<i32>(~(-1i), 1i, 1i) ^ _wgslsmith_clamp_vec3_i32(-abs(vec3<i32>(-1i, 825i, -1i)), -vec3<i32>(-10452i, 38049i, 35082i), vec3<i32>(0i, -24288i, i32(-1i) * -5665i)), Struct_1(select(!func_4(vec4<u32>(4294967295u, u_input.b.x, 24054u, u_input.a)).a, vec3<bool>(true, any(var_0.a), any(var_2.a.a.zy)), false)), true);
    var_0 = var_2.a;
    let var_5 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-var_4.a.x, _wgslsmith_mod_i32(var_4.a.x, var_4.a.x), var_4.a.x & -57105i, ~2147483647i), countOneBits(vec4<i32>(-5734i, var_4.a.x, 21513i, var_4.a.x))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_4.a.x, var_4.a.x, var_4.a.x, 1i), vec4<i32>(20574i, -5088i, -82605i, var_4.a.x)), abs(vec4<i32>(var_4.a.x, var_4.a.x, var_4.a.x, var_4.a.x))), vec4<i32>(var_4.a.x, var_4.a.x, var_4.a.x ^ var_4.a.x, ~(-39402i))), vec4<i32>(-1i) * -select(vec4<i32>(var_4.a.x, var_4.a.x, var_4.a.x, 26331i), vec4<i32>(var_4.a.x, -2147483647i, var_4.a.x, 2147483647i), false)));
}

