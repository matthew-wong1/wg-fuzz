struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = vec2<i32>(-select(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-37557i, 12761i), vec2<i32>(1i, u_input.c)), vec2<i32>(u_input.c, -1i)), 2147483647i, true), _wgslsmith_div_i32(u_input.a & _wgslsmith_sub_i32(u_input.a, 17833i), -u_input.a & u_input.c));
    let var_1 = select(!vec4<bool>(true, var_0.x > 53824i, u_input.c >= ~2147483647i, u_input.c != -1i), !select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))), vec4<bool>(select(false, true, true), true, true, select(true, false, false)), all(vec3<bool>(true, true, false))), !any(vec2<bool>(true, true)));
    var var_2 = Struct_1(!var_1.zzw, _wgslsmith_f_op_vec2_f32(vec2<f32>(-211f, -837f) * vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -200f))), _wgslsmith_div_f32(645f, _wgslsmith_f_op_f32(min(-257f, -361f))))), (~(~arg_0.x) ^ abs(firstLeadingBit(arg_0.x))) | (_wgslsmith_mod_u32(u_input.b.x, 22069u) & arg_0.x));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1432f, _wgslsmith_f_op_f32(-var_2.b.x))));
    var_3 = var_2.b.x;
    return u_input.a;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b;
    var var_1 = Struct_1(vec3<bool>(true, true, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2378f, _wgslsmith_div_f32(-1000f, -119f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-947f, -423f)))))), ~0u);
    let var_2 = -func_3(max(~var_0, vec4<u32>(~u_input.b.x, 1u, 24049u, var_0.x)));
    var var_3 = var_1.b;
    let var_4 = Struct_1(!(!var_1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.x, 588f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b - vec2<f32>(var_3.x, var_1.b.x)) * _wgslsmith_f_op_vec2_f32(max(var_1.b, vec2<f32>(var_1.b.x, var_3.x))))))), _wgslsmith_dot_vec4_u32(u_input.b | ~(var_0 ^ vec4<u32>(u_input.b.x, 1u, 0u, 8457u)), var_0));
    return Struct_1(var_4.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.b)), 63310u);
}

fn func_1(arg_0: f32) -> Struct_1 {
    return func_2();
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(step(-2050f, -401f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.b.x, -262f)))))));
    var var_3 = Struct_1(select(vec3<bool>(true, _wgslsmith_f_op_f32(step(-1344f, var_1.b.x)) <= _wgslsmith_f_op_f32(sign(-796f)), !(var_2.a.x & true)), func_1(arg_0.b.x).a, var_2.a.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(var_0.b)))), u_input.b.x);
    var var_4 = firstTrailingBit(u_input.b.xx);
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = func_4(Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b) + arg_0.b), ~abs(arg_0.c)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, -1000f, var_0.b.x, -185f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -552f, -502f, 1000f) + vec4<f32>(arg_0.b.x, -979f, 216f, arg_0.b.x))), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(step(-1938f, 533f)), 674f, _wgslsmith_f_op_f32(ceil(var_0.b.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-742f + -1073f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1701f), 1183f));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2().b.x, _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(var_1.x - 1093f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -390f) + _wgslsmith_f_op_f32(select(438f, 1000f, var_0.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, arg_0.b.x)))))), 255f, -1000f);
    var var_2 = countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -17395i, u_input.a), vec3<i32>(-35659i, u_input.c, u_input.c))), reverseBits(vec3<i32>(0i, 2147483647i, 1i))), 2147483647i, -(max(u_input.c, -2147483647i) >> (_wgslsmith_add_u32(u_input.b.x, 124594u) % 32u)), _wgslsmith_mod_i32(-52246i, -1i)));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1937f, 1719f, -170f, 1f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -778f), -955f, -1820f, arg_0.b.x))));
    return func_4(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(true, true, true), _wgslsmith_div_vec2_f32(vec2<f32>(497f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1282f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-423f + 1732f), -982f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-946f, -858f), vec2<f32>(1029f, 1000f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-254f, -1142f)), vec2<bool>(true, false))))), reverseBits(4294967295u >> (u_input.b.x % 32u)));
    let var_1 = Struct_1(var_0.a, var_0.b, u_input.b.x);
    let var_2 = u_input.b;
    let var_3 = func_5(func_4(func_1(-801f)), 230f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, var_1.b.x))) + _wgslsmith_f_op_f32(-var_0.b.x)));
    var var_4 = vec3<bool>(var_0.a.x, !all(!vec4<bool>(var_3.a.x, true, var_3.a.x, var_1.a.x)), all(vec4<bool>(1283f > _wgslsmith_f_op_f32(-var_1.b.x), var_3.a.x, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(11799i << (1u % 32u)), _wgslsmith_mod_i32(-(i32(-1i) * -3875i), u_input.c)), -1340f, func_2().b.x, reverseBits(_wgslsmith_mult_u32(0u, reverseBits(~0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1877f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.x * var_3.b.x), 167f)))));
}

