struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(15883u, true, Struct_3(vec2<i32>(24566i, -53983i), vec4<u32>(9959u, 43463u, 79352u, 57309u), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(0u, 0u)), Struct_2(vec2<i32>(-22418i, 20983i), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(0u, 122620u)), vec2<f32>(-701f, 504f))), 850f), Struct_5(20401u, true, Struct_3(vec2<i32>(0i, 22945i), vec4<u32>(22351u, 57070u, 1u, 38888u), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(4294967295u, 29025u)), Struct_2(vec2<i32>(23097i, 4360i), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(12482u, 26719u)), vec2<f32>(-1000f, 741f))), -1156f), Struct_5(0u, false, Struct_3(vec2<i32>(-19026i, 2555i), vec4<u32>(163242u, 35504u, 69419u, 29288u), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(33033u, 0u)), Struct_2(vec2<i32>(62967i, 1i), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(42682u, 45770u)), vec2<f32>(-134f, 2220f))), 684f), Struct_5(23222u, false, Struct_3(vec2<i32>(45890i, 1i), vec4<u32>(1u, 0u, 1u, 1u), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(10801u, 40712u)), Struct_2(vec2<i32>(i32(-2147483648), -28182i), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(97394u, 0u)), vec2<f32>(-178f, -406f))), 729f), Struct_5(1u, false, Struct_3(vec2<i32>(-11537i, 2908i), vec4<u32>(53463u, 17056u, 1u, 100609u), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(2403u, 5545u)), Struct_2(vec2<i32>(1i, -47741i), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(27145u, 1u)), vec2<f32>(3251f, -926f))), -464f), Struct_5(0u, false, Struct_3(vec2<i32>(-1i, 2147483647i), vec4<u32>(20637u, 0u, 4294967295u, 20956u), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(4532u, 15929u)), Struct_2(vec2<i32>(i32(-2147483648), -3851i), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(0u, 0u)), vec2<f32>(-1000f, 588f))), 1000f), Struct_5(0u, false, Struct_3(vec2<i32>(1i, -39324i), vec4<u32>(83356u, 0u, 1u, 19456u), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(1u, 4294967295u)), Struct_2(vec2<i32>(-1i, -3925i), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(29039u, 25402u)), vec2<f32>(395f, 572f))), 607f), Struct_5(1u, false, Struct_3(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<u32>(9406u, 0u, 4294967295u, 0u), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(0u, 5881u)), Struct_2(vec2<i32>(-15103i, -6567i), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 5772u)), vec2<f32>(-406f, 116f))), -2031f), Struct_5(23398u, false, Struct_3(vec2<i32>(-22866i, 7197i), vec4<u32>(7243u, 1u, 4294967295u, 14930u), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(0u, 81493u)), Struct_2(vec2<i32>(25981i, 0i), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(0u, 59320u)), vec2<f32>(-216f, -537f))), -351f), Struct_5(4294967295u, true, Struct_3(vec2<i32>(-56098i, 36163i), vec4<u32>(33498u, 4294967295u, 1805u, 56254u), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(0u, 12913u)), Struct_2(vec2<i32>(1i, i32(-2147483648)), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 1u)), vec2<f32>(-520f, -738f))), -104f), Struct_5(0u, false, Struct_3(vec2<i32>(5235i, i32(-2147483648)), vec4<u32>(8523u, 52419u, 22247u, 4294967295u), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(21918u, 8552u)), Struct_2(vec2<i32>(48260i, i32(-2147483648)), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 1u)), vec2<f32>(519f, -195f))), -562f), Struct_5(55861u, true, Struct_3(vec2<i32>(5039i, 2147483647i), vec4<u32>(26376u, 4294967295u, 37952u, 0u), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(1u, 63356u)), Struct_2(vec2<i32>(-34843i, 2147483647i), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 0u)), vec2<f32>(669f, -310f))), 802f), Struct_5(0u, true, Struct_3(vec2<i32>(-1459i, -19093i), vec4<u32>(1u, 1u, 50u, 5191u), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(1u, 1u)), Struct_2(vec2<i32>(80234i, -37703i), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(40811u, 94485u)), vec2<f32>(642f, 1952f))), 683f), Struct_5(0u, true, Struct_3(vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(51306u, 1u, 0u, 1u), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(4294967295u, 1u)), Struct_2(vec2<i32>(9944i, -6067i), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(4490u, 1u)), vec2<f32>(1000f, -607f))), 1000f));

var<private> global1: array<i32, 11>;

var<private> global2: Struct_3 = Struct_3(vec2<i32>(0i, -45919i), vec4<u32>(69584u, 4294967295u, 25585u, 23043u), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(41860u, 68444u)), Struct_2(vec2<i32>(-21307i, 2147483647i), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(0u, 57898u)), vec2<f32>(-697f, 927f)));

var<private> global3: bool;

var<private> global4: array<bool, 17>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>) -> vec2<u32> {
    let var_0 = Struct_2(_wgslsmith_clamp_vec2_i32(-firstTrailingBit(firstTrailingBit(vec2<i32>(u_input.a, arg_0.a.x))), vec2<i32>(reverseBits(u_input.a | u_input.a), _wgslsmith_sub_i32(1i, 0i)), arg_0.a), Struct_1(!arg_0.b.a, ~arg_0.b.b), arg_0.c);
    global2 = Struct_3(vec2<i32>(arg_1, -10290i), ~(~(~(~arg_2))), var_0.b, Struct_2(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a.x, global2.d.a.x), arg_0.a), min(vec2<i32>(global2.a.x, -8323i), arg_0.a)), _wgslsmith_mod_vec2_i32(-vec2<i32>(arg_1, 23669i), arg_0.a)), Struct_1(!(!vec4<bool>(global4[_wgslsmith_index_u32(0u, 17u)], global2.c.a.x, global4[_wgslsmith_index_u32(43717u, 17u)], false)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.b.x, 38209u), ~global2.d.b.b)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-203f, 1569f) + _wgslsmith_f_op_vec2_f32(-global2.d.c))))));
    global3 = false;
    var var_1 = global0[_wgslsmith_index_u32(arg_2.x, 14u)];
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 36107u, arg_2.x, 4294967295u), global2.b), _wgslsmith_dot_vec2_u32(arg_0.b.b, var_1.c.b.yx)) & ~var_1.c.d.b.b.x, ~arg_2.x), ~max(~(var_1.c.b.x | 1u), reverseBits(0u))), 14u)];
    return global2.b.zy;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_3(global2.a, global2.b, global2.c, Struct_2(vec2<i32>(u_input.a, max(-306i, -17449i)), global2.d.b, _wgslsmith_f_op_vec2_f32(step(global2.d.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.c.x, 872f)), _wgslsmith_div_vec2_f32(global2.d.c, global2.d.c))))));
    var var_1 = vec3<u32>(max(14969u, _wgslsmith_mult_u32(select(18231u, 4294967295u, arg_0.x), var_0.c.b.x << (31876u % 32u)) | min(46710u, _wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(var_0.d.b.b.x, 1u, 58715u, global2.b.x)))), var_0.c.b.x, reverseBits(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(1u, 1u), reverseBits(76305u))));
    let var_2 = func_3(var_0.d, _wgslsmith_mod_i32(0i, u_input.a), var_0.b);
    var var_3 = global2.d.a;
    var var_4 = Struct_2(~(-abs(_wgslsmith_mod_vec2_i32(var_0.d.a, vec2<i32>(global2.d.a.x, -20837i)))), var_0.c, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(412f, _wgslsmith_f_op_f32(-889f * global2.d.c.x))))));
    return global2.c;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec3<i32>) -> i32 {
    let var_0 = Struct_2(-global2.a, func_2(global2.d.b.a), _wgslsmith_f_op_vec2_f32(round(global2.d.c)));
    let var_1 = all(vec3<bool>(true, var_0.b.a.x, !(false || global2.d.b.a.x))) & (arg_1 >= global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, firstLeadingBit(var_0.b.b.x) & var_0.b.b.x), 11u)]);
    global4 = array<bool, 17>();
    let var_2 = Struct_3(-_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-13181i, 1i), var_0.a & global2.d.a), firstLeadingBit(vec4<u32>(global2.b.x, ~_wgslsmith_mod_u32(1u, var_0.b.b.x), abs(0u), _wgslsmith_add_u32(13246u, 44250u))), var_0.b, Struct_2(vec2<i32>(1i, _wgslsmith_mod_i32(global2.a.x, _wgslsmith_mult_i32(1i, -1i))), Struct_1(func_2(vec4<bool>(false, false, true, global2.c.a.x)).a, countOneBits(var_0.b.b) | (var_0.b.b | global2.c.b)), global2.d.c));
    var var_3 = var_2.d;
    return _wgslsmith_mod_i32(_wgslsmith_mult_i32(-(~(i32(-1i) * -42471i)), _wgslsmith_div_i32(var_3.a.x, countOneBits(1i))), min(arg_3.x, _wgslsmith_add_i32(select(var_3.a.x, _wgslsmith_mult_i32(arg_3.x, arg_1), var_0.b.b.x < 35826u), 24789i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 14>();
    var var_0 = i32(-1i) * -(~firstTrailingBit(func_1(vec3<f32>(global2.d.c.x, global2.d.c.x, 1000f), -19128i, vec3<f32>(global2.d.c.x, 1549f, global2.d.c.x), vec3<i32>(global2.a.x, 50223i, 20641i))));
    var_0 = _wgslsmith_dot_vec4_i32(~vec4<i32>(global2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-33058i, -2147483647i, global2.d.a.x, -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(27292u, 11u)], -2147483647i, -2147483647i, -24420i) >> (vec4<u32>(76126u, global2.c.b.x, global2.b.x, global2.d.b.b.x) % vec4<u32>(32u))), u_input.a, countOneBits(~u_input.a)), vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, global2.d.a.x, 15992i, u_input.a), vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(global2.b.x, 11u)], -18159i, -36958i))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 48855i, u_input.a, 24464i), vec4<i32>(-2147483647i, 28439i, global1[_wgslsmith_index_u32(0u, 11u)], -28532i), vec4<i32>(u_input.a, global2.a.x, global1[_wgslsmith_index_u32(global2.b.x, 11u)], 15775i))), abs(func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.d.c.x, -416f, global2.d.c.x), vec3<f32>(global2.d.c.x, 578f, global2.d.c.x), false)), global1[_wgslsmith_index_u32(12442u, 11u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(1173f, global2.d.c.x, 1237f) - vec3<f32>(-1086f, global2.d.c.x, 214f)), vec3<i32>(-1i, 2147483647i, u_input.a))), -6583i));
    var_0 = i32(-1i) * -49689i;
    var var_1 = Struct_4(_wgslsmith_mult_i32(reverseBits(global2.a.x ^ _wgslsmith_mod_i32(u_input.a, -12603i)), ~(~_wgslsmith_sub_i32(global2.a.x, global1[_wgslsmith_index_u32(global2.d.b.b.x, 11u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_div_u32(countOneBits(50457u), 4294967295u)), ~vec2<i32>(max(global2.a.x, _wgslsmith_clamp_i32(global2.a.x, -30049i, -41094i)), -19365i));
}

