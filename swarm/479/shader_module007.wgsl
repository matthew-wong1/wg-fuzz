struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_2(!all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(true);
    var_0 = Struct_2(all(select(select(vec3<bool>(false, var_0.a, false), !vec3<bool>(var_0.a, var_0.a, var_0.a), var_0.a), !vec3<bool>(var_0.a, var_0.a, true), !all(vec3<bool>(var_0.a, false, true)))));
    var_0 = Struct_2(!(((arg_0.a ^ 33365u) != countOneBits(1u)) || !all(vec4<bool>(var_0.a, true, false, false))));
    return _wgslsmith_div_i32(u_input.b, u_input.a.x);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: bool) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = 4294967295u;
    var_0 = -1i;
    let var_2 = _wgslsmith_add_vec4_i32(~vec4<i32>(countOneBits(-u_input.b), -8553i, firstLeadingBit(u_input.a.x), -46521i), vec4<i32>(func_3(Struct_1(var_1)), ~arg_0 >> (0u % 32u), countOneBits(1i), 37261i));
    var var_3 = Struct_3(vec4<f32>(1f, 1f, 1f, 1f));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_3.a, var_3.a, !select(vec4<bool>(arg_2, arg_2, true, true), vec4<bool>(arg_2, arg_2, arg_2, false), arg_2)))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = func_2(countOneBits(-min(0i, ~15604i)), _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.a, 41219u, ~(~65315u), ~firstTrailingBit(537u)), _wgslsmith_mod_vec4_u32(~reverseBits(vec4<u32>(arg_0.a, 6356u, arg_0.a, arg_0.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 39195u, arg_0.a, arg_0.a), vec4<u32>(arg_0.a, 1u, arg_0.a, arg_0.a)) & vec4<u32>(arg_0.a, 86805u, 2532u, arg_0.a))), false);
    var var_1 = max(firstTrailingBit(vec4<u32>(0u, arg_0.a << (arg_0.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 8879u, arg_0.a), vec3<u32>(arg_0.a, arg_0.a, 1u)), 1138u)), ~(~firstTrailingBit(vec4<u32>(arg_0.a, arg_0.a, 1u, 4724u)))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(16197u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<u32>(arg_0.a, 48535u, 16416u, 54950u)), 0u), 1u, countOneBits(arg_0.a)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(0u, 4294967295u, 30996u, arg_0.a), vec4<u32>(23131u, 24948u, 0u, arg_0.a), vec4<bool>(false, true, false, false)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 306u, arg_0.a, arg_0.a), vec4<u32>(arg_0.a, 4294967295u, arg_0.a, 1u))), abs(vec4<u32>(arg_0.a, 4294967295u, 0u, 0u)) << (~vec4<u32>(37993u, arg_0.a, 1u, 11401u) % vec4<u32>(32u))));
    let var_2 = arg_0;
    var var_3 = ~_wgslsmith_div_vec2_i32(abs(firstLeadingBit(u_input.a)), u_input.a);
    var var_4 = Struct_2(!select(!(u_input.b <= var_3.x), select(all(vec2<bool>(false, false)), true, all(vec4<bool>(true, true, true, true))), any(vec4<bool>(false, false, false, true))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(abs(min(func_1(Struct_1(1u)), select(5753u, 13432u, false)) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 34365u, 41576u), vec3<u32>(9602u, 4294967295u, 21129u)), abs(33764u)) % 32u)), 0u);
    let var_1 = u_input.a.x | abs(_wgslsmith_mult_i32(max(~34115i, reverseBits(u_input.a.x)), u_input.b << (~2527u % 32u)));
    let var_2 = ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 38301u, 0u, 37311u), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_sub_u32(~(~0u), reverseBits(~4294967295u)));
    var_0 = 0u;
    var_0 = ~var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(-591f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-687f + -1001f)), _wgslsmith_f_op_f32(f32(-1f) * -1021f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(select(1329f, -1730f, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(261f, -2625f, -1696f, _wgslsmith_div_f32(-1770f, 454f)) + func_2(i32(-1i) * -37302i, ~58972u, any(vec2<bool>(true, true))).a)), ~select(~(vec2<u32>(var_2, var_2) & vec2<u32>(var_2, var_2)), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(46087u, 1u))), all(vec4<bool>(true, true, false, false))), var_2);
}

