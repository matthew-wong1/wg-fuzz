struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<f32>(-1336f, 672f, -966f), 29525u, 28162i, vec4<bool>(false, true, false, true), vec3<u32>(79898u, 0u, 1u)), Struct_1(vec3<f32>(-684f, 3359f, -1000f), 4294967295u, 0i, vec4<bool>(false, true, false, true), vec3<u32>(4054u, 1u, 1u)), Struct_1(vec3<f32>(-699f, -286f, 773f), 1u, 1i, vec4<bool>(true, true, false, false), vec3<u32>(1u, 0u, 1u)), Struct_1(vec3<f32>(-1037f, -377f, 2232f), 67631u, -18059i, vec4<bool>(true, false, true, false), vec3<u32>(1u, 23917u, 0u)), Struct_1(vec3<f32>(267f, -966f, 3260f), 11577u, -1i, vec4<bool>(true, true, false, false), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec3<f32>(253f, 922f, -1439f), 10634u, i32(-2147483648), vec4<bool>(false, false, true, true), vec3<u32>(57130u, 11934u, 1u)), Struct_1(vec3<f32>(1000f, 1554f, -1000f), 4294967295u, 6475i, vec4<bool>(false, false, false, true), vec3<u32>(48688u, 0u, 0u)), Struct_1(vec3<f32>(-939f, -699f, -328f), 78292u, 6044i, vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 23922u, 4172u)), Struct_1(vec3<f32>(-1060f, 1599f, -849f), 0u, 12632i, vec4<bool>(true, false, false, true), vec3<u32>(6743u, 0u, 0u)), Struct_1(vec3<f32>(1433f, 847f, 697f), 18885u, 16892i, vec4<bool>(true, false, true, false), vec3<u32>(4574u, 8500u, 5297u)), Struct_1(vec3<f32>(1369f, -567f, 783f), 81188u, 27112i, vec4<bool>(true, false, true, false), vec3<u32>(0u, 1u, 0u)), Struct_1(vec3<f32>(-447f, -125f, -850f), 6446u, -36214i, vec4<bool>(false, false, false, false), vec3<u32>(50541u, 0u, 1u)), Struct_1(vec3<f32>(1000f, -1134f, -1412f), 38436u, 0i, vec4<bool>(false, true, false, false), vec3<u32>(69796u, 10048u, 89570u)), Struct_1(vec3<f32>(1000f, -236f, 215f), 1u, -1i, vec4<bool>(false, false, true, false), vec3<u32>(16121u, 4294967295u, 0u)), Struct_1(vec3<f32>(-494f, -1000f, 1359f), 1u, -1i, vec4<bool>(true, false, false, false), vec3<u32>(43939u, 1u, 18223u)), Struct_1(vec3<f32>(-198f, 902f, 769f), 0u, 49231i, vec4<bool>(false, false, true, false), vec3<u32>(0u, 0u, 16223u)), Struct_1(vec3<f32>(-418f, -1067f, -1394f), 16741u, -75541i, vec4<bool>(false, true, false, false), vec3<u32>(60990u, 32250u, 0u)), Struct_1(vec3<f32>(1785f, -969f, -2043f), 1u, -1i, vec4<bool>(false, true, true, false), vec3<u32>(1454u, 34796u, 14691u)), Struct_1(vec3<f32>(-1832f, -145f, 184f), 1u, 5247i, vec4<bool>(true, true, true, false), vec3<u32>(37907u, 1u, 4294967295u)));

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-1983f, 1796f, -514f), 31631u, 1i, vec4<bool>(true, false, true, true), vec3<u32>(71773u, 0u, 31658u));

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<f32>(-1207f, -1320f, 400f), 4294967295u, -1i, vec4<bool>(false, true, false, true), vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec3<f32>(623f, 969f, -2019f), 22696u, -1i, vec4<bool>(false, true, false, true), vec3<u32>(78599u, 32220u, 11422u)), Struct_1(vec3<f32>(1000f, -533f, 394f), 21751u, -41695i, vec4<bool>(false, true, false, false), vec3<u32>(78657u, 1u, 29028u)), Struct_1(vec3<f32>(-1697f, 674f, -954f), 45938u, i32(-2147483648), vec4<bool>(true, false, false, false), vec3<u32>(0u, 71048u, 4294967295u)), Struct_1(vec3<f32>(1280f, -880f, -1421f), 0u, 0i, vec4<bool>(false, true, false, false), vec3<u32>(2320u, 1u, 1u)), Struct_1(vec3<f32>(443f, 683f, -279f), 48057u, 3006i, vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 15663u, 0u)), Struct_1(vec3<f32>(-1403f, -471f, -228f), 53025u, 0i, vec4<bool>(false, false, true, false), vec3<u32>(21041u, 1u, 4294967295u)), Struct_1(vec3<f32>(349f, 384f, 942f), 35419u, 8957i, vec4<bool>(true, false, true, true), vec3<u32>(16407u, 8913u, 36095u)), Struct_1(vec3<f32>(2295f, 936f, -360f), 4294967295u, 0i, vec4<bool>(true, true, false, true), vec3<u32>(0u, 65983u, 0u)), Struct_1(vec3<f32>(647f, -1020f, 293f), 42513u, 0i, vec4<bool>(true, true, true, false), vec3<u32>(14115u, 85394u, 0u)), Struct_1(vec3<f32>(1431f, -1155f, 876f), 4294967295u, -32391i, vec4<bool>(false, true, false, true), vec3<u32>(12353u, 26450u, 4294967295u)), Struct_1(vec3<f32>(-596f, 591f, 1239f), 634u, -12486i, vec4<bool>(false, true, true, false), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<f32>(1407f, 773f, -565f), 17286u, 2147483647i, vec4<bool>(true, false, true, false), vec3<u32>(55089u, 1u, 29133u)), Struct_1(vec3<f32>(-823f, -2308f, -277f), 46662u, 2147483647i, vec4<bool>(false, false, false, true), vec3<u32>(0u, 26111u, 1u)), Struct_1(vec3<f32>(498f, -1841f, -1404f), 4294967295u, 32407i, vec4<bool>(true, true, false, false), vec3<u32>(37786u, 0u, 68u)), Struct_1(vec3<f32>(-585f, 508f, -1000f), 116472u, 0i, vec4<bool>(true, true, false, true), vec3<u32>(2589u, 45651u, 44458u)), Struct_1(vec3<f32>(482f, 963f, 320f), 1u, 58017i, vec4<bool>(true, false, true, true), vec3<u32>(0u, 13435u, 4294967295u)), Struct_1(vec3<f32>(-698f, -1011f, -1945f), 29043u, 0i, vec4<bool>(true, false, true, false), vec3<u32>(33914u, 4294967295u, 47838u)), Struct_1(vec3<f32>(-306f, 1227f, 1000f), 1u, 32122i, vec4<bool>(false, false, true, false), vec3<u32>(4702u, 26226u, 0u)), Struct_1(vec3<f32>(-917f, 1276f, -768f), 67030u, 0i, vec4<bool>(false, false, false, false), vec3<u32>(23688u, 13168u, 1u)), Struct_1(vec3<f32>(-606f, 1000f, -401f), 37404u, 1i, vec4<bool>(false, true, false, true), vec3<u32>(1u, 1u, 9068u)), Struct_1(vec3<f32>(479f, 287f, -815f), 4294967295u, -36811i, vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, 36433u, 15510u)), Struct_1(vec3<f32>(-223f, -1217f, 980f), 4294967295u, 44935i, vec4<bool>(true, false, true, true), vec3<u32>(4294967295u, 40640u, 4294967295u)), Struct_1(vec3<f32>(123f, -466f, 181f), 4294967295u, 10125i, vec4<bool>(true, true, true, false), vec3<u32>(35562u, 1u, 1u)), Struct_1(vec3<f32>(-1388f, 826f, -514f), 96074u, 0i, vec4<bool>(true, true, true, false), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<f32>(-1000f, -1201f, -1098f), 67658u, -45989i, vec4<bool>(true, true, false, true), vec3<u32>(0u, 1u, 13150u)), Struct_1(vec3<f32>(1508f, 1143f, 851f), 29946u, 2147483647i, vec4<bool>(false, false, false, true), vec3<u32>(12002u, 0u, 4294967295u)), Struct_1(vec3<f32>(-1380f, -1462f, -1211f), 28039u, 1i, vec4<bool>(true, true, true, true), vec3<u32>(6525u, 1u, 37325u)), Struct_1(vec3<f32>(553f, 477f, -266f), 15359u, 1i, vec4<bool>(true, true, true, false), vec3<u32>(0u, 4294967295u, 6425u)), Struct_1(vec3<f32>(-1418f, 326f, -182f), 1u, 86490i, vec4<bool>(true, false, true, false), vec3<u32>(1u, 0u, 42485u)), Struct_1(vec3<f32>(1716f, 2158f, 1024f), 60825u, 35419i, vec4<bool>(true, false, false, true), vec3<u32>(97751u, 55246u, 0u)), Struct_1(vec3<f32>(1104f, 1181f, -1302f), 56026u, 3439i, vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 4294967295u, 0u)));

var<private> global4: array<vec3<i32>, 23>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = global2.d.zwx;
    let var_1 = global0.d.wxx;
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global2.a))), min(global0.b, 1u), ~arg_0.x, select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(false, all(select(vec3<bool>(global2.d.x, arg_1.d.x, false), vec3<bool>(arg_1.d.x, true, global0.d.x), var_1.x)), var_0.x, any(vec4<bool>(false, false, global0.d.x, var_1.x))), !global0.d), select(vec3<u32>((4294967295u << (global0.e.x % 32u)) & 4294967295u, ~global0.b, ~(~4294967295u)), abs(~countOneBits(global2.e)), select(vec3<bool>(all(global0.d.yz), false, all(vec4<bool>(var_0.x, global0.d.x, global2.d.x, global0.d.x))), select(vec3<bool>(true, var_0.x, true), global0.d.wxy, var_1.x), arg_1.d.zzz)));
    global3 = array<Struct_1, 32>();
    let var_2 = !(!arg_1.d.zzy);
    return vec3<f32>(-1351f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1134f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1341f))))), -1000f);
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = array<Struct_1, 19>();
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(660f, -500f), 974f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.x, global0.a.x)), _wgslsmith_f_op_f32(ceil(-1017f))))), ~(~u_input.c.x), i32(-1i) * -1i, global2.d, vec3<u32>(global2.e.x, _wgslsmith_dot_vec3_u32(u_input.c.xwz | vec3<u32>(u_input.c.x, 35814u, global0.b), vec3<u32>(u_input.c.x, 29924u, 1u)) << (_wgslsmith_clamp_u32(u_input.c.x << (global0.e.x % 32u), 10216u ^ global0.b, ~global2.b) % 32u), ~global2.e.x));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(~((vec4<i32>(-83916i, u_input.a, 10758i, global0.c) << (vec4<u32>(0u, global2.e.x, global2.e.x, global0.e.x) % vec4<u32>(32u))) << (vec4<u32>(50777u, 0u, 36764u, u_input.c.x) % vec4<u32>(32u))), global3[_wgslsmith_index_u32(1u, 32u)])), 4294967295u, _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a, global2.c), u_input.b), _wgslsmith_mult_vec3_i32(max(min(vec3<i32>(global2.c, global0.c, u_input.a), global4[_wgslsmith_index_u32(global2.e.x, 23u)]), vec3<i32>(global2.c, global0.c, global2.c)), u_input.b)), global2.d, global2.e);
    let var_1 = -1i;
    global1 = array<Struct_1, 19>();
    return global1[_wgslsmith_index_u32(u_input.c.x | select(~firstLeadingBit(firstTrailingBit(global2.b)), firstTrailingBit(_wgslsmith_clamp_u32(var_0.b | 47799u, ~global2.e.x, ~17508u)), arg_0), 19u)];
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(1u >= select(4294967295u, u_input.c.x >> (u_input.c.x % 32u), any(!vec4<bool>(global2.d.x, false, global2.d.x, global0.d.x))));
    let var_1 = var_0.a.x;
    let var_2 = !var_0.d.x;
    let var_3 = global1[_wgslsmith_index_u32(abs(893u), 19u)];
    var var_4 = global1[_wgslsmith_index_u32(15859u, 19u)];
    return global1[_wgslsmith_index_u32(~var_4.e.x, 19u)];
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = any(vec2<bool>((_wgslsmith_f_op_f32(step(-1534f, 430f)) <= _wgslsmith_f_op_f32(trunc(global0.a.x))) || all(func_2(global0.d.x).d), true));
    let var_1 = arg_0.b == countOneBits(u_input.c.x);
    global4 = array<vec3<i32>, 23>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1());
    let var_0 = 1u;
    global4 = array<vec3<i32>, 23>();
    let var_1 = _wgslsmith_clamp_vec2_i32(u_input.b.zz, vec2<i32>(u_input.a, (i32(-1i) * -56383i) << (func_4(Struct_1(vec3<f32>(global2.a.x, -771f, 750f), var_0, 29231i, global2.d, vec3<u32>(global2.e.x, global2.b, 32481u))).e.x % 32u)), vec2<i32>(~global0.c, global0.c));
    global2 = global1[_wgslsmith_index_u32(abs(~(~22165u)) >> (~u_input.c.x % 32u), 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(7582u);
}

