struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, true, true, false, false, false, true, true, true, true, false, true, false, false, false, true, true);

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(1151f, vec3<i32>(4394i, 2147483647i, -58897i), vec3<u32>(351u, 0u, 27065u), 11157u, 6901i), Struct_1(-1185f, vec3<i32>(-14178i, -17900i, -1i), vec3<u32>(1u, 58708u, 85126u), 0u, -28682i), vec2<f32>(614f, -1311f), 0u), Struct_2(Struct_1(768f, vec3<i32>(i32(-2147483648), i32(-2147483648), -45693i), vec3<u32>(393u, 24144u, 480u), 0u, i32(-2147483648)), Struct_1(-1000f, vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<u32>(64782u, 1u, 0u), 548u, 0i), vec2<f32>(1000f, -107f), 1u), Struct_2(Struct_1(-375f, vec3<i32>(-43062i, 2147483647i, -52038i), vec3<u32>(1u, 1u, 91028u), 4294967295u, i32(-2147483648)), Struct_1(-1585f, vec3<i32>(1i, -18058i, -17050i), vec3<u32>(0u, 1u, 0u), 10304u, i32(-2147483648)), vec2<f32>(-782f, 1386f), 0u), Struct_2(Struct_1(-2652f, vec3<i32>(1i, 1i, -7247i), vec3<u32>(0u, 0u, 68278u), 1395u, -25587i), Struct_1(1892f, vec3<i32>(1i, 19172i, -1i), vec3<u32>(27120u, 1u, 51412u), 4294967295u, -1093i), vec2<f32>(1044f, -1570f), 1u), Struct_2(Struct_1(-515f, vec3<i32>(-7407i, -202i, -24118i), vec3<u32>(50975u, 1u, 1u), 0u, -42224i), Struct_1(481f, vec3<i32>(1i, i32(-2147483648), -1479i), vec3<u32>(1u, 34870u, 85327u), 0u, 1257i), vec2<f32>(-1479f, 140f), 32202u), Struct_2(Struct_1(-361f, vec3<i32>(-1238i, -1555i, 2147483647i), vec3<u32>(2895u, 67081u, 764u), 0u, 2147483647i), Struct_1(-1000f, vec3<i32>(37120i, 29751i, 42927i), vec3<u32>(1u, 98609u, 40216u), 0u, 0i), vec2<f32>(-722f, 362f), 4294967295u), Struct_2(Struct_1(-671f, vec3<i32>(0i, 2147483647i, -21876i), vec3<u32>(64963u, 0u, 4294967295u), 69370u, -27051i), Struct_1(-1365f, vec3<i32>(30706i, 60220i, 0i), vec3<u32>(18519u, 20528u, 65077u), 0u, -22153i), vec2<f32>(-1462f, -697f), 4294967295u), Struct_2(Struct_1(761f, vec3<i32>(2147483647i, 0i, -1i), vec3<u32>(8505u, 31757u, 0u), 57143u, 2147483647i), Struct_1(1118f, vec3<i32>(21457i, i32(-2147483648), -43692i), vec3<u32>(24050u, 31037u, 34173u), 53863u, 2147483647i), vec2<f32>(-1000f, -407f), 1u), Struct_2(Struct_1(-1583f, vec3<i32>(4912i, 118473i, -1305i), vec3<u32>(0u, 1u, 12129u), 0u, -58683i), Struct_1(495f, vec3<i32>(52828i, 1i, 5284i), vec3<u32>(1u, 0u, 4294967295u), 1u, -1106i), vec2<f32>(-388f, -1122f), 32989u), Struct_2(Struct_1(-1000f, vec3<i32>(2147483647i, 1i, 2147483647i), vec3<u32>(38560u, 4294967295u, 27629u), 17891u, -1438i), Struct_1(-1319f, vec3<i32>(-29972i, 2147483647i, -7826i), vec3<u32>(30387u, 4294967295u, 1u), 14534u, 1i), vec2<f32>(1000f, -157f), 0u), Struct_2(Struct_1(599f, vec3<i32>(-1i, 11453i, -28408i), vec3<u32>(4294967295u, 0u, 57871u), 94476u, 1i), Struct_1(121f, vec3<i32>(3462i, -43589i, 13458i), vec3<u32>(0u, 61656u, 0u), 47059u, 1i), vec2<f32>(795f, -1283f), 4294967295u), Struct_2(Struct_1(783f, vec3<i32>(-32275i, i32(-2147483648), 16622i), vec3<u32>(34621u, 33367u, 0u), 0u, -1i), Struct_1(454f, vec3<i32>(i32(-2147483648), 6129i, 0i), vec3<u32>(24943u, 4294967295u, 0u), 6585u, -17614i), vec2<f32>(1000f, 576f), 4294967295u), Struct_2(Struct_1(1554f, vec3<i32>(-19411i, -1i, 3175i), vec3<u32>(4294967295u, 0u, 4294967295u), 1u, 0i), Struct_1(-1000f, vec3<i32>(-44012i, -1i, i32(-2147483648)), vec3<u32>(1u, 24833u, 1u), 50928u, 59430i), vec2<f32>(256f, -1889f), 44024u), Struct_2(Struct_1(-1753f, vec3<i32>(i32(-2147483648), i32(-2147483648), 40113i), vec3<u32>(68594u, 4294967295u, 0u), 76815u, 1723i), Struct_1(-1305f, vec3<i32>(25966i, 1i, i32(-2147483648)), vec3<u32>(2361u, 0u, 12185u), 36586u, 10057i), vec2<f32>(260f, 1395f), 23111u), Struct_2(Struct_1(-865f, vec3<i32>(42503i, -1i, 1i), vec3<u32>(17901u, 62686u, 43069u), 16296u, -21734i), Struct_1(-816f, vec3<i32>(2147483647i, i32(-2147483648), 250i), vec3<u32>(122607u, 0u, 84173u), 40568u, 26835i), vec2<f32>(-950f, 1774f), 4294967295u), Struct_2(Struct_1(-103f, vec3<i32>(i32(-2147483648), 27005i, 0i), vec3<u32>(0u, 59059u, 49204u), 4294967295u, -63472i), Struct_1(-622f, vec3<i32>(0i, i32(-2147483648), 0i), vec3<u32>(44527u, 4462u, 6747u), 36802u, 32958i), vec2<f32>(-3256f, 568f), 0u), Struct_2(Struct_1(-738f, vec3<i32>(1i, 38503i, -46455i), vec3<u32>(46449u, 58328u, 135u), 1u, -15575i), Struct_1(-1000f, vec3<i32>(-5591i, 0i, -18549i), vec3<u32>(0u, 25384u, 108743u), 0u, -1i), vec2<f32>(703f, 1404f), 4294967295u), Struct_2(Struct_1(-978f, vec3<i32>(24715i, 6913i, 2147483647i), vec3<u32>(17880u, 8541u, 4294967295u), 55026u, -15828i), Struct_1(-184f, vec3<i32>(-59592i, i32(-2147483648), 30831i), vec3<u32>(0u, 61929u, 1u), 0u, 0i), vec2<f32>(494f, -706f), 16105u), Struct_2(Struct_1(997f, vec3<i32>(1i, -57647i, 0i), vec3<u32>(4294967295u, 0u, 4294967295u), 1174u, 2169i), Struct_1(447f, vec3<i32>(0i, -38920i, 1i), vec3<u32>(0u, 75523u, 34816u), 1u, 59524i), vec2<f32>(-873f, 459f), 4294967295u), Struct_2(Struct_1(-364f, vec3<i32>(36335i, 1i, 0i), vec3<u32>(16603u, 4294967295u, 0u), 0u, -1i), Struct_1(488f, vec3<i32>(49000i, 58060i, -47768i), vec3<u32>(1u, 18614u, 4932u), 25669u, 0i), vec2<f32>(-940f, -758f), 4294967295u), Struct_2(Struct_1(2675f, vec3<i32>(i32(-2147483648), i32(-2147483648), -29562i), vec3<u32>(1u, 0u, 4294967295u), 0u, 0i), Struct_1(278f, vec3<i32>(i32(-2147483648), i32(-2147483648), -8814i), vec3<u32>(67315u, 71333u, 1u), 9096u, 0i), vec2<f32>(339f, 1359f), 18130u), Struct_2(Struct_1(174f, vec3<i32>(2147483647i, 0i, 29481i), vec3<u32>(0u, 331u, 4294967295u), 1u, -27691i), Struct_1(233f, vec3<i32>(2147483647i, 15321i, 1i), vec3<u32>(29204u, 21661u, 1u), 13473u, 2147483647i), vec2<f32>(1910f, -611f), 1627u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = arg_3.a.x;
    global1 = array<Struct_2, 22>();
    var var_1 = true;
    var var_2 = _wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(38331u, _wgslsmith_dot_vec3_u32(u_input.b.wxx, vec3<u32>(arg_3.d.c.x, 17545u, u_input.c))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 0u), 1u))) >= ~min(~4294967295u << (abs(arg_3.d.c.x) % 32u), ~(~4294967295u));
    global1 = array<Struct_2, 22>();
    return arg_3.d.b & -(~vec3<i32>(-2147483647i, 1i, arg_3.c.x) >> (_wgslsmith_div_vec3_u32(arg_3.d.c, vec3<u32>(1u, arg_2.x, 0u)) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global0 = array<bool, 17>();
    global1 = array<Struct_2, 22>();
    var var_0 = vec3<bool>(global0[_wgslsmith_index_u32(0u, 17u)], true, true);
    let var_1 = vec4<u32>(u_input.d.x, 45690u, ~(~firstTrailingBit(0u)), u_input.c);
    var_0 = arg_0;
    return Struct_1(_wgslsmith_f_op_f32(109f * 928f), -_wgslsmith_add_vec3_i32(max(vec3<i32>(0i, 2147483647i, 38724i), func_3(vec4<f32>(473f, 836f, -101f, -532f), 0i, var_1.xz, Struct_3(vec4<bool>(true, true, var_0.x, arg_0.x), arg_0, vec3<i32>(-19023i, 1i, 1i), Struct_1(-1171f, vec3<i32>(-1i, -2600i, 1i), u_input.a, u_input.b.x, 15935i)))), firstLeadingBit(vec3<i32>(56795i, 4218i, 1i))), ~var_1.ywz, _wgslsmith_dot_vec3_u32(var_1.xwz, vec3<u32>(var_1.x | ~u_input.b.x, ~u_input.b.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 46781u, 4294967295u)), var_1.xxx))), _wgslsmith_mult_i32(-1i, -(-15512i >> (select(u_input.c, 4294967295u, true) % 32u))));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> i32 {
    var var_0 = Struct_2(func_2(arg_1.a.zzx), func_2(arg_1.b), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d.a), _wgslsmith_f_op_f32(f32(-1f) * -162f)), u_input.b.x);
    var var_1 = !vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -413f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d.a), var_0.b.a), ~func_3(vec4<f32>(var_0.a.a, 149f, var_0.c.x, 587f), 0i, var_0.b.c.zz, arg_1).x == _wgslsmith_mult_i32(abs(10042i), min(arg_1.d.e, var_0.b.e)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1878f, arg_1.d.a, 1411f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-217f, arg_1.d.a, var_0.c.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -152f), arg_1.d.a))) - vec3<f32>(-156f, 452f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-562f)) - _wgslsmith_f_op_f32(-var_0.c.x))))));
    let var_3 = arg_1.b.x || all(vec2<bool>(true, true));
    var var_4 = func_2(!arg_1.b);
    return var_0.a.e;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<f32>) -> i32 {
    global1 = array<Struct_2, 22>();
    global1 = array<Struct_2, 22>();
    global1 = array<Struct_2, 22>();
    global0 = array<bool, 17>();
    var var_0 = _wgslsmith_div_u32(~1u, 4294967295u);
    return func_4(_wgslsmith_mult_i32(~(-_wgslsmith_add_i32(23527i, 25365i)), 1i), Struct_3(!(!vec4<bool>(false, false, arg_0, arg_0)), select(vec3<bool>(true, global0[_wgslsmith_index_u32(13148u, 17u)], arg_0 | global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec3<bool>(false, !global0[_wgslsmith_index_u32(u_input.b.x, 17u)], true), false), vec3<i32>(_wgslsmith_div_i32(1i, _wgslsmith_mult_i32(8912i, 29093i)), abs(-50839i << (1u % 32u)), (i32(-1i) * -2147483647i) << (0u % 32u)), func_2(select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 17u)], true), vec3<bool>(arg_0, arg_0, true), false), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, false, global0[_wgslsmith_index_u32(arg_1, 17u)]), false), global0[_wgslsmith_index_u32(u_input.b.x, 17u)] & false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 17>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1095f, -1000f))), ~vec3<i32>(min(14411i, 1i), 2147483647i, ~2405i), u_input.a, min(40166u, 86493u), _wgslsmith_add_i32(2147483647i, -func_1(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], u_input.a.x, vec2<f32>(-277f, -1198f)))), Struct_1(_wgslsmith_f_op_f32(-1000f + func_2(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 17u)], false)).a), _wgslsmith_sub_vec3_i32(vec3<i32>(-75i, 1i, 0i) >> (vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u)), vec3<i32>(2147483647i, 1i, func_3(vec4<f32>(-523f, 624f, 202f, 2129f), -5333i, vec2<u32>(29936u, u_input.b.x), Struct_3(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(10411u, 17u)], global0[_wgslsmith_index_u32(58882u, 17u)]), vec3<i32>(2147483647i, 0i, 11582i), Struct_1(399f, vec3<i32>(14614i, 5309i, -46420i), vec3<u32>(14832u, 33959u, u_input.a.x), 81206u, -1i))).x)), vec3<u32>(firstTrailingBit(select(u_input.c, 9599u, false)), ~1u, ~countOneBits(u_input.a.x)), _wgslsmith_mod_u32(~reverseBits(959u), ~0u), 10660i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-863f, 361f)))), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c);
}

