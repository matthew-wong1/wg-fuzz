struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a, ~_wgslsmith_div_i32(arg_1.a, -22545i), ~_wgslsmith_mult_i32(u_input.d.x, 59915i), arg_0.c.a), ~vec4<i32>(-27881i, 1i ^ u_input.d.x, _wgslsmith_dot_vec3_i32(arg_0.a.a.xwz, arg_0.a.a.yyx), u_input.d.x), vec4<i32>(arg_1.a, -(2147483647i | u_input.d.x), -1i, arg_1.a | 30119i)), true);
    var var_1 = -2147483647i;
    var var_2 = arg_2;
    var_1 = max(_wgslsmith_mod_i32(~arg_1.a, -countOneBits(_wgslsmith_sub_i32(0i, arg_1.a))), _wgslsmith_mod_i32(arg_1.a, 49928i));
    var_2 = !arg_0.a.b;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1616f, -851f, 1854f), vec3<f32>(627f, -107f, -586f), arg_2))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(528f, 223f, 251f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -694f, 2020f) - vec3<f32>(107f, 660f, 416f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-856f, -1000f, 1036f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-174f * -1318f), -961f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1593f, -1349f, 174f) * vec3<f32>(933f, -1000f, -936f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(904f, -873f, -375f), vec3<f32>(149f, -683f, -693f)))))), !(arg_1.a == countOneBits(arg_0.a.a.x))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1230f, -633f, -1000f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(vec4<i32>(u_input.c, u_input.c, -1i, u_input.d.x), false), true, Struct_1(u_input.d.x)), Struct_1(-1i), u_input.c > 0i)))) + vec3<f32>(_wgslsmith_f_op_f32(1000f - -1324f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(449f + 687f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-204f * -1189f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -346f), _wgslsmith_f_op_f32(f32(-1f) * -2559f)))));
    let var_1 = Struct_3(Struct_2(~vec4<i32>(u_input.d.x, 2147483647i, ~u_input.d.x, u_input.c), ~(~u_input.d.x) >= u_input.d.x), !any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true))), Struct_1(-u_input.d.x));
    var var_2 = _wgslsmith_sub_vec3_u32(u_input.e.xyw, ~u_input.e.zxw);
    var var_3 = Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(-var_1.a.a.x, -var_1.c.a, u_input.c, firstTrailingBit(var_1.a.a.x)) << ((vec4<u32>(21067u, u_input.e.x, var_2.x, 0u) << (_wgslsmith_mult_vec4_u32(u_input.e, vec4<u32>(1u, 0u, 1u, 58627u)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~firstLeadingBit(var_1.a.a >> (u_input.e % vec4<u32>(32u)))), true);
    var_2 = vec3<u32>(var_2.x, max(~u_input.a << (var_2.x % 32u), firstLeadingBit(reverseBits(var_2.x))), ~firstLeadingBit(43368u & u_input.e.x)) << (~abs(~vec3<u32>(97262u, 56067u, var_2.x)) % vec3<u32>(32u));
    return 49237u;
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<i32>(~_wgslsmith_div_i32(u_input.c, u_input.c), -2147483647i, u_input.c, u_input.c);
    let var_1 = _wgslsmith_mod_u32(u_input.a >> (abs(func_2()) % 32u), abs(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 1u, u_input.e.x, 9965u), ~u_input.e)));
    var_0 = reverseBits(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(abs(-2147483647i), var_0.x), var_0.x), 2147483647i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(1i, u_input.c, var_0.x, u_input.d.x) << (u_input.e % vec4<u32>(32u))), vec4<i32>(0i, _wgslsmith_dot_vec2_i32(var_0.wy, vec2<i32>(0i, var_0.x)), -5861i, 31550i | u_input.c)), 74557i));
    var_0 = vec4<i32>(-_wgslsmith_clamp_i32(-(-2147483647i ^ var_0.x), var_0.x, 0i), -_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_0.yxy, vec3<i32>(u_input.c, var_0.x, 42220i)), 2147483647i >> (0u % 32u)) << ((~reverseBits(var_1) | ~reverseBits(56500u)) % 32u), var_0.x, abs(9090i));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(_wgslsmith_f_op_f32(-152f - _wgslsmith_f_op_f32(604f - 337f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(vec4<i32>(u_input.d.x, u_input.c, var_0.x, -2147483647i), false), true, Struct_1(-30351i)), Struct_1(1i), false)).x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-875f)), -530f, true)), _wgslsmith_f_op_f32(abs(-482f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-412f, -377f, 403f, -553f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(266f, 1700f, -700f, 1868f) * vec4<f32>(-724f, 1245f, -1569f, -1218f)))))));
    return Struct_3(Struct_2(min(~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 1i, -8185i), vec4<i32>(u_input.c, var_0.x, -1i, u_input.d.x)), -(~vec4<i32>(0i, -2783i, 50630i, 7568i))), select(1i == u_input.d.x, true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true))))), var_0.x == u_input.d.x, Struct_1(0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var_0 = ~u_input.a;
    let var_1 = func_1();
    var_0 = min(~(~(0u << (_wgslsmith_sub_u32(u_input.e.x, u_input.b) % 32u))), u_input.e.x);
    var var_2 = !(!var_1.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2036f * 1052f), _wgslsmith_f_op_f32(-1780f + -801f), _wgslsmith_f_op_f32(ceil(1859f)), -1508f)) * vec4<f32>(_wgslsmith_f_op_f32(min(-727f, _wgslsmith_f_op_f32(-109f - -309f))), _wgslsmith_f_op_f32(trunc(-149f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -528f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(645f - -1071f)))));
    var_2 = var_1.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.x), max(vec4<u32>(0u, abs(u_input.e.x), ~u_input.b, 1u) | ~(~vec4<u32>(u_input.e.x, u_input.e.x, u_input.b, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(min(4294967295u, 17341u), 5183u, 1u, 4450u), ~(vec4<u32>(1u, u_input.b, 0u, u_input.b) | vec4<u32>(u_input.a, 0u, 36201u, u_input.a)))), i32(-1i) * -1i, 1028f);
}

