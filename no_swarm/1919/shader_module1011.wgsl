struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> u32 {
    global0 = array<Struct_4, 27>();
    let var_0 = arg_1;
    let var_1 = vec2<u32>(15834u, arg_0.x);
    global0 = array<Struct_4, 27>();
    global0 = array<Struct_4, 27>();
    return reverseBits(~var_1.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = arg_0;
    global0 = array<Struct_4, 27>();
    global0 = array<Struct_4, 27>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.c.yyy)), arg_0.e.c.zyy);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.d.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.e.x)), _wgslsmith_f_op_f32(round(1460f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1819f)), 491f)))));
    return ~(var_0.d.a | firstLeadingBit(countOneBits(~u_input.a)));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: bool) -> Struct_1 {
    global0 = array<Struct_4, 27>();
    var var_0 = _wgslsmith_f_op_f32(round(-107f));
    global0 = array<Struct_4, 27>();
    let var_1 = func_4(Struct_2(vec2<i32>(arg_1.x, ~arg_1.x), vec3<bool>(any(vec3<bool>(arg_2, true, true)), any(select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(true, arg_2, true), false)), true), 30110u, Struct_1(func_3(abs(vec2<u32>(u_input.a, 14573u)), 5023i), any(!vec2<bool>(true, arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -204f, arg_0, arg_0)), ~44956i == arg_1.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 291f, arg_0), vec3<f32>(-700f, arg_0, -478f))))), Struct_1(~u_input.a, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-364f, -234f, arg_0, arg_0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(525f, 236f, -1666f, 1000f))), arg_2, vec3<f32>(arg_0, -603f, _wgslsmith_f_op_f32(arg_0 * -1000f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0) * vec2<f32>(arg_0, arg_0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -579f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-824f, 1000f) * vec2<f32>(arg_0, 901f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1191f, _wgslsmith_f_op_f32(-852f * arg_0)))))), Struct_1(_wgslsmith_sub_u32(~func_3(vec2<u32>(22306u, 1u), 0i), 4294967295u), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 1000f, arg_0, arg_0), vec4<f32>(-2035f, arg_0, -115f, -758f), vec4<bool>(arg_2, false, arg_2, arg_2))), vec4<f32>(arg_0, arg_0, 331f, 506f), select(true, true, true))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, -1000f, -442f, arg_0)))), arg_2, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(456f, arg_0, 770f))))))));
    global0 = array<Struct_4, 27>();
    return Struct_1(~(_wgslsmith_mod_u32(u_input.b, func_3(vec2<u32>(1u, 1u), -20671i)) << (firstLeadingBit(u_input.a) % 32u)), any(!(!vec3<bool>(false, arg_2, arg_2))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -734f))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0)), -1120f, _wgslsmith_f_op_f32(arg_0 * -707f), arg_0), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -481f)), vec4<f32>(arg_0, arg_0, arg_0, arg_0)))))), false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, arg_0, 393f), vec3<f32>(798f, arg_0, arg_0))), vec3<f32>(arg_0, -470f, -490f), select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, false, false))))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(192f * arg_0)))));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = func_2(-779f, arg_1.a, false);
    let var_1 = 0i;
    var var_2 = global0[_wgslsmith_index_u32(3270u, 27u)];
    let var_3 = var_2.d.c;
    var var_4 = false;
    return var_2.e.d;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_mod_u32(u_input.b, min(arg_2.a, ~4294967295u)), arg_2.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.e.x, -664f, arg_2.e.x, -1053f))), func_2(_wgslsmith_f_op_f32(min(arg_0.x, 1000f)), vec2<i32>(arg_1.x, 1i), true).c), arg_2.b, _wgslsmith_f_op_vec3_f32(arg_0.wzx - vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_2.c.x + 711f), 1378f))), Struct_3(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1155f, 314f)), _wgslsmith_f_op_f32(floor(469f))), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -43138i), _wgslsmith_add_vec2_i32(vec2<i32>(-38476i, -13603i), vec2<i32>(arg_1.x, 19828i))), all(select(vec4<bool>(false, arg_2.d, arg_2.b, true), vec4<bool>(true, arg_2.b, arg_2.b, false), arg_2.b))), ~vec4<i32>(22852i, -arg_1.x, _wgslsmith_div_i32(arg_1.x, arg_1.x), select(2147483647i, 1i, arg_2.d)), Struct_2(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_1.zw, arg_1.ww), -2147483647i), !select(vec3<bool>(arg_2.b, true, arg_2.d), vec3<bool>(arg_2.d, arg_2.d, false), arg_2.d), func_4(Struct_2(vec2<i32>(1i, -1i), vec3<bool>(false, arg_2.b, false), 0u, arg_2, arg_2), vec2<f32>(1f, 1f), Struct_1(0u, arg_2.d, arg_2.c, true, vec3<f32>(arg_0.x, -322f, -968f))), arg_2, Struct_1(~u_input.b, all(vec3<bool>(true, arg_2.b, false)), _wgslsmith_f_op_vec4_f32(arg_2.c + arg_2.c), true, vec3<f32>(819f, -520f, 274f))), arg_1.x), arg_2, Struct_3(arg_2, firstTrailingBit(-arg_1), Struct_2(vec2<i32>(-1i) * -arg_1.yz, vec3<bool>(true, true, true), ~arg_2.a, Struct_1(~4294967295u, arg_2.d, _wgslsmith_f_op_vec4_f32(floor(arg_2.c)), u_input.a < 39522u, arg_0.zxy), Struct_1(arg_2.a, arg_2.d, vec4<f32>(arg_0.x, arg_2.c.x, -457f, arg_0.x), true | arg_2.b, _wgslsmith_f_op_vec3_f32(arg_0.yyy * vec3<f32>(-1421f, arg_0.x, 760f)))), min(arg_1.x | (i32(-1i) * -2147483647i), 18107i)), Struct_2(arg_1.wx, select(vec3<bool>(true, true, !arg_2.d), vec3<bool>(2147483647i != arg_1.x, arg_2.b, true), arg_2.b), ~min(_wgslsmith_mult_u32(u_input.a, u_input.b), ~17006u), func_1(true, Struct_2(arg_1.zz, !vec3<bool>(arg_2.d, true, arg_2.d), u_input.a, func_2(163f, arg_1.xy, arg_2.d), func_1(arg_2.d, Struct_2(arg_1.zz, vec3<bool>(false, arg_2.d, false), 17208u, Struct_1(arg_2.a, false, arg_0, arg_2.d, arg_2.e), arg_2)))), arg_2));
    global0 = array<Struct_4, 27>();
    global0 = array<Struct_4, 27>();
    var var_1 = ~func_1(!(!arg_2.b), var_0.d.c).a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    return Struct_1(firstTrailingBit(4294967295u), arg_2.a >= _wgslsmith_dot_vec2_u32(vec2<u32>(46195u, 53046u), firstTrailingBit(vec2<u32>(4294967295u, 1539u))), arg_2.c, !all(select(!var_0.e.b, select(var_0.e.b, var_0.b.c.b, vec3<bool>(true, false, arg_2.d)), u_input.a >= arg_2.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-361f * -1000f)), 1265f, _wgslsmith_f_op_f32(f32(-1f) * -752f)));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_4) -> bool {
    var var_0 = ~6517u;
    global0 = array<Struct_4, 27>();
    global0 = array<Struct_4, 27>();
    let var_1 = arg_2.d;
    var var_2 = false;
    return select(!(!(var_1.b.x < min(arg_2.e.a.x, 2147483647i))), arg_0.e.x != 1919f, 9745u < _wgslsmith_clamp_u32(~arg_0.a ^ (19234u >> (arg_0.a % 32u)), reverseBits(arg_0.a), arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (select(~(~53747u), u_input.b, true) > 13723u) == !func_6(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(502f, -104f, 500f, 302f) * vec4<f32>(-1024f, 455f, 673f, 663f)), -vec4<i32>(31077i, 1i, -2147483647i, -1i), func_1(false, Struct_2(vec2<i32>(0i, 2147483647i), vec3<bool>(false, false, true), 11016u, Struct_1(u_input.a, true, vec4<f32>(-623f, -767f, -655f, 661f), true, vec3<f32>(-898f, 194f, 1732f)), Struct_1(1u, false, vec4<f32>(-488f, 1559f, 143f, -184f), true, vec3<f32>(-331f, 465f, 621f))))), vec2<bool>(true, true), Struct_4(Struct_1(u_input.b, true, vec4<f32>(1000f, 243f, -1171f, -1897f), false, vec3<f32>(256f, -743f, -1437f)), Struct_3(Struct_1(u_input.b, true, vec4<f32>(576f, -1000f, 2679f, 948f), false, vec3<f32>(1001f, -1051f, -220f)), vec4<i32>(-2147483647i, 2147483647i, -1i, -3755i), Struct_2(vec2<i32>(12163i, -1i), vec3<bool>(true, true, true), 35209u, Struct_1(1u, true, vec4<f32>(-635f, -1696f, -543f, 691f), true, vec3<f32>(504f, -1400f, 260f)), Struct_1(0u, false, vec4<f32>(148f, 100f, -639f, -295f), false, vec3<f32>(-706f, -259f, -311f))), -6398i), func_5(vec4<f32>(371f, 2164f, -502f, 2238f), vec4<i32>(12039i, 19430i, 23631i, -1i), Struct_1(0u, true, vec4<f32>(192f, -329f, 335f, 1202f), true, vec3<f32>(-256f, -581f, -1769f))), Struct_3(Struct_1(u_input.a, false, vec4<f32>(-1654f, -116f, -1779f, -299f), false, vec3<f32>(1234f, 929f, -977f)), vec4<i32>(19653i, -1i, -1i, -21536i), Struct_2(vec2<i32>(1i, 2147483647i), vec3<bool>(false, false, false), 25865u, Struct_1(1u, true, vec4<f32>(436f, -491f, -1126f, -475f), false, vec3<f32>(-1000f, -1339f, 1399f)), Struct_1(0u, true, vec4<f32>(-1000f, 443f, 315f, 490f), false, vec3<f32>(2064f, -134f, 966f))), 10622i), Struct_2(vec2<i32>(1i, -954i), vec3<bool>(true, false, true), 0u, Struct_1(1u, true, vec4<f32>(-1465f, 1263f, -1051f, -676f), false, vec3<f32>(571f, 1304f, 434f)), Struct_1(1u, true, vec4<f32>(-403f, -493f, -364f, -1266f), false, vec3<f32>(552f, 323f, 1000f)))));
    let var_1 = func_1(false, Struct_2(-vec2<i32>(~90012i, -23090i), vec3<bool>(22833u < abs(u_input.b), all(vec4<bool>(false, true, var_0, var_0)), !any(vec4<bool>(true, var_0, true, var_0))), 19659u << (u_input.a % 32u), Struct_1(u_input.a, true, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1259f, 1105f, -1406f, -1387f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-483f, 1339f, 1339f, 963f)))), true, vec3<f32>(_wgslsmith_f_op_f32(abs(507f)), _wgslsmith_f_op_f32(f32(-1f) * -174f), _wgslsmith_f_op_f32(-713f * 1000f))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-440f, 318f, var_0)) + _wgslsmith_f_op_f32(-757f * -1000f)), ~vec2<i32>(1i, 1i), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_5(_wgslsmith_f_op_vec4_f32(-var_1.c), abs(vec4<i32>(2147483647i, -1i, 1i, -3144i)), var_1).c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -894f) * var_1.e.x))), vec2<f32>(201f, _wgslsmith_div_f32(-731f, var_1.e.x)), select(_wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, var_1.a, u_input.a), vec3<u32>(4294967295u, u_input.b, u_input.b)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 1u, 49346u), ~vec3<u32>(4294967295u, 14282u, 16156u))), vec3<u32>(reverseBits(51145u), 4294967295u, ~4294967295u), !all(!vec4<bool>(true, false, true, var_0))), firstTrailingBit(~(~(~vec3<i32>(-13060i, -10521i, -11930i)))));
}

