struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<bool, 23> = array<bool, 23>(true, false, true, true, true, true, true, true, true, true, false, true, true, false, true, true, true, false, true, false, false, false, true);

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(2147483647i, vec3<u32>(4294967295u, 0u, 0u), vec4<bool>(true, true, false, false), false, 2147483647i), Struct_1(2147483647i, vec3<u32>(14636u, 49511u, 1u), vec4<bool>(true, true, true, true), true, -2429i), Struct_1(0i, vec3<u32>(15865u, 0u, 10747u), vec4<bool>(false, true, false, false), true, 5392i), Struct_1(0i, vec3<u32>(1u, 55437u, 24740u), vec4<bool>(true, true, true, false), false, 27744i), Struct_1(38016i, vec3<u32>(0u, 4294967295u, 4294967295u), vec4<bool>(false, false, true, false), true, 2147483647i), Struct_1(12435i, vec3<u32>(1u, 1u, 72436u), vec4<bool>(false, true, false, true), true, i32(-2147483648)), Struct_1(-12053i, vec3<u32>(0u, 31116u, 1u), vec4<bool>(true, true, true, false), false, -44735i), Struct_1(2200i, vec3<u32>(0u, 21140u, 14409u), vec4<bool>(false, false, false, false), false, 1i), Struct_1(8253i, vec3<u32>(0u, 1u, 28326u), vec4<bool>(false, true, false, false), false, -56919i), Struct_1(26716i, vec3<u32>(9805u, 4294967295u, 52502u), vec4<bool>(true, false, true, false), false, -23439i), Struct_1(56878i, vec3<u32>(0u, 69477u, 61465u), vec4<bool>(true, false, false, false), true, 0i), Struct_1(-43458i, vec3<u32>(4294967295u, 1u, 0u), vec4<bool>(false, false, true, false), true, -7445i), Struct_1(2147483647i, vec3<u32>(56723u, 23865u, 0u), vec4<bool>(false, true, true, true), true, i32(-2147483648)), Struct_1(0i, vec3<u32>(15454u, 30036u, 13193u), vec4<bool>(true, false, true, false), true, 14195i), Struct_1(0i, vec3<u32>(31591u, 17422u, 2193u), vec4<bool>(false, true, true, true), false, i32(-2147483648)), Struct_1(1i, vec3<u32>(12422u, 70223u, 10792u), vec4<bool>(true, true, true, false), false, 1i), Struct_1(-22450i, vec3<u32>(10171u, 50023u, 0u), vec4<bool>(false, false, true, false), true, -32995i), Struct_1(33832i, vec3<u32>(78198u, 47486u, 36125u), vec4<bool>(true, true, true, true), true, -48388i), Struct_1(1i, vec3<u32>(1882u, 4294967295u, 33696u), vec4<bool>(true, true, true, false), true, i32(-2147483648)), Struct_1(2147483647i, vec3<u32>(0u, 0u, 11234u), vec4<bool>(false, true, false, false), true, 19645i), Struct_1(-14920i, vec3<u32>(0u, 29387u, 0u), vec4<bool>(false, false, false, false), false, 16745i), Struct_1(19863i, vec3<u32>(0u, 1u, 1u), vec4<bool>(false, false, false, true), true, 37723i), Struct_1(1i, vec3<u32>(32887u, 0u, 4294967295u), vec4<bool>(true, false, true, true), false, 0i), Struct_1(52228i, vec3<u32>(0u, 0u, 38158u), vec4<bool>(false, false, false, false), true, -2330i));

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>) -> f32 {
    global2 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(global4.a, global2.x, global2.x), vec3<i32>(1i, -9452i, 1i), true), abs(vec3<i32>(global4.a, 1378i, global2.x))), -vec3<i32>(8979i, global4.e, 29177i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(10103i, global2.x, global4.a), ~vec3<i32>(global4.a, global4.a, -16868i) | ~vec3<i32>(2147483647i, 38984i, 19509i))), select(-_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.x, global2.x, global4.a), _wgslsmith_div_vec3_i32(vec3<i32>(-21912i, 2147483647i, global4.a), vec3<i32>(2147483647i, -7349i, global2.x)), vec3<i32>(0i, global2.x, global4.a) ^ vec3<i32>(global2.x, 0i, -20790i)), -firstTrailingBit(vec3<i32>(1i, global2.x, -2147483647i) << (vec3<u32>(92256u, global4.b.x, arg_0.x) % vec3<u32>(32u))), vec3<bool>(all(!vec2<bool>(true, global4.c.x)), select(global4.c.x || true, true, -1524f < arg_1.x), true)));
    global2 = -abs(min(vec3<i32>(0i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global2.x, -2147483647i), vec3<i32>(3031i, 0i, -2147483647i))), (vec3<i32>(global2.x, global4.a, global2.x) << (global4.b % vec3<u32>(32u))) | vec3<i32>(global4.a, -31795i, -2147483647i)));
    let var_0 = 1026f;
    global2 = (abs(select(-vec3<i32>(global4.a, global4.e, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.x, global4.a, global2.x), vec3<i32>(0i, 0i, 0i), vec3<i32>(-32444i, 1i, 49062i)), true)) ^ (~countOneBits(vec3<i32>(global2.x, -32201i, global4.a)) & _wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, -19653i, 1i), vec3<i32>(22338i, global4.a, -1i)))) | -(select(~vec3<i32>(-6912i, -2325i, 1i), -vec3<i32>(global2.x, -2147483647i, 1i), global4.c.yyw) | _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global4.a, 22292i, global4.a), vec3<i32>(global2.x, -1i, global4.e)), ~vec3<i32>(41109i, global4.e, -6051i)));
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 23u)];
    return 1077f;
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> i32 {
    global3 = array<Struct_1, 24>();
    let var_0 = select(!global1[_wgslsmith_index_u32(4294967295u, 23u)], !(arg_2.c.x & true), false);
    var var_1 = 54058i;
    global1 = array<bool, 23>();
    var var_2 = select(vec4<bool>(any(vec2<bool>(global4.c.x, var_0 | arg_3)), all(global4.c.yzz), any(!(!vec2<bool>(var_0, false))), all(select(!global4.c.wy, select(vec2<bool>(global1[_wgslsmith_index_u32(global4.b.x, 23u)], var_0), vec2<bool>(true, false), vec2<bool>(false, true)), arg_2.c.xx))), vec4<bool>(true, true, any(vec2<bool>(true, all(global4.c.yxw))), global1[_wgslsmith_index_u32(~arg_0.x, 23u)]), all(global4.c));
    return ~arg_1;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<i32>) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_sub_i32(-global4.e | func_3(~global4.b, -1i, Struct_1(18335i, vec3<u32>(global4.b.x, global4.b.x, global0[_wgslsmith_index_u32(arg_0.x, 21u)]), global4.c, false, arg_2.x), all(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 21u)], 23u)]))), -select(global4.e, _wgslsmith_div_i32(8091i, -1i), any(global4.c.wxy))), firstTrailingBit(~vec3<u32>(max(arg_0.x, u_input.a.x), u_input.a.x, _wgslsmith_mod_u32(1u, global4.b.x))), global4.c, !any(global4.c.yz), global4.e);
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~4294967295u), ~arg_0.x, _wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(global4.b.x, 21u)], min(global0[_wgslsmith_index_u32(68528u, 21u)], var_0.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(67224u, 15228u, 2220u, 29771u), u_input.a)), u_input.a.x) ^ u_input.a, u_input.a);
    global3 = array<Struct_1, 24>();
    let var_2 = Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(0i, i32(-1i) * -2147483647i), 1i), var_0.b, select(select(select(!var_0.c, global4.c, true), select(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 23u)], global1[_wgslsmith_index_u32(20686u, 23u)], false, true), var_0.c, global4.c), !vec4<bool>(var_0.d, true, false, global4.c.x)), var_0.c, global4.c), arg_2.x <= select(~34806i, global4.e, true), ~abs(var_0.a));
    global0 = array<u32, 21>();
    return _wgslsmith_clamp_vec3_i32(max(~(vec3<i32>(arg_2.x, -40400i, 2147483647i) << (select(vec3<u32>(var_1, 29425u, 0u), var_0.b, var_2.c.zzy) % vec3<u32>(32u))), arg_2.xyz << ((~vec3<u32>(49408u, 1u, 4294967295u) >> (global4.b % vec3<u32>(32u))) % vec3<u32>(32u))), abs(-arg_2.ywy), ~_wgslsmith_add_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, -16312i, var_2.e), arg_2.ywx)), reverseBits(arg_2.wwy) & ~arg_2.xxz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(876f + 555f) - _wgslsmith_f_op_f32(138f * -162f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-202f, 1320f)) + -915f)), _wgslsmith_f_op_f32(func_1(~min(vec2<u32>(7469u, 18239u), vec2<u32>(15722u, global4.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(791f, 1035f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-143f, 342f)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1070f + -878f), -460f) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-1554f)), _wgslsmith_f_op_f32(max(553f, -1124f)))))));
    let var_1 = Struct_1(-_wgslsmith_div_i32(global2.x << (0u % 32u), global4.e), select(~vec3<u32>(0u, u_input.a.x, global4.b.x << (u_input.a.x % 32u)), vec3<u32>(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 21u)], 0u), 0u, u_input.a.x), true), vec4<bool>(false, false, !(!all(vec2<bool>(global4.d, true))), false), false | all(!global4.c.wzx), global4.a);
    let var_2 = global3[_wgslsmith_index_u32(~42248u, 24u)];
    global2 = ~func_2(var_1.b.zx, global0[_wgslsmith_index_u32(var_2.b.x, 21u)], select(vec4<i32>(var_1.a, var_2.a, -50463i, -1i), vec4<i32>(var_1.a, global4.a, -35942i, global2.x), global4.d) << (u_input.a % vec4<u32>(32u)));
    var var_3 = Struct_1(-7149i, max(vec3<u32>(max(~1u, select(u_input.a.x, 1u, global1[_wgslsmith_index_u32(global4.b.x, 23u)])), 0u, reverseBits(var_2.b.x)), vec3<u32>(max(u_input.a.x, 6870u), var_2.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(42199u, 1u, global4.b.x, 4294967295u), vec4<u32>(var_1.b.x, global0[_wgslsmith_index_u32(global4.b.x, 21u)], 34964u, var_1.b.x)))), !(!vec4<bool>(global4.c.x, true, var_1.b.x >= global0[_wgslsmith_index_u32(24778u, 21u)], false)), true, countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(global2.yx, global2.xz), vec2<i32>(878i, var_2.a)), global2.xy)));
    var var_4 = min(~((_wgslsmith_clamp_i32(23237i, -2147483647i, var_1.e) | 1i) & -26878i), 1i);
    var var_5 = (1308f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(var_0.x + var_0.x))))) && true;
    var var_6 = var_2.b;
    var_6 = u_input.a.zyx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-1i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1074f, -247f, var_0.x), vec3<f32>(-435f, var_0.x, 334f))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-277f, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x))))))), vec4<i32>(global4.e, _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(32565i, -86827i, -2147483647i)), -(~vec3<i32>(-16671i, var_3.e, var_2.a))), global2.x & func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.b.x, var_2.b.x), var_1.b.yy), ~var_2.b.x, _wgslsmith_div_vec4_i32(vec4<i32>(global2.x, var_3.a, 14996i, global2.x), vec4<i32>(var_2.a, var_1.e, 64168i, global2.x))).x, reverseBits(44344i)), u_input.a, firstLeadingBit(firstTrailingBit(-2147483647i)));
}

