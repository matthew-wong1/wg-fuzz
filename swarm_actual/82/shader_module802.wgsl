struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(1000f, 0u, Struct_1(29861u), Struct_1(4294967295u), Struct_1(30917u)), Struct_2(1142f, 34795u, Struct_1(4294967295u), Struct_1(0u), Struct_1(4294967295u)), Struct_2(1056f, 87737u, Struct_1(1u), Struct_1(24681u), Struct_1(4294967295u)), Struct_2(1136f, 0u, Struct_1(75089u), Struct_1(1u), Struct_1(1u)), Struct_2(705f, 0u, Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(1u)), Struct_2(1000f, 4294967295u, Struct_1(22719u), Struct_1(56788u), Struct_1(3135u)), Struct_2(583f, 8272u, Struct_1(39286u), Struct_1(47878u), Struct_1(24367u)), Struct_2(-1217f, 0u, Struct_1(4294967295u), Struct_1(9914u), Struct_1(0u)), Struct_2(1179f, 38992u, Struct_1(9383u), Struct_1(1u), Struct_1(4294967295u)), Struct_2(937f, 23471u, Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(1u)), Struct_2(-188f, 4294967295u, Struct_1(4294967295u), Struct_1(64296u), Struct_1(0u)), Struct_2(-742f, 1u, Struct_1(1u), Struct_1(44610u), Struct_1(1u)), Struct_2(-200f, 1u, Struct_1(4294967295u), Struct_1(0u), Struct_1(41832u)), Struct_2(-788f, 4294967295u, Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u)), Struct_2(567f, 53432u, Struct_1(0u), Struct_1(23520u), Struct_1(1u)), Struct_2(1068f, 32515u, Struct_1(1u), Struct_1(65596u), Struct_1(4294967295u)), Struct_2(-1081f, 4294967295u, Struct_1(61912u), Struct_1(60936u), Struct_1(4294967295u)), Struct_2(-461f, 4294967295u, Struct_1(0u), Struct_1(4294967295u), Struct_1(38897u)), Struct_2(-464f, 4615u, Struct_1(58891u), Struct_1(0u), Struct_1(1u)), Struct_2(1232f, 4294967295u, Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(92819u)), Struct_2(1597f, 4294967295u, Struct_1(31493u), Struct_1(3664u), Struct_1(1u)), Struct_2(-1546f, 4294967295u, Struct_1(1u), Struct_1(0u), Struct_1(0u)), Struct_2(-152f, 96516u, Struct_1(0u), Struct_1(4294967295u), Struct_1(35514u)), Struct_2(709f, 101095u, Struct_1(26487u), Struct_1(18134u), Struct_1(0u)), Struct_2(1154f, 58451u, Struct_1(0u), Struct_1(4294967295u), Struct_1(1u)), Struct_2(-131f, 0u, Struct_1(1u), Struct_1(17557u), Struct_1(111404u)), Struct_2(1022f, 75708u, Struct_1(1u), Struct_1(1u), Struct_1(8034u)), Struct_2(-321f, 133337u, Struct_1(0u), Struct_1(34088u), Struct_1(60591u)), Struct_2(-2361f, 1u, Struct_1(62966u), Struct_1(1u), Struct_1(19157u)));

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, 2147483647i, -1i, 0i);

var<private> global4: array<vec4<f32>, 19>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec3<bool>) -> vec2<bool> {
    global4 = array<vec4<f32>, 19>();
    global0 = !(!select(vec4<bool>(any(arg_1), false, any(vec2<bool>(arg_3.x, arg_3.x)), arg_1.x), select(vec4<bool>(true, global0.x, true, false), vec4<bool>(true, arg_3.x, true, arg_3.x), !global0.x), reverseBits(28948u) >= (arg_0.b ^ arg_0.d.a)));
    var var_0 = global2[_wgslsmith_index_u32(u_input.b ^ firstTrailingBit(firstTrailingBit(~(~arg_0.d.a))), 29u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.x)))), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -136f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2 - vec2<f32>(786f, arg_0.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, arg_0.a))), !select(vec2<bool>(arg_1.x, global0.x), global0.zx, arg_1.x)))));
    let var_2 = ~vec4<i32>(global3.x, 14212i, -30234i, -((global3.x | global3.x) << (arg_0.b % 32u)));
    return vec2<bool>(all(!vec2<bool>(true, all(vec4<bool>(arg_3.x, arg_3.x, arg_1.x, true)))), 4294967295u == _wgslsmith_mult_u32(var_0.e.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.c.a, arg_0.c.a, 37674u), vec4<u32>(u_input.a.x, arg_0.c.a, 0u, arg_0.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(157232u, var_0.c.a, u_input.a.x, 0u), vec4<u32>(1225u, 0u, u_input.a.x, u_input.b)))));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    global0 = select(!vec4<bool>(global0.x, true, false, !any(vec2<bool>(false, true))), !vec4<bool>(global0.x, !(global3.x <= global3.x), (2147483647i & global3.x) == ~global3.x, ~u_input.a.x < (11672u >> (1u % 32u))), !select(!select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, global0.x, true, global0.x), global0.x), !vec4<bool>(global0.x, true, true, true), all(func_3(Struct_2(-983f, u_input.b, Struct_1(50867u), global1[_wgslsmith_index_u32(arg_0.a, 32u)], global1[_wgslsmith_index_u32(4382u, 32u)]), vec2<bool>(global0.x, global0.x), vec2<f32>(2437f, 1923f), global0.xyy))));
    global0 = vec4<bool>(any(vec2<bool>(true, global0.x)), global0.x, global0.x == all(!(!vec4<bool>(false, global0.x, false, global0.x))), any(global0.zyw));
    global2 = array<Struct_2, 29>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1014f + _wgslsmith_f_op_f32(min(1123f, -1250f))), _wgslsmith_f_op_f32(f32(-1f) * -1648f))), min(1u, _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_mult_u32(arg_0.a, 21546u)), 64362u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, arg_0.a, arg_0.a), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(0u, 1u, 4294967295u, 4294967295u))))), global1[_wgslsmith_index_u32(~(u_input.b >> (abs(~28315u) % 32u)), 32u)], arg_0, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u) << (abs(u_input.a.yx) % vec2<u32>(32u)), ~u_input.a.zy)));
    let var_1 = global3.x;
    return select(vec4<bool>(!global0.x, true, any(!func_3(global2[_wgslsmith_index_u32(1u, 29u)], vec2<bool>(false, global0.x), vec2<f32>(var_0.a, 826f), global0.wzz)), func_3(global2[_wgslsmith_index_u32(u_input.b & ~var_0.e.a, 29u)], select(!global0.wy, func_3(Struct_2(var_0.a, 1u, global1[_wgslsmith_index_u32(arg_0.a, 32u)], Struct_1(var_0.d.a), Struct_1(0u)), global0.yw, vec2<f32>(1337f, -1192f), global0.ywz), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(916f, -671f) + vec2<f32>(717f, var_0.a))), vec3<bool>(global0.x, true, global3.x > -1i)).x), select(!select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, true, true, true), vec4<bool>(global0.x, false, true, global0.x)), !(!select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, true, false, global0.x), vec4<bool>(true, global0.x, true, false))), ~firstTrailingBit(global3.x) == -global3.x), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-arg_2, 35888i, _wgslsmith_mod_i32(global3.x, -2147483647i), 2147483647i)), max(-min(vec4<i32>(global3.x, -39676i, 2147483647i, arg_2), vec4<i32>(global3.x, 77580i, 1i, arg_2)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2, arg_2, 34721i, arg_2), vec4<i32>(41969i, global3.x, 7377i, 2147483647i)) | _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, global3.x, 1i, 33942i), vec4<i32>(-19844i, arg_2, -31070i, global3.x)))) << (vec4<u32>(~select(1u ^ u_input.a.x, u_input.b, arg_1.x), ((0u | u_input.b) ^ (67587u & u_input.b)) ^ 30816u, u_input.a.x, u_input.b) % vec4<u32>(32u));
    var var_1 = true;
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(~countOneBits(u_input.b) | 41697u, 29u)], global0.x, global1[_wgslsmith_index_u32(1u, 32u)]);
    var_0 = abs(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -1i, global3.x, global3.x), vec4<i32>(-2147483647i, global3.x, arg_2, 1i)), firstTrailingBit(vec4<i32>(var_0.x, arg_2, 5360i, arg_2))), vec4<i32>(reverseBits(var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, -8788i, -1i), vec4<i32>(1i, var_0.x, 604i, arg_2)), var_0.x, _wgslsmith_dot_vec3_i32(var_0.zyw, var_0.xzx)))) ^ vec4<i32>(_wgslsmith_mod_i32(abs(var_0.x | 3020i), i32(-1i) * -2147483647i), i32(-1i) * -arg_2, abs(32256i) >> (_wgslsmith_add_u32(1u, var_2.a.b) % 32u), var_0.x);
    global0 = vec4<bool>(all(vec3<bool>(true, global0.x, arg_0.x | false)) | arg_0.x, false, false, all(vec3<bool>(true, true, true)));
    return (0u << (_wgslsmith_mod_u32(58266u, _wgslsmith_clamp_u32(~4294967295u, var_2.a.c.a, u_input.a.x)) % 32u)) >> (u_input.a.x % 32u);
}

fn func_1() -> Struct_1 {
    let var_0 = ~79067u;
    global4 = array<vec4<f32>, 19>();
    var var_1 = ~vec2<i32>(global3.x, 0i);
    let var_2 = true;
    let var_3 = _wgslsmith_sub_u32(u_input.a.x, u_input.b);
    return global1[_wgslsmith_index_u32(func_4(select(vec4<bool>(all(func_2(global1[_wgslsmith_index_u32(4679u, 32u)])), !(var_2 || var_2), global0.x & any(vec3<bool>(true, true, var_2)), func_2(global1[_wgslsmith_index_u32(41276u << (var_3 % 32u), 32u)]).x), func_2(Struct_1(~u_input.b)), !var_2), global0.yyx, 1i), 32u)];
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    let var_0 = func_1();
    global4 = array<vec4<f32>, 19>();
    var var_1 = Struct_3(Struct_2(1000f, ~((var_0.a << (u_input.b % 32u)) << (4294967295u % 32u)), global1[_wgslsmith_index_u32(max(~arg_1.a, ~var_0.a | ~42957u), 32u)], Struct_1(_wgslsmith_div_u32(arg_1.a, u_input.b) | arg_1.a), func_1()), arg_0 <= 1i, Struct_1((~0u | var_0.a) << (~(u_input.a.x >> (u_input.a.x % 32u)) % 32u)));
    global0 = vec4<bool>(!var_1.b, true, var_0.a <= var_0.a, false);
    global0 = !select(!(!(!vec4<bool>(true, global0.x, true, false))), vec4<bool>(select(select(global0.x, arg_2, global0.x), arg_0 > global3.x, func_3(var_1.a, global0.xw, vec2<f32>(-267f, var_1.a.a), vec3<bool>(global0.x, true, false)).x), false, all(select(global0.yww, vec3<bool>(true, true, false), global0.wzw)), false), false && (~var_1.c.a > u_input.a.x));
    return Struct_3(Struct_2(var_1.a.a, _wgslsmith_add_u32(_wgslsmith_sub_u32(~var_0.a, _wgslsmith_add_u32(73356u, var_1.c.a)), ~u_input.a.x), Struct_1(_wgslsmith_mult_u32(u_input.b, _wgslsmith_mult_u32(1u, u_input.a.x))), var_1.a.d, var_1.c), true, func_1());
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 32>();
    let var_0 = -global3.x;
    var var_1 = 52429u;
    let var_2 = firstTrailingBit(u_input.b);
    var_1 = 65030u;
    let var_3 = true;
    global4 = array<vec4<f32>, 19>();
    let var_4 = func_5(-var_0, func_1(), false);
    global2 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.a, min(global3.x, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(~(-global3.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-75513i, -7784i, 0i, -6981i), ~vec4<i32>(1542i, var_0, -1i, -1i)), var_0 << (firstTrailingBit(0u) % 32u)), ~countOneBits(global3.zyz) << (vec3<u32>(~var_2, 1u, 1u) % vec3<u32>(32u))));
}

