struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), vec3<f32>(-992f, 1223f, -2556f), vec4<u32>(4294967295u, 1u, 1u, 1017u), false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<f32> {
    var var_0 = 28106u;
    var var_1 = u_input.c.x;
    var var_2 = Struct_2(_wgslsmith_sub_i32(u_input.c.x, ~u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1523f + global0.b.x) * _wgslsmith_f_op_f32(round(-897f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2408f + global0.b.x) - _wgslsmith_f_op_f32(trunc(1701f))))), _wgslsmith_div_f32(global0.b.x, 998f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global0.b.x))))));
    let var_3 = select(false, false, false);
    var_1 = ~2147483647i;
    return var_2.b;
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: i32, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-376f, -1000f, -638f, -634f))), vec4<f32>(_wgslsmith_f_op_f32(-1273f - global0.b.x), _wgslsmith_f_op_f32(global0.b.x - 345f), _wgslsmith_f_op_f32(global0.b.x * -1453f), 302f))) - vec4<f32>(1328f, global0.b.x, global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(global0.b.x + -775f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(101f)), -632f), global0.b.x, -456f)));
    var var_1 = Struct_2(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.c.yyx, -(~vec3<i32>(arg_3.x, 2147483647i, 0i))), -(1i | arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - _wgslsmith_f_op_f32(-global0.b.x)), global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-951f, global0.b.x) + _wgslsmith_f_op_f32(-299f - var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - _wgslsmith_f_op_f32(global0.b.x + 1436f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 687f, global0.b.x, 271f), vec4<f32>(var_0.x, var_0.x, -570f, -364f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(160f, var_0.x, var_0.x, -713f) + vec4<f32>(global0.b.x, 576f, 206f, var_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-715f, var_0.x, var_0.x, 1285f))) * vec4<f32>(1000f, global0.b.x, -167f, global0.b.x)))));
    var var_2 = Struct_2(countOneBits(0i), var_1.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_2.b.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1963f))), -408f, _wgslsmith_f_op_f32(f32(-1f) * -296f)), var_1.b, select(!select(vec4<bool>(false, true, arg_1, true), vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(false, global0.d, global0.d, global0.a.x)), select(vec4<bool>(false, false, arg_1, true), vec4<bool>(arg_1, arg_1, global0.e, arg_1), all(vec4<bool>(false, false, global0.e, global0.e))), !select(vec4<bool>(arg_1, true, global0.a.x, true), vec4<bool>(false, global0.e, false, arg_1), false)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b + var_1.b))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(round(720f)))), select(!vec4<bool>(true, true, arg_0.x == -22340i, false || arg_1), vec4<bool>(!arg_1, true, all(select(vec2<bool>(global0.e, true), global0.a, vec2<bool>(arg_1, true))), any(vec3<bool>(arg_1, false, true))), !(!vec4<bool>(global0.d, global0.d, global0.a.x, arg_1)))));
    let var_4 = !global0.a;
    return Struct_2(15544i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - 1772f)), global0.b.x, -804f, var_2.b.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_div_f32(1410f, 482f), _wgslsmith_f_op_f32(step(global0.b.x, var_1.b.x)), -494f) - var_1.b)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = vec2<bool>(true, global0.e);
    var_0 = global0.a;
    let var_1 = func_2(abs(u_input.c), global0.d, -_wgslsmith_mod_i32(0i ^ arg_0.a, -14779i), ~(vec3<i32>(50323i, _wgslsmith_mult_i32(1i, 2147483647i), -arg_0.a) << (global0.c.xxy % vec3<u32>(32u))));
    var_0 = vec2<bool>(global0.a.x, any(vec4<bool>(global0.a.x, global0.a.x, global0.d, select(false, var_0.x, false))));
    var var_2 = vec3<bool>(true, global0.e, true);
    return Struct_1(!select(!vec2<bool>(false, global0.d), select(select(var_2.zx, vec2<bool>(false, false), false), !vec2<bool>(global0.a.x, true), var_2.x & false), false), var_1.b.wwy, _wgslsmith_mult_vec4_u32(vec4<u32>(111262u << (global0.c.x % 32u), ~33100u, 1u, min(12285u, 4371u)) << (~vec4<u32>(4294967295u, u_input.b, 37066u, global0.c.x) % vec4<u32>(32u)), global0.c), global0.a.x & var_0.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_2(~u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(598f, global0.b.x, global0.b.x, global0.b.x) + vec4<f32>(global0.b.x, 507f, 214f, 317f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, 476f, global0.b.x, global0.b.x) - vec4<f32>(422f, -3096f, -466f, global0.b.x))))));
    global0 = Struct_1(vec2<bool>(true, global0.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)), global0.c, !(!(!all(global0.a))), true);
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, 52477i, u_input.c.x ^ u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, 2147483647i, u_input.a.x), u_input.c)), ~vec4<i32>(-(~u_input.a.x), u_input.a.x, 9261i, -1i));
    let var_1 = !(!func_1(Struct_2(51853i, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, 793f, global0.b.x, -992f) * vec4<f32>(-1205f, global0.b.x, global0.b.x, global0.b.x)))).a.x);
    global0 = func_1(Struct_2(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, -1905f, 1000f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-751f, 1830f, -1047f, global0.b.x))))))));
    var_0 = vec4<i32>(-(~var_0.x | ~(i32(-1i) * -1i)), 2147483647i, -1224i, i32(-1i) * -24922i);
    var_0 = (max(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-2147483647i, 2224i, u_input.c.x, -22912i), u_input.c), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), abs(select(vec4<i32>(0i, 0i, var_0.x, u_input.a.x), u_input.c, false))) | abs(_wgslsmith_add_vec4_i32(u_input.c, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, var_0.x, u_input.c.x, u_input.a.x), u_input.c)))) >> (~(~global0.c) % vec4<u32>(32u));
    var var_2 = func_2(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(2147483647i & var_0.x, abs(30813i), ~2147483647i, i32(-1i) * -u_input.a.x)), false, var_0.x & abs(-32555i), vec3<i32>(var_0.x, abs(_wgslsmith_add_i32(var_0.x, -u_input.a.x)), u_input.c.x));
    var_2 = func_2(-select(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 34672i, 18218i, -2147483647i), u_input.c) | u_input.c, vec4<i32>(64475i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(var_2.a, var_2.a)), 1i, -var_2.a), var_1), var_1, _wgslsmith_dot_vec3_i32(u_input.c.wxz, var_0.yzz << (global0.c.xyz % vec3<u32>(32u))), firstTrailingBit(firstTrailingBit(vec3<i32>(var_2.a, var_2.a, -20704i) | vec3<i32>(var_2.a, -30506i, var_2.a)) ^ -(~vec3<i32>(u_input.c.x, 0i, -8891i))));
    let x = u_input.a;
    s_output = StorageBuffer(min(global0.c, vec4<u32>(~32u, u_input.b, u_input.b, _wgslsmith_div_u32(1u, select(global0.c.x, global0.c.x, var_1)))), ~(~vec4<u32>(1204u, global0.c.x, 4294967295u, 20790u)) & global0.c, 0u);
}

