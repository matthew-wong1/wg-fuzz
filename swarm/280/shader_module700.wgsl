struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2185f;

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-41450i, -54205i, 0i), vec3<i32>(1i, 1i, -26901i), vec3<i32>(i32(-2147483648), -12332i, 1i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(1i, -34094i, -14273i), vec3<i32>(0i, -1i, 1i), vec3<i32>(-16240i, 40151i, 0i), vec3<i32>(i32(-2147483648), -1i, -24793i), vec3<i32>(-20089i, 15005i, 11961i), vec3<i32>(-2593i, 1i, 2147483647i), vec3<i32>(2147483647i, 19307i, 14267i), vec3<i32>(-11989i, 0i, 1i), vec3<i32>(14100i, i32(-2147483648), 1i), vec3<i32>(33566i, 0i, -1i), vec3<i32>(31937i, -38093i, 57625i), vec3<i32>(2147483647i, -1i, 25033i), vec3<i32>(2147483647i, -11486i, i32(-2147483648)), vec3<i32>(-1i, -68i, 1906i), vec3<i32>(-6119i, 30058i, 0i), vec3<i32>(18480i, 1i, 4139i), vec3<i32>(-76626i, i32(-2147483648), -1i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(1i, 10448i, i32(-2147483648)), vec3<i32>(0i, -1i, 1i), vec3<i32>(-1i, -7916i, 0i), vec3<i32>(-35560i, -4177i, -1i), vec3<i32>(22381i, 0i, 0i), vec3<i32>(2147483647i, 11434i, -12350i));

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec2<u32>(1u, 64133u), vec4<i32>(-24392i, 1i, 0i, 10852i), vec3<u32>(1u, 1u, 31624u), Struct_1(vec3<bool>(false, false, false), 1u)), Struct_2(vec2<u32>(60988u, 39484u), vec4<i32>(1i, -26749i, i32(-2147483648), 19722i), vec3<u32>(1u, 0u, 1u), Struct_1(vec3<bool>(true, false, true), 83305u)), Struct_2(vec2<u32>(61395u, 460u), vec4<i32>(-1i, 0i, 0i, -110i), vec3<u32>(27407u, 8408u, 1u), Struct_1(vec3<bool>(false, true, true), 40843u)), Struct_2(vec2<u32>(1u, 8463u), vec4<i32>(1i, -38264i, i32(-2147483648), -33313i), vec3<u32>(0u, 4294967295u, 34939u), Struct_1(vec3<bool>(true, true, false), 1u)), Struct_2(vec2<u32>(2572u, 4294967295u), vec4<i32>(48934i, 2147483647i, -20806i, 30788i), vec3<u32>(66008u, 0u, 1u), Struct_1(vec3<bool>(true, true, true), 5958u)), Struct_2(vec2<u32>(4294967295u, 1u), vec4<i32>(-59636i, 0i, 0i, 19206i), vec3<u32>(4294967295u, 51077u, 35182u), Struct_1(vec3<bool>(true, false, true), 19592u)), Struct_2(vec2<u32>(0u, 1u), vec4<i32>(0i, 68078i, 44116i, 12213i), vec3<u32>(1u, 0u, 32896u), Struct_1(vec3<bool>(false, false, false), 0u)), Struct_2(vec2<u32>(44234u, 0u), vec4<i32>(i32(-2147483648), 2147483647i, -1i, -55282i), vec3<u32>(3414u, 1u, 1u), Struct_1(vec3<bool>(true, true, true), 21040u)), Struct_2(vec2<u32>(0u, 18419u), vec4<i32>(1i, 14198i, 1i, 42265i), vec3<u32>(4294967295u, 37864u, 14832u), Struct_1(vec3<bool>(true, false, true), 4294967295u)), Struct_2(vec2<u32>(1u, 30744u), vec4<i32>(2147483647i, -60890i, -1i, 0i), vec3<u32>(4294967295u, 0u, 28352u), Struct_1(vec3<bool>(false, false, false), 17296u)), Struct_2(vec2<u32>(0u, 1u), vec4<i32>(-1i, 2497i, -52543i, -37919i), vec3<u32>(27286u, 107317u, 1u), Struct_1(vec3<bool>(false, false, false), 0u)), Struct_2(vec2<u32>(4294967295u, 37845u), vec4<i32>(-2988i, -1i, -1i, 72576i), vec3<u32>(39380u, 1u, 1u), Struct_1(vec3<bool>(true, true, true), 1u)), Struct_2(vec2<u32>(1u, 1u), vec4<i32>(2147483647i, 1i, 24222i, -3874i), vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(vec3<bool>(false, true, true), 1u)), Struct_2(vec2<u32>(4294967295u, 66160u), vec4<i32>(-35209i, 58527i, -1i, 8411i), vec3<u32>(1312u, 68708u, 33410u), Struct_1(vec3<bool>(false, true, true), 4294967295u)), Struct_2(vec2<u32>(32427u, 15137u), vec4<i32>(4515i, i32(-2147483648), -1i, 29080i), vec3<u32>(24086u, 4294967295u, 0u), Struct_1(vec3<bool>(true, true, false), 4294967295u)), Struct_2(vec2<u32>(1u, 0u), vec4<i32>(-16623i, 1i, -64480i, 1i), vec3<u32>(58145u, 5384u, 29676u), Struct_1(vec3<bool>(false, false, true), 32082u)), Struct_2(vec2<u32>(4294967295u, 40035u), vec4<i32>(-44067i, 2147483647i, -27314i, 54839i), vec3<u32>(0u, 63284u, 0u), Struct_1(vec3<bool>(false, false, false), 49176u)), Struct_2(vec2<u32>(4294967295u, 1u), vec4<i32>(0i, -1i, 8587i, -20297i), vec3<u32>(1u, 21733u, 41061u), Struct_1(vec3<bool>(false, true, true), 25478u)), Struct_2(vec2<u32>(76707u, 1u), vec4<i32>(-1i, i32(-2147483648), 0i, 16473i), vec3<u32>(33886u, 0u, 49214u), Struct_1(vec3<bool>(true, false, true), 0u)), Struct_2(vec2<u32>(57758u, 1u), vec4<i32>(1i, 5683i, 1i, 1i), vec3<u32>(29313u, 0u, 47129u), Struct_1(vec3<bool>(false, true, true), 0u)), Struct_2(vec2<u32>(0u, 0u), vec4<i32>(i32(-2147483648), 1i, -25237i, 42057i), vec3<u32>(4294967295u, 3622u, 0u), Struct_1(vec3<bool>(false, true, true), 55053u)), Struct_2(vec2<u32>(75643u, 20357u), vec4<i32>(i32(-2147483648), 37565i, 2147483647i, 30487i), vec3<u32>(4294967295u, 24537u, 6147u), Struct_1(vec3<bool>(false, false, true), 4294967295u)), Struct_2(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(-1i, 1i, 0i, -90873i), vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(vec3<bool>(false, false, true), 1u)), Struct_2(vec2<u32>(89685u, 0u), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 0i), vec3<u32>(0u, 1u, 51959u), Struct_1(vec3<bool>(false, false, false), 0u)), Struct_2(vec2<u32>(0u, 27009u), vec4<i32>(-25863i, i32(-2147483648), -18710i, -6597i), vec3<u32>(38314u, 13977u, 26811u), Struct_1(vec3<bool>(true, false, true), 76196u)), Struct_2(vec2<u32>(0u, 0u), vec4<i32>(31296i, -1i, 1i, -40855i), vec3<u32>(1u, 1u, 35146u), Struct_1(vec3<bool>(false, false, true), 8186u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_4) -> u32 {
    global0 = 2380f;
    return 73062u;
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_2(_wgslsmith_clamp_vec2_u32(~u_input.a.xz, u_input.a.yy, u_input.a.xy), vec4<i32>(~u_input.c.x, _wgslsmith_dot_vec3_i32(select(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], arg_0.a), vec3<i32>(-26146i, u_input.d.x, u_input.c.x) << (u_input.a.wxz % vec3<u32>(32u))) << (u_input.a.x % 32u), _wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(u_input.c.x, firstLeadingBit(29214i))), ~u_input.c.x), u_input.a.xyz, arg_0);
    global2 = array<Struct_2, 26>();
    global1 = array<vec3<i32>, 28>();
    global2 = array<Struct_2, 26>();
    var var_1 = _wgslsmith_sub_i32(select(abs(-2147483647i), var_0.b.x, any(vec2<bool>(var_0.d.a.x, false))) | countOneBits(var_0.b.x), -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.d.x, -u_input.d.x), u_input.d.x, var_0.b.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 283f)) * _wgslsmith_f_op_f32(trunc(-785f))))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<i32>) -> bool {
    global2 = array<Struct_2, 26>();
    let var_0 = -305f;
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1196f, _wgslsmith_f_op_f32(func_4(Struct_1(vec3<bool>(true, true, true), func_3(vec2<u32>(arg_0, 1u), global2[_wgslsmith_index_u32(arg_0, 26u)], Struct_4(vec3<f32>(var_0, var_0, var_0), true, vec3<f32>(var_0, -469f, 110f), Struct_2(u_input.a.xx, arg_1, vec3<u32>(u_input.b, 0u, u_input.a.x), Struct_1(vec3<bool>(false, false, true), arg_0)), Struct_3(Struct_1(vec3<bool>(true, true, false), 37900u), Struct_2(u_input.a.zy, arg_1, u_input.a.wxy, Struct_1(vec3<bool>(true, true, false), 1u)), 656f, vec3<bool>(true, true, false), global2[_wgslsmith_index_u32(arg_0, 26u)])))))), _wgslsmith_f_op_f32(-1517f * _wgslsmith_f_op_f32(func_4(Struct_1(vec3<bool>(true, true, false), u_input.b)))))));
    let var_2 = ~u_input.a.x;
    return false;
}

fn func_1() -> vec3<bool> {
    var var_0 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(func_2(u_input.b, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, 13641i, u_input.c.x), vec4<i32>(1i, u_input.c.x, 13979i, u_input.c.x)), ~global1[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_mod_i32(u_input.c.x, -1i) >= max(-13693i, 34261i), !(-2147483647i <= u_input.c.x), true), vec4<bool>(true, _wgslsmith_sub_u32(u_input.a.x, 87016u) == (1u | u_input.a.x), all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, false, false)))));
    let var_1 = Struct_2(~(~select(~vec2<u32>(u_input.b, 18024u), ~u_input.a.ww, false)), reverseBits(~_wgslsmith_add_vec4_i32(-vec4<i32>(1096i, u_input.c.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, -6343i, 0i, 18636i))), ~vec3<u32>(min(u_input.b, u_input.a.x), ~u_input.b, 2291u) | vec3<u32>(~6559u | ~u_input.b, u_input.a.x, func_3(firstLeadingBit(u_input.a.xy), global2[_wgslsmith_index_u32(abs(u_input.b), 26u)], Struct_4(vec3<f32>(657f, -878f, 1000f), false, vec3<f32>(1000f, 1013f, -216f), Struct_2(u_input.a.xz, vec4<i32>(87893i, 1i, u_input.d.x, 0i), u_input.a.yxx, Struct_1(vec3<bool>(false, true, true), 14536u)), Struct_3(Struct_1(vec3<bool>(false, false, false), 1u), global2[_wgslsmith_index_u32(1u, 26u)], -284f, vec3<bool>(true, false, true), Struct_2(u_input.a.wx, vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.a.x, 34330u, u_input.a.x), Struct_1(vec3<bool>(true, true, true), u_input.a.x)))))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), 1u));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d.x | -51110i, u_input.d.x), ~(-2147483647i));
    global2 = array<Struct_2, 26>();
    global2 = array<Struct_2, 26>();
    return vec3<bool>(true, true, ~func_3(~var_1.a, Struct_2(vec2<u32>(var_1.d.b, u_input.a.x), vec4<i32>(u_input.c.x, -10599i, -51128i, u_input.d.x), u_input.a.zzz, Struct_1(vec3<bool>(var_1.d.a.x, false, false), 14491u)), Struct_4(vec3<f32>(-554f, 1262f, -217f), true, vec3<f32>(-190f, 2222f, -238f), Struct_2(u_input.a.zz, var_1.b, var_1.c, Struct_1(vec3<bool>(var_1.d.a.x, true, true), var_1.d.b)), Struct_3(var_1.d, global2[_wgslsmith_index_u32(u_input.b, 26u)], 1123f, var_1.d.a, Struct_2(vec2<u32>(18271u, var_1.d.b), vec4<i32>(0i, var_1.b.x, u_input.c.x, 1i), vec3<u32>(21179u, var_1.c.x, u_input.a.x), Struct_1(var_1.d.a, 4294967295u))))) != u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1();
    var var_1 = 290f;
    global2 = array<Struct_2, 26>();
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-386f, -1106f) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-391f, -1436f), vec2<f32>(-670f, 580f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1201f, -1982f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + 819f), -763f) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(916f, 1124f) - vec2<f32>(1094f, -734f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 515f), vec2<f32>(206f, 1649f)))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_1(var_0, 62862u))), -1594f), -1032f)));
    let x = u_input.a;
    s_output = StorageBuffer(-74280i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3), vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), -189f)), vec4<f32>(_wgslsmith_f_op_f32(max(-2744f, -1026f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_3.x)), _wgslsmith_f_op_f32(177f * var_3.x), all(vec3<bool>(var_0.x, var_0.x, false)))), _wgslsmith_f_op_f32(sign(-1137f)), 657f));
}

