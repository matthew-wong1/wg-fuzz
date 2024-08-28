struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 1u, 0u);

var<private> global1: vec2<u32>;

var<private> global2: array<vec4<u32>, 21>;

var<private> global3: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(vec4<i32>(716i, -1i, 12416i, i32(-2147483648))), 200f, 25671u, 11005i, 4294967295u), Struct_3(Struct_1(vec4<i32>(-30591i, -24721i, -1i, 0i)), -505f, 66030u, -12302i, 1u), Struct_3(Struct_1(vec4<i32>(1i, -21329i, -1i, 38361i)), -704f, 7939u, 35422i, 0u), Struct_3(Struct_1(vec4<i32>(1i, 1i, 58044i, 2147483647i)), 930f, 1u, -1i, 1u), Struct_3(Struct_1(vec4<i32>(19402i, 25676i, 14075i, 1i)), -175f, 17822u, 8436i, 11593u), Struct_3(Struct_1(vec4<i32>(-18359i, 18381i, 71790i, i32(-2147483648))), -596f, 0u, 1476i, 0u), Struct_3(Struct_1(vec4<i32>(55720i, 1i, -61547i, 53098i)), -162f, 12214u, 2147483647i, 14046u), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 13833i, 45814i, 2147483647i)), -240f, 96437u, -18024i, 0u), Struct_3(Struct_1(vec4<i32>(15446i, -1i, 1i, 32885i)), 1633f, 61761u, -1i, 55360u), Struct_3(Struct_1(vec4<i32>(23692i, 0i, 1i, 2147483647i)), -927f, 1498u, 37195i, 1u), Struct_3(Struct_1(vec4<i32>(0i, -13667i, 20647i, -1i)), -327f, 12098u, -12178i, 0u), Struct_3(Struct_1(vec4<i32>(10828i, 32554i, 1i, -1772i)), -562f, 1u, i32(-2147483648), 0u), Struct_3(Struct_1(vec4<i32>(-1749i, -8158i, 525i, 38750i)), 453f, 4294967295u, i32(-2147483648), 0u), Struct_3(Struct_1(vec4<i32>(-39304i, i32(-2147483648), -18918i, 496i)), -1752f, 69739u, i32(-2147483648), 24202u), Struct_3(Struct_1(vec4<i32>(5622i, -1i, -8198i, 2147483647i)), -943f, 0u, i32(-2147483648), 3598u), Struct_3(Struct_1(vec4<i32>(-53103i, 1i, 44422i, i32(-2147483648))), 426f, 1u, 2147483647i, 64240u), Struct_3(Struct_1(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -1i)), -1199f, 1u, 1i, 1u), Struct_3(Struct_1(vec4<i32>(1i, 23267i, -1i, -68627i)), 1499f, 1u, -45243i, 1u), Struct_3(Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), 0i)), -501f, 1u, 15829i, 4294967295u), Struct_3(Struct_1(vec4<i32>(20519i, -50097i, -18435i, -18557i)), -847f, 1u, 35763i, 0u), Struct_3(Struct_1(vec4<i32>(31869i, 2147483647i, -16676i, 6451i)), -1377f, 1u, -20532i, 5921u), Struct_3(Struct_1(vec4<i32>(1i, -3647i, 1i, -15509i)), 199f, 4294967295u, -36751i, 80578u), Struct_3(Struct_1(vec4<i32>(-7977i, 41543i, -1i, 70820i)), 654f, 70014u, 14790i, 0u), Struct_3(Struct_1(vec4<i32>(0i, -11474i, 51316i, i32(-2147483648))), -1203f, 17089u, -1i, 4294967295u), Struct_3(Struct_1(vec4<i32>(4727i, 0i, 0i, 0i)), 1877f, 0u, -33473i, 29041u), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -26238i, -35085i, -25473i)), 374f, 1u, 26653i, 67747u), Struct_3(Struct_1(vec4<i32>(-1i, i32(-2147483648), 4783i, 0i)), 1000f, 43273u, 2147483647i, 4294967295u), Struct_3(Struct_1(vec4<i32>(-60005i, -13937i, -1i, -1i)), 1000f, 29129u, -10043i, 21255u), Struct_3(Struct_1(vec4<i32>(1i, -22603i, 1i, 29002i)), -274f, 0u, 9179i, 35801u), Struct_3(Struct_1(vec4<i32>(-45196i, 6178i, 33572i, 1i)), -341f, 0u, -1i, 0u));

var<private> global4: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>) -> vec4<i32> {
    global2 = array<vec4<u32>, 21>();
    global1 = vec2<u32>(10106u, 8269u ^ ~u_input.c.x);
    var var_0 = Struct_4(~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global0.x, 6093u), u_input.c), global0.x), ~(~u_input.a), min(0u, ~u_input.c.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(arg_1.wx, arg_1.wx))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x + -199f), _wgslsmith_f_op_f32(step(-281f, arg_1.x))))), any(vec4<bool>(arg_0.x, false, arg_1.x == 391f, false)))));
    global3 = array<Struct_3, 30>();
    return ~_wgslsmith_div_vec4_i32(-vec4<i32>(-66617i, -22575i, 1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(22130i, u_input.d, -2147483647i, global4.b.x), vec4<i32>(-global4.b.x, u_input.d, -u_input.d, u_input.d)));
}

fn func_2() -> vec3<u32> {
    global4 = Struct_2(1i, global4.b);
    let var_0 = Struct_1(min(_wgslsmith_div_vec4_i32(~(-vec4<i32>(0i, u_input.d, 40103i, global4.a)), vec4<i32>(-1i) * -vec4<i32>(global4.a, u_input.d, 56427i, 1i)), abs(firstTrailingBit(func_3(vec3<bool>(true, true, true), vec4<f32>(1458f, -1428f, 210f, -107f))))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = Struct_2(~(-1i) << (u_input.a % 32u), var_0.a.ww);
    global4 = Struct_2(-(u_input.d & ~2147483647i), var_0.a.zx);
    return abs(_wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(1u, global1.x, 5260u)) ^ vec3<u32>(firstTrailingBit(1u), global0.x, global0.x), abs(~(~vec3<u32>(u_input.a, global1.x, 35265u)))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = ~func_2();
    global3 = array<Struct_3, 30>();
    let var_0 = ~_wgslsmith_add_u32(1u, 1u);
    global2 = array<vec4<u32>, 21>();
    global1 = func_2().yz;
    return Struct_2(firstTrailingBit((_wgslsmith_mult_i32(13343i, global4.a) & ~1i) >> (~reverseBits(u_input.c.x) % 32u)), _wgslsmith_mult_vec2_i32(abs(global4.b), ~(vec2<i32>(-8982i, u_input.d) & vec2<i32>(u_input.d, global4.b.x))) | func_3(vec3<bool>(true, all(vec2<bool>(true, false)), arg_0 < -1894f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(217f, 1219f, 255f, -2177f) + vec4<f32>(-1820f, 298f, arg_0, -355f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 549f, 373f, -1516f) * vec4<f32>(1260f, 2050f, -1688f, 496f)))).wz);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_2 {
    global4 = arg_1;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-973f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(793f + 962f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-756f)))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1006f * _wgslsmith_f_op_f32(-430f - -523f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2376f))))));
    return Struct_2(_wgslsmith_add_i32(global4.a, arg_0), vec2<i32>(arg_0, global4.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.d, func_1(519f), ~(~vec3<i32>(-36679i, u_input.d, u_input.d) | (vec3<i32>(u_input.d, u_input.d, global4.a) & abs(vec3<i32>(u_input.d, global4.a, 1i)))));
    global3 = array<Struct_3, 30>();
    var var_1 = -15780i;
    var var_2 = 0u;
    let var_3 = Struct_4(firstTrailingBit(~(~(~u_input.c))));
    let var_4 = ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(55878u, global0.x, 26666u, global0.x) & vec4<u32>(var_3.a.x, 18804u, 4294967295u, global1.x), vec4<u32>(var_3.a.x, 1u, 4294967295u, u_input.c.x)), 0u), 4294967295u | ~(global0.x ^ 1u), ~var_3.a.x ^ (_wgslsmith_mod_u32(var_3.a.x, 19350u) << (global1.x % 32u)));
    global4 = func_4(-2147483647i, var_0, ~vec3<i32>(_wgslsmith_mod_i32(27963i, 37911i), 2147483647i, u_input.d << (global1.x % 32u)) & (vec3<i32>(_wgslsmith_add_i32(u_input.d, u_input.d), countOneBits(u_input.d), var_0.a) << (select(~var_4, abs(vec3<u32>(u_input.a, var_3.a.x, global1.x)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))) % vec3<u32>(32u))));
    global4 = func_4(u_input.d, func_4(select(u_input.d, ~(u_input.d << (54887u % 32u)), true), var_0, ~countOneBits(func_3(vec3<bool>(true, false, false), vec4<f32>(1238f, -442f, 762f, -778f)).wwy)), -abs(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global4.a, 25343i), vec3<i32>(var_0.a, global4.a, global4.b.x), vec3<i32>(19826i, 2147483647i, global4.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~5258u ^ ~global1.x, global0.x, 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))))), select(max(_wgslsmith_div_vec2_u32(vec2<u32>(var_4.x, 0u), vec2<u32>(0u, 0u)), var_4.yz), global0.xy & global0.xz, all(vec4<bool>(true, true, true, true))), _wgslsmith_mult_i32(countOneBits(global4.b.x), abs(_wgslsmith_mult_i32(countOneBits(u_input.d), i32(-1i) * -35914i))));
}

