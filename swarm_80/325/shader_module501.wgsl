struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(max(15781u, u_input.a), arg_0, 4294967295u, _wgslsmith_sub_u32(4294967295u, arg_0)), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, arg_0, u_input.a, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 27516u, 1u, 0u), vec4<u32>(arg_0, 1u, 4294967295u, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1117f))) * _wgslsmith_f_op_f32(f32(-1f) * -1710f)), 1210f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(-491f))), _wgslsmith_f_op_f32(1019f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(866f)))))), (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(663f, -1010f)))) != 205f) || !any(vec2<bool>(false, false)), vec2<i32>(abs(u_input.b.x), -_wgslsmith_clamp_i32(_wgslsmith_add_i32(-90293i, u_input.b.x), -u_input.b.x, u_input.b.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, !var_0.c))));
    var_0 = Struct_1(~var_0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-261f, 342f, var_1.a, -1000f))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(var_0.b)))))), select(!(!vec4<bool>(false, var_0.c, false, var_0.c)), !select(vec4<bool>(true, var_0.c, var_0.c, true), vec4<bool>(true, var_0.c, var_0.c, var_0.c), vec4<bool>(var_0.c, false, true, var_0.c)), !select(vec4<bool>(false, false, false, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, false), true)))), false, _wgslsmith_add_vec2_i32(u_input.b.yw, vec2<i32>(~u_input.b.x, _wgslsmith_mod_i32(2147483647i, -3798i))));
    let var_2 = u_input.b.x;
    let var_3 = var_2;
    return ~(-18712i);
}

fn func_2(arg_0: i32) -> i32 {
    return func_3(~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a, u_input.a) | 74960u, u_input.a));
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = !(!(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(func_2(u_input.b.x) << (~(~u_input.a) % 32u), _wgslsmith_mult_i32(u_input.b.x, -2599i), -u_input.b.x), u_input.b.xyz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(-1719i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 25235u, u_input.a)) % 32u), ~u_input.b.x), -2147483647i, -_wgslsmith_div_i32(func_1(_wgslsmith_f_op_f32(-467f * -741f)), u_input.b.x), ~u_input.b.x);
    let var_1 = Struct_3(Struct_1(~_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.a, 4294967295u, 38118u, u_input.a), vec4<u32>(1u, 0u, 4294967295u, 4294967295u)), abs(vec4<u32>(u_input.a, u_input.a, 32939u, u_input.a))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1108f + 124f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-357f - 137f) - _wgslsmith_f_op_f32(abs(-795f))), _wgslsmith_f_op_f32(sign(-949f))), all(vec4<bool>(true, true, 1i >= u_input.b.x, true)), var_0.xz), Struct_1(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, u_input.a, 4294967295u, 4294967295u)), ~vec4<u32>(1u, 1u, 11217u, 1u) ^ ~vec4<u32>(4294967295u, u_input.a, 52554u, 0u)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1201f)), _wgslsmith_f_op_f32(sign(211f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 361f) * -671f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(268f + 476f))), _wgslsmith_f_op_f32(1479f * _wgslsmith_div_f32(-505f, 2253f))), true, u_input.b.wx), select(vec2<i32>(1i, -1314i), vec2<i32>(firstLeadingBit(var_0.x), _wgslsmith_add_i32(1i, -42967i)), all(vec2<bool>(any(vec3<bool>(false, false, true)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(416f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1617f, -133f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-372f + _wgslsmith_f_op_f32(-251f * 1293f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1209f, -214f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2073f - 1605f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -740f))))));
    var var_2 = true;
    var_2 = any(vec2<bool>(var_1.b.c, var_1.a.c));
    var var_3 = var_1.b;
    let var_4 = select(select(select(!select(vec4<bool>(var_3.c, var_3.c, false, var_3.c), vec4<bool>(false, false, var_1.a.c, var_1.a.c), false), vec4<bool>(any(vec2<bool>(false, true)), var_1.a.c, any(vec4<bool>(false, var_3.c, false, true)), !var_1.b.c), vec4<bool>(true, true, true, true)), vec4<bool>(true == var_3.c, !(!var_3.c), !select(true, false, var_3.c), !(!var_3.c)), !select(!vec4<bool>(false, var_1.a.c, var_3.c, true), vec4<bool>(true, false, true, false), var_3.c)), select(select(vec4<bool>(var_3.c, var_1.b.c, true, var_1.a.c), !vec4<bool>(var_1.b.c, false, false, true), var_3.c), vec4<bool>(var_1.b.c, var_1.a.c, var_3.c, false), var_3.c), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(0i, ~(-abs(-2147483647i)), -42406i), vec4<u32>(~13533u, 1u, u_input.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(18996u, _wgslsmith_add_u32(var_1.b.a.x, var_1.b.a.x)), _wgslsmith_mod_u32(var_3.a.x, 4294967295u))), vec2<f32>(var_3.b.x, _wgslsmith_f_op_f32(-var_1.b.b.x)));
}

