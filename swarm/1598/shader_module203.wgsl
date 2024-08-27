struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> u32 {
    var var_0 = vec4<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.b.x, 2147483647i, arg_1.b.x), vec3<i32>(arg_1.b.x, -42738i, arg_0)), reverseBits(vec3<i32>(arg_1.b.x, -1i, 2147483647i))), arg_1.b.x, arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(select(arg_1.b.x, arg_0, true), 1i), vec2<i32>(-arg_1.b.x, arg_0))) >> (min(countOneBits(vec4<u32>(u_input.a.x >> (4294967295u % 32u), 1u, _wgslsmith_clamp_u32(u_input.a.x, 25928u, u_input.b), ~u_input.b)), vec4<u32>(~u_input.a.x << (~0u % 32u), select(_wgslsmith_mult_u32(u_input.b, u_input.b), 5678u, false & arg_1.a.a.x), 13606u, u_input.a.x)) % vec4<u32>(32u));
    var_0 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(arg_0, -9882i, arg_1.b.x, 2147483647i), countOneBits(min(vec4<i32>(0i, arg_1.b.x, 67798i, 1i) >> (vec4<u32>(4294967295u, u_input.b, 0u, 39477u) % vec4<u32>(32u)), -vec4<i32>(arg_0, arg_1.b.x, 16506i, arg_0))), !(_wgslsmith_sub_u32(48619u, u_input.a.x) == _wgslsmith_sub_u32(u_input.b, 4294967295u))), abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(30902i, -18951i, arg_0, arg_0), vec4<i32>(var_0.x, arg_1.b.x, arg_0, arg_1.b.x) & vec4<i32>(arg_0, arg_1.b.x, var_0.x, 0i))));
    let var_1 = vec4<i32>(-19373i, abs(arg_1.b.x), arg_1.b.x, -arg_1.b.x);
    var_0 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(var_1.x, arg_1.b.x, -10477i, -18544i) | ~vec4<i32>(1i, -2147483647i, arg_1.b.x, arg_1.b.x), var_1), vec4<i32>(1i, _wgslsmith_sub_i32(-arg_1.b.x, _wgslsmith_div_i32(arg_1.b.x, var_1.x)), -2147483647i, 2166i));
    var_0 = vec4<i32>(arg_0 | _wgslsmith_add_i32(var_1.x, -1i), _wgslsmith_sub_i32(var_1.x, arg_1.b.x) | ~select(reverseBits(arg_1.b.x), _wgslsmith_sub_i32(-1i, -34727i), all(vec4<bool>(true, arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x))), 0i, -(~var_1.x << (_wgslsmith_add_u32(u_input.a.x, 4294967295u) % 32u)));
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = vec4<u32>(0u, ~(~(~(u_input.b ^ 4294967295u))), reverseBits(u_input.b & ~countOneBits(u_input.a.x)), 45437u);
    let var_1 = 72751u > var_0.x;
    let var_2 = Struct_2(Struct_1(arg_0.a), -(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(-34662i, -184i), vec2<i32>(-17086i, 49607i), vec2<i32>(-36214i, 0i)) << (vec2<u32>(28023u, var_0.x) % vec2<u32>(32u)))));
    var_0 = max(vec4<u32>(~(~select(u_input.a.x, 10182u, var_1)), func_3(i32(-1i) * -var_2.b.x, Struct_2(Struct_1(var_2.a.a), -vec2<i32>(7460i, var_2.b.x))), u_input.b, u_input.b), ~(~countOneBits(max(vec4<u32>(u_input.b, 22164u, 0u, u_input.a.x), vec4<u32>(var_0.x, var_0.x, 47056u, var_0.x)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), -525f)) + arg_1)));
    return 1892f;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 8898u), vec3<u32>(3952u, 4294967295u, 4294967295u)), vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.b, 16069u), 19445u))), firstTrailingBit(max(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(48943u, u_input.a.x, 4294967295u)) | abs(vec3<u32>(126270u, 4294967295u, 4294967295u))) & _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.a.x, u_input.a.x) ^ abs(vec3<u32>(26991u, 23066u, 49204u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, u_input.b), vec3<u32>(u_input.a.x, u_input.b, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(true, all(vec2<bool>(true, true)), true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1255f)))))));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_2) & vec2<i32>(arg_0, var_2), countOneBits(vec2<i32>(var_2, var_2))) >> (u_input.b % 32u), _wgslsmith_dot_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(9875i, var_2), vec2<i32>(2147483647i, arg_0), vec2<i32>(var_2, var_2))), firstLeadingBit(max(vec2<i32>(-2147483647i, arg_0), vec2<i32>(5641i, var_2))))), arg_0);
    let var_4 = 0u << (~u_input.a.x % 32u);
    return Struct_1(vec4<bool>(!any(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, true, all(vec2<bool>(false, false)), true)), any(vec3<bool>(true, true, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(countOneBits(~u_input.a.x));
    var var_1 = reverseBits(_wgslsmith_div_vec3_u32(~max(vec3<u32>(u_input.a.x, 34551u, u_input.a.x), ~vec3<u32>(u_input.a.x, 91u, u_input.b)), vec3<u32>(1u, 1u, ~26136u) & ~abs(vec3<u32>(43818u, u_input.b, u_input.b))));
    var var_2 = func_1(~1i);
    var_2 = func_1(select(_wgslsmith_div_i32(1i, 43992i) << (_wgslsmith_sub_u32(7578u, u_input.a.x) % 32u), _wgslsmith_mult_i32(countOneBits(-3414i), ~0i), true) >> (firstLeadingBit(1u) % 32u));
    var var_3 = Struct_2(Struct_1(vec4<bool>(true, true, select(!var_2.a.x, all(vec2<bool>(false, false)), var_2.a.x), all(func_1(-1i).a))), vec2<i32>(-2147483647i, -41217i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(518f + -634f) + _wgslsmith_f_op_f32(132f * -1481f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, 708f, var_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1220f))))));
}

