struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: vec2<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 25>;

var<private> global2: vec4<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1019f, arg_0.b.c)))))) * -547f);
}

fn func_4(arg_0: Struct_5, arg_1: f32) -> f32 {
    let var_0 = 0u;
    global1 = array<f32, 25>();
    global0 = Struct_1(any(vec3<bool>(true, any(vec4<bool>(global0.a, false, true, arg_0.e.b)), any(!vec3<bool>(global0.a, true, true)))), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f) * -1993f) + 453f), ~29046u, 1u);
    let var_1 = _wgslsmith_f_op_f32(func_3(Struct_2(arg_0.e.d.b.x, Struct_1(!(global0.e == 4294967295u), vec4<i32>(u_input.d, global0.b.x, ~global0.b.x, _wgslsmith_mult_i32(global0.b.x, -1i)), -1000f, arg_0.e.c.a.b.d, global0.e)), Struct_1(!any(select(vec3<bool>(global0.a, false, false), vec3<bool>(true, arg_0.e.d.a, true), vec3<bool>(arg_0.b, global0.a, arg_0.e.d.a))), u_input.a, 1709f, var_0, 4294967295u), arg_0.e.c.a));
    var var_2 = !arg_0.e.a.a || true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c - -488f), arg_1, true)));
}

fn func_2() -> vec2<bool> {
    global2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2437f, _wgslsmith_div_f32(global2.x, _wgslsmith_div_f32(-1400f, global0.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u & u_input.e.x, 25u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 25u)]))), 625f, true)), 273f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(712f, global2.x, global2.x, global2.x)))), vec4<f32>(1436f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global0.d, 25u)])), _wgslsmith_div_f32(global2.x, 1282f), _wgslsmith_f_op_f32(f32(-1f) * -536f))))))));
    let var_0 = Struct_1(any(select(vec2<bool>(global0.a, !global0.a), select(vec2<bool>(global0.a, false), vec2<bool>(false, false), !vec2<bool>(global0.a, global0.a)), select(vec2<bool>(true, global0.a), vec2<bool>(false, global0.a), vec2<bool>(global0.a, false)))), global0.b, _wgslsmith_f_op_f32(func_4(Struct_5(-2147483647i, false, vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(round(global0.c)), _wgslsmith_f_op_f32(func_3(Struct_2(global0.b.x, Struct_1(true, u_input.a, global2.x, 82077u, 27831u)), Struct_1(true, vec4<i32>(u_input.a.x, 2147483647i, global0.b.x, 44943i), -853f, 4294967295u, global0.e), Struct_2(-16034i, Struct_1(global0.a, vec4<i32>(u_input.a.x, u_input.c.x, global0.b.x, 0i), global0.c, 74125u, global0.e))))), _wgslsmith_f_op_vec2_f32(-global2.ww), Struct_4(Struct_1(true, vec4<i32>(11790i, global0.b.x, -22136i, -2147483647i), -236f, global0.e, global0.d), false, Struct_3(Struct_2(-1i, Struct_1(false, global0.b, global2.x, u_input.e.x, u_input.b.x)), global0.d), Struct_1(false, vec4<i32>(u_input.d, 1i, -39338i, u_input.d), 589f, global0.d, 60994u))), _wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(-1000f + global0.c)))), u_input.b.x, u_input.b.x >> (max(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_div_u32(34977u, 1u)), u_input.e.x) % 32u));
    global1 = array<f32, 25>();
    let var_1 = 39349u;
    let var_2 = Struct_2(-1i, var_0);
    return vec2<bool>(all(!vec4<bool>(false, var_2.b.a, any(vec4<bool>(global0.a, true, var_0.a, true)), var_2.b.a)), select(any(vec3<bool>(var_2.b.a, true, any(vec4<bool>(var_0.a, true, var_0.a, false)))), var_2.b.a, !(true != global0.a)));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_dot_vec3_i32(select(_wgslsmith_mult_vec3_i32(global0.b.wxz, arg_0), _wgslsmith_sub_vec3_i32(global0.b.xxy, global0.b.zxw), !vec3<bool>(global0.a, global0.a, true)), arg_0) & u_input.a.x, Struct_1(all(vec4<bool>(true && global0.a, true, all(vec4<bool>(false, global0.a, true, false)), all(vec2<bool>(global0.a, global0.a)))), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xz, global0.b.wx) | abs(global0.b.x), ~arg_0.x, u_input.a.x, -2147483647i), -899f, u_input.e.x, ~_wgslsmith_add_u32(global0.d >> (global0.e % 32u), ~1u)));
    var var_1 = Struct_1(true, vec4<i32>(10536i, var_0.a, -2147483647i, ~_wgslsmith_div_i32(0i, global0.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(36601u, 25u)], 1048f, true))))))), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.e.zx, vec2<u32>(global0.e, 15515u)), global0.e >> (u_input.e.x % 32u)), countOneBits(0u)) & var_0.b.e, 9127u);
    let var_2 = all(select(select(vec2<bool>(false, any(vec3<bool>(false, true, global0.a))), vec2<bool>(var_0.b.a, var_1.a), func_2()), vec2<bool>(var_0.b.a, true), !vec2<bool>(global0.a, true)));
    global1 = array<f32, 25>();
    let var_3 = Struct_4(Struct_1(all(vec3<bool>(false, select(global0.a, var_0.b.a, var_0.b.a), true)), -vec4<i32>(58041i, -49143i, abs(var_1.b.x), _wgslsmith_div_i32(u_input.c.x, var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) + _wgslsmith_f_op_f32(-322f * 1547f)), var_1.e, _wgslsmith_mod_u32(firstLeadingBit(max(global0.d, 44403u)), global0.e)), var_1.a, Struct_3(Struct_2(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, 21817i), -var_0.b.b.x), var_0.b), 84979u), Struct_1(var_2, vec4<i32>(_wgslsmith_add_i32(~0i, 0i), ~(-1i), abs(2147483647i), firstLeadingBit(-1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.c, var_0.b.c))), 4294967295u, global0.d));
    return Struct_1(any(vec4<bool>(select(var_3.d.d, var_3.d.d, var_2) >= ~1762u, select(false, false, any(vec4<bool>(var_3.c.a.b.a, true, var_2, var_1.a))), false, !var_0.b.a)), vec4<i32>(-2147483647i, max(-1i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.b.b.x, 1i), global0.b.x >> (910u % 32u), firstLeadingBit(var_1.b.x))), 1i, ~var_3.c.a.a), 1420f, reverseBits(firstTrailingBit(0u) << (firstLeadingBit(u_input.b.x) % 32u)), 23533u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(arg_0.a, u_input.a & arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * arg_1.d.x)) - 1255f)), arg_1.e.c.a.b.d, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, u_input.a.x), global0.b.zwz), (_wgslsmith_f_op_f32(f32(-1f) * -107f) != _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(19240u, 1u), 25u)], _wgslsmith_f_op_f32(trunc(171f)))) && ((global2.x <= -1000f) | !(true || global0.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), global2.x, 1f, _wgslsmith_f_op_f32(global0.c * 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.e, 25u)]), _wgslsmith_f_op_f32(f32(-1f) * -1680f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.e, 25u)] + global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), _wgslsmith_f_op_f32(global2.x * global1[_wgslsmith_index_u32(38140u, 25u)]))), !select(vec4<bool>(false, global0.a, global0.a, global0.a), select(vec4<bool>(false, false, global0.a, false), vec4<bool>(global0.a, global0.a, true, global0.a), vec4<bool>(global0.a, global0.a, false, global0.a)), true))), _wgslsmith_f_op_vec2_f32(-global2.zy), Struct_4(Struct_1(global0.a, u_input.a, global2.x, 36015u, ~(~global0.d)), global0.a, Struct_3(Struct_2(26688i, Struct_1(global0.a, global0.b, 1216f, 4294967295u, 53135u)), ~(7556u | global0.d)), func_5(func_1(max(global0.b.yxy, u_input.a.xww)), Struct_5(-global0.b.x, !global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(901f, global2.x, 687f, 531f)), vec2<f32>(-509f, global0.c), Struct_4(Struct_1(false, vec4<i32>(-2147483647i, global0.b.x, u_input.d, u_input.a.x), 2451f, global0.e, 4294967295u), global0.a, Struct_3(Struct_2(0i, Struct_1(global0.a, vec4<i32>(u_input.c.x, u_input.c.x, 26083i, 0i), global0.c, u_input.e.x, 22497u)), 24561u), Struct_1(global0.a, vec4<i32>(8795i, global0.b.x, -45233i, u_input.a.x), global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 1u, global0.e))), Struct_3(Struct_2(global0.b.x, Struct_1(false, u_input.a, global0.c, global0.e, 41944u)), ~global0.d), func_1(-u_input.c))));
    let var_1 = var_0.e.c.a.b.a;
    let var_2 = global0.b.xx;
    let var_3 = _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)))));
    global2 = var_0.c;
    var var_4 = Struct_4(var_0.e.a, all(!select(!vec4<bool>(false, false, true, var_0.b), vec4<bool>(true, true, true, true), true)), var_0.e.c, var_0.e.c.a.b);
    var var_5 = Struct_5(select(-39595i, _wgslsmith_add_i32(-14574i, u_input.d), var_4.a.a || !(false != global0.a)), !var_0.b, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-504f, -1492f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-737f, var_0.c.x)) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 25u)])), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global0.d, 23774u), 25u)]))), var_0.c.xx, Struct_4(var_4.c.a.b, var_0.e.d.a, Struct_3(Struct_2(-2147483647i | var_0.e.d.b.x, func_1(var_4.a.b.xxz)), ~0u), var_0.e.d));
    var var_6 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(var_5.e.d.d | 24288u))), -2147483647i, _wgslsmith_mod_vec4_u32((u_input.b << (vec4<u32>(1u, var_0.e.c.a.b.d, var_5.e.d.d, var_0.e.c.b) % vec4<u32>(32u))) | reverseBits(u_input.b), ~vec4<u32>(58955u, 22448u, 1u, ~var_4.a.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.c.wxw))));
}

