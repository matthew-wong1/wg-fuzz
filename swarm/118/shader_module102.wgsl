struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(-1i, vec4<i32>(1i, 20512i, i32(-2147483648), i32(-2147483648)), vec4<f32>(452f, -1323f, 1000f, 814f), 4294967295u), Struct_1(-1i, vec4<i32>(-41882i, 2147483647i, 14545i, 15320i), vec4<f32>(248f, -729f, -536f, -1000f), 4294967295u), Struct_1(0i, vec4<i32>(-9560i, 57842i, 2147483647i, 0i), vec4<f32>(600f, -444f, 369f, 485f), 5903u), Struct_1(74013i, vec4<i32>(-1i, 49668i, -1i, 4138i), vec4<f32>(-157f, 1075f, 197f, 602f), 1u), Struct_1(-32894i, vec4<i32>(15581i, -1i, 19655i, 47974i), vec4<f32>(1944f, -100f, -2279f, 247f), 1u), Struct_1(2147483647i, vec4<i32>(-36922i, 46137i, -27588i, -33219i), vec4<f32>(989f, -504f, -669f, -412f), 1u), Struct_1(2147483647i, vec4<i32>(-1i, -9201i, 957i, -1148i), vec4<f32>(416f, -1016f, -760f, 205f), 4294967295u), Struct_1(1i, vec4<i32>(50674i, i32(-2147483648), -16326i, 2147483647i), vec4<f32>(1000f, 1389f, -800f, -292f), 4294967295u), Struct_1(29943i, vec4<i32>(39993i, -30488i, -1i, 21758i), vec4<f32>(350f, 1000f, -2121f, -237f), 6233u), Struct_1(1i, vec4<i32>(-10728i, 26833i, -5014i, i32(-2147483648)), vec4<f32>(494f, 1286f, 1314f, 529f), 0u), Struct_1(2147483647i, vec4<i32>(21981i, -7541i, -819i, 27899i), vec4<f32>(-692f, -1000f, -225f, -414f), 1u), Struct_1(i32(-2147483648), vec4<i32>(38192i, 2797i, i32(-2147483648), 48378i), vec4<f32>(1000f, -1000f, -186f, 253f), 1u), Struct_1(0i, vec4<i32>(1i, 0i, 56705i, -1i), vec4<f32>(1672f, 2445f, -1301f, 948f), 2547u), Struct_1(-20645i, vec4<i32>(21801i, 0i, 0i, 2147483647i), vec4<f32>(-225f, 283f, -1635f, 153f), 0u), Struct_1(1i, vec4<i32>(-35296i, -27272i, -19749i, 0i), vec4<f32>(-144f, 738f, 590f, -697f), 1u), Struct_1(-1i, vec4<i32>(0i, -41774i, 6682i, 16892i), vec4<f32>(-2968f, -653f, 716f, 726f), 84396u), Struct_1(-23425i, vec4<i32>(-12473i, 1i, 11858i, 28500i), vec4<f32>(1058f, -600f, -356f, 1387f), 16082u), Struct_1(0i, vec4<i32>(-25797i, i32(-2147483648), -1145i, -21098i), vec4<f32>(-1082f, 1000f, 194f, -598f), 0u), Struct_1(-54510i, vec4<i32>(i32(-2147483648), -1i, 2147483647i, 0i), vec4<f32>(-855f, -1961f, 469f, 163f), 13549u), Struct_1(0i, vec4<i32>(1i, -8686i, -1i, -7896i), vec4<f32>(-559f, -2108f, 836f, -774f), 0u), Struct_1(39925i, vec4<i32>(32989i, 0i, i32(-2147483648), i32(-2147483648)), vec4<f32>(-234f, 373f, 180f, 2041f), 32620u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_1, 21>();
    let var_0 = !(!vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, false));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-951f, 2362f), vec2<f32>(-1115f, -1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1270f, -1327f), vec2<f32>(-738f, -497f), vec2<bool>(false, true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1762f, 319f), vec2<f32>(1445f, -799f), var_0.zy)), _wgslsmith_div_vec2_f32(vec2<f32>(778f, 1015f), vec2<f32>(191f, 675f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1053f, 755f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 187f), vec2<f32>(-320f, -1096f))))))), !(!var_0.x)));
    global0 = array<Struct_1, 21>();
    let var_2 = Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(35249u, u_input.a.x, 52449u, 22235u), vec4<u32>(47115u, u_input.c.x, 1u, 13459u)), _wgslsmith_add_vec4_u32(vec4<u32>(48875u, u_input.c.x, u_input.d, u_input.c.x), vec4<u32>(0u, 4294967295u, 56830u, u_input.d)), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0, vec4<bool>(var_0.x, false, false, var_0.x))), ~u_input.c), firstTrailingBit(~min(u_input.a.x, 15062u)), ~(~u_input.a.x), max(~1u, abs(min(65211u, 54129u)))), Struct_1(u_input.b, vec4<i32>(u_input.b << (_wgslsmith_mod_u32(0u, u_input.a.x) % 32u), _wgslsmith_div_i32(-u_input.b, countOneBits(u_input.b)), u_input.b, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_div_i32(24400i, u_input.b), _wgslsmith_mod_i32(-19932i, 37280i))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1787f + 434f) + _wgslsmith_div_f32(var_1.x, 619f)), -1000f, _wgslsmith_f_op_f32(-var_1.x)), u_input.d), _wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(1788i, -48214i, u_input.b, u_input.b) >> (u_input.c % vec4<u32>(32u)), ~vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b)), min(~vec4<i32>(u_input.b, u_input.b, -2147483647i, -2147483647i) & -vec4<i32>(u_input.b, -7067i, 1i, -479i), firstTrailingBit(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)) >> (vec4<u32>(u_input.d, u_input.c.x, 10208u, 4294967295u) % vec4<u32>(32u)))), u_input.c.zy, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(228f, 219f), _wgslsmith_f_op_f32(select(-471f, -1276f, false)), var_1.x, _wgslsmith_f_op_f32(round(-624f)))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)))), -343f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(sign(var_1.x))))));
    return var_0.xy;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = select(arg_0, select(!func_3(), !(!vec2<bool>(true, arg_0.x)), arg_0.x), true);
    var var_1 = select(var_0.x, var_0.x, false);
    let var_2 = vec4<bool>(!arg_0.x, arg_0.x, true & !arg_0.x, true);
    var var_3 = var_2.xyy;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(~u_input.c.wzz), u_input.c.ywz), 21u)];
    return global0[_wgslsmith_index_u32(var_4.d, 21u)];
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_0 = select(!select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, any(vec3<bool>(true, false, true))), true), select(vec3<bool>(true, true, true), select(vec3<bool>(u_input.d >= u_input.c.x, all(vec4<bool>(true, true, true, false)), true), vec3<bool>(true, true, true), func_3().x), !vec3<bool>(true, select(false, true, true), true)), select(true, true == (true != (998f != arg_0.b.c.x)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), false))));
    global0 = array<Struct_1, 21>();
    var_0 = vec3<bool>(!any(var_0.xx), var_0.x, _wgslsmith_mult_i32(arg_0.c.x, arg_0.c.x) >= u_input.b);
    return select(select(select(vec3<bool>(all(var_0.yx), var_0.x, !var_0.x), !vec3<bool>(true, var_0.x, true), !any(vec4<bool>(var_0.x, false, true, var_0.x))), select(!select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, false)), !select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, false), vec3<bool>(false, var_0.x, true)), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, true, var_0.x)), vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), false))), !(!var_0.x)), vec3<bool>(var_0.x, var_0.x, true), _wgslsmith_mod_u32(u_input.d, 1u) < ~92970u);
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    var var_0 = -vec3<i32>(_wgslsmith_add_i32(72270i, min(~u_input.b, _wgslsmith_add_i32(u_input.b, 23428i))), -28481i, reverseBits(countOneBits(7199i)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))));
    let var_2 = select(func_4(Struct_2(u_input.c, func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), true), u_input.a.x), abs(vec4<i32>(0i, 1i, u_input.b, 2147483647i)) & ~vec4<i32>(-59492i, 0i, u_input.b, 17904i), ~u_input.a ^ vec2<u32>(0u, 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)))), !select(!func_4(Struct_2(u_input.c, global0[_wgslsmith_index_u32(arg_0.a, 21u)], vec4<i32>(-1i, u_input.b, var_0.x, var_0.x), u_input.a, vec4<f32>(-900f, 518f, arg_1, -326f))), vec3<bool>(true, true, true), !any(vec4<bool>(false, true, true, false))), !(!vec3<bool>(select(true, true, true), true, true)));
    var var_3 = arg_0;
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(min(_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.a, var_3.a, 24406u), min(1u, 2322u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.yx, u_input.a), reverseBits(vec2<u32>(arg_0.a, 34146u)))) & 1u, u_input.c.x), 21u)];
    return Struct_3(_wgslsmith_clamp_u32(arg_0.a, ~(~13820u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, var_3.a, 1u), u_input.c) % 32u)), select((14009u << (arg_0.a % 32u)) << ((u_input.c.x & 4294967295u) % 32u), _wgslsmith_mult_u32(3399u | u_input.c.x, ~24028u), var_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1632f, -1033f, _wgslsmith_f_op_f32(max(1314f, arg_1)), _wgslsmith_f_op_f32(387f - var_4.c.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1058f, arg_1, -422f, -998f) + vec4<f32>(arg_1, arg_0.b.x, -2489f, arg_0.b.x)))) * vec4<f32>(-425f, arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_3.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    let var_0 = !(true || (_wgslsmith_div_i32(~(-2738i), ~u_input.b) > -1i));
    let var_1 = func_1(Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.c.x)), vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.d, u_input.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-708f, 2002f, 169f, -1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(127f, 236f, -1000f, -1311f) - vec4<f32>(-220f, -1457f, 174f, 1441f))) + vec4<f32>(-1537f, _wgslsmith_f_op_f32(-1000f - -1159f), _wgslsmith_f_op_f32(round(-1600f)), _wgslsmith_f_op_f32(step(683f, 107f))))), _wgslsmith_f_op_f32(f32(-1f) * -465f));
    let var_2 = Struct_3(_wgslsmith_mult_u32(~_wgslsmith_add_u32(~u_input.d, 49689u), 1u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.x, 1000f, var_1.b.x, -896f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2553f, var_1.b.x, var_1.b.x, -813f)))), var_1.b)));
    var var_3 = !(!var_0 == var_0);
    global0 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.wz + _wgslsmith_f_op_vec2_f32(-var_1.b.xz)) - var_2.b.xz), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-425f, var_1.b.x)) * _wgslsmith_f_op_f32(sign(1360f))))), var_1.b.x), 1870f, _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), u_input.b << (5715u % 32u), _wgslsmith_add_i32(u_input.b, -4998i), -6956i)), vec4<i32>(~52006i, max(u_input.b, ~u_input.b), 1i, -2147483647i)), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 0i) ^ vec4<i32>(1i, -2147483647i, -60975i, u_input.b), ~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), firstTrailingBit(vec4<i32>(u_input.b, u_input.b, -6082i, 1i) & vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<i32>(_wgslsmith_add_i32(-1i, -35308i), -1i, select(u_input.b, 2147483647i, var_0), u_input.b)));
}

