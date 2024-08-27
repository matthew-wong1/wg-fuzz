struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = select(((select(vec2<i32>(76156i, -2147483647i), vec2<i32>(-1i, -2147483647i), true) | ~vec2<i32>(-1i, -2147483647i)) & vec2<i32>(firstTrailingBit(0i), 5013i)) | -_wgslsmith_mod_vec2_i32(min(vec2<i32>(0i, -40494i), vec2<i32>(-1i, -34234i)), select(vec2<i32>(-2147483647i, 0i), vec2<i32>(11612i, 0i), false)), max(min(vec2<i32>(max(0i, 0i), 0i), ~abs(vec2<i32>(18813i, -2147483647i))), select(firstTrailingBit(vec2<i32>(-2147483647i, 9617i)), ~vec2<i32>(-50172i, -50009i), true)), vec2<bool>(true, true));
    var_0 = select(_wgslsmith_add_vec2_i32(~(vec2<i32>(var_0.x, var_0.x) ^ vec2<i32>(var_0.x, var_0.x)), vec2<i32>(1i, -var_0.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -20410i, -16439i, var_0.x), vec4<i32>(-31513i, 38239i, var_0.x, var_0.x), vec4<i32>(6924i, 31050i, var_0.x, -2147483647i)), -vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), var_0.x), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))) & -select(_wgslsmith_div_vec2_i32(~vec2<i32>(1i, var_0.x), -vec2<i32>(var_0.x, var_0.x)), -abs(vec2<i32>(-2147483647i, 7623i)), !select(vec2<bool>(false, false), vec2<bool>(true, false), true));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -978f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(121f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(423f)) + _wgslsmith_f_op_f32(2397f * 1675f)))))));
    var var_2 = !(!any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true)));
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(318f * 683f) * _wgslsmith_f_op_f32(select(-295f, 741f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -773f) * _wgslsmith_f_op_f32(f32(-1f) * -616f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-907f, -422f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(1000f, -423f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(639f * -1103f) - _wgslsmith_f_op_f32(595f + 1730f)))));
    return u_input.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(func_3(firstLeadingBit(firstTrailingBit(u_input.b.x))), u_input.b.x) << (abs(13551u) % 32u);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_1.a)) + arg_1.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b, arg_0.b), vec2<f32>(267f, 519f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b, -307f))), -1359f)), arg_0, true & (_wgslsmith_f_op_f32(-784f + arg_0.b) > _wgslsmith_f_op_f32(ceil(arg_0.a.x))), arg_0);
    var var_2 = var_1.c;
    var_2 = any(!(!vec2<bool>(var_1.c, var_1.c)));
    var_2 = false;
    return Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * 970f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(arg_0.a, vec2<f32>(var_1.b.b, var_1.b.b), false))))))), _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-808f)) - _wgslsmith_f_op_f32(var_1.b.b - var_1.a.b))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(-26192i), arg_0.x) | _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.xy >> (vec2<u32>(u_input.b.x, u_input.a) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-26205i, arg_0.x), vec2<i32>(30514i, arg_0.x))), min(reverseBits(arg_0.xy), arg_0.yy)), ~(-(~arg_0.zx) >> (u_input.b.yw % vec2<u32>(32u))));
    var var_1 = Struct_2(func_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1294f), _wgslsmith_f_op_f32(step(arg_3.b.b, 331f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d.a.x - 653f) - arg_3.d.b)), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(arg_3.b.a + vec2<f32>(631f, -516f)), arg_3.b.b), func_2(arg_3.a, arg_3.d))), func_2(arg_3.a, arg_3.a), arg_3.c, arg_3.d);
    var_1 = arg_3;
    var_1 = Struct_2(Struct_1(vec2<f32>(-555f, _wgslsmith_f_op_f32(-arg_2)), arg_2), var_1.b, false, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a.b, arg_2)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(802f, var_1.a.b))), -1058f));
    var_1 = Struct_2(Struct_1(var_1.d.a, arg_3.b.a.x), var_1.a, false, arg_3.a);
    return !select(vec3<bool>(true, true, true), !select(!vec3<bool>(arg_1, true, true), !vec3<bool>(var_1.c, arg_3.c, arg_3.c), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(true, arg_1, false)), all(!vec3<bool>(arg_3.c, false, false)), any(vec2<bool>(arg_1, true))));
}

fn func_1() -> u32 {
    let var_0 = !select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), func_4(vec3<i32>(-1i) * -vec3<i32>(-29828i, 1i, 20493i), firstLeadingBit(u_input.a) > max(u_input.a, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1817f, 637f))), Struct_2(func_2(Struct_1(vec2<f32>(-388f, -1044f), 233f), Struct_1(vec2<f32>(302f, 1000f), 522f)), Struct_1(vec2<f32>(-305f, 1778f), 290f), false, Struct_1(vec2<f32>(122f, -152f), -735f))), false);
    var var_1 = vec4<bool>(var_0.x, true, all(vec2<bool>(!var_0.x, var_0.x)), ~(func_3(u_input.b.x) << (u_input.b.x % 32u)) <= ~(~_wgslsmith_mod_u32(u_input.b.x, 10696u)));
    var var_2 = func_4(_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(-30740i, -3749i, 2147483647i)), ~_wgslsmith_mult_vec3_i32(-vec3<i32>(0i, 2147483647i, -19926i), vec3<i32>(1i, 1i, 1i)), ~(~firstLeadingBit(vec3<i32>(0i, 1i, 0i)))), !func_4(abs(vec3<i32>(-12229i, 1i, 1287i)) >> (select(vec3<u32>(u_input.b.x, 4294967295u, u_input.a), u_input.b.yxx, vec3<bool>(true, var_1.x, var_1.x)) % vec3<u32>(32u)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(744f + -1586f) + _wgslsmith_f_op_f32(ceil(-1273f))), Struct_2(Struct_1(vec2<f32>(-1000f, -1578f), 237f), Struct_1(vec2<f32>(-1752f, -1000f), -1107f), var_0.x, func_2(Struct_1(vec2<f32>(-523f, -1254f), -486f), Struct_1(vec2<f32>(676f, -543f), 979f)))).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1277f * _wgslsmith_f_op_f32(-376f - -1857f)))), Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-542f - -1208f), _wgslsmith_f_op_f32(f32(-1f) * -1262f)), _wgslsmith_f_op_f32(-1215f - _wgslsmith_div_f32(-1000f, 1168f))), func_2(func_2(Struct_1(vec2<f32>(-648f, -342f), -964f), func_2(Struct_1(vec2<f32>(1663f, 1839f), -1178f), Struct_1(vec2<f32>(1635f, -1000f), -154f))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(178f, 580f) * vec2<f32>(-1466f, -425f)), -1110f)), true || func_4(-vec3<i32>(17358i, -1i, 16620i), func_4(vec3<i32>(0i, 17314i, -1i), var_1.x, -136f, Struct_2(Struct_1(vec2<f32>(-150f, 1717f), -456f), Struct_1(vec2<f32>(616f, -242f), 100f), var_0.x, Struct_1(vec2<f32>(-1000f, -783f), 1146f))).x, _wgslsmith_f_op_f32(-318f - 1000f), Struct_2(Struct_1(vec2<f32>(1000f, 491f), 369f), Struct_1(vec2<f32>(-403f, -563f), 592f), false, Struct_1(vec2<f32>(1027f, -714f), -104f))).x, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-459f, 860f) - vec2<f32>(205f, -1873f))), -536f))).x;
    let var_3 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1041f + 1000f) + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -276f)), _wgslsmith_f_op_f32(min(287f, -616f))), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1761f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1439f, -756f))), 1011f), func_2(func_2(Struct_1(vec2<f32>(244f, -965f), -1183f), func_2(Struct_1(vec2<f32>(-1371f, -410f), 1233f), Struct_1(vec2<f32>(-896f, 1451f), 1346f))), func_2(Struct_1(vec2<f32>(1436f, 363f), 1149f), func_2(Struct_1(vec2<f32>(-1008f, -250f), -423f), Struct_1(vec2<f32>(616f, -788f), 1000f))))), any(select(vec4<bool>(var_1.x, !var_1.x, var_0.x, var_0.x), !vec4<bool>(var_1.x, false, false, true), vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-885f, 1200f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1263f + 582f)))));
    let var_4 = _wgslsmith_f_op_f32(var_3.d.a.x * _wgslsmith_f_op_f32(-var_3.d.b));
    return u_input.b.x;
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: f32) -> bool {
    let var_0 = !(!(!(!select(false, false, true))));
    let var_1 = 2147483647i;
    let var_2 = true;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1303f + arg_0)) + _wgslsmith_f_op_f32(min(377f, func_2(Struct_1(vec2<f32>(-1595f, arg_3), arg_3), Struct_1(vec2<f32>(-148f, arg_3), -948f)).b)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-123f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 - arg_3), _wgslsmith_f_op_f32(-arg_3), var_2))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1010f, arg_0)))) * vec2<f32>(arg_0, _wgslsmith_div_f32(-637f, arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(427f, _wgslsmith_f_op_f32(arg_0 - -1000f), false))) - _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_3)), -307f)))));
    return u_input.a == abs(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(0i, _wgslsmith_mod_i32(1i, 1i));
    var_0 = _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(-1782i, _wgslsmith_clamp_i32(29548i, -1i, -17960i), -18844i, 1i)) | 2147483647i);
    var_0 = 10637i;
    let var_1 = _wgslsmith_div_i32(1i, select(1i, ~_wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(1i, -1i), ~(-1i)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, 29463u), u_input.b) != u_input.a));
    var_0 = -2147483647i;
    var_0 = select(~countOneBits(var_1), var_1 & (18275i ^ var_1), !func_5(1f, vec4<i32>(12298i, var_1, -75662i, -41248i), func_1(), 369f)) ^ -var_1;
    var var_2 = u_input.b;
    let var_3 = Struct_2(func_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1508f * -1000f), _wgslsmith_f_op_f32(-483f * -503f)), _wgslsmith_div_f32(-503f, 643f)), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -285f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1478f, 1291f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f + -681f)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-func_2(Struct_1(vec2<f32>(-106f, 744f), -275f), Struct_1(vec2<f32>(-543f, 1000f), 364f)).a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2621f + -382f)))), _wgslsmith_f_op_f32(-2407f + _wgslsmith_f_op_f32(max(-1357f, -363f)))), false, Struct_1(vec2<f32>(-858f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -733f))), _wgslsmith_f_op_f32(1467f + 129f)));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u | ~u_input.b.x, u_input.b, firstTrailingBit(~(~(~u_input.b))), _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(firstLeadingBit(select(vec2<i32>(-19713i, -2147483647i), vec2<i32>(var_1, 3106i), vec2<bool>(var_3.c, false))), select(abs(vec2<i32>(var_1, -63816i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1, -27731i), vec2<i32>(-52697i, 1i)), true))), vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 46955u, var_2.x, var_2.x), u_input.b), u_input.a), 0u));
}

