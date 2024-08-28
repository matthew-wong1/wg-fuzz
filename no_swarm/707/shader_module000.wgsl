struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = ~1u << (u_input.b % 32u);
    var var_1 = Struct_4(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b, arg_0.b))) * 465f)), _wgslsmith_sub_i32(~u_input.a.x, firstTrailingBit(-5822i)));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b))), -539f));
    var_1 = arg_0;
    let var_3 = !select(vec2<bool>(arg_2, !arg_2), !select(vec2<bool>(arg_2, true), vec2<bool>(false, arg_2), select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), arg_2)), select(select(!vec2<bool>(arg_2, false), !vec2<bool>(true, arg_2), all(vec2<bool>(true, true))), select(!vec2<bool>(true, arg_2), !vec2<bool>(arg_2, false), !vec2<bool>(arg_2, arg_2)), false));
    return reverseBits(4294967295u);
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = false;
    let var_1 = Struct_2(!select(vec2<bool>(var_0, var_0), arg_1.c, !(!arg_1.c)), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 + arg_1.b), 463f))))), ~1u, vec3<bool>((func_3(Struct_4(u_input.a.xz, -1180f, 19605i), arg_1.b, arg_1.d) >> (~arg_1.a % 32u)) > ~14348u, !arg_1.c.x, any(vec3<bool>(!var_0, true, true))));
    let var_2 = Struct_5(u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b + arg_0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b)) * _wgslsmith_f_op_f32(step(393f, -704f))))), arg_1.c, any(vec3<bool>(!var_1.a.x || false, true, var_1.d.x)));
    let var_3 = Struct_4(vec2<i32>(arg_2.a, 1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1472f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(211f)) + var_2.b)))), 57257i);
    let var_4 = var_1;
    return select(!vec3<bool>(true, true, any(select(var_4.d, vec3<bool>(false, true, var_4.d.x), false))), var_1.d, !(!var_1.d));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    var var_0 = false;
    var_0 = true;
    let var_1 = select(!func_2(-1798f, Struct_5(u_input.b & 4294967295u, _wgslsmith_f_op_f32(round(-565f)), vec2<bool>(true, true), true), Struct_3(1i)), vec3<bool>(false, true == all(vec4<bool>(true, true, true, false)), true), select(true, all(vec2<bool>(true, true)), false) & (countOneBits(u_input.e.x) < 4294967295u));
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-130f * arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), 276f, 420f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(u_input.d, i32(-1i) * -_wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, 50591i), max(u_input.a.x, -1i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-573f, -1375f, 251f, _wgslsmith_div_f32(235f, 132f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1256f, -1329f, 1000f, -158f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(round(-2498f))))));
    let var_2 = Struct_2(select(vec2<bool>(false, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))), select(vec2<bool>(false, all(vec2<bool>(false, false))), func_2(var_1.x, Struct_5(u_input.e.x, -318f, vec2<bool>(true, true), false), Struct_3(2147483647i)).yx, vec2<bool>(false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1061f) - _wgslsmith_div_f32(var_1.x, var_1.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1273f, _wgslsmith_f_op_vec4_f32(func_1(229f)).x)))) - 352f), 0u, !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), vec3<bool>(true, 9989u <= u_input.b, true), vec3<bool>(all(vec4<bool>(true, true, false, true)), false, false)));
    var_0 = ~(-_wgslsmith_mod_i32(u_input.a.x, select(u_input.a.x, u_input.a.x, var_2.d.x) << (_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.e.yy) % 32u)));
    let var_3 = ~(-1i);
    var_0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-145f, -243f, -168f, -823f))))), _wgslsmith_f_op_vec4_f32(exp2(var_1)), select(vec4<bool>(all(var_2.d.xx), true, true, var_2.d.x), vec4<bool>(true, var_2.d.x, var_2.a.x, all(var_2.a)), all(var_2.a)))), u_input.a.yw, _wgslsmith_f_op_f32(f32(-1f) * -443f), _wgslsmith_f_op_f32(-var_1.x));
}

