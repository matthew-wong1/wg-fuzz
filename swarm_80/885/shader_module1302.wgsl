struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(-1i, 1i, -18999i), vec3<i32>(235i, 13775i, -1i), vec3<i32>(-1i, 52545i, -15469i));

var<private> global1: array<Struct_1, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    var var_0 = i32(-1i) * -29065i;
    var_0 = countOneBits(u_input.e | -40034i);
    var var_1 = u_input.d;
    return vec3<bool>(all(vec3<bool>(true, true, _wgslsmith_mod_i32(u_input.e, 41770i) >= ~24690i)), any(vec4<bool>(true, true, true, true)) && false, !any(vec3<bool>(true, all(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, false, true)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_sub_vec3_i32(select(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), 0i, 22496i), _wgslsmith_mod_vec3_i32(vec3<i32>(-69865i, arg_0.b, arg_1.a.b.x), -vec3<i32>(arg_1.a.a.x, arg_0.b, 0i)), func_3()), ~(~select(vec3<i32>(u_input.e, 2147483647i, arg_0.b), arg_1.a.a, false))), ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 3416i, 2147483647i), -global0[_wgslsmith_index_u32(4294967295u, 3u)])));
    let var_1 = vec2<i32>(1i, arg_1.a.a.x);
    let var_2 = arg_1;
    let var_3 = arg_0.d.x;
    global0 = array<vec3<i32>, 3>();
    return _wgslsmith_f_op_f32(step(-721f, 941f));
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = arg_1.c;
    global1 = array<Struct_1, 9>();
    var var_1 = Struct_3(u_input.c <= ~4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.e.b.x, -1056f))))), Struct_2(arg_1.d.zxy, vec3<i32>(i32(-1i) * -2147483647i, arg_2, select(0i, firstLeadingBit(2147483647i), !arg_1.b.x))), Struct_2(arg_1.e.c.b, abs(arg_1.d.zyy) << ((reverseBits(vec3<u32>(15963u, arg_1.c.a, var_0.c)) & ~vec3<u32>(4294967295u, 4294967295u, arg_1.c.a)) % vec3<u32>(32u))));
    global0 = array<vec3<i32>, 3>();
    var_1 = Struct_3(!all(!vec3<bool>(true, arg_1.e.a, var_0.e)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1.b * _wgslsmith_f_op_vec2_f32(-arg_1.e.b)), arg_1.e.b)), arg_1.e.d, arg_1.e.c);
    return Struct_1(~_wgslsmith_mult_u32(firstTrailingBit(~0u), ~0u), firstTrailingBit(-var_1.d.b.x), arg_1.c.a, vec2<u32>(u_input.c, reverseBits(_wgslsmith_mult_u32(1u, 85414u))), !var_1.a & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(927f)) * -1105f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1662f)))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> Struct_5 {
    global0 = array<vec3<i32>, 3>();
    global1 = array<Struct_1, 9>();
    global0 = array<vec3<i32>, 3>();
    let var_0 = arg_1.e;
    var var_1 = vec4<u32>(~1u, 59136u, abs(21090u) & u_input.d, 18511u);
    return Struct_5(~(~arg_0), !select(vec4<bool>(var_0 && true, select(true, arg_1.e, var_0), false, true), !(!vec4<bool>(false, arg_1.e, var_0, false)), !select(vec4<bool>(arg_1.e, arg_1.e, arg_1.e, true), vec4<bool>(true, arg_1.e, true, arg_1.e), arg_1.e)), Struct_1(_wgslsmith_sub_u32(~arg_1.d.x, arg_0 & _wgslsmith_sub_u32(1u, var_1.x)), -5483i & arg_3.a.x, 15875u, vec2<u32>(41976u, arg_0), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_5(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, var_1.x), vec4<u32>(arg_1.d.x, var_1.x, arg_1.c, var_1.x)), select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(var_0, true, true, false), false), arg_1, vec4<i32>(2147483647i, arg_1.b, arg_3.b.x, 2147483647i), Struct_3(false, vec2<f32>(959f, -188f), Struct_2(vec3<i32>(-1i, -31885i, 1i), vec3<i32>(14275i, arg_1.b, arg_1.b)), Struct_2(arg_3.a, vec3<i32>(-2459i, -2147483647i, -2147483647i)))), arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1508f, 477f)) - _wgslsmith_f_op_f32(step(1295f, 708f)))).e), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 38759i), arg_3.b.yx), vec2<i32>(~arg_3.b.x, -arg_1.b)), 4841i, u_input.e, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.b.x, 2147483647i), arg_3.a.yy) ^ -47901i, _wgslsmith_clamp_i32(-38970i | u_input.b.x, arg_2, arg_2))), Struct_3(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2464f, -1542f, true)) + _wgslsmith_f_op_f32(402f - -608f)), Struct_5(arg_0, vec4<bool>(false, false, false, arg_1.e), Struct_1(u_input.a.x, -1i, u_input.c, u_input.a, var_0), u_input.b, Struct_3(arg_1.e, vec2<f32>(-185f, -544f), arg_3, arg_3)), arg_2 >> (_wgslsmith_mod_u32(arg_0, arg_1.a) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1238f) * _wgslsmith_f_op_f32(-1000f - 168f))).e, vec2<f32>(329f, _wgslsmith_f_op_f32(min(372f, 1050f))), Struct_2(~global0[_wgslsmith_index_u32(~0u, 3u)], arg_3.b), Struct_2(arg_3.a >> (vec3<u32>(1u, 7866u, 0u) % vec3<u32>(32u)), -vec3<i32>(u_input.b.x, arg_1.b, u_input.b.x) | _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.b, arg_3.b.x, u_input.b.x), u_input.b.zxz, vec3<i32>(arg_2, arg_2, -1i)))));
}

fn func_6(arg_0: Struct_5, arg_1: f32, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.e.b.x * -568f);
    global0 = array<vec3<i32>, 3>();
    let var_1 = arg_0.c.a;
    let var_2 = min(vec3<i32>(-arg_0.c.b, 1i, ~arg_2.b.x), u_input.b.xxx);
    let var_3 = -(~1299i);
    return arg_2;
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<i32>, 3>();
    var var_0 = Struct_4(func_6(func_5(~(~u_input.d), func_4(_wgslsmith_f_op_f32(-139f + 233f), Struct_5(u_input.d, vec4<bool>(true, true, false, true), global1[_wgslsmith_index_u32(4294967295u, 9u)], u_input.b, Struct_3(false, vec2<f32>(1414f, 604f), Struct_2(vec3<i32>(u_input.e, -2147483647i, u_input.b.x), u_input.b.xxz), Struct_2(global0[_wgslsmith_index_u32(u_input.d, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))), 1i, _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(u_input.c, 9u)], Struct_4(Struct_2(vec3<i32>(u_input.e, u_input.b.x, u_input.b.x), vec3<i32>(4071i, -1i, u_input.e))), vec3<u32>(4294967295u, u_input.a.x, 4294967295u)))), 10560i, Struct_2(vec3<i32>(2147483647i, u_input.e, 246i) << (vec3<u32>(41515u, 1723u, 1u) % vec3<u32>(32u)), vec3<i32>(u_input.e, 9992i, 1386i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(599f)) + _wgslsmith_div_f32(-3007f, -764f))), Struct_2(u_input.b.wyy << (~vec3<u32>(u_input.c, u_input.d, u_input.d) % vec3<u32>(32u)), -global0[_wgslsmith_index_u32(39944u, 3u)]), reverseBits(countOneBits(u_input.b))));
    global0 = array<vec3<i32>, 3>();
    global1 = array<Struct_1, 9>();
    let var_1 = func_5(1u, func_5(_wgslsmith_add_u32(~_wgslsmith_mult_u32(1u, 83823u), 1u), global1[_wgslsmith_index_u32(48651u, 9u)], -14435i, func_5(1u, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], var_0.a.a.x, var_0.a).e.d).c, 2147483647i, var_0.a).e;
    return Struct_1(1u, ~(~(1i | var_0.a.b.x)), ~_wgslsmith_mult_u32(68068u | u_input.d, (5420u & u_input.d) ^ 4294967295u), u_input.a, !func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -915f), -425f), func_5(~u_input.d, Struct_1(u_input.a.x, var_1.d.a.x, u_input.c, u_input.a, true), abs(u_input.e), var_1.c), -2147483647i ^ func_4(var_1.b.x, Struct_5(1u, vec4<bool>(false, var_1.a, true, var_1.a), global1[_wgslsmith_index_u32(u_input.c, 9u)], vec4<i32>(u_input.e, u_input.b.x, var_1.d.b.x, 2147483647i), Struct_3(false, var_1.b, Struct_2(u_input.b.wyz, u_input.b.yxx), Struct_2(var_0.a.a, var_0.a.a))), 1i, var_1.b.x).b, 699f).e);
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>) -> vec2<i32> {
    var var_0 = _wgslsmith_mod_i32(u_input.e, -8534i);
    global0 = array<vec3<i32>, 3>();
    global1 = array<Struct_1, 9>();
    var_0 = _wgslsmith_dot_vec3_i32(~(-vec3<i32>(~arg_0.b, func_4(886f, Struct_5(1u, vec4<bool>(false, arg_1.x, false, true), Struct_1(48446u, 1i, arg_0.d.x, arg_0.d, arg_0.e), u_input.b, Struct_3(true, vec2<f32>(317f, -222f), Struct_2(vec3<i32>(2147483647i, -11009i, arg_0.b), vec3<i32>(-1i, 22911i, -60641i)), Struct_2(vec3<i32>(-58289i, 2147483647i, u_input.e), global0[_wgslsmith_index_u32(u_input.c, 3u)]))), u_input.b.x, 1412f).b, _wgslsmith_clamp_i32(-1i, -19832i, u_input.e))), vec3<i32>(select(-u_input.e, _wgslsmith_sub_i32(arg_0.b, arg_0.b), arg_1.x), ~u_input.b.x, arg_0.b) >> (_wgslsmith_sub_vec3_u32((vec3<u32>(0u, 19468u, 60107u) >> (vec3<u32>(u_input.c, arg_0.d.x, 1u) % vec3<u32>(32u))) | (vec3<u32>(arg_0.c, 1u, 0u) & vec3<u32>(0u, 0u, arg_0.a)), vec3<u32>(51555u, u_input.d ^ arg_0.d.x, select(0u, 33372u, arg_0.e))) % vec3<u32>(32u)));
    global0 = array<vec3<i32>, 3>();
    return -_wgslsmith_clamp_vec2_i32(abs(_wgslsmith_mod_vec2_i32(u_input.b.yy, -u_input.b.yw)), u_input.b.xx, vec2<i32>(~u_input.b.x, _wgslsmith_add_i32(~u_input.b.x, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xw;
    global1 = array<Struct_1, 9>();
    var var_1 = -653f;
    let var_2 = func_7(func_1(), vec3<bool>(true, true, true));
    global0 = array<vec3<i32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d, _wgslsmith_add_u32(u_input.a.x, abs(u_input.d)), 1u, 1u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1116f, -120f, -850f) - vec3<f32>(521f, -1946f, 1000f))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-668f)), -1178f, _wgslsmith_f_op_f32(ceil(-299f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-371f, -255f, -125f) - vec3<f32>(-2008f, 670f, -820f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1284f * 365f))), 1889f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-179f, -751f), _wgslsmith_f_op_f32(-107f * 1000f), any(vec2<bool>(true, true)))), 989f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2098f, -167f, -573f, 300f), vec4<f32>(-1000f, -1135f, -816f, 1809f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1403f, -263f, 383f, -713f), vec4<f32>(-1000f, 1218f, -1363f, -1431f), vec4<bool>(false, false, false, false)))))), countOneBits(vec3<u32>(4294967295u, 1u, _wgslsmith_div_u32(124602u, u_input.d))) >> (~select(vec3<u32>(u_input.a.x, u_input.c, u_input.d), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.a.x, u_input.c), vec3<u32>(u_input.d, u_input.a.x, u_input.d)), func_5(u_input.c, Struct_1(1u, u_input.e, u_input.a.x, vec2<u32>(u_input.c, u_input.c), true), 50031i, Struct_2(vec3<i32>(var_2.x, var_2.x, 1i), vec3<i32>(var_0.x, var_0.x, 80600i))).b.wxy) % vec3<u32>(32u)), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.e, _wgslsmith_div_i32(var_0.x, 0i)), 2147483647i) | func_5(1u, func_5(0u, global1[_wgslsmith_index_u32(~1954u, 9u)], func_5(u_input.d, Struct_1(u_input.d, 16224i, 1u, u_input.a, false), var_2.x, Struct_2(vec3<i32>(var_0.x, u_input.e, var_0.x), global0[_wgslsmith_index_u32(28613u, 3u)])).c.b, func_6(Struct_5(u_input.d, vec4<bool>(false, false, false, true), Struct_1(u_input.c, 2147483647i, 1u, u_input.a, false), vec4<i32>(0i, 33354i, 1i, var_0.x), Struct_3(false, vec2<f32>(-242f, -101f), Struct_2(global0[_wgslsmith_index_u32(38858u, 3u)], u_input.b.yzw), Struct_2(vec3<i32>(1i, u_input.b.x, -20715i), vec3<i32>(-33638i, 16757i, 1i)))), 2421f, Struct_2(u_input.b.ywz, global0[_wgslsmith_index_u32(u_input.c, 3u)]), vec4<i32>(var_2.x, 2147483647i, 1i, -1i))).c, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-2450i, u_input.e), -2147483647i), func_5(~0u, Struct_1(48770u, var_2.x, 4294967295u, u_input.a, false), u_input.e, Struct_2(u_input.b.yzz, vec3<i32>(var_0.x, var_0.x, var_2.x))).e.d).e.d.a.x);
}

