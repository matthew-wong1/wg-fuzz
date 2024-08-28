struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    global0 = 618f;
    var var_0 = Struct_4(true, Struct_3(_wgslsmith_f_op_vec3_f32(exp2(arg_1.a))));
    var var_1 = (~vec2<i32>(1i << (arg_2.x % 32u), _wgslsmith_mod_i32(u_input.b, u_input.b)) | ~min(max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, 2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, -2147483647i)))) ^ vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(u_input.c, 1i)), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.b, -40732i)), vec2<i32>(u_input.b, u_input.b) & vec2<i32>(u_input.b, u_input.c))));
    let var_2 = Struct_4(!any(select(arg_3.a.yz, select(arg_3.c, vec2<bool>(false, arg_0.x), var_0.a), arg_3.c.x)), Struct_3(_wgslsmith_f_op_vec3_f32(select(arg_1.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -953f), -822f, _wgslsmith_f_op_f32(max(arg_1.a.x, 1919f))), false))));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-480f + _wgslsmith_f_op_f32(183f - var_2.b.a.x))) - _wgslsmith_f_op_f32(abs(534f))), var_2.b.a.x));
    return _wgslsmith_mod_u32(u_input.a.x, 1u);
}

fn func_4(arg_0: vec4<u32>) -> bool {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-696f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(902f, 654f)))))))));
    let var_0 = -78030i;
    let var_1 = firstTrailingBit(u_input.a.xz);
    let var_2 = 4294967295u;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1573f);
    return select(abs(-1i), _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(var_0, 2147483647i, 1i, u_input.b)), vec4<i32>(var_0, 1i, -22142i, var_0) & vec4<i32>(-2147483647i, u_input.b, var_0, -2147483647i)), false) <= firstTrailingBit(-29197i);
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -464f);
    var var_0 = true;
    var_0 = func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(func_3(vec4<bool>(false, true, false, true), Struct_3(vec3<f32>(-571f, 122f, 886f)), vec4<u32>(25164u, u_input.a.x, 4294967295u, u_input.a.x), Struct_1(vec4<bool>(true, true, false, false), -1397f, vec2<bool>(false, true))), ~10436u), ~131241u, 0u, firstLeadingBit(u_input.a.x)), _wgslsmith_mult_vec4_u32(max(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 22527u)), ~(~vec4<u32>(u_input.a.x, 157105u, 22577u, 1u))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(79644u, u_input.a.x), u_input.a.x >> (22562u % 32u), 4294967295u, ~u_input.a.x), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 11864u, 1u)), _wgslsmith_mult_u32(u_input.a.x, 4294967295u), u_input.a.x << (u_input.a.x % 32u), _wgslsmith_mult_u32(20161u, 121192u)))));
    let var_1 = _wgslsmith_f_op_f32(trunc(-245f));
    var var_2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(sign(385f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) * _wgslsmith_f_op_f32(-var_1))) < 1082f);
    return Struct_2(60291u, all(vec2<bool>(true, true)), 28332u);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1212f * _wgslsmith_f_op_f32(-515f - _wgslsmith_f_op_f32(433f + 695f)))))));
    let var_0 = Struct_5(7260i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1029f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-395f + 983f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(448f * -1484f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1262f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(440f - -350f)))), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.c, u_input.c, -2147483647i)), select(vec3<i32>(483i, -1i, arg_1), vec3<i32>(3171i, 8078i, 2147483647i), arg_0.b)), Struct_1(select(vec4<bool>(arg_3.b && arg_0.b, false || arg_3.b, arg_3.b, !arg_0.b), vec4<bool>(arg_3.b, true, arg_1 > u_input.c, arg_3.b), any(select(vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(arg_3.b, arg_3.b, false), true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1000f)), 408f)), select(!select(vec2<bool>(arg_0.b, true), vec2<bool>(false, arg_0.b), false), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, arg_3.b)), any(vec3<bool>(arg_3.b, arg_0.b, true))))));
    global0 = 1000f;
    global0 = 1000f;
    var var_1 = !vec2<bool>(all(!(!var_0.e.a.zx)), any(!select(vec4<bool>(true, var_0.e.a.x, var_0.e.c.x, arg_0.b), vec4<bool>(var_0.e.a.x, var_0.e.c.x, arg_0.b, arg_0.b), vec4<bool>(arg_3.b, false, arg_0.b, false))));
    return firstLeadingBit(~(~(-vec4<i32>(arg_1, arg_1, var_0.a, -9666i) & (vec4<i32>(11257i, -30867i, 29145i, u_input.c) ^ vec4<i32>(var_0.a, -2147483647i, 18274i, -1i)))));
}

fn func_1(arg_0: Struct_2) -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1004f - -822f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -525f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(512f)))))));
    let var_0 = ~func_5(Struct_2(abs(u_input.a.x), !arg_0.b, ~16167u), -(~u_input.b) | _wgslsmith_mod_i32(u_input.c << (arg_0.a % 32u), _wgslsmith_add_i32(-2147483647i, u_input.c)), 4294967295u, func_2());
    global0 = -979f;
    global0 = _wgslsmith_f_op_f32(abs(-836f));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1729f);
    return arg_0.b;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.b, arg_3.b)), arg_3.b))) - -1062f);
    var var_0 = u_input.a.x > (u_input.a.x ^ 1u);
    let var_1 = Struct_1(vec4<bool>(!arg_0 | func_2().b, arg_0, false, any(!select(vec3<bool>(arg_3.a.x, arg_1, false), arg_3.a.zyx, arg_0))), -1000f, !arg_2);
    let var_2 = Struct_1(var_1.a, arg_3.b, select(select(var_1.a.zx, select(select(arg_3.c, var_1.c, arg_2), vec2<bool>(false, arg_0), all(vec4<bool>(arg_2.x, arg_3.c.x, false, true))), vec2<bool>(!var_1.a.x, !arg_3.c.x)), var_1.a.zx, arg_3.a.x));
    global0 = _wgslsmith_f_op_f32(sign(var_2.b));
    return Struct_1(var_2.a, -1596f, vec2<bool>(true, arg_1));
}

fn func_7(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_5(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_3, 26029i, u_input.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 0i, 37258i), func_5(Struct_2(4294967295u, arg_2.a.x, arg_0), u_input.b, arg_0, Struct_2(arg_0, arg_2.a.x, 0u)).wyy, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, arg_3, u_input.b), vec3<i32>(arg_3, arg_3, 2147483647i)))), arg_1.x, _wgslsmith_f_op_f32(-159f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(119f, -995f)) - -1000f)), firstLeadingBit(vec3<i32>(15581i, firstLeadingBit(firstLeadingBit(-1i)), -u_input.b)), Struct_1(select(vec4<bool>(false, true, false, !arg_2.c.x), func_6(true, all(vec4<bool>(arg_2.c.x, false, arg_2.c.x, true)), vec2<bool>(true, true), func_6(false, arg_2.c.x, vec2<bool>(true, false), Struct_1(arg_2.a, 728f, arg_2.a.yw))).a, arg_2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -615f), arg_2.c));
    global0 = -2609f;
    var var_1 = _wgslsmith_mod_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, u_input.c) << (~u_input.a.zy % vec2<u32>(32u)), var_0.d.zz), vec2<i32>(-(var_0.a >> (u_input.a.x % 32u)), var_0.d.x));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(223f + 1125f) * -1424f);
    var var_2 = func_2();
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(step(arg_1, arg_1))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-272f - arg_2.b), arg_2.b), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(0u, vec3<f32>(1f, 1f, 1f), func_6(func_1(Struct_2(1u, false, u_input.a.x)) && true, -2147483647i <= (u_input.c | u_input.c), vec2<bool>(all(vec3<bool>(false, true, false)), true), Struct_1(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), 1000f, vec2<bool>(true, u_input.a.x < u_input.a.x))), u_input.b);
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f) + 504f), -507f))))));
    var var_1 = !(!func_2().b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1347f)));
    var var_3 = Struct_5(21852i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1571f)), func_7(1u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-788f)) + var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -925f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2, var_2)))), func_6(!all(vec4<bool>(true, false, true, false)), false, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), func_6(false, false, vec2<bool>(false, true), Struct_1(vec4<bool>(true, true, false, true), -547f, vec2<bool>(false, false))).a.zy), Struct_1(vec4<bool>(true, true, true, true), 1523f, vec2<bool>(true, true))), -27163i ^ u_input.b).a.x, vec3<i32>(u_input.c, _wgslsmith_add_i32(u_input.b, ~8124i), u_input.c), func_6(all(func_6(true, func_2().b, select(vec2<bool>(true, false), vec2<bool>(true, true), true), func_6(true, true, vec2<bool>(false, true), Struct_1(vec4<bool>(true, false, true, false), var_0.a.x, vec2<bool>(true, true)))).c), any(vec2<bool>(true, true)), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), false), func_6(true, true, func_6(true, all(vec3<bool>(false, true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), true), func_6(true, true, vec2<bool>(false, true), Struct_1(vec4<bool>(true, false, false, true), 261f, vec2<bool>(false, false)))).c, Struct_1(vec4<bool>(false, true, true, false), var_0.a.x, vec2<bool>(true, true)))));
    var var_4 = var_0.a;
    var var_5 = min(1u, ~(~31288u) << (~_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.xy) % 32u));
    var var_6 = _wgslsmith_dot_vec3_u32(vec3<u32>(func_3(!select(var_3.e.a, vec4<bool>(var_3.e.c.x, false, false, false), var_3.e.c.x), Struct_3(vec3<f32>(-1084f, var_0.a.x, var_2)), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 14123u, 4294967295u)), Struct_1(func_6(true, var_3.e.c.x, var_3.e.c, Struct_1(vec4<bool>(false, false, false, var_3.e.c.x), -1115f, var_3.e.c)).a, 1802f, select(vec2<bool>(var_3.e.c.x, false), var_3.e.c, var_3.e.a.x))), 1u, u_input.a.x), ~vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 53550u, u_input.a.x)), vec3<u32>(u_input.a.x, 1u, u_input.a.x)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 25012u, 4294967295u)), max(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(u_input.a.x, 45066u, 151799u))), u_input.a.x));
    var var_7 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, var_3.b, true)), _wgslsmith_f_op_f32(f32(-1f) * -670f), var_3.c))));
}

