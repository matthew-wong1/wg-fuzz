struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = vec2<bool>(any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false))), true);
    let var_1 = -1i;
    var var_2 = arg_0;
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.x + arg_0.c.x), -2507f), var_2.c.x) + _wgslsmith_f_op_vec2_f32(ceil(arg_0.c.xz))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0.b, 16004u), vec4<u32>(var_2.b, var_2.b, var_2.b, 59234u)) << ((vec4<u32>(arg_0.b, 0u, 0u, 1u) << (vec4<u32>(35501u, 42766u, 56930u, 84971u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(32402u, 4294967295u, 4294967295u, arg_0.b)), 83569u), arg_0.c);
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.c.x), arg_0.a.x)))), 3684u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(arg_0.c)))), vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(floor(var_2.a.x)), _wgslsmith_div_f32(-1000f, var_2.a.x)))), vec3<f32>(arg_0.a.x, var_2.a.x, arg_0.a.x))));
    return countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(36277i, var_1, abs(~(-26253i))), vec3<i32>(~(-var_1), u_input.c, u_input.a)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = select(all(vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), false, false)), select(_wgslsmith_mod_u32(arg_0.b, 1u), 23425u, select(true, all(vec3<bool>(false, false, false)), false)) != 4294967295u, !((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.c, 22638i, u_input.a), vec4<i32>(u_input.a, u_input.c, -31425i, u_input.a)) & 1i) > func_3(arg_0)));
    var var_1 = true;
    var_0 = true;
    var var_2 = ~(vec3<u32>(52497u, _wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, arg_0.b, 55304u), vec3<u32>(1u, arg_0.b, arg_0.b))), max(arg_0.b, arg_0.b)) | ((~vec3<u32>(u_input.b, arg_0.b, 15369u) << ((vec3<u32>(u_input.b, arg_0.b, 4294967295u) << (vec3<u32>(arg_0.b, arg_0.b, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u))) | _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b, 28708u, arg_0.b), vec3<u32>(u_input.b, u_input.b, 55444u)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b, 0u, 39836u), vec3<u32>(53456u, 1u, arg_0.b)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -143f))));
    return ~_wgslsmith_div_u32(1u & ~_wgslsmith_mult_u32(arg_0.b, 17257u), u_input.b);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> vec4<bool> {
    var var_0 = ~_wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.b, u_input.b) >> (~1u % 32u), u_input.b);
    var_0 = select(1u, u_input.b, !(!any(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_1, false, arg_0.a), vec3<bool>(false, true, true)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(810f, 1181f) - vec2<f32>(-1163f, 952f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(705f, 1917f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-684f, -575f))))), ~(~_wgslsmith_sub_u32(93265u, func_2(Struct_1(vec2<f32>(178f, -1378f), 17876u, vec3<f32>(213f, 463f, -353f))))), vec3<f32>(-1581f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1445f + -933f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(445f)), -275f), 1094f))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.x)));
    var_2 = _wgslsmith_f_op_f32(min(-169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1585f)))))));
    return !(!vec4<bool>(arg_1, 2147483647i <= u_input.c, arg_1, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!(!func_1(Struct_2(true), false))), vec4<bool>(!any(vec3<bool>(false, true, true)), false, any(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), false), false);
    var_0 = !(!(!(!(!vec4<bool>(var_0.x, var_0.x, false, false)))));
    var var_1 = vec2<i32>(-func_3(Struct_1(vec2<f32>(120f, 418f), u_input.b, vec3<f32>(318f, 2119f, -1107f))) << (30438u % 32u), -2147483647i);
    var var_2 = var_1.x;
    let var_3 = ~reverseBits(~0u);
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1526f, 1087f) * vec2<f32>(363f, -486f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1608f, 175f)))))), reverseBits(98655u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(195f * 504f) + _wgslsmith_f_op_f32(-337f + -1222f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-186f, -1000f), _wgslsmith_f_op_f32(ceil(-123f)), var_0.x)))));
    let var_5 = vec4<f32>(var_4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.a.x, _wgslsmith_f_op_f32(round(-588f))))), 1337f, 1941f);
    let var_6 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c.x, var_5.x, var_4.a.x, 918f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1303f, 1342f, -685f, var_5.x) - vec4<f32>(var_4.c.x, 1372f, var_4.a.x, var_4.a.x))))) - _wgslsmith_f_op_vec4_f32(-var_5)), _wgslsmith_mod_u32(~0u, _wgslsmith_mod_u32(4294967295u, ~var_4.b)), vec2<u32>(var_3, ~(~29364u)), var_4.a.x, var_4.c.x);
}

