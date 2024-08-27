struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(2147483647i, 1i, 12599i, 2840i), vec4<i32>(28541i, 34836i, 0i, 1i), vec4<i32>(-5128i, 42731i, 2147483647i, -1i), vec4<i32>(2147483647i, 1i, i32(-2147483648), 1i), vec4<i32>(24561i, -23463i, 1i, -27980i));

var<private> global1: vec4<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<u32> {
    global0 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 5>();
    var var_0 = _wgslsmith_f_op_f32(-global1.x);
    let var_1 = Struct_3(Struct_1(abs(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1f)), firstTrailingBit(vec2<u32>(1u, 1u)), 45521i <= ~(u_input.a.x >> (14800u % 32u)), _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(-74957i, abs(1i)))));
    global0 = array<vec4<i32>, 5>();
    return var_1.a.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -232f, -490f, -239f) * vec4<f32>(global1.x, 637f, global1.x, -1347f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1724f, global1.x, -489f, -143f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b, arg_0.b, arg_0.b, -1347f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, arg_0.b, arg_0.b) - vec4<f32>(950f, arg_0.b, -108f, arg_0.b)))), vec4<bool>(!arg_0.d && arg_0.d, !any(vec4<bool>(arg_0.d, false, false, true)), true, arg_0.d))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, global1.x, -996f)), vec4<f32>(arg_0.b, -1315f, 1325f, 822f)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(min(arg_0.b, global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1356f), _wgslsmith_f_op_f32(arg_0.b * 917f))))));
    return _wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(-global1.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    global0 = array<vec4<i32>, 5>();
    let var_0 = Struct_1(~62130i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(max(global1.x, global1.x)))))), _wgslsmith_add_vec2_u32(~vec2<u32>(1u, 97708u) << (firstTrailingBit(vec2<u32>(1u, 28322u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(4294967295u, 92602u)))) ^ select(vec2<u32>(1u, max(247u, 24846u)), firstLeadingBit(~vec2<u32>(15882u, 4294967295u)), !(!arg_3)), true, -26874i);
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-958f, -218f) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -903f), _wgslsmith_f_op_f32(ceil(global1.x))))));
    var_2 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(var_1.e, _wgslsmith_div_f32(-1027f, -351f), func_3(), arg_0.x, 7515i), select(var_1.c, vec2<u32>(var_1.c.x, var_0.c.x), arg_0)))));
    return _wgslsmith_sub_u32(select(var_0.c.x, firstLeadingBit(var_1.c.x) & 22340u, var_0.d), var_1.c.x) & 1u;
}

fn func_1() -> Struct_2 {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(369f * -744f)), -1000f, _wgslsmith_f_op_f32(min(global1.x, global1.x)), 1774f);
    let var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-global1.x), countOneBits(~vec2<u32>(1u, 1u)), 63806u == ~(~func_2(vec2<bool>(true, false), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -12724i), u_input.a.xz, true)), u_input.a.x);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1000f, -405f, global1.x)))))), vec4<f32>(_wgslsmith_f_op_f32(abs(1518f)), _wgslsmith_div_f32(-433f, var_0.b), global1.x, _wgslsmith_f_op_f32(var_0.b + -961f))));
    global0 = array<vec4<i32>, 5>();
    let var_1 = _wgslsmith_mod_vec4_i32(-(vec4<i32>(var_0.a, var_0.a, 2147483647i, 2147483647i) | global0[_wgslsmith_index_u32(var_0.c.x, 5u)]) | -global0[_wgslsmith_index_u32(abs(var_0.c.x) | 42474u, 5u)], _wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~25591u, var_0.c.x) & max(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, 4996u), vec3<u32>(26288u, 0u, 48551u))), 5u)], max(vec4<i32>(var_0.e, abs(-1i), reverseBits(var_0.e), -u_input.a.x), vec4<i32>(0i, u_input.a.x, var_0.a, var_0.e) & select(global0[_wgslsmith_index_u32(var_0.c.x, 5u)], global0[_wgslsmith_index_u32(var_0.c.x, 5u)], vec4<bool>(false, var_0.d, true, true)))));
    return Struct_2(vec4<u32>(var_0.c.x, 94095u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, 17275u), vec3<u32>(var_0.c.x, 0u, var_0.c.x)) % 32u), var_0.c.x, ~1572u), 0u, !vec2<bool>(false, all(select(vec4<bool>(false, var_0.d, var_0.d, var_0.d), vec4<bool>(true, var_0.d, true, false), true))), _wgslsmith_f_op_f32(-var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_2(var_0.a, _wgslsmith_sub_u32(~(~var_0.b & 22388u), abs(_wgslsmith_mod_u32(~4294967295u, func_3().x))), var_0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(851f - global1.x) - var_0.d)))));
    let var_1 = u_input.a.yz;
    var_0 = func_1();
    var var_2 = Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(~var_0.a.zyy & min(var_0.a.wxz, var_0.a.xxy), ~(~vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x))), ~(~(~var_0.b)), var_0.b, ~(~var_0.b)), ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.a.zwx, var_0.a.yyx), var_0.a.zxz)), vec2<bool>(all(!var_0.c), any(vec3<bool>(false, !var_0.c.x, var_0.c.x | true))), _wgslsmith_f_op_f32(abs(-590f)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1().d) * global1.x), _wgslsmith_f_op_f32(max(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(step(global1.x, -1283f))) - var_0.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global1.x, var_2.d)))), var_2.d))));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1114f, var_2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.d))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - var_0.d) + _wgslsmith_f_op_f32(var_0.d - -1033f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.d, var_3.x)), _wgslsmith_div_f32(305f, global1.x))) * _wgslsmith_f_op_f32(-604f - 1482f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(719f, -554f, 551f, _wgslsmith_f_op_f32(f32(-1f) * -1889f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d, var_3.x, 864f, global1.x) * vec4<f32>(global1.x, -984f, var_2.d, global1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_3.x, 1475f, var_0.d) - vec4<f32>(var_3.x, global1.x, 379f, -1290f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(~var_2.a.zw, ~var_2.a.yz, false)) | ~(~var_0.a.xy), _wgslsmith_f_op_vec2_f32(trunc(var_4.yx)), ~abs(2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(500f, -333f, 231f), var_3), var_3)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-434f, var_3.x, var_4.x)))))))), var_2.a.zy << (_wgslsmith_mult_vec2_u32(firstLeadingBit(var_0.a.wz), select(~vec2<u32>(var_0.a.x, 0u), var_0.a.wx, var_0.c)) % vec2<u32>(32u)));
}

