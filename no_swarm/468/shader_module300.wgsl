struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<i32> {
    let var_0 = select(vec2<bool>(any(vec3<bool>(true, true, true)), true), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), !vec2<bool>(true, any(vec2<bool>(false, true))), select(vec2<bool>(true, false), vec2<bool>(false, any(vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true))), any(!vec3<bool>(true, all(vec4<bool>(true, false, true, true)), all(vec4<bool>(true, false, false, true)))));
    let var_1 = true;
    var var_2 = ~abs(_wgslsmith_clamp_u32(reverseBits(~82653u), 1u, _wgslsmith_sub_u32(1u, 1u)));
    let var_3 = 44896u;
    var_2 = max(var_3, 4294967295u);
    return vec2<i32>(u_input.a, arg_0.x);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec2_i32(-func_3(vec3<i32>(u_input.b, ~1i, u_input.b)), vec2<i32>(firstLeadingBit(firstLeadingBit(_wgslsmith_add_i32(-2147483647i, 0i))), -u_input.a));
    var_0 = firstLeadingBit(~vec2<i32>(-22248i, -33947i));
    var var_1 = Struct_2(Struct_1(vec2<bool>(!any(vec4<bool>(false, true, false, false)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), abs(~(var_0.x & 0i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(134f, 200f, 1621f)))))), _wgslsmith_mod_i32(-34911i, var_0.x));
    var_1 = Struct_2(Struct_1(select(var_1.a.a, vec2<bool>(true, var_1.a.a.x), !select(var_1.a.a, var_1.a.a, vec2<bool>(true, var_1.a.a.x))), ~firstTrailingBit(var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - 371f) - -1686f), -932f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -791f))) - vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(abs(-1277f)))), -func_3(-min(vec3<i32>(var_0.x, u_input.b, -2147483647i), vec3<i32>(-2147483647i, 10548i, var_0.x))).x);
    let var_2 = Struct_3(vec4<u32>(~(~37312u), ~(~1u), abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(48845u, 0u, 20258u), 4294967295u >> (0u % 32u))), _wgslsmith_add_u32(max(_wgslsmith_add_u32(47092u, 29347u), firstLeadingBit(9631u)), min(~30312u, _wgslsmith_sub_u32(1u, 0u)))), _wgslsmith_f_op_f32(-var_1.b.x), var_1.a);
    return Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-944f - var_1.b.x), -341f, var_2.b)))), var_2.c.b);
}

fn func_1(arg_0: u32) -> Struct_4 {
    return Struct_4(func_2(), countOneBits(select(_wgslsmith_add_vec2_u32(~vec2<u32>(5777u, 26359u), reverseBits(vec2<u32>(arg_0, arg_0))), ~vec2<u32>(1u, arg_0) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_0, 0u)) % vec2<u32>(32u)), true)), Struct_3(~vec4<u32>(~arg_0, 1u, ~arg_0, ~4294967295u), _wgslsmith_f_op_f32(-235f * 739f), func_2().a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -589f;
    let var_1 = func_1(21999u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, 1311f, var_1.a.b.x, 678f), vec4<f32>(897f, var_1.c.b, 638f, var_0))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.b, -1258f, 135f, var_1.c.b) * vec4<f32>(1000f, 433f, 941f, 144f))) * vec4<f32>(3303f, _wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(-1840f - var_1.c.b), _wgslsmith_f_op_f32(ceil(-793f))))) - vec4<f32>(2015f, var_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-264f)) * _wgslsmith_f_op_f32(select(815f, -2123f, false)))), 616f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1268f, 659f, -1207f) + vec4<f32>(var_1.a.b.x, var_2.x, -509f, 430f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b.x, 141f, var_1.c.b, -327f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.b, var_0, -412f, 362f), vec4<f32>(var_2.x, -840f, var_2.x, var_0)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1198f, 2259f, 616f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b.x, -331f, var_1.c.b, -755f) + vec4<f32>(var_2.x, -934f, -353f, 1601f))))), vec4<f32>(var_1.c.b, _wgslsmith_f_op_f32(var_1.a.b.x - var_0), _wgslsmith_f_op_f32(-1823f + _wgslsmith_f_op_f32(floor(405f))), _wgslsmith_f_op_f32(var_2.x + func_2().b.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2296f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) + -1769f)), var_1.a.b)));
}

