struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = countOneBits(_wgslsmith_mult_u32(70790u, 1u));
    return u_input.e;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = Struct_1(max(17191i, func_3(true)));
    let var_1 = Struct_1(51760i);
    var var_2 = _wgslsmith_mult_i32(arg_1, arg_0.a);
    var var_3 = vec3<bool>(true, true, true);
    var_2 = func_3(false);
    return _wgslsmith_f_op_f32(abs(-868f));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<u32>, arg_3: vec2<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, -455f, arg_1, 1000f), vec4<f32>(arg_1, -789f, arg_1, arg_1)))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, -467f, _wgslsmith_f_op_f32(-arg_1)))), vec4<f32>(1055f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -1733f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(18735i), -39591i))))));
    var var_1 = Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, abs(u_input.b)), _wgslsmith_mod_vec4_u32(abs(abs(vec4<u32>(arg_2.x, 48253u, arg_2.x, 0u))), _wgslsmith_add_vec4_u32(abs(u_input.b), firstLeadingBit(vec4<u32>(20692u, 2315u, u_input.b.x, arg_2.x))))), arg_3.x, Struct_1(select(0i, u_input.e, arg_0)), vec2<f32>(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-206f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -442f))), 20204u);
    var var_2 = !select(!(!arg_0), !(-588f == var_1.d.x), false);
    let var_3 = Struct_1(func_3(arg_0));
    let var_4 = Struct_2((~(~vec4<u32>(57187u, 4294967295u, arg_2.x, arg_2.x)) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, arg_2.x, var_1.e, 4294967295u), u_input.b)) | (var_1.a ^ (var_1.a & abs(vec4<u32>(var_1.a.x, 35583u, 0u, 0u)))), ~(0u ^ (~arg_2.x >> (var_1.a.x % 32u))), var_3, _wgslsmith_f_op_vec2_f32(trunc(var_1.d)), u_input.d);
    return _wgslsmith_f_op_vec2_f32(trunc(var_0.ww));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 1401f))))) - _wgslsmith_f_op_vec2_f32(func_1(!all(vec4<bool>(false, false, true, false)), _wgslsmith_div_f32(-1223f, 199f), (u_input.b.ywx | vec3<u32>(4294967295u, u_input.b.x, u_input.d)) << (~vec3<u32>(0u, u_input.d, 4294967295u) % vec3<u32>(32u)), u_input.b.xy)))));
    var var_1 = _wgslsmith_sub_i32(countOneBits(-2147483647i), abs(_wgslsmith_add_i32(u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(-14204i, u_input.e, 1i, u_input.c.x), vec4<i32>(0i, 2147483647i, -2147483647i, u_input.e)) << (firstTrailingBit(u_input.d) % 32u))));
    var var_2 = Struct_2(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), max(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(56865u, 1u, u_input.b.x), vec3<u32>(u_input.b.x, 0u, 35544u)), u_input.b.zzx)), u_input.d), Struct_1(2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(var_0.x, -581f)), _wgslsmith_f_op_vec2_f32(max(var_0, vec2<f32>(-178f, 1031f))), vec2<bool>(false, false))))), u_input.d);
    var var_3 = all(select(vec4<bool>(any(vec3<bool>(true, true, true)), true, true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), select(vec4<bool>(any(vec4<bool>(true, true, false, false)), all(vec4<bool>(false, false, true, true)), true, any(vec4<bool>(true, false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), false), vec4<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, false, false)), true, true)));
    var_1 = ~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a);
    let var_4 = vec2<u32>(25131u, _wgslsmith_mod_u32(1u | var_2.b, firstTrailingBit(firstLeadingBit(1u))));
    let var_5 = firstLeadingBit(u_input.b) ^ vec4<u32>(_wgslsmith_div_u32(1u, 18321u), ~(~firstLeadingBit(86927u)), 2171u & ~_wgslsmith_dot_vec3_u32(var_2.a.yyw, vec3<u32>(0u, 0u, 0u)), 54035u);
    let var_6 = !(((1u >> (var_4.x % 32u)) == 70804u) || (36677u > (3500u >> (var_2.b % 32u)))) & true;
    let x = u_input.a;
    s_output = StorageBuffer(max(~abs(65517u), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), ~vec2<u32>(u_input.b.x, 9653u)))), -1560f);
}

