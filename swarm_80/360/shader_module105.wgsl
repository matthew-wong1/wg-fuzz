struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(reverseBits(countOneBits(select(u_input.b, ~arg_2.a, any(vec3<bool>(arg_2.e, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.b, -1179f))), arg_3.d.x, -arg_2.d, true);
    let var_1 = arg_2.d.yw;
    let var_2 = Struct_1(arg_3.a, 777f, _wgslsmith_div_i32(u_input.e, _wgslsmith_div_i32(firstTrailingBit(-2147483647i), i32(-1i) * -2323i)) & 1i, vec4<i32>(arg_2.c, 0i, arg_3.c, ~arg_3.c), !(_wgslsmith_div_f32(-139f, _wgslsmith_f_op_f32(min(410f, 1011f))) < arg_2.b));
    return !select(select(vec2<bool>(all(vec2<bool>(true, arg_3.e)), arg_3.e | false), !select(vec2<bool>(true, true), vec2<bool>(var_0.e, false), arg_3.e), !(!vec2<bool>(var_0.e, true))), vec2<bool>(true, !(!arg_2.e)), false);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))))));
    var_0 = arg_1.x;
    var var_1 = -_wgslsmith_add_i32(-8834i, _wgslsmith_add_i32(arg_2, arg_3.x));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(495f))));
    var var_2 = select(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), all(vec2<bool>(true, true))), arg_1.x > arg_1.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + -119f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -508f)));
}

fn func_1() -> Struct_1 {
    var var_0 = 252f;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1867f, 1102f, -161f)))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-281f - -1776f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f * -473f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1451f - 872f)) + _wgslsmith_f_op_f32(select(-767f, _wgslsmith_f_op_f32(ceil(-1014f)), true)))));
    var var_2 = !(!(!(!func_2(vec3<f32>(var_1.x, var_1.x, 268f), vec3<f32>(-407f, -1000f, 784f), Struct_1(u_input.d.yx, -217f, u_input.c.x, vec4<i32>(-1i, u_input.c.x, u_input.a.x, 2147483647i), true), Struct_1(vec2<u32>(u_input.b.x, u_input.d.x), 1175f, 1i, vec4<i32>(-1i, u_input.a.x, u_input.e, -29523i), true)))));
    var var_3 = u_input.d.x < 72726u;
    return Struct_1(abs(firstTrailingBit(u_input.b)), _wgslsmith_f_op_f32(func_3(select(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.d.x), vec2<u32>(10961u, 0u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.wy, vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b, u_input.b), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -833f, -1579f), vec3<f32>(var_1.x, var_1.x, -159f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2407f, 555f, var_1.x), vec3<f32>(var_1.x, 874f, var_1.x), var_2.x)), Struct_1(vec2<u32>(17091u, 0u), 1036f, u_input.e, vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 17779i), var_2.x), Struct_1(u_input.b, var_1.x, u_input.c.x, vec4<i32>(-31111i, u_input.c.x, 24209i, u_input.c.x), var_2.x))), var_1.xx, 17661i, u_input.c)), abs(u_input.e), reverseBits(vec4<i32>(1i, 23107i, u_input.c.x, -64150i)), true);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~(~vec3<u32>(arg_0.a.x, 4294967295u, 4294967295u) ^ _wgslsmith_mod_vec3_u32(u_input.d.zyw, vec3<u32>(~1u, 4294967295u, 0u)));
    var_0 = vec3<u32>(40421u, abs(abs(var_0.x)), _wgslsmith_mod_u32(u_input.b.x & ~u_input.d.x, 1u));
    var_0 = ~countOneBits(u_input.d.yxz);
    var_0 = _wgslsmith_sub_vec3_u32(u_input.d.xxw, ~(~vec3<u32>(countOneBits(u_input.d.x), 1u, _wgslsmith_sub_u32(arg_0.a.x, 4294967295u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    var var_1 = func_1();
    var var_2 = func_1();
    let var_3 = !(!func_2(vec3<f32>(_wgslsmith_f_op_f32(-var_2.b), var_1.b, _wgslsmith_f_op_f32(-var_2.b)), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.b)), _wgslsmith_f_op_f32(select(var_1.b, -442f, false)), 143f), func_4(func_4(Struct_1(vec2<u32>(59335u, 4294967295u), -351f, u_input.c.x, vec4<i32>(var_0.d.x, -50135i, -5212i, -14826i), var_2.e))), func_1()));
    let var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~countOneBits(~u_input.b), _wgslsmith_div_vec2_u32(var_2.a, ~vec2<u32>(var_0.a.x, 1u))), ~u_input.d.wz);
    var var_5 = vec3<u32>(6215u, u_input.d.x, var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.wyz, -57477i, -var_1.d.yz, min(u_input.d, _wgslsmith_div_vec4_u32(abs(u_input.d), vec4<u32>(~var_1.a.x, _wgslsmith_clamp_u32(50786u, var_2.a.x, 4294967295u), var_1.a.x, max(0u, var_4)))));
}

