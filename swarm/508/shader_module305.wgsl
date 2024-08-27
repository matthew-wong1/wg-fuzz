struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> i32 {
    global0 = Struct_4(vec4<f32>(-1458f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a.x)), -970f, _wgslsmith_f_op_f32(arg_0.a.x - global0.c.a.x)), Struct_1(false, _wgslsmith_f_op_f32(floor(1000f)), ~(~u_input.b)), global0.c);
    let var_0 = global0.b;
    var var_1 = u_input.c;
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(sign(global0.a)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b, -351f, _wgslsmith_f_op_f32(-882f + global0.c.a.x), _wgslsmith_f_op_f32(round(-769f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-507f, global0.c.a.x, -810f, -800f), global0.a))))))), Struct_1(select(!any(vec4<bool>(var_0.a, global0.b.a, global0.b.a, global0.b.a)), false, any(select(vec4<bool>(global0.b.a, false, global0.b.a, global0.b.a), vec4<bool>(global0.b.a, false, false, var_0.a), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b.b * 1039f)))), _wgslsmith_mult_vec2_u32(abs(var_0.c), global0.c.c)), arg_0);
    let var_2 = 2147483647i;
    return _wgslsmith_clamp_i32(-(var_2 << (global0.c.b.x % 32u)) >> (var_0.c.x % 32u), min(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -22431i, var_2, 1i), vec4<i32>(-1i, -2147483647i, u_input.a.x, 26682i)), ~1i), 31697i) & u_input.a.x;
}

fn func_2() -> Struct_3 {
    var var_0 = all(vec4<bool>(!(func_3(Struct_3(vec3<f32>(global0.c.a.x, 1000f, global0.a.x), vec2<u32>(global0.c.c.x, global0.b.c.x), vec2<u32>(1u, 17269u))) < _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), u_input.a)), !(!all(vec4<bool>(false, global0.b.a, global0.b.a, false))), true, !global0.b.a));
    let var_1 = -1834f;
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(floor(global0.a)), Struct_1(true, var_1, vec2<u32>(firstLeadingBit(u_input.d.x), 11514u & _wgslsmith_mod_u32(u_input.d.x, 0u))), Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.a.x, -302f, 1000f) - _wgslsmith_f_op_vec3_f32(sign(global0.c.a))))), ~(global0.b.c | global0.b.c), vec2<u32>(u_input.d.x, 4294967295u)));
    var_0 = global0.b.a;
    let var_2 = firstTrailingBit(vec3<u32>(1u, select(u_input.b.x, ~0u, !(0u < u_input.b.x)), global0.c.b.x & (107251u << (_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) % 32u))));
    return Struct_3(global0.a.wwy, vec2<u32>(global0.c.c.x & select(_wgslsmith_add_u32(u_input.d.x, 0u), u_input.b.x, false), var_2.x), vec2<u32>(global0.b.c.x, reverseBits(~(global0.c.c.x | var_2.x))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-324f, global0.a.x, global0.b.b, -970f) - global0.a))) - vec4<f32>(840f, _wgslsmith_f_op_f32(-arg_0.a.x), 1f, 2462f)), Struct_1(all(vec2<bool>(global0.b.a, true)), _wgslsmith_f_op_f32(trunc(global0.c.a.x)), ~u_input.b), func_2());
    let var_0 = arg_0.b;
    global0 = Struct_4(vec4<f32>(1114f, 1103f, _wgslsmith_f_op_f32(ceil(-1231f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), global0.b, func_2());
    global0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - 1000f) * -759f), _wgslsmith_f_op_f32(-global0.c.a.x), 672f, -262f), global0.b, arg_0);
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(sign(global0.a)), global0.b, func_2());
    return Struct_1(!(any(vec4<bool>(global0.b.a, false, false, global0.b.a)) && true), _wgslsmith_div_f32(-554f, arg_0.a.x), ~(~vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(28177u, 1u, u_input.b.x, 4294967295u), vec4<u32>(1u, 1u, 5046u, 7201u)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: bool) -> u32 {
    let var_0 = global0.b;
    global0 = arg_2;
    let var_1 = _wgslsmith_clamp_vec2_u32(arg_2.c.c, vec2<u32>(1u, var_0.c.x), u_input.d.xz) << (countOneBits(_wgslsmith_sub_vec2_u32(min(vec2<u32>(arg_1.c.x, arg_2.b.c.x), vec2<u32>(60965u, 4294967295u)), global0.c.b) & vec2<u32>(~4294967295u, 53444u)) % vec2<u32>(32u));
    var var_2 = ~_wgslsmith_mod_i32(-47879i, _wgslsmith_mod_i32(u_input.c, max(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.c), vec3<i32>(7410i, -22415i, u_input.a.x)), _wgslsmith_div_i32(2147483647i, -57949i))));
    let var_3 = false;
    return 1u | global0.c.c.x;
}

fn func_6(arg_0: bool, arg_1: u32) -> Struct_4 {
    global0 = Struct_4(global0.a, global0.b, global0.c);
    return Struct_4(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(global0.c.a.x)), _wgslsmith_f_op_f32(-493f + global0.b.b), _wgslsmith_f_op_f32(max(global0.a.x, global0.a.x)), global0.b.b), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(433f, -272f, global0.c.a.x, 877f))), select(!vec4<bool>(arg_0, global0.b.a, true, false), select(vec4<bool>(global0.b.a, arg_0, true, arg_0), vec4<bool>(arg_0, false, arg_0, global0.b.a), false), select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, global0.b.a, arg_0, true)))))), func_4(Struct_3(_wgslsmith_f_op_vec3_f32(-global0.c.a), ~_wgslsmith_sub_vec2_u32(u_input.d.yz, vec2<u32>(4294967295u, 0u)), ~(~vec2<u32>(18807u, global0.c.b.x)))), func_2());
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_2 {
    global0 = func_6(true & global0.b.a, func_5(~vec4<u32>(arg_2.a.x, 1u, arg_2.b.c.x, abs(arg_2.b.c.x)), func_4(func_2()), Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.b, arg_2.b.b, -1197f, arg_2.b.b))), Struct_1(arg_2.b.a, _wgslsmith_f_op_f32(-323f - 1173f), reverseBits(vec2<u32>(global0.c.c.x, u_input.b.x))), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(147f, arg_2.b.b, arg_2.b.b) + global0.a.xwy), vec2<u32>(0u, 1u), vec2<u32>(u_input.b.x, u_input.d.x) >> (vec2<u32>(71262u, 49842u) % vec2<u32>(32u)))), !global0.b.a));
    var var_0 = !arg_2.b.a;
    var var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(458f * arg_2.b.b), _wgslsmith_f_op_f32(f32(-1f) * -1179f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-643f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * -706f) - -1386f)), global0.a.x), arg_2.b, func_6(false, global0.b.c.x).c);
    var var_2 = var_1.c;
    var var_3 = func_6(func_4(var_1.c).a, 24980u);
    return Struct_2(~_wgslsmith_mult_vec3_u32(vec3<u32>(global0.c.c.x, arg_2.a.x, var_2.c.x), vec3<u32>(var_2.b.x, 1u, 4294967295u) ^ select(vec3<u32>(var_1.c.b.x, 1u, 0u), vec3<u32>(arg_2.a.x, 0u, global0.b.c.x), var_1.b.a)), func_6((u_input.a.x < 2147483647i) == !any(vec2<bool>(var_1.b.a, true)), ~var_1.b.c.x).b);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = vec4<i32>(firstLeadingBit(countOneBits(u_input.a.x)) ^ -1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-1758i, u_input.a.x, u_input.c), u_input.a.x, u_input.c, firstLeadingBit(-64187i)), firstTrailingBit(vec4<i32>(-2147483647i, u_input.c, u_input.a.x, 1i))), u_input.c), max(u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-17082i, u_input.a.x, 26417i), vec3<i32>(u_input.a.x, u_input.c, 0i)), reverseBits(vec3<i32>(23474i, 2147483647i, u_input.c)))) ^ ~u_input.a.x, func_3(global0.c));
    let var_1 = var_0.yyy ^ abs(-vec3<i32>(-1i, -1i, 20995i) | var_0.zzz);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) * _wgslsmith_f_op_vec4_f32(global0.a - global0.a)) * vec4<f32>(global0.b.b, _wgslsmith_f_op_f32(global0.c.a.x - 1254f), _wgslsmith_f_op_f32(abs(981f)), _wgslsmith_f_op_f32(f32(-1f) * -472f))))), Struct_1(false, arg_0.b.b, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.xx, vec2<u32>(4294967295u, arg_3.x)), ~global0.b.c), vec2<u32>(~4346u, global0.b.c.x))), global0.c);
    let var_3 = vec3<bool>(func_2().a.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.b)))), arg_1.b <= 242f, -1684f > _wgslsmith_f_op_f32(-func_6(var_2.b.a, countOneBits(0u)).c.a.x));
    var var_4 = arg_0.b.a;
    return func_1(~vec2<i32>(-u_input.c, var_1.x), u_input.a, Struct_2(vec3<u32>(arg_1.c.x, arg_1.c.x, countOneBits(~4294967295u)), func_1(u_input.a, vec2<i32>(var_1.x, var_0.x), Struct_2(vec3<u32>(70609u, arg_0.a.x, u_input.b.x), global0.b)).b));
}

fn func_8(arg_0: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(global0.a.yxz));
    let var_1 = vec3<i32>(~(-1i), u_input.c, max(_wgslsmith_add_i32(-1490i, (i32(-1i) * -28192i) | func_3(global0.c)), u_input.a.x));
    let var_2 = !select(vec2<bool>(true, global0.b.a), vec2<bool>(true, global0.b.a), all(vec2<bool>(true, true)));
    let var_3 = arg_0.b.b;
    global0 = Struct_4(global0.a, func_6(true, ~_wgslsmith_clamp_u32(~4294967295u, abs(u_input.d.x), global0.b.c.x)).b, func_2());
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(1295f, 1156f, global0.a.x, global0.a.x)), _wgslsmith_f_op_vec4_f32(-global0.a), !vec4<bool>(global0.b.a, false, false, global0.b.a))), global0.a))), global0.b, func_8(func_7(func_1(vec2<i32>(2147483647i, -32031i), u_input.a, Struct_2(vec3<u32>(global0.c.c.x, global0.c.c.x, u_input.b.x), global0.b)), global0.b, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 69949u, global0.c.c.x, global0.c.b.x), vec4<u32>(global0.c.c.x, 1u, 58532u, global0.b.c.x), vec4<bool>(true, true, true, false)), select(vec4<u32>(1u, global0.c.b.x, global0.c.c.x, 75200u), vec4<u32>(30124u, global0.b.c.x, 1u, global0.c.c.x), vec4<bool>(global0.b.a, true, false, global0.b.a))), vec3<u32>(~u_input.b.x, _wgslsmith_mod_u32(u_input.d.x, u_input.b.x), firstLeadingBit(u_input.b.x)))));
    let var_0 = _wgslsmith_f_op_f32(global0.b.b - _wgslsmith_f_op_f32(sign(-506f)));
    var var_1 = select(select(!(!vec4<bool>(global0.b.a, true, true, global0.b.a)), vec4<bool>(all(select(vec2<bool>(false, global0.b.a), vec2<bool>(global0.b.a, global0.b.a), vec2<bool>(global0.b.a, true))), false, func_7(Struct_2(vec3<u32>(u_input.d.x, global0.c.b.x, 0u), Struct_1(global0.b.a, global0.a.x, vec2<u32>(u_input.b.x, 53861u))), Struct_1(global0.b.a, -1467f, vec2<u32>(global0.b.c.x, u_input.d.x)), u_input.d.x >> (1u % 32u), u_input.d).b.a, global0.b.a), select(vec4<bool>(true, true, all(vec3<bool>(false, false, true)), !global0.b.a), select(!vec4<bool>(true, global0.b.a, global0.b.a, global0.b.a), select(vec4<bool>(true, false, global0.b.a, global0.b.a), vec4<bool>(global0.b.a, global0.b.a, global0.b.a, false), vec4<bool>(global0.b.a, true, false, global0.b.a)), select(vec4<bool>(false, global0.b.a, global0.b.a, true), vec4<bool>(false, global0.b.a, true, false), vec4<bool>(global0.b.a, false, true, global0.b.a))), !vec4<bool>(true, true, global0.b.a, global0.b.a))), vec4<bool>(all(select(select(vec3<bool>(false, true, global0.b.a), vec3<bool>(global0.b.a, false, global0.b.a), false), !vec3<bool>(global0.b.a, true, global0.b.a), select(vec3<bool>(true, global0.b.a, true), vec3<bool>(false, false, true), global0.b.a))), false, !global0.b.a == (u_input.a.x == 2147483647i), global0.b.a), func_6(func_4(func_8(Struct_2(u_input.d, global0.b))).a, ~abs(func_2().c.x)).b.a);
    var var_2 = Struct_1(global0.b.a | any(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(false, 10041u).b.b * _wgslsmith_f_op_f32(global0.b.b * _wgslsmith_div_f32(var_0, -1206f))) + var_0), _wgslsmith_sub_vec2_u32(max(vec2<u32>(global0.b.c.x, 14237u), global0.b.c ^ global0.c.c), u_input.d.zx) & (_wgslsmith_div_vec2_u32(vec2<u32>(31069u, 0u), abs(vec2<u32>(83493u, global0.b.c.x))) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.d.x, global0.b.c.x), ~vec2<u32>(4294967295u, 12602u), vec2<u32>(global0.c.b.x, 1u))));
    let var_3 = global0.a;
    let var_4 = all(vec3<bool>(!var_2.a, global0.b.a, var_2.a));
    var_1 = vec4<bool>(false, true, true && (!var_1.x | true), var_2.a);
    let var_5 = _wgslsmith_f_op_f32(165f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1362f, 127f))) + _wgslsmith_f_op_f32(-func_8(Struct_2(u_input.d, Struct_1(global0.b.a, var_0, u_input.d.zz))).a.x)));
    var_1 = select(vec4<bool>(global0.b.a, var_2.a, !all(vec2<bool>(false, var_4)), true), vec4<bool>(true, var_1.x, var_4, !all(vec4<bool>(var_4, var_4, false, var_2.a)) || false), vec4<bool>(!(!var_2.a) | true, true, all(vec4<bool>(global0.b.a, true, var_2.a, false)) & (1u <= ~global0.c.c.x), var_4));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -197f);
}

