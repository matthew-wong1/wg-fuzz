struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: vec2<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 12> = array<Struct_5, 12>(Struct_5(-1i, Struct_2(Struct_1(18293u, 260f, vec2<u32>(0u, 32416u)), -1000f, Struct_1(919u, -1000f, vec2<u32>(51844u, 65942u)), Struct_1(9271u, -1429f, vec2<u32>(77069u, 1u))), 959f, vec2<i32>(16243i, 2147483647i), Struct_4(Struct_1(4294967295u, -1462f, vec2<u32>(1u, 10658u)), vec2<u32>(42188u, 1u), 17929u, 698f)), Struct_5(-1i, Struct_2(Struct_1(1u, -1036f, vec2<u32>(23424u, 0u)), 553f, Struct_1(4294967295u, -1491f, vec2<u32>(70155u, 57743u)), Struct_1(31294u, 1000f, vec2<u32>(0u, 31961u))), -965f, vec2<i32>(36902i, 60211i), Struct_4(Struct_1(0u, -152f, vec2<u32>(1u, 9332u)), vec2<u32>(9175u, 4294967295u), 31522u, -431f)), Struct_5(0i, Struct_2(Struct_1(13531u, -1003f, vec2<u32>(1u, 88426u)), 619f, Struct_1(16103u, -427f, vec2<u32>(17038u, 5853u)), Struct_1(49683u, 474f, vec2<u32>(36427u, 1u))), 325f, vec2<i32>(-45730i, 21485i), Struct_4(Struct_1(2876u, -1000f, vec2<u32>(48214u, 26276u)), vec2<u32>(0u, 26724u), 82325u, -298f)), Struct_5(-4028i, Struct_2(Struct_1(0u, 1000f, vec2<u32>(56672u, 1u)), -1826f, Struct_1(0u, -738f, vec2<u32>(12648u, 4294967295u)), Struct_1(0u, 482f, vec2<u32>(22766u, 9338u))), 1000f, vec2<i32>(-1i, -1i), Struct_4(Struct_1(25809u, 799f, vec2<u32>(2851u, 1u)), vec2<u32>(100621u, 0u), 63279u, -388f)), Struct_5(53049i, Struct_2(Struct_1(1u, -1363f, vec2<u32>(0u, 1u)), -893f, Struct_1(1u, -385f, vec2<u32>(53713u, 1u)), Struct_1(37563u, -1000f, vec2<u32>(4294967295u, 17275u))), 1215f, vec2<i32>(0i, -33724i), Struct_4(Struct_1(57870u, 1597f, vec2<u32>(0u, 4294967295u)), vec2<u32>(35980u, 1u), 26353u, 494f)), Struct_5(-1i, Struct_2(Struct_1(34030u, 2030f, vec2<u32>(1u, 4294967295u)), 108f, Struct_1(52326u, -1113f, vec2<u32>(9580u, 48539u)), Struct_1(59998u, 250f, vec2<u32>(41394u, 595u))), 2264f, vec2<i32>(21001i, 2147483647i), Struct_4(Struct_1(3276u, 573f, vec2<u32>(21773u, 0u)), vec2<u32>(21004u, 63955u), 4294967295u, -1073f)), Struct_5(1i, Struct_2(Struct_1(6189u, 892f, vec2<u32>(1u, 0u)), 2343f, Struct_1(4294967295u, -1316f, vec2<u32>(29643u, 21626u)), Struct_1(37617u, 883f, vec2<u32>(0u, 1u))), -667f, vec2<i32>(4108i, -16405i), Struct_4(Struct_1(0u, -1620f, vec2<u32>(1u, 1u)), vec2<u32>(45120u, 37265u), 85763u, 461f)), Struct_5(0i, Struct_2(Struct_1(124745u, -936f, vec2<u32>(62284u, 0u)), 908f, Struct_1(49951u, -497f, vec2<u32>(1u, 4294967295u)), Struct_1(21911u, 1030f, vec2<u32>(4294967295u, 4294967295u))), -762f, vec2<i32>(i32(-2147483648), 0i), Struct_4(Struct_1(4294967295u, 566f, vec2<u32>(0u, 4294967295u)), vec2<u32>(1u, 4294967295u), 2450u, 756f)), Struct_5(40270i, Struct_2(Struct_1(0u, -284f, vec2<u32>(4294967295u, 0u)), 929f, Struct_1(1u, 970f, vec2<u32>(73091u, 10828u)), Struct_1(69584u, -199f, vec2<u32>(1u, 1u))), 483f, vec2<i32>(-2395i, 2147483647i), Struct_4(Struct_1(27167u, -848f, vec2<u32>(0u, 1u)), vec2<u32>(1u, 715u), 8356u, 283f)), Struct_5(1i, Struct_2(Struct_1(62513u, -1467f, vec2<u32>(39534u, 1u)), -1436f, Struct_1(79319u, 423f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(1u, -2636f, vec2<u32>(4294967295u, 1u))), -278f, vec2<i32>(-14195i, -22100i), Struct_4(Struct_1(0u, -1143f, vec2<u32>(4294967295u, 0u)), vec2<u32>(0u, 0u), 0u, -492f)), Struct_5(-1i, Struct_2(Struct_1(40039u, 1584f, vec2<u32>(27467u, 19254u)), 1000f, Struct_1(39452u, 471f, vec2<u32>(4294967295u, 3935u)), Struct_1(45205u, 2875f, vec2<u32>(31753u, 18585u))), 821f, vec2<i32>(12993i, 1i), Struct_4(Struct_1(19711u, -2009f, vec2<u32>(12134u, 33544u)), vec2<u32>(4294967295u, 0u), 1u, 1340f)), Struct_5(19541i, Struct_2(Struct_1(9049u, -1535f, vec2<u32>(4294967295u, 0u)), 1000f, Struct_1(3564u, 1372f, vec2<u32>(1u, 30739u)), Struct_1(4294967295u, 1172f, vec2<u32>(4294967295u, 4294967295u))), -1000f, vec2<i32>(-46598i, -19317i), Struct_4(Struct_1(0u, -1000f, vec2<u32>(0u, 37289u)), vec2<u32>(5848u, 83960u), 4294967295u, 100f)));

var<private> global1: array<i32, 2>;

var<private> global2: vec2<f32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: Struct_5) -> bool {
    return _wgslsmith_add_u32(13782u, u_input.c.x) < select(~_wgslsmith_clamp_u32(arg_0.a.c.c.x, ~u_input.c.x, arg_3.e.b.x), 4294967295u, true);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: Struct_5) -> Struct_3 {
    var var_0 = vec2<u32>(_wgslsmith_div_u32(arg_3.b.c.a, 4294967295u), _wgslsmith_dot_vec2_u32(u_input.c.wy, vec2<u32>(~(~0u), select(1u << (arg_3.b.a.c.x % 32u), 25421u, func_3(Struct_3(arg_3.b, arg_3.b, false, arg_0, 6932i), arg_3.b, global1[_wgslsmith_index_u32(arg_2, 2u)], Struct_5(-1i, arg_3.b, arg_1, arg_3.d, Struct_4(arg_3.b.d, u_input.c.zw, 4294967295u, -1372f)))))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.e.d)), 2136f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-577f, arg_1))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1729f, -294f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-627f, arg_1)))))));
    var var_1 = !all(vec4<bool>(_wgslsmith_f_op_f32(sign(1000f)) != arg_1, true, true, func_3(Struct_3(arg_3.b, arg_3.b, true, 24769i, 1i), Struct_2(Struct_1(u_input.a, arg_1, u_input.c.xw), arg_1, arg_3.e.a, Struct_1(arg_3.b.c.c.x, arg_1, vec2<u32>(33336u, 98512u))), _wgslsmith_clamp_i32(u_input.b.x, arg_3.d.x, 49062i), global0[_wgslsmith_index_u32(1u, 12u)])));
    var var_2 = !all(select(vec4<bool>(true, func_3(Struct_3(arg_3.b, arg_3.b, true, u_input.b.x, -11635i), Struct_2(Struct_1(49506u, -919f, vec2<u32>(var_0.x, var_0.x)), -1441f, Struct_1(u_input.c.x, 1000f, arg_3.e.b), arg_3.e.a), global1[_wgslsmith_index_u32(7424u, 2u)], global0[_wgslsmith_index_u32(arg_2, 12u)]), true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, select(false, false, true), arg_3.b.d.a > u_input.a)));
    let var_3 = vec3<i32>(global1[_wgslsmith_index_u32(~(~1u), 2u)], _wgslsmith_dot_vec2_i32(~u_input.b.xx, arg_3.d & countOneBits(arg_3.d)), _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(~vec2<i32>(27111i, -1i), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -1i), arg_3.d)), firstTrailingBit(i32(-1i) * -30292i)));
    return Struct_3(Struct_2(Struct_1(arg_2, 1034f, reverseBits(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(arg_3.e.b.x, arg_3.e.a.c.x), true))), 378f, arg_3.e.a, Struct_1(firstTrailingBit(min(52224u, 4294967295u)), -1016f, ~min(vec2<u32>(36099u, 46390u), vec2<u32>(0u, arg_3.e.a.a)))), Struct_2(Struct_1(~_wgslsmith_clamp_u32(u_input.c.x, 0u, arg_3.e.c), _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_div_f32(-1542f, arg_3.e.a.b), true)), u_input.c.ww), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))) + -480f), arg_3.e.a, Struct_1(arg_3.e.a.c.x, _wgslsmith_f_op_f32(ceil(arg_1)), u_input.c.zy)), true, -32382i, 2147483647i);
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = vec2<bool>(true, !(!(min(u_input.c.x, 4294967295u) <= u_input.a)));
    let var_1 = func_2(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_0.x, 42703i) >> (max(u_input.c.xww, u_input.c.zwy) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(-vec3<i32>(arg_0.x, -2147483647i, arg_0.x), u_input.b)), vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 1i, 0i), abs(vec3<i32>(-39307i, -2147483647i, -1i))), 2147483647i, i32(-1i) * -u_input.b.x)), _wgslsmith_div_f32(-508f, _wgslsmith_f_op_f32(-global2.x)), ~(~(u_input.c.x >> (u_input.a % 32u))) & 1u, global0[_wgslsmith_index_u32(u_input.a, 12u)]);
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_sub_u32(u_input.c.x | 0u, ~19862u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(625f + global2.x), var_1.a.c.b)), vec2<u32>(4294967295u ^ var_1.b.c.a, 1u)), _wgslsmith_f_op_f32(round(-985f)), func_2(func_2(i32(-1i) * -38916i, _wgslsmith_f_op_f32(-var_1.a.d.b), 1u, Struct_5(0i, Struct_2(var_1.b.a, 366f, var_1.a.a, var_1.b.a), var_1.b.c.b, u_input.b.xy, Struct_4(Struct_1(var_1.a.d.a, global2.x, var_1.b.a.c), vec2<u32>(17515u, var_1.b.a.c.x), u_input.c.x, -1000f))).d, _wgslsmith_f_op_f32(max(var_1.b.b, _wgslsmith_f_op_f32(-global2.x))), ~_wgslsmith_sub_u32(19848u, 1870u), Struct_5(reverseBits(arg_0.x), func_2(global1[_wgslsmith_index_u32(var_1.a.c.a, 2u)], -426f, 1u, Struct_5(global1[_wgslsmith_index_u32(u_input.a, 2u)], var_1.a, global2.x, vec2<i32>(19350i, 1i), Struct_4(var_1.b.a, vec2<u32>(15040u, var_1.a.a.c.x), var_1.b.a.a, 273f))).a, _wgslsmith_f_op_f32(abs(global2.x)), arg_0.xy, Struct_4(Struct_1(var_1.a.a.a, global2.x, vec2<u32>(var_1.b.a.c.x, 1u)), vec2<u32>(u_input.c.x, 4294967295u), u_input.a, global2.x))).b.a, func_2(1i, -1000f, u_input.c.x, Struct_5(-2147483647i, var_1.b, 1092f, abs(u_input.b.zx), Struct_4(Struct_1(u_input.c.x, 2752f, vec2<u32>(0u, 4294967295u)), var_1.a.c.c, 38043u, 1172f))).b.c), var_1.a, true, firstTrailingBit(~39969i), var_1.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) * _wgslsmith_f_op_f32(var_2.b.c.b * -939f)) + _wgslsmith_f_op_f32(-var_1.b.c.b)), _wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(-var_2.a.c.b)));
    var var_4 = _wgslsmith_div_u32(_wgslsmith_add_u32(var_1.a.d.a, var_2.a.c.c.x), var_2.a.a.a);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 12>();
    var var_0 = Struct_3(func_1(abs(~(~vec4<i32>(u_input.b.x, u_input.b.x, 35342i, u_input.b.x)))), Struct_2(func_1(~select(vec4<i32>(-44561i, u_input.b.x, 2147483647i, 1i), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x), vec4<bool>(false, true, false, true))).c, global2.x, Struct_1(14024u, _wgslsmith_div_f32(1451f, _wgslsmith_f_op_f32(trunc(-698f))), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.a), vec2<u32>(u_input.a, 0u))), Struct_1(_wgslsmith_mult_u32(func_2(-80264i, 1000f, u_input.a, Struct_5(u_input.b.x, Struct_2(Struct_1(32407u, global2.x, u_input.c.yw), -653f, Struct_1(u_input.a, global2.x, u_input.c.zz), Struct_1(u_input.c.x, -1000f, u_input.c.yx)), -959f, u_input.b.yz, Struct_4(Struct_1(1u, 1171f, vec2<u32>(82673u, u_input.a)), u_input.c.wy, u_input.a, global2.x))).b.a.a, u_input.a), 1706f, firstTrailingBit(~u_input.c.yx))), false || any(vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(select(1u, u_input.c.x, true), 2u)], select(-_wgslsmith_sub_i32(-u_input.b.x, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(26093u, 2u)], u_input.b.x)), u_input.b.x, select(false, true, !all(vec3<bool>(false, true, false)))));
    global1 = array<i32, 2>();
    var var_1 = Struct_5(max(1i, var_0.e), func_1(firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(var_0.b.d.c.x, 2u)], 22973i, -2147483647i, u_input.b.x)) >> (u_input.c % vec4<u32>(32u))), 1754f, ~vec2<i32>(min(~var_0.e, 1i), ~(~var_0.e)), Struct_4(func_1(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-52744i, global1[_wgslsmith_index_u32(u_input.a, 2u)], -17346i)), u_input.b.x & global1[_wgslsmith_index_u32(var_0.a.d.c.x, 2u)], max(u_input.b.x, -18132i), 0i)).c, vec2<u32>(reverseBits(_wgslsmith_div_u32(37311u, var_0.a.d.c.x)), countOneBits(_wgslsmith_mod_u32(var_0.b.a.a, 1u))), countOneBits(4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - var_0.b.a.b) - _wgslsmith_f_op_f32(f32(-1f) * -439f)))));
    var var_2 = vec2<f32>(global2.x, var_0.b.d.b);
    let var_3 = var_0.b.a;
    let var_4 = firstTrailingBit(_wgslsmith_add_vec4_u32(u_input.c, abs(~(~vec4<u32>(80512u, 0u, var_3.a, var_1.b.a.c.x)))));
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.d.b, 1000f), vec2<f32>(global2.x, -1321f), vec2<bool>(var_0.c, true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-338f, 2054f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -1220f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1951f, var_2.x)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(958f, global2.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.x, -1544f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits((4688u & var_4.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.e.a.a, 4294967295u, 1u), var_4.zyy) % 32u)), ~(firstLeadingBit(var_1.a) >> (~var_1.e.a.c.x % 32u)) & ~(-(~var_0.e)));
}

