struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(2549f, -267f)))));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: f32, arg_3: vec2<u32>) -> i32 {
    let var_0 = select(vec2<bool>(!select(false, false, true | arg_1.x), true & arg_1.x), select(select(arg_1, vec2<bool>(true, !arg_1.x), true), arg_1, (_wgslsmith_f_op_f32(-949f + 1183f) > _wgslsmith_f_op_f32(-arg_2)) || arg_1.x), arg_1);
    var var_1 = 580f;
    var var_2 = 0i << (~arg_3.x % 32u);
    let var_3 = Struct_1(1i, vec2<bool>(-902f >= _wgslsmith_f_op_f32(-1000f * arg_0), any(!vec4<bool>(arg_1.x, true, var_0.x, false))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_div_f32(-2474f, _wgslsmith_f_op_f32(-arg_0))) * arg_2) * _wgslsmith_f_op_f32(exp2(arg_2)));
    return var_3.a;
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> vec2<bool> {
    var var_0 = true;
    var var_1 = ~func_3(_wgslsmith_f_op_f32(func_2()), select(vec2<bool>(true, true), arg_0.c.e.a.xx, arg_0.c.e.a.wy), arg_0.c.a.x, _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(9334u, u_input.b.x), _wgslsmith_mult_vec2_u32(u_input.b.zx, u_input.b.xz)), _wgslsmith_clamp_vec2_u32(max(u_input.b.zx, vec2<u32>(arg_0.a, u_input.b.x)), u_input.b.yz, reverseBits(vec2<u32>(u_input.b.x, 34961u)))));
    let var_2 = Struct_4(4771u, _wgslsmith_mod_u32(18130u ^ ~arg_0.a, select(~(0u << (u_input.b.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0.b, 4294967295u) & vec3<u32>(0u, u_input.b.x, arg_0.a), ~vec3<u32>(arg_0.a, arg_0.a, u_input.a)), false)), arg_0.c, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1470f, arg_0.c.a.x))) * vec2<f32>(-1963f, -748f)))));
    let var_3 = arg_0.c;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c.a) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c.a.x)))), var_3.a.x, _wgslsmith_f_op_f32(-918f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1280f + var_3.a.x), -716f))));
    return select(vec2<bool>(false, select(var_2.c.d.x, true | all(var_2.c.c.a.xyx), select(any(arg_0.c.e.a.xx), !var_2.c.d.x, true))), !var_2.c.c.a.yz, !(!(!var_3.e.a.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(select(func_1(Struct_4(u_input.a, 1001u, Struct_3(vec3<f32>(997f, 1296f, -753f), -2147483647i, Struct_2(vec4<bool>(false, false, false, true)), vec4<bool>(false, false, false, true), Struct_2(vec4<bool>(false, false, true, true))), vec2<f32>(1000f, 1000f)), false), vec2<bool>(true, false), false), !func_1(Struct_4(u_input.b.x, 1u, Struct_3(vec3<f32>(-1750f, 443f, -461f), -59062i, Struct_2(vec4<bool>(false, false, true, false)), vec4<bool>(false, false, false, false), Struct_2(vec4<bool>(false, true, true, false))), vec2<f32>(266f, -240f)), true), func_1(Struct_4(4294967295u, u_input.a, Struct_3(vec3<f32>(1724f, 1021f, 1317f), -1i, Struct_2(vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, false), Struct_2(vec4<bool>(true, false, false, false))), vec2<f32>(-1000f, 482f)), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(Struct_4(4294967295u, u_input.b.x, Struct_3(vec3<f32>(670f, 2467f, -748f), 0i, Struct_2(vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, true), Struct_2(vec4<bool>(true, false, false, false))), vec2<f32>(1797f, -122f)), true)), vec2<bool>(!all(vec4<bool>(false, true, false, false)), true)), vec2<bool>(true, func_1(Struct_4(~16640u, 1u, Struct_3(vec3<f32>(2738f, 172f, -307f), 0i, Struct_2(vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, false), Struct_2(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1095f, 216f)))), true).x), select(vec2<bool>(true, true), func_1(Struct_4(4294967295u, 4294967295u, Struct_3(vec3<f32>(2107f, -133f, 410f), 2147483647i, Struct_2(vec4<bool>(true, false, false, false)), vec4<bool>(true, false, false, false), Struct_2(vec4<bool>(false, true, true, false))), vec2<f32>(-1706f, 976f)), all(vec2<bool>(false, false)) | false), all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)) || true));
    var var_1 = 0i;
    var var_2 = true;
    var_2 = var_0.x;
    var_0 = func_1(Struct_4(u_input.b.x, 4294967295u, Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(round(614f)), -668f), _wgslsmith_add_i32(1i, -2147483647i >> (1u % 32u)), Struct_2(vec4<bool>(true, true, true, true)), vec4<bool>(var_0.x, true, var_0.x == false, var_0.x == false), Struct_2(select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true)))), vec2<f32>(_wgslsmith_f_op_f32(select(-227f, _wgslsmith_f_op_f32(trunc(121f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(878f, -685f)))), true | var_0.x);
    var var_3 = Struct_4(~(~41998u), ~(~u_input.a), Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 349f, -299f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1321f, -1588f, 1256f)), any(vec4<bool>(var_0.x, false, true, true)))), vec3<f32>(-534f, -555f, -1600f), !select(var_0.x, false, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -15212i, -9016i), -vec3<i32>(0i, 1i, -2147483647i)) >> (_wgslsmith_add_u32(abs(32240u), _wgslsmith_mult_u32(u_input.a, 25632u)) % 32u), Struct_2(select(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x)), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x)), !select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), Struct_2(vec4<bool>(var_0.x, true, var_0.x & var_0.x, var_0.x || var_0.x))), vec2<f32>(-1416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2254f))))));
    var_3 = Struct_4(countOneBits(~var_3.b), ~u_input.b.x, var_3.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-337f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.c.a.x - var_3.d.x), -1235f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2656f, var_3.c.a.x), vec2<f32>(var_3.c.a.x, var_3.d.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1755f, -1875f)))))));
    let var_4 = ~vec4<u32>(var_3.b, ~56766u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, var_3.a, u_input.b.x, 83257u), vec4<u32>(var_3.b, 40115u, var_3.b, u_input.a)), 1u) ^ ~vec4<u32>(min(abs(11591u), var_3.b >> (u_input.a % 32u)), max(36380u, 0u), ~(~var_3.a), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.c.a.x - var_3.c.a.x), var_3.d.x)), 1122f))));
}

