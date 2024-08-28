struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    var var_0 = !(-2141f <= arg_0);
    var_0 = true;
    var var_1 = true;
    var_1 = true;
    let var_2 = vec4<i32>(-(~_wgslsmith_mult_i32(u_input.a.x, 2147483647i)), 34402i, -select(-min(1i, 2147483647i), u_input.a.x >> (~1u % 32u), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false))), -1i);
    return _wgslsmith_div_vec4_i32(-(_wgslsmith_sub_vec4_i32(vec4<i32>(2013i, 11369i, u_input.a.x, 21368i), var_2) | var_2), var_2) << (vec4<u32>(~27851u, 1u, 1u >> (min(0u, ~27277u) % 32u), ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(38733u, 3565u), vec2<u32>(85480u, 43537u)))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = arg_2;
    var_0 = Struct_1(abs(~0u));
    let var_1 = ~(vec4<i32>(_wgslsmith_div_i32(1i, -u_input.a.x), _wgslsmith_add_i32(14846i ^ u_input.a.x, -u_input.a.x), _wgslsmith_div_i32(u_input.a.x, 0i) | -65828i, u_input.a.x >> ((arg_1 | var_0.a) % 32u)) | reverseBits(_wgslsmith_clamp_vec4_i32(func_3(855f), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -24579i), vec4<i32>(u_input.a.x, -19072i, -1i, u_input.a.x))));
    var_0 = Struct_1(~0u);
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(7117u, 273u, arg_1 ^ 4294967295u), vec3<u32>(~arg_1, ~arg_2.a, _wgslsmith_sub_u32(arg_2.a, 47672u))), _wgslsmith_mult_vec3_u32(min(select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a, 54054u, 1u), vec3<u32>(arg_1, 4294967295u, 4294967295u)), vec3<u32>(var_0.a, 0u, arg_2.a), !arg_0), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 17656u, 71645u), vec3<u32>(4294967295u, 72733u, 0u)), ~84146u)), firstTrailingBit(abs(min(vec3<u32>(6525u, 1u, arg_1), vec3<u32>(57065u, arg_2.a, arg_1))))));
}

fn func_1() -> i32 {
    let var_0 = select(abs(~vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(~1u, countOneBits(~0u), func_2(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), 1u, Struct_1(88237u), _wgslsmith_f_op_f32(round(529f)))), vec3<bool>(true, all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), all(vec2<bool>(true, true))));
    let var_1 = Struct_1(~_wgslsmith_mult_u32(var_0.x, 0u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(765f, 132f, -691f));
    var var_3 = vec2<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), true)), var_1.a <= (4294967295u << (~var_1.a % 32u)));
    var var_4 = ~firstTrailingBit(var_0.yz);
    return -13626i;
}

fn func_4(arg_0: i32) -> Struct_1 {
    return Struct_1(0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = func_4(_wgslsmith_sub_i32(func_1(), u_input.a.x));
    let var_2 = abs(firstLeadingBit(~vec4<u32>(var_1.a & 1u, _wgslsmith_mult_u32(1u, var_1.a), var_1.a, 9082u)));
    var var_3 = func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, (4801i << (var_2.x % 32u)) >> (1u % 32u), 2147483647i), vec4<i32>(u_input.a.x, -countOneBits(u_input.a.x), func_1(), u_input.a.x)));
    let var_4 = !vec4<bool>(true, any(select(vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(false, true), var_0), false)), all(vec2<bool>(all(vec2<bool>(var_0, var_0)), var_0 | var_0)), any(select(vec3<bool>(false, true, true), select(vec3<bool>(var_0, var_0, false), vec3<bool>(false, false, false), false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-3880i);
}

