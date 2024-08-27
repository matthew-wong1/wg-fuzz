struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1106f, vec2<f32>(592f, 1078f)), Struct_1(1020f, vec2<f32>(242f, -954f)), Struct_1(-1435f, vec2<f32>(213f, -1395f)), Struct_1(-1000f, vec2<f32>(435f, 2031f)), Struct_1(746f, vec2<f32>(406f, 463f)), Struct_1(772f, vec2<f32>(507f, -189f)), Struct_1(822f, vec2<f32>(1180f, 209f)), Struct_1(-347f, vec2<f32>(-1658f, -2490f)));

var<private> global2: array<f32, 21>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1425f + 1149f)))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.c, 8u)];
    var var_2 = u_input.d;
    global1 = array<Struct_1, 8>();
    var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.x, ~_wgslsmith_add_u32(7942u, u_input.d.x)), 21u)]));
    return var_1.b;
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_3(vec2<bool>(all(!(!vec2<bool>(false, arg_0))), true), u_input.c, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.c, 18u)])))), arg_2));
    global1 = array<Struct_1, 8>();
    return Struct_4(~vec2<u32>(28433u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, var_0.b, u_input.d.x), u_input.d.yyw)), arg_0, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), -417f)))), vec2<f32>(-1513f, _wgslsmith_f_op_f32(-arg_2.x))), !var_0.a);
}

fn func_1(arg_0: vec2<i32>) -> bool {
    global2 = array<f32, 21>();
    var var_0 = !(!any(vec3<bool>(false, true, false))) & true;
    global0 = array<f32, 18>();
    var var_1 = func_3(u_input.a.x >= -1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-647f, global0[_wgslsmith_index_u32(u_input.d.x, 18u)], 1000f)))))), _wgslsmith_f_op_vec2_f32(func_2(17918i)));
    return !any(vec2<bool>(func_3(any(vec3<bool>(var_1.d.x, false, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(727f, global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(40584u, 18u)])), _wgslsmith_f_op_vec2_f32(-var_1.c.b)).b, var_1.d.x));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<i32>) -> vec3<u32> {
    global0 = array<f32, 18>();
    var var_0 = func_3(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-335f, global0[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(34806u, 21u)]))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 21u)], global2[_wgslsmith_index_u32(0u, 21u)], 1366f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-835f, global2[_wgslsmith_index_u32(u_input.c, 21u)], 346f)), arg_0)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(4748u, 21u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(21222u, 18u)], -492f)))))));
    let var_1 = Struct_3(var_0.d, u_input.d.x, Struct_1(-432f, _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 47837i), vec2<i32>(1i, -12751i)) << (u_input.c % 32u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(u_input.d.x ^ ~1u, 21u)], _wgslsmith_div_f32(-609f, var_0.c.a)), vec2<f32>(-255f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.d.x), 18u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)))), 38291i != firstTrailingBit(0i)));
    return vec3<u32>(~u_input.c, _wgslsmith_mult_u32(reverseBits(u_input.c ^ abs(u_input.c)), u_input.d.x), u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.zyx << ((~func_4(func_1(vec2<i32>(u_input.b.x, -20878i)), u_input.a.x, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -12171i, 17666i), u_input.a.wzx)) | func_4(!select(false, false, false), _wgslsmith_add_i32(-108850i, u_input.a.x), u_input.a.zwz)) % vec3<u32>(32u));
    let var_1 = Struct_4(vec2<u32>((u_input.d.x | 153314u) & (var_0.x >> (1u % 32u)), (81690u & var_0.x) ^ (u_input.d.x & u_input.c)) << (vec2<u32>(select(~u_input.d.x, ~var_0.x, true), ~(u_input.d.x >> (1u % 32u))) % vec2<u32>(32u)), func_3(_wgslsmith_div_u32(_wgslsmith_sub_u32(2577u, 1u), firstTrailingBit(u_input.d.x)) <= select(var_0.x, u_input.c, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.d.x, 21u)])), global0[_wgslsmith_index_u32(23536u, 18u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 18u)])) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2[_wgslsmith_index_u32(0u, 21u)], 934f, global2[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(20930u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], 905f) - vec3<f32>(-1470f, global0[_wgslsmith_index_u32(16412u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1994f)), global0[_wgslsmith_index_u32(u_input.d.x | u_input.d.x, 18u)]), _wgslsmith_f_op_vec2_f32(func_2(~u_input.b.x)), func_3(true, vec3<f32>(1207f, global2[_wgslsmith_index_u32(u_input.d.x, 21u)], global0[_wgslsmith_index_u32(1u, 18u)]), vec2<f32>(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(68172u, 21u)])).a.x == 0u))).d.x, Struct_1(global0[_wgslsmith_index_u32(0u >> (var_0.x % 32u), 18u)], _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 18u)], _wgslsmith_f_op_f32(trunc(1380f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(u_input.c, 21u)])))))), vec2<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), false));
    global2 = array<f32, 21>();
    var var_2 = func_3(func_3(_wgslsmith_sub_i32(u_input.b.x ^ 27144i, 1i) <= abs(~0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 21u)], 868f, global2[_wgslsmith_index_u32(0u, 21u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(374f, -1210f, var_1.c.b.x)))), _wgslsmith_f_op_vec2_f32(-var_1.c.b)).d.x, vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~24426u ^ var_1.a.x, 0u), 21u)], global0[_wgslsmith_index_u32(var_1.a.x, 18u)], _wgslsmith_f_op_f32(-626f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(414f + global2[_wgslsmith_index_u32(1u, 21u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(-abs(u_input.a.x))))).c;
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-756f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - global0[_wgslsmith_index_u32(4294967295u, 18u)])))), vec2<f32>(-1107f, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(var_0.x, var_1.a.x)), 21u)]));
    let var_3 = _wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(u_input.d.wxx, var_0, vec3<u32>(39824u, var_0.x, u_input.d.x)), _wgslsmith_mod_vec3_u32(reverseBits(var_0), vec3<u32>(89952u, u_input.d.x, var_1.a.x)), func_1(u_input.b.zx)) ^ vec3<u32>(var_0.x, u_input.c, 1339u), min(~var_0, ~var_0));
    let var_4 = func_3(var_1.d.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec2_f32(func_2(u_input.a.x)).x, var_1.c.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-808f, 460f, 320f), vec3<f32>(-1333f, var_1.c.b.x, -1000f)))))), var_2.b).c;
    let var_5 = Struct_2(Struct_1(var_2.b.x, var_4.b), global1[_wgslsmith_index_u32(8617u, 8u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-388f, _wgslsmith_dot_vec2_i32(vec2<i32>(-(~u_input.a.x), 40120i), u_input.a.zy), -616f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_4.a)))), 1257f)), 1u);
}

