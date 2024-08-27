struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_5(60183u, -(_wgslsmith_clamp_i32(1i, ~2147483647i, -16917i) >> (0u % 32u)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(true, global0.x >= 51483u), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), all(vec3<bool>(true, false, false))), vec2<bool>(false, all(vec4<bool>(true, false, false, true))), true)), _wgslsmith_mult_i32(abs(1i), 10446i), Struct_4(Struct_2(vec4<bool>(true, true, true, true), -countOneBits(-5913i), ~firstTrailingBit(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1146f, 1475f, 972f) - vec3<f32>(395f, -1731f, 965f)), u_input.a.zxx, vec4<u32>(13787u >> (u_input.a.x % 32u), _wgslsmith_clamp_u32(global0.x, global0.x, u_input.a.x), ~global0.x, ~u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1000f, -144f) + vec3<f32>(-1504f, 942f, -1260f)))), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 1u, 58170u), vec3<u32>(global0.x, 4294967295u, firstLeadingBit(global0.x)))));
    global0 = ~vec4<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, 1u, global0.x, u_input.a.x), vec4<u32>(0u, 4507u, u_input.a.x, 2235u), vec4<u32>(u_input.a.x, global0.x, u_input.a.x, var_0.a)), abs(vec4<u32>(global0.x, global0.x, global0.x, u_input.a.x))), global0.x, 35533u, ~countOneBits(global0.x));
    var var_1 = Struct_2(select(select(select(var_0.e.a.a, !vec4<bool>(var_0.c.x, false, var_0.c.x, false), true), vec4<bool>(!var_0.e.a.a.x, var_0.c.x, any(var_0.e.a.a), true), select(!var_0.e.a.a, vec4<bool>(false, true, var_0.c.x, false), var_0.e.a.a)), !vec4<bool>(all(vec3<bool>(false, true, var_0.e.a.a.x)), true, true, var_0.e.a.a.x), var_0.c.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(-var_0.e.a.b, abs(-25065i)) >> (var_0.a % 32u), firstTrailingBit(select(-12858i, select(var_0.d, var_0.d, true), true))), vec3<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.e.b.c, vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(var_0.e.b.c, vec4<u32>(4294967295u, var_0.e.a.c.x, u_input.a.x, 68936u)))), min(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, global0.x), u_input.a.zw), var_0.e.a.c.zy), firstLeadingBit(~0u)), 25636u));
    let var_2 = vec3<f32>(-630f, _wgslsmith_f_op_f32(max(1f, -246f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.b.a.x)));
    var_1 = var_0.e.a;
    return select(~vec4<u32>(~(~4294967295u), ~(~33742u), var_1.c.x, 1u), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(abs(select(u_input.a, var_0.e.b.c, var_1.a.x)), vec4<u32>(0u, var_0.a, global0.x, _wgslsmith_dot_vec2_u32(var_1.c.xz, vec2<u32>(var_1.c.x, var_0.a)))), var_0.e.a.c.x, ~4294967295u), !var_0.e.a.a);
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(min(-2455f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2298f, 2551f))))))));
    global0 = min(abs(u_input.a), _wgslsmith_sub_vec4_u32(select(u_input.a, u_input.a, vec4<bool>(false, true, true, false)) & _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(11820u, 31737u, u_input.a.x, 0u)), ~vec4<u32>(4294967295u, 56849u, u_input.a.x, global0.x))) << (~abs(_wgslsmith_mod_vec4_u32(func_3(), reverseBits(vec4<u32>(0u, 48382u, global0.x, global0.x)))) % vec4<u32>(32u));
    let var_1 = !(!vec4<bool>(!(36131u >= u_input.a.x), true, false, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-797f, -2178f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(min(2141f, 1434f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-454f, 1000f) + vec2<f32>(2042f, 1878f)))))));
    var var_3 = 1i;
    return firstLeadingBit(27573u);
}

fn func_4(arg_0: Struct_5) -> vec3<bool> {
    let var_0 = 1u;
    global0 = vec4<u32>(~_wgslsmith_clamp_u32(~14041u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(arg_0.e.b.c, vec4<u32>(arg_0.a, 4294967295u, var_0, global0.x)), u_input.a.x), ~15723u), ~u_input.a.x, min(arg_0.e.b.c.x, 4294967295u), ~_wgslsmith_add_u32(0u, ~min(var_0, 107000u)));
    let var_1 = arg_0.e.b;
    var var_2 = Struct_5(_wgslsmith_mod_u32(~u_input.a.x, ~reverseBits(28801u >> (global0.x % 32u))), arg_0.e.a.b, select(vec2<bool>(_wgslsmith_f_op_f32(arg_0.e.b.a.x + var_1.a.x) > _wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_div_f32(arg_0.e.c.x, var_1.a.x) > _wgslsmith_f_op_f32(-var_1.a.x)), select(!vec2<bool>(arg_0.c.x, arg_0.e.a.a.x), select(vec2<bool>(arg_0.e.a.a.x, arg_0.e.a.a.x), arg_0.c, false), all(vec4<bool>(arg_0.c.x, false, arg_0.e.a.a.x, false))), all(!(!vec2<bool>(arg_0.c.x, false)))), arg_0.d, arg_0.e);
    var var_3 = arg_0.e;
    return vec3<bool>(true, true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * -1503f)) >= 227f));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> bool {
    var var_0 = func_4(Struct_5(111838u, abs(1i) << (func_2() % 32u), vec2<bool>(false, true), firstTrailingBit(1i) | -1i, Struct_4(Struct_2(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), -24978i, vec3<u32>(0u, 4294967295u, u_input.a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(arg_1.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 67258u, u_input.a.x)), abs(vec4<u32>(global0.x, 40683u, u_input.a.x, 96732u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_1.a, vec3<f32>(arg_1.a.x, arg_2.a.x, arg_1.a.x))) * _wgslsmith_f_op_vec3_f32(arg_1.a + arg_1.a)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.a.x), vec2<u32>(10604u, u_input.a.x)), firstLeadingBit(36412u), func_2()))));
    global0 = abs(vec4<u32>(u_input.a.x, abs(25668u), arg_1.b.x, ~_wgslsmith_add_u32(arg_1.c.x, u_input.a.x)) << (select(~_wgslsmith_add_vec4_u32(vec4<u32>(30394u, arg_1.b.x, 74836u, u_input.a.x), arg_1.c), max(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 77967u, 1u, u_input.a.x), u_input.a), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(42877u, arg_1.c.x, 4784u, 1u), u_input.a)), _wgslsmith_dot_vec4_u32(arg_1.c, vec4<u32>(arg_3, arg_1.c.x, 0u, arg_1.b.x)) < 17317u) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_2.a.x, arg_1.a.x, arg_2.a.x) * vec4<f32>(arg_1.a.x, arg_2.a.x, 613f, 576f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, 767f, arg_2.a.x, -1662f) * vec4<f32>(arg_2.a.x, 1490f, arg_2.a.x, arg_1.a.x)), all(vec3<bool>(true, false, var_0.x)))))))));
    var var_2 = arg_2;
    var var_3 = vec3<u32>(u_input.a.x, arg_1.c.x, ~6699u & (~arg_1.b.x >> (arg_1.b.x % 32u))) ^ ~_wgslsmith_mod_vec3_u32(vec3<u32>(67160u, arg_3, u_input.a.x) >> (abs(vec3<u32>(arg_0.x, 4294967295u, u_input.a.x)) % vec3<u32>(32u)), reverseBits(global0.yyz));
    return any(!select(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, false), !var_0.x), select(vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, false, true), vec3<bool>(false, var_0.x, false)), !vec3<bool>(false, var_0.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), func_1(~(~(~u_input.a)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(245f, -291f, -500f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2852f, 1483f, 452f) - vec3<f32>(-1451f, 944f, 2415f))), abs(~vec3<u32>(79798u, 4294967295u, global0.x)), u_input.a), Struct_3(vec2<f32>(-1708f, _wgslsmith_f_op_f32(sign(858f)))), _wgslsmith_div_u32(1u, ~67704u) >> (~(~u_input.a.x) % 32u)));
    var var_1 = ~global0.x;
    global0 = ~u_input.a;
    let var_2 = ~(_wgslsmith_add_i32(_wgslsmith_clamp_i32(260i, 3657i, 0i), i32(-1i) * -9043i) | _wgslsmith_sub_i32(-2147483647i, -2147483647i)) | (i32(-1i) * -8402i);
    global0 = func_3();
    global0 = u_input.a;
    var var_3 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(round(-627f)), -1194f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-185f, -513f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(208f, -1027f), vec2<f32>(-331f, -1000f))))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -590f), -627f)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-625f, 1550f, -320f)))), abs(u_input.a.yyy), ~(~(_wgslsmith_div_vec4_u32(vec4<u32>(45986u, 18894u, global0.x, 42478u), u_input.a) & select(u_input.a, u_input.a, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_2, var_2, 1i, var_2), -(~vec4<i32>(-4301i, 1i, 9351i, var_2))), var_3.a.x);
}

