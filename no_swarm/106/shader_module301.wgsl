struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_2,
    d: bool,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> Struct_5 {
    let var_0 = !vec4<bool>((true || (1u <= u_input.b)) && all(vec3<bool>(true, true, true)), false, select(-u_input.e, ~1i, all(vec2<bool>(false, true))) < ~(u_input.e >> (u_input.a.x % 32u)), u_input.d >= (u_input.d >> (u_input.b % 32u)));
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1311f, 395f, -507f) + vec3<f32>(-1581f, 552f, -568f)))))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = array<Struct_1, 3>();
    return 1u;
}

fn func_1() -> Struct_4 {
    global0 = array<Struct_1, 3>();
    let var_0 = func_2();
    var var_1 = !(!any(vec4<bool>(true, true, true, true)));
    let var_2 = global0[_wgslsmith_index_u32(~u_input.a.x, 3u)];
    var var_3 = 1u;
    return Struct_4(Struct_3(vec3<u32>(func_3(Struct_3(vec3<u32>(4294967295u, u_input.a.x, 40105u), 39620i, vec4<i32>(u_input.c.x, -99648i, -19275i, u_input.e))), 58639u, u_input.a.x), u_input.c.x, -(~(~vec4<i32>(2147483647i, u_input.c.x, u_input.e, 26839i)))), !select(vec3<bool>(var_2.a.x && false, true, u_input.d <= -12886i), vec3<bool>(var_2.a.x, !var_2.a.x, true), select(vec3<bool>(var_2.a.x, true, false), vec3<bool>(var_2.a.x, false, true), !vec3<bool>(var_2.a.x, true, true))), Struct_2(u_input.a.x, _wgslsmith_mult_vec3_u32(vec3<u32>(12665u, u_input.a.x & 1u, u_input.a.x & 26372u), ~vec3<u32>(28237u, 14452u, u_input.a.x) | (vec3<u32>(u_input.b, 4294967295u, u_input.b) | vec3<u32>(0u, u_input.a.x, 4294967295u))), Struct_1(select(var_2.a, select(vec2<bool>(var_2.a.x, true), vec2<bool>(var_2.a.x, var_2.a.x), true), u_input.e >= 0i)), 39089u ^ reverseBits(u_input.b | 39750u), vec4<bool>((-528f > var_0.a.x) || (false || var_2.a.x), !var_2.a.x, true | var_2.a.x, ~(-23561i) < u_input.d)), var_2.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -497f), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, 1000f) - var_0.a.x), -1007f)));
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> Struct_3 {
    let var_0 = all(select(vec4<bool>(true, true, (arg_1.a.a.x != u_input.a.x) && true, any(!vec2<bool>(arg_1.c.e.x, arg_1.b.x))), vec4<bool>(true, false, all(arg_1.b) == arg_1.c.c.a.x, arg_1.c.c.a.x), !((1u == u_input.a.x) && all(arg_1.c.e))));
    let var_1 = arg_1.c;
    let var_2 = Struct_2(_wgslsmith_mult_u32(41883u, ~(~arg_1.a.a.x)), min(vec3<u32>(25854u, func_1().a.a.x, 39901u), abs(reverseBits(arg_1.a.a >> (arg_1.a.a % vec3<u32>(32u))))), global0[_wgslsmith_index_u32(~1u, 3u)], ~select(19147u, 139807u, func_1().c.e.x), func_1().c.e);
    let var_3 = func_2();
    let var_4 = vec4<u32>(var_2.b.x, _wgslsmith_dot_vec3_u32(~var_2.b, ~(~(~arg_1.a.a))), ~4294967295u, _wgslsmith_dot_vec2_u32(select(var_1.b.xx, vec2<u32>(arg_1.c.b.x, 4294967295u), var_2.c.a), abs(_wgslsmith_div_vec2_u32(vec2<u32>(7173u, var_2.d), u_input.a) | vec2<u32>(4294967295u, var_2.a))));
    return Struct_3(abs(~(~vec3<u32>(u_input.b, var_4.x, var_4.x) << (~vec3<u32>(34043u, u_input.b, var_4.x) % vec3<u32>(32u)))), _wgslsmith_dot_vec3_i32(arg_1.a.c.zzw, func_1().a.c.zzy), -abs(~vec4<i32>(arg_1.a.b, u_input.e, 1i, u_input.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-152f - -1159f), -964f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -597f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1265f, -694f)) - vec2<f32>(-1183f, -886f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(867f, 1877f) * vec2<f32>(-1386f, -1000f)), vec2<f32>(-1776f, 222f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-610f, 127f)), _wgslsmith_f_op_f32(f32(-1f) * -511f))), false)));
    var var_1 = func_4(-1013f, func_1());
    global0 = array<Struct_1, 3>();
    let var_2 = true;
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-704f, _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x))) * vec2<f32>(-257f, var_0.x)), any(!vec2<bool>(var_2, false))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -692f), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(40512u, vec2<i32>(func_4(_wgslsmith_f_op_f32(-var_0.x), func_1()).c.x, 14627i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, 1274f)) + _wgslsmith_f_op_f32(max(-1331f, -1400f))), _wgslsmith_f_op_f32(f32(-1f) * -1106f))) + 1295f), -reverseBits(abs(abs(34177i))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1457f) - vec2<f32>(377f, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -487f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-213f, -902f), vec2<f32>(var_0.x, -650f)), vec2<f32>(1302f, var_0.x)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(176f, var_0.x), 294f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-651f, var_0.x))), !(!vec2<bool>(var_2, var_2)))), select(func_1().b.xy, vec2<bool>(true, !var_2), select(any(vec4<bool>(var_2, var_2, var_2, true)), 1889f == var_0.x, !var_2)))));
}

