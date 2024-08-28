struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2521f;

var<private> global1: array<f32, 24> = array<f32, 24>(1369f, 627f, 222f, -427f, 285f, -202f, 603f, -205f, 1262f, 169f, -237f, -1584f, -1000f, 393f, 397f, -389f, 2252f, 754f, 1108f, -1379f, -536f, 552f, -568f, -995f);

var<private> global2: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-1615i, 60862i, -3457i, i32(-2147483648)), vec4<i32>(-1i, -8308i, 26568i, -37849i), vec4<i32>(-5713i, -26436i, i32(-2147483648), -23718i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = vec4<bool>(!all(vec3<bool>(true, true, true)), true, false, any(vec4<bool>(true, true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), !all(vec2<bool>(true, false)))));
    var var_1 = Struct_1(-vec2<i32>(u_input.b, u_input.d.x), 2507f);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -867f) + 497f);
    var var_3 = Struct_1(max(firstTrailingBit(-vec2<i32>(u_input.d.x, var_1.a.x)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(var_1.a.x, 27975i)), var_1.a)) | (_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -4026i) | vec2<i32>(var_1.a.x, var_1.a.x), ~vec2<i32>(var_1.a.x, -14022i), firstTrailingBit(u_input.c)) | -vec2<i32>(u_input.c.x, -1i)), 216f);
    var var_4 = -376f <= var_1.b;
    return 1386f;
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = vec4<bool>(true, !(!all(vec2<bool>(true, true))), select(all(vec4<bool>(true, true, true, true)), false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.e, 24u)])) * _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.e, 24u)])))), true);
    var var_1 = Struct_2(Struct_1(select(_wgslsmith_mult_vec2_i32(vec2<i32>(-4314i, -27352i), vec2<i32>(arg_0.c.x, 5667i)), -vec2<i32>(arg_0.a.a.x, 21761i) & select(vec2<i32>(1i, -27148i), vec2<i32>(-65003i, arg_0.b.a.x), var_0.xy), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b * _wgslsmith_f_op_f32(441f - arg_0.a.b)))), arg_0.b, vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_0.c.x, u_input.c.x)), arg_0.a.a) << (u_input.e % 32u), _wgslsmith_dot_vec3_i32(select(arg_0.c, arg_0.c, vec3<bool>(true, var_0.x, true)), -vec3<i32>(-2147483647i, 22712i, -2147483647i)) & -2147483647i, 2147483647i));
    let var_2 = arg_0.a;
    global1 = array<f32, 24>();
    var_0 = !vec4<bool>(all(vec4<bool>(false, var_0.x, global1[_wgslsmith_index_u32(u_input.e, 24u)] != var_2.b, var_1.b.a.x >= arg_0.c.x)), false, all(!var_0.wy) | true, !(var_1.b.b < var_2.b));
    return select(var_0.yww, vec3<bool>(false, select(!all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), true, var_0.x || (0u > u_input.e)), true), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<i32>) -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(u_input.d, _wgslsmith_div_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.e, 24u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e, 24u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 24u)]))))), Struct_1(~u_input.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1585f)), _wgslsmith_f_op_f32(f32(-1f) * -1210f)) - 683f)), select(min(arg_2, arg_2 >> (~vec3<u32>(u_input.e, u_input.e, 44906u) % vec3<u32>(32u))), arg_2, vec3<bool>(true, arg_0.x, any(arg_0))));
    var var_1 = arg_0.zz;
    var var_2 = vec2<u32>(u_input.e, u_input.e) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(27324u ^ u_input.e, ~3385u, abs(u_input.e)), u_input.e), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, 73588u), vec2<u32>(0u, u_input.e)) | vec2<u32>(2476u, _wgslsmith_dot_vec2_u32(vec2<u32>(28598u, u_input.e), vec2<u32>(u_input.e, u_input.e)))) % vec2<u32>(32u));
    global2 = array<vec4<i32>, 3>();
    var var_3 = ~50497u;
    return -_wgslsmith_add_vec2_i32(firstTrailingBit(firstLeadingBit(vec2<i32>(41835i, -38894i))), var_0.a.a);
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    global2 = array<vec4<i32>, 3>();
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1231f, arg_2.b))))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(~4294967295u), 24u)])));
    return arg_2;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global1 = array<f32, 24>();
    let var_0 = _wgslsmith_sub_vec4_i32(min(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(7106u, 0u, u_input.e, 24553u) ^ vec4<u32>(0u, 16389u, u_input.e, 1u), ~vec4<u32>(u_input.e, 776u, u_input.e, 41397u)), 3u)] >> (firstLeadingBit(reverseBits(vec4<u32>(u_input.e, 23079u, u_input.e, u_input.e))) % vec4<u32>(32u)), ~vec4<i32>(min(2147483647i, 10042i), -25203i, u_input.c.x, -19317i << (1u % 32u))), min(select(_wgslsmith_mod_vec4_i32(vec4<i32>(-33239i, arg_0.a.x, u_input.c.x, -1i), vec4<i32>(u_input.a, 2147483647i, -30141i, -2147483647i)), global2[_wgslsmith_index_u32(u_input.e, 3u)] | vec4<i32>(4137i, 18766i, arg_0.a.x, 17408i), u_input.d.x == u_input.c.x) & firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 3u)]), -global2[_wgslsmith_index_u32(10723u, 3u)]));
    var var_1 = func_2(Struct_2(arg_0, func_5(~func_5(-1i, u_input.d, Struct_1(vec2<i32>(0i, arg_0.a.x), 358f)).a.x, abs(~arg_0.a), arg_0), _wgslsmith_clamp_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, var_0.x, 0i), vec3<i32>(21165i, var_0.x, -20419i)), vec3<i32>(-1i) * -vec3<i32>(var_0.x, -1i, u_input.d.x), vec3<i32>(u_input.a, 0i, -35878i) >> ((vec3<u32>(u_input.e, u_input.e, 0u) >> (vec3<u32>(u_input.e, u_input.e, u_input.e) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    var var_2 = var_0.x;
    global1 = array<f32, 24>();
    return func_5(abs(var_0.x), vec2<i32>(~var_0.x, ~abs(6928i) << (u_input.e % 32u)), arg_0);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> Struct_2 {
    global2 = array<vec4<i32>, 3>();
    let var_0 = Struct_2(arg_1, func_6(func_5(0i, func_4(func_2(Struct_2(arg_1, arg_1, vec3<i32>(arg_1.a.x, -9364i, u_input.c.x))), any(vec2<bool>(true, arg_3.x)), reverseBits(vec3<i32>(arg_1.a.x, arg_1.a.x, 0i))), arg_1)), _wgslsmith_div_vec3_i32(-max(vec3<i32>(14331i, 0i, 1i), ~vec3<i32>(-2147483647i, -12438i, -2705i)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(u_input.b, arg_1.a.x, -10732i), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.a.x, u_input.a, -12018i), vec3<i32>(arg_1.a.x, 3467i, 48280i))), ~(-vec3<i32>(u_input.d.x, 0i, -1i)))));
    var var_1 = select(_wgslsmith_div_vec2_i32(func_4(vec3<bool>(arg_3.x, arg_0.x <= 580f, all(arg_3)), !(arg_1.a.x < 2147483647i), vec3<i32>(abs(arg_1.a.x), _wgslsmith_dot_vec2_i32(arg_1.a, var_0.a.a), -40588i)), -func_4(vec3<bool>(true, true, arg_3.x), arg_3.x, var_0.c) | vec2<i32>(reverseBits(arg_1.a.x), arg_1.a.x)), arg_1.a, func_2(Struct_2(func_5(abs(arg_1.a.x), vec2<i32>(47913i, arg_1.a.x), func_5(arg_1.a.x, vec2<i32>(u_input.d.x, 14478i), arg_1)), Struct_1(vec2<i32>(arg_1.a.x, var_0.a.a.x) | var_0.c.xz, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.e, 24u)] - -1589f)), var_0.c)).zx);
    global2 = array<vec4<i32>, 3>();
    var var_2 = ~(~abs(~(~vec4<u32>(u_input.e, u_input.e, 93681u, u_input.e))));
    return Struct_2(func_5(firstTrailingBit(abs(31480i)), -var_0.b.a, Struct_1(vec2<i32>(12200i, u_input.b) >> (var_2.yw % vec2<u32>(32u)), -235f)), Struct_1(~select(_wgslsmith_mod_vec2_i32(u_input.d, var_0.a.a), firstLeadingBit(vec2<i32>(var_1.x, -2147483647i)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2, 24u)] - arg_0.x)) - -512f)), vec3<i32>(-firstLeadingBit(7944i), -1i, _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(8477u, arg_2, arg_2, 1713u), vec4<u32>(4294967295u, 22499u, u_input.e, 5347u)), firstLeadingBit(arg_2)), 3u)], reverseBits(global2[_wgslsmith_index_u32(var_2.x, 3u)] & global2[_wgslsmith_index_u32(77409u, 3u)]))));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(min(countOneBits(-vec2<i32>(24129i, u_input.d.x)), arg_0.c.yy), 472f);
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(-119f)), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(39771u, 24u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, arg_0.b.b, arg_1.b.b), vec3<f32>(109f, 1580f, arg_0.a.b), vec3<bool>(false, true, false)))))), Struct_1(func_5(-2147483647i, func_4(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), any(vec2<bool>(true, true)), arg_1.c), arg_0.b).a, var_0.b), ~u_input.e, select(select(vec3<bool>(all(vec4<bool>(true, false, true, false)), all(vec2<bool>(false, true)), true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), vec3<bool>(true, true, all(vec3<bool>(true, true, true))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), var_0.a.x >= 1i), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, false), false), vec3<bool>(true, arg_0.a.a.x < -1i, false))));
    var_0 = func_6(arg_1.b);
    let var_2 = -var_0.a.x;
    var var_3 = arg_1.a;
    return func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, arg_0.b.b, -1852f)))))), func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.b, 348f, 300f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1049f, -294f, 838f))), vec3<f32>(2029f, _wgslsmith_f_op_f32(var_0.b + 1843f), 2198f), vec3<bool>(true, true, true))), func_6(arg_0.b), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 26030u, u_input.e), vec3<u32>(0u, 36535u, u_input.e)), vec3<u32>(~1u, ~1u, ~91901u)), func_2(Struct_2(func_5(var_1.c.x, vec2<i32>(var_2, u_input.d.x), Struct_1(var_0.a, 598f)), Struct_1(var_0.a, var_0.b), abs(arg_0.c)))).a, u_input.e, func_2(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1197f, -375f, 222f) + vec3<f32>(-1127f, -1216f, 834f)) * vec3<f32>(-1056f, -617f, var_0.b)), func_5(arg_0.c.x | arg_0.a.a.x, arg_1.c.yz ^ vec2<i32>(arg_1.b.a.x, 19024i), Struct_1(arg_1.b.a, -1289f)), 1u << (u_input.e % 32u), !func_2(var_1)))).a;
}

fn func_8(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))));
    let var_1 = vec2<i32>(-1i, -44121i << (u_input.e % 32u));
    let var_2 = ~global2[_wgslsmith_index_u32(max(~1u, ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(36159u, u_input.e, 88173u, u_input.e), vec4<u32>(u_input.e, u_input.e, 1u, 1u)))), 3u)];
    global0 = 1590f;
    global1 = array<f32, 24>();
    return select(~(_wgslsmith_sub_vec3_i32(var_2.yzw, var_2.xwz ^ vec3<i32>(var_2.x, 0i, 1i)) | vec3<i32>(arg_0.a.x, arg_0.a.x, -3523i)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, var_2.x), ~select(vec3<i32>(var_1.x, -54500i, 45689i) >> (vec3<u32>(u_input.e, u_input.e, u_input.e) % vec3<u32>(32u)), reverseBits(vec3<i32>(var_2.x, var_1.x, u_input.a)), !var_0.wyw)), all(select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), !select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, true), var_0.x), false)));
}

fn func_9(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.a.b;
    let var_1 = u_input.a;
    var var_2 = u_input.e;
    var var_3 = arg_2;
    var_2 = select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e, 4294967295u), vec3<u32>(min(~arg_1.x, 4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(30074u, u_input.e), vec2<u32>(4294967295u, arg_1.x)), ~arg_1), 7295u)), 4294967295u, true);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_9(Struct_2(Struct_1(u_input.c, global1[_wgslsmith_index_u32(~u_input.e, 24u)]), Struct_1(-vec2<i32>(-6681i, u_input.b), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(countOneBits(0u), 24u)] + global1[_wgslsmith_index_u32(u_input.e >> (34103u % 32u), 24u)])), func_8(func_7(Struct_2(Struct_1(u_input.c, global1[_wgslsmith_index_u32(41177u, 24u)]), Struct_1(vec2<i32>(0i, u_input.d.x), 524f), vec3<i32>(2147483647i, -1i, u_input.a)), func_1(vec3<f32>(-184f, 1192f, -194f), Struct_1(u_input.d, -554f), 0u, vec3<bool>(false, false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-342f, -284f, global1[_wgslsmith_index_u32(u_input.e, 24u)], global1[_wgslsmith_index_u32(u_input.e, 24u)]) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.e, 24u)], global1[_wgslsmith_index_u32(u_input.e, 24u)], -747f, global1[_wgslsmith_index_u32(u_input.e, 24u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.e, 24u)], global1[_wgslsmith_index_u32(36981u, 24u)], 372f, -566f)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e, u_input.e), vec2<u32>(54479u, 18671u)), countOneBits(~u_input.e)), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(33265u, u_input.e)), vec2<u32>(4294967295u, 4844u), ~vec2<u32>(36260u, u_input.e)) << (abs(min(vec2<u32>(1u, 43890u), vec2<u32>(u_input.e, u_input.e))) % vec2<u32>(32u)), reverseBits(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.e, u_input.e)))), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 24u)], -407f, global1[_wgslsmith_index_u32(10885u, 24u)]) - vec3<f32>(1993f, -1421f, global1[_wgslsmith_index_u32(u_input.e, 24u)])))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(18187u, 24u)], global1[_wgslsmith_index_u32(132799u, 24u)], 122f), vec3<f32>(global1[_wgslsmith_index_u32(32010u, 24u)], global1[_wgslsmith_index_u32(u_input.e, 24u)], -834f), true))))), func_7(Struct_2(func_5(u_input.b, u_input.d, Struct_1(u_input.d, -209f)), Struct_1(vec2<i32>(83078i, u_input.a), global1[_wgslsmith_index_u32(u_input.e, 24u)]), vec3<i32>(-16352i, u_input.a, u_input.c.x)), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1409f, -263f, global1[_wgslsmith_index_u32(0u, 24u)]) * vec3<f32>(-762f, 2257f, global1[_wgslsmith_index_u32(1u, 24u)])), func_7(Struct_2(Struct_1(u_input.d, 111f), Struct_1(u_input.c, global1[_wgslsmith_index_u32(0u, 24u)]), vec3<i32>(-1i, u_input.a, u_input.a)), Struct_2(Struct_1(vec2<i32>(u_input.b, -2577i), -1874f), Struct_1(u_input.d, 986f), vec3<i32>(-42755i, -6742i, -43080i))), ~11854u, vec3<bool>(true, true, true))), 4294967295u, func_2(func_1(vec3<f32>(global1[_wgslsmith_index_u32(u_input.e, 24u)], -1119f, global1[_wgslsmith_index_u32(u_input.e, 24u)]), Struct_1(vec2<i32>(u_input.a, u_input.a), global1[_wgslsmith_index_u32(u_input.e, 24u)]), u_input.e, select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(53642u, -1000f);
}

