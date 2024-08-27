struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    global0 = abs(1i);
    global0 = 1i;
    global0 = -62730i;
    global0 = abs(u_input.a);
    global0 = u_input.a;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(306f)), _wgslsmith_f_op_f32(floor(2242f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(sign(672f)))))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = (~arg_3.c.x == arg_2.c.x) | arg_0;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.d.a.x + -518f), _wgslsmith_f_op_f32(-1000f * 1013f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.d.a.x * arg_3.a.x))), arg_2.d.a.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1098f, arg_2.a.x, arg_2.d.a.x, 1731f))))), arg_3.b, arg_2.c, Struct_1(arg_2.d.a), -21497i);
    global0 = var_1.b.x << (~35238u % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1383f, 852f, -763f, -657f))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-232f, 301f))))), _wgslsmith_f_op_f32(round(arg_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d.a.x * arg_3.d.a.x) - var_1.d.a.x)), var_1.a.x)));
    var var_3 = arg_3.a.zz;
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = vec3<i32>(min(arg_2.e, 1i), ~(~(~_wgslsmith_mult_i32(arg_2.b.x, arg_2.b.x))), u_input.a);
    var var_1 = arg_2.a;
    global0 = 0i;
    global0 = -29237i;
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -875f), 1468f, func_3(true, 4294967295u, Struct_2(arg_2.a, arg_2.b, arg_2.c, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2234f, var_1.x))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), var_0.zx), abs(arg_2.e))), func_3(true, _wgslsmith_clamp_u32(arg_2.c.x, firstLeadingBit(4294967295u), _wgslsmith_add_u32(11316u, u_input.b)), Struct_2(_wgslsmith_f_op_vec4_f32(-arg_2.a), ~vec3<i32>(var_0.x, var_0.x, -2147483647i), firstLeadingBit(arg_2.c), func_2(), countOneBits(2147483647i)), Struct_2(_wgslsmith_f_op_vec4_f32(arg_2.a - vec4<f32>(-931f, var_1.x, 1338f, var_1.x)), vec3<i32>(-28501i, -2147483647i, -1i), arg_2.c, arg_2.d, 1i))).d.a.x, -1435f);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>) -> u32 {
    var var_0 = vec2<i32>(556i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), abs(2147483647i)), -1i)) & (vec2<i32>(u_input.a, 0i << (arg_0.x % 32u)) >> (vec2<u32>(~u_input.b >> (u_input.b % 32u), ~u_input.b) % vec2<u32>(32u)));
    var var_1 = ~u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec2<f32>(1f, 1f)), u_input.b, func_3(false, arg_0.x, Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(1244f, 2031f, 1000f, 2399f), vec4<f32>(264f, -163f, -584f, 853f)), vec3<i32>(u_input.a, var_0.x, 58840i) ^ vec3<i32>(var_0.x, var_0.x, 98122i), ~vec3<u32>(1u, u_input.b, u_input.b), Struct_1(vec2<f32>(575f, 1855f)), ~u_input.a), Struct_2(vec4<f32>(1000f, -1302f, -977f, 304f), ~vec3<i32>(var_0.x, u_input.a, -22334i), abs(vec3<u32>(70269u, u_input.b, u_input.b)), func_2(), _wgslsmith_mult_i32(var_0.x, var_0.x))), func_3(true && (arg_1.x & arg_1.x), ~76539u, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1113f, -239f, -1035f, -474f)), ~vec3<i32>(u_input.a, -1i, -1i), vec3<u32>(arg_0.x, u_input.b, arg_0.x), func_2(), _wgslsmith_div_i32(2147483647i, 16376i)), Struct_2(vec4<f32>(1f, 1f, 1f, 1f), vec3<i32>(-2368i, var_0.x, -1i) & vec3<i32>(46566i, 54272i, -2147483647i), min(vec3<u32>(4294967295u, 13182u, 17741u), vec3<u32>(1u, arg_0.x, u_input.b)), func_3(arg_1.x, 1u, Struct_2(vec4<f32>(2008f, 1271f, 431f, -2168f), vec3<i32>(u_input.a, 0i, u_input.a), vec3<u32>(4294967295u, 13363u, 104138u), Struct_1(vec2<f32>(158f, 614f)), 8249i), Struct_2(vec4<f32>(1000f, 747f, -1133f, -860f), vec3<i32>(-22359i, u_input.a, var_0.x), vec3<u32>(9510u, 1u, 21194u), Struct_1(vec2<f32>(430f, -1326f)), var_0.x)).d, _wgslsmith_div_i32(46814i, -1i))).d))));
    var var_3 = Struct_2(vec4<f32>(var_2.x, var_2.x, var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -681f)), -(~vec3<i32>(~u_input.a, u_input.a, -var_0.x)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, arg_0.x, 1u) | vec3<u32>(41296u, arg_0.x, 39950u), vec3<u32>(u_input.b, 6352u, 0u)), Struct_1(var_2.zw), (1i >> (arg_0.x % 32u)) ^ u_input.a);
    var var_4 = func_3(!all(!(!vec4<bool>(arg_1.x, true, arg_1.x, false))), ~(~(~countOneBits(arg_0.x))), func_3(all(vec3<bool>(true, true, true)), 56812u, func_3(all(vec2<bool>(false, arg_1.x)), _wgslsmith_add_u32(~arg_0.x, _wgslsmith_add_u32(1u, 88857u)), func_3(all(vec2<bool>(arg_1.x, true)), select(1u, 16143u, false), func_3(false, 4294967295u, Struct_2(vec4<f32>(384f, 1036f, 634f, -300f), vec3<i32>(var_3.b.x, 0i, 51318i), vec3<u32>(3639u, 0u, 393u), Struct_1(vec2<f32>(388f, -868f)), var_3.b.x), Struct_2(vec4<f32>(var_2.x, -913f, var_2.x, -152f), var_3.b, var_3.c, var_3.d, -48372i)), func_3(arg_1.x, 4294967295u, Struct_2(var_3.a, var_3.b, vec3<u32>(arg_0.x, 101458u, 433u), var_3.d, u_input.a), Struct_2(vec4<f32>(150f, var_3.d.a.x, var_2.x, -119f), var_3.b, var_3.c, Struct_1(vec2<f32>(var_3.a.x, var_3.d.a.x)), 1i))), Struct_2(_wgslsmith_f_op_vec4_f32(sign(var_2)), max(vec3<i32>(8157i, var_0.x, -13086i), var_3.b), var_3.c, func_2(), _wgslsmith_div_i32(2147483647i, 30524i))), func_3(arg_1.x, 0u, Struct_2(_wgslsmith_f_op_vec4_f32(var_3.a - vec4<f32>(-801f, -174f, var_2.x, var_3.a.x)), min(vec3<i32>(var_3.b.x, -1i, var_0.x), var_3.b), vec3<u32>(4294967295u, 4294967295u, arg_0.x), Struct_1(var_2.yw), _wgslsmith_dot_vec2_i32(var_3.b.zx, var_3.b.yz)), Struct_2(_wgslsmith_f_op_vec4_f32(-var_2), -var_3.b, var_3.c, func_2(), _wgslsmith_add_i32(15105i, 4480i)))), Struct_2(var_2, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.a, 54656i), ~vec4<i32>(1i, -2147483647i, var_0.x, u_input.a)), var_3.b.x, i32(-1i) * -var_0.x), vec3<u32>(~(~20758u), _wgslsmith_dot_vec2_u32(abs(arg_0), ~arg_0), _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_3.c.x, 0u), u_input.b)), var_3.d, i32(-1i) * -1i));
    return ~countOneBits(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_vec2_u32(~(~firstTrailingBit(vec2<u32>(u_input.b, u_input.b))), ~(~(~vec2<u32>(4294967295u, u_input.b)))), select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), true)), true));
    let var_1 = select(vec4<bool>(any(vec3<bool>(true, true, true)), !((4294967295u >> (u_input.b % 32u)) <= ~u_input.b), all(vec4<bool>(true, true, true, true)), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, 1i)) > u_input.a), vec4<bool>(true, true, true, true), any(vec3<bool>(any(vec3<bool>(true, true, true)), u_input.a <= u_input.a, -u_input.a >= 0i)));
    let var_2 = func_3(all(select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(false != var_1.x, true, true, any(vec3<bool>(var_1.x, var_1.x, false))), true)), abs(_wgslsmith_sub_u32(u_input.b, _wgslsmith_div_u32(1u, ~50972u))), func_3(var_1.x, func_1(~reverseBits(vec2<u32>(0u, 0u)), select(vec2<bool>(true, var_1.x), var_1.zz, var_1.x)), func_3(true, abs(~19727u), func_3(var_1.x, _wgslsmith_mod_u32(111707u, 1u), func_3(true, 6547u, Struct_2(vec4<f32>(2925f, 353f, -796f, 577f), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.b, 0u, u_input.b), Struct_1(vec2<f32>(690f, -709f)), u_input.a), Struct_2(vec4<f32>(480f, -1000f, -1000f, 645f), vec3<i32>(-18734i, -36513i, u_input.a), vec3<u32>(62298u, 1012u, u_input.b), Struct_1(vec2<f32>(519f, 1626f)), u_input.a)), func_3(false, u_input.b, Struct_2(vec4<f32>(-729f, -417f, 364f, -1548f), vec3<i32>(-24811i, u_input.a, -44547i), vec3<u32>(0u, 96865u, u_input.b), Struct_1(vec2<f32>(-1000f, 653f)), u_input.a), Struct_2(vec4<f32>(-1038f, -1632f, -1435f, -2111f), vec3<i32>(u_input.a, 6332i, u_input.a), vec3<u32>(4294967295u, 0u, 1u), Struct_1(vec2<f32>(-512f, -560f)), 1i))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-4090f, -357f, -1247f, 1307f)), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.b, u_input.b, u_input.b), Struct_1(vec2<f32>(1124f, 2033f)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 91431i), vec3<i32>(11511i, 67157i, u_input.a)))), func_3(var_1.x, countOneBits(25463u), func_3(true, u_input.b, func_3(var_1.x, u_input.b, Struct_2(vec4<f32>(-1392f, -110f, 1354f, 1715f), vec3<i32>(-1i, -23346i, u_input.a), vec3<u32>(33269u, u_input.b, 4863u), Struct_1(vec2<f32>(749f, 809f)), 10556i), Struct_2(vec4<f32>(-2416f, -676f, -957f, -1000f), vec3<i32>(-45086i, u_input.a, 68714i), vec3<u32>(444u, u_input.b, u_input.b), Struct_1(vec2<f32>(1114f, 212f)), u_input.a)), Struct_2(vec4<f32>(-1000f, 641f, 1000f, 136f), vec3<i32>(u_input.a, u_input.a, 0i), vec3<u32>(u_input.b, u_input.b, u_input.b), Struct_1(vec2<f32>(-935f, 1649f)), u_input.a)), Struct_2(vec4<f32>(-196f, 1000f, -1000f, -909f), countOneBits(vec3<i32>(u_input.a, u_input.a, -4949i)), vec3<u32>(12261u, 48757u, u_input.b), Struct_1(vec2<f32>(-1178f, 798f)), _wgslsmith_add_i32(u_input.a, u_input.a)))), func_3(var_1.x, ~abs(~u_input.b), func_3(all(select(vec2<bool>(true, false), vec2<bool>(var_1.x, false), vec2<bool>(true, var_1.x))), 0u, func_3(!var_1.x, 0u, Struct_2(vec4<f32>(-559f, -882f, 1078f, 921f), vec3<i32>(-14030i, 50549i, -1i), vec3<u32>(1u, u_input.b, 18237u), Struct_1(vec2<f32>(1000f, 352f)), -40914i), Struct_2(vec4<f32>(-572f, -609f, -1277f, -1583f), vec3<i32>(-1i, u_input.a, u_input.a), vec3<u32>(u_input.b, 0u, u_input.b), Struct_1(vec2<f32>(659f, -916f)), u_input.a)), func_3(all(vec2<bool>(var_1.x, var_1.x)), u_input.b, func_3(var_1.x, u_input.b, Struct_2(vec4<f32>(-221f, 430f, -1098f, 355f), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.b, u_input.b, 39604u), Struct_1(vec2<f32>(-1300f, -459f)), u_input.a), Struct_2(vec4<f32>(-324f, 1000f, -1045f, 351f), vec3<i32>(u_input.a, 41711i, u_input.a), vec3<u32>(4294967295u, u_input.b, u_input.b), Struct_1(vec2<f32>(2216f, -186f)), -2147483647i)), Struct_2(vec4<f32>(-272f, 466f, -394f, 768f), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.b, 1u), Struct_1(vec2<f32>(-327f, 549f)), 2147483647i))), Struct_2(vec4<f32>(-1031f, 1000f, _wgslsmith_f_op_f32(ceil(-1000f)), 161f), vec3<i32>(-1i) * -vec3<i32>(12441i, -1i, u_input.a), ~(vec3<u32>(u_input.b, u_input.b, u_input.b) & vec3<u32>(u_input.b, u_input.b, u_input.b)), func_3(any(var_1), firstLeadingBit(u_input.b), func_3(var_1.x, 4294967295u, Struct_2(vec4<f32>(-1000f, -597f, 143f, -254f), vec3<i32>(2147483647i, 34847i, 7710i), vec3<u32>(2246u, 0u, u_input.b), Struct_1(vec2<f32>(-938f, -1815f)), -2147483647i), Struct_2(vec4<f32>(-591f, 653f, -1046f, 290f), vec3<i32>(0i, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.b, u_input.b), Struct_1(vec2<f32>(397f, -314f)), u_input.a)), Struct_2(vec4<f32>(1096f, -792f, 645f, -567f), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.b, 37484u, 4294967295u), Struct_1(vec2<f32>(262f, -399f)), -42990i)).d, u_input.a)));
    let var_3 = var_2;
    var var_4 = ~1i;
    var_0 = 35935u & ((15821u & u_input.b) & ~73393u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2204f, -2044f, var_2.d.a.x)), vec3<f32>(_wgslsmith_f_op_f32(660f + var_3.d.a.x), var_2.a.x, 387f), !var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1264f, -948f, -523f) + var_3.a.wxz) + vec3<f32>(664f, var_3.d.a.x, var_2.a.x))))), var_3.c.yx);
}

