struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = u_input.c.x;
    var var_1 = -424f;
    let var_2 = abs(u_input.c);
    var var_3 = Struct_1(20786u, any(vec4<bool>(true, false, true, true)) | true);
    var var_4 = Struct_2(Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(var_0, 5619u)), 1u), any(vec3<bool>(var_3.b, true, false)) && false), Struct_1(30312u, !all(!vec2<bool>(var_3.b, var_3.b))), 40043u, Struct_1(var_3.a, true), _wgslsmith_mult_vec2_u32(~(~(var_2.xz << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)))), var_2.zz));
    return vec2<bool>(true, false);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> u32 {
    let var_0 = any(vec2<bool>(true, !arg_1.x));
    var var_1 = Struct_3(Struct_1(u_input.c.x, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 323f, 1083f, arg_0) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(262f, -1463f, arg_0, -1687f)))))));
    var var_2 = _wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.d)), vec3<i32>(u_input.b | (u_input.a | 0i), 2147483647i, _wgslsmith_clamp_i32(u_input.a, _wgslsmith_mod_i32(33297i, 8697i), ~u_input.d))) >= _wgslsmith_div_i32(u_input.d, -u_input.d);
    var_1 = Struct_3(Struct_1(4294967295u, all(select(select(vec4<bool>(false, true, var_1.a.b, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, var_0, var_0), var_0), select(vec4<bool>(var_1.a.b, false, true, arg_1.x), vec4<bool>(true, false, false, true), vec4<bool>(arg_1.x, arg_1.x, true, true)), func_3().x))), _wgslsmith_f_op_vec4_f32(-var_1.b));
    var_2 = true;
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(vec2<u32>(1u, 0u) << (u_input.c.yx % vec2<u32>(32u))), abs(vec2<u32>(u_input.c.x, var_1.a.a))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.yx, vec2<u32>(1u, 91704u)), select(vec2<u32>(u_input.c.x, 67263u), u_input.c.zz, var_0)) ^ u_input.c.xz);
}

fn func_2() -> Struct_1 {
    var var_0 = 1i <= u_input.b;
    let var_1 = _wgslsmith_add_u32(22871u, func_4(_wgslsmith_f_op_f32(-1025f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(706f, -1082f)) - _wgslsmith_f_op_f32(select(883f, 145f, false)))), func_3()));
    var var_2 = true;
    let var_3 = Struct_1(1u >> (_wgslsmith_add_u32(~(0u << (var_1 % 32u)), 1u) % 32u), func_3().x | false);
    return Struct_1(u_input.c.x, var_3.b);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = Struct_2(func_2(), Struct_1(~var_0.a, any(!vec3<bool>(var_0.b, true, var_0.b))), 1u, func_2(), ~vec2<u32>(_wgslsmith_clamp_u32(84115u, firstLeadingBit(var_0.a), 25538u), 8033u));
    var var_2 = vec2<f32>(1983f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2961f))), _wgslsmith_f_op_f32(round(1345f)))));
    let var_3 = func_2();
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -297f, -1069f, var_2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -225f, var_2.x))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(762f, -596f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-328f, -380f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-196f, -1044f) * vec2<f32>(-1315f, 1342f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 749f))))))) * vec2<f32>(_wgslsmith_f_op_f32(-324f + _wgslsmith_f_op_f32(-1451f - 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1051f - 172f) + -847f))));
    var var_1 = func_1();
    var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-389f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var_1 = func_1();
    let var_3 = var_1.b;
    let var_4 = _wgslsmith_f_op_f32(floor(-1267f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1000f, 1478f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(150f)), _wgslsmith_f_op_f32(817f + 139f)), _wgslsmith_f_op_f32(round(-423f)))), vec3<i32>(-1i) * -(~(~vec3<i32>(u_input.a, u_input.d, u_input.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-731f, _wgslsmith_f_op_f32(f32(-1f) * -691f))));
}

