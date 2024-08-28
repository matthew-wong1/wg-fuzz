struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
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

var<private> global0: array<vec3<f32>, 24>;

var<private> global1: Struct_1 = Struct_1(i32(-2147483648), false, 47829u, 63113u, vec4<i32>(0i, 25800i, -10818i, 42892i));

var<private> global2: Struct_1 = Struct_1(1i, true, 1u, 1u, vec4<i32>(-82912i, 1i, -19931i, -43806i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    global2 = arg_1;
    return global1.c;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    let var_1 = select(20450i, global1.a, !all(vec3<bool>(all(vec2<bool>(false, false)), false, true)));
    var var_2 = Struct_1(var_1, any(select(vec4<bool>(false, false, var_0.b != false, all(arg_0)), select(select(arg_0, arg_0, global2.b), select(vec4<bool>(arg_1.b, true, false, true), arg_0, arg_0), arg_0), any(!vec2<bool>(global1.b, global2.b)))), 5086u, func_2(_wgslsmith_div_i32(57666i, _wgslsmith_dot_vec2_i32(arg_1.e.yz, vec2<i32>(var_0.a, global2.a))), Struct_1(global2.e.x, all(vec4<bool>(false, true, var_0.b, false)), 16714u, ~8214u, vec4<i32>(global1.a, -12634i, var_1, 1i)), vec2<f32>(_wgslsmith_f_op_f32(1024f - -477f), _wgslsmith_f_op_f32(abs(-689f)))) >> (0u % 32u), arg_1.e);
    let var_3 = 0u;
    var var_4 = ~min(vec2<i32>(~(-22585i), _wgslsmith_div_i32(_wgslsmith_sub_i32(global2.a, var_0.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-30687i, var_2.a, var_1), var_0.e.xwz))), abs(global2.e.yw >> (firstTrailingBit(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))));
    return global1.e.x;
}

fn func_1() -> bool {
    let var_0 = Struct_1(global1.a, true, func_2(_wgslsmith_div_i32(u_input.c, 38251i), Struct_1(_wgslsmith_dot_vec4_i32(global2.e, vec4<i32>(global2.e.x, -1i, global1.e.x, -8710i) << (vec4<u32>(global2.d, 63922u, 1u, global1.d) % vec4<u32>(32u))), true, 1u, ~_wgslsmith_add_u32(u_input.b, global2.c), min(_wgslsmith_div_vec4_i32(global2.e, global1.e), vec4<i32>(-45027i, global1.a, global2.a, 18957i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1041f, -531f)))), 70531u, abs(vec4<i32>(func_3(vec4<bool>(false, true, false, global2.b), Struct_1(u_input.c, true, 40428u, 0u, global1.e)) & -global2.a, u_input.c, u_input.c, select(1i, -u_input.c, true))));
    var var_1 = -424f;
    let var_2 = ~u_input.b;
    let var_3 = global2.d;
    let var_4 = var_0;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(922f - 469f))))) == _wgslsmith_f_op_f32(f32(-1f) * -222f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<u32>(~(~global1.d), ~(~firstLeadingBit(4294967295u)), 1u, 4294967295u), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.b, global2.d, 44502u), ~vec4<u32>(9810u, global2.c, global1.c, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(55655u, 1u, global2.d, 1u), vec4<u32>(global2.d, global1.c, 4294967295u, 52317u), vec4<u32>(12935u, u_input.b, global2.c, 0u))) >> (abs(vec4<u32>(4294967295u, select(4294967295u, global1.d, true), u_input.d, global1.d)) % vec4<u32>(32u)), select(vec4<bool>(true, global1.b, false, global2.b), vec4<bool>(func_1(), true, !global2.b, true), vec4<bool>(true, true, all(vec3<bool>(global2.b, global2.b, false)), false)));
    var var_1 = Struct_1(-1i, any(select(select(vec4<bool>(true, global2.b, true, global2.b), select(vec4<bool>(global2.b, false, global2.b, global1.b), vec4<bool>(global1.b, false, global1.b, true), global1.b), global2.b & global1.b), vec4<bool>(!global1.b, global1.b, false, true), global2.b)), 0u, global2.c, vec4<i32>(-u_input.c, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c & global1.a, 1i), abs(1i)), _wgslsmith_clamp_i32(-min(1i, u_input.c), u_input.c, firstLeadingBit(firstLeadingBit(u_input.c))), -1i));
    var var_2 = var_1.c;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    global2 = Struct_1(40569i, true, _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~var_0, var_0), func_2(func_3(vec4<bool>(var_1.b, var_1.b, false, global2.b), Struct_1(23478i, false, 1128u, 77069u, vec4<i32>(-21465i, var_1.a, global1.e.x, 0i))), Struct_1(-6844i, true, global2.d, var_1.d, var_1.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1176f, 1983f)))), ~_wgslsmith_clamp_u32(~global2.c, ~global2.c, global1.c)), u_input.d >> (u_input.b % 32u), _wgslsmith_div_vec4_i32(global2.e, global1.e));
    var var_4 = Struct_1(var_1.e.x, !global1.b, global2.c | 1u, ~_wgslsmith_sub_u32(~1u, 1u), global1.e);
    let var_5 = Struct_1(func_3(vec4<bool>(global2.b, true, !all(vec2<bool>(true, global1.b)), var_4.b), Struct_1(-2147483647i, select(-8481i, 15421i, var_1.b) < -4350i, 1u, var_4.d, -min(var_1.e, vec4<i32>(global1.e.x, global2.a, -3641i, u_input.c)))), 12135u > ~var_0.x, var_0.x, var_4.c, vec4<i32>(func_3(!vec4<bool>(var_1.b, false, var_1.b, false), Struct_1(u_input.c, var_1.b, 1u, global1.d, -vec4<i32>(29574i, var_4.e.x, -23909i, var_1.e.x))), _wgslsmith_dot_vec4_i32(var_1.e << (var_0 % vec4<u32>(32u)), ~var_4.e), -_wgslsmith_dot_vec3_i32(var_4.e.xxx | global1.e.wwx, vec3<i32>(-550i, -2147483647i, var_1.a)), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2062f - _wgslsmith_f_op_f32(round(var_3))) - _wgslsmith_f_op_f32(-var_3)) - var_3));
}

