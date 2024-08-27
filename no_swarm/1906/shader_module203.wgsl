struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(-24718i, 0i, 2147483647i, -17463i), 31303i, vec2<f32>(-1863f, -802f), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(37130i, -9665i, 2147483647i, -41217i), -48802i, vec2<f32>(1000f, -760f), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(8023i, 1442i, -210i, 7120i), -18939i, vec2<f32>(624f, 106f), vec3<bool>(true, true, true)), Struct_1(vec4<i32>(0i, 0i, 1929i, -22428i), 2147483647i, vec2<f32>(1688f, 223f), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(0i, -12799i, -49072i, -63616i), 0i, vec2<f32>(-928f, -1189f), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(26099i, i32(-2147483648), 0i, -3584i), 1i, vec2<f32>(3409f, -601f), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-1i, 11689i, 1i, 11017i), 68465i, vec2<f32>(-865f, -1016f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(-31451i, 2147483647i, -1i, 0i), 0i, vec2<f32>(-1000f, 924f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(-49105i, -8880i, 2147483647i, -20553i), 1i, vec2<f32>(-1474f, -707f), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(i32(-2147483648), -27951i, -17703i, 9868i), 16325i, vec2<f32>(680f, -1369f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(47572i, 25725i, -1i, -27655i), -12471i, vec2<f32>(-175f, -591f), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(2147483647i, -24543i, 23036i, -11283i), 1i, vec2<f32>(-1783f, -260f), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(1i, 51411i, -38059i, 1i), -42764i, vec2<f32>(255f, -466f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(73158i, -1i, -12633i, -38221i), -4517i, vec2<f32>(1000f, -113f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(11193i, 2237i, -5675i, 0i), 2147483647i, vec2<f32>(2712f, 728f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(34669i, 23489i, -34208i, -47713i), 2147483647i, vec2<f32>(678f, 1000f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(34006i, 2147483647i, -6404i, -1i), -1i, vec2<f32>(-1687f, -1081f), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(2147483647i, 2147483647i, 0i, 1i), 2147483647i, vec2<f32>(1651f, 918f), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-143i, 22306i, 1i, 0i), -59431i, vec2<f32>(-294f, 1000f), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(37264i, 27402i, 68141i, 8866i), -8549i, vec2<f32>(-543f, -1000f), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(-1i, i32(-2147483648), 1i, -6793i), -16383i, vec2<f32>(1454f, -121f), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(46665i, 21815i, i32(-2147483648), 20818i), 1i, vec2<f32>(251f, 184f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(-12483i, 4938i, 2147483647i, i32(-2147483648)), -1i, vec2<f32>(1590f, -124f), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(44380i, 53704i, 1i, -25737i), 108825i, vec2<f32>(-481f, 1268f), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(-27509i, -13018i, 1i, 2147483647i), 0i, vec2<f32>(-1000f, 1425f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(-18429i, 0i, i32(-2147483648), -29671i), -25222i, vec2<f32>(-1131f, -1020f), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(7933i, 1i, 13842i, 1i), 2029i, vec2<f32>(1555f, 143f), vec3<bool>(true, false, true)));

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<i32>(4205i, 22213i, i32(-2147483648), i32(-2147483648)), 1i, vec2<f32>(2498f, 445f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(2147483647i, -1i, -52443i, -32271i), 9377i, vec2<f32>(-124f, 1354f), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(2147483647i, -1i, 66537i, 28783i), -11742i, vec2<f32>(-1033f, 2092f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(41404i, 2147483647i, 2147483647i, 2147483647i), -1i, vec2<f32>(-697f, -1366f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(0i, 45711i, -8146i, 696i), 75407i, vec2<f32>(289f, -321f), vec3<bool>(true, true, true)), Struct_1(vec4<i32>(2147483647i, 1i, -33854i, 14165i), -6i, vec2<f32>(-312f, -142f), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(-1i, 1i, 2147483647i, -17988i), 2543i, vec2<f32>(-721f, -1000f), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-1i, 0i, 2370i, i32(-2147483648)), -49904i, vec2<f32>(687f, -399f), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(-10366i, 2147483647i, 2147483647i, -32723i), 34963i, vec2<f32>(833f, 355f), vec3<bool>(true, false, true)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, global0.x, 1779f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(853f, 537f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-266f, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.c.x, arg_0, global0.x, -1236f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global0.x - 853f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(1431f, arg_1.b.c.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1082f, global0.x, arg_0, global0.x) - vec4<f32>(-1000f, global0.x, 442f, arg_0)), vec4<f32>(_wgslsmith_div_f32(arg_0, global0.x), _wgslsmith_f_op_f32(select(arg_1.b.c.x, -1276f, arg_1.e)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-1103f * arg_1.d))))));
    let var_1 = u_input.c;
    global0 = vec2<f32>(-395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1961f))));
    global2 = array<Struct_1, 9>();
    var var_2 = arg_1;
    return 2171f;
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    global2 = array<Struct_1, 9>();
    let var_0 = vec3<bool>(arg_0.b.d.x, true & !arg_0.e, true);
    let var_1 = ~arg_0.b.a.zw;
    global2 = array<Struct_1, 9>();
    let var_2 = Struct_1(arg_0.b.a, -1i, vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(trunc(arg_0.b.c.x)), Struct_2(true, Struct_1(arg_0.b.a, arg_0.b.b, vec2<f32>(arg_0.c.x, 1221f), vec3<bool>(var_0.x, false, false)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, global0.x))), -223f, true))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !arg_0.b.d);
    return select(!var_0, !select(arg_0.b.d, select(!vec3<bool>(var_2.d.x, false, var_2.d.x), vec3<bool>(var_0.x, var_0.x, false), var_0), var_0), select(!select(select(arg_0.b.d, vec3<bool>(true, arg_0.b.d.x, arg_0.e), arg_0.b.d.x), var_0, select(vec3<bool>(var_0.x, arg_0.b.d.x, true), vec3<bool>(var_0.x, arg_0.b.d.x, true), true)), var_2.d, all(select(var_2.d.xy, var_0.yz, select(arg_0.b.d.xy, var_0.zz, vec2<bool>(var_2.d.x, var_0.x))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    global1 = array<Struct_1, 27>();
    let var_0 = countOneBits(countOneBits(_wgslsmith_clamp_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.a)), vec2<i32>(_wgslsmith_mod_i32(0i, 29358i), ~(-32741i)), u_input.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_f_op_f32(-global0.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(1412f + arg_3.x), _wgslsmith_f_op_f32(167f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + var_1.x) * global0.x)), _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1335f, _wgslsmith_f_op_f32(arg_3.x - -332f), _wgslsmith_div_f32(var_1.x, var_1.x), var_1.x))), _wgslsmith_f_op_vec4_f32(-arg_3))));
    global1 = array<Struct_1, 27>();
    return Struct_1(-(~(vec4<i32>(u_input.c, u_input.a.x, -59359i, 0i) >> (u_input.b % vec4<u32>(32u))) << (u_input.b % vec4<u32>(32u))), -countOneBits(u_input.c), _wgslsmith_f_op_vec2_f32(arg_3.xz * var_2.zw), arg_0);
}

fn func_1(arg_0: vec3<f32>) -> vec3<i32> {
    let var_0 = Struct_2(true, func_4(select(select(func_2(Struct_2(true, global1[_wgslsmith_index_u32(0u, 27u)], vec2<f32>(arg_0.x, arg_0.x), arg_0.x, false)), vec3<bool>(false, true, false), func_2(Struct_2(true, Struct_1(vec4<i32>(u_input.a.x, 28320i, u_input.a.x, u_input.c), u_input.a.x, vec2<f32>(global0.x, global0.x), vec3<bool>(false, true, false)), vec2<f32>(-887f, arg_0.x), arg_0.x, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, true, true), true), func_2(Struct_2(false, global2[_wgslsmith_index_u32(u_input.b.x, 9u)], vec2<f32>(736f, arg_0.x), 1313f, true))), !(!func_2(Struct_2(true, global2[_wgslsmith_index_u32(793u, 9u)], vec2<f32>(-1071f, 344f), -1504f, false))), all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-110f, -1047f, arg_0.x, 1128f))))))), arg_0.xz, -455f, u_input.a.x >= _wgslsmith_dot_vec2_i32(-(u_input.a | u_input.a), u_input.a));
    var var_1 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(floor(-254f))) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, var_1.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1239f, var_1.d) * arg_0.xy)))));
    var_1 = var_0;
    let var_2 = var_0.b.a.xwy;
    return vec3<i32>(2147483647i, ~_wgslsmith_add_i32(1i, min(_wgslsmith_mult_i32(u_input.c, var_1.b.b), u_input.c & var_0.b.b)), min(i32(-1i) * -1i, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 27>();
    global1 = array<Struct_1, 27>();
    var var_0 = Struct_1(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, 1i, 0i), vec4<i32>(-35725i, u_input.a.x, u_input.c, -19116i)) & select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-4610i, u_input.a.x, u_input.c, u_input.a.x), vec4<i32>(-7685i, -2147483647i, 1i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, 30016i, u_input.c)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-1i, 2147483647i, 1i, u_input.a.x)), 0u >= u_input.d)), u_input.a.x ^ (-u_input.c >> (abs(0u) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(trunc(573f)), 270f), select(vec3<bool>(!(u_input.d > u_input.b.x), all(vec4<bool>(true, true, true, true)), true), !vec3<bool>(-223f > global0.x, false, false), any(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true))));
    let var_1 = u_input.a.x;
    let var_2 = ~func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, -1286f, 523f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1451f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x)))))), select(1u, _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.d, 55146u), vec4<u32>(u_input.d, 1u, 64663u, u_input.d)), vec4<u32>(abs(32476u), _wgslsmith_div_u32(4294967295u, u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(70784u, u_input.d), vec2<u32>(1u, 0u)), _wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.yx))), var_0.d.x), u_input.b.xzw, select(-1i, ~(-21581i), any(var_0.d.zy)));
}

