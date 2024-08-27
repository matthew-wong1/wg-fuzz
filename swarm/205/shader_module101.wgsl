struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_add_i32(firstLeadingBit(38127i), ~_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, 1i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-11461i, -2147483647i, -60863i), vec3<i32>(10899i, -1i, 18289i)), -1i));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(415f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1020f * -1791f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1256f)))));
    var_1 = -1083f;
    var_0 = countOneBits(_wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, -2147483647i), _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(-2533i, 1i), vec2<i32>(39684i, -28536i))))));
    let var_2 = Struct_1(vec3<i32>(2147483647i, -2147483647i, _wgslsmith_mod_i32(~abs(-13379i), _wgslsmith_add_i32(i32(-1i) * -17033i, -32106i))), select(select(u_input.b | select(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), u_input.b, true), firstTrailingBit(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 40947u)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true)), _wgslsmith_add_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(u_input.b, u_input.b) >> (~u_input.b % vec4<u32>(32u))), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, false, all(vec4<bool>(true, true, false, true))), vec4<bool>(true, any(vec2<bool>(true, true)), select(false, true, true), true))), vec3<bool>(true, true, true));
    return var_2.a.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_3(1u, 4294967295u << (_wgslsmith_dot_vec4_u32(~u_input.b | (u_input.b & vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, u_input.b.x)), u_input.b) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1307f, -243f), vec2<f32>(726f, arg_0))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(440f, arg_0) * vec2<f32>(725f, arg_0)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(173f, arg_0) * vec2<f32>(-2719f, 1018f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_0), vec2<f32>(arg_0, 1259f))), vec2<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(trunc(arg_0))), true))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(647f)) - arg_0), Struct_1(select(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-28814i, 68098i, -77560i), true), vec4<u32>(u_input.a.x | u_input.a.x, _wgslsmith_div_u32(u_input.b.x, 4294967295u), ~u_input.a.x, ~68921u), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true)), true, Struct_1(-vec3<i32>(2147483647i, -2147483647i, 2147483647i), ~abs(u_input.b), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec2<u32>(~_wgslsmith_add_u32(74025u, u_input.a.x), ~0u)));
    let var_1 = var_0.d.b;
    var var_2 = 1i;
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(min(var_1.a.x, 49614i), -2147483647i), var_1.a.x) & var_0.d.b.a.x, min(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.d.b.a.x ^ -42231i, func_3(), var_1.a.x), -(i32(-1i) * -68759i)), countOneBits(i32(-1i) * -19693i) & var_0.d.b.a.x));
    var_0 = Struct_3(var_0.d.b.b.x, reverseBits(var_1.b.x), vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(591f + arg_0) + _wgslsmith_f_op_f32(trunc(arg_0)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * arg_0))), var_0.d.d, !(-788f >= _wgslsmith_f_op_f32(-arg_0)), Struct_1(~vec3<i32>(var_0.d.b.a.x, 12543i, -2147483647i), vec4<u32>(25359u, var_0.d.b.b.x, 66453u, var_1.b.x) ^ reverseBits(u_input.b), vec3<bool>(var_0.d.b.c.x, var_1.c.x, all(vec2<bool>(var_1.c.x, false)))), u_input.b.yz));
    return var_0.d.d;
}

fn func_1() -> Struct_2 {
    global0 = ~(_wgslsmith_sub_u32(35128u, countOneBits(u_input.b.x)) >> (_wgslsmith_mod_u32(~(u_input.a.x | u_input.b.x), 8853u) % 32u));
    var var_0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1908f));
    var var_1 = vec2<bool>(any(!select(select(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<bool>(true, var_0.c.x, var_0.c.x), false), !vec3<bool>(var_0.c.x, false, false), any(vec3<bool>(false, false, var_0.c.x)))), -438f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(868f * _wgslsmith_f_op_f32(select(-371f, -557f, var_0.c.x)))));
    var_0 = Struct_1(var_0.a, _wgslsmith_mod_vec4_u32(max(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(var_0.b.x, var_0.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_0.b.x), vec3<u32>(var_0.b.x, var_0.b.x, 0u)), var_0.b.x, ~1u), u_input.b), abs(vec4<u32>(135520u, _wgslsmith_mod_u32(var_0.b.x, var_0.b.x), 1u, select(u_input.b.x, 87853u, true)))), select(vec3<bool>(var_0.c.x, any(select(var_0.c, vec3<bool>(var_0.c.x, true, var_1.x), false)), select(var_1.x || var_1.x, false, 13449u == u_input.b.x)), var_0.c, vec3<bool>(var_1.x | true, all(select(var_0.c, var_0.c, false)), true)));
    let var_2 = -(~(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<i32>(var_0.a.x, -29878i, -2147483647i, 25476i)))));
    return Struct_2(1178f, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-998f * _wgslsmith_f_op_f32(1912f + 1275f)), _wgslsmith_div_f32(845f, 1152f))), any(vec4<bool>(!var_0.c.x, var_1.x, all(vec2<bool>(var_0.c.x, false)), var_0.b.x > 1u)) | select(var_1.x, any(select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(false, var_0.c.x, var_1.x, false), vec4<bool>(false, var_1.x, true, var_1.x))), all(vec4<bool>(true, var_1.x, var_0.c.x, var_1.x))), func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1350f * -122f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1618f)))))), ~(select(vec2<u32>(u_input.b.x, 53776u), reverseBits(u_input.a.zx), !var_0.c.xx) | reverseBits(firstLeadingBit(vec2<u32>(var_0.b.x, 33706u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x;
    global0 = select(select(_wgslsmith_add_u32(~(u_input.a.x << (u_input.a.x % 32u)), 4294967295u), _wgslsmith_mult_u32(u_input.a.x, 85989u), !any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)))), u_input.b.x, true);
    global0 = _wgslsmith_div_u32(u_input.b.x, firstLeadingBit(u_input.a.x));
    let var_0 = func_1();
    let var_1 = countOneBits(vec2<u32>(~1u, firstLeadingBit(76569u)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

