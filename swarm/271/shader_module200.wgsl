struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = reverseBits(33332u);
    return Struct_2(_wgslsmith_div_i32(19682i, -10560i) >> (arg_1.b % 32u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-508f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-936f * _wgslsmith_f_op_f32(1718f - 1561f)) + _wgslsmith_f_op_f32(f32(-1f) * -363f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-714f, 231f)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1258f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(855f, 563f) + vec2<f32>(296f, 252f))))) + vec2<f32>(_wgslsmith_f_op_f32(-815f * 288f), 1230f))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(261f - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))))), arg_1.b.x, vec2<bool>(true, var_0.x <= _wgslsmith_f_op_f32(exp2(var_0.x))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-1466f * _wgslsmith_div_f32(1956f, var_1.a)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_1.b, 1u, var_1.b, var_1.b), ~vec4<u32>(18581u, 7463u, 28732u, 7252u)) << (~min(vec4<u32>(42749u, arg_1.b.x, var_1.b, var_1.b), vec4<u32>(20967u, arg_1.b.x, var_1.b, 0u)) % vec4<u32>(32u)), ~(vec4<u32>(4294967295u, 1u, 78223u, 42517u) ^ vec4<u32>(arg_1.b.x, 29347u, 4294967295u, 63493u)) | vec4<u32>(~var_1.b, var_1.b, ~arg_1.b.x, ~var_1.b)), var_1.c);
    var var_2 = ~reverseBits(u_input.a.x);
    let var_3 = Struct_1(-1000f, 0u, vec2<bool>(false, select(any(select(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), vec4<bool>(true, true, var_1.c.x, false), var_1.c.x)), _wgslsmith_div_u32(1u, 6823u) <= ~arg_1.b.x, true)));
    return ~(u_input.a.x & (arg_1.a.x >> (var_1.b % 32u)));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = func_1(_wgslsmith_div_i32(56952i, _wgslsmith_add_i32(~1i, u_input.a.x)), Struct_1(2067f, _wgslsmith_mod_u32(~(~35550u), 1u), vec2<bool>(true, true)), _wgslsmith_mod_vec3_u32(max(countOneBits(~vec3<u32>(1u, 1u, 2607u)), min(select(vec3<u32>(0u, 4294967295u, 15345u), vec3<u32>(1u, 57776u, 4294967295u), vec3<bool>(false, false, true)), ~vec3<u32>(0u, 46615u, 1u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 68077u, 15424u), vec3<u32>(13298u, 1u, 5193u)), _wgslsmith_clamp_u32(54969u, 0u, 0u)), vec3<u32>(~4294967295u, _wgslsmith_div_u32(20937u, 1u), 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(69388u, 29284u, 2719u), _wgslsmith_clamp_vec3_u32(vec3<u32>(12183u, 10450u, 6104u), vec3<u32>(72418u, 4294967295u, 1u), vec3<u32>(20895u, 45260u, 50700u))))));
    var var_1 = arg_0;
    var var_2 = Struct_3(_wgslsmith_mult_vec4_i32(~vec4<i32>(i32(-1i) * -8608i, 0i, -arg_0.a, 78442i), vec4<i32>(u_input.a.x, func_3(Struct_2(var_1.a), Struct_3(vec4<i32>(var_1.a, var_0.a, var_0.a, arg_0.a), vec3<u32>(67934u, 36514u, 48059u))), var_1.a, 9883i)), vec3<u32>(~1u, ~(~select(1u, 4294967295u, true)), reverseBits(~(~20439u))));
    var var_3 = 1f;
    var_3 = 835f;
    return vec4<bool>(any(vec3<bool>(false, true, all(vec4<bool>(true, true, true, false)))), true, true, (_wgslsmith_add_u32(reverseBits(0u), 1u) >> (var_2.b.x % 32u)) != firstLeadingBit(~(~var_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(all(vec2<bool>(true, true)), all(func_2(func_1(u_input.a.x, Struct_1(961f, 4294967295u, vec2<bool>(false, false)), vec3<u32>(1u, 19645u, 0u))))));
    var var_1 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), reverseBits(vec2<u32>(4212u, 0u))));
    var_0 = all(select(vec2<bool>(true, true), select(vec2<bool>(all(vec3<bool>(false, true, false)), true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), true)), !func_2(Struct_2(16309i)).xw));
    let var_2 = abs(_wgslsmith_clamp_i32(u_input.a.x, select(max(23455i, 1i), -2147483647i, true), _wgslsmith_div_i32(-2147483647i, abs(2147483647i))) | (i32(-1i) * -(u_input.a.x >> (0u % 32u))));
    var_1 = 0u;
    var var_3 = Struct_3(-(~(vec4<i32>(var_2, var_2, var_2, 2147483647i) >> (vec4<u32>(4294967295u, 7233u, 16808u, 9177u) % vec4<u32>(32u)))), vec3<u32>(abs(43693u), 20623u, 1u));
    var var_4 = _wgslsmith_f_op_f32(-1170f * 2499f);
    var var_5 = var_3.a << (~(~vec4<u32>(var_3.b.x & 1u, 0u >> (var_3.b.x % 32u), ~2815u, ~60451u)) % vec4<u32>(32u));
    var var_6 = ~var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_3.b.zz), reverseBits(_wgslsmith_add_u32(var_3.b.x, var_3.b.x)) >> ((~(var_3.b.x >> (var_3.b.x % 32u)) << ((1u << (~var_3.b.x % 32u)) % 32u)) % 32u), vec2<i32>(~(-32996i), (u_input.a.x >> (4294967295u % 32u)) ^ u_input.a.x));
}

