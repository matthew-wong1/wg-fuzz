struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(481f, Struct_1(true, -473f), 47094u, Struct_3(vec3<u32>(50670u, 4294967295u, 1u)), Struct_2(Struct_1(true, 787f), i32(-2147483648), vec4<bool>(false, true, false, false), vec3<u32>(8078u, 1u, 1u))), Struct_4(773f, Struct_1(true, -110f), 4294967295u, Struct_3(vec3<u32>(0u, 46355u, 1u)), Struct_2(Struct_1(true, 765f), -1i, vec4<bool>(true, true, true, false), vec3<u32>(18778u, 75338u, 21294u))), Struct_4(-631f, Struct_1(true, -497f), 41720u, Struct_3(vec3<u32>(13613u, 1u, 4294967295u)), Struct_2(Struct_1(true, 401f), 0i, vec4<bool>(true, false, true, false), vec3<u32>(0u, 0u, 18956u))), Struct_4(-499f, Struct_1(true, -304f), 51662u, Struct_3(vec3<u32>(0u, 4294967295u, 0u)), Struct_2(Struct_1(false, -679f), -18989i, vec4<bool>(false, false, false, false), vec3<u32>(19129u, 27862u, 113257u))), Struct_4(190f, Struct_1(false, 1492f), 12460u, Struct_3(vec3<u32>(1u, 5808u, 0u)), Struct_2(Struct_1(true, 1142f), -6398i, vec4<bool>(true, false, false, true), vec3<u32>(52491u, 28832u, 70572u))), Struct_4(1000f, Struct_1(true, -1195f), 4294967295u, Struct_3(vec3<u32>(3118u, 0u, 0u)), Struct_2(Struct_1(true, 596f), 1i, vec4<bool>(true, false, false, true), vec3<u32>(36971u, 1u, 1u))), Struct_4(-1220f, Struct_1(true, -821f), 65525u, Struct_3(vec3<u32>(0u, 4294967295u, 1u)), Struct_2(Struct_1(false, -1710f), 2147483647i, vec4<bool>(true, true, false, false), vec3<u32>(45069u, 20092u, 4294967295u))), Struct_4(-677f, Struct_1(false, 1247f), 1u, Struct_3(vec3<u32>(1u, 49010u, 34539u)), Struct_2(Struct_1(false, -1000f), 0i, vec4<bool>(true, true, false, false), vec3<u32>(18630u, 0u, 57084u))), Struct_4(396f, Struct_1(true, -837f), 246u, Struct_3(vec3<u32>(1681u, 24427u, 1u)), Struct_2(Struct_1(true, -653f), 1i, vec4<bool>(false, true, true, true), vec3<u32>(80105u, 1u, 0u))), Struct_4(-1000f, Struct_1(true, 974f), 1282u, Struct_3(vec3<u32>(1u, 4294967295u, 1u)), Struct_2(Struct_1(true, -1154f), 2147483647i, vec4<bool>(true, false, true, false), vec3<u32>(4294967295u, 49429u, 52283u))), Struct_4(-987f, Struct_1(false, -415f), 4294967295u, Struct_3(vec3<u32>(4294967295u, 8007u, 0u)), Struct_2(Struct_1(true, -454f), 0i, vec4<bool>(true, true, true, true), vec3<u32>(0u, 8288u, 46028u))), Struct_4(997f, Struct_1(true, 607f), 1u, Struct_3(vec3<u32>(52086u, 4294967295u, 46868u)), Struct_2(Struct_1(true, 593f), 46840i, vec4<bool>(false, true, true, true), vec3<u32>(10935u, 8259u, 0u))), Struct_4(-452f, Struct_1(true, -551f), 1u, Struct_3(vec3<u32>(0u, 68417u, 58845u)), Struct_2(Struct_1(false, 819f), -1i, vec4<bool>(true, false, false, false), vec3<u32>(1u, 70854u, 1315u))), Struct_4(684f, Struct_1(false, -728f), 32913u, Struct_3(vec3<u32>(15510u, 3718u, 7462u)), Struct_2(Struct_1(true, -443f), 2147483647i, vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 0u, 22856u))), Struct_4(-1124f, Struct_1(false, -1967f), 9211u, Struct_3(vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_2(Struct_1(false, -1623f), 26709i, vec4<bool>(false, true, true, true), vec3<u32>(1154u, 1u, 4294967295u))), Struct_4(-1833f, Struct_1(false, -494f), 21965u, Struct_3(vec3<u32>(4294967295u, 1u, 0u)), Struct_2(Struct_1(false, -719f), -8905i, vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 19917u, 1689u))), Struct_4(1333f, Struct_1(true, 124f), 1u, Struct_3(vec3<u32>(12950u, 1u, 40189u)), Struct_2(Struct_1(true, 732f), 47945i, vec4<bool>(false, true, false, true), vec3<u32>(0u, 1u, 0u))), Struct_4(217f, Struct_1(true, -1000f), 10627u, Struct_3(vec3<u32>(259u, 0u, 4294967295u)), Struct_2(Struct_1(true, -1000f), 2147483647i, vec4<bool>(true, false, true, false), vec3<u32>(71833u, 1u, 4294967295u))), Struct_4(231f, Struct_1(true, 181f), 20329u, Struct_3(vec3<u32>(6716u, 58745u, 63000u)), Struct_2(Struct_1(true, 468f), 37339i, vec4<bool>(false, true, false, true), vec3<u32>(47980u, 19710u, 16331u))), Struct_4(1130f, Struct_1(true, -2121f), 78047u, Struct_3(vec3<u32>(4294967295u, 1u, 12043u)), Struct_2(Struct_1(true, -342f), 1i, vec4<bool>(true, false, false, true), vec3<u32>(15791u, 37778u, 0u))), Struct_4(-576f, Struct_1(false, 247f), 71166u, Struct_3(vec3<u32>(67671u, 2621u, 1u)), Struct_2(Struct_1(false, 407f), 17739i, vec4<bool>(true, true, false, false), vec3<u32>(0u, 0u, 1u))), Struct_4(-1013f, Struct_1(false, 607f), 108592u, Struct_3(vec3<u32>(17511u, 8467u, 0u)), Struct_2(Struct_1(true, 927f), 47378i, vec4<bool>(true, false, false, true), vec3<u32>(0u, 102389u, 41520u))), Struct_4(1000f, Struct_1(false, 114f), 0u, Struct_3(vec3<u32>(4294967295u, 47077u, 0u)), Struct_2(Struct_1(false, 263f), -1i, vec4<bool>(true, true, true, false), vec3<u32>(71282u, 4294967295u, 4294967295u))), Struct_4(-1472f, Struct_1(true, 1765f), 1u, Struct_3(vec3<u32>(33791u, 12352u, 347u)), Struct_2(Struct_1(true, 633f), -1i, vec4<bool>(true, false, true, false), vec3<u32>(84750u, 37399u, 4294967295u))), Struct_4(-895f, Struct_1(false, -449f), 1u, Struct_3(vec3<u32>(28162u, 1u, 0u)), Struct_2(Struct_1(true, -665f), 10477i, vec4<bool>(true, true, false, true), vec3<u32>(14810u, 7009u, 23844u))), Struct_4(-395f, Struct_1(true, -324f), 42183u, Struct_3(vec3<u32>(15772u, 4294967295u, 33144u)), Struct_2(Struct_1(false, 375f), 18254i, vec4<bool>(false, true, false, false), vec3<u32>(1u, 66014u, 3380u))), Struct_4(-1448f, Struct_1(true, -1000f), 27247u, Struct_3(vec3<u32>(4294967295u, 21826u, 76355u)), Struct_2(Struct_1(false, -1730f), 2147483647i, vec4<bool>(true, true, false, false), vec3<u32>(26754u, 47324u, 30096u))), Struct_4(-422f, Struct_1(false, -1017f), 56557u, Struct_3(vec3<u32>(0u, 22566u, 79836u)), Struct_2(Struct_1(false, -448f), -24017i, vec4<bool>(false, false, true, true), vec3<u32>(85788u, 1u, 69274u))), Struct_4(-1254f, Struct_1(true, 1447f), 7193u, Struct_3(vec3<u32>(4294967295u, 1u, 12848u)), Struct_2(Struct_1(true, 1179f), 1i, vec4<bool>(true, false, false, false), vec3<u32>(0u, 4294967295u, 42587u))));

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_4, 21>;

var<private> global3: array<bool, 24> = array<bool, 24>(false, true, false, false, false, true, true, true, false, false, true, true, false, false, false, false, true, true, false, true, false, true, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: bool) -> vec3<u32> {
    let var_0 = -661f;
    return ~select(firstTrailingBit(vec3<u32>(global1.x, arg_0.d.x, ~arg_1)), arg_0.d, !(!vec3<bool>(false, arg_3, true)));
}

fn func_2() -> vec4<bool> {
    let var_0 = vec3<i32>(firstTrailingBit(-u_input.a) | -11980i, _wgslsmith_mult_i32(countOneBits(~(i32(-1i) * -1i)), countOneBits(abs(-46748i))), _wgslsmith_clamp_i32(-5620i, 0i, -1i));
    global1 = _wgslsmith_clamp_vec3_u32(u_input.d, _wgslsmith_sub_vec3_u32(u_input.d, firstLeadingBit(vec3<u32>(u_input.b, u_input.b, global1.x >> (global1.x % 32u)))), u_input.d << (func_3(Struct_2(Struct_1(global3[_wgslsmith_index_u32(0u, 24u)], -241f), var_0.x | u_input.a, !vec4<bool>(global3[_wgslsmith_index_u32(global1.x, 24u)], true, true, global3[_wgslsmith_index_u32(u_input.b, 24u)]), vec3<u32>(45512u, u_input.b, 1u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(global1.x, 33486u, 4771u), _wgslsmith_sub_u32(global1.x, global1.x)), -712f, (i32(-1i) * -2147483647i) != var_0.x) % vec3<u32>(32u)));
    global2 = array<Struct_4, 21>();
    global3 = array<bool, 24>();
    global1 = ~(u_input.d >> (u_input.d % vec3<u32>(32u)));
    return select(select(select(!(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], global3[_wgslsmith_index_u32(u_input.d.x, 24u)], false, false)), select(!vec4<bool>(false, global3[_wgslsmith_index_u32(3736u, 24u)], global3[_wgslsmith_index_u32(global1.x, 24u)], global3[_wgslsmith_index_u32(global1.x, 24u)]), !vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(3940u, 24u)]), vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(1u, 24u)])), vec4<bool>(false && global3[_wgslsmith_index_u32(u_input.b, 24u)], any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], false, global3[_wgslsmith_index_u32(0u, 24u)], true)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.b), 24u)], global3[_wgslsmith_index_u32(0u, 24u)] != false)), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(global3[_wgslsmith_index_u32(4989u, 24u)], any(vec2<bool>(global3[_wgslsmith_index_u32(59433u, 24u)], false)), any(vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(global1.x, 24u)])), false), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, u_input.b), vec2<u32>(54425u, 1u)), 24u)], global3[_wgslsmith_index_u32(168960u, 24u)], true, all(vec2<bool>(global3[_wgslsmith_index_u32(0u, 24u)], false))), !global3[_wgslsmith_index_u32(1u, 24u)]), false);
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_4, 21>();
    var var_0 = ~(abs(global1.x) | ~4548u);
    var var_1 = Struct_1(global3[_wgslsmith_index_u32(global1.x, 24u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f) - _wgslsmith_f_op_f32(-387f - -1419f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-559f * 926f)))));
    let var_2 = func_2();
    var_0 = _wgslsmith_div_u32(global1.x >> (0u % 32u), u_input.b);
    return Struct_2(Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-2001f, 827f)))))), u_input.c.x, select(!select(select(var_2, vec4<bool>(true, var_2.x, var_2.x, true), var_1.a), !var_2, var_2), vec4<bool>(true, any(var_2), global3[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), ~u_input.b, true), 24u)], !any(vec3<bool>(false, var_2.x, true))), true), _wgslsmith_div_vec3_u32(vec3<u32>(~(4294967295u & global1.x), ~26605u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, u_input.d.x), vec4<u32>(global1.x, 0u, global1.x, 0u))), ~_wgslsmith_div_vec3_u32(~u_input.d, vec3<u32>(1u, global1.x, u_input.b))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_2) -> bool {
    global2 = array<Struct_4, 21>();
    global3 = array<bool, 24>();
    var var_0 = select(arg_2.d.zy, vec2<u32>(4294967295u, _wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec3_u32(~arg_2.d, vec3<u32>(4294967295u, arg_2.d.x, 4294967295u)))), !(!arg_2.c.yw));
    let var_1 = !select(func_1().c.zzx, func_1().c.yxw, false);
    global3 = array<bool, 24>();
    return var_1.x;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = Struct_2(func_1().a, -u_input.c.x, arg_2, u_input.d);
    let var_1 = Struct_3(~_wgslsmith_add_vec3_u32(select(var_0.d, vec3<u32>(1u, 4294967295u, global1.x), true), vec3<u32>(10908u, 3320u, 43108u)) ^ (_wgslsmith_mod_vec3_u32(var_0.d, var_0.d) | vec3<u32>(2803u, firstTrailingBit(8096u), 0u)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-140f))))), 1f, _wgslsmith_f_op_f32(round(-1175f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -715f), 585f)))));
    global2 = array<Struct_4, 21>();
    let var_3 = vec3<bool>(!(((global3[_wgslsmith_index_u32(global1.x, 24u)] || var_0.a.a) | select(var_0.c.x, false, true)) & global3[_wgslsmith_index_u32(var_0.d.x, 24u)]), any(vec4<bool>(func_1().a.a || (true && arg_2.x), true, false, true)), true);
    return var_1;
}

fn func_6(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(min(u_input.a, ~21267i), _wgslsmith_mult_i32(i32(-1i) * -23495i, select(u_input.a, -1i, arg_1)) >> (u_input.d.x % 32u), select(~(~2147483647i), u_input.a, arg_1)), reverseBits(vec3<i32>(u_input.a, _wgslsmith_clamp_i32(~2147483647i, -u_input.c.x, u_input.a), u_input.a)), _wgslsmith_mult_vec3_i32(select(firstLeadingBit(vec3<i32>(u_input.c.x, -64872i, u_input.c.x)), vec3<i32>(u_input.a, -1i, u_input.c.x) >> (arg_0.a % vec3<u32>(32u)), func_1().c.wxw), vec3<i32>(func_1().b, countOneBits(u_input.c.x), 2147483647i)) & vec3<i32>(_wgslsmith_clamp_i32(abs(u_input.c.x), u_input.c.x, reverseBits(u_input.c.x)), max(2147483647i << (global1.x % 32u), -u_input.a), u_input.a));
    let var_1 = -(~1i);
    global2 = array<Struct_4, 21>();
    let var_2 = vec4<u32>(~arg_0.a.x, global1.x, _wgslsmith_sub_u32(max(arg_0.a.x, 4294967295u), 1u), u_input.d.x);
    var var_3 = false;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~2147483647i;
    let var_1 = vec4<bool>(true, true, true, true);
    var var_2 = func_6(func_5(43179i, -reverseBits(~vec2<i32>(-11157i, 1i)), vec4<bool>(func_4(all(vec2<bool>(var_1.x, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, -770f, 253f, 1307f)), func_1()), all(var_1), true, true)), true);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(877f, var_2.a.b, -529f))))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1914f, var_2.a.b, 1194f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1146f, var_2.a.b) - -902f), -1172f, _wgslsmith_f_op_f32(-1695f * _wgslsmith_f_op_f32(-var_2.a.b))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(var_2.a.b + -440f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f), 635f))), var_2.c.x));
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

