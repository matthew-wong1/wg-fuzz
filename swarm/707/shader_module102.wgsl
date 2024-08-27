struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_1(-1i, vec3<i32>(0i, 2147483647i, 1i), 0u), vec3<f32>(803f, 1053f, 761f), true), Struct_3(Struct_1(-25162i, vec3<i32>(-1i, 26705i, 1i), 0u), vec3<f32>(229f, -621f, -1523f), false), Struct_3(Struct_1(i32(-2147483648), vec3<i32>(-47039i, 10358i, 2147483647i), 1u), vec3<f32>(1827f, -247f, 1000f), true), Struct_3(Struct_1(-1i, vec3<i32>(76056i, 31276i, 0i), 24825u), vec3<f32>(257f, -1289f, 332f), true), Struct_3(Struct_1(2147483647i, vec3<i32>(-1i, 2147483647i, -1i), 43353u), vec3<f32>(776f, -1167f, -117f), true), Struct_3(Struct_1(42023i, vec3<i32>(999i, 1i, 1i), 1u), vec3<f32>(-178f, -717f, 1000f), true), Struct_3(Struct_1(i32(-2147483648), vec3<i32>(0i, 39133i, -1i), 46737u), vec3<f32>(-140f, -164f, -1001f), true), Struct_3(Struct_1(1i, vec3<i32>(0i, 2147483647i, 4837i), 37722u), vec3<f32>(-264f, 1342f, -1749f), true), Struct_3(Struct_1(33043i, vec3<i32>(i32(-2147483648), -63585i, 45618i), 0u), vec3<f32>(443f, -1000f, 618f), true), Struct_3(Struct_1(1i, vec3<i32>(1112i, 2147483647i, -39226i), 4294967295u), vec3<f32>(-131f, 929f, 1917f), false), Struct_3(Struct_1(51515i, vec3<i32>(24878i, 27204i, 3328i), 4294967295u), vec3<f32>(750f, 3945f, 285f), true), Struct_3(Struct_1(16381i, vec3<i32>(27510i, -28895i, -65077i), 49045u), vec3<f32>(-1707f, 874f, -622f), true), Struct_3(Struct_1(2147483647i, vec3<i32>(597i, 1i, 2147483647i), 40088u), vec3<f32>(-1388f, -597f, 686f), false), Struct_3(Struct_1(36790i, vec3<i32>(-4910i, -1i, -8235i), 51282u), vec3<f32>(-1589f, 1000f, -855f), false), Struct_3(Struct_1(-17751i, vec3<i32>(56174i, i32(-2147483648), 0i), 4294967295u), vec3<f32>(2076f, 205f, -185f), true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(117f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(f32(-1f) * -505f))))));
    global0 = array<Struct_3, 15>();
    var var_1 = -_wgslsmith_sub_i32(firstLeadingBit(1i), -12551i);
    var var_2 = Struct_4(Struct_1(-(~_wgslsmith_clamp_i32(-29100i, 2147483647i, 49688i)), vec3<i32>(-2147483647i, -(i32(-1i) * -2147483647i), -1i), 22798u >> (0u % 32u)), !vec3<bool>(any(arg_0), all(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, false), true)), true), _wgslsmith_mod_i32(-(~(-10955i)) << (select(~0u, u_input.a.x, arg_0.x) % 32u), -1i));
    global0 = array<Struct_3, 15>();
    return select(var_2.b, var_2.b, any(select(!vec3<bool>(true, var_2.b.x, false), select(vec3<bool>(true, true, var_2.b.x), var_2.b, any(var_2.b)), arg_0.x)));
}

fn func_2() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(23452u, 15u)];
    global0 = array<Struct_3, 15>();
    global0 = array<Struct_3, 15>();
    var var_1 = !(!func_3(!vec2<bool>(var_0.c, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(382f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(var_0.b.zz - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(701f - 826f))), 1f))));
    return ~(-(~var_0.a.b.x ^ abs(_wgslsmith_mod_i32(var_0.a.a, -6218i))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(-1000f));
    var var_1 = all(arg_1.b.yx);
    var var_2 = Struct_5(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.c, _wgslsmith_add_i32(func_2(), min(-1i, -52346i)), firstLeadingBit(arg_1.c)), firstTrailingBit(firstTrailingBit(firstLeadingBit(vec3<i32>(arg_1.c, -1i, arg_1.a.b.x))))), vec4<bool>(!arg_1.b.x, any(vec2<bool>(true, func_3(vec2<bool>(arg_1.b.x, arg_1.b.x), 781f).x)), true, arg_1.a.c > arg_0.x), 130f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(500f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1705f - -632f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-258f + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -538f) * 902f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-586f, _wgslsmith_f_op_f32(abs(-613f)))), _wgslsmith_f_op_f32(ceil(-492f)))))));
    var_1 = var_2.b.x;
    let var_3 = arg_1;
    return var_3.a;
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = array<Struct_3, 15>();
    global0 = array<Struct_3, 15>();
    return arg_0.a;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global0 = array<Struct_3, 15>();
    global0 = array<Struct_3, 15>();
    var var_0 = any(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), false))));
    global0 = array<Struct_3, 15>();
    global0 = array<Struct_3, 15>();
    return Struct_2(!func_3(vec2<bool>(true, true), _wgslsmith_f_op_f32(-191f - 1000f)).x, func_4(Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-695f, -218f, 497f) + vec3<f32>(-600f, -399f, 762f)))), true || any(vec3<bool>(true, true, true)))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_0.c, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), arg_0.c, ~u_input.c >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 101830u, u_input.b.x, u_input.a.x), vec4<u32>(u_input.b.x, 69188u, arg_0.c, u_input.b.x)) % 32u), ~(~1u)), reverseBits(u_input.b)), -arg_0.b.zx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 15>();
    let var_0 = -1i;
    var var_1 = ~firstLeadingBit(vec3<u32>(~6204u, select(u_input.b.x, u_input.a.x, true), abs(5044u)) ^ ~(~u_input.b.zzz));
    global0 = array<Struct_3, 15>();
    var var_2 = firstTrailingBit(-(var_0 & var_0));
    var var_3 = ~(~((98515u & var_1.x) ^ 43061u) << (~0u % 32u));
    var var_4 = func_5(func_4(Struct_3(func_1(~var_1.xz, Struct_4(Struct_1(-12897i, vec3<i32>(var_0, 1i, 2147483647i), var_1.x), vec3<bool>(false, false, false), var_0)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1984f, 561f, -466f))), true)));
    var var_5 = Struct_1(func_1(~func_5(func_1(u_input.b.xw, Struct_4(var_4.b, vec3<bool>(false, true, var_4.a), 16990i))).c.xw, Struct_4(Struct_1(~var_4.b.b.x, vec3<i32>(-12357i, var_0, var_0) ^ var_4.b.b, ~u_input.c), vec3<bool>(true, 100286u < var_1.x, !var_4.a), -max(-60651i, -33774i))).b.x, -var_4.b.b | max(vec3<i32>(select(var_4.d.x, 2147483647i, var_4.a), func_4(global0[_wgslsmith_index_u32(var_1.x, 15u)]).a, 2147483647i >> (u_input.a.x % 32u)), -var_4.b.b), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1013f, 642f, 2045f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1943f, 761f, -960f), vec3<f32>(558f, 472f, -524f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1372f, 266f, -339f) * vec3<f32>(-567f, -1344f, 172f))))))));
}

