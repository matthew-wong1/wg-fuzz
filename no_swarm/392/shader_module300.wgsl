struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<i32>,
    d: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_3,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: i32 = 1401i;

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    let var_0 = vec3<u32>(global0.d, firstLeadingBit(5074u), _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 45287u), vec3<u32>(0u, arg_2.b.c, 506u), vec3<u32>(1953u, arg_2.d, u_input.a.x)), min(vec3<u32>(32361u, global0.d, 0u), vec3<u32>(1u, 1u, 36691u)) >> (vec3<u32>(36176u, 0u, 1u) % vec3<u32>(32u))) & ~(~1u));
    let var_1 = Struct_5(arg_1.b, vec2<u32>(~(~4294967295u), ~min(abs(0u), arg_2.b.e.d)), 21991u, Struct_4(arg_3.a, arg_1, Struct_3(_wgslsmith_f_op_f32(-157f + _wgslsmith_f_op_f32(floor(-1034f))), Struct_2(Struct_1(arg_2.a, arg_2.b.a.b, -829f, global0.d), -1i, ~arg_2.d, arg_3.c.b.d, arg_3.e), abs(vec2<i32>(-1i, -12188i)), arg_3.c.b.a.d << (global0.d % 32u)), 5189u, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_2.b.e.c)))), vec3<bool>(select(arg_2.b.a.b.x, arg_1.b.x, global3.x), false, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -456f) + -1000f), ~(arg_2.d >> (73092u % 32u)))));
    global1 = abs(~arg_2.c.x);
    global1 = reverseBits(-(~2147483647i));
    global3 = !select(!vec3<bool>(any(vec2<bool>(arg_1.b.x, false)), true, arg_2.b.e.b.x), select(arg_1.b, !(!arg_1.b), !arg_3.c.b.d.b.x), all(vec4<bool>(any(global0.b.xx), u_input.d >= 20149i, global0.b.x, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a)));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1981f)), global0.a)));
    let var_1 = Struct_3(global0.a, Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(-202f)), vec3<bool>(global3.x, true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.b.x, Struct_1(arg_0.x, vec3<bool>(false, false, global3.x), -496f, 42601u), Struct_3(-144f, Struct_2(Struct_1(global0.a, vec3<bool>(true, global3.x, arg_1), 1458f, 4294967295u), 0i, global0.d, Struct_1(var_0, vec3<bool>(global3.x, false, arg_1), var_0, 1u), Struct_1(-431f, global0.b, global0.c, u_input.a.x)), vec2<i32>(29636i, 1i), 4294967295u), Struct_4(vec2<f32>(var_0, global0.a), Struct_1(arg_0.x, global0.b, global0.a, global0.d), Struct_3(var_0, Struct_2(Struct_1(822f, global0.b, -364f, 38733u), u_input.e.x, 18045u, Struct_1(global0.a, vec3<bool>(false, arg_1, false), -1000f, u_input.c), Struct_1(var_0, vec3<bool>(arg_1, arg_1, false), -1403f, 0u)), u_input.e, 1u), u_input.c, Struct_1(-1565f, vec3<bool>(global0.b.x, arg_1, true), global0.a, 18191u)))), _wgslsmith_f_op_f32(-var_0)), ~global0.d ^ _wgslsmith_sub_u32(82351u, 0u)), -(11507i << (~global0.d % 32u)), _wgslsmith_add_u32(abs(firstTrailingBit(0u)), 81983u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -731f), vec3<bool>(true, all(vec2<bool>(false, global3.x)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_f_op_f32(f32(-1f) * -586f)), _wgslsmith_dot_vec2_u32(vec2<u32>(40833u, 51034u), vec2<u32>(7451u, u_input.a.x)) >> (4294967295u % 32u)), Struct_1(global0.c, vec3<bool>(global3.x, false, all(vec4<bool>(arg_1, false, false, arg_1))), arg_0.x, abs(reverseBits(u_input.c)))), -_wgslsmith_add_vec2_i32(u_input.e, ~_wgslsmith_clamp_vec2_i32(u_input.b.yz, u_input.b.zz, vec2<i32>(22222i, 54955i))), ~52804u);
    var var_2 = _wgslsmith_clamp_vec4_u32(~min(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.c, 0u, 0u)), ~(~vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.c))), countOneBits(max(~vec4<u32>(1u, var_1.d, u_input.c, global0.d) | (vec4<u32>(u_input.a.x, 4294967295u, 17067u, 1u) << (vec4<u32>(0u, var_1.d, var_1.b.e.d, var_1.b.e.d) % vec4<u32>(32u))), reverseBits(~vec4<u32>(var_1.d, u_input.a.x, global0.d, var_1.b.d.d)))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(71236u, global0.d, 54074u, global0.d)), reverseBits(vec4<u32>(u_input.a.x, u_input.c, global0.d, var_1.d))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.d, 0u, 0u, var_1.d) | (vec4<u32>(1u, u_input.c, 40270u, 4294967295u) | vec4<u32>(4294967295u, 18597u, var_1.d, 83221u)), ~(vec4<u32>(73246u, 0u, global0.d, var_1.d) << (vec4<u32>(17131u, 4294967295u, u_input.a.x, 4294967295u) % vec4<u32>(32u))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1203f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(max(var_0, arg_0.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0.xyw))), var_1.b.d.b));
    let var_4 = true;
    return var_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_3) -> i32 {
    global2 = abs(0i);
    var var_0 = Struct_5(vec3<bool>(_wgslsmith_mod_i32(i32(-1i) * -1i, ~11948i) == firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.e.x, -2147483647i, 2147483647i), vec4<i32>(1i, u_input.e.x, u_input.b.x, arg_2.c.x))), global0.b.x, !all(func_2(vec4<f32>(-1000f, -385f, 1011f, global0.c), true).b.e.b)), _wgslsmith_add_vec2_u32(~u_input.a, min(vec2<u32>(0u, 8471u), arg_0.wy) << (~vec2<u32>(global0.d, 4294967295u) % vec2<u32>(32u))) >> (u_input.a % vec2<u32>(32u)), ~global0.d, Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1792f) * vec2<f32>(arg_2.a, -372f)) - _wgslsmith_div_vec2_f32(vec2<f32>(298f, 2010f), vec2<f32>(-618f, 404f)))), arg_2.b.d, arg_2, 0u, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -105f), select(vec3<bool>(false, arg_2.b.a.b.x, arg_2.b.a.b.x), !vec3<bool>(global0.b.x, true, true), vec3<bool>(false, false, global3.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.b.a.c + -854f), _wgslsmith_f_op_f32(exp2(global0.c)), arg_2.b.d.b.x || arg_2.b.d.b.x)), ~global0.d)));
    let var_1 = _wgslsmith_f_op_f32(-var_0.d.c.a);
    let var_2 = var_0.d;
    var var_3 = var_2.e.b.xy;
    return var_0.d.c.b.b;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = min(_wgslsmith_div_vec2_i32(max(abs(reverseBits(vec2<i32>(arg_0, -16127i))), abs(vec2<i32>(-15481i, u_input.e.x) | arg_2.c)), ~vec2<i32>(_wgslsmith_sub_i32(arg_0, arg_2.b.b), arg_2.c.x << (arg_2.d % 32u))), ~countOneBits(firstLeadingBit(-u_input.e)));
    let var_1 = _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(~(~u_input.e), arg_2.c), min(firstLeadingBit(-_wgslsmith_clamp_i32(var_0.x, u_input.e.x, 0i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.e.x), -vec2<i32>(-962i, arg_0))));
    let var_2 = _wgslsmith_f_op_f32(select(-139f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(trunc(global0.c)))), -357f != arg_2.a));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(var_2, global0.a)), vec3<bool>(false, !all(vec4<bool>(global3.x, arg_2.b.a.b.x, arg_2.b.a.b.x, global0.b.x)), global0.b.x), var_2, min(1u, global0.d)), 2147483647i, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.b.e.d, ~arg_2.d, firstTrailingBit(global0.d)), ~(~vec3<u32>(global0.d, arg_2.d, 0u))), arg_2.b.a, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-464f, var_2, var_2, var_2)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a, 367f, var_2, var_2), vec4<f32>(var_2, -695f, global0.a, var_2))))), !arg_2.b.a.b.x).b.d);
    var var_4 = !global0.b.x;
    return var_3.e;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> f32 {
    var var_0 = vec2<bool>(false, true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, -1506f));
    let var_2 = Struct_2(func_5(func_4(vec4<u32>(61809u, _wgslsmith_mod_u32(arg_0.x, 0u), ~4294967295u, u_input.c << (0u % 32u)), 40872u, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1330f, 1000f, arg_1, -1315f)), global3.x)), true, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - var_1.x) - _wgslsmith_f_op_f32(arg_1 + arg_1)), func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, -489f, -393f, arg_1))), !var_0.x).b, u_input.b.yz, u_input.c)), u_input.d, max(~_wgslsmith_add_u32(global0.d, global0.d), 1u), func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 473f, var_1.x, 161f) - vec4<f32>(-335f, arg_1, global0.c, arg_1)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1302f, arg_1, var_1.x, var_1.x)))))), !(u_input.e.x == ~u_input.b.x)).b.e, func_5(u_input.e.x, true, func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, 158f, 174f, arg_1))))), true)));
    var var_3 = select(vec4<bool>(!var_2.e.b.x, any(select(vec4<bool>(var_0.x, true, false, false), select(vec4<bool>(global3.x, global3.x, true, global3.x), vec4<bool>(var_0.x, var_0.x, global0.b.x, var_0.x), vec4<bool>(global3.x, false, var_0.x, global3.x)), select(vec4<bool>(global3.x, global3.x, true, var_2.a.b.x), vec4<bool>(true, global0.b.x, var_0.x, global3.x), true))), any(vec3<bool>(!var_2.e.b.x, !var_0.x, true)), !(u_input.b.x == 1i)), vec4<bool>(any(global0.b), all(!select(vec3<bool>(var_2.a.b.x, global3.x, false), global0.b, true)), false, !func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a, 553f, 2493f, -1697f), vec4<f32>(-988f, var_1.x, arg_1, arg_1), vec4<bool>(true, false, true, false))), false & global3.x).b.e.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-718f * 324f) * var_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.d.a + var_1.x), -586f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-812f, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~global0.d) <= min(~max(u_input.a.x, global0.d), u_input.c);
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(51308u, u_input.c, global0.d)), ~vec3<u32>(global0.d, 15065u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, -1403f)))), global0.a), select(vec3<bool>(any(vec2<bool>(global3.x, var_0)), true, all(vec2<bool>(global0.b.x, var_0))), !vec3<bool>(true, true, all(vec4<bool>(global0.b.x, var_0, false, false))), select(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2195f, -1186f, global0.a, global0.a)), true).b.e.b, !vec3<bool>(var_0, false, true), all(!vec4<bool>(false, global3.x, global3.x, global3.x)))), _wgslsmith_f_op_f32(-global0.a), ~1u);
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), select(select(!select(vec3<bool>(global0.b.x, global0.b.x, true), global0.b, vec3<bool>(true, false, global0.b.x)), global0.b, global0.b), global0.b, global0.b), _wgslsmith_f_op_f32(f32(-1f) * -2319f), ~0u);
    var var_1 = func_2(vec4<f32>(global0.a, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(step(251f, global0.c))), _wgslsmith_f_op_f32(sign(global0.c))), _wgslsmith_f_op_f32(176f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(-1826i, Struct_1(global0.a, global0.b, 1026f, 1u), Struct_3(-1154f, Struct_2(Struct_1(-292f, vec3<bool>(false, true, true), global0.c, u_input.c), u_input.e.x, global0.d, Struct_1(256f, vec3<bool>(false, global0.b.x, global0.b.x), 1848f, 1u), Struct_1(1944f, global0.b, global0.a, 0u)), u_input.b.yz, u_input.c), Struct_4(vec2<f32>(609f, 687f), Struct_1(global0.a, vec3<bool>(true, global3.x, true), global0.c, global0.d), Struct_3(global0.c, Struct_2(Struct_1(global0.c, global0.b, global0.a, 0u), -6292i, u_input.c, Struct_1(286f, vec3<bool>(global0.b.x, global0.b.x, false), global0.a, global0.d), Struct_1(-1201f, vec3<bool>(global0.b.x, global0.b.x, global3.x), global0.c, u_input.a.x)), vec2<i32>(59999i, -1i), global0.d), u_input.c, Struct_1(global0.c, global0.b, global0.c, 4294967295u)))), func_5(1i, var_0, Struct_3(952f, Struct_2(Struct_1(global0.c, global0.b, global0.c, 44190u), 2147483647i, u_input.c, Struct_1(global0.a, vec3<bool>(false, global0.b.x, false), global0.a, 4294967295u), Struct_1(global0.a, global0.b, -223f, 10083u)), vec2<i32>(u_input.d, u_input.b.x), 1u)).a, false)))), any(global3.yz)).b.a;
    global3 = vec3<bool>(global3.x, true, (false | all(vec3<bool>(true, true, true))) | false);
    var var_2 = false | (any(!select(vec4<bool>(var_1.b.x, false, true, false), vec4<bool>(false, global3.x, true, false), false)) | global0.b.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(func_3(u_input.b.x >> (abs(~30624u) % 32u), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c + global0.c))), !func_5(-35887i, global3.x, Struct_3(1468f, Struct_2(Struct_1(global0.c, vec3<bool>(true, global0.b.x, false), global0.c, 3088u), u_input.b.x, global0.d, Struct_1(967f, vec3<bool>(var_0, true, true), global0.c, u_input.c), Struct_1(611f, vec3<bool>(false, var_0, var_1.b.x), -1051f, var_1.d)), u_input.b.xz, 1u)).b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(283f, 770f, global3.x)), _wgslsmith_f_op_f32(-global0.c), func_2(vec4<f32>(599f, 709f, 684f, var_1.a), var_0).b.e.b.x)), min(1u, 44021u)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c, global0.c, 1990f, 2181f), vec4<f32>(var_1.a, -1934f, -862f, 1008f)))), global3.x), Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, 1320f), vec2<f32>(global0.a, global0.a), var_0)))), func_5(_wgslsmith_mod_i32(u_input.d, 2147483647i), global0.b.x, func_2(vec4<f32>(1038f, global0.a, -1188f, var_1.a), var_0)), func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-392f, global0.a, var_1.c, 1120f))), false), 46049u, func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-631f, 2536f, 527f, var_1.a))), false).b.a))), vec3<bool>(false, false, all(select(vec4<bool>(global0.b.x, false, false, false), select(vec4<bool>(true, var_1.b.x, true, false), vec4<bool>(true, false, var_0, global3.x), vec4<bool>(true, true, global0.b.x, false)), true))), var_1.c, var_1.d & ~(_wgslsmith_div_u32(u_input.a.x, var_1.d) ^ 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(vec4<u32>(select(53938u, 0u, true), global0.d, var_1.d, _wgslsmith_add_u32(u_input.a.x, global0.d)), countOneBits(vec4<u32>(var_1.d, 73966u, 18052u, u_input.c) << (vec4<u32>(4297u, 0u, u_input.a.x, var_1.d) % vec4<u32>(32u)))), vec4<u32>((~4294967295u >> (global0.d % 32u)) << (abs(553u) % 32u), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(32702u, global0.d, global0.d), vec3<u32>(u_input.a.x, var_1.d, 22177u)), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(83741u, 36032u, 0u)), vec3<u32>(0u, 48721u, 61804u))), 1u, 42034u));
}

