struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> vec4<u32> {
    let var_0 = abs(vec2<i32>(i32(-1i) * -16722i, i32(-1i) * -9299i) | (vec2<i32>(u_input.c >> (arg_0.b.b.x % 32u), u_input.c) & ~min(vec2<i32>(2147483647i, u_input.c), vec2<i32>(u_input.c, u_input.c))));
    var var_1 = !vec3<bool>(any(select(vec4<bool>(arg_0.b.a.a.x, arg_0.b.a.a.x, arg_0.b.a.a.x, arg_0.b.a.a.x), vec4<bool>(true, arg_0.b.a.a.x, false, true), true)), !select(arg_0.b.a.a.x, arg_0.b.a.a.x, arg_0.b.a.a.x) | ((arg_0.b.b.x < 41755u) == arg_0.b.a.a.x), true);
    let var_2 = Struct_2(Struct_1(var_1.yx), vec4<u32>(14818u, arg_0.a.x ^ arg_0.b.b.x, ~(arg_0.b.b.x & 4294967295u) ^ u_input.b.x, 68324u));
    let var_3 = Struct_5(Struct_2(Struct_1(!arg_0.b.a.a), firstLeadingBit(var_2.b)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -830f) - vec3<f32>(-645f, arg_1, -115f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(801f, arg_1, arg_1))))))), Struct_3(var_2.a, select(vec2<i32>(-33767i, var_0.x), firstLeadingBit(~vec2<i32>(-1i, var_0.x)), select(vec2<bool>(false, true), vec2<bool>(var_2.a.a.x, arg_0.b.a.a.x), !vec2<bool>(false, var_1.x))), Struct_1(select(!arg_0.b.a.a, select(vec2<bool>(true, var_2.a.a.x), arg_0.b.a.a, var_1.yx), vec2<bool>(var_2.a.a.x, var_2.a.a.x))), var_2, Struct_2(var_2.a, _wgslsmith_clamp_vec4_u32(~arg_0.a, abs(arg_0.a), countOneBits(vec4<u32>(4294967295u, 81126u, 59140u, arg_0.a.x))))), vec2<f32>(-732f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_1, arg_1, all(vec4<bool>(true, arg_0.b.a.a.x, arg_0.b.a.a.x, var_2.a.a.x))))))));
    return vec4<u32>(4294967295u, countOneBits(min(17577u, u_input.b.x)) >> ((1u | (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.b.x, 0u), u_input.b.yx) << (~1u % 32u))) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(max(firstTrailingBit(vec3<u32>(1u, 10897u, 52264u)), ~var_3.c.e.b.zyy), arg_0.a.xzy), reverseBits(var_3.a.b.www)), u_input.a);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = Struct_3(Struct_1(!select(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), true), vec2<bool>(true, true), vec2<bool>(false, arg_0))), ~(-vec2<i32>(~(-2147483647i), -u_input.c)), Struct_1(!(!vec2<bool>(true, arg_0))), Struct_2(Struct_1(vec2<bool>(true, false)), func_3(Struct_4(~vec4<u32>(1u, u_input.b.x, u_input.a, 1u), Struct_2(Struct_1(vec2<bool>(true, false)), vec4<u32>(u_input.a, 0u, 1u, 1u))), -542f)), Struct_2(Struct_1(vec2<bool>(arg_0, !arg_0)), ~min(vec4<u32>(u_input.a, u_input.b.x, 0u, 42618u) & vec4<u32>(14211u, u_input.b.x, u_input.a, 0u), select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.a), vec4<u32>(1u, u_input.b.x, u_input.a, u_input.b.x), true))));
    var_0 = Struct_3(Struct_1(select(var_0.c.a, !(!var_0.e.a.a), true)), firstTrailingBit(~(~var_0.b)), Struct_1(select(var_0.d.a.a, vec2<bool>(var_0.c.a.x == true, u_input.c != -41342i), !select(var_0.a.a, vec2<bool>(true, true), var_0.a.a))), Struct_2(Struct_1(select(select(var_0.c.a, vec2<bool>(arg_0, arg_0), false), !vec2<bool>(var_0.a.a.x, var_0.c.a.x), true)), reverseBits(~(var_0.e.b ^ vec4<u32>(69505u, var_0.e.b.x, 1u, 44397u)))), Struct_2(Struct_1(!select(vec2<bool>(false, var_0.c.a.x), var_0.c.a, arg_0)), ~vec4<u32>(abs(u_input.b.x), _wgslsmith_mod_u32(var_0.e.b.x, 49991u), reverseBits(var_0.d.b.x), var_0.e.b.x)));
    var_0 = Struct_3(Struct_1(vec2<bool>(all(!vec3<bool>(false, arg_0, false)), !arg_0)), var_0.b | _wgslsmith_clamp_vec2_i32(var_0.b, var_0.b, ~(-var_0.b)), Struct_1(!var_0.a.a), var_0.d, Struct_2(var_0.c, _wgslsmith_div_vec4_u32(var_0.e.b, var_0.d.b)));
    let var_1 = Struct_5(Struct_2(Struct_1(var_0.e.a.a), countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, var_0.e.b.x, 0u, 1u), var_0.d.b))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-622f, arg_1, -2754f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_2)))))), Struct_3(var_0.d.a, countOneBits(vec2<i32>(firstLeadingBit(var_0.b.x), u_input.c)), var_0.c, Struct_2(Struct_1(vec2<bool>(false, true)), var_0.e.b), var_0.d), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1386f, arg_2)))))));
    var var_2 = false;
    return any(vec2<bool>(arg_0, false));
}

fn func_1(arg_0: vec3<u32>) -> vec4<u32> {
    var var_0 = all(select(!vec2<bool>(all(vec4<bool>(false, true, false, true)), func_2(false, -810f, -375f)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(true, true), vec2<bool>(true, true)), !all(vec3<bool>(false, true, true))));
    var var_1 = Struct_2(Struct_1(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(all(vec3<bool>(false, true, false)), false), false)), _wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(17014u, 0u, 29926u, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, 13786u, 20698u)), ~vec4<u32>(4294967295u, u_input.b.x, 4949u, u_input.b.x))), vec4<u32>(~u_input.b.x << (1u % 32u), u_input.a, 1u, arg_0.x), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 45506u, 4294967295u), vec4<u32>(arg_0.x, u_input.b.x, arg_0.x, arg_0.x)))));
    var var_2 = Struct_4(countOneBits(var_1.b), Struct_2(Struct_1(!var_1.a.a), abs(vec4<u32>(50367u, arg_0.x, arg_0.x, 0u)) >> (_wgslsmith_clamp_vec4_u32(var_1.b, var_1.b, vec4<u32>(1u, 4294967295u, 40858u, u_input.b.x)) % vec4<u32>(32u))));
    var_0 = any(!select(!select(vec3<bool>(true, true, false), vec3<bool>(var_2.b.a.a.x, false, var_1.a.a.x), var_1.a.a.x), select(!vec3<bool>(var_2.b.a.a.x, var_1.a.a.x, var_2.b.a.a.x), vec3<bool>(false, var_2.b.a.a.x, var_1.a.a.x), true), select(true, var_1.a.a.x || false, var_1.a.a.x)));
    var_0 = true;
    return reverseBits(select(var_1.b, _wgslsmith_add_vec4_u32(~vec4<u32>(9281u, 4294967295u, var_2.a.x, var_2.b.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.b.x, 4294967295u, 46360u, 50933u), var_2.b.b)), vec4<bool>(var_2.b.b.x < var_1.b.x, var_1.a.a.x, true, var_2.b.a.a.x))) & vec4<u32>(~1u, ~firstTrailingBit(u_input.a), select(4294967295u, 40209u, var_1.a.a.x), var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2042f + -1056f) * -902f), -1608f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2068f + -509f), _wgslsmith_f_op_f32(ceil(779f)))))), u_input.c, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, u_input.b.x, u_input.a, 1u) ^ func_1(vec3<u32>(0u, u_input.a, u_input.a))), _wgslsmith_sub_vec4_u32(~func_1(vec3<u32>(105729u, 7521u, u_input.a)), ~(~vec4<u32>(0u, u_input.b.x, 31995u, u_input.a)))), vec4<i32>(7063i, -(~(-u_input.c)), -8510i, u_input.c));
}

