struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_2,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(317f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), 1462f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * 1000f));
    let var_1 = Struct_3(max(~firstLeadingBit(u_input.c.x << (4294967295u % 32u)), u_input.c.x), Struct_1(_wgslsmith_dot_vec2_u32(abs(u_input.c), _wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(28837u, 33310u)) & ~u_input.c)), u_input.c.x, Struct_2(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(true, false, false, arg_1)), vec4<bool>(true, arg_1, all(vec3<bool>(false, false, arg_1)), true), arg_1), select(!select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1)), !vec4<bool>(arg_1, false, true, true), all(vec4<bool>(arg_1, arg_1, arg_1, arg_1))), select(select(vec4<bool>(true, true, true, arg_1), vec4<bool>(true, true, true, true), arg_1), !(!vec4<bool>(arg_1, true, false, true)), !(!vec4<bool>(arg_1, arg_1, false, true)))), ~vec4<u32>(u_input.c.x, (u_input.c.x & 60900u) >> (~u_input.c.x % 32u), ~max(1u, u_input.c.x), 21612u));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 - -657f))), -872f)), arg_0);
    let var_2 = arg_0;
    return -693f;
}

fn func_2() -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(928f))) * _wgslsmith_f_op_f32(f32(-1f) * -150f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-163f, _wgslsmith_f_op_f32(func_3(302f, false))))) - _wgslsmith_f_op_f32(902f + 1f)));
    var var_1 = Struct_2(vec4<bool>(true, true, select(select(true, true, true), true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)))), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.c.x < 1u, false, any(vec3<bool>(true, false, false)), var_0.x < var_0.x), -1280f <= _wgslsmith_f_op_f32(-var_0.x)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))) & any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), vec4<bool>(any(vec2<bool>(true, false)) | (_wgslsmith_add_i32(-55021i, u_input.b) > firstTrailingBit(12570i)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), all(vec3<bool>(select(false, true, true), true, select(true, true, false))), any(vec2<bool>(true, false)) || (select(true, false, true) || true)));
    var var_2 = 1000f <= var_0.x;
    let var_3 = ~(~abs(u_input.c.x));
    let var_4 = reverseBits(u_input.a);
    return 1u | _wgslsmith_dot_vec3_u32((_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.c.x), vec3<u32>(var_3, var_3, var_3)) ^ max(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4694u, 4294967295u, 4294967295u))) ^ (reverseBits(vec3<u32>(u_input.c.x, 1u, u_input.c.x)) & (vec3<u32>(var_3, 0u, var_3) ^ vec3<u32>(28139u, 18701u, 0u))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, ~var_3, u_input.c.x | var_3), firstTrailingBit(vec3<u32>(u_input.c.x, var_3, 72006u)) ^ vec3<u32>(20988u, u_input.c.x, var_3)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(~countOneBits(_wgslsmith_clamp_u32(13754u, func_2(), _wgslsmith_div_u32(29023u, 32782u))), Struct_1(1u), u_input.c.x, Struct_2(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true))), !vec4<bool>(true, 100429u > u_input.c.x, true, any(vec4<bool>(false, true, true, false))), vec4<bool>(any(vec3<bool>(false, false, false)) && true, select(u_input.c.x, u_input.c.x, true) < ~18484u, (u_input.c.x > 1u) || all(vec3<bool>(true, true, false)), u_input.c.x <= (u_input.c.x << (u_input.c.x % 32u)))), ~vec4<u32>(45475u, max(func_2(), 1u), reverseBits(~1u), min(~4294967295u, ~18825u)));
    let var_1 = _wgslsmith_f_op_f32(min(200f, -801f));
    var_0 = Struct_3(4294967295u, var_0.b, _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 1u, 1u), _wgslsmith_clamp_u32(18751u, var_0.a, var_0.a)), ~_wgslsmith_mod_u32(var_0.e.x, 109677u >> (0u % 32u)), _wgslsmith_add_u32(_wgslsmith_add_u32(~0u, ~var_0.c), ~(u_input.c.x | 24376u))), Struct_2(!select(var_0.d.a, select(var_0.d.a, var_0.d.a, var_0.d.a), var_0.d.b), var_0.d.c, var_0.d.b), var_0.e);
    var var_2 = Struct_4(vec4<i32>(-1i) * -(~vec4<i32>(12818i, 2028i, 11102i, u_input.b) ^ -vec4<i32>(0i, 16132i, u_input.b, u_input.b)), -select(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, -2889i)), ~vec3<i32>(u_input.b, 448i, u_input.b), var_0.d.a.xxx) & (_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a.x, -2147483647i, 1i), reverseBits(vec3<i32>(-2147483647i, -52554i, -3279i))) ^ vec3<i32>(u_input.b, 51090i, u_input.b)), var_0.d, -2112f, select(vec3<bool>(true, any(vec2<bool>(var_0.d.c.x, false)), true), select(!var_0.d.b.zwy, var_0.d.a.yzx, all(vec3<bool>(var_0.d.a.x, false, false)) == true), false));
    let var_3 = !var_0.d.b.zxx;
    return Struct_1((var_0.c ^ min(~var_0.c, _wgslsmith_clamp_u32(var_0.a, var_0.c, 0u))) | _wgslsmith_mult_u32(1u, ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-738f, 1412f, -1617f, 1009f) + vec4<f32>(-1739f, -167f, 1000f, 162f))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -952f, 928f, -744f))))));
}

