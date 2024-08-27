struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<bool>,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(4294967295u, 4294967295u, 28524u);

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(-1i, true, Struct_1(vec3<bool>(true, false, false), -25108i, true), false), Struct_3(2147483647i, false, Struct_1(vec3<bool>(true, false, true), i32(-2147483648), false), true), Struct_3(-1i, false, Struct_1(vec3<bool>(true, false, true), 2147483647i, true), false), Struct_3(0i, true, Struct_1(vec3<bool>(true, true, false), 7638i, true), false), Struct_3(-1i, true, Struct_1(vec3<bool>(true, false, true), 38011i, false), false), Struct_3(0i, true, Struct_1(vec3<bool>(true, true, true), i32(-2147483648), false), true), Struct_3(1i, true, Struct_1(vec3<bool>(false, false, true), 2147483647i, true), true), Struct_3(1i, true, Struct_1(vec3<bool>(false, false, true), -1i, false), false), Struct_3(1i, false, Struct_1(vec3<bool>(false, true, true), 1i, false), true), Struct_3(2147483647i, true, Struct_1(vec3<bool>(true, true, false), i32(-2147483648), false), false), Struct_3(-404i, true, Struct_1(vec3<bool>(true, true, false), 0i, true), true), Struct_3(21331i, false, Struct_1(vec3<bool>(true, false, false), 21375i, false), true), Struct_3(14247i, false, Struct_1(vec3<bool>(false, true, false), 41065i, false), true), Struct_3(23596i, false, Struct_1(vec3<bool>(true, true, true), -36731i, false), false), Struct_3(-28466i, true, Struct_1(vec3<bool>(true, true, false), -1691i, true), true), Struct_3(2147483647i, true, Struct_1(vec3<bool>(true, true, false), 15142i, false), false), Struct_3(2147483647i, true, Struct_1(vec3<bool>(true, true, false), 12888i, false), true), Struct_3(-1i, true, Struct_1(vec3<bool>(true, true, true), 1877i, true), false), Struct_3(-24450i, true, Struct_1(vec3<bool>(false, true, false), 9007i, false), false));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<u32, 3>();
    var var_0 = arg_0.xw;
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 3u)];
    return Struct_1(!(!arg_1.a), ~0i, arg_1.c);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>) -> bool {
    global0 = array<u32, 3>();
    var var_0 = _wgslsmith_mod_vec2_u32(~(~(vec2<u32>(1u, arg_1.x) | firstLeadingBit(vec2<u32>(15073u, u_input.b)))), firstTrailingBit(vec2<u32>(0u, ~11707u)));
    var var_1 = !vec3<bool>(_wgslsmith_div_i32(-1i, 11885i) <= countOneBits(arg_0.b.c.b), 1u < _wgslsmith_clamp_u32(~var_0.x, _wgslsmith_dot_vec3_u32(arg_0.a.c.wzz, arg_0.a.c.yxy), ~4294967295u), !(!arg_0.e.x));
    let var_2 = vec4<bool>(-select(_wgslsmith_sub_i32(u_input.d.x, 10041i), i32(-1i) * -17390i, any(vec3<bool>(false, arg_0.c.x, arg_0.a.e))) != arg_0.b.c.b, true, any(select(vec3<bool>(arg_0.e.x, all(vec2<bool>(true, true)), true), !func_1(u_input.d, Struct_1(arg_0.a.d.a, 20915i, true)).a, select(vec3<bool>(true, false, var_1.x), !vec3<bool>(arg_0.b.d, true, false), true))), any(arg_0.c));
    var var_3 = ~_wgslsmith_clamp_vec4_i32(firstTrailingBit((vec4<i32>(u_input.d.x, arg_0.a.b.b, u_input.a, arg_0.b.a) | u_input.d) & -vec4<i32>(46053i, -7524i, 0i, -2147483647i)), ~abs(-vec4<i32>(u_input.d.x, 17245i, arg_0.a.a.x, 2147483647i)), ~reverseBits(vec4<i32>(-31112i, 26332i, -92i, u_input.a)));
    return any(vec4<bool>(var_1.x, !arg_0.b.c.c, !(!arg_0.c.x), true)) && (select(true, true, false) | all(!select(var_2, vec4<bool>(true, arg_0.a.b.c, false, true), vec4<bool>(var_1.x, false, var_1.x, arg_0.a.d.c))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    return Struct_1(vec3<bool>(true, true, !(arg_0.x != _wgslsmith_f_op_f32(arg_0.x - -1121f))), -8133i, !(func_3(Struct_4(Struct_2(u_input.d.wxz, Struct_1(vec3<bool>(false, false, true), -2238i, true), vec4<u32>(u_input.c, 1u, 0u, global0[_wgslsmith_index_u32(u_input.c, 3u)]), Struct_1(vec3<bool>(true, true, false), u_input.a, false), true), Struct_3(-1i, false, Struct_1(vec3<bool>(true, false, true), -17192i, true), false), vec3<bool>(true, true, true), -1010f, vec2<bool>(true, true)), ~vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 3u)], 3u)])) != true));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: f32) -> vec3<bool> {
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    let var_0 = Struct_4(arg_0.a, Struct_3(-1i, u_input.b != _wgslsmith_dot_vec2_u32(~arg_0.a.c.xz, vec2<u32>(87547u, u_input.c)), Struct_1(vec3<bool>(true, arg_0.b.c.b < -1i, arg_1.x), arg_0.b.c.b, any(!arg_1)), true), func_1(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.d.x, u_input.a, u_input.d.x), arg_0.b.c).a, -1720f, !(!arg_0.e));
    var var_1 = u_input.d;
    return vec3<bool>(false, false, var_0.a.b.c);
}

fn func_5(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = vec3<bool>(func_4(Struct_4(Struct_2(~vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i), func_1(u_input.d, Struct_1(arg_0, u_input.d.x, false)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], 1u, 13134u, u_input.c), func_2(vec2<f32>(202f, -220f)), !arg_0.x), Struct_3(~(-66807i), arg_0.x, Struct_1(vec3<bool>(false, false, arg_0.x), 69021i, true), arg_0.x), !(!arg_0), _wgslsmith_f_op_f32(round(-1125f)), !arg_0.xz), vec4<bool>(-u_input.d.x == (u_input.a ^ -2147483647i), true, true && !arg_0.x, countOneBits(2147483647i) != firstTrailingBit(u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f - _wgslsmith_f_op_f32(f32(-1f) * -1154f)))).x, true, false);
    global1 = array<Struct_3, 19>();
    global0 = array<u32, 3>();
    let var_1 = Struct_2(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(19159i, u_input.d.x & -7651i, -16305i), ~vec3<i32>(u_input.a, u_input.d.x, 18379i))), Struct_1(!(!(!arg_0)), ~(-(~(-10176i))), false || func_3(Struct_4(Struct_2(u_input.d.yyz, Struct_1(var_0, u_input.a, arg_0.x), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], 56511u, global0[_wgslsmith_index_u32(1u, 3u)], 17844u), Struct_1(vec3<bool>(true, arg_0.x, false), u_input.a, false), arg_0.x), Struct_3(u_input.d.x, true, Struct_1(vec3<bool>(arg_0.x, arg_0.x, true), -4085i, arg_0.x), false), arg_0, 862f, arg_0.xx), ~vec2<u32>(0u, u_input.c))), vec4<u32>(~(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44281u, 3u)], 3u)], 3u)] ^ 44379u)), 1u, u_input.b, _wgslsmith_clamp_u32(4294967295u, ~u_input.b, global0[_wgslsmith_index_u32(select(19583u, global0[_wgslsmith_index_u32(3036u, 3u)], true) ^ 1u, 3u)])), Struct_1(func_1(_wgslsmith_mult_vec4_i32(u_input.d, u_input.d), func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1290f, 878f))))).a, 2247i, true), false);
    var var_2 = 1123f;
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.c, 1u), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_4(Struct_2(max(vec3<i32>(u_input.d.x, u_input.d.x, -29i), vec3<i32>(-28852i, 1i, u_input.d.x)), func_1(u_input.d, Struct_1(vec3<bool>(false, true, true), u_input.a, true)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54218u, 3u)], 3u)], 3u)], u_input.b, u_input.b, 0u), func_2(vec2<f32>(620f, 486f)), u_input.a >= 31159i), global1[_wgslsmith_index_u32(0u, 19u)], select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), false), -840f, vec2<bool>(true, true)), vec4<bool>(func_3(Struct_4(Struct_2(vec3<i32>(2352i, u_input.a, 2147483647i), Struct_1(vec3<bool>(true, true, true), -2147483647i, true), vec4<u32>(global0[_wgslsmith_index_u32(2496u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)]), Struct_1(vec3<bool>(true, true, true), u_input.a, false), true), global1[_wgslsmith_index_u32(u_input.b, 19u)], vec3<bool>(true, true, false), -1538f, vec2<bool>(false, false)), max(vec2<u32>(1u, u_input.c), vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 3u)]))), !func_3(Struct_4(Struct_2(vec3<i32>(-2147483647i, u_input.a, -1i), Struct_1(vec3<bool>(true, false, false), u_input.a, false), vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(1u, 3u)], 1u, 4294967295u), Struct_1(vec3<bool>(true, false, true), u_input.d.x, false), true), global1[_wgslsmith_index_u32(u_input.b, 19u)], vec3<bool>(false, false, false), 533f, vec2<bool>(true, true)), vec2<u32>(1u, 37027u)), true && (1i == u_input.d.x), func_1(select(vec4<i32>(u_input.d.x, u_input.a, 1i, -5747i), u_input.d, vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(false, false, false), 4726i, true)).a.x), -1000f));
    let var_1 = select(u_input.d.zz, u_input.d.yz >> (~(~vec2<u32>(global0[_wgslsmith_index_u32(16422u, 3u)], 37513u)) % vec2<u32>(32u)), !var_0.d);
    global0 = array<u32, 3>();
    var var_2 = Struct_4(Struct_2(countOneBits(u_input.d.wzy), Struct_1(func_1(vec4<i32>(2147483647i, var_0.a, 27493i, var_1.x), func_5(vec3<bool>(false, false, false)).c).a, ~(-38445i), any(select(vec4<bool>(false, var_0.d, var_0.b, false), vec4<bool>(var_0.c.c, false, false, var_0.c.a.x), vec4<bool>(false, var_0.d, var_0.c.c, var_0.d)))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 18002u), 0u << (u_input.b % 32u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(15419u, 3u)], 57011u), 3u)], ~u_input.c), vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(4294967295u, 3u)], 54097u, global0[_wgslsmith_index_u32(4294967295u, 3u)]) ^ vec4<u32>(global0[_wgslsmith_index_u32(3552u, 3u)], u_input.b, 34102u, u_input.c)), func_5(func_5(!var_0.c.a).c.a).c, var_0.d), Struct_3(-2147483647i, firstTrailingBit(7462i << (u_input.c % 32u)) == ~abs(0i), Struct_1(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(524f, -837f))).a, u_input.a, true), var_0.b), !var_0.c.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-296f))), 360f)), vec2<bool>(var_0.d, var_0.d));
    var var_3 = abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(reverseBits(~0u), max(1u, countOneBits(global0[_wgslsmith_index_u32(u_input.c, 3u)]))), u_input.c));
    let var_4 = var_2.b.c;
    let var_5 = !select(!vec4<bool>(var_0.d, var_2.a.e, var_4.c | true, var_2.c.x), select(!vec4<bool>(true, var_2.c.x, false, var_0.d), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, var_2.e.x, false, var_4.c), vec4<bool>(false, true, var_2.e.x, true)), vec4<bool>(true, var_4.a.x, false, var_2.a.b.a.x), select(vec4<bool>(var_0.b, var_2.c.x, var_2.b.c.c, var_4.a.x), vec4<bool>(var_0.b, var_4.a.x, true, false), vec4<bool>(var_2.c.x, false, false, var_2.a.b.a.x))), select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, var_2.b.c.a.x, false), vec4<bool>(false, var_4.c, true, false), vec4<bool>(var_0.c.a.x, true, true, false)), select(vec4<bool>(var_2.b.c.c, true, false, var_0.c.c), vec4<bool>(false, var_0.d, false, var_2.e.x), var_4.a.x))), !(!vec4<bool>(false, var_2.a.b.a.x, var_4.a.x, var_2.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 3u)], 22391u, global0[_wgslsmith_index_u32(1u, 3u)], 20887u), ~vec4<u32>(8438u, u_input.b, var_2.a.c.x, var_2.a.c.x)), ~var_2.a.c), u_input.d | vec4<i32>(var_2.a.a.x, firstLeadingBit(u_input.a), ~(-23673i), 1i), vec3<u32>(1u, _wgslsmith_sub_u32(var_2.a.c.x, ~_wgslsmith_mod_u32(40624u, 38326u)), 76103u), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1026f, 671f, true)) * _wgslsmith_f_op_f32(var_2.d + var_2.d)), 198f))), var_2.a.a.x);
}

