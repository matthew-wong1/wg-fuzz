struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(false, -56825i, -1i), Struct_1(false, i32(-2147483648), -14177i), Struct_2(53236u, Struct_1(true, 27646i, -9633i)), vec3<u32>(4294967295u, 4294967295u, 20404u), vec4<i32>(1i, -29974i, 0i, -1i));

var<private> global1: Struct_3 = Struct_3(Struct_1(false, -17657i, 2147483647i), Struct_1(false, 0i, -37978i), Struct_2(0u, Struct_1(false, 56919i, 0i)), vec3<u32>(51225u, 15846u, 28683u), vec4<i32>(-51368i, 1i, 29113i, -20818i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: u32, arg_3: vec4<i32>) -> bool {
    let var_0 = 1f;
    let var_1 = arg_3.x;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -200f);
    var var_3 = true;
    global1 = Struct_3(global1.a, Struct_1(true, 0i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_3.x, global1.c.b.c, 1i), _wgslsmith_add_i32(global1.e.x, global0.e.x) ^ abs(-1i))), Struct_2(0u, Struct_1(any(select(vec4<bool>(true, global1.c.b.a, false, true), vec4<bool>(global1.b.a, global0.a.a, true, global0.b.a), vec4<bool>(global1.c.b.a, global1.b.a, global1.a.a, global0.a.a))), _wgslsmith_add_i32(1i, -1i), u_input.d.x)), vec3<u32>(0u, global1.c.a, arg_2), -(~arg_1));
    return true;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = ~countOneBits(1u);
    global0 = Struct_3(global1.c.b, Struct_1(func_3(global1.e, global1.e, countOneBits(arg_0), (global0.e | global1.e) >> (vec4<u32>(global1.d.x, 1u, 4294967295u, global1.d.x) % vec4<u32>(32u))), select(-54662i, 1i, all(select(vec3<bool>(true, global0.a.a, arg_3.x), vec3<bool>(arg_3.x, true, true), global1.b.a))), _wgslsmith_sub_i32(~(-28548i & u_input.d.x), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, u_input.a.x, -1i)), vec3<i32>(2147483647i, global1.e.x, 0i)))), Struct_2(51760u, Struct_1(select(true, false, !global0.a.a), global0.a.b << (min(0u, arg_0) % 32u), -2147483647i)), vec3<u32>(~firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(u_input.b, (vec4<u32>(1u, 4294967295u, 11668u, 68833u) ^ vec4<u32>(u_input.b.x, var_0, 36966u, global1.c.a)) >> (_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(4294967295u, arg_2, 1u, arg_1)) % vec4<u32>(32u))), 12317u), global0.e);
    var var_1 = global0.a;
    var var_2 = -global0.e;
    var var_3 = ~16713u;
    return Struct_3(Struct_1(!arg_3.x, -28149i, global1.c.b.b), global1.b, global1.c, vec3<u32>(~(~(global1.d.x >> (13342u % 32u))), select(0u & ~arg_1, ~abs(arg_1), true), countOneBits(~_wgslsmith_mod_u32(arg_0, arg_0))), max(global0.e, ~global1.e));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.b;
    global1 = func_2(~1u, firstLeadingBit(6045u), min(firstTrailingBit(global0.c.a), u_input.e & 68221u), !(!vec3<bool>(global1.c.b.a, global0.c.b.a != global1.c.b.a, global1.b.a)));
    var var_1 = vec4<i32>(min(countOneBits(-1i), 33620i), global0.a.c >> (27831u % 32u), _wgslsmith_div_i32(-(u_input.a.x << (global0.d.x % 32u)), _wgslsmith_dot_vec2_i32(-global0.e.wy, vec2<i32>(2147483647i, 8461i))), abs(21790i)) ^ abs(vec4<i32>(firstLeadingBit(~global0.c.b.b), ~_wgslsmith_dot_vec4_i32(global1.e, global1.e), global1.b.c, countOneBits(u_input.d.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-876f))) - _wgslsmith_div_f32(-824f, _wgslsmith_f_op_f32(round(-511f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1511f)), _wgslsmith_f_op_f32(2612f - -597f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(321f, -161f)) * _wgslsmith_f_op_f32(-142f + -1906f)))), _wgslsmith_f_op_f32(min(1f, 716f)), _wgslsmith_f_op_f32(-310f + -768f));
    let var_3 = Struct_3(global0.b, global0.b, func_2(global0.c.a, ~_wgslsmith_add_u32(min(4294967295u, global0.c.a), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.d.x, 12605u, global0.c.a), vec3<u32>(global1.c.a, 30296u, 43420u))), abs(reverseBits(0u)), select(select(vec3<bool>(global1.b.a, global0.b.a, true), select(vec3<bool>(global1.b.a, global0.a.a, global0.c.b.a), vec3<bool>(global1.c.b.a, false, false), vec3<bool>(global0.c.b.a, false, true)), !vec3<bool>(global1.b.a, global0.a.a, global0.c.b.a)), !select(vec3<bool>(global0.a.a, true, global1.c.b.a), vec3<bool>(true, false, true), global0.b.a), global1.c.b.a)).c, vec3<u32>(9639u, global1.d.x, _wgslsmith_mult_u32(~_wgslsmith_div_u32(24953u, global0.c.a), global0.c.a)), -select(~global0.e ^ vec4<i32>(1i, -2147483647i, -1i, -1i), _wgslsmith_add_vec4_i32(global1.e, _wgslsmith_mult_vec4_i32(global1.e, vec4<i32>(u_input.a.x, -61418i, 1i, 57560i))), select(vec4<bool>(global0.c.b.a, global0.a.a, false, global1.b.a), !vec4<bool>(true, global1.b.a, global1.b.a, true), vec4<bool>(global0.a.a, true, global1.c.b.a, global1.c.b.a))));
    return global0.c.b;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_2) -> vec4<f32> {
    global0 = Struct_3(global0.b, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-593f)), _wgslsmith_f_op_f32(-1213f * 1000f), select(false, true, true))) == 1f, firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.e.x), u_input.a.yz), _wgslsmith_add_i32(-2147483647i, 2147483647i))), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(arg_3.b.c, 0i)), vec2<i32>(global1.b.c | 0i, arg_0.b.c))), global0.c, vec3<u32>(0u, 50113u, _wgslsmith_div_u32(0u, arg_0.a)), global1.e);
    var var_0 = Struct_2(~_wgslsmith_mod_u32(28678u, ~(~42630u)), func_1());
    let var_1 = u_input.a.x;
    global1 = func_2(0u, select(abs(76584u) >> (global1.d.x % 32u), global0.c.a, !any(select(vec3<bool>(true, var_0.b.a, true), vec3<bool>(false, arg_1, false), vec3<bool>(false, global1.c.b.a, true)))), _wgslsmith_add_u32(firstTrailingBit(arg_0.a), func_2(countOneBits(22444u), 4294967295u, select(select(var_0.a, 1u, true), ~global1.c.a, arg_3.b.a | global1.b.a), !select(vec3<bool>(true, arg_3.b.a, true), vec3<bool>(false, var_0.b.a, global0.a.a), var_0.b.a)).c.a), select(select(vec3<bool>(arg_1, true, any(vec2<bool>(false, arg_1))), select(select(vec3<bool>(false, true, true), vec3<bool>(arg_0.b.a, true, true), arg_1), select(vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, arg_0.b.a, global0.c.b.a), vec3<bool>(false, arg_1, true)), select(vec3<bool>(true, true, global0.a.a), vec3<bool>(false, true, true), vec3<bool>(arg_1, arg_1, arg_1))), (arg_0.a < arg_3.a) & global0.a.a), vec3<bool>(arg_0.b.a, (var_0.b.c | 0i) > _wgslsmith_clamp_i32(-42678i, arg_0.b.c, arg_3.b.c), !(!arg_0.b.a)), var_0.b.a));
    global0 = func_2(~func_2(global1.c.a, u_input.c, ~(~1u), vec3<bool>(func_2(1u, 1u, 4294967295u, vec3<bool>(arg_0.b.a, arg_1, true)).a.a, any(vec4<bool>(arg_0.b.a, arg_0.b.a, false, arg_0.b.a)), !arg_3.b.a)).d.x, _wgslsmith_mod_u32(57793u, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a, arg_2.x), u_input.b.zy)), ~firstTrailingBit(1u), !select(select(!vec3<bool>(false, false, arg_3.b.a), !vec3<bool>(global0.a.a, global0.c.b.a, arg_1), arg_1), !vec3<bool>(false, global0.a.a, false), select(select(vec3<bool>(true, false, global1.b.a), vec3<bool>(arg_3.b.a, var_0.b.a, arg_1), false), vec3<bool>(true, true, true), !vec3<bool>(true, true, arg_1))));
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -512f), -517f), -918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * 489f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-270f))))), _wgslsmith_div_f32(-1000f, -354f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_2(_wgslsmith_mult_u32(u_input.e, global0.c.a), func_1()), false, u_input.b.xw, Struct_2(4294967295u, func_2(_wgslsmith_mod_u32(~61647u, _wgslsmith_mod_u32(global1.d.x, 1u)), _wgslsmith_clamp_u32(1u, global0.c.a, 0u) & ~9538u, _wgslsmith_dot_vec4_u32(min(u_input.b, vec4<u32>(u_input.c, u_input.e, 59102u, global0.c.a)), vec4<u32>(global1.d.x, 92234u, 18856u, global1.c.a) & u_input.b), vec3<bool>(true | global1.b.a, true, select(global0.b.a, false, false))).a)));
    var var_1 = vec4<bool>(global1.a.a && global0.b.a, global1.a.a, all(vec2<bool>(global0.d.x >= 31630u, true)) & (func_2(min(1u, 45940u), ~global0.c.a, u_input.e, vec3<bool>(global0.c.b.a, global1.c.b.a, global0.a.a)).c.a <= ~(~0u)), global0.b.a);
    let var_2 = abs(-_wgslsmith_sub_vec3_i32(vec3<i32>(-global0.e.x, u_input.d.x, 1i), vec3<i32>(0i, -13286i, i32(-1i) * -70116i)));
    global1 = func_2(6662u, ~func_2(~(global1.c.a ^ 37448u), 0u, ~max(global1.c.a, global1.c.a), var_1.zxz).c.a, global1.d.x, !var_1.xzx);
    var var_3 = select(~func_2(~firstLeadingBit(74138u), global1.d.x, _wgslsmith_add_u32(global1.c.a, 4294967295u) | ~0u, select(vec3<bool>(global0.c.b.a, false, var_1.x), select(vec3<bool>(global1.a.a, var_1.x, true), vec3<bool>(false, global0.b.a, true), var_1.wzx), !vec3<bool>(global0.c.b.a, global1.c.b.a, true))).e.wx, ~(global1.e.wz << (global1.d.zy % vec2<u32>(32u))), all(vec4<bool>(global0.a.a, any(select(vec2<bool>(var_1.x, true), vec2<bool>(false, true), var_1.xz)), false, !global0.c.b.a)));
    let var_4 = global1.c;
    var_1 = !(!vec4<bool>(true == global0.b.a, false, !var_1.x, false));
    let var_5 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(floor(var_0.x)));
    var var_6 = Struct_3(func_2(~(~global0.c.a) | global0.d.x, func_2(firstLeadingBit(global1.c.a), _wgslsmith_mod_u32(var_4.a, 1u), 1u, vec3<bool>(var_4.b.a, func_1().a, all(vec2<bool>(true, global1.a.a)))).d.x, 1u, vec3<bool>(all(var_1.yxw), func_3(global1.e, global0.e, _wgslsmith_mod_u32(1u, global0.d.x), global0.e), true)).a, func_1(), global1.c, _wgslsmith_clamp_vec3_u32(u_input.b.yyw, global1.d, vec3<u32>(~min(12507u, global0.c.a), 27527u, 57486u)), ~global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~countOneBits(4294967295u))), var_0);
}

