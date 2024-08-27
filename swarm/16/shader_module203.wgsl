struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -684f;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, -1i);

var<private> global2: array<Struct_3, 21>;

var<private> global3: array<i32, 10> = array<i32, 10>(216i, -29950i, 2147483647i, i32(-2147483648), -20i, 2147483647i, 13473i, -1i, 0i, -7120i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> f32 {
    return arg_2.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> vec3<i32> {
    global3 = array<i32, 10>();
    global2 = array<Struct_3, 21>();
    global0 = _wgslsmith_f_op_f32(func_3(arg_0, true, global2[_wgslsmith_index_u32(0u, 21u)]));
    var var_0 = Struct_1(arg_0.a, -vec3<i32>(76471i, -_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(55058u, 10u)], arg_0.b.x), -1i), arg_2);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1322f, -774f) - vec2<f32>(116f, 218f)) + vec2<f32>(620f, -627f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1792f, 140f))))));
    return arg_2.xyw;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: bool) -> vec4<bool> {
    let var_0 = Struct_2(~_wgslsmith_add_u32(_wgslsmith_mult_u32(~14307u, u_input.c.x), 19552u), Struct_1(vec3<u32>(1u, 1u, firstLeadingBit(u_input.c.x)), reverseBits(arg_1), _wgslsmith_clamp_vec4_i32(abs(firstLeadingBit(vec4<i32>(34589i, arg_1.x, 29810i, global3[_wgslsmith_index_u32(15548u, 10u)]))), vec4<i32>(global3[_wgslsmith_index_u32(abs(36799u), 10u)], _wgslsmith_dot_vec2_i32(vec2<i32>(18109i, -35289i), arg_1.xy), -7332i, _wgslsmith_div_i32(1i, -1i)), vec4<i32>(~14125i, -global3[_wgslsmith_index_u32(u_input.c.x, 10u)], -671i, 51965i))), Struct_1(~max(reverseBits(u_input.c.yxy), ~u_input.c.zyy), abs(vec3<i32>(u_input.b, 2147483647i, 2147483647i) & (arg_1 & arg_1)), countOneBits(vec4<i32>(~u_input.b, global1.x & u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(32046i, u_input.a, -1i, 12112i), vec4<i32>(global1.x, -1i, u_input.b, global3[_wgslsmith_index_u32(81662u, 10u)])), max(-37918i, 24302i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1910f, -383f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1378f, -1324f)), vec2<bool>(true, false))), vec2<f32>(-1678f, -996f)))));
    global0 = var_0.d.x;
    return vec4<bool>(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 54884u, 35019u, var_0.b.a.x) << (u_input.c % vec4<u32>(32u)), u_input.c), _wgslsmith_dot_vec3_u32(var_0.b.a, u_input.c.zyz)) == var_0.a, !(-1437f != var_0.d.x), false, arg_2);
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = ~abs(u_input.c.xx);
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(~0u, 59213u), vec2<u32>(~0u, 1u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f))));
    var var_2 = Struct_3(vec4<bool>(!arg_2.x, !(!arg_1) & select(!arg_2.x, !arg_2.x, func_4(arg_1, vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(31192u, 10u)], global3[_wgslsmith_index_u32(948u, 10u)]), arg_2.x).x), true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(406f)), 1189f, -646f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -1000f, -1447f), _wgslsmith_div_vec3_f32(vec3<f32>(-239f, -2115f, 926f), vec3<f32>(-1539f, 226f, 774f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - _wgslsmith_f_op_f32(568f * 690f)), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-582f * 2218f))), -1000f)), u_input.c, u_input.c.x, true);
    global2 = array<Struct_3, 21>();
    return Struct_1(vec3<u32>(4294967295u, ~_wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(6606u, arg_0)), 1u) >> (var_2.c.wxx % vec3<u32>(32u)), -vec3<i32>(1i, u_input.b, max(_wgslsmith_add_i32(global1.x, 19866i), select(-32025i, -42728i, false))), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(-17235i, abs(global1.x), ~u_input.a, global3[_wgslsmith_index_u32(var_1.x, 10u)]), abs(vec4<i32>(-2147483647i, u_input.a, u_input.a, global1.x)))));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: vec2<f32>) -> Struct_1 {
    global2 = array<Struct_3, 21>();
    global3 = array<i32, 10>();
    let var_0 = func_5(arg_0.a.c.x, !all(func_4(true, func_2(Struct_1(vec3<u32>(arg_0.a.c.x, 4294967295u, 4294967295u), vec3<i32>(1i, 1i, global3[_wgslsmith_index_u32(arg_0.a.c.x, 10u)]), vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 1i)), global3[_wgslsmith_index_u32(arg_0.a.c.x, 10u)], vec4<i32>(u_input.a, -16063i, global1.x, u_input.b)), arg_0.a.a.x)), arg_0.a.a.zwy);
    var var_1 = abs(-min(var_0.c.xzy, firstLeadingBit(-vec3<i32>(u_input.b, -2147483647i, 1i))));
    global3 = array<i32, 10>();
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(515f)), _wgslsmith_f_op_f32(f32(-1f) * -641f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1070f), _wgslsmith_f_op_f32(max(-1041f, 1488f)))))))));
    global2 = array<Struct_3, 21>();
    global3 = array<i32, 10>();
    var var_0 = _wgslsmith_f_op_f32(-156f + -1946f);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-243f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(563f - 805f), _wgslsmith_f_op_f32(922f + -787f), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-747f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1717f, 1000f, -1549f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-239f, 1087f, -181f) - vec3<f32>(1000f, -1068f, -1000f)), vec3<bool>(false, true, true)))))));
    return -2727i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(-(~(~(-vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(17236u, 10u)], -10397i)))), -vec3<i32>(func_6(Struct_1(vec3<u32>(57690u, 4294967295u, u_input.c.x), vec3<i32>(0i, u_input.b, u_input.b), vec4<i32>(45042i, 0i, global1.x, -45224i)), func_1(Struct_4(Struct_3(vec4<bool>(true, false, true, true), vec3<f32>(903f, -277f, -1196f), vec4<u32>(4294967295u, 28521u, u_input.c.x, u_input.c.x), u_input.c.x, false)), vec2<f32>(294f, 612f), vec4<f32>(-869f, -177f, -396f, 167f), vec2<f32>(503f, -406f))), ~1i, 0i));
    var var_1 = (-(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, 34487i), var_0.zx) << (~u_input.c.zz % vec2<u32>(32u))) & -var_0.xx) >> (vec2<u32>(~u_input.c.x, 75750u) % vec2<u32>(32u));
    let var_2 = u_input.c.x;
    let var_3 = Struct_4(Struct_3(vec4<bool>(true, true, true, !func_4(true, vec3<i32>(-1i, global3[_wgslsmith_index_u32(u_input.c.x, 10u)], -30819i), true).x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(416f, -918f, -576f)), vec3<f32>(573f, -116f, -1305f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-688f, 387f, 1000f)))))), ~(~(~u_input.c)), _wgslsmith_div_u32(max(~u_input.c.x, func_5(45967u, false, vec3<bool>(false, true, true)).a.x), 0u), true));
    let var_4 = var_3.a;
    var var_5 = func_5(22765u, var_3.a.a.x, func_4(true, ~(func_1(var_3, var_3.a.b.zy, vec4<f32>(var_3.a.b.x, var_4.b.x, -342f, var_3.a.b.x), vec2<f32>(var_3.a.b.x, var_4.b.x)).b << (~u_input.c.wzy % vec3<u32>(32u))), true).wwx).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_add_u32(1u, var_4.c.x & 83528u), ~33547u, 23973u), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(70897u, 20260u, u_input.c.x, var_3.a.c.x), var_4.c)) >> (vec4<u32>(var_4.c.x ^ var_3.a.d, firstLeadingBit(0u), ~1u, 74150u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-var_3.a.b.x), vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(var_1.x, 0i)), var_0.zy), countOneBits(-1i)), max(0u, 4294967295u ^ var_4.d));
}

