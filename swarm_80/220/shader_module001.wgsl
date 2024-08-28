struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(false, vec4<i32>(i32(-2147483648), 17992i, -1i, 0i), Struct_1(43974u, 31787u), vec3<bool>(true, true, true), vec2<f32>(-398f, -1500f));

var<private> global2: array<u32, 15>;

var<private> global3: array<bool, 9>;

var<private> global4: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(false, vec4<i32>(-1i, 1i, -59873i, 2555i), Struct_1(0u, 1u), vec3<bool>(false, true, false), vec2<f32>(1416f, 276f)), Struct_2(false, vec4<i32>(23503i, 48414i, 0i, -16804i), Struct_1(15956u, 0u), vec3<bool>(true, false, false), vec2<f32>(-1000f, 397f)), Struct_2(true, vec4<i32>(2147483647i, 6343i, 1i, i32(-2147483648)), Struct_1(0u, 1u), vec3<bool>(true, true, true), vec2<f32>(1000f, 519f)), Struct_2(true, vec4<i32>(-32562i, 32208i, -20444i, 2147483647i), Struct_1(92261u, 1u), vec3<bool>(false, false, false), vec2<f32>(1365f, -444f)), Struct_2(true, vec4<i32>(-12085i, 1i, -47185i, i32(-2147483648)), Struct_1(4294967295u, 0u), vec3<bool>(false, false, true), vec2<f32>(513f, 1929f)), Struct_2(false, vec4<i32>(-36828i, 5316i, -1i, 1i), Struct_1(0u, 4294967295u), vec3<bool>(false, false, false), vec2<f32>(358f, 1158f)), Struct_2(false, vec4<i32>(48399i, 97949i, -17243i, 0i), Struct_1(1u, 87013u), vec3<bool>(false, false, false), vec2<f32>(670f, -823f)), Struct_2(false, vec4<i32>(4467i, -10791i, 10570i, 2147483647i), Struct_1(151u, 94983u), vec3<bool>(false, false, true), vec2<f32>(-801f, -988f)), Struct_2(true, vec4<i32>(-17287i, 13308i, -30241i, -1i), Struct_1(1u, 4294967295u), vec3<bool>(false, true, true), vec2<f32>(693f, -842f)), Struct_2(false, vec4<i32>(30092i, -12402i, 0i, 1i), Struct_1(26177u, 17105u), vec3<bool>(false, true, false), vec2<f32>(-532f, 1940f)), Struct_2(true, vec4<i32>(1i, -13888i, -3412i, i32(-2147483648)), Struct_1(15953u, 0u), vec3<bool>(false, true, false), vec2<f32>(-302f, -587f)), Struct_2(true, vec4<i32>(2147483647i, -5174i, 1i, -11651i), Struct_1(23288u, 4294967295u), vec3<bool>(true, true, true), vec2<f32>(-874f, -516f)), Struct_2(true, vec4<i32>(39235i, 2147483647i, -15211i, i32(-2147483648)), Struct_1(4294967295u, 37485u), vec3<bool>(true, true, true), vec2<f32>(-957f, 1314f)), Struct_2(true, vec4<i32>(i32(-2147483648), 1i, 1i, 29528i), Struct_1(127678u, 33774u), vec3<bool>(true, true, false), vec2<f32>(995f, 367f)), Struct_2(true, vec4<i32>(i32(-2147483648), -16812i, -80802i, 2147483647i), Struct_1(85275u, 4294967295u), vec3<bool>(false, false, false), vec2<f32>(270f, 753f)), Struct_2(false, vec4<i32>(33868i, 2750i, 2147483647i, 28616i), Struct_1(0u, 38406u), vec3<bool>(false, false, true), vec2<f32>(-298f, -816f)), Struct_2(false, vec4<i32>(2147483647i, -12644i, -3205i, -1i), Struct_1(4294967295u, 0u), vec3<bool>(true, false, false), vec2<f32>(-2849f, -1261f)), Struct_2(true, vec4<i32>(1i, 2147483647i, 33152i, 0i), Struct_1(27431u, 1u), vec3<bool>(false, false, true), vec2<f32>(1247f, 679f)), Struct_2(false, vec4<i32>(-41379i, 18610i, -38535i, 27788i), Struct_1(4294967295u, 1u), vec3<bool>(true, true, false), vec2<f32>(555f, 246f)), Struct_2(true, vec4<i32>(38783i, -11300i, i32(-2147483648), i32(-2147483648)), Struct_1(4294967295u, 24444u), vec3<bool>(true, false, false), vec2<f32>(441f, 498f)), Struct_2(true, vec4<i32>(-13561i, -39066i, -1i, 1i), Struct_1(55133u, 35502u), vec3<bool>(false, false, false), vec2<f32>(-1094f, 570f)), Struct_2(false, vec4<i32>(i32(-2147483648), -1i, 38458i, -26334i), Struct_1(4294967295u, 64991u), vec3<bool>(true, false, false), vec2<f32>(-1308f, 856f)), Struct_2(true, vec4<i32>(0i, 2147483647i, 1i, 34325i), Struct_1(44373u, 25634u), vec3<bool>(false, true, false), vec2<f32>(-245f, -1111f)), Struct_2(false, vec4<i32>(0i, 1i, -1i, i32(-2147483648)), Struct_1(26624u, 1u), vec3<bool>(true, false, true), vec2<f32>(-276f, 744f)), Struct_2(true, vec4<i32>(29186i, -20045i, 2147483647i, -1i), Struct_1(11989u, 0u), vec3<bool>(false, false, true), vec2<f32>(1322f, 285f)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: i32) -> i32 {
    var var_0 = global1.c;
    global4 = array<Struct_2, 25>();
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f * -1232f))), ~(vec2<u32>(global0.b, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(28820u, 15u)], arg_0.b.a.x)) >> (vec2<u32>(_wgslsmith_div_u32(var_0.a, global2[_wgslsmith_index_u32(1u, 15u)]), global0.b) % vec2<u32>(32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(5171u, 4294967295u), vec2<u32>(~arg_0.b.a.x, ~global0.b)));
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(max(_wgslsmith_sub_vec2_u32(u_input.d, u_input.d), abs(u_input.d)), vec2<u32>(28374u, ~0u)), vec2<u32>(reverseBits(4294967295u), _wgslsmith_div_u32(var_0.a, 1u)) << (~vec2<u32>(global2[_wgslsmith_index_u32(var_0.a, 15u)], 21088u) % vec2<u32>(32u))), countOneBits(38854u));
    return ~2986i;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4) -> vec3<i32> {
    let var_0 = Struct_2(false, max(vec4<i32>(_wgslsmith_sub_i32(global1.b.x, u_input.c), _wgslsmith_add_i32(u_input.b.x, -1i), 2147483647i, func_3(arg_1, global1.d.zz, u_input.a.x)), abs(global1.b) >> ((vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, 4294967295u) | vec4<u32>(arg_1.b.a.x, 4294967295u, 51368u, 0u)) % vec4<u32>(32u))) << (~select(vec4<u32>(global1.c.b, global2[_wgslsmith_index_u32(1u, 15u)], 45473u, arg_1.b.a.x) ^ vec4<u32>(u_input.e, u_input.d.x, global0.a, u_input.e), ~vec4<u32>(global2[_wgslsmith_index_u32(101910u, 15u)], global1.c.b, global0.a, 0u), arg_1.b.c) % vec4<u32>(32u)), global1.c, !select(vec3<bool>(true, true, !global1.a), arg_1.b.c.zxw, vec3<bool>(arg_1.c, any(vec2<bool>(global3[_wgslsmith_index_u32(global1.c.b, 9u)], global1.a)), true)), arg_0.xx);
    var var_1 = 4294967295u >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.e, global1.c.a, global0.a, 1u), vec4<u32>(global2[_wgslsmith_index_u32(var_0.c.a, 15u)], 44959u, global0.b, arg_1.b.a.x) >> (vec4<u32>(global0.a, global2[_wgslsmith_index_u32(1u, 15u)], 34866u, 1u) % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 0u, global2[_wgslsmith_index_u32(u_input.d.x, 15u)], 4294967295u), vec4<u32>(1u, 1u, 5584u, 66952u) & vec4<u32>(global1.c.a, 51973u, 47370u, 0u)), vec4<u32>(u_input.e, 42067u, select(1u, ~0u, all(vec2<bool>(global1.a, global1.a))), _wgslsmith_sub_u32(~42684u, global0.a))) % 32u);
    var var_2 = countOneBits(~(~_wgslsmith_mult_vec4_i32(max(vec4<i32>(var_0.b.x, arg_1.a.x, arg_1.b.b, var_0.b.x), vec4<i32>(2147483647i, -1i, global1.b.x, 18275i)), var_0.b)));
    let var_3 = 10870u;
    let var_4 = vec3<u32>(firstLeadingBit(~(_wgslsmith_dot_vec2_u32(vec2<u32>(90129u, global1.c.a), u_input.d) ^ u_input.e)), arg_1.b.a.x, 0u);
    return var_0.b.zyy;
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> Struct_2 {
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(-arg_1.a))), -1034f, arg_1.a, _wgslsmith_f_op_f32(global1.e.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a, arg_1.a, false)) + global1.e.x))), Struct_4(global1.b, Struct_3(vec3<u32>(~global2[_wgslsmith_index_u32(17850u, 15u)], arg_1.b.x, ~0u), func_3(Struct_4(global1.b, Struct_3(vec3<u32>(global1.c.b, 60688u, global1.c.b), 0i, vec4<bool>(global3[_wgslsmith_index_u32(arg_1.b.x, 9u)], true, global1.d.x, false), global1.e.x), false), select(global1.d.xx, global1.d.xy, vec2<bool>(global3[_wgslsmith_index_u32(arg_1.b.x, 9u)], true)), arg_0), select(!vec4<bool>(false, false, global1.d.x, global3[_wgslsmith_index_u32(global1.c.b, 9u)]), !vec4<bool>(global1.a, global3[_wgslsmith_index_u32(1u, 9u)], true, true), true), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false));
    global3 = array<bool, 9>();
    global0 = global1.c;
    let var_1 = global3[_wgslsmith_index_u32(~arg_1.b.x, 9u)];
    global1 = Struct_2(!all(global1.d.yy), select(vec4<i32>(-(6997i >> (global0.a % 32u)), -(~1i), ~(-12568i), -42072i), select(~global1.b, ~vec4<i32>(var_0.x, -1i, u_input.c, var_0.x), select(vec4<bool>(global3[_wgslsmith_index_u32(arg_1.c, 9u)], false, true, false), vec4<bool>(global3[_wgslsmith_index_u32(1u, 9u)], false, global1.d.x, global1.d.x), vec4<bool>(global1.d.x, global3[_wgslsmith_index_u32(global1.c.a, 9u)], global1.a, global1.a))) ^ u_input.b, select(!(!vec4<bool>(false, false, global1.d.x, true)), !vec4<bool>(false, global1.a, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(91240u, 15u)], 9u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.c.b, 15u)], 9u)]), vec4<bool>(true && global3[_wgslsmith_index_u32(46469u, 9u)], !global1.a, global3[_wgslsmith_index_u32(min(arg_1.b.x, 2068u), 9u)], true))), Struct_1(max(1u, 39423u), ~(~60638u)), !vec3<bool>(!(!global1.a), _wgslsmith_clamp_i32(-1i, var_0.x, 1i) == arg_0, true), vec2<f32>(237f, 2081f));
    return Struct_2(global1.a, ~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -arg_0, _wgslsmith_add_i32(u_input.a.x, -1i), ~(-2147483647i)), min(abs(vec4<i32>(1970i, -23341i, arg_0, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0.x, 20523i, -45553i), u_input.b))), Struct_1(firstTrailingBit(~15u) | 1u, 1u), vec3<bool>(global3[_wgslsmith_index_u32(global0.a, 9u)], (global3[_wgslsmith_index_u32(abs(u_input.d.x), 9u)] & (147f <= global1.e.x)) & (global0.b < u_input.d.x), any(select(!vec4<bool>(global1.a, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30958u, 15u)], 9u)], true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44425u, 15u)], 9u)]), !vec4<bool>(global3[_wgslsmith_index_u32(arg_1.b.x, 9u)], global1.d.x, false, true), select(vec4<bool>(true, global1.d.x, false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 9u)]), vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.d.x, 9u)], global3[_wgslsmith_index_u32(22467u, 9u)]), global3[_wgslsmith_index_u32(arg_1.b.x, 9u)])))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a), arg_1.a));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: i32) -> Struct_3 {
    var var_0 = abs(~select(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.b, global2[_wgslsmith_index_u32(u_input.d.x, 15u)], 0u), vec3<u32>(10485u, global0.a, global2[_wgslsmith_index_u32(u_input.d.x, 15u)])), vec3<u32>(4294967295u, global1.c.a, u_input.d.x) | vec3<u32>(21749u, 0u, global0.a), global1.d)) & ~vec3<u32>(global0.a, global0.b, 29668u);
    global4 = array<Struct_2, 25>();
    global1 = func_2(2147483647i, Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1973f), firstTrailingBit(select(~var_0.yy, select(var_0.yx, u_input.d, false), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.c.a, u_input.e, 0u), vec4<u32>(44663u, global2[_wgslsmith_index_u32(global0.b, 15u)], global1.c.b, u_input.d.x)), 9u)])), _wgslsmith_mult_u32(_wgslsmith_mult_u32(38623u, global2[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_mod_u32(var_0.x, u_input.d.x)) & global2[_wgslsmith_index_u32(7440u, 15u)]));
    var var_1 = Struct_4(_wgslsmith_add_vec4_i32(vec4<i32>(-1696i, _wgslsmith_dot_vec3_i32(u_input.a ^ u_input.b.ywx, ~vec3<i32>(global1.b.x, -8147i, u_input.a.x)), reverseBits(i32(-1i) * -42536i), -20006i), ~u_input.b ^ vec4<i32>(-35833i, 1i, arg_0.x, -1i)), Struct_3(vec3<u32>(_wgslsmith_add_u32(75001u, _wgslsmith_clamp_u32(4294967295u, 36505u, var_0.x)), global0.a, var_0.x), _wgslsmith_sub_i32(-(i32(-1i) * -10602i), abs(41863i)), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, global3[_wgslsmith_index_u32(global0.a, 9u)], arg_1.x, global1.a), false), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 9u)], false, global1.a, global1.a), vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(0u, 9u)]), true), !vec4<bool>(false, true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.c.b, 15u)], 15u)], 15u)], 9u)], arg_1.x)), select(select(vec4<bool>(global3[_wgslsmith_index_u32(50288u, 9u)], false, true, false), vec4<bool>(arg_1.x, true, global1.d.x, global3[_wgslsmith_index_u32(u_input.d.x, 9u)]), false), vec4<bool>(false, global3[_wgslsmith_index_u32(6534u, 9u)], arg_1.x, arg_1.x), true), !(global3[_wgslsmith_index_u32(u_input.e, 9u)] && global3[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_f_op_f32(abs(1319f))), all(select(vec4<bool>(global3[_wgslsmith_index_u32(min(global0.a, global2[_wgslsmith_index_u32(4294967295u, 15u)]), 9u)], !global1.a, true, arg_1.x && global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48937u, 15u)], 9u)]), select(!vec4<bool>(true, global1.d.x, false, global1.d.x), select(vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(global3[_wgslsmith_index_u32(9700u, 9u)], false, false, global1.d.x), true), func_2(-1i, Struct_5(global1.e.x, vec2<u32>(4294967295u, 55738u), 62686u)).a), vec4<bool>(true, false, true, true))));
    global2 = array<u32, 15>();
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(u_input.b, func_1(-_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -36637i), -global1.b.ww), select(select(!vec2<bool>(global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(53238u, 9u)]), select(vec2<bool>(true, true), global1.d.yy, vec2<bool>(false, false)), select(false, false, global1.d.x)), !select(vec2<bool>(global1.a, true), vec2<bool>(global1.d.x, false), global3[_wgslsmith_index_u32(global0.b, 9u)]), select(true, !global1.d.x, global1.d.x)), -(~u_input.c)), global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.d.x, 15u)], 9u)]);
    var var_1 = global1.c;
    var var_2 = !select(func_1(firstTrailingBit(-vec2<i32>(global1.b.x, var_0.b.b)), vec2<bool>(var_0.b.c.x, true), func_1(global1.b.wy << (var_0.b.a.xy % vec2<u32>(32u)), !vec2<bool>(true, global1.d.x), var_0.b.b << (4294967295u % 32u)).b).c, vec4<bool>(!all(vec4<bool>(global1.a, var_0.c, global3[_wgslsmith_index_u32(82694u, 9u)], true)), global3[_wgslsmith_index_u32(firstLeadingBit(43175u), 9u)], global3[_wgslsmith_index_u32(u_input.e >> ((var_0.b.a.x << (4294967295u % 32u)) % 32u), 9u)], !any(vec2<bool>(false, false))), vec4<bool>(global1.d.x, any(!vec4<bool>(false, global3[_wgslsmith_index_u32(var_1.b, 9u)], true, false)), true, false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~func_1(vec2<i32>(-355i, 60793i), var_0.b.c.yy, global1.b.x).a.x ^ (_wgslsmith_clamp_u32(0u, global2[_wgslsmith_index_u32(0u, 15u)], 7379u) & 4294967295u), ~(~abs(25946u)), 1u, reverseBits(12388u)), u_input.a.x >> (0u % 32u), -378f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1079f), 1783f, _wgslsmith_f_op_f32(step(-536f, -2482f)), var_0.b.d)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(768f, -394f, var_0.b.d, 1130f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-274f, global1.e.x, global1.e.x, global1.e.x))))));
}

