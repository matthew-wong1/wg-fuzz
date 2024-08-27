struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = firstLeadingBit(vec3<u32>(153800u, ~_wgslsmith_div_u32(arg_1.a, 15126u), 41420u) >> (vec3<u32>(18918u, reverseBits(max(13009u, u_input.b)), ~10408u) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_sub_vec3_u32(max(vec3<u32>(~37791u, _wgslsmith_add_u32(1u, firstLeadingBit(var_0.x)), _wgslsmith_clamp_u32(var_0.x, ~arg_0, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(~64465u, 32075u, _wgslsmith_clamp_u32(u_input.b, 0u, var_0.x)), ~abs(vec3<u32>(1u, 4294967295u, arg_1.a)))), ~min(_wgslsmith_add_vec3_u32(select(vec3<u32>(19989u, arg_1.a, 4294967295u), vec3<u32>(u_input.b, 121522u, var_0.x), true), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_1.a, 4294967295u), vec3<u32>(arg_0, u_input.b, 507u))), ~vec3<u32>(12084u, u_input.b, 6934u) >> ((vec3<u32>(0u, 1u, 0u) & vec3<u32>(12452u, u_input.b, 20986u)) % vec3<u32>(32u))));
    var var_2 = select(select(vec4<bool>(true, !all(vec4<bool>(false, false, false, false)), !select(false, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), all(vec3<bool>(false, true, false))), vec4<bool>(all(vec3<bool>(false, false, false)), all(vec4<bool>(true, false, false, true)), arg_1.a > arg_0, any(vec4<bool>(true, true, false, true)))), any(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true))), vec4<bool>(true, true, true, true), true != all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false)));
    var_0 = vec3<u32>(~_wgslsmith_add_u32(4294967295u >> ((var_0.x | var_1.x) % 32u), ~firstLeadingBit(0u)), abs(~(0u & _wgslsmith_add_u32(arg_1.a, arg_1.a))), 0u);
    var_2 = vec4<bool>(true, var_2.x, true, _wgslsmith_dot_vec4_i32(min(select(vec4<i32>(u_input.a, u_input.a, 0i, -2147483647i), vec4<i32>(-2147483647i, u_input.a, -2147483647i, u_input.a), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), ~vec4<i32>(u_input.a, 3790i, 0i, 1i)), vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_div_i32(u_input.a, 0i), ~0i, _wgslsmith_div_i32(u_input.a, u_input.a))) != _wgslsmith_clamp_i32(u_input.a, -1i, ~1i));
    return vec4<u32>(abs(arg_0), 1u, arg_0, u_input.b);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~func_3(u_input.b, Struct_2(12489u)), vec4<u32>(min(4294967295u, _wgslsmith_sub_u32(u_input.b, 4294967295u)), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(42614u, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.b, 0u))), _wgslsmith_div_u32(u_input.b, firstLeadingBit(18042u)), 0u)), ~countOneBits(~max(vec4<u32>(25653u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 18775u, u_input.b, 3851u))));
    let var_1 = Struct_2(_wgslsmith_mod_u32(4294967295u, u_input.b));
    let var_2 = Struct_1(true, 15536i == (-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-30303i, u_input.a)) | -u_input.a), true);
    var var_3 = vec4<i32>(-u_input.a & u_input.a, _wgslsmith_clamp_i32(-46519i, -(1i ^ _wgslsmith_add_i32(34775i, u_input.a)), u_input.a), 1i, u_input.a >> (countOneBits(firstLeadingBit(_wgslsmith_dot_vec3_u32(var_0.zyx, vec3<u32>(var_1.a, var_1.a, u_input.b)))) % 32u));
    var_3 = firstLeadingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(-3335i, var_3.x, -34879i, var_3.x), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_3.x, 0i, u_input.a), vec4<i32>(35043i, 1i, 1i, 0i))), ~select(vec4<i32>(u_input.a, 2147483647i, u_input.a, 18167i), vec4<i32>(var_3.x, var_3.x, var_3.x, var_3.x), false)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(20278i, u_input.a, 1i, var_3.x), vec4<i32>(0i, var_3.x, 1i, u_input.a), vec4<i32>(-2147483647i, -51361i, 45441i, var_3.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.a, u_input.a), vec4<i32>(u_input.a, -5616i, var_3.x, -54439i)), var_0.x != 29046u) & vec4<i32>(-u_input.a, 35692i, _wgslsmith_div_i32(22197i, var_3.x), -51240i >> (0u % 32u))));
    return false;
}

fn func_1(arg_0: i32, arg_1: f32) -> vec3<bool> {
    let var_0 = Struct_2(u_input.b);
    return select(select(vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_add_u32(24358u, u_input.b) != select(33609u, var_0.a, false), true, (arg_0 != 0i) | true), !all(vec3<bool>(true, true, true))), vec3<bool>(true, select(1u, ~var_0.a, true) > 4294967295u, all(vec2<bool>(true, false)) & true), !vec3<bool>(func_2(), select(true, true, true), all(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1(abs(~(-1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1553f)) * _wgslsmith_f_op_f32(-799f * -821f))));
    var var_1 = Struct_1(var_0.x & !var_0.x, any(select(!select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true)), vec3<bool>(all(vec3<bool>(false, var_0.x, true)), var_0.x, true), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x)))), var_0.x);
    var var_2 = Struct_1(all(select(select(vec4<bool>(var_1.c, var_1.a, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, false, var_1.c), true), vec4<bool>(all(vec4<bool>(false, var_0.x, true, false)), !var_0.x, !var_1.a, var_0.x), var_1.c)), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, u_input.a)) < 584i, !select(false, !var_1.c, var_0.x & true));
    var_1 = Struct_1(false, 0u < ~u_input.b, var_2.b);
    var_1 = Struct_1(true, var_1.a, all(vec4<bool>(var_0.x, var_2.a, true, true)));
    let var_3 = Struct_1(var_2.b, var_0.x, var_0.x);
    var_2 = var_3;
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(579f, 1203f))))));
}

