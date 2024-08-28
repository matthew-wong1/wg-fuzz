struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_4 {
    let var_0 = Struct_1(-2147483647i);
    let var_1 = !vec2<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true)), select(!any(vec4<bool>(true, true, true, false)), true, select(all(vec3<bool>(false, false, false)), true, false)));
    var var_2 = Struct_2(var_1.x, var_0);
    let var_3 = Struct_2(!(((-2147483647i >> (u_input.a.x % 32u)) ^ ~var_2.b.a) <= u_input.b), var_0);
    var var_4 = arg_1;
    return Struct_4(-var_4.x, arg_1.zyy);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3, arg_3: u32) -> bool {
    let var_0 = u_input.b;
    var var_1 = Struct_2(!select(true, arg_1 > 0u, any(vec4<bool>(true, true, true, true))), Struct_1(1i));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-225f, -972f, 1341f)), _wgslsmith_div_vec3_f32(vec3<f32>(-379f, -1270f, -1375f), vec3<f32>(-127f, 124f, 360f)), u_input.a.x == 21726u)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1431f, 458f)) * -1378f) - _wgslsmith_div_f32(1110f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1f, 3042f), select(select(vec3<bool>(!var_1.a, true, var_1.a), select(select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a), true), vec3<bool>(true, false, var_1.a), vec3<bool>(var_1.a, false, false)), true), !vec3<bool>(var_1.a, !var_1.a, !var_1.a), !(!any(vec2<bool>(true, false))))));
    let var_3 = var_1.a;
    var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-509f, var_2.x, var_2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x) * vec3<f32>(731f, var_2.x, -517f))))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2076f - _wgslsmith_f_op_f32(-var_2.x)) + 289f), var_2.x, 176f)));
    return _wgslsmith_clamp_i32((arg_0.b.x << (34648u % 32u)) ^ -2147483647i, -min(reverseBits(var_0), _wgslsmith_clamp_i32(arg_0.a, -51785i, -2147483647i)), var_0) <= _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.b.xz, u_input.c.zy), u_input.c.xx), firstTrailingBit(~arg_0.b.zx)), select(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(29533i, -29555i, 57112i)), 1i), firstLeadingBit(var_0), !select(true, false, var_1.a)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = !((true & any(vec3<bool>(true, true, true))) != select(func_3(func_2(vec3<f32>(-767f, 1305f, 2367f), vec4<i32>(arg_0, 2147483647i, u_input.b, u_input.b)), 1u, Struct_3(u_input.c.xz), 112152u), false, !func_3(Struct_4(u_input.b, vec3<i32>(u_input.b, u_input.c.x, arg_0)), u_input.d, Struct_3(vec2<i32>(2147483647i, 1i)), u_input.a.x)));
    var var_1 = 25340i;
    var_1 = arg_0;
    var var_2 = u_input.d;
    let var_3 = Struct_4(~min(57532i, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1116f, -1016f, 181f)), vec4<i32>(u_input.c.x, -2147483647i, arg_0, u_input.b)).b.x), countOneBits(abs(vec3<i32>(reverseBits(arg_0), _wgslsmith_sub_i32(1i, -33268i), -13924i))));
    return Struct_1(abs(~1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-39808i);
    let var_1 = Struct_2(false, func_1(63832i));
    var var_2 = ~u_input.d;
    var_2 = _wgslsmith_dot_vec3_u32((abs(~vec3<u32>(u_input.a.x, u_input.d, u_input.d)) & abs(u_input.a.wzy)) << (~firstLeadingBit(vec3<u32>(62645u, 1u, u_input.d)) % vec3<u32>(32u)), ~u_input.a.wzy & ~abs(vec3<u32>(0u, u_input.a.x, 26092u) ^ u_input.a.yyy));
    var var_3 = Struct_1(_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(34298i, var_0.a, -1512i, -64997i) | vec4<i32>(1i, u_input.b, -2147483647i, var_0.a), -vec4<i32>(var_1.b.a, var_1.b.a, -10276i, -2147483647i)), vec4<i32>(13836i, var_0.a, ~var_0.a, _wgslsmith_mod_i32(2147483647i, var_1.b.a)) ^ (abs(vec4<i32>(var_0.a, var_1.b.a, 0i, 1i)) ^ select(vec4<i32>(var_1.b.a, u_input.c.x, u_input.b, 5642i), vec4<i32>(u_input.c.x, var_0.a, -73844i, var_0.a), vec4<bool>(true, var_1.a, var_1.a, true)))));
    var var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(928f, -1000f) * vec2<f32>(1431f, -1043f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1644f, -220f) - vec2<f32>(1000f, 150f))))), vec2<f32>(1529f, -368f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_mult_vec3_u32(select(abs(u_input.a.xwy & vec3<u32>(62679u, 16641u, 0u)), u_input.a.wyy, !vec3<bool>(false, true, var_1.a)), _wgslsmith_div_vec3_u32(abs(countOneBits(vec3<u32>(u_input.d, u_input.a.x, 0u))), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(80444u, 0u, u_input.d), u_input.a.wyy), abs(u_input.a.yyy)))), ~vec3<u32>(u_input.a.x, u_input.a.x, 42233u));
}

