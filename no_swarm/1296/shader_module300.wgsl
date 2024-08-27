struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(-32979i, 9497i, -44956i), vec3<i32>(-7613i, 20980i, 0i), vec3<i32>(i32(-2147483648), -1i, -5044i));

var<private> global1: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(1417i, 39979i), vec2<i32>(-45907i, -7594i), vec2<i32>(14477i, 1i), vec2<i32>(-14494i, -40862i), vec2<i32>(-41497i, 2147483647i), vec2<i32>(38093i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -4799i), vec2<i32>(0i, -47918i), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(-52547i, 7805i), vec2<i32>(-14305i, -48046i), vec2<i32>(8647i, -1i), vec2<i32>(1i, 36665i), vec2<i32>(0i, -9482i), vec2<i32>(2147483647i, -8218i), vec2<i32>(2147483647i, 13340i), vec2<i32>(26166i, -13218i));

var<private> global2: f32;

var<private> global3: array<bool, 24>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-1000f * 672f);
    let var_1 = Struct_1(vec3<i32>(~arg_1.x, 27315i, ~_wgslsmith_mod_i32(arg_1.x, -1i) & ((i32(-1i) * -32811i) | u_input.d.x)), _wgslsmith_mult_vec2_i32(reverseBits(countOneBits(arg_1.yw)), firstTrailingBit(u_input.d.yz)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(973f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-742f + _wgslsmith_f_op_f32(ceil(1000f)))))), arg_1);
    var var_2 = Struct_4(-u_input.e, global0[_wgslsmith_index_u32(~0u, 3u)] ^ (vec3<i32>(var_1.b.x, arg_1.x, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.c, 21u)], vec2<i32>(arg_1.x, u_input.d.x))) | arg_1.zxz), Struct_1(arg_1.wwz, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c))), _wgslsmith_f_op_f32(step(var_1.c, 648f)), var_1.e), arg_1.x > var_1.e.x);
    let var_3 = Struct_2(false);
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c.c))) * var_1.c), 774f, all(vec2<bool>(!any(vec4<bool>(global3[_wgslsmith_index_u32(83588u, 24u)], var_2.d, var_3.a, false)), true))));
    return _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(~(-23633i), arg_1.x)), countOneBits(arg_1.xy), vec2<i32>(_wgslsmith_dot_vec3_i32(var_2.b, var_1.a), arg_1.x));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_5(Struct_4(_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, max(u_input.a.x, u_input.e)), -1493i), vec3<i32>(u_input.a.x, u_input.e, 0i) << (~reverseBits(vec3<u32>(u_input.b, u_input.b, 88008u)) % vec3<u32>(32u)), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(93551i, u_input.e, 24170i), global0[_wgslsmith_index_u32(u_input.b, 3u)]), _wgslsmith_add_vec2_i32(func_3(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 24u)], global3[_wgslsmith_index_u32(28783u, 24u)]), vec4<i32>(u_input.e, u_input.e, 2147483647i, u_input.e)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, u_input.a.x), global1[_wgslsmith_index_u32(u_input.c, 21u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1364f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f), 527f), vec4<i32>(-u_input.d.x, -1i, _wgslsmith_add_i32(u_input.a.x, u_input.d.x), _wgslsmith_sub_i32(-20515i, u_input.e))), global3[_wgslsmith_index_u32(countOneBits(~37400u), 24u)]));
    let var_1 = Struct_5(Struct_4(1i, u_input.d, Struct_1(vec3<i32>(u_input.e << (u_input.c % 32u), abs(-2147483647i), u_input.a.x), max(vec2<i32>(-13819i, u_input.a.x), func_3(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], true, global3[_wgslsmith_index_u32(0u, 24u)]), var_0.a.c.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.c.c))), var_0.a.c.e), (~u_input.d.x | (u_input.d.x & 1i)) <= 53985i));
    global3 = array<bool, 24>();
    var var_2 = var_1.a.c;
    global0 = array<vec3<i32>, 3>();
    return Struct_1(var_0.a.b, _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(var_2.e.x, _wgslsmith_mod_i32(var_1.a.b.x, var_2.a.x))), global1[_wgslsmith_index_u32(~(~(u_input.c | 18989u)), 21u)], vec2<i32>(-1i) * -max(global1[_wgslsmith_index_u32(4294967295u, 21u)], vec2<i32>(32673i, var_1.a.c.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c.d - 335f) + _wgslsmith_f_op_f32(-var_2.c)) * _wgslsmith_f_op_f32(max(-751f, _wgslsmith_f_op_f32(f32(-1f) * -754f))))), _wgslsmith_f_op_f32(-var_2.c), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.b.x, firstLeadingBit(1i), -(-1i << (0u % 32u)), var_1.a.b.x), var_1.a.c.e));
}

fn func_4(arg_0: Struct_1) -> Struct_5 {
    global3 = array<bool, 24>();
    global3 = array<bool, 24>();
    global0 = array<vec3<i32>, 3>();
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-563f))), arg_0.c));
    var var_1 = select(~(reverseBits(~vec4<u32>(43161u, 0u, u_input.b, 1u)) & vec4<u32>(1u, ~u_input.b, u_input.b & 1u, ~u_input.c)), firstTrailingBit(~vec4<u32>(4294967295u, 14051u, u_input.c, u_input.b)) & ~select(vec4<u32>(1928u, u_input.b, 56820u, 1u), ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<bool>(true, true, global3[_wgslsmith_index_u32(0u, 24u)], true)), !vec4<bool>(any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], global3[_wgslsmith_index_u32(u_input.c, 24u)])), (0u << (u_input.c % 32u)) <= reverseBits(u_input.c), any(vec3<bool>(false, global3[_wgslsmith_index_u32(19374u, 24u)], global3[_wgslsmith_index_u32(u_input.c, 24u)])) & true, global3[_wgslsmith_index_u32(9190u, 24u)]));
    return Struct_5(Struct_4(-3214i, vec3<i32>(~(u_input.e ^ arg_0.e.x), arg_0.e.x, _wgslsmith_add_i32(arg_0.a.x << (var_1.x % 32u), 1i)), Struct_1(select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.x, u_input.b), 3u)], firstTrailingBit(vec3<i32>(arg_0.b.x, u_input.e, -1i)), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 24u)], true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), ~vec2<i32>(-2147483647i, u_input.d.x), arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_div_f32(var_0.a.x, -1170f)), countOneBits(-vec4<i32>(arg_0.a.x, -37975i, arg_0.b.x, 1i))), false));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> vec2<bool> {
    var var_0 = func_4(func_2());
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(arg_2, u_input.b), 30889u, arg_2 ^ ~1u);
    var var_2 = select(vec2<bool>(!((arg_2 >> (78493u % 32u)) <= ~9845u), !(!var_0.a.d)), vec2<bool>(!(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 0u, arg_2), vec3<u32>(arg_2, 88490u, arg_2)) > _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 1u, 34318u, var_1.x), vec4<u32>(40949u, var_1.x, u_input.b, u_input.c))), true), select(vec2<bool>(var_0.a.d, true), vec2<bool>(select(var_0.a.d || var_0.a.d, var_0.a.d, false), any(vec3<bool>(global3[_wgslsmith_index_u32(1u, 24u)], true, false))), !select(vec2<bool>(false, false), !vec2<bool>(true, var_0.a.d), select(vec2<bool>(var_0.a.d, true), vec2<bool>(var_0.a.d, false), vec2<bool>(true, false)))));
    var_0 = Struct_5(Struct_4(reverseBits(func_4(func_4(Struct_1(vec3<i32>(-2696i, 2147483647i, arg_0.a.x), vec2<i32>(32482i, 1i), var_0.a.c.d, arg_1.c, vec4<i32>(-2147483647i, var_0.a.a, u_input.a.x, -31716i))).a.c).a.b.x), -(arg_0.a << (var_1 % vec3<u32>(32u))), Struct_1(~(-var_0.a.b), vec2<i32>(var_0.a.c.b.x, 32864i >> (u_input.b % 32u)), _wgslsmith_f_op_f32(exp2(arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1268f)), arg_0.e), true));
    var var_3 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.b.x & u_input.d.x, ~(~arg_0.e.x), var_0.a.c.a.x, -2147483647i), arg_1.e, abs(countOneBits(arg_0.e)));
    return !(!(!vec2<bool>(global3[_wgslsmith_index_u32(~u_input.b, 24u)], false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(~firstLeadingBit(1i) < ~u_input.a.x, false, any(select(func_1(Struct_1(vec3<i32>(u_input.a.x, u_input.e, u_input.d.x), vec2<i32>(2147483647i, 1i), -503f, 502f, vec4<i32>(u_input.e, -1i, 0i, -22338i)), Struct_1(vec3<i32>(-32188i, 0i, u_input.a.x), vec2<i32>(7293i, 1i), -2098f, 401f, vec4<i32>(u_input.d.x, u_input.a.x, u_input.d.x, u_input.d.x)), u_input.b, vec3<f32>(1438f, -2586f, 1091f)), vec2<bool>(true, false), func_1(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 3u)], vec2<i32>(u_input.e, u_input.d.x), 1105f, -108f, vec4<i32>(u_input.e, 1i, 2147483647i, u_input.d.x)), Struct_1(vec3<i32>(23428i, 0i, -2147483647i), global1[_wgslsmith_index_u32(u_input.c, 21u)], 1000f, 147f, vec4<i32>(u_input.a.x, -32001i, u_input.e, -1i)), u_input.c, vec3<f32>(887f, -275f, 303f)))), true);
    global1 = array<vec2<i32>, 21>();
    var_0 = !(!select(!select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], var_0.x, true, true), vec4<bool>(var_0.x, true, var_0.x, false), false), select(vec4<bool>(true, true, var_0.x, global3[_wgslsmith_index_u32(0u, 24u)]), !vec4<bool>(var_0.x, var_0.x, global3[_wgslsmith_index_u32(u_input.c, 24u)], var_0.x), all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], var_0.x, false))), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 24u)], var_0.x, var_0.x, true), vec4<bool>(true, true, true, true), false)));
    global3 = array<bool, 24>();
    var var_1 = select(max(_wgslsmith_add_vec4_u32(vec4<u32>(50697u, 4294967295u, u_input.b, 9389u), vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.b) & vec4<u32>(0u, u_input.c, 4294967295u, 4294967295u)), select(vec4<u32>(4294967295u, u_input.c, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, 38701u, 4294967295u), var_0.x) << (vec4<u32>(u_input.b, u_input.c, u_input.c, 11864u) % vec4<u32>(32u))), vec4<u32>(u_input.c, u_input.b, firstLeadingBit(1u), select(9565u, u_input.b, !global3[_wgslsmith_index_u32(0u, 24u)])), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u ^ u_input.c, u_input.b, 1u), vec4<u32>(~u_input.b, u_input.b, abs(u_input.c), u_input.c)), ~4294967295u ^ (u_input.b << (firstTrailingBit(u_input.b) % 32u)), 1u, countOneBits(10526u));
    let var_2 = !(!((any(vec2<bool>(true, true)) && false) & true));
    global0 = array<vec3<i32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(0i, countOneBits(_wgslsmith_dot_vec2_i32(select(u_input.d.xx, global1[_wgslsmith_index_u32(var_1.x, 21u)], var_0.wz), global1[_wgslsmith_index_u32(u_input.b, 21u)]))), 1i, ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.e, u_input.e), global0[_wgslsmith_index_u32(77733u, 3u)])), u_input.d.x);
}

