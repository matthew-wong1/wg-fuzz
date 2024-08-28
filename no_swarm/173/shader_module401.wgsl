struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(13102u, vec4<bool>(true, true, true, false), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec2<bool>(false, true), 57621u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = -(~24266i & (-5592i << (_wgslsmith_mult_u32(32596u, arg_0.c.x) % 32u)));
    let var_1 = Struct_2(arg_0, arg_0);
    var var_2 = ~(var_0 & u_input.b);
    let var_3 = u_input.b;
    var var_4 = _wgslsmith_f_op_f32(1297f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1789f)), -1657f)))));
    return arg_0.c.zw;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2) -> vec2<bool> {
    global0 = arg_0;
    let var_0 = 54698u << (~_wgslsmith_dot_vec2_u32(select(arg_0.c.yx, func_3(arg_0), !arg_0.d), _wgslsmith_mult_vec2_u32(vec2<u32>(23877u, global0.e), vec2<u32>(1u, 36778u)) << (abs(global0.c.zw) % vec2<u32>(32u))) % 32u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1034f) - 359f);
    let var_2 = func_3(arg_0).x >> (min(0u, firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_0.c.yy, vec2<u32>(arg_0.a, 39881u)) | (global0.c.x ^ u_input.a))) % 32u);
    var var_3 = vec4<u32>(~1u, arg_2.b.c.x, arg_0.c.x, 1u);
    return arg_2.a.b.zz;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(abs(u_input.b), arg_1.b, arg_1.b), -1i), reverseBits(~firstLeadingBit(vec2<i32>(u_input.b, u_input.b))) >> ((_wgslsmith_sub_vec2_u32(~arg_0.a.c.zw, global0.c.zx) & ~global0.c.xz) % vec2<u32>(32u)));
    let var_1 = (abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.e, global0.c.x), vec2<u32>(16371u, 18465u)), 1u, u_input.c | arg_0.a.c.x, 4294967295u)) ^ _wgslsmith_sub_vec4_u32(firstLeadingBit(arg_0.b.c) >> ((arg_0.b.c << (vec4<u32>(arg_0.b.c.x, 13294u, 0u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_0.b.c)) ^ _wgslsmith_add_vec4_u32(~global0.c, ~arg_0.b.c);
    global0 = arg_0.a;
    global0 = Struct_1(~func_3(Struct_1(var_1.x, select(arg_0.b.b, vec4<bool>(true, arg_0.b.b.x, arg_1.a.x, arg_0.b.b.x), arg_0.a.b), max(vec4<u32>(arg_0.a.a, 1u, 6186u, global0.a), vec4<u32>(0u, 17031u, 24731u, global0.c.x)), vec2<bool>(true, true), var_1.x)).x, vec4<bool>(!func_2(arg_0.b, vec2<i32>(-4303i, arg_1.b) << (vec2<u32>(var_1.x, u_input.a) % vec2<u32>(32u)), Struct_2(arg_0.a, Struct_1(global0.e, vec4<bool>(true, arg_1.a.x, true, true), arg_0.a.c, arg_0.b.d, 4294967295u))).x, any(global0.b.zzw), true, false), vec4<u32>(21634u, 82259u, func_3(arg_0.b).x, 1818u), func_2(arg_0.a, -vec2<i32>(9362i, arg_1.b), Struct_2(arg_0.a, arg_0.b)), 12847u);
    var var_2 = arg_1;
    return arg_0.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> vec2<bool> {
    let var_0 = select(vec4<i32>(~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, -4320i, -1i), vec4<i32>(u_input.b, -24736i, -1i, u_input.b))), _wgslsmith_div_i32(u_input.b, 1i), -(~reverseBits(u_input.b)), _wgslsmith_dot_vec2_i32(reverseBits(~vec2<i32>(35416i, u_input.b)), ~_wgslsmith_add_vec2_i32(vec2<i32>(1752i, u_input.b), vec2<i32>(1i, 2147483647i)))), ~firstLeadingBit(~vec4<i32>(u_input.b, u_input.b, 7376i, u_input.b)), global0.b);
    global0 = func_4(Struct_2(Struct_1(0u, global0.b, _wgslsmith_add_vec4_u32(~global0.c, ~global0.c), !func_2(Struct_1(global0.e, vec4<bool>(global0.d.x, true, arg_1, false), global0.c, vec2<bool>(false, arg_0.x), u_input.a), var_0.xy, Struct_2(Struct_1(global0.c.x, vec4<bool>(true, true, true, arg_0.x), global0.c, vec2<bool>(false, arg_0.x), 0u), Struct_1(24995u, global0.b, vec4<u32>(global0.c.x, 1u, global0.a, u_input.a), global0.b.xy, 35457u))), global0.c.x), Struct_1(u_input.c, !select(vec4<bool>(true, global0.d.x, true, global0.d.x), vec4<bool>(arg_0.x, false, false, true), global0.b.x), vec4<u32>(0u, u_input.a, 26579u, global0.e) | global0.c, vec2<bool>(true && arg_1, func_2(Struct_1(17559u, global0.b, vec4<u32>(u_input.a, global0.e, u_input.a, u_input.a), vec2<bool>(false, arg_0.x), u_input.c), var_0.yz, Struct_2(Struct_1(u_input.c, global0.b, global0.c, arg_0, 1u), Struct_1(global0.c.x, vec4<bool>(false, global0.d.x, arg_1, arg_1), vec4<u32>(1u, 109019u, 0u, u_input.c), vec2<bool>(arg_1, true), global0.e))).x), max(8090u ^ u_input.a, ~30112u))), Struct_3(!select(vec2<bool>(false, global0.d.x), select(arg_0, global0.b.wy, arg_0.x), func_2(Struct_1(4294967295u, global0.b, global0.c, vec2<bool>(arg_1, false), 4294967295u), vec2<i32>(u_input.b, -2147483647i), Struct_2(Struct_1(1u, global0.b, vec4<u32>(1u, 1u, 0u, global0.c.x), vec2<bool>(false, arg_0.x), 4294967295u), Struct_1(81602u, vec4<bool>(arg_1, true, false, global0.b.x), global0.c, arg_0, 1u)))), _wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(u_input.b, -22015i ^ u_input.b, -23340i ^ u_input.b))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_u32(u_input.a, 1u, _wgslsmith_mod_u32(global0.e, 1u)), global0.b, firstTrailingBit(vec4<u32>(1u, u_input.a, u_input.c, global0.e) | global0.c) ^ vec4<u32>(4294967295u, ~global0.a, global0.e, 4294967295u), select(vec2<bool>(true, global0.e < global0.c.x), arg_0, !arg_0), firstTrailingBit(_wgslsmith_div_u32(0u & u_input.c, ~4294967295u))), func_4(Struct_2(Struct_1(1u, global0.b, vec4<u32>(6112u, u_input.a, 4294967295u, global0.e) & vec4<u32>(u_input.a, 95919u, 24530u, 4294967295u), vec2<bool>(false, arg_1), 1u), Struct_1(0u, !vec4<bool>(global0.d.x, true, false, false), global0.c << (global0.c % vec4<u32>(32u)), arg_0, func_4(Struct_2(Struct_1(89856u, global0.b, vec4<u32>(1u, 2178u, global0.a, 23212u), global0.d, 4294967295u), Struct_1(u_input.a, vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<u32>(global0.a, global0.e, 20178u, u_input.a), vec2<bool>(arg_1, false), global0.c.x)), Struct_3(arg_0, u_input.b)).c.x)), Struct_3(vec2<bool>(true & arg_0.x, true), min(1i, var_0.x) >> (global0.c.x % 32u))));
    var var_2 = _wgslsmith_div_vec2_u32(~(global0.c.wy | _wgslsmith_clamp_vec2_u32(global0.c.yx, func_3(var_1.b), vec2<u32>(0u, 1u))), select(~global0.c.xy & global0.c.xz, max(vec2<u32>(~var_1.a.a, 57343u), abs(var_1.b.c.xw)), func_2(var_1.a, -vec2<i32>(-18159i, var_0.x), Struct_2(Struct_1(4294967295u, global0.b, var_1.b.c, vec2<bool>(true, false), 4294967295u), func_4(Struct_2(var_1.b, Struct_1(u_input.c, global0.b, vec4<u32>(u_input.a, global0.c.x, global0.e, var_1.b.a), var_1.b.d, 4294967295u)), Struct_3(var_1.a.d, 2147483647i)))).x));
    let var_3 = -331f;
    return select(var_1.b.d, func_4(Struct_2(func_4(var_1, Struct_3(vec2<bool>(global0.d.x, false), -20074i)), func_4(var_1, Struct_3(var_1.b.d, u_input.b))), Struct_3(vec2<bool>(true, true), u_input.b)).b.wy, !(!all(func_4(var_1, Struct_3(arg_0, 0i)).d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(global0.d, global0.d.x), 1i);
    let var_1 = ~_wgslsmith_dot_vec4_i32(countOneBits(min(min(vec4<i32>(u_input.b, 2147483647i, u_input.b, -31750i), vec4<i32>(18263i, var_0.b, u_input.b, u_input.b)), vec4<i32>(-11938i, u_input.b, 44228i, -28063i) & vec4<i32>(2147483647i, var_0.b, u_input.b, 2147483647i))), ~(~(-vec4<i32>(-1i, var_0.b, 1i, var_0.b))));
    global0 = func_4(Struct_2(Struct_1(min(u_input.c ^ u_input.c, abs(4294967295u)), !global0.b, min(vec4<u32>(10265u, u_input.c, global0.e, u_input.a), ~vec4<u32>(u_input.c, 0u, global0.e, global0.e)), select(global0.b.wx, vec2<bool>(global0.b.x, var_0.a.x), select(global0.b.yw, global0.d, global0.d)), ~select(40730u, global0.c.x, true)), Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(29887u, u_input.c, 0u, u_input.a), global0.c | global0.c), func_4(Struct_2(Struct_1(13160u, global0.b, global0.c, vec2<bool>(false, global0.d.x), 107166u), Struct_1(64264u, vec4<bool>(false, true, false, var_0.a.x), global0.c, global0.b.zx, global0.a)), Struct_3(global0.d, -3154i)).b, ~(~vec4<u32>(4294967295u, global0.c.x, 7812u, global0.c.x)), vec2<bool>(all(vec2<bool>(false, true)), var_0.a.x), global0.a)), Struct_3(!vec2<bool>(true, any(vec3<bool>(var_0.a.x, true, true))), countOneBits(72597i)));
    let var_2 = true;
    var var_3 = global0.c.zy;
    global0 = func_4(Struct_2(func_4(Struct_2(func_4(Struct_2(Struct_1(global0.e, vec4<bool>(true, false, var_2, true), global0.c, global0.b.zw, 0u), Struct_1(global0.e, vec4<bool>(true, var_2, global0.b.x, true), global0.c, vec2<bool>(global0.b.x, var_2), 4294967295u)), Struct_3(vec2<bool>(false, true), 0i)), func_4(Struct_2(Struct_1(var_3.x, vec4<bool>(false, true, global0.d.x, false), vec4<u32>(9403u, global0.c.x, 4294967295u, u_input.a), var_0.a, 8224u), Struct_1(32011u, global0.b, vec4<u32>(47322u, u_input.a, 1u, 4294967295u), vec2<bool>(global0.d.x, var_2), 4294967295u)), Struct_3(vec2<bool>(var_2, global0.b.x), 2147483647i))), Struct_3(select(vec2<bool>(true, var_0.a.x), var_0.a, vec2<bool>(global0.b.x, var_0.a.x)), -13299i)), Struct_1(select(countOneBits(u_input.c), reverseBits(4294967295u), var_2), select(global0.b, vec4<bool>(false, var_0.a.x, global0.d.x, var_0.a.x), global0.b), global0.c, !select(var_0.a, vec2<bool>(var_0.a.x, var_0.a.x), var_0.a), ~countOneBits(0u))), Struct_3(var_0.a, -u_input.b));
    var_3 = ~(~global0.c.yw);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec2<f32>(789f, _wgslsmith_div_f32(1423f, -901f)));
}

