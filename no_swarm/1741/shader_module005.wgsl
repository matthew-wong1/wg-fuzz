struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> vec2<u32> {
    let var_0 = u_input.d.x;
    return select(vec2<u32>(select(24220u, 1601u, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), _wgslsmith_mult_u32(u_input.a.x, ~4294967295u) << (63538u % 32u)), vec2<u32>(u_input.a.x, u_input.a.x), true);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    var var_0 = arg_1.c;
    var_0 = arg_1.c;
    var_0 = arg_1.e;
    var_0 = arg_1.e;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1.b.e, arg_1.c.e, _wgslsmith_div_f32(1016f, -830f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.e, 1000f, arg_1.e.e, arg_1.b.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.e, arg_1.c.e, var_0.e, arg_1.c.e) * vec4<f32>(var_0.e, 180f, var_0.e, -1477f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.e.e, arg_1.b.e, 575f, var_0.e))))))))));
    return Struct_3(!select(select(!arg_0.a, vec4<bool>(true, true, true, true), arg_0.a), vec4<bool>(arg_0.a.x, arg_2 | arg_2, 49999u >= arg_1.c.d.x, true), vec4<bool>(arg_2, arg_2 | arg_2, true, arg_2)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = arg_1.a.x;
    var_0 = arg_0.x;
    var var_1 = u_input.a;
    let var_2 = 0i << (~(~u_input.a.x) % 32u);
    var_0 = all(select(!arg_0, select(arg_0, func_2(Struct_3(vec4<bool>(true, true, arg_0.x, true)), Struct_2(vec3<u32>(u_input.a.x, 1u, 19682u), Struct_1(arg_2.yx, vec2<i32>(var_2, 0i), arg_2, vec4<u32>(0u, 15724u, var_1.x, var_1.x), 1000f), Struct_1(vec2<u32>(1u, 32874u), u_input.d.zy, vec3<u32>(32733u, var_1.x, arg_2.x), vec4<u32>(65429u, 34993u, var_1.x, 45597u), -202f), 1u, Struct_1(arg_2.xy, vec2<i32>(1i, u_input.b), arg_2, vec4<u32>(u_input.a.x, var_1.x, 1u, 114498u), -254f)), true).a.ywx, arg_1.a.x), !select(!arg_0.x, true, true)));
    return Struct_1(arg_2.yy, ~select(vec2<i32>(u_input.d.x & 1i, u_input.b & -1i), u_input.d.yy, !(!vec2<bool>(true, arg_0.x))), arg_2, vec4<u32>(1u, arg_2.x << (~arg_2.x % 32u), u_input.a.x, firstLeadingBit(u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(-706f + 1089f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>) -> vec3<u32> {
    let var_0 = arg_1;
    return ~_wgslsmith_add_vec3_u32(vec3<u32>(51236u, ~min(52259u, 0u), 16596u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.c.x, ~arg_1.e.a.x, _wgslsmith_dot_vec3_u32(var_0.b.c, vec3<u32>(14367u, var_0.c.a.x, 0u))), arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(140f, -477f, 489f, -919f) - vec4<f32>(-224f, -1368f, -1323f, -1022f))))))));
    let var_1 = Struct_1(~vec2<u32>(select(reverseBits(28320u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(32032u, 0u, 34973u, u_input.a.x)), true), abs(u_input.a.x)), -vec2<i32>(u_input.d.x, firstTrailingBit(u_input.c.x) >> (u_input.a.x % 32u)), func_4(Struct_1(func_1(), -u_input.d.xx, (vec3<u32>(u_input.a.x, 87115u, 29025u) | vec3<u32>(u_input.a.x, 0u, 0u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(14805u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 17946u, 76378u)) % vec3<u32>(32u)), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) << (reverseBits(vec4<u32>(0u, u_input.a.x, u_input.a.x, 53953u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))), Struct_2(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 37015u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 11289u, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x))), Struct_1(u_input.a, u_input.c, ~vec3<u32>(1u, 4294967295u, 4294967295u), min(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 37670u, u_input.a.x)), var_0.x), func_3(vec3<bool>(true, true, true), func_2(Struct_3(vec4<bool>(true, false, true, false)), Struct_2(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), u_input.d.yy, vec3<u32>(u_input.a.x, 4294967295u, 72083u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), -526f), Struct_1(vec2<u32>(u_input.a.x, 42140u), u_input.c, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 57249u, 4294967295u, u_input.a.x), 1000f), 0u, Struct_1(u_input.a, u_input.c, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(32508u, 1u, 4294967295u, u_input.a.x), -1213f)), false), ~vec3<u32>(15350u, u_input.a.x, 4294967295u)), ~0u, func_3(vec3<bool>(false, false, true), Struct_3(vec4<bool>(false, false, false, true)), vec3<u32>(u_input.a.x, 1u, 44362u) & vec3<u32>(18760u, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(var_0.x + 1387f), _wgslsmith_f_op_f32(var_0.x * var_0.x)))), vec4<u32>(func_1().x, 4294967295u, 16816u, u_input.a.x), -1294f);
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(741f, var_0.x, 1550f, var_0.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(549f, var_1.e, var_0.x, var_1.e), vec4<f32>(1000f, var_0.x, var_0.x, var_1.e), vec4<bool>(true, true, true, false)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.e, var_0.x, -2411f, 1018f), vec4<f32>(510f, var_0.x, -335f, 1268f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -1778f, -1000f, var_1.e)))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(915f * var_1.e)), _wgslsmith_div_f32(var_0.x, var_1.e), _wgslsmith_f_op_f32(874f + var_1.e), -368f) - vec4<f32>(func_3(select(func_2(Struct_3(vec4<bool>(true, true, true, false)), Struct_2(var_1.c, var_1, Struct_1(var_1.a, u_input.c, var_1.c, var_1.d, -1000f), var_1.a.x, var_1), false).a.wxz, vec3<bool>(false, true, true), vec3<bool>(true, true, true)), func_2(func_2(Struct_3(vec4<bool>(true, true, true, true)), Struct_2(vec3<u32>(u_input.a.x, 55478u, u_input.a.x), var_1, Struct_1(var_1.c.xy, vec2<i32>(20543i, var_1.b.x), vec3<u32>(var_1.a.x, var_1.a.x, 0u), vec4<u32>(var_1.c.x, var_1.c.x, var_1.a.x, var_1.c.x), -363f), var_1.a.x, var_1), true), Struct_2(vec3<u32>(u_input.a.x, 37626u, 92307u), var_1, Struct_1(vec2<u32>(u_input.a.x, var_1.c.x), vec2<i32>(var_1.b.x, 46225i), vec3<u32>(4294967295u, var_1.d.x, 48312u), var_1.d, -2796f), u_input.a.x, Struct_1(vec2<u32>(4294967295u, u_input.a.x), var_1.b, vec3<u32>(u_input.a.x, 4213u, 29253u), vec4<u32>(4294967295u, 39538u, 0u, 57743u), var_1.e)), var_0.x < var_0.x), ~func_4(var_1, Struct_2(var_1.d.yxx, var_1, Struct_1(u_input.a, u_input.d.yx, vec3<u32>(var_1.a.x, u_input.a.x, 50604u), var_1.d, -202f), 19438u, var_1), var_0.xzy)).e, 721f, 211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-122f + var_1.e))))));
    var var_2 = vec3<i32>(~min(16311i, -max(var_1.b.x, 0i)), 39232i, var_1.b.x);
    var_2 = select(vec3<i32>(var_2.x, abs(var_1.b.x) << (~18740u % 32u), 30189i), min(vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.b, vec2<i32>(var_2.x, -12236i)), reverseBits(var_1.b.x), _wgslsmith_add_i32(var_2.x, var_1.b.x)), u_input.d), any(func_2(func_2(Struct_3(vec4<bool>(true, true, false, true)), Struct_2(var_1.d.yzx, Struct_1(var_1.a, vec2<i32>(var_2.x, 2147483647i), var_1.c, var_1.d, var_1.e), var_1, u_input.a.x, Struct_1(u_input.a, vec2<i32>(-26639i, -14534i), var_1.c, var_1.d, -646f)), false), Struct_2(vec3<u32>(79818u, var_1.c.x, var_1.d.x), var_1, var_1, 4294967295u, var_1), true).a.zyw)) & vec3<i32>(_wgslsmith_sub_i32(-41857i, var_1.b.x | var_2.x), _wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, -1i), vec2<i32>(-32019i, var_1.b.x) & vec2<i32>(var_2.x, u_input.b))), var_2.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.e + -894f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.e)) - _wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zz), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.x)))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-440f + var_1.e)))));
    var_2 = ~vec3<i32>(-14015i, var_2.x, var_2.x);
    var var_4 = _wgslsmith_add_vec4_i32((_wgslsmith_add_vec4_i32(-vec4<i32>(var_1.b.x, -52351i, 8329i, -2147483647i), vec4<i32>(-41191i, var_2.x, -27176i, 0i)) >> (var_1.d % vec4<u32>(32u))) & abs(vec4<i32>(1i, _wgslsmith_mult_i32(var_1.b.x, -14230i), _wgslsmith_add_i32(-26804i, var_1.b.x), _wgslsmith_sub_i32(2147483647i, var_2.x))), vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(select(vec4<i32>(var_2.x, var_1.b.x, 7549i, -16145i), vec4<i32>(var_1.b.x, var_2.x, 39840i, u_input.b), true), vec4<i32>(-33098i, -18535i, u_input.b, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec3_u32(~(~var_1.d.wzx), reverseBits(var_1.c))), var_4.xxy, reverseBits(u_input.c.x));
}

