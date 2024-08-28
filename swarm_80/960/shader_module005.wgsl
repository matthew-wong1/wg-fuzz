struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

var<private> global2: Struct_1;

var<private> global3: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(Struct_3(vec3<u32>(7988u, 1u, 54914u), 648f), Struct_3(vec3<u32>(0u, 1u, 4294967295u), -462f), -950f, vec2<i32>(1i, -70606i)), Struct_4(Struct_3(vec3<u32>(1u, 4294967295u, 45362u), -210f), Struct_3(vec3<u32>(1u, 4294967295u, 0u), -351f), -682f, vec2<i32>(29222i, 0i)), Struct_4(Struct_3(vec3<u32>(1u, 30191u, 34427u), -840f), Struct_3(vec3<u32>(0u, 0u, 0u), 230f), -1340f, vec2<i32>(-80423i, 4390i)), Struct_4(Struct_3(vec3<u32>(49909u, 4294967295u, 1u), 182f), Struct_3(vec3<u32>(14727u, 88552u, 0u), 611f), 532f, vec2<i32>(-15601i, -26052i)), Struct_4(Struct_3(vec3<u32>(1u, 4294967295u, 0u), 1000f), Struct_3(vec3<u32>(55223u, 0u, 17322u), -1000f), 113f, vec2<i32>(2147483647i, 10441i)), Struct_4(Struct_3(vec3<u32>(0u, 0u, 47254u), -124f), Struct_3(vec3<u32>(0u, 0u, 0u), -1000f), -1919f, vec2<i32>(0i, -9775i)), Struct_4(Struct_3(vec3<u32>(19573u, 13099u, 78185u), 249f), Struct_3(vec3<u32>(4294967295u, 17901u, 4294967295u), 511f), 1128f, vec2<i32>(1i, 0i)), Struct_4(Struct_3(vec3<u32>(0u, 45869u, 0u), 759f), Struct_3(vec3<u32>(64869u, 4294967295u, 0u), -609f), -763f, vec2<i32>(-53360i, 26284i)), Struct_4(Struct_3(vec3<u32>(17394u, 1313u, 43874u), -1000f), Struct_3(vec3<u32>(27968u, 4294967295u, 4294967295u), -1133f), -505f, vec2<i32>(i32(-2147483648), -68137i)), Struct_4(Struct_3(vec3<u32>(0u, 1u, 0u), 393f), Struct_3(vec3<u32>(1u, 4294967295u, 80730u), 281f), 2546f, vec2<i32>(28802i, -4795i)), Struct_4(Struct_3(vec3<u32>(10309u, 1u, 4294967295u), -2498f), Struct_3(vec3<u32>(4294967295u, 4294967295u, 5072u), -3080f), 314f, vec2<i32>(23658i, 26616i)), Struct_4(Struct_3(vec3<u32>(29113u, 0u, 4294967295u), 198f), Struct_3(vec3<u32>(61078u, 38164u, 1u), 252f), 108f, vec2<i32>(36069i, 0i)), Struct_4(Struct_3(vec3<u32>(4294967295u, 0u, 63953u), 175f), Struct_3(vec3<u32>(4294967295u, 4294967295u, 4294967295u), 821f), 298f, vec2<i32>(-26304i, 0i)), Struct_4(Struct_3(vec3<u32>(4294967295u, 105170u, 1u), 448f), Struct_3(vec3<u32>(65966u, 1u, 15317u), -1288f), 1000f, vec2<i32>(i32(-2147483648), 0i)), Struct_4(Struct_3(vec3<u32>(4294967295u, 4294967295u, 1u), 629f), Struct_3(vec3<u32>(54211u, 39275u, 95023u), -493f), 309f, vec2<i32>(13910i, -18815i)), Struct_4(Struct_3(vec3<u32>(0u, 0u, 22033u), 463f), Struct_3(vec3<u32>(0u, 0u, 68148u), 1010f), 1838f, vec2<i32>(-14249i, 2147483647i)), Struct_4(Struct_3(vec3<u32>(4294967295u, 4294967295u, 15870u), -618f), Struct_3(vec3<u32>(0u, 4294967295u, 94750u), -401f), 1142f, vec2<i32>(1i, -14621i)), Struct_4(Struct_3(vec3<u32>(20100u, 64952u, 4294967295u), 177f), Struct_3(vec3<u32>(4294967295u, 12898u, 4294967295u), -2817f), -1056f, vec2<i32>(-58132i, 45328i)), Struct_4(Struct_3(vec3<u32>(4294967295u, 8512u, 44537u), -153f), Struct_3(vec3<u32>(57970u, 1u, 6581u), 529f), -800f, vec2<i32>(-406i, i32(-2147483648))), Struct_4(Struct_3(vec3<u32>(0u, 31182u, 1u), 1528f), Struct_3(vec3<u32>(100283u, 1u, 4294967295u), -1000f), 1331f, vec2<i32>(-1913i, -28231i)), Struct_4(Struct_3(vec3<u32>(14890u, 0u, 43100u), -181f), Struct_3(vec3<u32>(120033u, 12260u, 35237u), -1052f), 153f, vec2<i32>(9180i, 28934i)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = Struct_1(select(global2.a, select(vec4<bool>(global2.a.x | global2.a.x, !global2.a.x, all(vec4<bool>(global2.b, true, false, true)), true), global2.a, !(!global2.a)), global2.a), !all(vec3<bool>(5351i >= arg_2.d.x, true, true)), global2.c, _wgslsmith_mult_i32(min(arg_3.d.x, _wgslsmith_mult_i32(arg_3.d.x, arg_3.d.x)), -2147483647i));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1467f, _wgslsmith_f_op_f32(679f * _wgslsmith_f_op_f32(ceil(945f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.b, arg_3.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.b, arg_3.a.b) * vec2<f32>(arg_3.a.b, 134f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.b, arg_2.a.b))))));
    let var_2 = (arg_3.d.x & -1i) ^ -2147483647i;
    global1 = array<vec3<bool>, 5>();
    var var_3 = Struct_2(!all(!var_0.a.yyx), Struct_1(!select(vec4<bool>(true, false, var_0.b, true), !vec4<bool>(true, false, var_0.a.x, global2.b), !global2.b), !var_0.a.x, select(arg_0.b.a.x, 1u, all(var_0.a.zzz)), 1i));
    return select(vec4<bool>(true, (false || var_0.b) || global2.a.x, all(!select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.b, global2.b, global2.a.x, false), true)), _wgslsmith_f_op_f32(trunc(-1390f)) < 465f), !select(var_0.a, global2.a, !any(var_3.b.a.zw)), true);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = global2.a.zx;
    global2 = Struct_1(global2.a, all(func_3(Struct_4(Struct_3(vec3<u32>(0u, 99342u, 1u), 1792f), Struct_3(vec3<u32>(1u, global2.c, global2.c), 425f), _wgslsmith_f_op_f32(select(713f, -218f, arg_0)), vec2<i32>(arg_1.x, 19489i)), 4294967295u, Struct_4(Struct_3(vec3<u32>(38086u, 15250u, global2.c), -1538f), Struct_3(vec3<u32>(26204u, u_input.b, global2.c), 914f), -321f, arg_1.xy), Struct_4(Struct_3(vec3<u32>(14753u, 0u, global2.c), -1282f), Struct_3(vec3<u32>(u_input.b, 4109u, u_input.b), -1000f), _wgslsmith_f_op_f32(ceil(1193f)), arg_1.zx & vec2<i32>(-3571i, global2.d)))), u_input.b << (reverseBits(~1u) % 32u), -(~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(u_input.a, -32822i, -2147483647i)), u_input.a)));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(640u, u_input.b), ~vec2<u32>(global2.c, global2.c)), u_input.b, global2.c) ^ (4294967295u >> (u_input.b % 32u)), 25254u);
    var var_2 = Struct_2(global2.a.x, Struct_1(vec4<bool>(select(true, !global2.a.x, !global2.b), !all(global2.a), false, true), global2.b, u_input.b | 15589u, -_wgslsmith_add_i32(1i, select(19903i, 46307i, global2.a.x))));
    var_2 = Struct_2(any(!(!vec3<bool>(true, arg_0, true))), var_2.b);
    return var_2.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec4<f32> {
    let var_0 = vec2<i32>(-4330i, ~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 2147483647i, u_input.a, arg_1.d), -vec4<i32>(u_input.a, 52660i, -1i, 19653i)), u_input.a));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b, arg_0.b, arg_0.b) + vec4<f32>(106f, 395f, 1690f, 1f));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec3<u32>(u_input.b, arg_2.c, arg_2.c), _wgslsmith_f_op_f32(1715f + 171f)), func_2(true, abs(vec3<i32>(arg_2.d, 4307i, u_input.a))), true | !arg_3.x, firstTrailingBit(~(-2147483647i)))), vec4<f32>(1236f, -592f, _wgslsmith_f_op_f32(abs(513f)), 584f), false)));
    global3 = array<Struct_4, 21>();
    var var_1 = Struct_4(Struct_3(~(~select(vec3<u32>(u_input.b, arg_2.c, 10898u), vec3<u32>(arg_2.c, global2.c, 9333u), false)), 317f), Struct_3(~(vec3<u32>(21138u, 4294967295u, 0u) >> (~vec3<u32>(1u, u_input.b, 5124u) % vec3<u32>(32u))), -649f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))), vec2<i32>(~select(global2.d, u_input.a, true & global2.a.x), arg_0));
    let var_2 = var_1.d.x;
    var var_3 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-938f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(683f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, -1000f), -1809f)) - -2227f)) - 819f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<i32>(22109i, -8355i & u_input.a, 45539i, select(firstLeadingBit(-global2.d), 12075i, true));
    global3 = array<Struct_4, 21>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1248f, -654f, 1000f), vec4<f32>(-1093f, 1439f, 387f, -1544f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 128f, 1164f, -789f), vec4<f32>(901f, 427f, -612f, -1855f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(736f)) + _wgslsmith_f_op_f32(func_1(-738i, global1[_wgslsmith_index_u32(u_input.b, 5u)], Struct_1(global2.a, global2.a.x, u_input.b, global2.d), vec2<bool>(true, true)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(417f - 1000f) * _wgslsmith_f_op_f32(step(617f, -2685f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1137f)))), !vec4<bool>(true, global2.a.x & false, global2.a.x, global2.b))));
    let var_2 = Struct_3(vec3<u32>(_wgslsmith_sub_u32(1u, global2.c), ~global2.c, ~4780u << ((_wgslsmith_sub_u32(u_input.b, 55909u) ^ ~global2.c) % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -596f))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-196f, var_1.x, var_2.b))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.xzw * vec3<f32>(var_2.b, -509f, 551f)) - vec3<f32>(1868f, 128f, var_2.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(906f, -1302f, -140f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, var_2.b)) - _wgslsmith_f_op_f32(f32(-1f) * -1427f)), var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-302f)) + _wgslsmith_f_op_f32(-var_1.x))), any(global2.a.yy))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(var_2, func_2(global2.b, -min(vec3<i32>(var_0.x, u_input.a, 1i), vec3<i32>(54275i, global2.d, 1925i))), global2.a.x, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0.zzy, max(vec3<i32>(11354i, global2.d, global2.d) >> (~vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(global2.d, -750i, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1000f + 852f), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(trunc(var_4.x)), _wgslsmith_f_op_f32(select(2073f, 462f, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1078f, var_4.x, 518f, var_3.x))) - _wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec3<u32>(var_2.a.x, 0u, 19991u), var_4.x), Struct_1(vec4<bool>(global2.b, global2.b, global2.b, true), global2.b, 61906u, var_0.x), global2.b, -2147483647i)))))), abs(~(max(var_2.a, vec3<u32>(u_input.b, u_input.b, 1u)) << (vec3<u32>(4294967295u, 4294967295u, u_input.b) % vec3<u32>(32u)))));
}

