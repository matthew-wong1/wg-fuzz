struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(3981u, 12976u, 0u), vec3<u32>(1u, 5609u, 69005u), vec3<u32>(34312u, 66433u, 23327u), vec3<u32>(1u, 1u, 293u), vec3<u32>(4294967295u, 7416u, 67607u), vec3<u32>(4294967295u, 0u, 27617u), vec3<u32>(1u, 54u, 91000u), vec3<u32>(67365u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 132260u, 0u));

var<private> global1: array<u32, 8>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<f32>(1325f, -102f, 1556f, 240f), -33769i, vec2<i32>(i32(-2147483648), -68038i), vec4<bool>(true, false, true, true), true), Struct_1(vec4<f32>(-331f, -351f, -1350f, 808f), -73081i, vec2<i32>(-112i, 2147483647i), vec4<bool>(true, true, true, false), true), Struct_1(vec4<f32>(-1000f, -1042f, 1120f, 743f), -14669i, vec2<i32>(i32(-2147483648), 0i), vec4<bool>(false, false, false, false), true), Struct_1(vec4<f32>(-952f, -909f, 836f, 669f), 0i, vec2<i32>(-9957i, -43162i), vec4<bool>(false, false, false, true), false), Struct_1(vec4<f32>(-894f, 1723f, 604f, 434f), 0i, vec2<i32>(37932i, -1i), vec4<bool>(false, true, false, true), true), Struct_1(vec4<f32>(1198f, 154f, -1556f, 1304f), -28892i, vec2<i32>(2147483647i, -37893i), vec4<bool>(false, false, false, true), true), Struct_1(vec4<f32>(1192f, 1034f, -199f, -167f), 18152i, vec2<i32>(2147483647i, 25679i), vec4<bool>(false, true, true, false), true), Struct_1(vec4<f32>(-753f, 103f, 709f, -416f), 1i, vec2<i32>(2147483647i, 1i), vec4<bool>(true, true, true, true), true), Struct_1(vec4<f32>(-141f, -149f, -535f, -821f), i32(-2147483648), vec2<i32>(1i, -1i), vec4<bool>(true, true, true, false), true), Struct_1(vec4<f32>(1738f, -416f, 824f, -1725f), 6417i, vec2<i32>(i32(-2147483648), -1i), vec4<bool>(false, false, true, true), true), Struct_1(vec4<f32>(-118f, 448f, -277f, -307f), 15943i, vec2<i32>(84983i, -2963i), vec4<bool>(false, true, true, false), false), Struct_1(vec4<f32>(1000f, -1156f, -403f, 804f), -1i, vec2<i32>(652i, 39058i), vec4<bool>(false, true, false, true), false), Struct_1(vec4<f32>(-430f, -191f, -230f, -1606f), -1i, vec2<i32>(32453i, -5693i), vec4<bool>(true, false, true, true), true), Struct_1(vec4<f32>(-788f, -1136f, -987f, -1379f), -25619i, vec2<i32>(2147483647i, -2071i), vec4<bool>(true, false, false, true), true), Struct_1(vec4<f32>(-1316f, 463f, -1037f, 574f), -64026i, vec2<i32>(2147483647i, 1i), vec4<bool>(false, true, true, false), false), Struct_1(vec4<f32>(943f, -362f, 730f, 101f), -42330i, vec2<i32>(2147483647i, 28225i), vec4<bool>(false, true, true, true), true), Struct_1(vec4<f32>(513f, -214f, -1212f, -1110f), 13584i, vec2<i32>(12144i, 32173i), vec4<bool>(false, false, true, false), true), Struct_1(vec4<f32>(-612f, 354f, 327f, -577f), -14326i, vec2<i32>(55048i, 1i), vec4<bool>(true, true, false, false), true), Struct_1(vec4<f32>(490f, 1160f, -1290f, 1036f), 22342i, vec2<i32>(-51864i, -28982i), vec4<bool>(true, true, true, false), true), Struct_1(vec4<f32>(-2885f, 190f, 657f, -912f), i32(-2147483648), vec2<i32>(-24010i, 20665i), vec4<bool>(true, true, true, true), true), Struct_1(vec4<f32>(-593f, -465f, 1037f, 904f), -46890i, vec2<i32>(i32(-2147483648), 19707i), vec4<bool>(true, false, false, false), false), Struct_1(vec4<f32>(1000f, -1374f, -1025f, 269f), -1i, vec2<i32>(-27124i, -8338i), vec4<bool>(true, true, true, true), false), Struct_1(vec4<f32>(-601f, 467f, 794f, -573f), 0i, vec2<i32>(1i, 43810i), vec4<bool>(false, false, false, true), true), Struct_1(vec4<f32>(623f, 613f, 142f, 1198f), -4790i, vec2<i32>(0i, 31521i), vec4<bool>(false, false, true, true), true), Struct_1(vec4<f32>(-179f, 102f, -865f, -1589f), i32(-2147483648), vec2<i32>(-57235i, 19370i), vec4<bool>(true, true, false, false), false));

var<private> global3: array<i32, 26> = array<i32, 26>(6076i, -3993i, -9892i, 2147483647i, -27221i, i32(-2147483648), -41891i, -21465i, -8612i, 1i, 6536i, 2147483647i, 30010i, 13270i, -65377i, i32(-2147483648), -20238i, -35891i, 24323i, 1i, 1i, 6426i, 25397i, i32(-2147483648), -15203i, 1i);

var<private> global4: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(37153u, 4294967295u, 4294967295u, 46410u), vec4<u32>(0u, 3239u, 67880u, 24013u), vec4<u32>(4294967295u, 1u, 67990u, 13853u), vec4<u32>(7250u, 1u, 26724u, 0u), vec4<u32>(5695u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 71046u, 74253u, 21532u), vec4<u32>(1u, 10827u, 1u, 46333u), vec4<u32>(4294967295u, 49314u, 50805u, 49871u), vec4<u32>(25654u, 1u, 1u, 0u), vec4<u32>(1u, 78463u, 66657u, 1u), vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(83151u, 1u, 50727u, 42496u), vec4<u32>(11631u, 6988u, 4294967295u, 4294967295u), vec4<u32>(69402u, 1u, 105411u, 1u), vec4<u32>(0u, 73850u, 4294967295u, 68270u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(15329u, 32857u, 31172u, 2852u), vec4<u32>(25187u, 4223u, 0u, 39768u), vec4<u32>(0u, 56154u, 0u, 26442u), vec4<u32>(15163u, 0u, 4294967295u, 19989u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(26141u, 4294967295u, u_input.c.x), vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global1[_wgslsmith_index_u32(0u, 8u)])), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(66006u, 8u)], 9855u)), abs(~global0[_wgslsmith_index_u32(u_input.c.x, 9u)])), global0[_wgslsmith_index_u32(10971u, 9u)]);
    let var_1 = (arg_2 ^ vec2<i32>(min(~arg_1.c.b, ~arg_1.b.b.b), -1i)) << (var_0.xx % vec2<u32>(32u));
    global1 = array<u32, 8>();
    return _wgslsmith_f_op_f32(-arg_1.c.a.x);
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), Struct_3(-799f, Struct_2(false, global2[_wgslsmith_index_u32(4294967295u, 25u)]), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 25u)], vec4<bool>(true, true, false, true)), vec2<i32>(1i, -1i) << (u_input.c.xy % vec2<u32>(32u)), vec2<i32>(u_input.b.x, global3[_wgslsmith_index_u32(u_input.c.x, 26u)]) >> (u_input.c.yx % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-1f)))), Struct_2(true, global2[_wgslsmith_index_u32(u_input.c.x, 25u)]), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(174f, _wgslsmith_f_op_f32(-1664f - -1000f))), _wgslsmith_f_op_f32(-2720f * _wgslsmith_f_op_f32(f32(-1f) * -1469f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-617f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-195f)) + _wgslsmith_f_op_f32(1163f - 1945f))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-11060i, 41820i, -17917i) << (global0[_wgslsmith_index_u32(u_input.c.x, 9u)] % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.d, 6033i), vec3<i32>(2147483647i, 2147483647i, 0i), u_input.a.zzz)), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.yww, vec3<i32>(0i, u_input.d, 28653i)), max(vec3<i32>(-2147483647i, 0i, 49900i), vec3<i32>(global3[_wgslsmith_index_u32(30387u, 26u)], 48149i, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], 26u)])), vec3<i32>(global3[_wgslsmith_index_u32(16777u, 26u)], 0i, -15275i))), select(select(select(vec2<i32>(u_input.d, 1i), vec2<i32>(71656i, global3[_wgslsmith_index_u32(112697u, 26u)]), vec2<bool>(false, false)), vec2<i32>(u_input.a.x, -36856i) & u_input.b.ww, select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), u_input.b.zw, vec2<bool>(u_input.a.x > -23616i, true)), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, false, false)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_1 = all(var_0.c.d.yyx) & !(~(~0u) > countOneBits(~global1[_wgslsmith_index_u32(0u, 8u)]));
    global3 = array<i32, 26>();
    global1 = array<u32, 8>();
    global4 = array<vec4<u32>, 20>();
    return Struct_4(select(var_0.b.b.d, vec4<bool>(!var_1, all(vec3<bool>(false, false, var_0.d.x)), !var_0.d.x, !var_0.b.a | var_1), var_0.d.x), global2[_wgslsmith_index_u32(0u, 25u)], select(var_0.c.d.yz, !(!var_0.b.b.d.zz), vec2<bool>(true, true)), max(select(u_input.c, u_input.c, any(var_0.d.xyw) && true), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global1[_wgslsmith_index_u32(0u, 8u)], 1u) << (u_input.c % vec4<u32>(32u)), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(48946u, 8u)]), 8u)], 20u)]) | select(u_input.c, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 34924u, 0u), vec4<u32>(0u, 1u, 19762u, 1u)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -497f))))));
}

fn func_1() -> u32 {
    let var_0 = -2104i;
    var var_1 = func_2();
    global3 = array<i32, 26>();
    var var_2 = _wgslsmith_div_i32(var_1.b.c.x, firstLeadingBit(global3[_wgslsmith_index_u32(var_1.d.x, 26u)]));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~global1[_wgslsmith_index_u32(firstLeadingBit(min(22132u, 4294967295u)), 8u)], var_1.d.x, ~_wgslsmith_dot_vec4_u32(var_1.d | vec4<u32>(8511u, u_input.c.x, 14888u, var_1.d.x), _wgslsmith_div_vec4_u32(vec4<u32>(2683u, global1[_wgslsmith_index_u32(var_1.d.x, 8u)], global1[_wgslsmith_index_u32(u_input.c.x, 8u)], var_1.d.x), vec4<u32>(6211u, 0u, u_input.c.x, u_input.c.x)))), ~(~(~(~var_1.d.xxy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32((u_input.c.wyy << (vec3<u32>(~1u, ~global1[_wgslsmith_index_u32(1u, 8u)], func_1()) % vec3<u32>(32u))) ^ ~vec3<u32>(~u_input.c.x, ~global1[_wgslsmith_index_u32(8224u, 8u)], global1[_wgslsmith_index_u32(u_input.c.x, 8u)] | global1[_wgslsmith_index_u32(4294967295u, 8u)]), reverseBits(u_input.c.yyx));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(func_2().e, _wgslsmith_f_op_f32(1838f * -858f), false))), -620f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-629f * -518f)))), _wgslsmith_f_op_f32(func_2().b.a.x + func_2().e), true)));
    global0 = array<vec3<u32>, 9>();
    global1 = array<u32, 8>();
    let var_2 = u_input.c;
    global2 = array<Struct_1, 25>();
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-721f, var_1)), -729f));
    let x = u_input.a;
    s_output = StorageBuffer((1i & -u_input.a.x) | -(~2147483647i), vec2<i32>(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.c.x, 26u)], u_input.b.x ^ ~u_input.a.x), 11541i));
}

