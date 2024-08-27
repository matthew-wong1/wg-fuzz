struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(1053f, 630f, 1000f, -1298f), vec4<f32>(-1575f, 917f, 963f, 818f), vec4<f32>(-143f, 894f, 1400f, -291f), vec4<f32>(-1181f, -781f, 1000f, 875f), vec4<f32>(1201f, 1000f, 1964f, 1564f), vec4<f32>(182f, -355f, -254f, -450f), vec4<f32>(451f, -238f, 388f, 891f), vec4<f32>(787f, -1337f, 1282f, 1585f), vec4<f32>(296f, -1776f, 697f, 1062f), vec4<f32>(-1641f, -1133f, -356f, 366f), vec4<f32>(380f, -983f, -958f, -1000f), vec4<f32>(1480f, -673f, -164f, -1073f), vec4<f32>(1193f, 1000f, -1797f, -191f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4) -> bool {
    let var_0 = arg_1.e.x;
    var var_1 = Struct_3(arg_2.a, select(select(vec3<bool>(all(vec2<bool>(true, false)), select(arg_1.d, true, arg_1.d), true), select(vec3<bool>(arg_1.a.x, arg_0, true), !vec3<bool>(arg_1.a.x, arg_1.a.x, false), arg_2.e <= 4294967295u), arg_0), !select(vec3<bool>(true, true, true), select(vec3<bool>(arg_2.a.d, true, false), vec3<bool>(true, arg_2.a.a.x, false), vec3<bool>(false, arg_2.a.a.x, true)), !vec3<bool>(arg_1.a.x, arg_2.a.d, false)), 1i >= u_input.a.x), arg_2.a);
    let var_2 = 4294967295u;
    var var_3 = arg_1;
    global0 = array<vec4<f32>, 13>();
    return any(vec2<bool>(!(true && var_1.a.a.x), true));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_2(select(!vec2<bool>(func_3(arg_0.d, arg_0, Struct_4(arg_0, vec2<u32>(u_input.c.x, u_input.b), vec2<u32>(u_input.c.x, u_input.b), vec3<i32>(-13682i, u_input.a.x, -18712i), u_input.c.x)), arg_0.a.x | arg_0.a.x), vec2<bool>(!(false && arg_0.a.x), select(true, all(vec4<bool>(arg_0.a.x, true, arg_0.a.x, true)), true)), true), arg_0.b, Struct_1(arg_0.b), all(arg_0.a), select(vec4<u32>(_wgslsmith_mod_u32(~1u, _wgslsmith_mult_u32(4294967295u, u_input.b)), ~firstTrailingBit(arg_0.e.x), countOneBits(4294967295u), 23021u), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 58432u, u_input.b, 22770u), vec4<u32>(0u, 1u, arg_0.e.x, arg_0.e.x))), select(select(vec4<bool>(false, false, false, arg_0.a.x), select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0.d, true, false, arg_0.d), vec4<bool>(true, true, arg_0.a.x, arg_0.a.x)), arg_0.a.x), select(vec4<bool>(true, false, false, false), vec4<bool>(arg_0.d, arg_0.a.x, arg_0.d, arg_0.d), arg_0.d == arg_0.a.x), all(vec3<bool>(arg_0.d, arg_0.d, arg_0.d)))));
    var var_1 = abs(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.e.x, 0u, 0u, 4294967295u), vec4<u32>(countOneBits(u_input.c.x), select(arg_0.e.x, var_0.e.x, true), _wgslsmith_dot_vec3_u32(arg_0.e.xzy, vec3<u32>(arg_0.e.x, 4294967295u, 1u)), 1u), ~vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 7048u) & vec4<u32>(4294967295u, 0u, u_input.b, u_input.b)), var_0.e));
    let var_2 = vec2<f32>(1f, 1f);
    let var_3 = -545f;
    var_1 = min(countOneBits(reverseBits(~arg_0.e)), arg_0.e);
    return 1u;
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_1(566f);
    var var_1 = var_0.a;
    var var_2 = Struct_2(vec2<bool>(!all(vec3<bool>(true, false, false)), _wgslsmith_add_u32(1u, func_2(Struct_2(vec2<bool>(true, true), 658f, Struct_1(-1349f), false, vec4<u32>(47202u, u_input.b, 9102u, u_input.c.x)))) < 1u), 297f, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(806f, _wgslsmith_f_op_f32(-974f + var_0.a))), var_0.a)), !((var_0.a <= var_0.a) != false) | any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(false, false))), countOneBits(~vec4<u32>(10183u, ~1065u, u_input.b, ~u_input.b)));
    global0 = array<vec4<f32>, 13>();
    let var_3 = u_input.a.x;
    return Struct_2(!select(select(select(var_2.a, vec2<bool>(false, var_2.a.x), var_2.a), vec2<bool>(true, true), var_2.a), !select(var_2.a, var_2.a, var_2.d), var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 1284f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(1055f - var_2.c.a)) * var_0.a)), true, _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(47200u, var_2.e.x), _wgslsmith_clamp_u32(~var_2.e.x, _wgslsmith_clamp_u32(u_input.b, 18459u, u_input.c.x), u_input.b), ~countOneBits(u_input.c.x), abs(4294967295u << (u_input.b % 32u))), vec4<u32>(32750u, ~u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.e.x, var_2.e.x, var_2.e.x), vec3<u32>(u_input.b, var_2.e.x, var_2.e.x)), ~_wgslsmith_add_u32(var_2.e.x, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 13>();
    global0 = array<vec4<f32>, 13>();
    var var_0 = u_input.a.x;
    let var_1 = func_1(~countOneBits(vec4<i32>(-2147483647i, countOneBits(-1i), -1i, _wgslsmith_mod_i32(39184i, 38301i))));
    var var_2 = var_1.e.x;
    let var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(~(~u_input.a), _wgslsmith_sub_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(-45746i, -1i, -1i, 7990i), u_input.a)) << (~vec4<u32>(63161u, u_input.b, 76991u, 1u) % vec4<u32>(32u))), u_input.a.x, ~u_input.a.x);
    let var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a);
}

