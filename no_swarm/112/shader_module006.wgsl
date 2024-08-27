struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = arg_2;
    var var_1 = vec3<bool>(any(select(vec3<bool>(false, arg_2.b.x < -399f, var_0.a), !(!vec3<bool>(var_0.a, true, arg_2.a)), vec3<bool>(arg_0, !arg_2.a, true))), true, u_input.c.x <= countOneBits(~u_input.b));
    var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-962f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(122f, 221f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var_2 = vec2<f32>(-137f, _wgslsmith_f_op_f32(-arg_2.b.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), var_2.x)));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    var var_0 = Struct_1(arg_0 <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(true, vec2<i32>(2147483647i, u_input.a.x), Struct_1(true, vec2<f32>(978f, -335f)))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1300f, -569f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(352f, arg_0), vec2<f32>(arg_0, arg_0), false))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1534f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x))))));
    var var_2 = Struct_1(var_0.a, var_0.b);
    let var_3 = Struct_1(all(!select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(var_2.a, var_2.a, false, true), vec4<bool>(var_0.a, true, true, true))) && !var_2.a, vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + 191f), 1510f));
    let var_4 = var_3;
    return vec4<u32>(~(~(~_wgslsmith_div_u32(u_input.b, 67798u))), ~(~countOneBits(u_input.b)), 4294967295u, countOneBits(u_input.b));
}

fn func_1() -> vec4<i32> {
    var var_0 = ~u_input.b;
    var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(_wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c) & u_input.c), vec4<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, u_input.b, 77733u)), ~u_input.b, _wgslsmith_mult_u32(1u, 1u))), func_2(304f));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1020f, -850f, 156f, 1326f) * vec4<f32>(-149f, -1171f, -1604f, -721f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2198f, 169f, 200f, 189f) - vec4<f32>(1030f, -223f, 177f, -102f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(385f, 1065f, 297f, -723f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1203f, -205f, 949f) + vec4<f32>(265f, 1257f, -299f, -1222f))))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(743f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -602f) + _wgslsmith_f_op_f32(-1246f - -459f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(122f * -767f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1174f, 958f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(659f, 143f, -964f, 536f)))));
    var_0 = 1u;
    let var_2 = !vec4<bool>(select(false, true, _wgslsmith_f_op_f32(floor(1244f)) > _wgslsmith_f_op_f32(-var_1.x)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, true, false)))), all(vec2<bool>(select(false, true, false), u_input.d < u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1682f)) * var_1.x) <= var_1.x);
    return _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 33793i << (_wgslsmith_mod_u32(u_input.b, u_input.c.x) % 32u), u_input.a.x, -u_input.a.x), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.d, u_input.d)), ~(-48489i)), 0i, u_input.a.x, _wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, u_input.d), u_input.a.x)), _wgslsmith_add_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-5031i, u_input.a.x, -2147483647i, 2147483647i), vec4<i32>(0i, -2147483647i, u_input.a.x, u_input.d)), firstLeadingBit(~vec4<i32>(2147483647i, u_input.d, 1i, -1i)))), -(vec4<i32>(_wgslsmith_add_i32(63284i, 0i), 1i, 2147483647i, abs(0i)) & firstLeadingBit(vec4<i32>(2147483647i, u_input.d, -2147483647i, -41597i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(32121u, u_input.c.x), 8501u);
    let var_1 = max(min(~vec4<i32>(-1i, u_input.a.x, 0i, u_input.a.x) ^ ~vec4<i32>(u_input.a.x, -2703i, u_input.a.x, 10282i), vec4<i32>(firstLeadingBit(-u_input.d), u_input.d, u_input.d, reverseBits(_wgslsmith_mult_i32(u_input.a.x, 9937i)))), vec4<i32>(-1i) * -func_1());
    var var_2 = _wgslsmith_mod_vec3_u32(select(firstTrailingBit(~vec3<u32>(4294967295u, 1u, var_0.x)), vec3<u32>(1u, ~u_input.b, u_input.b), true) | u_input.c.wxz, vec3<u32>(_wgslsmith_add_u32(min(0u, var_0.x), 38287u ^ var_0.x), _wgslsmith_div_u32(u_input.c.x, ~u_input.b), ~u_input.b) ^ ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 1u, 32477u), u_input.c.yzx)));
    var_2 = u_input.c.wzx;
    var var_3 = select(abs(~_wgslsmith_mult_u32(var_2.x, var_0.x)), ~(~abs(var_2.x)), !(_wgslsmith_clamp_i32(u_input.d, 0i, 24065i) <= min(u_input.d, -21235i))) == u_input.b;
    var var_4 = (-1i & _wgslsmith_sub_i32(~(~(-2147483647i)), func_1().x)) << (664u % 32u);
    var_4 = u_input.d;
    var var_5 = Struct_1(true, vec2<f32>(1f, 1f));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(1i, ~firstTrailingBit(u_input.a.x)));
}

