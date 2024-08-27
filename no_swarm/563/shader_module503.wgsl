struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: bool) -> vec4<bool> {
    let var_0 = arg_1.b.wx;
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.d + 322f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a.a.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -507f)) - _wgslsmith_f_op_f32(f32(-1f) * -2340f)));
    return !vec4<bool>(arg_0, !(all(vec3<bool>(true, true, arg_2)) && any(vec3<bool>(arg_0, arg_0, true))), !(!(false || arg_0)), arg_0);
}

fn func_3(arg_0: vec4<bool>) -> vec3<f32> {
    let var_0 = abs(_wgslsmith_mod_i32(0i, u_input.c.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(496f - 1433f), 1616f))));
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-225f)), -975f, any(vec3<bool>(arg_0.x, all(arg_0), select(false, !arg_0.x, any(arg_0.wz))))));
    var_1 = -346f;
    let var_2 = Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 23786u), u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1698f, -1427f)))), vec4<u32>(27567u, _wgslsmith_add_u32(11555u, 52653u), ~u_input.b, 7669u) ^ (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (reverseBits(vec4<u32>(15221u, 4294967295u, u_input.a, 4294967295u)) % vec4<u32>(32u))), vec4<i32>(-1i, _wgslsmith_div_i32(var_0, 0i), u_input.c.x, -u_input.c.x) & vec4<i32>(u_input.c.x << (u_input.b % 32u), var_0, u_input.c.x >> (4294967295u % 32u), var_0), -112f, firstLeadingBit(firstTrailingBit(0u) << (min(4294967295u, 0u) % 32u))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(698f, -716f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1225f, -555f))), 649f, _wgslsmith_f_op_f32(1339f * _wgslsmith_f_op_f32(select(309f, -788f, arg_0.x)))))));
    return var_2.b.yxz;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(func_2(true, Struct_3(Struct_2(Struct_1(vec2<u32>(u_input.b, 3731u), vec2<i32>(-1i, -2147483647i), vec2<f32>(1270f, -125f)), vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), vec4<i32>(42445i, -11730i, -2147483647i, u_input.c.x), 1621f, 0u), vec4<f32>(-684f, -516f, -381f, -1143f)), true))));
    var var_1 = false;
    var_1 = func_2(37172u >= u_input.a, Struct_3(Struct_2(Struct_1(vec2<u32>(u_input.a, 51069u) & vec2<u32>(58856u, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, 4405i), u_input.c, vec2<i32>(u_input.c.x, u_input.c.x)), var_0.xz), countOneBits(vec4<u32>(u_input.a, u_input.b, u_input.a, 23558u) ^ vec4<u32>(u_input.a, u_input.a, u_input.b, 0u)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -53233i), vec4<i32>(u_input.c.x, -37037i, -60595i, -1i), vec4<i32>(11869i, u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1000f)), u_input.a), vec4<f32>(685f, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-var_0.x), true)), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), 136f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) >= _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(exp2(var_0.x))))).x;
    let var_2 = Struct_3(Struct_2(Struct_1(abs(vec2<u32>(28171u, 18657u) ^ vec2<u32>(56586u, u_input.b)), select(_wgslsmith_clamp_vec2_i32(u_input.c, u_input.c, u_input.c), vec2<i32>(u_input.c.x, 1i), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))), min(vec4<u32>(_wgslsmith_add_u32(u_input.a, 22100u), ~4294967295u, 54187u, _wgslsmith_mod_u32(u_input.a, u_input.b)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, 30858u, 1u), vec4<u32>(1u, 0u, u_input.a, 63961u))), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-32296i, u_input.c.x, -31798i, 1i) << (vec4<u32>(0u, 13926u, 1u, u_input.b) % vec4<u32>(32u))), ~vec4<i32>(2147483647i, u_input.c.x, -1i, -1i) | ~vec4<i32>(1i, 0i, 0i, u_input.c.x)), _wgslsmith_f_op_f32(max(1108f, var_0.x)), (_wgslsmith_mult_u32(4294967295u, u_input.a) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(0u, 8106u)) % 32u)) << (1u % 32u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1607f, var_0.x, var_0.x, 1175f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))));
    var var_3 = var_2.a.a;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec2<bool>(!((u_input.c.x > u_input.c.x) | false), all(vec4<bool>(23505u <= u_input.a, any(vec4<bool>(false, true, false, true)), false, false))));
    var var_1 = var_0;
    var_1 = false;
    var var_2 = func_1();
    var var_3 = u_input.c.x;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.d - 1139f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) * _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(true, true, true, true))).x, var_2.a.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.a.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.c.x) - 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d - var_2.a.c.x)));
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

