struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec3<i32>(-21646i, 2147483647i, 2147483647i), vec4<bool>(false, false, true, true), vec2<i32>(i32(-2147483648), 0i), 1u), 31919i, 25229i), Struct_2(Struct_1(vec3<i32>(1i, -1i, -7309i), vec4<bool>(false, false, true, true), vec2<i32>(10690i, -10544i), 1u), 1i, -1i), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -1i, -35062i), vec4<bool>(false, false, false, false), vec2<i32>(28449i, 45769i), 4294967295u), -9026i, 53317i), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec4<bool>(false, true, false, true), vec2<i32>(-2257i, 2147483647i), 78906u), -5434i, -27540i), Struct_2(Struct_1(vec3<i32>(-1i, -16359i, -2408i), vec4<bool>(true, true, true, true), vec2<i32>(12160i, 42528i), 59284u), -3169i, 42854i), Struct_2(Struct_1(vec3<i32>(2147483647i, 16898i, -14413i), vec4<bool>(false, true, false, false), vec2<i32>(1i, -8418i), 0u), 31798i, i32(-2147483648)), Struct_2(Struct_1(vec3<i32>(0i, -16776i, 1i), vec4<bool>(true, false, true, false), vec2<i32>(19488i, i32(-2147483648)), 18457u), -1i, -1i), Struct_2(Struct_1(vec3<i32>(-21498i, -5348i, 3398i), vec4<bool>(false, false, true, false), vec2<i32>(1i, -1i), 4294967295u), 47734i, 0i), Struct_2(Struct_1(vec3<i32>(-1i, 0i, -1i), vec4<bool>(false, true, false, false), vec2<i32>(-28637i, 2147483647i), 4294967295u), 17206i, 2147483647i), Struct_2(Struct_1(vec3<i32>(128557i, 28568i, 0i), vec4<bool>(false, false, true, true), vec2<i32>(1i, 18001i), 25727u), 21288i, 24751i), Struct_2(Struct_1(vec3<i32>(6214i, -26725i, 15659i), vec4<bool>(true, false, false, true), vec2<i32>(1i, 0i), 0u), 10093i, -5257i), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec4<bool>(false, true, true, false), vec2<i32>(0i, 30787i), 1u), -40723i, 0i), Struct_2(Struct_1(vec3<i32>(23594i, -1i, 1i), vec4<bool>(true, true, false, true), vec2<i32>(-1i, -1i), 42697u), 0i, i32(-2147483648)), Struct_2(Struct_1(vec3<i32>(8430i, 0i, -30139i), vec4<bool>(false, false, true, true), vec2<i32>(0i, -784i), 25605u), 2147483647i, 1i), Struct_2(Struct_1(vec3<i32>(50006i, 49219i, 0i), vec4<bool>(true, false, false, false), vec2<i32>(i32(-2147483648), -1i), 59163u), i32(-2147483648), 6710i), Struct_2(Struct_1(vec3<i32>(2147483647i, -18939i, -22814i), vec4<bool>(false, true, false, true), vec2<i32>(28178i, -24287i), 6604u), 1i, -1i), Struct_2(Struct_1(vec3<i32>(-13329i, i32(-2147483648), -10461i), vec4<bool>(true, true, false, false), vec2<i32>(-15764i, i32(-2147483648)), 4821u), i32(-2147483648), 14391i), Struct_2(Struct_1(vec3<i32>(8011i, 2147483647i, -1i), vec4<bool>(true, true, true, false), vec2<i32>(10043i, i32(-2147483648)), 0u), -29529i, -10239i), Struct_2(Struct_1(vec3<i32>(-42132i, 9323i, -72751i), vec4<bool>(false, true, false, false), vec2<i32>(22277i, -1i), 20152u), -43964i, 0i), Struct_2(Struct_1(vec3<i32>(1i, -503i, 45486i), vec4<bool>(true, false, false, true), vec2<i32>(0i, -1i), 35253u), -1i, -1i), Struct_2(Struct_1(vec3<i32>(-8016i, i32(-2147483648), -20118i), vec4<bool>(false, false, false, false), vec2<i32>(-35333i, -12443i), 65539u), 91141i, -5436i), Struct_2(Struct_1(vec3<i32>(13104i, 1i, 1i), vec4<bool>(false, false, true, true), vec2<i32>(0i, 1i), 0u), -23010i, 31818i), Struct_2(Struct_1(vec3<i32>(-21079i, 2147483647i, 2147483647i), vec4<bool>(true, false, false, true), vec2<i32>(-23905i, i32(-2147483648)), 4294967295u), i32(-2147483648), i32(-2147483648)), Struct_2(Struct_1(vec3<i32>(-1i, -1i, i32(-2147483648)), vec4<bool>(false, false, false, true), vec2<i32>(-14162i, -41600i), 4294967295u), 69565i, 17863i), Struct_2(Struct_1(vec3<i32>(12173i, 9498i, 16035i), vec4<bool>(false, true, false, false), vec2<i32>(-1i, -10601i), 9326u), 2147483647i, -61972i), Struct_2(Struct_1(vec3<i32>(1i, 39917i, -2986i), vec4<bool>(true, false, false, false), vec2<i32>(15957i, -3444i), 51004u), -862i, -11133i), Struct_2(Struct_1(vec3<i32>(0i, 1i, -51163i), vec4<bool>(true, false, true, true), vec2<i32>(i32(-2147483648), 32680i), 1u), 2147483647i, -33901i), Struct_2(Struct_1(vec3<i32>(1i, 0i, -1i), vec4<bool>(true, false, true, true), vec2<i32>(1990i, 0i), 4294967295u), i32(-2147483648), i32(-2147483648)), Struct_2(Struct_1(vec3<i32>(1i, 28092i, 15590i), vec4<bool>(true, true, false, true), vec2<i32>(0i, -1i), 1u), 0i, -22189i));

var<private> global1: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>) -> vec4<bool> {
    let var_0 = min(countOneBits(abs(-33201i)), arg_1.x);
    let var_1 = arg_1.x;
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    var var_2 = !arg_0.wx;
    return select(!vec4<bool>(true, all(arg_0.yzy), all(!arg_0.yyw), !(arg_1.x > 1i)), select(vec4<bool>(!arg_0.x, !arg_0.x, true, true && arg_0.x), !select(arg_0, vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_0.x, arg_0.x, false)), select(arg_0, vec4<bool>(!arg_0.x, any(arg_0.xyy), false, true), select(!var_2.x, any(vec2<bool>(arg_0.x, arg_0.x)), arg_0.x))), !arg_0);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    global1 = u_input.a;
    global1 = _wgslsmith_sub_i32(reverseBits(~(-u_input.a)), i32(-1i) * -1i);
    var var_0 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(47960i), u_input.a), u_input.a | 1i, u_input.a), select(func_3(!vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_1), ~vec3<i32>(u_input.a, -14802i, arg_2.c.x)), vec4<bool>(any(arg_2.b.xw), arg_2.b.x, !arg_2.b.x, arg_1 | arg_1), u_input.b >= ~62652u), (vec2<i32>(2147483647i, -1497i) & _wgslsmith_mod_vec2_i32(arg_2.c, arg_2.c)) | ~(-vec2<i32>(2147483647i, 0i)), ~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), arg_3.xz))), -30174i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~(-arg_2.c.x), arg_2.c.x, -u_input.a), _wgslsmith_clamp_i32(32225i, -2147483647i, arg_2.a.x)));
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(~select(~u_input.a, i32(-1i) * -1i, true), 57127i, var_0.c, arg_2.c.x), vec4<i32>(0i, 41964i, 26737i, 16269i));
    var var_2 = vec3<u32>(arg_3.x, ~4294967295u, u_input.c.x);
    return arg_2.b.x;
}

fn func_4(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_i32(~abs(select(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, -46664i)), vec4<i32>(u_input.a, -36881i, -43897i, u_input.a) ^ vec4<i32>(-2147483647i, 1i, 0i, u_input.a), vec4<bool>(arg_0, arg_0, false, arg_0))), vec4<i32>(i32(-1i) * -u_input.a, 25163i, _wgslsmith_div_i32(u_input.a | _wgslsmith_dot_vec2_i32(vec2<i32>(-41059i, -1i), vec2<i32>(-2147483647i, u_input.a)), _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -22386i), vec2<i32>(-29636i, u_input.a)), -1i)), u_input.a));
    global0 = array<Struct_2, 29>();
    var var_1 = 1i;
    global1 = u_input.a | reverseBits(~(-24599i));
    let var_2 = select(var_0.x, ~24103i, all(!(!func_3(vec4<bool>(false, false, true, arg_0), vec3<i32>(var_0.x, u_input.a, u_input.a)).zxz)));
    return Struct_1(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 2693i, 0i), var_0.zzy, select(var_0.zwy, vec3<i32>(-1i, 0i, var_0.x), arg_0))), select(vec4<bool>(any(vec4<bool>(false, false, false, arg_0)), true, true, arg_0), vec4<bool>(arg_0, !(var_0.x != -1i), arg_0, false), true), vec2<i32>(~_wgslsmith_div_i32(-10284i, var_0.x), i32(-1i) * -_wgslsmith_div_i32(u_input.a, 51831i)), u_input.b);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_add_i32(u_input.a, -u_input.a);
    global0 = array<Struct_2, 29>();
    let var_1 = Struct_2(func_4(func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-800f, 795f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) * vec2<f32>(672f, -1030f)))), !any(vec4<bool>(true, false, true, true)), Struct_1(abs(vec3<i32>(u_input.a, 42101i, 28380i)), vec4<bool>(false, false, false, false), vec2<i32>(u_input.a, u_input.a), u_input.c.x), u_input.d)), -2147483647i, abs(0i));
    var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(~(~(~u_input.a)), var_1.c), 0i);
    var_0 = -reverseBits(-var_1.c);
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(32341i, 42324i & var_1.b), -154732i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((vec3<i32>(u_input.a, _wgslsmith_mult_i32(16821i, u_input.a), func_1()) << (_wgslsmith_add_vec3_u32(u_input.c.xyx, ~u_input.c.wxz) % vec3<u32>(32u))) << (u_input.d.wxx % vec3<u32>(32u)), func_4(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-748f, -708f) - vec2<f32>(-1000f, 1129f))), all(func_3(vec4<bool>(true, false, true, true), vec3<i32>(2147483647i, u_input.a, u_input.a)).wwx), func_4(false), vec4<u32>(4294967295u, abs(1u), ~u_input.c.x, 4294967295u))).b, _wgslsmith_sub_vec2_i32(~(~(vec2<i32>(2147483647i, -57923i) ^ vec2<i32>(u_input.a, 40876i))), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -24532i), vec2<i32>(-2147483647i, -2147483647i) ^ vec2<i32>(0i, u_input.a)))), ~0u);
    var var_1 = Struct_2(func_4(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1440f, 334f))), var_0.b.x, var_0, vec4<u32>(34427u << (1u % 32u), var_0.d, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(35134u, 78212u), u_input.d.xz)))), 0i, 13886i);
    global1 = -2147483647i;
    global0 = array<Struct_2, 29>();
    global1 = -83255i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, u_input.a, u_input.c.xyy, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1596f, -734f, -102f, -487f), vec4<f32>(-550f, 1000f, -1922f, -1313f), var_1.a.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2843f, -1819f, 175f, 1010f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-456f, -1000f, 1000f, 760f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-592f, -489f, -1143f, 1455f), vec4<f32>(109f, 610f, 2007f, 446f), vec4<bool>(var_0.b.x, false, var_1.a.b.x, var_0.b.x))))))), (vec3<i32>(-1i) * -var_1.a.a) >> (~select(vec3<u32>(var_0.d, var_0.d, u_input.c.x), vec3<u32>(4294967295u, var_0.d, var_0.d), true) % vec3<u32>(32u)));
}

