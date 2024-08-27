struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(i32(-2147483648), 1i, 2147483647i, 0i, 0i, -36163i, 1i, 2147483647i, 27072i, 2147483647i, 0i, 2147483647i, -7725i, 1i);

var<private> global1: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(0u, 1u), vec2<u32>(41858u, 1u), vec2<u32>(3218u, 13700u), vec2<u32>(0u, 41535u));

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<i32>(1i, 0i, 1i, 3783i), vec3<i32>(i32(-2147483648), 1i, 15970i), Struct_1(vec4<i32>(75234i, 0i, 2147483647i, -2778i), 496f, 0u, vec3<f32>(-1453f, -420f, -183f))), Struct_2(vec4<i32>(1i, -18790i, -8949i, -2925i), vec3<i32>(23406i, 10630i, i32(-2147483648)), Struct_1(vec4<i32>(1i, -25474i, 61174i, -1i), 193f, 4294967295u, vec3<f32>(-1000f, 1363f, -971f))), Struct_2(vec4<i32>(70972i, 38234i, 5156i, 1i), vec3<i32>(1i, -38270i, 46481i), Struct_1(vec4<i32>(74720i, -2489i, 0i, -1i), 1285f, 0u, vec3<f32>(680f, -1378f, -503f))), Struct_2(vec4<i32>(i32(-2147483648), 0i, 49635i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), -63016i), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, i32(-2147483648)), 2054f, 1u, vec3<f32>(-418f, -846f, 1027f))), Struct_2(vec4<i32>(-54343i, 1i, 77971i, 2147483647i), vec3<i32>(2147483647i, -6414i, 0i), Struct_1(vec4<i32>(25201i, i32(-2147483648), 1i, 0i), 703f, 4294967295u, vec3<f32>(964f, 1660f, -468f))), Struct_2(vec4<i32>(0i, -117044i, 2147483647i, 15587i), vec3<i32>(-6520i, -29250i, 1i), Struct_1(vec4<i32>(-1i, 2147483647i, 15479i, -27188i), 1000f, 0u, vec3<f32>(-618f, -282f, -260f))), Struct_2(vec4<i32>(i32(-2147483648), 16959i, 3644i, -18752i), vec3<i32>(-1i, 23239i, -39625i), Struct_1(vec4<i32>(16195i, 0i, 0i, -24386i), 1491f, 13790u, vec3<f32>(174f, -2001f, 149f))), Struct_2(vec4<i32>(i32(-2147483648), 64305i, -1i, -16041i), vec3<i32>(11105i, 0i, 1i), Struct_1(vec4<i32>(-9082i, -24970i, i32(-2147483648), -1i), 1000f, 25852u, vec3<f32>(-587f, -1000f, 1261f))), Struct_2(vec4<i32>(i32(-2147483648), 1i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 26343i, 58865i), Struct_1(vec4<i32>(-28816i, -21348i, 1i, -12117i), 1915f, 4294967295u, vec3<f32>(-247f, 528f, 629f))), Struct_2(vec4<i32>(0i, -1i, 51762i, 1i), vec3<i32>(-1i, i32(-2147483648), 2147483647i), Struct_1(vec4<i32>(2147483647i, 31663i, -10306i, 2147483647i), 1000f, 31795u, vec3<f32>(463f, 888f, 160f))), Struct_2(vec4<i32>(-13085i, -44739i, -19198i, 2147483647i), vec3<i32>(-21016i, 0i, 2147483647i), Struct_1(vec4<i32>(27871i, i32(-2147483648), -2104i, 2147483647i), 1445f, 1u, vec3<f32>(775f, 1986f, -1999f))), Struct_2(vec4<i32>(-30424i, -1i, i32(-2147483648), -8727i), vec3<i32>(-1i, 1i, -33198i), Struct_1(vec4<i32>(7151i, 1i, 0i, 2147483647i), -841f, 20062u, vec3<f32>(-663f, 500f, -1155f))), Struct_2(vec4<i32>(1i, i32(-2147483648), 14398i, 20645i), vec3<i32>(0i, 2147483647i, 37797i), Struct_1(vec4<i32>(-2663i, 25916i, 0i, -1i), -104f, 46249u, vec3<f32>(1000f, -1000f, -254f))), Struct_2(vec4<i32>(-57225i, 982i, -18332i, -15498i), vec3<i32>(1i, i32(-2147483648), -10280i), Struct_1(vec4<i32>(2147483647i, 1i, 2147483647i, -20606i), -443f, 7120u, vec3<f32>(859f, -619f, -112f))), Struct_2(vec4<i32>(-65810i, -48746i, 1i, -24374i), vec3<i32>(1912i, -1968i, 62919i), Struct_1(vec4<i32>(-36238i, -16758i, 1i, i32(-2147483648)), 120f, 18329u, vec3<f32>(856f, -2085f, 1374f))), Struct_2(vec4<i32>(-23906i, 28048i, 1i, 12676i), vec3<i32>(4450i, 2147483647i, 48671i), Struct_1(vec4<i32>(4053i, i32(-2147483648), 31011i, i32(-2147483648)), 529f, 39362u, vec3<f32>(541f, 390f, 751f))), Struct_2(vec4<i32>(1i, 0i, -1i, -57993i), vec3<i32>(-8141i, 0i, -1i), Struct_1(vec4<i32>(-11167i, -44257i, -1i, -4865i), 109f, 0u, vec3<f32>(1000f, 302f, 346f))), Struct_2(vec4<i32>(49262i, 22928i, 1i, 1i), vec3<i32>(i32(-2147483648), 9485i, -1i), Struct_1(vec4<i32>(53971i, -49552i, i32(-2147483648), 0i), -234f, 31206u, vec3<f32>(-845f, -492f, 650f))), Struct_2(vec4<i32>(2147483647i, -21598i, 1i, 2147483647i), vec3<i32>(-18097i, -32757i, 14967i), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 45482i, -5034i), -136f, 0u, vec3<f32>(-1569f, 652f, 554f))), Struct_2(vec4<i32>(21102i, 0i, 1i, -69875i), vec3<i32>(60560i, i32(-2147483648), 54050i), Struct_1(vec4<i32>(2147483647i, -32724i, 1i, -875i), -1195f, 23856u, vec3<f32>(395f, -235f, -358f))), Struct_2(vec4<i32>(-1i, 0i, -3913i, -1i), vec3<i32>(-35051i, 322i, 2147483647i), Struct_1(vec4<i32>(35741i, -65983i, -11244i, 56514i), 624f, 80417u, vec3<f32>(-1227f, 3367f, 1000f))), Struct_2(vec4<i32>(0i, 2147483647i, i32(-2147483648), -10059i), vec3<i32>(-1i, i32(-2147483648), -23345i), Struct_1(vec4<i32>(-7391i, 69081i, -6664i, -27563i), 116f, 3633u, vec3<f32>(-841f, 711f, -1167f))), Struct_2(vec4<i32>(-36148i, -11750i, -6113i, 0i), vec3<i32>(-1i, 1i, 0i), Struct_1(vec4<i32>(-36324i, 1i, 1i, 2147483647i), -337f, 6127u, vec3<f32>(386f, 455f, 1423f))), Struct_2(vec4<i32>(1i, 1i, 1i, 0i), vec3<i32>(-1i, 23121i, 1i), Struct_1(vec4<i32>(-5790i, i32(-2147483648), 47913i, 1i), 647f, 4294967295u, vec3<f32>(-1001f, -639f, 748f))), Struct_2(vec4<i32>(-9078i, -12474i, 2147483647i, -1i), vec3<i32>(-5027i, 1i, 1i), Struct_1(vec4<i32>(1i, -4576i, 25916i, 1i), -716f, 20277u, vec3<f32>(142f, -582f, -383f))), Struct_2(vec4<i32>(8740i, -52013i, 1i, -14087i), vec3<i32>(1i, 2147483647i, -1i), Struct_1(vec4<i32>(i32(-2147483648), 26155i, -1i, -1240i), 206f, 9197u, vec3<f32>(-528f, -1118f, -1018f))), Struct_2(vec4<i32>(1i, i32(-2147483648), 0i, 2147483647i), vec3<i32>(35250i, 2147483647i, 27522i), Struct_1(vec4<i32>(i32(-2147483648), 62230i, 5919i, -37320i), 464f, 4294967295u, vec3<f32>(625f, -309f, -562f))), Struct_2(vec4<i32>(-1i, i32(-2147483648), 1i, 2040i), vec3<i32>(36839i, i32(-2147483648), 0i), Struct_1(vec4<i32>(-1i, 2147483647i, -22057i, i32(-2147483648)), 1143f, 1u, vec3<f32>(1532f, 1124f, 626f))));

var<private> global3: bool = false;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: i32) -> bool {
    let var_0 = ~vec2<i32>(-2147483647i, -(arg_1 << (~107803u % 32u)));
    let var_1 = vec3<bool>(false, all(vec4<bool>((arg_1 <= 0i) | select(true, true, true), true, all(vec4<bool>(false, true, false, true)), !any(vec4<bool>(true, false, false, true)))), !(-2147483647i < u_input.c.x));
    var var_2 = _wgslsmith_f_op_f32(trunc(1377f));
    global0 = array<i32, 14>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(177f, -140f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -1157f)), 1665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1685f + -818f)))));
    return false;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = !vec2<bool>(!(any(vec4<bool>(true, true, true, true)) != true), !(all(vec2<bool>(true, false)) & func_3(arg_2, arg_0.x)));
    return Struct_1(u_input.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1384f), 449f)))), ~u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(round(755f)), 2042f, _wgslsmith_f_op_f32(round(873f))));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0)) * -671f))));
    global1 = array<vec2<u32>, 4>();
    let var_1 = func_2(select(vec3<i32>(_wgslsmith_mod_i32(16867i, 2147483647i), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0[_wgslsmith_index_u32(35061u, 14u)], 1i, 15152i), vec4<i32>(-2747i, global0[_wgslsmith_index_u32(0u, 14u)], -2147483647i, 0i))), vec3<i32>(2147483647i, firstLeadingBit(global0[_wgslsmith_index_u32(u_input.d.x, 14u)]), -1i), false) >> ((vec3<u32>(u_input.d.x, 4294967295u, 26323u) >> (u_input.a.wzw % vec3<u32>(32u))) % vec3<u32>(32u)), abs(u_input.c.xxx), abs(0u));
    let var_2 = ~reverseBits(~_wgslsmith_mult_u32(var_1.c, ~u_input.a.x));
    var var_3 = !vec2<bool>((~var_2 << (~41628u % 32u)) == (4294967295u | _wgslsmith_add_u32(var_2, 4294967295u)), true);
    return var_3.x & !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-770f - 1047f)) > _wgslsmith_f_op_f32(-arg_0));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), -123f, 1675f, -477f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.d.x, 206f))), arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-578f, arg_2.b))), arg_3.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.x) * _wgslsmith_f_op_f32(trunc(arg_3.d.x))), _wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.c.x, 1i, arg_3.a.x), arg_2.a.wyy, 6767u).b - 107f), arg_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.d.x)) * _wgslsmith_f_op_f32(arg_2.d.x + arg_3.b))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.b, _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(sign(-983f)), arg_2.b), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d.x, -1377f, 794f, -2440f), vec4<f32>(arg_2.b, arg_2.b, -1000f, arg_3.b)), any(select(vec2<bool>(false, arg_0), vec2<bool>(true, false), arg_0))))));
    var var_1 = arg_2.c;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 431f, var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_3.d.x, 397f)), _wgslsmith_f_op_f32(106f - var_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(arg_3.a.yzw, vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 14u)], -22357i), 0u).b, -1459f, -1935f, _wgslsmith_f_op_f32(ceil(108f)))), select(vec4<bool>(arg_0, all(vec4<bool>(arg_0, arg_0, false, false)), any(vec3<bool>(arg_0, true, true)), !arg_0), select(select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, false, arg_0, arg_0), true), select(vec4<bool>(false, true, true, arg_0), vec4<bool>(true, arg_0, false, false), vec4<bool>(arg_0, false, arg_0, false)), select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(false, true, arg_0, false))), !vec4<bool>(true, arg_0, false, true)))));
    let var_2 = Struct_2(~(u_input.c >> (~countOneBits(vec4<u32>(37223u, 44638u, 4294967295u, 4294967295u)) % vec4<u32>(32u))), abs(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(arg_2.a.xyx, ~vec3<i32>(arg_3.a.x, 2147483647i, 2147483647i)), arg_3.a.xww)), arg_3);
    var var_3 = global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_div_u32(abs(var_2.c.c), arg_2.c), firstLeadingBit(arg_3.c))), 28u)];
    return arg_2;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(arg_0.x, _wgslsmith_mod_u32(arg_1.c, 85042u));
    global1 = array<vec2<u32>, 4>();
    var var_1 = arg_1.a.x;
    let var_2 = arg_1;
    global1 = array<vec2<u32>, 4>();
    return func_2(vec3<i32>(~(-14096i), firstLeadingBit(global0[_wgslsmith_index_u32(var_2.c, 14u)]), func_4(!(-165f <= var_2.b), max(-44497i | var_2.a.x, 18336i), func_4(true, global0[_wgslsmith_index_u32(66142u, 14u)], Struct_1(u_input.c, 187f, arg_1.c, vec3<f32>(-931f, var_2.b, var_0.a)), Struct_1(vec4<i32>(-1i, 1i, var_2.a.x, 2147483647i), -421f, arg_1.c, arg_0.zyy)), Struct_1(-arg_1.a, arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 63041u, var_2.c, u_input.b), u_input.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, var_0.a, var_0.a), vec3<f32>(arg_0.x, -1131f, 2089f), false)))).a.x), ~vec3<i32>(func_4(false, _wgslsmith_sub_i32(1i, 2147483647i), func_4(false, 1i, Struct_1(var_2.a, 333f, 0u, vec3<f32>(232f, var_0.a, var_2.b)), Struct_1(var_2.a, arg_0.x, 4294967295u, var_2.d)), Struct_1(var_2.a, 721f, 24611u, vec3<f32>(-822f, var_2.b, -1000f))).a.x, 2147483647i & var_2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, 43268i, arg_1.a.x, arg_1.a.x), u_input.c) ^ countOneBits(global0[_wgslsmith_index_u32(0u, 14u)])), 30399u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, 2147483647i, 4287i, -36200i)), _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -49074i, global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.d.x, 14u)]))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.c.x, u_input.c.x, global0[_wgslsmith_index_u32(29218u, 14u)]), u_input.c), vec4<i32>(-21595i, -10083i, u_input.c.x, -37612i), ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i))) | countOneBits(vec4<i32>(-26213i, _wgslsmith_dot_vec3_i32(u_input.c.wwx, vec3<i32>(15426i, global0[_wgslsmith_index_u32(u_input.d.x, 14u)], u_input.c.x)), abs(global0[_wgslsmith_index_u32(4294967295u, 14u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.d.x), 14u)])), u_input.c.zxy, func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), func_4(func_1(_wgslsmith_f_op_f32(1000f + -734f)), ~28813i, func_2(-vec3<i32>(-25450i, u_input.c.x, -438i), ~u_input.c.zzx, firstTrailingBit(u_input.b)), func_2(vec3<i32>(-1i, u_input.c.x, -10031i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, 29752i, global0[_wgslsmith_index_u32(0u, 14u)]), vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)), select(4294967295u, 0u, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2483f));
}

