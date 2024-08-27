struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = 12994u >> (0u % 32u);
    let var_1 = countOneBits(~41935u);
    var var_2 = vec3<bool>((_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1893f, -364f)), _wgslsmith_f_op_f32(step(-413f, -2345f)))) < -948f) || select(false, true, true), true, (74194u >= ~var_1) & true);
    let var_3 = false;
    var_2 = vec3<bool>(false, -702f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -685f), _wgslsmith_f_op_f32(f32(-1f) * -932f), !var_2.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 927f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(362f))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) * _wgslsmith_f_op_f32(f32(-1f) * -601f)))), -2142f);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_5(false, 58706u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(901f, -101f, 1069f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1945f, -860f, 161f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(583f, -268f, -739f), vec3<f32>(362f, 1094f, 157f)))))));
    var_0 = Struct_5(all(select(!select(vec3<bool>(false, arg_0, var_0.a), vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(false, var_0.a, false)), !(!vec3<bool>(arg_0, arg_0, true)), !select(vec3<bool>(true, false, arg_0), vec3<bool>(true, true, false), false))), 4294967295u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-711f + 591f), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(1593f - var_0.c.x))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.c.x);
    let var_2 = Struct_1(arg_1, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-u_input.b.x)))));
    let var_3 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_sub_u32(44707u, var_2.a.x), arg_1.x), var_2);
    return Struct_3(~var_2.a.yy, var_3);
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = func_2(!select(any(vec2<bool>(true, true)), firstLeadingBit(34254u) == _wgslsmith_add_u32(u_input.a, 92974u), true), vec4<u32>(9032u, ~abs(select(arg_0, 45166u, true)), ~arg_0, ~arg_0));
    var var_1 = var_0.b.b.a.yy;
    let var_2 = 1u;
    let var_3 = vec4<i32>(i32(-1i) * -5600i, -16991i, -(~_wgslsmith_mod_i32(-46023i, u_input.b.x)), 27771i) ^ vec4<i32>(_wgslsmith_clamp_i32(max(2147483647i << (0u % 32u), -2147483647i), ~(-u_input.b.x), _wgslsmith_clamp_i32(~u_input.b.x, _wgslsmith_add_i32(1i, u_input.b.x), 0i)), -2147483647i, 0i, -13139i);
    let var_4 = ~max(var_2, 19904u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1556f) * -789f) - _wgslsmith_f_op_f32(1190f + _wgslsmith_f_op_f32(f32(-1f) * -273f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_u32(u_input.c << (1u % 32u), u_input.a))), -3978f)));
    var_0 = 446f;
    var var_1 = ~u_input.b.x;
    var var_2 = func_2(all(select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)), true)), _wgslsmith_div_vec4_u32(vec4<u32>(abs(u_input.c), _wgslsmith_clamp_u32(14930u, func_2(false, vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.a)).a.x, 16655u), _wgslsmith_sub_u32(u_input.c, max(u_input.c, u_input.c)), ~countOneBits(34753u)), max(min(vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c) & vec4<u32>(u_input.c, 91183u, 1u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, 0u)), vec4<u32>(~u_input.a, ~u_input.a, ~u_input.a, countOneBits(48845u))))).b;
    var_1 = ~(-_wgslsmith_clamp_i32(-1i, select(i32(-1i) * -1i, ~u_input.b.x, false), 35365i));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(round(var_2.b.b.x)));
    var_2 = Struct_2(_wgslsmith_dot_vec4_u32(var_2.b.a, var_2.b.a), Struct_1(var_2.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.b.x, 702f)))));
    var_2 = Struct_2(abs(24321u & _wgslsmith_sub_u32(1u, 27449u ^ u_input.c)), Struct_1(vec4<u32>(0u, reverseBits(27981u), ~var_2.b.a.x, abs(106194u)) & (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_2.b.a.x, 1u, 4294967295u), vec4<u32>(var_2.b.a.x, 1u, var_2.b.a.x, 0u), var_2.b.a) >> (~var_2.b.a % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.b.b)) * var_2.b.b))));
    let var_4 = 35669u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(0u, var_2.b.a.x) & _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_2.b.a, abs(vec4<u32>(0u, 26226u, 25665u, u_input.c))), vec4<u32>(select(var_2.b.a.x, 1u, true), _wgslsmith_add_u32(6391u, 1u), var_2.a, var_4)), _wgslsmith_add_u32(u_input.c, u_input.c));
}

