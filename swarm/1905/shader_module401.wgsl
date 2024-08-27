struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(321f, -1615f, -316f), vec3<f32>(-509f, 221f, -734f), vec3<f32>(898f, -252f, -380f), vec3<f32>(1000f, -2169f, 746f), vec3<f32>(-358f, -313f, -849f), vec3<f32>(144f, -1177f, -326f), vec3<f32>(699f, 2032f, -490f), vec3<f32>(177f, -1554f, 1540f), vec3<f32>(-279f, -1408f, -934f), vec3<f32>(-386f, -678f, -155f), vec3<f32>(-1164f, 1000f, 1034f), vec3<f32>(-925f, -576f, 1329f), vec3<f32>(-1045f, -2031f, 222f), vec3<f32>(541f, -633f, 1356f), vec3<f32>(-601f, 439f, -828f), vec3<f32>(-240f, 119f, -1000f), vec3<f32>(-188f, -456f, 296f), vec3<f32>(-1669f, -413f, 248f), vec3<f32>(734f, -1838f, -381f), vec3<f32>(2195f, -402f, 1347f), vec3<f32>(-1000f, 1420f, -1181f), vec3<f32>(-892f, -172f, -375f), vec3<f32>(-3738f, -182f, 278f), vec3<f32>(-1446f, 156f, 224f), vec3<f32>(-1688f, 1021f, 662f), vec3<f32>(2008f, 736f, 2143f), vec3<f32>(1000f, -1582f, -228f));

var<private> global1: array<Struct_4, 4>;

var<private> global2: f32;

var<private> global3: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(169473u, 55209u), vec2<u32>(45143u, 29221u), vec2<u32>(19827u, 15298u), vec2<u32>(0u, 23770u), vec2<u32>(15407u, 4294967295u), vec2<u32>(18004u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(32896u, 23602u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 61401u), vec2<u32>(1u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 58993u), vec2<u32>(0u, 26164u), vec2<u32>(4294967295u, 49722u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> vec3<f32> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -125f);
    let var_2 = vec2<i32>(arg_0.a.b.b, -35384i);
    global2 = arg_0.a.d;
    var var_3 = ~(~_wgslsmith_mult_vec2_u32(global3[_wgslsmith_index_u32(~36897u, 15u)], ~vec2<u32>(59313u, arg_0.a.a.c)) >> ((u_input.a.xy >> (global3[_wgslsmith_index_u32(91951u << (reverseBits(u_input.b) % 32u), 15u)] % vec2<u32>(32u))) % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(738f, _wgslsmith_f_op_f32(ceil(-157f)), -1217f))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    global3 = array<vec2<u32>, 15>();
    global3 = array<vec2<u32>, 15>();
    let var_0 = ~_wgslsmith_clamp_u32(arg_2.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.a.x, arg_2.x), arg_2.zwy), u_input.a.x);
    let var_1 = ~_wgslsmith_mod_vec2_i32(countOneBits(-vec2<i32>(arg_1.d, -2147483647i) >> (min(vec2<u32>(4674u, var_0), arg_2.yy) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_div_i32(0i, arg_1.d), 37566i));
    global1 = array<Struct_4, 4>();
    return 1u;
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> f32 {
    global3 = array<vec2<u32>, 15>();
    global1 = array<Struct_4, 4>();
    global3 = array<vec2<u32>, 15>();
    let var_0 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, arg_1.a.a.a), arg_1.a.a.a)), arg_0), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-580f, arg_1.a.b.a) - vec2<f32>(249f, 104f)))), vec2<f32>(-211f, -1197f), select(select(vec2<bool>(arg_1.a.c.x, arg_1.a.e.x), arg_1.a.e.xy, arg_1.a.c.x), !arg_1.a.e.zx, arg_1.a.c.x)))), !arg_1.a.e, arg_1.a.a.a, max(arg_1.a.a.c >> (func_3(arg_1.a.e.x, Struct_1(314f, -33384i, arg_1.a.a.c, 2147483647i), vec4<u32>(47757u, arg_1.a.b.c, u_input.a.x, arg_1.a.a.c)) % 32u), _wgslsmith_mult_u32(63014u, arg_1.a.a.c ^ 1u)) > firstLeadingBit(max(41503u, arg_1.a.b.c) >> (_wgslsmith_add_u32(0u, u_input.a.x) % 32u)));
    let var_1 = 2344u;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c, var_0.a.x)))));
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec3<f32>, 27>();
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(firstLeadingBit(-(~(-1i))), arg_1.e.d, arg_2.b.b, -6389i), _wgslsmith_div_vec4_i32((~vec4<i32>(arg_1.d, arg_1.d, -1i, 0i) << (_wgslsmith_div_vec4_u32(arg_1.b, arg_1.b) % vec4<u32>(32u))) >> (countOneBits(~arg_1.b) % vec4<u32>(32u)), -(~vec4<i32>(-1i, 2147483647i, -1i, 6573i))));
    let var_1 = arg_2;
    return arg_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-410f, -557f)), firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(4988u, 25400u, 1u, u_input.a.x), abs(vec4<u32>(38000u, u_input.c, 0u, u_input.a.x))), vec4<u32>(~0u, u_input.a.x | u_input.b, u_input.a.x, 2815u))), _wgslsmith_f_op_vec3_f32(func_1(Struct_4(Struct_2(Struct_1(758f, -16565i, 71382u, 2147483647i), Struct_1(-133f, 2147483647i, u_input.b, -2106i), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), -818f, vec4<bool>(true, true, true, true))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.c, 0u)) < 39264u)), abs(firstLeadingBit(0i)), func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-739f, global1[_wgslsmith_index_u32(0u, 4u)]))))), Struct_5(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1126f - -177f), global1[_wgslsmith_index_u32(25909u, 4u)])), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 0u, 21230u), ~vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 27u)]) * vec3<f32>(1000f, -239f, 592f)), ~_wgslsmith_add_i32(1i, -749i), Struct_1(-718f, 0i, _wgslsmith_add_u32(u_input.a.x, 61766u), _wgslsmith_clamp_i32(1i, -64343i, 25330i))), Struct_2(Struct_1(_wgslsmith_f_op_f32(min(233f, 345f)), i32(-1i) * -42909i, 49790u, ~(-4398i)), Struct_1(_wgslsmith_div_f32(382f, -1156f), -2147483647i, 49664u, 2147483647i << (u_input.c % 32u)), vec3<bool>(true, true, true), 1366f, select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))))));
    var var_1 = abs(-min(vec4<i32>(var_0.d, 1i, -2147483647i, var_0.d), -vec4<i32>(-24079i, 1i, -1i, var_0.e.d)) >> (select(~var_0.b, max(vec4<u32>(var_0.e.c, var_0.b.x, 0u, 0u), vec4<u32>(u_input.c, 0u, 49607u, 61416u) >> (var_0.b % vec4<u32>(32u))), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)));
    let var_2 = vec2<i32>(-var_1.x, _wgslsmith_mod_i32(-reverseBits(firstTrailingBit(52885i)), ~(~(-var_1.x))));
    var var_3 = select(select(vec4<bool>(select(true, true, false) && true, _wgslsmith_f_op_f32(abs(351f)) >= var_0.e.a, true, select(true, true, true)), vec4<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), true, !(var_0.a != -163f)), false), select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, any(vec3<bool>(false, false, true)), any(vec3<bool>(false, false, true))), !all(vec2<bool>(true, false))), select(vec4<bool>(all(vec3<bool>(true, true, false)), true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))), var_0.e.a < 498f);
    global2 = _wgslsmith_f_op_f32(func_2(var_0.e.a, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 0u), 4u)]));
    var var_4 = 31977u;
    global2 = -137f;
    var var_5 = max(-select(var_1.xxy, vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.yzx, vec3<i32>(var_2.x, -6639i, 2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-67914i, var_2.x, 1i), vec3<i32>(0i, -70160i, var_0.d)), ~var_0.e.d), select(vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(false, false, true), true)), vec3<i32>((var_2.x | var_2.x) | ~(-1i), _wgslsmith_add_i32(var_1.x, 0i) ^ firstTrailingBit(var_2.x), reverseBits(var_2.x & var_2.x)) & vec3<i32>(-firstTrailingBit(2147483647i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, var_2.x), -19024i, var_2.x), -21174i));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(-(var_2 << (vec2<u32>(44065u, var_0.b.x) % vec2<u32>(32u)))), select(~var_2, -var_5.yx, true) | (_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.e.d, var_2.x), var_1.zz) >> (~var_0.b.xy % vec2<u32>(32u)))), -402f, vec2<u32>(func_3(true, var_0.e, firstTrailingBit(var_0.b)), 71168u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-583f))), -233f)), _wgslsmith_add_i32(-10264i, func_4(var_0.e.a, Struct_5(-246f, firstTrailingBit(vec4<u32>(1u, 1u, u_input.c, var_0.b.x)), vec3<f32>(-448f, 614f, var_0.e.a), var_2.x, Struct_1(-387f, var_1.x, 1u, var_2.x)), Struct_2(func_4(var_0.a, Struct_5(var_0.e.a, vec4<u32>(u_input.b, u_input.b, var_0.b.x, u_input.a.x), global0[_wgslsmith_index_u32(0u, 27u)], 0i, var_0.e), Struct_2(Struct_1(2214f, -1i, 1u, -15730i), var_0.e, vec3<bool>(true, true, var_3.x), var_0.c.x, vec4<bool>(var_3.x, true, var_3.x, true))), Struct_1(-482f, -19657i, u_input.a.x, var_2.x), vec3<bool>(var_3.x, var_3.x, false), _wgslsmith_f_op_f32(max(var_0.c.x, var_0.a)), select(vec4<bool>(true, false, false, var_3.x), vec4<bool>(false, var_3.x, var_3.x, true), vec4<bool>(false, var_3.x, var_3.x, var_3.x)))).b));
}

