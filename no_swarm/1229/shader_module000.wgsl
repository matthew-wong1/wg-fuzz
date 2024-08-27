struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    return u_input.b.x;
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = Struct_1(global0.a, ~(~vec3<u32>(select(3111u, 54496u, true), 1u, ~0u)));
    var var_1 = Struct_1(global0.a, _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.x, u_input.b.x, u_input.b.x) ^ global0.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(2972u, var_0.b.x, u_input.b.x), vec3<u32>(var_0.b.x, var_0.b.x, global0.b.x), vec3<u32>(var_0.b.x, 21243u, 30939u))), vec3<u32>(u_input.b.x >> (var_0.b.x % 32u), _wgslsmith_add_u32(0u, global0.b.x), ~0u)) << (var_0.b % vec3<u32>(32u)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1216f, arg_0) * _wgslsmith_f_op_vec2_f32(-var_1.a)))), _wgslsmith_div_vec3_u32((global0.b & vec3<u32>(global0.b.x, 0u, 15099u)) ^ var_0.b, max(~vec3<u32>(global0.b.x, 0u, var_0.b.x), ~var_0.b) ^ countOneBits(var_0.b)));
    let var_2 = Struct_1(var_1.a, var_1.b);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(644f, -1755f))), 473f, -340f);
    return !(!select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, any(vec4<bool>(false, false, true, false)), var_0.b.x > var_0.b.x, false), _wgslsmith_sub_i32(24157i, u_input.a) < max(-2147483647i, u_input.a)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec3<i32>) -> f32 {
    global0 = Struct_1(global0.a, vec3<u32>(u_input.b.x, _wgslsmith_add_u32(13639u, max(firstLeadingBit(global0.b.x), _wgslsmith_mod_u32(global0.b.x, u_input.b.x))), u_input.b.x));
    var var_0 = Struct_1(global0.a, _wgslsmith_sub_vec3_u32(vec3<u32>(~(~1u), u_input.b.x | 1u, 1u), vec3<u32>(func_1(vec3<f32>(global0.a.x, global0.a.x, global0.a.x)), abs(u_input.b.x), ~0u) ^ firstTrailingBit(vec3<u32>(global0.b.x, u_input.b.x, u_input.b.x))));
    var var_1 = ~arg_1;
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(sign(global0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1577f * _wgslsmith_f_op_f32(var_0.a.x + -2251f)))), min(global0.b, ~(~(~global0.b))));
    var var_3 = vec2<i32>(1i, (countOneBits(1i) | _wgslsmith_add_i32(arg_1.x, u_input.a)) ^ -1i);
    return var_2.a.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(global0.a, u_input.b.zwx);
    var var_1 = Struct_1(global0.a, ~(~arg_0.zxy));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global0.a * vec2<f32>(788f, -512f)), global0.a)))))), ~firstTrailingBit(min(reverseBits(arg_0.xyz), ~vec3<u32>(arg_2, arg_2, var_0.b.x))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(global0.a)))), ~var_1.b);
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_4(func_3(global0.a.x), max(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), ~vec4<i32>(u_input.a, u_input.a, 0i, -33563i)), vec3<i32>(i32(-1i) * -6511i, u_input.a, u_input.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.x)) - var_0.a.x)))), ~(~vec3<u32>(~0u, firstTrailingBit(4294967295u), u_input.b.x)));
    return Struct_1(var_1.a, _wgslsmith_clamp_vec3_u32(~(vec3<u32>(1u, global0.b.x, var_0.b.x) & _wgslsmith_div_vec3_u32(u_input.b.wxw, vec3<u32>(arg_0.x, var_0.b.x, 0u))), var_1.b, arg_0.xxx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -294f;
    global0 = func_2(~vec4<u32>(u_input.b.x, 1u, u_input.b.x >> (1u % 32u), 49224u) << (vec4<u32>(u_input.b.x, ~global0.b.x, ~50081u, max(4294967295u, global0.b.x)) % vec4<u32>(32u)), select(vec4<bool>(true, true, true, all(vec2<bool>(true, true)) & any(vec4<bool>(true, false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !(global0.b.x != 4294967295u)), ((35569i & u_input.a) ^ (u_input.a << (u_input.b.x % 32u))) == abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(42326i, -4478i)))), ~func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, global0.a.x, 1287f), vec3<f32>(global0.a.x, var_0, global0.a.x), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, global0.a.x, -1000f)), vec3<bool>(false, true, false)))));
    var var_1 = func_2(u_input.b, select(vec4<bool>(true, !func_3(-1366f).x, false, true), select(vec4<bool>(false, any(vec4<bool>(true, true, true, true)), -1454i >= u_input.a, false), vec4<bool>(true, true, true, true), func_3(_wgslsmith_f_op_f32(func_4(vec4<bool>(true, false, false, true), vec4<i32>(-1i, -2147483647i, u_input.a, -1i), vec3<i32>(u_input.a, u_input.a, u_input.a))))), vec4<bool>(false, any(vec3<bool>(true, true, true)), select(false, false, true), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))))), ~global0.b.x);
    global0 = func_2(abs(_wgslsmith_mod_vec4_u32(u_input.b, ~vec4<u32>(u_input.b.x, 0u, 0u, 16338u))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -664f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(482f, -585f))))), func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -894f)), var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -541f))));
    global0 = func_2(min(firstLeadingBit(_wgslsmith_add_vec4_u32(countOneBits(u_input.b), ~vec4<u32>(global0.b.x, global0.b.x, 16798u, 20665u))), vec4<u32>(17594u, 78845u, _wgslsmith_dot_vec2_u32(var_1.b.zz, vec2<u32>(22537u, 21144u)) << (_wgslsmith_add_u32(4294967295u, global0.b.x) % 32u), ~(~4294967295u))), select(!(!func_3(var_0)), vec4<bool>(true, true, true, true), true), u_input.b.x);
    let var_2 = Struct_1(vec2<f32>(904f, -491f), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b.x ^ u_input.b.x, func_1(vec3<f32>(-1540f, 1000f, -387f)) >> (global0.b.x % 32u), var_1.b.x), _wgslsmith_div_vec3_u32(global0.b, vec3<u32>(firstLeadingBit(71567u), global0.b.x, ~9462u))));
    var var_3 = func_2(u_input.b ^ (~u_input.b >> ((reverseBits(u_input.b) ^ u_input.b) % vec4<u32>(32u))), vec4<bool>(true, !(!(u_input.a < u_input.a)), global0.b.x < global0.b.x, true), 4294967295u);
    let var_4 = ~(~_wgslsmith_sub_u32(0u >> (~var_2.b.x % 32u), 47353u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1495f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1256f, _wgslsmith_f_op_f32(var_2.a.x + -545f), true)) + _wgslsmith_f_op_f32(-783f + _wgslsmith_f_op_f32(345f - var_2.a.x)))), countOneBits(u_input.a << (123u % 32u)), var_1.a.x, abs(u_input.a));
}

