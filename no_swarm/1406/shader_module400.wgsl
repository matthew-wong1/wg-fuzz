struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-23132i, 40506i, -67129i, i32(-2147483648), -9483i, -14034i, i32(-2147483648), 28654i, 15948i, 2412i, 14795i, -32371i, -1i, 34378i, -8337i, 14438i, 23600i, i32(-2147483648), 693i, i32(-2147483648), -28159i, -13462i, 1i, i32(-2147483648), i32(-2147483648), 466i, 43244i, 0i);

var<private> global1: array<vec2<f32>, 17>;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec3<u32>(1u, 4294967295u, 0u), Struct_1(vec4<f32>(-550f, -1153f, 560f, 262f), vec4<bool>(true, false, false, true), vec3<bool>(false, false, false)), Struct_1(vec4<f32>(1088f, -333f, -1029f, -769f), vec4<bool>(true, true, false, false), vec3<bool>(false, true, true))), Struct_2(vec3<u32>(0u, 1u, 0u), Struct_1(vec4<f32>(500f, 118f, -137f, 1801f), vec4<bool>(true, true, true, false), vec3<bool>(false, false, true)), Struct_1(vec4<f32>(-396f, -863f, 1000f, 874f), vec4<bool>(false, false, true, true), vec3<bool>(false, true, true))), Struct_2(vec3<u32>(17314u, 4294967295u, 0u), Struct_1(vec4<f32>(1884f, -591f, 583f, 101f), vec4<bool>(false, true, false, true), vec3<bool>(true, true, true)), Struct_1(vec4<f32>(-360f, 1087f, 639f, 721f), vec4<bool>(true, false, false, false), vec3<bool>(true, false, false))), Struct_2(vec3<u32>(6708u, 1u, 78064u), Struct_1(vec4<f32>(811f, 468f, -1210f, -1374f), vec4<bool>(true, true, true, false), vec3<bool>(false, true, false)), Struct_1(vec4<f32>(635f, -660f, 145f, 1422f), vec4<bool>(false, false, false, true), vec3<bool>(true, false, false))), Struct_2(vec3<u32>(4294967295u, 111657u, 4294967295u), Struct_1(vec4<f32>(-891f, 1000f, -1000f, -1274f), vec4<bool>(true, true, false, false), vec3<bool>(true, true, false)), Struct_1(vec4<f32>(-1056f, -195f, 978f, -358f), vec4<bool>(false, true, true, true), vec3<bool>(true, false, false))), Struct_2(vec3<u32>(49653u, 4294967295u, 25859u), Struct_1(vec4<f32>(333f, -1000f, 2400f, -676f), vec4<bool>(false, false, false, false), vec3<bool>(true, false, true)), Struct_1(vec4<f32>(-220f, -233f, 1137f, -459f), vec4<bool>(true, true, false, true), vec3<bool>(true, false, false))), Struct_2(vec3<u32>(47803u, 1u, 4294967295u), Struct_1(vec4<f32>(489f, -478f, -148f, 137f), vec4<bool>(false, true, true, true), vec3<bool>(false, true, true)), Struct_1(vec4<f32>(-469f, 330f, 476f, 367f), vec4<bool>(true, false, false, false), vec3<bool>(false, true, false))), Struct_2(vec3<u32>(1u, 33262u, 48352u), Struct_1(vec4<f32>(888f, 1000f, -490f, 695f), vec4<bool>(true, false, true, true), vec3<bool>(false, false, false)), Struct_1(vec4<f32>(-1000f, -576f, -1643f, -753f), vec4<bool>(false, true, false, true), vec3<bool>(false, true, true))), Struct_2(vec3<u32>(0u, 1u, 32239u), Struct_1(vec4<f32>(-1922f, -1000f, 1000f, -1089f), vec4<bool>(false, false, false, true), vec3<bool>(true, false, true)), Struct_1(vec4<f32>(-902f, -1725f, 2037f, 1137f), vec4<bool>(false, true, true, true), vec3<bool>(true, false, false))), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(vec4<f32>(529f, -1185f, -2347f, -658f), vec4<bool>(true, true, false, false), vec3<bool>(true, true, false)), Struct_1(vec4<f32>(114f, -219f, -1284f, 1000f), vec4<bool>(false, true, false, true), vec3<bool>(false, false, false))), Struct_2(vec3<u32>(52814u, 4364u, 4294967295u), Struct_1(vec4<f32>(-128f, -1000f, 1237f, -735f), vec4<bool>(false, false, true, false), vec3<bool>(true, true, false)), Struct_1(vec4<f32>(590f, -419f, -1154f, -1837f), vec4<bool>(true, false, false, true), vec3<bool>(false, false, false))));

var<private> global4: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    global4 = true;
    global4 = !((arg_0 | any(arg_1.b)) & all(arg_1.b));
    var var_0 = Struct_3(Struct_2(u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.x, -201f, 1710f, 243f))), select(!arg_1.b, vec4<bool>(arg_1.c.x, arg_1.c.x, true, true), !vec4<bool>(arg_1.b.x, arg_0, arg_0, arg_1.c.x)), !vec3<bool>(arg_0, true, arg_0)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a + arg_1.a)), select(vec4<bool>(true, true, arg_0, false), !arg_1.b, arg_1.b), select(arg_1.b.zyy, !arg_1.c, arg_0))), Struct_2(vec3<u32>(select(_wgslsmith_mod_u32(0u, u_input.b.x), 23749u, true), u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(63636u, 10795u, 80662u, u_input.b.x)), 1u)), Struct_1(arg_1.a, !(!arg_1.b), arg_1.b.yzz), arg_1), ~(~vec2<u32>(18686u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x))), Struct_1(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2329f, arg_1.a.x))), 2050f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.a.x, 1412f), _wgslsmith_f_op_f32(arg_1.a.x - -126f)))), vec4<bool>(true, false, true, false), vec3<bool>(true, select(true, true, true), true)));
    var var_1 = arg_1.b.x;
    global2 = ~max(abs(abs(vec4<i32>(22336i, -1i, u_input.c.x, 2147483647i)) ^ abs(vec4<i32>(0i, global2.x, global0[_wgslsmith_index_u32(4294967295u, 28u)], global2.x))), firstTrailingBit(vec4<i32>(0i >> (u_input.b.x % 32u), _wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(1u, 28u)]), -1i, -global2.x)));
    return Struct_2(vec3<u32>(u_input.b.x, ~1u, 1u) ^ var_0.b.a, var_0.b.c, var_0.b.b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    global3 = array<Struct_2, 11>();
    var var_0 = Struct_1(vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(trunc(461f)), _wgslsmith_f_op_f32(sign(-189f)), _wgslsmith_f_op_f32(floor(-669f))), vec4<bool>(arg_0.a.x == -486f, arg_3.c.x, arg_3.b.x | arg_3.b.x, true), vec3<bool>(!all(arg_2.a.c.c.zx), arg_2.a.c.c.x, !(_wgslsmith_f_op_f32(-793f * arg_1.x) > _wgslsmith_f_op_f32(-arg_2.a.b.a.x))));
    let var_1 = Struct_2(~arg_2.a.a, Struct_1(arg_1, arg_2.d.b, !vec3<bool>(!arg_2.d.b.x, 4294967295u < arg_2.b.a.x, arg_3.c.x)), func_2(true, arg_2.a.c).b);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-670f, 819f, 628f, _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)), arg_3.a)))), vec4<bool>(func_2(!all(vec4<bool>(true, var_0.c.x, arg_2.a.c.c.x, arg_0.b.x)), arg_0).c.c.x, all(vec3<bool>(arg_0.a.x > 2431f, true, var_0.c.x)), arg_1.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), true), vec3<bool>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))) != var_0.a.x, var_1.b.c.x));
    var var_2 = ~_wgslsmith_clamp_u32(arg_2.b.a.x, var_1.a.x, _wgslsmith_mult_u32(~77918u, _wgslsmith_add_u32(arg_2.c.x, u_input.b.x))) | ~(~11550u);
    return arg_0.c.x;
}

fn func_1() -> Struct_2 {
    var var_0 = true;
    var var_1 = select(vec4<bool>(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, -455f, -1887f, -571f)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false), vec3<bool>(true, true, false)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1331f, 426f, -331f, -308f))), Struct_3(Struct_2(vec3<u32>(u_input.b.x, u_input.b.x, 18573u), Struct_1(vec4<f32>(-972f, 2301f, -890f, -564f), vec4<bool>(false, true, true, false), vec3<bool>(true, false, false)), Struct_1(vec4<f32>(253f, 1545f, 1000f, -750f), vec4<bool>(false, false, true, false), vec3<bool>(true, false, false))), func_2(false, Struct_1(vec4<f32>(331f, 764f, 241f, 212f), vec4<bool>(true, false, true, true), vec3<bool>(false, false, true))), abs(vec2<u32>(u_input.b.x, u_input.b.x)), func_2(false, Struct_1(vec4<f32>(-668f, 1636f, 428f, 176f), vec4<bool>(true, false, true, true), vec3<bool>(true, true, true))).b), func_2(false, func_2(true, Struct_1(vec4<f32>(1000f, 2073f, -1310f, -520f), vec4<bool>(true, true, true, true), vec3<bool>(false, false, true))).b).b), true, false | select(true, true, func_2(true, Struct_1(vec4<f32>(-348f, 1947f, -1272f, -510f), vec4<bool>(true, true, false, false), vec3<bool>(true, false, true))).c.c.x), true), vec4<bool>(~u_input.b.x > 47300u, false & (_wgslsmith_f_op_f32(round(-378f)) <= _wgslsmith_div_f32(1263f, -1793f)), all(vec4<bool>(true, true, true, true)), false), true);
    let var_2 = Struct_2(vec3<u32>(45674u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(66076u, u_input.b.x, 75602u), any(var_1.zzx)), vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, 63066u), u_input.b.x, ~u_input.b.x)), _wgslsmith_add_u32(func_2(all(vec3<bool>(false, false, var_1.x)), Struct_1(vec4<f32>(1000f, -845f, 957f, 1206f), vec4<bool>(false, var_1.x, true, var_1.x), vec3<bool>(false, true, var_1.x))).a.x, abs(u_input.b.x))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(274f + 516f), _wgslsmith_f_op_f32(f32(-1f) * -602f), -1000f, _wgslsmith_f_op_f32(947f + 1081f)) - vec4<f32>(2494f, _wgslsmith_f_op_f32(-747f - -1319f), _wgslsmith_f_op_f32(1003f + -463f), -1431f)), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 1u), 28u)] == 1i, countOneBits(u_input.b.x) > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 44549u, u_input.b.x), vec4<u32>(u_input.b.x, 9586u, 44963u, u_input.b.x)), var_1.x, false), vec3<bool>(var_1.x, false, !(!var_1.x))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1320f, -854f, -579f, 1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-803f, 712f, -197f, -507f) - vec4<f32>(-1196f, -521f, 1829f, -2183f))) + vec4<f32>(_wgslsmith_f_op_f32(select(1882f, -394f, true)), _wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(abs(343f)), 1673f)), func_2(true, func_2(var_1.x && true, Struct_1(vec4<f32>(-682f, 1304f, 1068f, 295f), vec4<bool>(true, false, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x))).b).c.b, vec3<bool>(true, any(!vec4<bool>(false, true, var_1.x, false)), var_1.x && any(var_1.yww))));
    global0 = array<i32, 28>();
    let var_3 = ~select(~(~select(vec4<u32>(992u, 0u, var_2.a.x, 0u), vec4<u32>(var_2.a.x, var_2.a.x, u_input.b.x, var_2.a.x), vec4<bool>(true, var_2.b.c.x, var_1.x, var_1.x))), min(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1u), vec4<u32>(37389u, 1u, u_input.b.x, u_input.b.x)), ~vec4<u32>(1u, var_2.a.x, 44050u, var_2.a.x)), vec4<u32>(u_input.b.x, 18400u, u_input.b.x ^ 65504u, u_input.b.x)), select(var_2.b.b, !var_2.c.b, vec4<bool>(true, true, var_1.x, var_2.b.c.x && var_1.x)));
    return var_2;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_3(arg_3, Struct_2(~(arg_3.a << (u_input.b % vec3<u32>(32u))), func_1().c, func_1().b), _wgslsmith_sub_vec2_u32(u_input.b.yy, ~(~_wgslsmith_sub_vec2_u32(arg_2.b.a.yx, arg_3.a.zx))), func_2(true, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.c.a)), !func_2(false, Struct_1(arg_2.a.c.a, arg_2.d.b, vec3<bool>(true, arg_2.d.b.x, arg_2.b.b.b.x))).b.b, vec3<bool>(arg_2.a.b.c.x, true, any(vec4<bool>(arg_2.a.c.b.x, false, true, true))))).c);
    global3 = array<Struct_2, 11>();
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(abs(0u), 11u)], arg_2.a, ~firstLeadingBit(~select(vec2<u32>(14659u, 4294967295u), vec2<u32>(arg_2.a.a.x, var_0.a.a.x), arg_3.b.b.wz)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.c.a)), func_2(func_3(Struct_1(vec4<f32>(arg_3.b.a.x, 606f, arg_3.b.a.x, arg_2.b.c.a.x), var_0.a.b.b, arg_2.d.c), vec4<f32>(-169f, arg_1.x, arg_2.a.c.a.x, -1567f), var_0, func_1().c), arg_2.d).b.b, select(vec3<bool>(var_0.a.c.c.x, !var_0.d.c.x, true), !(!vec3<bool>(var_0.b.c.b.x, var_0.b.c.b.x, var_0.a.b.b.x)), 2147483647i == u_input.a.x)));
    let var_2 = arg_2.c.x;
    global3 = array<Struct_2, 11>();
    return -627f;
}

fn func_5(arg_0: f32) -> Struct_2 {
    let var_0 = global2.yxw;
    return func_2(true, func_1().b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(vec4<i32>(0i, 43160i, 0i, u_input.c.x) >> (vec4<u32>(28519u, 1u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 17u)], Struct_3(Struct_2(vec3<u32>(11401u, u_input.b.x, 2195u), Struct_1(vec4<f32>(534f, 1000f, -2003f, -1000f), vec4<bool>(true, true, true, false), vec3<bool>(true, true, true)), Struct_1(vec4<f32>(1000f, -506f, -144f, 1000f), vec4<bool>(true, true, true, true), vec3<bool>(false, false, true))), global3[_wgslsmith_index_u32(4294967295u, 11u)], vec2<u32>(u_input.b.x, 44456u), Struct_1(vec4<f32>(-811f, 762f, 513f, -667f), vec4<bool>(false, false, true, true), vec3<bool>(false, false, true))), func_1()))))));
    var var_1 = Struct_2(u_input.b, func_5(_wgslsmith_f_op_f32(f32(-1f) * -878f)).b, var_0.b);
    var var_2 = var_0.b.b.x;
    var var_3 = Struct_3(func_1(), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, max(1u, ~var_1.a.x)), max(1u, func_1().a.x)), 11u)], u_input.b.zx, var_0.c);
    var_2 = any(var_0.b.c);
    var var_4 = abs(vec4<u32>(~abs(~var_1.a.x), 97620u, ~31363u, ~13456u));
    var_2 = func_1().b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, max(u_input.c.x, global2.x), select((2147483647i & global0[_wgslsmith_index_u32(u_input.b.x, 28u)]) << (_wgslsmith_dot_vec3_u32(var_1.a, u_input.b) % 32u), _wgslsmith_div_i32(_wgslsmith_mult_i32(global2.x, -1i), reverseBits(1i)), true)), 566f, _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(var_1.a.x, 1u)), 17u)]), _wgslsmith_mult_vec3_u32(vec3<u32>(~(~3694u), ~var_1.a.x ^ ~u_input.b.x, 1884u), ~u_input.b));
}

