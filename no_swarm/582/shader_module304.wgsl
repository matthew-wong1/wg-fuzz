struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<f32>(205f, -675f, 1158f, -296f), vec2<f32>(922f, -1031f)), Struct_1(vec4<f32>(980f, -223f, -1175f, -241f), vec2<f32>(898f, 296f)), Struct_1(vec4<f32>(-303f, -1047f, -1338f, 621f), vec2<f32>(-1772f, -1000f)), Struct_1(vec4<f32>(-548f, 230f, 1017f, 1472f), vec2<f32>(-630f, 712f)), Struct_1(vec4<f32>(-647f, -482f, -915f, 776f), vec2<f32>(442f, -209f)), Struct_1(vec4<f32>(-1284f, 1409f, 402f, -220f), vec2<f32>(443f, -2052f)), Struct_1(vec4<f32>(1220f, 1642f, 1286f, 1514f), vec2<f32>(1311f, -847f)), Struct_1(vec4<f32>(-624f, -167f, 1029f, -151f), vec2<f32>(1892f, -1559f)), Struct_1(vec4<f32>(-1279f, -481f, -1000f, 434f), vec2<f32>(897f, -2073f)), Struct_1(vec4<f32>(-1890f, -529f, -282f, -208f), vec2<f32>(1259f, 2043f)), Struct_1(vec4<f32>(860f, 783f, -1190f, 333f), vec2<f32>(-944f, -1056f)), Struct_1(vec4<f32>(-477f, 1715f, -759f, 178f), vec2<f32>(-410f, -1410f)), Struct_1(vec4<f32>(-1018f, -691f, -1481f, -1000f), vec2<f32>(-878f, 249f)), Struct_1(vec4<f32>(-604f, 766f, 748f, 301f), vec2<f32>(-441f, -641f)), Struct_1(vec4<f32>(-1557f, -732f, 564f, 1815f), vec2<f32>(1453f, -1768f)), Struct_1(vec4<f32>(817f, -1449f, -150f, -642f), vec2<f32>(1628f, 1121f)), Struct_1(vec4<f32>(-716f, -182f, -1161f, -726f), vec2<f32>(1000f, -274f)), Struct_1(vec4<f32>(-1000f, 1235f, -1000f, -2019f), vec2<f32>(2151f, -1000f)), Struct_1(vec4<f32>(-1312f, 869f, -840f, 626f), vec2<f32>(-375f, -1000f)), Struct_1(vec4<f32>(128f, -1000f, -1000f, 1589f), vec2<f32>(-313f, -1733f)), Struct_1(vec4<f32>(480f, 682f, 769f, 263f), vec2<f32>(1303f, -396f)), Struct_1(vec4<f32>(906f, -860f, 149f, -1925f), vec2<f32>(-1085f, 684f)), Struct_1(vec4<f32>(-1000f, 1122f, -590f, -321f), vec2<f32>(-602f, 637f)), Struct_1(vec4<f32>(223f, 305f, 1280f, 492f), vec2<f32>(-1898f, -689f)), Struct_1(vec4<f32>(-693f, -119f, 139f, 842f), vec2<f32>(1431f, -724f)), Struct_1(vec4<f32>(-1304f, 266f, 1003f, -583f), vec2<f32>(250f, -125f)), Struct_1(vec4<f32>(130f, 593f, 611f, -502f), vec2<f32>(1000f, 459f)), Struct_1(vec4<f32>(-136f, 296f, -1160f, -1379f), vec2<f32>(154f, -1000f)), Struct_1(vec4<f32>(615f, 949f, -371f, 1626f), vec2<f32>(1325f, -685f)), Struct_1(vec4<f32>(-425f, 457f, 178f, 1868f), vec2<f32>(356f, -545f)), Struct_1(vec4<f32>(-213f, -808f, 1000f, -1000f), vec2<f32>(1620f, 919f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(~u_input.a, _wgslsmith_clamp_i32(73066i, _wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a)), _wgslsmith_mod_vec2_i32(-abs(vec2<i32>(u_input.a, 1i)), -(~vec2<i32>(-1i, u_input.a) & _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, 43424i)))), _wgslsmith_add_vec2_i32(countOneBits(firstTrailingBit(vec2<i32>(-2147483647i, u_input.a) | vec2<i32>(u_input.a, -2147483647i))), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(1i, -28797i) | vec2<i32>(u_input.a, -2147483647i), vec2<i32>(-2147483647i, u_input.a) << (vec2<u32>(1u, 5990u) % vec2<u32>(32u)), false), ~reverseBits(vec2<i32>(-26667i, 0i)), _wgslsmith_add_vec2_i32(-vec2<i32>(1i, 1i), -vec2<i32>(u_input.a, u_input.a)))));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-235f, -657f, 373f, 1457f) + vec4<f32>(-463f, -922f, 874f, 995f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-737f, -1000f, 1257f, 567f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(290f, -238f, -621f, -516f) + vec4<f32>(242f, 1077f, 125f, -557f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1437f, 763f, 657f, 1311f) + vec4<f32>(-830f, 296f, -468f, -131f)))))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a), vec4<f32>(arg_0.a.x, -2238f, 421f, 374f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1482f, arg_0.a.x, arg_0.a.x, 1000f)))))), vec2<f32>(-1079f, -950f));
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x * 1451f), var_0.b.x, 196f, _wgslsmith_f_op_vec4_f32(func_3()).x) + _wgslsmith_div_vec4_f32(vec4<f32>(-827f, var_0.b.x, -878f, 309f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1324f, 799f, 117f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.a, arg_0.a)))), _wgslsmith_f_op_vec4_f32(func_3()).yw);
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(var_0.a, vec4<f32>(arg_0.b.x, var_0.b.x, var_0.b.x, 633f))))), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(f32(-1f) * -562f), 237f, -582f)) + _wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1613f, 324f, arg_0.a.x, -591f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b * var_1.a.wy) + _wgslsmith_div_vec2_f32(arg_0.b, _wgslsmith_f_op_vec2_f32(floor(var_1.b)))));
    var_1 = global0[_wgslsmith_index_u32(reverseBits(20807u), 31u)];
    let var_2 = _wgslsmith_clamp_u32(min(~max(~1u, select(0u, 0u, true)), ~_wgslsmith_add_u32(1u, 31885u)), ~(~1u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 47873u, 16483u, 10841u), vec4<u32>(57190u, 18371u, 14399u, 4294967295u)) ^ 4294967295u, _wgslsmith_mod_u32(firstTrailingBit(58524u), 1u)), _wgslsmith_add_u32(1u, 1u), 1u));
    return ~(~(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, var_2, var_2), countOneBits(vec3<u32>(8948u, 54650u, var_2))) << (vec3<u32>(4294967295u, _wgslsmith_clamp_u32(23861u, var_2, var_2), var_2) % vec3<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: u32) -> vec3<f32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 1500u, arg_3, 0u), countOneBits(vec4<u32>(arg_3, arg_3, 0u, 1u))), (vec4<u32>(85690u, arg_3, arg_3, 21087u) | vec4<u32>(arg_3, 2635u, arg_3, arg_3)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(6373u, 4294967295u, 54709u, 1u), vec4<u32>(arg_3, arg_3, arg_3, arg_3), vec4<u32>(arg_3, 0u, 1u, arg_3))), firstTrailingBit(arg_3), _wgslsmith_mult_u32(~4294967295u ^ arg_3, ~1u)), vec4<u32>(_wgslsmith_dot_vec3_u32(func_2(Struct_1(arg_0.a, vec2<f32>(arg_0.b.x, arg_0.a.x)), all(vec3<bool>(true, true, arg_2))), max(vec3<u32>(arg_3, 57228u, arg_3), ~vec3<u32>(arg_3, arg_3, arg_3))), 20525u, arg_3, arg_3)), 31u)];
    let var_1 = true;
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(~arg_3), 31u)];
    global0 = array<Struct_1, 31>();
    var var_3 = global0[_wgslsmith_index_u32(min(arg_3, ~(~arg_3)), 31u)];
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(1242f, _wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_vec4_f32(func_3()).x)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -851f), -564f, _wgslsmith_f_op_f32(-var_3.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-687f, -511f, 522f)))) + vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(global0[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(1u, 1u), 0u, true), 31u)], vec2<i32>(u_input.a | u_input.a, firstLeadingBit(1i)), false, abs(_wgslsmith_div_u32(12557u, 19819u))))));
    var var_1 = u_input.a;
    var var_2 = abs(_wgslsmith_dot_vec3_u32(reverseBits(countOneBits(vec3<u32>(1u, 1u, 1u))), select(vec3<u32>(4294967295u, 25812u, 4294967295u), ~vec3<u32>(47164u, 1u, 1u), true) & ~_wgslsmith_div_vec3_u32(vec3<u32>(6319u, 10038u, 22574u), vec3<u32>(1u, 6366u, 22093u))));
    var var_3 = reverseBits(~abs(-2147483647i));
    var var_4 = 1022f;
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_3()).x)));
    let x = u_input.a;
    s_output = StorageBuffer(1661f, _wgslsmith_clamp_vec3_u32(abs(func_2(Struct_1(vec4<f32>(var_0.x, var_0.x, -884f, 1309f), vec2<f32>(var_0.x, 799f)), true)), ~min(_wgslsmith_mult_vec3_u32(vec3<u32>(15237u, 45955u, 0u), vec3<u32>(45870u, 16544u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(42499u, 0u, 1u), vec3<u32>(49037u, 6272u, 67352u))), vec3<u32>(~4294967295u, reverseBits(min(53726u, 5242u)), 449u)));
}

