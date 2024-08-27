struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<vec2<i32>, 13>;

var<private> global2: Struct_1 = Struct_1(false, -1304f, i32(-2147483648), 0i);

var<private> global3: u32 = 0u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global1 = array<vec2<i32>, 13>();
    let var_0 = Struct_1((i32(-1i) * -(global0[_wgslsmith_index_u32(u_input.a.x, 4u)] >> (0u % 32u))) != global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a.x, 58322u, u_input.d.x), vec4<u32>(47010u, 20729u, 46357u, u_input.a.x)), firstLeadingBit(u_input.a.x), ~4294967295u), 4u)], _wgslsmith_f_op_f32(sign(arg_0.b)), ~(abs(arg_1.c) << (~_wgslsmith_mult_u32(8514u, u_input.d.x) % 32u)), -arg_1.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b + -1439f), _wgslsmith_f_op_f32(step(1302f, -1000f)), select(arg_0.a, var_0.a, true))), global2.b, global2.b, -1000f) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.b)) * -1537f), _wgslsmith_div_f32(-314f, arg_1.b), arg_1.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_f_op_f32(min(327f, -752f))))))));
    var var_2 = !vec4<bool>(arg_1.a, arg_1.a, all(vec3<bool>(!var_0.a, var_0.b >= -540f, !global2.a)), true);
    var_2 = vec4<bool>(var_2.x, true, true, _wgslsmith_sub_i32(min(global2.d, global2.c) | -global0[_wgslsmith_index_u32(u_input.d.x, 4u)], ~(-15870i)) > -1i);
    return var_2.yy;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global2.b))))))));
    let var_1 = _wgslsmith_f_op_f32(sign(arg_0.b));
    var var_2 = vec2<bool>(false, (-firstLeadingBit(global0[_wgslsmith_index_u32(13611u, 4u)]) <= 0i) != false);
    global2 = Struct_1(all(vec3<bool>(u_input.c.x >= global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.d.x), vec2<u32>(106455u, 4294967295u)), 4u)], !(16355u == u_input.d.x), any(vec2<bool>(true, var_2.x)))), -909f, -1992i, -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], -global2.d));
    let var_3 = func_3(arg_0, arg_0);
    return var_2.x && func_3(Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(step(var_1, -267f))), 40659i, select(-2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], var_3.x) >> (~u_input.d.x % 32u)), arg_0).x;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(select(select(vec3<bool>(any(arg_2.e), arg_3.a, select(false, true, true)), !arg_2.c, !(arg_2.e.x && true)), vec3<bool>(true, !global2.a == arg_2.e.x, arg_3.a), any(!arg_2.e.yw)), select(select(vec3<bool>(arg_0.b > -456f, arg_2.a.d.a && arg_3.a, func_2(Struct_1(true, arg_0.b, -20088i, global2.c), vec3<i32>(0i, u_input.c.x, -1i), vec3<i32>(arg_2.a.d.c, 35753i, 2147483647i))), vec3<bool>(arg_3.a, arg_3.a, !arg_2.b.a), select(select(arg_2.c, arg_2.c, global2.a), vec3<bool>(true, false, false), vec3<bool>(false, false, global2.a))), vec3<bool>(false, true, true || !global2.a), arg_3.a), select(!vec3<bool>(true, true, global2.a), !vec3<bool>(arg_2.b.a, func_3(arg_3, Struct_1(true, -110f, 1i, global2.d)).x, arg_2.e.x), arg_2.c));
    global3 = 55112u;
    let var_1 = Struct_2(_wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(arg_3.c, 0i, u_input.c.x, 0i) | vec4<i32>(arg_3.c, global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(52915u, 4u)], global2.c)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -11884i, global0[_wgslsmith_index_u32(0u, 4u)], arg_0.c), vec4<i32>(arg_3.c, global2.d, -23026i, u_input.e)) ^ (vec4<i32>(15337i, 0i, global2.c, arg_3.c) | min(vec4<i32>(24054i, -1i, 2147483647i, -1i), vec4<i32>(global2.c, arg_3.c, arg_0.c, -4163i)))), Struct_1(arg_3.a, _wgslsmith_f_op_f32(abs(484f)), 86923i, -22369i), global2.a, arg_2.a.b, -1485f);
    let var_2 = arg_2;
    var var_3 = 1205f;
    return Struct_1(!var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.b))), _wgslsmith_f_op_f32(sign(global2.b)), !(!var_1.d.a))), 1i, firstTrailingBit(arg_0.d));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.b, global2.b, arg_2.b.b, arg_1))) * vec4<f32>(arg_0.b, arg_0.b, -1315f, -668f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(443f, 136f, global2.b, _wgslsmith_f_op_f32(-1639f * arg_0.b)), vec4<f32>(_wgslsmith_f_op_f32(arg_1 - arg_2.e), _wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(191f * arg_2.b.b), -335f)))));
    let var_1 = ~25314u;
    let var_2 = var_0.x;
    var var_3 = arg_3;
    var var_4 = Struct_2((_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_3.x, u_input.c.x, 2147483647i), u_input.c.x) >> (53887u % 32u)) ^ ~(~(-63115i)), arg_2.b, (i32(-1i) * -1i) > (~0i << (u_input.a.x % 32u)), Struct_1(false, 1877f, -1i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(33655u, 4u)], arg_2.d.c)), arg_0.b);
    return Struct_3(arg_2, arg_0, vec3<bool>(true, 0u > (var_1 >> (u_input.d.x % 32u)), func_2(func_1(arg_0, -416f, Struct_3(arg_2, Struct_1(true, -1292f, arg_3.x, 0i), vec3<bool>(var_4.c, true, var_4.d.a), arg_3.x, vec4<bool>(false, true, true, true)), Struct_1(arg_2.b.a, global2.b, global2.d, 1i)), -max(arg_3.ywy, vec3<i32>(var_4.d.d, arg_0.d, global0[_wgslsmith_index_u32(23793u, 4u)])), vec3<i32>(-2147483647i, 28972i, global2.c) >> (u_input.a % vec3<u32>(32u)))), 1i, select(vec4<bool>(~arg_3.x < ~2147483647i, !func_2(Struct_1(true, 160f, u_input.b, -2147483647i), arg_3.xyz, var_3.xwy), func_1(Struct_1(var_4.d.a, arg_1, 44737i, arg_3.x), arg_0.b, Struct_3(arg_2, Struct_1(var_4.d.a, arg_0.b, -59307i, 1i), vec3<bool>(var_4.d.a, false, global2.a), arg_0.d, vec4<bool>(true, arg_2.b.a, true, false)), func_1(arg_0, 1979f, Struct_3(Struct_2(-1i, arg_0, arg_0.a, Struct_1(false, global2.b, arg_2.d.c, arg_0.c), -202f), arg_0, vec3<bool>(var_4.b.a, true, var_4.c), arg_2.a, vec4<bool>(var_4.c, false, var_4.b.a, true)), var_4.b)).a, func_1(arg_2.d, var_0.x, Struct_3(Struct_2(arg_0.c, var_4.d, true, arg_0, var_4.b.b), Struct_1(false, var_0.x, arg_3.x, arg_3.x), vec3<bool>(global2.a, global2.a, true), 6784i, vec4<bool>(true, true, global2.a, false)), func_1(Struct_1(false, 1000f, 0i, arg_3.x), -138f, Struct_3(arg_2, Struct_1(false, 949f, 1i, arg_3.x), vec3<bool>(arg_2.d.a, false, true), arg_0.c, vec4<bool>(var_4.d.a, true, true, var_4.d.a)), Struct_1(global2.a, var_4.b.b, -73382i, arg_0.c))).a), !vec4<bool>(arg_2.b.a && true, global2.a, false, arg_2.b.a), false));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i & arg_0.b.c, 0i, arg_0.a.d.d, -2147483647i), _wgslsmith_sub_vec4_i32(-vec4<i32>(arg_0.a.d.d, 71528i, 1i, -2147483647i), ~vec4<i32>(arg_3.a, arg_2.b.c, global2.c, arg_2.b.d))), -12118i, ~arg_2.a);
    global0 = array<i32, 4>();
    var var_1 = arg_0.e;
    global1 = array<vec2<i32>, 13>();
    let var_2 = func_4(func_4(func_1(func_1(func_1(arg_0.b, 576f, Struct_3(Struct_2(18990i, Struct_1(false, arg_3.d.b, var_0.x, arg_2.a), false, arg_3.d, 206f), arg_0.b, vec3<bool>(global2.a, false, false), 24911i, vec4<bool>(arg_2.c, false, arg_2.c, arg_2.d.a)), Struct_1(true, arg_0.b.b, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], -1i)), _wgslsmith_f_op_f32(arg_3.e - arg_3.e), arg_0, Struct_1(arg_2.d.a, 739f, arg_0.b.c, -1i)), _wgslsmith_f_op_f32(arg_0.a.d.b * -1280f), func_4(Struct_1(var_1.x, arg_0.b.b, 26255i, arg_0.d), arg_2.d.b, Struct_2(global0[_wgslsmith_index_u32(u_input.d.x, 4u)], arg_2.d, var_1.x, Struct_1(global2.a, 126f, global0[_wgslsmith_index_u32(4294967295u, 4u)], 18140i), -1079f), select(vec4<i32>(global0[_wgslsmith_index_u32(36955u, 4u)], 2147483647i, arg_2.a, 3084i), vec4<i32>(-2147483647i, 1i, -39875i, 119356i), global2.a)), func_4(arg_0.a.b, arg_0.a.b.b, arg_0.a, max(vec4<i32>(arg_2.b.c, 44589i, 0i, arg_0.b.c), vec4<i32>(-1i, u_input.e, -2142i, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]))).b), arg_2.b.b, func_4(Struct_1(func_1(Struct_1(var_1.x, global2.b, global2.d, var_0.x), 1188f, arg_0, arg_3.d).a, func_4(Struct_1(true, arg_3.b.b, -12662i, var_0.x), -326f, Struct_2(21439i, Struct_1(false, -551f, 1i, 23934i), arg_0.c.x, Struct_1(arg_0.c.x, 1677f, var_0.x, 2147483647i), arg_2.d.b), vec4<i32>(arg_3.a, global2.d, var_0.x, u_input.b)).b.b, 2147483647i, -2147483647i), -131f, func_4(arg_2.b, -675f, arg_2, vec4<i32>(1i, -2147483647i, arg_2.b.c, arg_3.d.c)).a, reverseBits(firstTrailingBit(vec4<i32>(-40466i, -36127i, 24096i, 2147483647i)))).a, max(vec4<i32>(2147483647i, -812i, 1i, arg_0.b.d), vec4<i32>(i32(-1i) * -21800i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 4u)], -53463i), vec2<i32>(-226i, var_0.x)), ~arg_2.d.c))).b, _wgslsmith_f_op_f32(-arg_3.d.b), func_4(func_4(func_1(func_1(arg_0.b, 645f, arg_0, arg_3.d), -407f, func_4(arg_0.a.b, -465f, arg_0.a, vec4<i32>(84616i, arg_3.a, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], -2147483647i)), arg_2.b), _wgslsmith_f_op_f32(min(-936f, _wgslsmith_f_op_f32(exp2(arg_3.b.b)))), Struct_2(1i, Struct_1(true, 241f, u_input.b, global2.c), true, func_1(Struct_1(false, arg_3.d.b, 40621i, 1i), -1000f, arg_0, Struct_1(arg_2.b.a, arg_0.a.e, arg_2.a, u_input.e)), arg_3.d.b), _wgslsmith_div_vec4_i32(vec4<i32>(12522i, 6752i, -7559i, arg_2.a), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], -94701i, -38166i, global0[_wgslsmith_index_u32(1u, 4u)]))).b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(abs(global2.b))), _wgslsmith_f_op_f32(-arg_2.d.b), !(1u >= u_input.a.x))), Struct_2(firstTrailingBit(~global2.c), arg_3.d, func_1(Struct_1(arg_0.c.x, arg_1.x, arg_0.b.d, global0[_wgslsmith_index_u32(4294967295u, 4u)]), arg_3.e, Struct_3(arg_2, arg_2.d, arg_0.e.yxz, -1i, vec4<bool>(arg_2.d.a, global2.a, true, false)), arg_2.d).a, arg_3.b, _wgslsmith_f_op_f32(-1052f + arg_0.a.d.b)), reverseBits(max(~vec4<i32>(-1i, 13248i, 0i, -2147483647i), vec4<i32>(global2.d, -1221i, u_input.b, -3496i) >> (vec4<u32>(0u, 25913u, 9793u, u_input.a.x) % vec4<u32>(32u))))).a, ~(vec4<i32>(-2147483647i, global2.d, -10829i, -2147483647i) >> (vec4<u32>(u_input.a.x, 60076u, 4294967295u, u_input.d.x) % vec4<u32>(32u))) << (max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 74959u, u_input.d.x, 64249u), vec4<u32>(1u, 14216u, u_input.a.x, u_input.d.x) ^ vec4<u32>(31277u, 4294967295u, u_input.d.x, 46358u)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(21752u, u_input.a.x, u_input.a.x, u_input.d.x)) % vec4<u32>(32u)));
    return Struct_1(global2.a && true, -1242f, arg_2.a, ~(-2147483647i));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(max(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 0u), vec2<u32>(4294967295u, u_input.a.x)), min(vec2<u32>(u_input.d.x, 66175u), vec2<u32>(1533u, u_input.a.x))), u_input.d), 19974u, abs(~(~u_input.a.x)));
    let var_1 = Struct_1(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1033f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f))), arg_3.d.c, i32(-1i) * -2147483647i);
    global0 = array<i32, 4>();
    var var_2 = !select(!vec3<bool>(any(arg_1.xx), arg_3.b.b == 1027f, true), arg_1, true);
    global2 = func_5(Struct_3(arg_3, Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-968f)) - _wgslsmith_f_op_f32(floor(812f))), 1i, _wgslsmith_add_i32(-15391i, 0i)), func_4(func_5(Struct_3(Struct_2(2147483647i, var_1, arg_1.x, Struct_1(var_1.a, global2.b, 36442i, -19927i), -1000f), arg_3.d, arg_1, -2147483647i, vec4<bool>(var_2.x, false, true, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(885f, arg_2) + vec2<f32>(arg_2, -274f)), Struct_2(0i, Struct_1(global2.a, 535f, arg_0.x, arg_0.x), false, var_1, -105f), func_4(var_1, arg_3.e, arg_3, vec4<i32>(-2147483647i, -67538i, var_1.d, -20543i)).a), -1000f, Struct_2(global2.d, var_1, var_2.x, Struct_1(false, 1790f, var_1.c, 2147483647i), -124f), -abs(vec4<i32>(var_1.d, arg_0.x, var_1.c, global0[_wgslsmith_index_u32(4294967295u, 4u)]))).c, reverseBits(var_1.c), !(!(!vec4<bool>(false, false, var_1.a, false)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1380f)) + vec2<f32>(-105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1088f, global2.b, true))))), func_4(arg_3.d, _wgslsmith_f_op_f32(trunc(func_1(var_1, -107f, Struct_3(Struct_2(global2.d, arg_3.b, arg_3.c, Struct_1(true, -710f, u_input.e, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), arg_3.d.b), Struct_1(true, 606f, 0i, u_input.b), vec3<bool>(arg_3.d.a, global2.a, false), -2147483647i, vec4<bool>(true, true, arg_3.b.a, arg_3.d.a)), func_1(arg_3.d, 1809f, Struct_3(arg_3, var_1, arg_1, 0i, vec4<bool>(false, arg_1.x, arg_1.x, global2.a)), arg_3.b)).b)), func_4(Struct_1(var_2.x, 675f, var_1.d & 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.c, 60743i, -61635i), vec3<i32>(-14832i, arg_0.x, global2.c))), -1683f, func_4(arg_3.b, 500f, func_4(arg_3.b, arg_2, arg_3, vec4<i32>(36441i, 1i, arg_0.x, 2147483647i)).a, -vec4<i32>(global2.c, arg_0.x, 1i, 23920i)).a, abs(~vec4<i32>(u_input.c.x, 12560i, 0i, 24416i))).a, _wgslsmith_clamp_vec4_i32(-min(vec4<i32>(global0[_wgslsmith_index_u32(0u, 4u)], -1i, var_1.c, -21456i), vec4<i32>(var_1.d, global2.c, 0i, u_input.e)), ~(vec4<i32>(arg_3.a, 0i, arg_0.x, 0i) << (vec4<u32>(u_input.a.x, var_0, 1u, 0u) % vec4<u32>(32u))), vec4<i32>(select(arg_0.x, -4019i, true), firstTrailingBit(global2.c), _wgslsmith_mod_i32(arg_3.d.c, global2.d), var_1.d | -45634i))).a, func_4(func_5(Struct_3(func_4(arg_3.d, global2.b, arg_3, vec4<i32>(arg_0.x, 0i, 18536i, arg_3.a)).a, arg_3.d, func_4(Struct_1(false, 1000f, 74531i, u_input.e), -342f, Struct_2(var_1.c, var_1, arg_1.x, var_1, 1000f), vec4<i32>(u_input.c.x, arg_3.b.d, global2.d, arg_0.x)).c, var_1.d | arg_0.x, vec4<bool>(false, true, var_2.x, arg_1.x)), vec2<f32>(_wgslsmith_f_op_f32(select(arg_3.d.b, 642f, true)), var_1.b), Struct_2(i32(-1i) * -40926i, arg_3.d, func_1(Struct_1(arg_1.x, 291f, 1i, 0i), 363f, Struct_3(arg_3, Struct_1(false, arg_3.d.b, 2147483647i, global0[_wgslsmith_index_u32(18252u, 4u)]), arg_1, u_input.b, vec4<bool>(arg_3.b.a, false, var_1.a, global2.a)), Struct_1(true, global2.b, global0[_wgslsmith_index_u32(3881u, 4u)], global2.d)).a, arg_3.d, var_1.b), arg_3), -2127f, func_4(arg_3.b, global2.b, arg_3, -_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 4u)], arg_0.x, arg_0.x, arg_0.x), vec4<i32>(arg_3.d.c, var_1.d, u_input.e, 1i))).a, select(max(-vec4<i32>(arg_3.b.c, 69474i, -7601i, -19896i), -vec4<i32>(-35567i, global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.c.x, u_input.e)), reverseBits(vec4<i32>(2147483647i, -2147483647i, global2.c, global2.d) ^ vec4<i32>(26622i, -2147483647i, -2147483647i, global2.c)), var_1.a)).a);
    return func_4(Struct_1(true, -659f, -25363i, 2147483647i), arg_2, arg_3, vec4<i32>(countOneBits(i32(-1i) * -40992i), u_input.c.x, -1i, _wgslsmith_sub_i32(1i, max(global2.d & global0[_wgslsmith_index_u32(1573u, 4u)], u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(1u > _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), _wgslsmith_clamp_u32(10007u, u_input.d.x, 91343u)), max(u_input.d, u_input.a.zx) | (vec2<u32>(21047u, 0u) ^ u_input.a.zx)), global2.b, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global2.d, -29582i), -vec3<i32>(18740i, global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.c.x)), min(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], u_input.c.x) | vec3<i32>(global2.d, global2.d, u_input.b), countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], 10841i, global2.c)))) | _wgslsmith_mod_i32(global2.c, abs(-49166i >> (u_input.d.x % 32u))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~41829u, u_input.d.x ^ 0u), 4u)], u_input.c.x, -(~global0[_wgslsmith_index_u32(1u, 4u)])), max(~(global0[_wgslsmith_index_u32(1u, 4u)] & u_input.c.x), 2147483647i)));
    global3 = 807u;
    let var_0 = true;
    global2 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(983f)) - _wgslsmith_f_op_f32(-global2.b))))), -28361i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.d.x, 4u)] | 1i, ~global0[_wgslsmith_index_u32(70839u, 4u)]), firstTrailingBit(5803i)) >> (u_input.d.x % 32u));
    let var_1 = func_6(-u_input.c, vec3<bool>(!(-22112i > (-2147483647i & global0[_wgslsmith_index_u32(12395u, 4u)])), var_0, !var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b + -253f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.b)) - -133f)))), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], func_5(func_4(func_1(Struct_1(var_0, global2.b, 0i, 0i), 1866f, Struct_3(Struct_2(62676i, Struct_1(var_0, global2.b, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], -3750i), true, Struct_1(true, 1601f, -1i, 0i), -1200f), Struct_1(true, global2.b, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global2.d), vec3<bool>(var_0, false, global2.a), global0[_wgslsmith_index_u32(u_input.a.x, 4u)], vec4<bool>(true, true, var_0, var_0)), Struct_1(true, -1000f, 0i, global2.c)), global2.b, Struct_2(u_input.e, Struct_1(true, global2.b, 11061i, 1i), true, Struct_1(global2.a, -897f, -7611i, global0[_wgslsmith_index_u32(55843u, 4u)]), -1000f), vec4<i32>(global0[_wgslsmith_index_u32(27076u, 4u)], -2147483647i, global2.d, -13242i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.b, -1119f))) * _wgslsmith_div_vec2_f32(vec2<f32>(global2.b, global2.b), vec2<f32>(885f, -216f))), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(33130u, u_input.a.x, 4294967295u, 88455u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.d.x, 4294967295u)), 4u)], Struct_1(var_0, global2.b, global0[_wgslsmith_index_u32(4294967295u, 4u)], -15899i), true, Struct_1(false, -208f, global0[_wgslsmith_index_u32(u_input.d.x, 4u)], -24393i), -742f), Struct_2(-45273i, func_1(Struct_1(var_0, -1130f, -2956i, -10545i), -1693f, Struct_3(Struct_2(0i, Struct_1(true, global2.b, global2.c, 1i), false, Struct_1(true, global2.b, 19497i, global0[_wgslsmith_index_u32(4294967295u, 4u)]), global2.b), Struct_1(global2.a, -700f, -4174i, -12882i), vec3<bool>(var_0, false, var_0), u_input.c.x, vec4<bool>(global2.a, global2.a, var_0, global2.a)), Struct_1(false, global2.b, 26357i, 0i)), func_2(Struct_1(var_0, -172f, u_input.e, global2.d), vec3<i32>(-1i, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 4u)]), vec3<i32>(u_input.e, global0[_wgslsmith_index_u32(32179u, 4u)], -6715i)), func_4(Struct_1(global2.a, global2.b, global2.d, 17708i), global2.b, Struct_2(u_input.c.x, Struct_1(var_0, 2098f, 7771i, 21908i), false, Struct_1(false, global2.b, u_input.c.x, 50818i), 663f), vec4<i32>(global2.c, 0i, global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(u_input.d.x, 4u)])).a.d, _wgslsmith_f_op_f32(f32(-1f) * -1883f))), false, Struct_1(true & (0i != global2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f) * global2.b), ~(-global2.c), -8613i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-176f)) - global2.b)));
    global1 = array<vec2<i32>, 13>();
    let var_2 = 0u;
    global0 = array<i32, 4>();
    let var_3 = i32(-1i) * -30600i;
    let x = u_input.a;
    s_output = StorageBuffer(638f, _wgslsmith_clamp_i32((global0[_wgslsmith_index_u32(2917u, 4u)] ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_3), vec2<i32>(var_1.a.d.d, u_input.e))) << (~_wgslsmith_mod_u32(36277u, 4294967295u) % 32u), 26917i, var_3));
}

