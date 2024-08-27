struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<i32, 25> = array<i32, 25>(2147483647i, 52623i, 2147483647i, i32(-2147483648), 0i, -39282i, 2147483647i, -14445i, i32(-2147483648), 0i, 34517i, 24256i, -55221i, i32(-2147483648), 1i, 10877i, -41139i, -28735i, 2147483647i, -32628i, i32(-2147483648), 2147483647i, i32(-2147483648), 51641i, -35954i);

var<private> global2: array<u32, 21> = array<u32, 21>(56420u, 4294967295u, 4294967295u, 2012u, 4294967295u, 1325u, 28866u, 1u, 1u, 43523u, 20201u, 38370u, 20506u, 59404u, 3423u, 3571u, 1u, 82451u, 4294967295u, 15077u, 17971u);

var<private> global3: array<f32, 11> = array<f32, 11>(497f, 2523f, -713f, 252f, -593f, -1012f, -1221f, 753f, -948f, -1000f, 680f);

var<private> global4: vec4<u32> = vec4<u32>(3961u, 18031u, 1u, 1u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<f32> {
    global0 = 49658i;
    var var_0 = vec4<bool>(!(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)))), true, !(_wgslsmith_f_op_f32(f32(-1f) * -509f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(u_input.b, 11u)], global3[_wgslsmith_index_u32(1u, 11u)], true)) * _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.a, 11u)])))), _wgslsmith_sub_u32(u_input.b, 3262u) > ~(~(~1u)));
    global2 = array<u32, 21>();
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d.x, 11u)]), global3[_wgslsmith_index_u32(global4.x, 11u)], true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1757f - global3[_wgslsmith_index_u32(25015u, 11u)]), _wgslsmith_f_op_f32(f32(-1f) * -428f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(628f, -161f))), global3[_wgslsmith_index_u32(firstLeadingBit(global4.x), 11u)])))));
    global1 = array<i32, 25>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1190f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63937u, 21u)], 11u)], -1000f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_1), -1302f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global4.xy, global4.xz), 11u)])), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1)), -1856f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 11u)])), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(36143u, 11u)], var_1, -187f) * vec3<f32>(var_1, -435f, var_1)))))), var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1601f, -1000f)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(var_1, -120f))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1, 911f, 602f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    let var_0 = vec3<u32>(global4.x, global2[_wgslsmith_index_u32(47608u, 21u)], ~1u);
    global2 = array<u32, 21>();
    let var_1 = arg_1;
    let var_2 = Struct_1(max(vec3<u32>(_wgslsmith_div_u32(~var_1.a.x, 0u), abs(4294967295u ^ var_0.x), var_0.x), global4.zzx), countOneBits(reverseBits(31218i)));
    let var_3 = false;
    return var_1.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec2<i32>(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-550f, 1423f, -600f), vec3<f32>(350f, arg_1.b, 1693f)))), Struct_1(countOneBits(vec3<u32>(u_input.d.x, arg_3.a.x, u_input.d.x)), min(arg_3.b, global1[_wgslsmith_index_u32(u_input.a, 25u)])), select(vec2<u32>(arg_3.a.x, arg_3.a.x) & vec2<u32>(1u, arg_3.a.x), ~vec2<u32>(1u, global2[_wgslsmith_index_u32(u_input.b, 21u)]), arg_1.a)), 0i) & _wgslsmith_mult_vec2_i32(select(vec2<i32>(arg_0.x ^ u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 50111i, 1i), vec3<i32>(2147483647i, u_input.e.x, arg_0.x))), u_input.e, vec2<bool>(true, !arg_1.d.x)), firstTrailingBit(arg_0));
    var var_1 = arg_1;
    let var_2 = ~(~vec2<u32>(~reverseBits(global4.x), arg_3.a.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b));
    global1 = array<i32, 25>();
    return Struct_2(select(select(select(vec2<bool>(arg_1.a.x, arg_1.d.x), vec2<bool>(arg_1.d.x, false), vec2<bool>(arg_1.d.x, true)), select(select(var_1.a, arg_1.d.xy, vec2<bool>(false, true)), vec2<bool>(arg_1.d.x, var_1.d.x), !arg_1.d.xx), true), !vec2<bool>(false, all(vec2<bool>(var_1.d.x, var_1.a.x))), !(!arg_1.d.yz)), -1138f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_vec3_f32(func_3()).x) * vec2<f32>(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_f_op_f32(var_1.b * arg_2)))), vec3<bool>(true, true, !arg_1.a.x));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32) -> vec4<u32> {
    let var_0 = Struct_1(global4.wyw, ~(-2147483647i));
    var var_1 = ~_wgslsmith_add_i32(u_input.c, 45756i ^ abs(var_0.b)) <= u_input.c;
    var_1 = false;
    global1 = array<i32, 25>();
    var var_2 = _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global4.x, _wgslsmith_sub_u32(var_0.a.x, global4.x)), 11u)], _wgslsmith_f_op_f32(ceil(arg_1.b))));
    return _wgslsmith_mod_vec4_u32(select(abs(~vec4<u32>(54131u, var_0.a.x, 35663u, global4.x)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.a.x, 4294967295u, 1u, 4294967295u), vec4<u32>(global4.x, var_0.a.x, 34288u, 0u)), all(!vec2<bool>(arg_1.a.x, true))), ~(~(~vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 21u)], 1u, 0u, u_input.a))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<f32> {
    global4 = select(vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, u_input.a), ~global4.x), 86905u, global2[_wgslsmith_index_u32(u_input.a, 21u)], u_input.d.x), reverseBits(_wgslsmith_div_vec4_u32(func_5(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3[_wgslsmith_index_u32(5103u, 11u)], global3[_wgslsmith_index_u32(20242u, 11u)], 1180f))), func_2(u_input.e, Struct_2(vec2<bool>(arg_2.d.x, arg_3.a.x), 605f, vec2<f32>(1517f, -1251f), vec3<bool>(false, arg_2.d.x, true)), arg_3.c.x, Struct_1(vec3<u32>(u_input.d.x, global4.x, global4.x), global1[_wgslsmith_index_u32(14365u, 25u)])), arg_3.c.x), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 32121u, global2[_wgslsmith_index_u32(79396u, 21u)], global2[_wgslsmith_index_u32(global4.x, 21u)]), vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 21u)], u_input.d.x, u_input.d.x, 4294967295u)))), !vec4<bool>(arg_2.d.x, true, arg_3.d.x, false));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_1.xyx)) + vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~u_input.b), select(u_input.d.x, 67874u, arg_0.x)), 11u)], _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(floor(-722f))), _wgslsmith_f_op_f32(-arg_2.c.x)));
    global4 = ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~u_input.a), 21u)] << ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.d.x), vec3<u32>(16353u, u_input.b, u_input.d.x)) ^ ~0u) % 32u), 21u)], firstLeadingBit(28848u & _wgslsmith_div_u32(u_input.d.x, 1u)), ~(~func_5(vec3<f32>(-498f, global3[_wgslsmith_index_u32(4294967295u, 11u)], -1000f), Struct_2(vec2<bool>(arg_3.d.x, false), global3[_wgslsmith_index_u32(global4.x, 11u)], vec2<f32>(-332f, 114f), vec3<bool>(false, arg_0.x, arg_2.d.x)), -432f).x), abs(global4.x));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(firstLeadingBit((0u >> (global4.x % 32u)) >> (~global2[_wgslsmith_index_u32(4294967295u, 21u)] % 32u)), u_input.d.x), u_input.b);
    return arg_3.c;
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    global3 = array<f32, 11>();
    global2 = array<u32, 21>();
    let var_0 = !arg_2.d.xy;
    var var_1 = func_2(firstLeadingBit(~(u_input.e ^ u_input.e)), Struct_2(vec2<bool>(func_2(vec2<i32>(3648i, 1i), func_2(vec2<i32>(u_input.e.x, -1696i), Struct_2(vec2<bool>(arg_2.a.x, false), arg_0.b, vec2<f32>(global3[_wgslsmith_index_u32(21368u, 11u)], arg_0.c.x), vec3<bool>(var_0.x, true, arg_0.a.x)), -1063f, Struct_1(vec3<u32>(0u, 88542u, 3739u), global1[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_f_op_f32(floor(arg_2.c.x)), Struct_1(vec3<u32>(arg_3, arg_3, 10225u), 140i)).d.x, func_2(~vec2<i32>(global1[_wgslsmith_index_u32(51236u, 25u)], 18385i), Struct_2(vec2<bool>(false, arg_0.d.x), 1000f, vec2<f32>(1460f, -159f), arg_0.d), _wgslsmith_div_f32(987f, 1371f), Struct_1(vec3<u32>(17328u, 78367u, 52190u), global1[_wgslsmith_index_u32(13367u, 25u)])).a.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(~arg_3, 21u)], 4294967295u), _wgslsmith_mod_vec2_u32(~vec2<u32>(global4.x, global2[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), global4.yx))), 11u)], arg_0.c, vec3<bool>(true, true, true)), 1634f, Struct_1(vec3<u32>(4294967295u, func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(543f, -524f, 1276f) * vec3<f32>(arg_0.c.x, arg_2.b, arg_0.b)), arg_2, _wgslsmith_f_op_f32(exp2(arg_2.b))).x, 20436u), -u_input.e.x));
    var var_2 = arg_0.d;
    return Struct_1(vec3<u32>(countOneBits(~0u), ~0u, 0u), 0i);
}

fn func_7(arg_0: Struct_1) -> StorageBuffer {
    global2 = array<u32, 21>();
    let var_0 = _wgslsmith_mod_vec3_i32(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, -16888i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b, arg_0.b, -2147483647i), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(72358u, 25u)], global1[_wgslsmith_index_u32(u_input.d.x, 25u)])))), vec3<i32>(i32(-1i) * -arg_0.b, abs(~1i), u_input.e.x >> (global4.x % 32u)));
    return StorageBuffer(firstLeadingBit(10646i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(581u, arg_0.a.x), 11u)])), -187f)), arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec4<u32>(49158u, select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(4294967295u, 18781u, 1u)), countOneBits(vec3<u32>(u_input.b, u_input.a, 0u)), true), ~(vec3<u32>(global2[_wgslsmith_index_u32(49646u, 21u)], 0u, u_input.b) ^ vec3<u32>(0u, 18363u, 0u))), 21u)], (~1u & (41636u ^ u_input.b)) >> (global2[_wgslsmith_index_u32(0u, 21u)] % 32u), true), global4.x, _wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(~33501u, 21u)], ~(~(~49811u))));
    let x = u_input.a;
    s_output = func_7(func_6(Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global4.x, 11u)]), -1491f, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 11u)], 871f)), _wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(true, false), vec4<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 21u)], 11u)], -1141f, 824f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 21u)], 11u)]), Struct_2(vec2<bool>(true, true), global3[_wgslsmith_index_u32(48678u, 11u)], vec2<f32>(1000f, global3[_wgslsmith_index_u32(95288u, 11u)]), vec3<bool>(true, false, true)), Struct_2(vec2<bool>(true, false), -1000f, vec2<f32>(global3[_wgslsmith_index_u32(33982u, 11u)], 385f), vec3<bool>(true, false, false))))), vec3<bool>(true, true, func_2(vec2<i32>(49840i, 1665i), Struct_2(vec2<bool>(false, false), global3[_wgslsmith_index_u32(u_input.a, 11u)], vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 11u)], global3[_wgslsmith_index_u32(30441u, 11u)]), vec3<bool>(true, true, true)), global3[_wgslsmith_index_u32(4294967295u, 11u)], Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2193u, 21u)], 21u)], global4.x, 0u), global1[_wgslsmith_index_u32(12852u, 25u)])).a.x)), global4.x, func_2(vec2<i32>(-2147483647i, -2147483647i), func_2(countOneBits(u_input.e), Struct_2(vec2<bool>(true, false), global3[_wgslsmith_index_u32(0u, 11u)], vec2<f32>(global3[_wgslsmith_index_u32(65262u, 11u)], -712f), vec3<bool>(true, true, true)), -1584f, Struct_1(vec3<u32>(global4.x, 16514u, 0u), 51953i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(41446u, 11u)]))), Struct_1(~u_input.d, 28352i)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global4.x, 52479u, 2765u, 39002u)), ~(vec4<u32>(u_input.a, 4294967295u, 0u, 14616u) ^ vec4<u32>(0u, 4294967295u, u_input.b, global2[_wgslsmith_index_u32(global4.x, 21u)])))));
}

