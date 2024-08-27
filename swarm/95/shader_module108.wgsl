struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_1(-1i), vec2<i32>(2147483647i, -11615i), -2436f), Struct_3(Struct_1(34422i), vec2<i32>(14076i, i32(-2147483648)), -528f));

var<private> global2: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(8615u, 0u, 20931u), vec3<u32>(6027u, 1u, 57288u), vec3<u32>(1u, 93052u, 0u), vec3<u32>(1u, 24352u, 0u), vec3<u32>(0u, 47989u, 1u), vec3<u32>(11195u, 1944u, 32557u), vec3<u32>(1u, 8474u, 27860u), vec3<u32>(21611u, 4468u, 1u), vec3<u32>(0u, 3630u, 14111u), vec3<u32>(14288u, 56839u, 4294967295u), vec3<u32>(8405u, 1u, 1u), vec3<u32>(4294967295u, 53572u, 4294967295u), vec3<u32>(142188u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 15742u), vec3<u32>(0u, 57739u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 128528u, 4294967295u), vec3<u32>(0u, 4294967295u, 24116u), vec3<u32>(4294967295u, 1u, 50120u), vec3<u32>(40768u, 108625u, 4294967295u), vec3<u32>(31308u, 74147u, 14831u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(4294967295u, 46693u, 1147u), vec3<u32>(39534u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 1345u), vec3<u32>(6033u, 0u, 4294967295u), vec3<u32>(4294967295u, 47867u, 52641u), vec3<u32>(35522u, 4294967295u, 1u), vec3<u32>(4294967295u, 46856u, 61067u), vec3<u32>(0u, 26714u, 30458u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_sub_i32(0i, u_input.b.x);
    var var_1 = -36014i;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(_wgslsmith_add_u32(1u, select(0u, 4294967295u, true))), ~_wgslsmith_add_u32(abs(59240u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 24192u, 31106u), vec3<u32>(3581u, 1u, 12271u)))), 30u)], vec3<u32>(14235u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(25740u, 4294967295u, 7547u), vec3<u32>(61270u, 0u, 78780u)), firstTrailingBit(41714u)), _wgslsmith_mod_vec2_u32(min(vec2<u32>(30672u, 1u), vec2<u32>(1u, 5064u)), select(vec2<u32>(0u, 17301u), vec2<u32>(18659u, 4294967295u), true))), _wgslsmith_dot_vec3_u32(~reverseBits(global2[_wgslsmith_index_u32(1294u, 30u)]), global2[_wgslsmith_index_u32(max(33477u, ~15088u), 30u)]))), 8u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1100f, 1158f, -1256f));
    var_1 = u_input.a | (-18327i << (0u % 32u));
    return 4294967295u;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = vec3<i32>(-2147483647i & arg_2.b, -67982i, 1i);
    let var_1 = _wgslsmith_mod_u32(55478u, arg_2.d);
    global0 = array<f32, 8>();
    var_0 = -(~u_input.b);
    let var_2 = arg_1.a;
    return select(select(vec4<bool>(!(arg_0 & arg_0), arg_0, !any(vec3<bool>(false, arg_0, false)), arg_0), select(vec4<bool>(arg_1.c == 347f, false, true, all(vec4<bool>(arg_0, arg_0, arg_0, false))), vec4<bool>(select(arg_0, true, true), all(vec3<bool>(false, arg_0, false)), arg_0, arg_0 || false), all(select(vec2<bool>(true, true), vec2<bool>(arg_0, true), false))), vec4<bool>(true, true, true, true)), vec4<bool>(true, (func_3() ^ select(arg_2.d, arg_2.d, false)) >= (_wgslsmith_mod_u32(var_1, 0u) >> ((arg_2.d >> (69473u % 32u)) % 32u)), _wgslsmith_mult_u32(arg_2.d, var_1) >= abs(1u), (!arg_0 & arg_0) | ((arg_0 && false) | true)), vec4<bool>(true, true, all(!vec3<bool>(arg_0, arg_0, arg_0)), select(true, true, select(all(vec2<bool>(arg_0, arg_0)), false, arg_1.c > -258f))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_1 {
    global1 = array<Struct_3, 2>();
    var var_0 = abs(0u);
    return Struct_1(63434i);
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = Struct_2(u_input.b.yz, -1i, arg_2, ~(~(~(~96193u))));
    global2 = array<vec3<u32>, 30>();
    var_0 = Struct_2(var_0.a, var_0.c.a, func_4(!select(select(vec4<bool>(true, false, arg_1, false), vec4<bool>(arg_1, true, arg_1, true), arg_1), !vec4<bool>(arg_1, false, arg_1, arg_1), !vec4<bool>(arg_1, false, arg_1, arg_1)), !(!vec4<bool>(arg_1, arg_1, true, false)), select(func_2(!arg_1, Struct_3(arg_2, vec2<i32>(-1i, -68967i), arg_0.x), Struct_2(u_input.b.zy, 1i, Struct_1(arg_2.a), var_0.d)).zx, vec2<bool>(true, false), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), vec2<bool>(false, false)))), var_0.d);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(489f + arg_0.x) - global0[_wgslsmith_index_u32(min(41840u, 126014u), 8u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -217f)))))));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = -firstTrailingBit(vec4<i32>(~_wgslsmith_mod_i32(21071i, u_input.b.x), min(_wgslsmith_dot_vec4_i32(vec4<i32>(-7823i, u_input.b.x, u_input.b.x, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, u_input.a)), u_input.a), 14326i, _wgslsmith_mult_i32(u_input.a, u_input.b.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(250f, global0[_wgslsmith_index_u32(4294967295u, 8u)], arg_0, -2669f) * vec4<f32>(504f, arg_0, arg_0, arg_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(57048u, 8u)], 1000f, -301f, arg_0)))), true, func_4(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, false), func_2(true, Struct_3(Struct_1(0i), vec2<i32>(23181i, var_0.x), arg_0), Struct_2(vec2<i32>(-1i, 4248i), -2147483647i, Struct_1(0i), 60040u))), vec4<bool>(false, select(false, true, true), false, all(vec3<bool>(false, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))))) * _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - global0[_wgslsmith_index_u32(1449u, 8u)]), 551f, _wgslsmith_f_op_f32(399f * -253f), _wgslsmith_f_op_f32(-arg_0))), !all(vec4<bool>(true, false, false, true)) == true, func_4(!func_2(true, Struct_3(Struct_1(var_0.x), vec2<i32>(-1i, -433i), global0[_wgslsmith_index_u32(31242u, 8u)]), Struct_2(vec2<i32>(var_0.x, 0i), var_0.x, Struct_1(u_input.b.x), 96086u)), vec4<bool>(true, true, true, true), func_2(true, Struct_3(Struct_1(u_input.b.x), u_input.b.yy, arg_0), Struct_2(vec2<i32>(u_input.a, -2147483647i), var_0.x, Struct_1(var_0.x), 23250u)).wx))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, global0[_wgslsmith_index_u32(22957u, 8u)], arg_0) + vec3<f32>(global0[_wgslsmith_index_u32(0u, 8u)], 1000f, var_1.x))) * _wgslsmith_f_op_vec3_f32(func_5(vec4<f32>(arg_0, arg_0, 156f, var_1.x), true, func_4(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec2<bool>(false, false))))), vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~31661u, 8u)] + _wgslsmith_f_op_f32(f32(-1f) * -1100f)), _wgslsmith_f_op_f32(285f - -755f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-868f + 1109f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-738f, -166f, arg_0) * vec3<f32>(arg_0, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(18887u, 8u)]))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-201f, var_1.x, var_1.x)))), vec3<f32>(_wgslsmith_div_f32(-358f, 448f), 687f, _wgslsmith_div_f32(394f, arg_0)), true))));
    let var_3 = u_input.b;
    var var_4 = 1u;
    return 37498u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(i32(-1i) * -u_input.a), (vec2<i32>(u_input.a, ~u_input.a) << (vec2<u32>(~1472u, 0u >> (0u % 32u)) % vec2<u32>(32u))) ^ min(u_input.b.zy, -vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(~25971u), 8u)] + 1945f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~64177u, 8u)] - _wgslsmith_f_op_f32(-103f - global0[_wgslsmith_index_u32(~4294967295u, 8u)]))));
    var var_1 = global1[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), 479f, all(vec3<bool>(true, true, var_0.c > -446f))))), 2u)];
    var var_2 = var_0.a;
    let var_3 = var_1.a;
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.b.x, 0i, !all(vec2<bool>(true, true))), ~(~_wgslsmith_dot_vec4_i32(max(vec4<i32>(1i, -84613i, 0i, u_input.b.x), vec4<i32>(0i, 1i, var_2.a, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_2.a, u_input.a, -4954i), vec4<i32>(u_input.b.x, 37891i, var_3.a, 35885i)))), vec2<f32>(_wgslsmith_f_op_f32(1446f + _wgslsmith_f_op_f32(select(508f, var_1.c, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(403f)) - _wgslsmith_f_op_f32(-var_0.c))));
}

