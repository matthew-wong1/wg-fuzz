struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = ~(-arg_0.a);
    var_0 = arg_0.a;
    return 0i;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(round(259f));
    var var_1 = _wgslsmith_mod_vec3_i32(-vec3<i32>(arg_3.a.x, u_input.a, 37277i), countOneBits(vec3<i32>(abs(arg_0.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_2.a.x), vec2<i32>(16604i, 0i)), 9543i))) >> (~arg_1.yyx % vec3<u32>(32u));
    var_0 = arg_2.b;
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(min(2147483647i, 32497i), 3800i), -45471i, countOneBits(func_3(Struct_1(~arg_3.a, _wgslsmith_f_op_f32(arg_2.b * 297f)))), u_input.a);
    let var_3 = reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(1i, -32057i, u_input.a, arg_2.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.a.x, var_1.x, -33145i, 27486i), vec4<i32>(1i, 0i, arg_3.a.x, 11129i))), ~reverseBits(vec4<i32>(arg_2.a.x, 15134i, arg_2.a.x, arg_3.a.x)))) != u_input.a;
    return firstLeadingBit(var_2.wyw);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> vec3<u32> {
    let var_0 = ~(func_2(Struct_1(select(vec2<i32>(arg_0.a.x, -1i), vec2<i32>(-27368i, 2147483647i), false), -677f), firstTrailingBit(vec4<u32>(1u, 1u, 30788u, 15769u)) << (vec4<u32>(28103u, 0u, 47204u, 0u) % vec4<u32>(32u)), Struct_1(arg_0.a, _wgslsmith_f_op_f32(-570f - -292f)), arg_0) & vec3<i32>(_wgslsmith_mod_i32(~arg_0.a.x, 11972i), -2147483647i, abs(abs(arg_0.a.x))));
    var var_1 = var_0.x;
    let var_2 = ~_wgslsmith_mult_i32(abs(1i), firstLeadingBit(-1i ^ abs(u_input.a)));
    var var_3 = arg_0;
    var var_4 = arg_0;
    return ~vec3<u32>(~(~(~73845u)), _wgslsmith_dot_vec3_u32(vec3<u32>(max(0u, 0u), ~1u, firstLeadingBit(0u)), ~(~vec3<u32>(4294967295u, 41024u, 0u))), abs(select(1u, 67226u, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), 0i) ^ -(~vec2<i32>(9715i, u_input.a) | abs(vec2<i32>(u_input.a, 1i))), 1111f);
    var var_1 = select(func_1(Struct_1(vec2<i32>(u_input.a, min(u_input.a, var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2542f - -311f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 304f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)))), 666f), vec3<u32>(reverseBits(reverseBits(countOneBits(48939u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(30459u, 1u))), func_1(Struct_1(-vec2<i32>(-1i, var_0.a.x), var_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1259f, -296f) - vec2<f32>(var_0.b, 183f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1652f, var_0.b))), _wgslsmith_div_f32(380f, _wgslsmith_f_op_f32(-var_0.b))).x), vec3<bool>(!all(vec4<bool>(true, false, true, false)) & false, true, true));
    var_1 = ~(abs(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 0u, var_1.x), vec3<u32>(var_1.x, 5331u, 5673u)), vec3<u32>(var_1.x, 0u, 151550u))) & vec3<u32>(reverseBits(var_1.x), 4294967295u, 67973u));
    var var_2 = Struct_1(~(~vec2<i32>(var_0.a.x, -var_0.a.x)), 1198f);
    var_1 = vec3<u32>(select(var_1.x, var_1.x, !all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))), _wgslsmith_div_u32(var_1.x, var_1.x), max((~var_1.x | abs(var_1.x)) & ~max(0u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 43415u), ~vec3<u32>(0u, var_1.x, var_1.x)) | var_1.x));
    var_1 = ~(~(~select(vec3<u32>(var_1.x, var_1.x, 23153u), vec3<u32>(19072u, 1u, 0u), true) >> (vec3<u32>(select(484u, var_1.x, true), 11017u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 865u), vec2<u32>(var_1.x, var_1.x))) % vec3<u32>(32u))));
    var var_3 = countOneBits(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(2287u, var_1.x)), vec2<u32>(0u, ~0u | (var_1.x << (47026u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

