struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(-1i, i32(-2147483648), 28540i), vec3<i32>(-23999i, -22843i, 1i), vec3<i32>(4185i, -1i, -1i), vec3<i32>(5077i, 16002i, 0i), vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(-18538i, -1i, 41361i), vec3<i32>(-26300i, 15523i, -6417i), vec3<i32>(23302i, 41651i, -34361i));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: array<f32, 21> = array<f32, 21>(712f, -1338f, -412f, -900f, 250f, -1498f, 616f, 1153f, -1640f, 1504f, 1355f, -278f, 111f, 1000f, 964f, 1089f, 1274f, 1415f, -481f, -1000f, 1561f);

var<private> global3: vec2<f32>;

var<private> global4: Struct_3;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = !(!any(!vec4<bool>(global1.x, false, global1.x, true)));
    var var_1 = select(!select(vec4<bool>(false, all(vec4<bool>(false, global4.a.x, false, true)), global4.b.d & global1.x, true), !select(vec4<bool>(global4.a.x, true, global1.x, global1.x), vec4<bool>(global4.b.a, true, global1.x, false), vec4<bool>(false, false, global4.b.d, false)), !vec4<bool>(true, global4.b.d, false, true)), select(select(!vec4<bool>(false, false, global4.b.d, global4.a.x), vec4<bool>(global4.b.e.x > global4.b.e.x, false, global4.a.x && global4.a.x, false), vec4<bool>(global4.b.a, false, global3.x >= global2[_wgslsmith_index_u32(global4.b.e.x, 21u)], false)), !(!select(vec4<bool>(global1.x, global4.c.a.d, true, global4.b.a), vec4<bool>(global4.a.x, true, global1.x, false), global4.a.x)), !(global4.c.a.d | true)), vec4<bool>(all(global1.wxz), !any(vec2<bool>(false, true)) & (global4.c.a.c <= (arg_0.x >> (global4.b.e.x % 32u))), true, all(!vec3<bool>(global1.x, global4.c.a.a, false))));
    global2 = array<f32, 21>();
    global2 = array<f32, 21>();
    var var_2 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4.c.a.e.x >> (global4.c.a.e.x % 32u), 21u)])))), _wgslsmith_mult_i32(max(global4.b.c, u_input.a), 1i), any(select(vec4<bool>(true, true, true, true), select(!vec4<bool>(false, var_1.x, var_1.x, false), select(vec4<bool>(true, global4.a.x, var_1.x, global4.b.d), vec4<bool>(false, global4.b.a, global1.x, false), vec4<bool>(false, false, global4.a.x, true)), true), !var_1.x | true)), global4.c.a.e);
    return 1043f;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    global2 = array<f32, 21>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(17324i, 0i, 15390i, 17939i), vec4<i32>(u_input.a, -1i, arg_1.c, u_input.a)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, global4.e.x, -2147483647i), vec4<i32>(u_input.a, 2147483647i, -1i, 0i))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(min(-761f, -2182f))) + _wgslsmith_f_op_f32(func_3(-vec4<i32>(global4.b.c, 2147483647i, 0i, -53624i)))), global3.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4.b.e.x, 21u)]))))), global4.c.a.b)), _wgslsmith_f_op_f32(-global4.b.b));
    global0 = array<vec3<i32>, 8>();
    global0 = array<vec3<i32>, 8>();
    global2 = array<f32, 21>();
    return arg_1.d;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    global4 = arg_2;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(214f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 + -1408f))), false)) * _wgslsmith_div_f32(610f, _wgslsmith_f_op_f32(-1415f - _wgslsmith_f_op_f32(-arg_2.c.a.b)))));
    var var_1 = (global0[_wgslsmith_index_u32(37782u, 8u)] | vec3<i32>(_wgslsmith_mod_i32(global4.e.x << (4294967295u % 32u), -arg_2.b.c), arg_2.b.c, u_input.a)) & _wgslsmith_div_vec3_i32(countOneBits(abs(global4.e)), ~abs(reverseBits(global0[_wgslsmith_index_u32(4294967295u, 8u)])));
    var var_2 = Struct_3(select(select(global1.xyy, vec3<bool>(true, false, any(vec4<bool>(global1.x, arg_2.b.a, false, false))), arg_2.c.a.e.x < 1u), !select(!global4.a, vec3<bool>(true, arg_2.c.a.d, true), global4.a), !(!select(vec3<bool>(true, false, arg_0), global4.a, global1.x))), Struct_1(any(global1.wz), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(483f)) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(119853u, 21u)] * global2[_wgslsmith_index_u32(37831u, 21u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0)))), ~min(max(global4.d, -6863i), 34070i), arg_2.a.x, vec3<u32>(arg_2.c.a.e.x, 1u, 0u)), global4.c, abs(u_input.a), vec3<i32>(global4.c.b.x, max(1i, -abs(global4.b.c)), _wgslsmith_mod_i32(abs(_wgslsmith_sub_i32(-5909i, var_1.x)), var_1.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(var_0)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 21u)] + _wgslsmith_div_f32(-484f, global4.b.b))), global2[_wgslsmith_index_u32(2212u, 21u)]));
    return var_2.c.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_4(arg_0, vec3<bool>(any(global1.zzx), global1.x, !(!select(global1.x, false, false))));
    let var_1 = global4.c.a.a;
    let var_2 = -2147483647i;
    var var_3 = ~(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, firstLeadingBit(36156u), _wgslsmith_dot_vec3_u32(vec3<u32>(56318u, 42599u, global4.b.e.x), vec3<u32>(0u, 1u, 30151u)), global4.c.a.e.x), ~vec4<u32>(4294967295u, 1u, 0u, 32675u)) << (vec4<u32>(~22956u, _wgslsmith_add_u32(firstTrailingBit(43170u), 4294967295u), 0u, ~reverseBits(arg_0.a.e.x)) % vec4<u32>(32u)));
    let var_4 = ~abs(vec4<i32>(min(var_0.a.b.x, global4.b.c), _wgslsmith_mod_i32(global4.c.a.c, global4.e.x), -2147483647i, u_input.a)) & _wgslsmith_mod_vec4_i32(select(~abs(vec4<i32>(global4.b.c, -1547i, global4.d, -2147483647i)), -vec4<i32>(arg_0.a.c, 21432i, -2147483647i, var_2), false), ~vec4<i32>(var_2, i32(-1i) * -1i, _wgslsmith_div_i32(u_input.a, arg_1.c), 23038i));
    return global4.c;
}

fn func_1() -> u32 {
    global2 = array<f32, 21>();
    let var_0 = func_5(Struct_2(global4.c.a, min(vec3<i32>(abs(-2147483647i), max(global4.b.c, u_input.a), 1i | u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global4.c.a.e, abs(vec3<u32>(82674u, 0u, 17893u))), 8u)])), func_4(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1563f))))), Struct_3(vec3<bool>(func_2(4294967295u, global4.b, vec4<f32>(global4.b.b, global3.x, global4.c.a.b, 492f)), global4.c.a.d, 0u == global4.b.e.x), global4.c.a, Struct_2(Struct_1(true, global4.b.b, -2451i, global4.a.x, vec3<u32>(4294967295u, 1u, global4.b.e.x)), vec3<i32>(global4.d, 61905i, -2147483647i)), u_input.a, (global0[_wgslsmith_index_u32(35404u, 8u)] >> (global4.c.a.e % vec3<u32>(32u))) ^ -global4.c.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c.a.b, -585f, global2[_wgslsmith_index_u32(global4.c.a.e.x, 21u)], global3.x) * vec4<f32>(global3.x, 206f, 215f, 988f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-953f, global3.x, global3.x, global2[_wgslsmith_index_u32(12561u, 21u)]) - vec4<f32>(192f, global2[_wgslsmith_index_u32(1u, 21u)], -766f, -1132f)), !vec4<bool>(true, global4.a.x, global1.x, false)))) * vec4<f32>(_wgslsmith_f_op_f32(1103f * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global4.b.e.x, 21u)] + 1520f)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~global4.c.a.e.x, ~12349u), 21u)], global2[_wgslsmith_index_u32(min(~global4.c.a.e.x, _wgslsmith_add_u32(4294967295u, global4.b.e.x)), 21u)], _wgslsmith_f_op_f32(round(global4.b.b)))));
    var var_1 = select(!select(!(!vec3<bool>(global1.x, true, true)), !global1.zxx, global4.a), select(!select(vec3<bool>(false, var_0.a.a, global1.x), global1.www, var_0.a.a), vec3<bool>(!(u_input.a < var_0.b.x), !global4.c.a.a, false), (_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(global4.c.a.e.x, 8u)], global0[_wgslsmith_index_u32(63391u, 8u)]) | global4.c.b.x) < 2147483647i), true);
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-543f, -1659f), vec2<f32>(-985f, 1102f), true)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -543f) + vec2<f32>(global4.b.b, var_0.a.b)))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)), global4.b.b)));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.b)) - -822f) - global3.x))));
    return global4.b.e.x >> (max(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.b.e.x, var_0.a.e.x), vec2<u32>(global4.c.a.e.x, 35313u))), ~101688u) % 32u);
}

fn func_6(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global4.b.e.x, 21u)], global4.c.a.b, arg_1, -1383f), vec4<f32>(arg_0, -380f, -1290f, -580f)) * vec4<f32>(858f, global4.c.a.b, global2[_wgslsmith_index_u32(global4.c.a.e.x, 21u)], -2676f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -586f), -1021f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(386f, -249f, -344f, global3.x) * vec4<f32>(global2[_wgslsmith_index_u32(global4.b.e.x, 21u)], 1473f, -1406f, -1860f)), vec4<f32>(1077f, 1000f, global2[_wgslsmith_index_u32(1u, 21u)], -616f))), vec4<f32>(_wgslsmith_f_op_f32(-812f * -1177f), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(global4.c.a.e.x, 21u)])), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global4.b.e.x, 21u)], arg_0), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4.b.e.x, 21u)])))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global4.c.a.b)))))));
    global0 = array<vec3<i32>, 8>();
    var var_2 = global4.c;
    let var_3 = Struct_4(func_5(global4.c, var_2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(594f)), _wgslsmith_f_op_f32(step(arg_0, arg_0)), _wgslsmith_f_op_f32(var_2.a.b * var_2.a.b), _wgslsmith_f_op_f32(-global4.b.b)))), vec3<bool>(true, global4.a.x, !(!global1.x)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global4.c.a.e.x, global4.c.a.e.x & 0u, 18898u, ~global4.c.a.e.x), _wgslsmith_mult_vec4_u32(min(vec4<u32>(32776u, 18289u, 30301u, global4.b.e.x), vec4<u32>(27957u, 1u, global4.c.a.e.x, global4.b.e.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(global4.b.e.x, 4294967295u, global4.c.a.e.x, global4.b.e.x), vec4<u32>(60409u, global4.c.a.e.x, global4.b.e.x, 0u)))));
    var_0 = vec4<u32>(var_0.x, 49363u ^ func_6(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(1u, 21u)])), global2[_wgslsmith_index_u32(~func_1(), 21u)]), func_4(false, _wgslsmith_f_op_f32(f32(-1f) * -940f), Struct_3(vec3<bool>(true && global1.x, all(vec2<bool>(global4.c.a.d, global1.x)), true), func_4(global1.x, -1000f, Struct_3(vec3<bool>(global4.c.a.d, true, false), Struct_1(global1.x, global2[_wgslsmith_index_u32(global4.b.e.x, 21u)], u_input.a, global1.x, var_0.yxx), Struct_2(global4.c.a, vec3<i32>(24996i, 33859i, -1i)), global4.e.x, vec3<i32>(637i, global4.b.c, -1i))), global4.c, -36060i, vec3<i32>(max(68250i, -20318i), -global4.c.a.c, u_input.a))).e.x, 30945u);
    let var_1 = ~(~(~abs(firstLeadingBit(global4.c.a.e))));
    global0 = array<vec3<i32>, 8>();
    var_0 = vec4<u32>(~var_0.x | ~51461u, var_1.x, 4294967295u, global4.c.a.e.x);
    var var_2 = ((_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.a, global4.d), select(vec2<i32>(-2147483647i, global4.b.c), vec2<i32>(global4.e.x, u_input.a), global4.b.a), countOneBits(vec2<i32>(-26243i, -4155i))) << (~_wgslsmith_add_vec2_u32(var_1.zx, var_0.xw) % vec2<u32>(32u))) & ~(vec2<i32>(-1i) * -vec2<i32>(12955i, global4.e.x))) >> ((_wgslsmith_clamp_vec2_u32(var_0.zz, global4.c.a.e.zx, vec2<u32>(_wgslsmith_sub_u32(var_1.x, 28623u), global4.c.a.e.x)) | var_1.yz) % vec2<u32>(32u));
    global0 = array<vec3<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-global4.c.b.x, abs(2147483647i), _wgslsmith_clamp_i32(global4.c.a.c, var_2.x, global4.b.c)), global0[_wgslsmith_index_u32(0u, 8u)] & select(global4.c.b, global0[_wgslsmith_index_u32(1u, 8u)], false)), firstLeadingBit(var_2.x)), _wgslsmith_sub_vec2_u32(var_0.yz, ~vec2<u32>(~0u, 0u)), -348f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.x, 21u)] + global3.x), true)), 565f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -808f))));
}

