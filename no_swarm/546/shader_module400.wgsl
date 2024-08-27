struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-47074i, 16603i, i32(-2147483648));

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>) -> vec3<u32> {
    global1 = Struct_1(vec2<bool>(!global1.b.x, all(vec3<bool>(global1.b.x, false, true)) && any(!global1.a)), global1.b, 1i & ~u_input.a);
    var var_0 = Struct_1(vec2<bool>(any(select(!vec4<bool>(true, global1.b.x, global1.b.x, global1.a.x), vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), global1.b.x)), select(true, !global1.a.x, !global1.a.x && any(vec2<bool>(true, false)))), select(select(vec3<bool>(global1.b.x, !global1.a.x, global1.b.x), select(select(global1.b, global1.b, global1.b.x), vec3<bool>(global1.a.x, true, global1.b.x), global1.b.x && true), any(!vec2<bool>(global1.b.x, false))), global1.b, vec3<bool>(true, true, true)), global0.x);
    var var_1 = Struct_1(vec2<bool>(all(select(!vec4<bool>(var_0.a.x, false, global1.b.x, global1.a.x), !vec4<bool>(false, true, true, var_0.b.x), vec4<bool>(true, true, true, true))), any(vec3<bool>(false, true, 75074u < u_input.d.x))), var_0.b, -_wgslsmith_sub_i32(~_wgslsmith_div_i32(0i, global1.c), -1i));
    var var_2 = Struct_1(vec2<bool>(false, countOneBits(~u_input.d.x) > u_input.d.x), select(select(!global1.b, vec3<bool>(true, true, any(vec3<bool>(var_1.b.x, global1.a.x, true))), vec3<bool>(any(var_0.b.yx), any(vec3<bool>(false, var_0.a.x, var_0.a.x)), -1012f > arg_0.x)), select(select(!vec3<bool>(false, global1.a.x, global1.a.x), select(vec3<bool>(false, false, true), var_0.b, var_0.a.x), !global1.b), !select(var_1.b, vec3<bool>(true, var_0.a.x, true), false), global1.a.x), true), abs(~(-29115i)));
    return vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(~4294967295u, u_input.d.x), abs(u_input.d.x)), 0u, u_input.d.x & _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(123400u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, 43092u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: bool) -> f32 {
    var var_0 = select(global1.b, global1.b, !vec3<bool>(true, 24569u >= arg_0.x, any(!vec3<bool>(true, global1.b.x, true))));
    let var_1 = ~(~(~arg_1.x));
    global1 = Struct_1(!(!(!(!var_0.zy))), global1.b, _wgslsmith_add_i32(_wgslsmith_div_i32(1i, -5530i), -u_input.a));
    global0 = ~(vec3<i32>(-5826i, 1i, u_input.b) & u_input.c.xwx);
    global1 = Struct_1(!(!vec2<bool>(global1.a.x, !global1.b.x)), select(!global1.b, vec3<bool>(arg_2, arg_2, !arg_2), !global1.b), global0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(837f, 252f));
}

fn func_2() -> vec3<i32> {
    let var_0 = ~16644i;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(832f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2034f, -1286f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1011f))))))), -1168f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_3(vec2<f32>(1000f, -1189f)), ~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), any(vec2<bool>(global1.b.x, global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(285f, -1000f))))));
    global0 = vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0, -global0.x, -global1.c, _wgslsmith_add_i32(u_input.b, -2147483647i)), reverseBits(firstLeadingBit(select(u_input.c, vec4<i32>(-19589i, global1.c, global1.c, -2147483647i), true)))), 27262i ^ (_wgslsmith_mult_i32(2147483647i, -var_0) | -2147483647i), _wgslsmith_sub_i32(-_wgslsmith_mult_i32(-1i, global1.c), ~25730i));
    var var_2 = 23816u;
    return min(vec3<i32>(~(~(0i << (u_input.d.x % 32u))), -1i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, u_input.a, global0.x, u_input.b), u_input.c), ~(~vec4<i32>(var_0, 14654i, 1i, global0.x)))), ~(-((u_input.c.xxz >> (vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x) % vec3<u32>(32u))) | vec3<i32>(global0.x, -4254i, global1.c))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global1 = Struct_1(global1.b.zx, vec3<bool>(false, select(false, arg_1 || arg_0.a.x, any(arg_0.b.zy)) && false, all(!global1.b.xx)), _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 1i, 0i, -18204i), u_input.c)));
    global0 = func_2() ^ vec3<i32>(2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 19393i, 28939i), max(vec3<i32>(-2147483647i, global1.c, 0i), u_input.c.xyz)), _wgslsmith_dot_vec4_i32(vec4<i32>(~global0.x, global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), u_input.c.ww), 0i), vec4<i32>(firstLeadingBit(2147483647i), _wgslsmith_add_i32(u_input.b, 2147483647i), global1.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-68470i, 15611i), vec2<i32>(u_input.b, 0i)))));
    global0 = _wgslsmith_mult_vec3_i32(~select(u_input.c.yyx, u_input.c.wyx, select(!vec3<bool>(true, false, arg_0.b.x), !vec3<bool>(arg_1, arg_0.a.x, arg_1), true)), vec3<i32>(select(u_input.a << (~97510u % 32u), ~(~7233i), any(vec3<bool>(false, false, true))), abs(-(global0.x >> (65207u % 32u))), -20308i));
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-786f * -2083f);
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-724f, 764f, 607f) - vec3<f32>(-1907f, -136f, -2029f)))))));
    var var_1 = -u_input.c;
    let var_2 = func_1(func_1(arg_1, !all(!vec3<bool>(arg_0, false, false))), _wgslsmith_dot_vec2_u32(~firstTrailingBit(u_input.d), ~u_input.d) >= _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(69766u, u_input.d.x) << (~1u % 32u)));
    var var_3 = select(arg_2.b.yx, !func_1(Struct_1(arg_1.a, !vec3<bool>(true, var_2.b.x, arg_0), ~0i), select(true, any(vec4<bool>(global1.b.x, true, true, true)), arg_2.a.x)).a, true);
    var var_4 = vec4<i32>(-(~u_input.b), global0.x, 1i, global1.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -956f)))) * var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(func_5(!select(global1.b.x, false, false), Struct_1(vec2<bool>(global1.b.x, global1.a.x), global1.b, global1.c), func_1(Struct_1(global1.a, vec3<bool>(global1.a.x, global1.b.x, global1.b.x), -16963i), true), _wgslsmith_dot_vec2_u32(min(u_input.d, vec2<u32>(u_input.d.x, u_input.d.x)), u_input.d))))), 294f);
    var_0 = -38465i << (~u_input.d.x % 32u);
    global1 = func_1(Struct_1(select(vec2<bool>(global1.b.x | global1.b.x, !global1.b.x), !select(global1.b.xx, vec2<bool>(false, global1.b.x), global1.a.x), vec2<bool>(any(global1.b), true)), global1.b, u_input.b), global1.b.x);
    global0 = countOneBits(firstLeadingBit(vec3<i32>(func_1(func_1(Struct_1(global1.a, global1.b, 2147483647i), global1.a.x), all(global1.b)).c, _wgslsmith_mult_i32(global1.c, 2147483647i), 2326i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_1, 1514f, _wgslsmith_f_op_f32(func_5(all(vec4<bool>(global1.b.x, true, false, global1.a.x)), func_1(Struct_1(vec2<bool>(global1.b.x, true), global1.b, -12249i), global1.b.x), func_1(func_1(Struct_1(vec2<bool>(global1.b.x, global1.b.x), vec3<bool>(global1.b.x, global1.a.x, global1.a.x), -1i), false), false), ~(u_input.d.x << (0u % 32u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(275f, var_1)), _wgslsmith_div_f32(1023f, var_1))))), func_3(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1)), -190f)).yy, max(~(~u_input.c.wz), max(vec2<i32>(u_input.a, u_input.b) << (~vec2<u32>(u_input.d.x, 0u) % vec2<u32>(32u)), min(u_input.c.xw << (u_input.d % vec2<u32>(32u)), vec2<i32>(global0.x, 26564i)))), vec4<i32>(u_input.c.x, ~_wgslsmith_div_i32(1i, ~global1.c), abs(global0.x), ~0i), ~(~u_input.d.x));
}

