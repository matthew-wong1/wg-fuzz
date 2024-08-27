struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(4294967295u, vec2<f32>(-2227f, 652f)), Struct_1(51614u, vec2<f32>(-308f, -2042f)), 7160u), Struct_2(Struct_1(49042u, vec2<f32>(-1101f, -341f)), Struct_1(5892u, vec2<f32>(449f, -1000f)), 19089u), Struct_2(Struct_1(3848u, vec2<f32>(1000f, 1219f)), Struct_1(1u, vec2<f32>(-1535f, -1000f)), 1u), Struct_2(Struct_1(2970u, vec2<f32>(-309f, 2292f)), Struct_1(44923u, vec2<f32>(1000f, -266f)), 10160u), Struct_2(Struct_1(0u, vec2<f32>(133f, 504f)), Struct_1(4080u, vec2<f32>(-1126f, -670f)), 1u), Struct_2(Struct_1(5603u, vec2<f32>(118f, -482f)), Struct_1(36014u, vec2<f32>(-317f, 2671f)), 4294967295u), Struct_2(Struct_1(1u, vec2<f32>(-1185f, -912f)), Struct_1(1u, vec2<f32>(2252f, -836f)), 1u), Struct_2(Struct_1(4294967295u, vec2<f32>(-809f, -1163f)), Struct_1(4294967295u, vec2<f32>(-2167f, -494f)), 21393u), Struct_2(Struct_1(20164u, vec2<f32>(1159f, -489f)), Struct_1(1u, vec2<f32>(2585f, -347f)), 13236u), Struct_2(Struct_1(11755u, vec2<f32>(-390f, -1266f)), Struct_1(1u, vec2<f32>(-441f, -338f)), 0u));

var<private> global2: i32;

var<private> global3: array<vec2<bool>, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> i32 {
    let var_0 = Struct_4(!arg_0.x);
    let var_1 = _wgslsmith_add_u32(0u | (49720u << (_wgslsmith_add_u32(4294967295u, u_input.d) % 32u)), firstLeadingBit(4593u)) <= ~1u;
    var var_2 = arg_3;
    var var_3 = global0.zy;
    var var_4 = arg_2.a;
    return -1i;
}

fn func_2() -> Struct_3 {
    global3 = array<vec2<bool>, 32>();
    return Struct_3(Struct_1(_wgslsmith_div_u32(global0.x, _wgslsmith_sub_u32(countOneBits(0u), _wgslsmith_add_u32(global0.x, 18396u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1717f)), _wgslsmith_f_op_f32(ceil(-790f))))), _wgslsmith_sub_vec2_u32(global0.wz, ~(~vec2<u32>(u_input.d, global0.x))), !(u_input.c <= -max(0i, 2147483647i)), vec4<i32>(-6858i, _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(23810i, u_input.b, -2147483647i, -24919i)), max(u_input.a & u_input.a, u_input.a)), func_3(vec3<bool>(all(vec3<bool>(false, true, false)), any(vec3<bool>(true, true, false)), true), Struct_1(~32712u, vec2<f32>(1417f, -1000f)), Struct_3(Struct_1(44669u, vec2<f32>(-2318f, -196f)), select(vec2<u32>(global0.x, global0.x), vec2<u32>(4294967295u, u_input.d), true), false, u_input.a ^ vec4<i32>(-45872i, u_input.b, 0i, 2147483647i)), 4294967295u), 0i));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    let var_0 = vec3<u32>(global0.x | reverseBits(42939u), u_input.d, 107707u);
    var var_1 = countOneBits(countOneBits(vec2<u32>(85330u, _wgslsmith_clamp_u32(arg_0.b.x, ~u_input.d, _wgslsmith_clamp_u32(1097u, global0.x, 6169u)))));
    global3 = array<vec2<bool>, 32>();
    var_1 = vec2<u32>(u_input.d, _wgslsmith_mod_u32(firstTrailingBit(~var_1.x) | reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a, var_1.x, 0u, 83016u), vec4<u32>(arg_0.b.x, 41237u, var_1.x, var_0.x))), 39211u));
    var_1 = vec2<u32>(_wgslsmith_clamp_u32(firstLeadingBit(~_wgslsmith_sub_u32(1u, u_input.d)), min(~(~53533u), 33215u), ~72496u & ~(33851u | arg_0.b.x)), u_input.d);
    return Struct_4(select(!arg_0.c, !(641f > arg_0.a.b.x), select(true, !arg_0.c, select(arg_0.c && arg_0.c, false, arg_0.c))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>) -> Struct_4 {
    global1 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2106f, 736f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-304f, 771f)))), !arg_0.a))) + 283f);
    global3 = array<vec2<bool>, 32>();
    global0 = vec4<u32>(arg_1.x, firstTrailingBit(min(~4294967295u, ~0u)) | ~(~1u), u_input.d, _wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(global0.x, ~(~u_input.d), firstLeadingBit(~14768u))));
    let var_1 = -u_input.a & vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(13728i, u_input.c, 2147483647i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, -1i), vec3<i32>(-14209i, 1i, u_input.b))), func_3(vec3<bool>(true, true, arg_0.a), func_2().a, func_2(), (global0.x ^ u_input.d) | _wgslsmith_mult_u32(1u, arg_1.x)), u_input.b, _wgslsmith_dot_vec4_i32(-abs(u_input.a), vec4<i32>(1i, u_input.a.x, u_input.c, -u_input.c)));
    return func_4(func_2());
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = !vec4<bool>(all(select(select(vec3<bool>(arg_0.c, arg_0.c, arg_0.c), vec3<bool>(false, arg_0.c, false), vec3<bool>(arg_0.c, arg_0.c, false)), select(vec3<bool>(arg_0.c, true, true), vec3<bool>(arg_0.c, arg_0.c, arg_0.c), vec3<bool>(false, false, false)), vec3<bool>(true, arg_0.c, true))), arg_0.c, false, false);
    let var_1 = func_5(func_4(func_2()), vec3<u32>(max(select(4294967295u, ~arg_1.a, true), _wgslsmith_mod_u32(arg_0.b.x, arg_0.b.x) << (1u % 32u)), global0.x, u_input.d));
    let var_2 = select(!select(select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_1.a, true, arg_0.c, false), vec4<bool>(false, var_0.x, arg_0.c, arg_0.c)), !vec4<bool>(true, var_0.x, arg_0.c, var_0.x), true), select(select(vec4<bool>(var_0.x, arg_0.c, false, false), vec4<bool>(arg_0.c, var_1.a, arg_0.c, true), vec4<bool>(false, arg_0.c, var_0.x, var_0.x)), !vec4<bool>(true, arg_0.c, var_0.x, arg_0.c), arg_0.c && false), vec4<bool>(func_2().c, true, select(arg_0.c, false, var_0.x), arg_0.c)), vec4<bool>(!(abs(arg_0.a.a) < abs(37374u)), !select(select(false, true, var_0.x), true, var_1.a), !var_1.a, var_0.x), arg_0.c || true);
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, -1328f, -492f) + vec3<f32>(-930f, 1026f, arg_1.b.x)) + vec3<f32>(985f, -265f, -278f)))))));
    global2 = u_input.b;
    return _wgslsmith_f_op_vec2_f32(var_3.yz * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1017f, _wgslsmith_f_op_f32(508f - _wgslsmith_f_op_f32(select(var_3.x, arg_0.a.b.x, false)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, -1000f) - vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(var_3.x + 1026f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, ~u_input.d), vec2<u32>(_wgslsmith_mult_u32(u_input.d, global0.x), ~109900u)) > global0.x);
    let var_1 = Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-923f, -1000f))) + vec2<f32>(_wgslsmith_f_op_f32(124f * -429f), _wgslsmith_f_op_f32(trunc(-992f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_3(Struct_1(u_input.d, vec2<f32>(-1170f, 1042f)), vec2<u32>(u_input.d, 92210u), var_0.a, u_input.a), Struct_1(0u, vec2<f32>(327f, -1951f))))))));
    var var_2 = !(var_0.a != var_0.a);
    let var_3 = ~var_1.a << (func_2().b.x % 32u);
    let var_4 = func_2();
    let var_5 = ~max(_wgslsmith_add_vec2_u32(countOneBits(select(vec2<u32>(1u, 4294967295u), var_4.b, global3[_wgslsmith_index_u32(4294967295u, 32u)])), vec2<u32>(0u, ~global0.x)), abs(~(vec2<u32>(var_4.b.x, 25147u) | vec2<u32>(4294967295u, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1.b + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_4.a.b.x, var_1.b.x), var_4.a.b)))))), _wgslsmith_f_op_vec2_f32(func_1(func_2(), var_1)).x, var_4.a.b.x, _wgslsmith_f_op_vec2_f32(func_1(func_2(), func_2().a)).x);
}

