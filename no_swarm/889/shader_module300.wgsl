struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
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

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 25> = array<i32, 25>(0i, 19835i, 29001i, 82072i, 1i, 2147483647i, 1i, -38447i, -3044i, 0i, -1047i, 2147483647i, i32(-2147483648), 47059i, -1i, -1i, 52889i, 79003i, i32(-2147483648), -5226i, 2147483647i, 0i, -10539i, -1056i, 15057i);

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec3<u32>(2419u, 2001u, 0u), Struct_1(1u, false, vec3<u32>(28678u, 80850u, 4294967295u)), 1u, vec2<bool>(true, true)), Struct_2(vec3<u32>(1u, 16799u, 4294967295u), Struct_1(1u, true, vec3<u32>(11831u, 8588u, 4294967295u)), 4294967295u, vec2<bool>(true, false)), Struct_2(vec3<u32>(0u, 15705u, 0u), Struct_1(24988u, false, vec3<u32>(0u, 18060u, 0u)), 0u, vec2<bool>(true, false)), Struct_2(vec3<u32>(4294967295u, 1655u, 0u), Struct_1(81364u, false, vec3<u32>(21639u, 26061u, 48184u)), 80962u, vec2<bool>(false, false)), Struct_2(vec3<u32>(4294967295u, 11730u, 4294967295u), Struct_1(87528u, true, vec3<u32>(13003u, 21312u, 1u)), 54843u, vec2<bool>(false, true)), Struct_2(vec3<u32>(4294967295u, 86772u, 1u), Struct_1(1u, false, vec3<u32>(0u, 37347u, 27728u)), 61096u, vec2<bool>(true, false)), Struct_2(vec3<u32>(19119u, 0u, 1u), Struct_1(32975u, false, vec3<u32>(9016u, 46819u, 0u)), 71151u, vec2<bool>(false, true)), Struct_2(vec3<u32>(2358u, 55968u, 23639u), Struct_1(16181u, true, vec3<u32>(1u, 36675u, 1u)), 391u, vec2<bool>(true, true)), Struct_2(vec3<u32>(0u, 1u, 0u), Struct_1(3112u, false, vec3<u32>(57052u, 1u, 1u)), 1u, vec2<bool>(true, false)), Struct_2(vec3<u32>(4294967295u, 1u, 38810u), Struct_1(4294967295u, true, vec3<u32>(414u, 1u, 11163u)), 8203u, vec2<bool>(true, false)), Struct_2(vec3<u32>(1u, 37803u, 0u), Struct_1(24233u, false, vec3<u32>(57738u, 38308u, 1u)), 4294967295u, vec2<bool>(true, false)), Struct_2(vec3<u32>(23064u, 54074u, 1u), Struct_1(4294967295u, false, vec3<u32>(0u, 7153u, 21604u)), 1u, vec2<bool>(false, true)), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(6718u, true, vec3<u32>(15536u, 0u, 0u)), 25944u, vec2<bool>(false, true)), Struct_2(vec3<u32>(16777u, 0u, 0u), Struct_1(77634u, true, vec3<u32>(1u, 4294967295u, 0u)), 0u, vec2<bool>(true, false)));

var<private> global3: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec2<bool>(false, false), Struct_1(4294967295u, false, vec3<u32>(56767u, 72060u, 64473u)), vec3<f32>(-916f, 350f, -415f), 0i), Struct_3(vec2<bool>(true, false), Struct_1(1u, true, vec3<u32>(4294967295u, 15285u, 37381u)), vec3<f32>(-1235f, -2539f, -625f), 19922i), Struct_3(vec2<bool>(false, true), Struct_1(21116u, true, vec3<u32>(4294967295u, 82957u, 4294967295u)), vec3<f32>(883f, -362f, -2155f), 1i), Struct_3(vec2<bool>(true, false), Struct_1(84650u, false, vec3<u32>(89194u, 61794u, 1u)), vec3<f32>(762f, -998f, -1364f), i32(-2147483648)), Struct_3(vec2<bool>(true, true), Struct_1(7668u, true, vec3<u32>(40995u, 1u, 11576u)), vec3<f32>(545f, 645f, 1172f), -22565i), Struct_3(vec2<bool>(false, false), Struct_1(1u, false, vec3<u32>(6358u, 0u, 58206u)), vec3<f32>(1260f, 1374f, -1000f), 1i), Struct_3(vec2<bool>(true, false), Struct_1(1u, false, vec3<u32>(7884u, 0u, 1u)), vec3<f32>(-452f, 821f, 812f), 14061i), Struct_3(vec2<bool>(false, true), Struct_1(4294967295u, true, vec3<u32>(4294967295u, 4294967295u, 0u)), vec3<f32>(-641f, -301f, 392f), -2192i), Struct_3(vec2<bool>(true, true), Struct_1(0u, true, vec3<u32>(0u, 0u, 4294967295u)), vec3<f32>(614f, -954f, -1000f), -1i), Struct_3(vec2<bool>(true, true), Struct_1(0u, true, vec3<u32>(7750u, 62994u, 19316u)), vec3<f32>(-760f, 1000f, 832f), 1i), Struct_3(vec2<bool>(false, false), Struct_1(0u, true, vec3<u32>(0u, 8839u, 0u)), vec3<f32>(892f, 436f, 281f), 14848i), Struct_3(vec2<bool>(false, true), Struct_1(4294967295u, true, vec3<u32>(1u, 4294967295u, 3623u)), vec3<f32>(1050f, 1123f, 2981f), 1i), Struct_3(vec2<bool>(false, true), Struct_1(1u, true, vec3<u32>(1u, 0u, 68628u)), vec3<f32>(-474f, -575f, -1000f), -10492i), Struct_3(vec2<bool>(true, false), Struct_1(22147u, true, vec3<u32>(4294967295u, 61069u, 32998u)), vec3<f32>(-974f, 812f, 1889f), -26690i), Struct_3(vec2<bool>(true, true), Struct_1(39422u, true, vec3<u32>(0u, 13935u, 1u)), vec3<f32>(1018f, 1088f, -1308f), 0i), Struct_3(vec2<bool>(true, false), Struct_1(0u, true, vec3<u32>(1u, 6619u, 24001u)), vec3<f32>(201f, 669f, -1170f), 10636i), Struct_3(vec2<bool>(false, false), Struct_1(44972u, true, vec3<u32>(10324u, 0u, 45439u)), vec3<f32>(-1302f, -1255f, 1661f), i32(-2147483648)), Struct_3(vec2<bool>(true, false), Struct_1(4294967295u, true, vec3<u32>(33385u, 1u, 1u)), vec3<f32>(339f, -1067f, -240f), -8071i), Struct_3(vec2<bool>(true, false), Struct_1(23240u, true, vec3<u32>(0u, 22176u, 14983u)), vec3<f32>(2028f, -818f, 386f), 0i), Struct_3(vec2<bool>(true, true), Struct_1(58130u, true, vec3<u32>(4294967295u, 34989u, 8361u)), vec3<f32>(-102f, 1000f, 898f), i32(-2147483648)), Struct_3(vec2<bool>(false, false), Struct_1(1u, true, vec3<u32>(82954u, 50877u, 1587u)), vec3<f32>(-361f, -1176f, 1000f), -21403i), Struct_3(vec2<bool>(true, true), Struct_1(0u, true, vec3<u32>(71787u, 4294967295u, 1u)), vec3<f32>(-1258f, 1277f, 755f), 0i), Struct_3(vec2<bool>(true, true), Struct_1(8406u, false, vec3<u32>(0u, 93719u, 0u)), vec3<f32>(-468f, -334f, -577f), 2147483647i), Struct_3(vec2<bool>(false, false), Struct_1(0u, false, vec3<u32>(35569u, 0u, 4294967295u)), vec3<f32>(1072f, -667f, -287f), 1i), Struct_3(vec2<bool>(false, false), Struct_1(36631u, false, vec3<u32>(4294967295u, 4294967295u, 22880u)), vec3<f32>(574f, -310f, -248f), -1i), Struct_3(vec2<bool>(true, false), Struct_1(0u, true, vec3<u32>(4294967295u, 4294967295u, 83679u)), vec3<f32>(-642f, 112f, 1389f), -18585i), Struct_3(vec2<bool>(true, false), Struct_1(1u, true, vec3<u32>(8663u, 65349u, 0u)), vec3<f32>(156f, 770f, 256f), 10155i), Struct_3(vec2<bool>(true, false), Struct_1(855u, true, vec3<u32>(1u, 50684u, 1u)), vec3<f32>(-887f, 1474f, 1672f), 2147483647i), Struct_3(vec2<bool>(false, false), Struct_1(1u, false, vec3<u32>(0u, 4294967295u, 0u)), vec3<f32>(-1384f, -364f, 1706f), 1i), Struct_3(vec2<bool>(true, false), Struct_1(94416u, true, vec3<u32>(1u, 0u, 12403u)), vec3<f32>(1000f, -694f, -1182f), 3485i));

var<private> global4: array<f32, 27> = array<f32, 27>(-638f, -336f, 737f, 1000f, -1000f, -407f, -506f, -1843f, -1312f, 725f, 681f, 492f, 302f, -721f, 955f, 784f, 233f, -1834f, -332f, -601f, -1204f, 166f, -2264f, 1892f, 553f, 338f, 1413f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    var var_0 = all(vec2<bool>(!(!arg_0.x), all(vec2<bool>(true, arg_0.x)) & arg_0.x));
    let var_1 = _wgslsmith_sub_vec3_i32(~vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -21405i), vec3<i32>(global1[_wgslsmith_index_u32(19167u, 25u)], arg_1.x, arg_1.x)), _wgslsmith_clamp_i32(1i, ~12075i, u_input.a.x), abs(global1[_wgslsmith_index_u32(~22954u, 25u)])), _wgslsmith_add_vec3_i32(vec3<i32>(54307i, -arg_1.x, countOneBits(u_input.c)), reverseBits(vec3<i32>(9959i, global1[_wgslsmith_index_u32(u_input.b, 25u)], 0i) | (vec3<i32>(-4552i, 0i, -31535i) & vec3<i32>(arg_1.x, 0i, 41560i)))));
    return 4294967295u;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: f32) -> vec3<u32> {
    var var_0 = global2[_wgslsmith_index_u32(~arg_2, 14u)];
    let var_1 = global2[_wgslsmith_index_u32(max(arg_2, var_0.a.x & countOneBits(20528u ^ func_3(vec3<bool>(var_0.d.x, var_0.d.x, var_0.b.b), u_input.a, var_0.a, -1345f))), 14u)];
    let var_2 = var_0.d;
    global2 = array<Struct_2, 14>();
    let var_3 = ~reverseBits(-(vec2<i32>(2147483647i, u_input.c) >> (var_1.a.yx % vec2<u32>(32u))) ^ vec2<i32>(1i, _wgslsmith_sub_i32(-11903i, 5671i)));
    return ~(~arg_0.xzx);
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), _wgslsmith_mod_u32(47688u, 1u)), ~(~vec3<u32>(9596u, u_input.b, u_input.b)))), true, ~func_2(~vec4<u32>(73493u, u_input.b, 1u, 3314u), ~countOneBits(vec4<u32>(4294967295u, 4334u, u_input.b, 1u)), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -616f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-578f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1056f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))));
    global4 = array<f32, 27>();
    let var_2 = reverseBits(~(~(vec4<u32>(70104u, 1u, var_0.c.x, 23301u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(36057u, 43896u, 0u, 18940u), vec4<u32>(53125u, var_0.a, 0u, 0u)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(var_2.x, 27u)], arg_0, var_1, -533f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_0, global0.x, global4[_wgslsmith_index_u32(u_input.b, 27u)]), vec4<f32>(-1653f, 155f, -1634f, -678f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_0 + -476f), arg_0, 1000f, arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 127f, global4[_wgslsmith_index_u32(1u, 27u)], var_1) + vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 27u)], -2484f, 188f, var_1)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, global0.x, arg_0), vec4<f32>(-408f, arg_0, arg_0, -1370f))))), false)));
    return Struct_3(vec2<bool>(false, !all(!vec2<bool>(var_0.b, true))), Struct_1(~abs(~106166u), var_0.b, ~select(var_0.c, vec3<u32>(0u, u_input.b, 4294967295u), false) & var_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1082f, global0.x, 1336f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-214f, global0.x, -859f) - var_3.zyz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, 504f, 163f) + vec3<f32>(-429f, var_1, var_3.x)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-801f, var_3.x, 1473f)))), var_0.b))), min(~16879i, global1[_wgslsmith_index_u32(3303u, 25u)]));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(arg_1.b.c.x, 14u)];
    var var_1 = vec4<i32>(~31462i, arg_0, -(u_input.c | select(arg_1.d, global1[_wgslsmith_index_u32(26886u, 25u)] ^ -2147483647i, -1189f < global4[_wgslsmith_index_u32(18122u, 27u)])), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 742i, arg_0), vec4<i32>(arg_1.d, 1i, arg_0, u_input.a.x)), 1i, _wgslsmith_mod_i32(arg_1.d, arg_0))), vec3<i32>(i32(-1i) * -1i, arg_0, arg_1.d)));
    var var_2 = !vec4<bool>((0i >= _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(var_0.c, 25u)], -25105i)) | false, all(!(!vec4<bool>(arg_1.b.b, true, false, true))), !arg_2.d.x, ((arg_2.a.x ^ var_0.b.c.x) <= _wgslsmith_div_u32(1u, var_0.a.x)) & ((var_0.d.x | false) == (12818i != var_1.x)));
    var var_3 = global4[_wgslsmith_index_u32(~(reverseBits(_wgslsmith_mod_u32(0u, ~arg_2.c)) >> (~_wgslsmith_clamp_u32(var_0.a.x, 33599u, _wgslsmith_add_u32(45486u, 13788u)) % 32u)), 27u)];
    var var_4 = select(select(!select(vec4<bool>(var_0.d.x, arg_1.a.x, var_2.x, var_0.d.x), select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(true, true, false, var_2.x), var_2.x), var_2.x), select(vec4<bool>(!arg_2.d.x, all(vec3<bool>(var_2.x, true, var_2.x)), func_1(-294f).b.b, arg_2.d.x), !(!vec4<bool>(var_2.x, false, false, true)), var_2.x), select(select(!vec4<bool>(true, var_0.d.x, var_0.b.b, arg_2.b.b), select(vec4<bool>(var_2.x, arg_1.a.x, var_2.x, true), vec4<bool>(false, var_2.x, true, arg_1.b.b), var_0.b.b), vec4<bool>(arg_1.b.b, true, var_0.d.x, false)), vec4<bool>(true, arg_2.d.x, false, !var_2.x), var_2.x)), select(select(vec4<bool>(true, var_2.x, !var_0.b.b, global0.x >= -240f), !(!vec4<bool>(false, false, false, arg_1.b.b)), false), !(!vec4<bool>(var_0.b.b, var_2.x, var_2.x, true)), u_input.c < _wgslsmith_mod_i32(-1i, ~arg_0)), !vec4<bool>(all(vec4<bool>(arg_1.b.b, true, true, arg_2.d.x)), any(select(var_2.xxx, vec3<bool>(false, var_2.x, var_2.x), var_2.zzx)), var_0.b.b | (global0.x < 1770f), true));
    return Struct_1(~(~arg_2.c), false, _wgslsmith_div_vec3_u32(~arg_2.a, ~(~arg_1.b.c) << (vec3<u32>(11140u, arg_1.b.a, ~38652u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(u_input.b, 27u)], -321f))))), 1f);
    var var_0 = func_4(~(-(~(-1i))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -739f)), global2[_wgslsmith_index_u32(u_input.b, 14u)], _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global4[_wgslsmith_index_u32(u_input.b, 27u)], global0.x, global0.x))), vec4<f32>(global0.x, global0.x, global4[_wgslsmith_index_u32(u_input.b, 27u)], 1331f)) - vec4<f32>(global0.x, -1164f, global4[_wgslsmith_index_u32(u_input.b, 27u)], _wgslsmith_f_op_f32(max(-1472f, global0.x)))))));
    var var_1 = reverseBits(-_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_0.c.x, 25u)], ~(-36503i)));
    let var_2 = ~(~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, var_0.c.x, 4294967295u, 37592u), abs(vec4<u32>(0u, 0u, 67095u, 4294967295u)))));
    global2 = array<Struct_2, 14>();
    let var_3 = func_4(_wgslsmith_mod_i32(max(select(global1[_wgslsmith_index_u32(u_input.b, 25u)], -2147483647i, var_0.b), global1[_wgslsmith_index_u32(1u, 25u)]) << (56583u % 32u), 1i), func_1(_wgslsmith_f_op_f32(floor(global0.x))), Struct_2(countOneBits(_wgslsmith_clamp_vec3_u32(~var_0.c, vec3<u32>(0u, var_0.a, var_0.a), select(vec3<u32>(38282u, 1u, 1u), var_2.xyz, false))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1552f) - _wgslsmith_f_op_f32(trunc(global0.x)))).b, ~_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, var_0.a), abs(42020u)), func_1(_wgslsmith_f_op_f32(1942f * _wgslsmith_f_op_f32(f32(-1f) * -259f))).a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(402f, global4[_wgslsmith_index_u32(67123u, 27u)], 470f, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(1u, 27u)], global0.x, global4[_wgslsmith_index_u32(46168u, 27u)], global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(540f, global0.x, global0.x, -1220f) + vec4<f32>(global4[_wgslsmith_index_u32(var_2.x, 27u)], global0.x, -275f, 704f))))));
    let x = u_input.a;
    s_output = StorageBuffer(717f);
}

