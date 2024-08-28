struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

var<private> global2: Struct_5 = Struct_5(1591f);

var<private> global3: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_2(Struct_1(-1000f, vec4<u32>(1u, 1u, 11434u, 14701u)), Struct_1(1831f, vec4<u32>(1u, 565u, 56167u, 1u))), vec3<i32>(-8094i, -1i, 1i), Struct_1(-424f, vec4<u32>(25006u, 0u, 4294967295u, 22045u))), Struct_3(Struct_2(Struct_1(928f, vec4<u32>(4294967295u, 0u, 103909u, 113930u)), Struct_1(1382f, vec4<u32>(67617u, 0u, 4294967295u, 0u))), vec3<i32>(28669i, 41655i, 41397i), Struct_1(1983f, vec4<u32>(26887u, 4294967295u, 0u, 1197u))), Struct_3(Struct_2(Struct_1(-279f, vec4<u32>(0u, 4294967295u, 18416u, 51300u)), Struct_1(705f, vec4<u32>(4294967295u, 1u, 1u, 24021u))), vec3<i32>(2147483647i, 1i, 0i), Struct_1(-2100f, vec4<u32>(0u, 4200u, 1u, 34696u))), Struct_3(Struct_2(Struct_1(-1452f, vec4<u32>(0u, 1u, 1u, 1u)), Struct_1(2259f, vec4<u32>(0u, 1u, 39509u, 1u))), vec3<i32>(-82144i, 15082i, i32(-2147483648)), Struct_1(-673f, vec4<u32>(0u, 58291u, 13322u, 0u))), Struct_3(Struct_2(Struct_1(1633f, vec4<u32>(0u, 1u, 4294967295u, 39757u)), Struct_1(-815f, vec4<u32>(1u, 2672u, 41246u, 79387u))), vec3<i32>(1i, -7219i, 7045i), Struct_1(-917f, vec4<u32>(0u, 3689u, 0u, 0u))), Struct_3(Struct_2(Struct_1(665f, vec4<u32>(42606u, 1u, 0u, 1u)), Struct_1(110f, vec4<u32>(27600u, 27029u, 123169u, 1u))), vec3<i32>(-18051i, i32(-2147483648), -15410i), Struct_1(541f, vec4<u32>(4294967295u, 0u, 1u, 1u))), Struct_3(Struct_2(Struct_1(1326f, vec4<u32>(4294967295u, 0u, 67086u, 28165u)), Struct_1(206f, vec4<u32>(4294967295u, 37533u, 65307u, 4294967295u))), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), Struct_1(-673f, vec4<u32>(103121u, 38637u, 0u, 1u))), Struct_3(Struct_2(Struct_1(-1347f, vec4<u32>(1u, 4294967295u, 9563u, 46647u)), Struct_1(605f, vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u))), vec3<i32>(0i, 2147483647i, 29447i), Struct_1(-1215f, vec4<u32>(21174u, 0u, 22005u, 22349u))), Struct_3(Struct_2(Struct_1(497f, vec4<u32>(1u, 21923u, 4294967295u, 0u)), Struct_1(-797f, vec4<u32>(17111u, 0u, 1u, 41713u))), vec3<i32>(12119i, i32(-2147483648), i32(-2147483648)), Struct_1(220f, vec4<u32>(52575u, 25364u, 28242u, 0u))), Struct_3(Struct_2(Struct_1(-1083f, vec4<u32>(30409u, 1u, 1u, 20380u)), Struct_1(-275f, vec4<u32>(37016u, 46232u, 7094u, 562u))), vec3<i32>(21639i, 26425i, -15971i), Struct_1(-369f, vec4<u32>(4294967295u, 4294967295u, 63992u, 4294967295u))), Struct_3(Struct_2(Struct_1(-536f, vec4<u32>(1u, 73900u, 0u, 60916u)), Struct_1(404f, vec4<u32>(1u, 52065u, 0u, 1u))), vec3<i32>(389i, -1i, 6965i), Struct_1(1221f, vec4<u32>(21262u, 46376u, 133300u, 922u))), Struct_3(Struct_2(Struct_1(924f, vec4<u32>(41411u, 1u, 1u, 19861u)), Struct_1(1000f, vec4<u32>(26226u, 0u, 46290u, 10168u))), vec3<i32>(-70491i, i32(-2147483648), -58679i), Struct_1(-264f, vec4<u32>(67687u, 12680u, 1u, 7009u))), Struct_3(Struct_2(Struct_1(790f, vec4<u32>(1u, 0u, 0u, 26384u)), Struct_1(-2318f, vec4<u32>(4294967295u, 4294967295u, 0u, 72559u))), vec3<i32>(11723i, -24661i, -3162i), Struct_1(-927f, vec4<u32>(33294u, 1u, 4294967295u, 0u))), Struct_3(Struct_2(Struct_1(1622f, vec4<u32>(49207u, 62140u, 4294967295u, 4294967295u)), Struct_1(-434f, vec4<u32>(21991u, 4294967295u, 1u, 13342u))), vec3<i32>(-21335i, -222i, 32126i), Struct_1(1000f, vec4<u32>(4294967295u, 1u, 1u, 27608u))), Struct_3(Struct_2(Struct_1(-1280f, vec4<u32>(47327u, 18117u, 4294967295u, 4294967295u)), Struct_1(-1651f, vec4<u32>(3467u, 63346u, 0u, 4294967295u))), vec3<i32>(42222i, 0i, 4476i), Struct_1(270f, vec4<u32>(4294967295u, 70249u, 19682u, 14870u))), Struct_3(Struct_2(Struct_1(-1482f, vec4<u32>(10549u, 25980u, 0u, 11815u)), Struct_1(-1108f, vec4<u32>(4294967295u, 48062u, 20912u, 1u))), vec3<i32>(1i, 1i, -10634i), Struct_1(-895f, vec4<u32>(4294967295u, 1u, 1u, 4294967295u))), Struct_3(Struct_2(Struct_1(1005f, vec4<u32>(30189u, 41297u, 1u, 35939u)), Struct_1(-731f, vec4<u32>(1u, 0u, 0u, 4294967295u))), vec3<i32>(0i, 2147483647i, 1i), Struct_1(-1273f, vec4<u32>(0u, 4733u, 50370u, 0u))), Struct_3(Struct_2(Struct_1(1000f, vec4<u32>(0u, 1u, 0u, 35287u)), Struct_1(-718f, vec4<u32>(69735u, 44270u, 4294967295u, 0u))), vec3<i32>(-6265i, 0i, 1i), Struct_1(-598f, vec4<u32>(4294967295u, 4294967295u, 53994u, 4294967295u))), Struct_3(Struct_2(Struct_1(1300f, vec4<u32>(6394u, 83668u, 98240u, 4294967295u)), Struct_1(-1130f, vec4<u32>(0u, 42729u, 40329u, 28343u))), vec3<i32>(21370i, 2147483647i, -24825i), Struct_1(712f, vec4<u32>(0u, 1u, 7996u, 1u))), Struct_3(Struct_2(Struct_1(575f, vec4<u32>(0u, 88901u, 1u, 101028u)), Struct_1(113f, vec4<u32>(8434u, 0u, 55448u, 38127u))), vec3<i32>(8773i, 32171i, 39113i), Struct_1(-1089f, vec4<u32>(1u, 1u, 4294967295u, 0u))), Struct_3(Struct_2(Struct_1(-1046f, vec4<u32>(47811u, 26515u, 48505u, 0u)), Struct_1(-369f, vec4<u32>(57792u, 20409u, 0u, 0u))), vec3<i32>(-1i, 43858i, -26001i), Struct_1(1063f, vec4<u32>(32165u, 92774u, 60727u, 43142u))), Struct_3(Struct_2(Struct_1(887f, vec4<u32>(1u, 0u, 60814u, 4294967295u)), Struct_1(661f, vec4<u32>(24033u, 1u, 27525u, 0u))), vec3<i32>(-1i, i32(-2147483648), 6706i), Struct_1(-190f, vec4<u32>(10791u, 25542u, 1u, 4294967295u))), Struct_3(Struct_2(Struct_1(350f, vec4<u32>(0u, 1963u, 0u, 28881u)), Struct_1(2944f, vec4<u32>(4152u, 4294967295u, 39412u, 35034u))), vec3<i32>(i32(-2147483648), 0i, 2276i), Struct_1(1773f, vec4<u32>(17961u, 1u, 28453u, 19801u))), Struct_3(Struct_2(Struct_1(-760f, vec4<u32>(4294967295u, 40562u, 4294967295u, 71962u)), Struct_1(219f, vec4<u32>(55306u, 17341u, 4294967295u, 4294967295u))), vec3<i32>(1i, -48033i, 23965i), Struct_1(1446f, vec4<u32>(0u, 4294967295u, 1u, 28825u))), Struct_3(Struct_2(Struct_1(-1581f, vec4<u32>(0u, 0u, 4294967295u, 4294967295u)), Struct_1(770f, vec4<u32>(34776u, 6923u, 69699u, 51298u))), vec3<i32>(21445i, i32(-2147483648), 2147483647i), Struct_1(-936f, vec4<u32>(0u, 1u, 76047u, 14527u))), Struct_3(Struct_2(Struct_1(-641f, vec4<u32>(17337u, 1u, 0u, 4294967295u)), Struct_1(2697f, vec4<u32>(0u, 0u, 0u, 27240u))), vec3<i32>(2147483647i, -1i, 26566i), Struct_1(-678f, vec4<u32>(17180u, 0u, 1u, 0u))), Struct_3(Struct_2(Struct_1(-104f, vec4<u32>(43781u, 4294967295u, 4294967295u, 0u)), Struct_1(387f, vec4<u32>(0u, 24690u, 4294967295u, 1u))), vec3<i32>(17721i, -1i, 1i), Struct_1(-537f, vec4<u32>(0u, 40296u, 1u, 4131u))));

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec3<u32> {
    return _wgslsmith_mult_vec3_u32(firstLeadingBit(~select(reverseBits(global4.b.xxz), ~vec3<u32>(global4.b.x, global4.b.x, u_input.a), false)), abs(vec3<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, global4.b.x), u_input.a), 39804u)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(879f, ~global4.b), Struct_1(_wgslsmith_f_op_f32(sign(global4.a)), ~abs(global4.b) ^ vec4<u32>(abs(29273u), u_input.a, ~u_input.a, 22676u)));
    let var_1 = arg_3.x;
    global0 = any(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))));
    var var_2 = Struct_2(Struct_1(arg_1, _wgslsmith_mult_vec4_u32(~global4.b, abs(max(vec4<u32>(var_0.a.b.x, 12600u, global4.b.x, 4294967295u), global4.b)))), var_0.b);
    global2 = Struct_5(-436f);
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-450f, arg_1)), _wgslsmith_f_op_f32(abs(-1957f)), _wgslsmith_div_f32(var_1, global2.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1, 1079f, 989f), vec3<f32>(-1088f, 1919f, 200f)))))))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~vec3<i32>(_wgslsmith_add_i32(countOneBits(u_input.c), -2147483647i), -42777i, ~(-u_input.c));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global4.a, 157f, global4.a), _wgslsmith_f_op_vec3_f32(func_3(var_0.x, -1626f, vec2<f32>(global2.a, -842f), vec2<f32>(global2.a, global2.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a, global2.a, global4.a) * vec3<f32>(-989f, global4.a, global2.a)), true)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2608f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1738f, var_2, -2116f))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(global4.a)), -212f, 128f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1009f, _wgslsmith_div_f32(var_1.x, 340f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-374f, var_1.x, var_2))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-835f, global4.a, var_1.x), vec3<f32>(-381f, 875f, var_2)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2, -335f, var_1.x))), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))))));
    var var_3 = global4.a;
    return Struct_1(-142f, global4.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global4 = func_2();
    var var_1 = func_2();
    let var_2 = false;
    global0 = false;
    var var_3 = _wgslsmith_f_op_f32(max(325f, global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(abs(select(vec3<i32>(1i, u_input.b, 11205i), vec3<i32>(0i, u_input.c, u_input.c), vec3<bool>(var_2, var_2, false))), vec3<i32>(u_input.c, u_input.b >> (u_input.a % 32u), _wgslsmith_div_i32(u_input.b, u_input.b))), u_input.b, 1i & u_input.b), reverseBits(vec3<i32>(u_input.b, 1i, (u_input.b ^ 2555i) ^ -1i)));
}

