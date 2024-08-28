struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, false, false), false);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    global0 = Struct_1(!global0.a, global0.b);
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f), -1751f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-580f * 1246f), _wgslsmith_f_op_f32(trunc(-778f)), _wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(116f * -1000f), _wgslsmith_f_op_f32(ceil(-264f)))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -913f);
    global0 = Struct_1(global0.a, any(!(!select(global0.a.wy, global0.a.xw, vec2<bool>(global0.a.x, global0.a.x)))));
    return global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = -20730i & u_input.b;
    let var_1 = u_input.a;
    var var_2 = ~(~countOneBits(vec3<u32>(firstLeadingBit(98877u), min(0u, 42695u), ~43350u)));
    var_2 = abs(_wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(20088u, var_1, 1u), countOneBits(vec3<u32>(37446u, 1u, 42539u))), vec3<u32>(~(var_1 >> (1u % 32u)), 4294967295u, _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 1u), min(0u, 0u)))));
    let var_3 = arg_1;
    return !global0.a.zzw;
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = false;
    var_0 = false;
    var_1 = any(select(vec3<bool>(all(select(global0.a.xz, vec2<bool>(true, true), global0.a.xz)), true, global0.a.x), global0.a.xxx, func_4(Struct_1(func_3(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), any(vec3<bool>(global0.a.x, global0.b, false))), Struct_1(func_3(vec4<u32>(u_input.a, 1u, 0u, u_input.a)), false), vec3<f32>(-1000f, -638f, -896f))));
    var var_2 = reverseBits(vec2<u32>(~(~max(31183u, 4294967295u)), 14332u));
    return Struct_1(select(vec4<bool>(func_4(Struct_1(global0.a, global0.b), Struct_1(vec4<bool>(true, global0.a.x, true, global0.a.x), global0.b), vec3<f32>(952f, 1584f, 754f)).x, global0.b, global0.a.x, _wgslsmith_mult_u32(var_2.x, u_input.a) == 0u), vec4<bool>((19607u != u_input.a) && true, any(vec3<bool>(global0.a.x, global0.b, false)) && !global0.a.x, false, global0.a.x), !vec4<bool>(!global0.b, false, all(global0.a.xw), any(global0.a.wyy))), true);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(select(!select(global0.a, vec4<bool>(global0.a.x, false, false, global0.a.x), all(vec4<bool>(false, true, global0.a.x, global0.a.x))), !global0.a, global0.a), global0.b);
    var var_0 = func_2();
    let var_1 = Struct_1(func_2().a, !(global0.b && any(func_2().a.yzw)));
    var var_2 = !var_1.a;
    var var_3 = func_2();
    return var_1;
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = countOneBits(u_input.c.x);
    let var_1 = arg_0;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1142f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(step(1859f, -1059f)), true)), any(global0.a.wyz))), 765f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -815f) + 820f)));
    var_0 = firstLeadingBit(i32(-1i) * -1i);
    var var_3 = 0u;
    return var_1.a.x;
}

fn func_6(arg_0: bool) -> Struct_1 {
    let var_0 = func_2();
    global0 = Struct_1(!global0.a, all(func_2().a.wzw));
    let var_1 = 0u;
    global0 = Struct_1(global0.a, func_1().a.x);
    global0 = var_0;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(!any(select(global0.a.xww, vec3<bool>(global0.a.x, global0.b, true), global0.a.x)) || func_5(func_1()));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(384f, -1861f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1368f)))), _wgslsmith_f_op_f32(ceil(-1000f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1185f, -841f, -746f, 1698f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1735f, 1527f, -759f, 1499f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1658f, 1533f, -1000f, -625f))))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1024f, -517f, _wgslsmith_f_op_f32(trunc(-1019f)), 2321f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1015f, 290f, 325f, 1916f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(368f, -1406f, 316f, -623f), vec4<f32>(-1000f, -2031f, 1153f, 2217f))))))));
    global0 = Struct_1(!(!global0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(var_1.x * 604f))) < _wgslsmith_f_op_f32(1440f + var_1.x));
    let var_2 = Struct_1(!(!(!func_3(vec4<u32>(u_input.a, 767u, u_input.a, u_input.a)))), true);
    var var_3 = !(!var_0.a.yzy);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c.x, 0i, 2147483647i)), vec3<i32>(-31722i, u_input.c.x, u_input.b)), vec3<i32>(abs(u_input.c.x), ~15940i, firstLeadingBit(u_input.b))), u_input.c, _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.a, 17253u, 3762u, 0u) ^ vec4<u32>(76825u, u_input.a, u_input.a, u_input.a)), vec4<u32>(1u, u_input.a << (5337u % 32u), max(21559u, u_input.a), u_input.a), vec4<u32>(u_input.a, 45127u, ~4294967295u, 1u)), vec4<u32>(~(~u_input.a), ~1u, 28547u, reverseBits(u_input.a))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.b, _wgslsmith_dot_vec3_i32(u_input.c.xzz, vec3<i32>(0i, 2147483647i, 0i)), -2147483647i << (u_input.a % 32u)), min(vec4<i32>(0i, 1i, -2147483647i, 19913i), abs(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.c.x)))), ~_wgslsmith_add_i32(u_input.b | -2147483647i, -2629i), min(abs(_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b)), ~(-49078i >> (u_input.a % 32u)))), u_input.b);
}

