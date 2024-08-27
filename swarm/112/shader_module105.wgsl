struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = var_0;
    let var_2 = max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b) | -vec2<i32>(13110i, u_input.b), _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(u_input.b, 17784i), countOneBits(vec2<i32>(-43564i, 1i)))), vec2<i32>(1i, reverseBits(u_input.b << (arg_0.a.x % 32u)))) ^ vec2<i32>(~(~max(u_input.b, u_input.b)), u_input.b);
    let var_3 = arg_0;
    var var_4 = ~max(u_input.a.x, ~u_input.a.x);
    return var_2.x;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = vec4<i32>(abs(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, u_input.b), vec2<i32>(arg_0, u_input.b)))), -2147483647i ^ func_3(Struct_1(vec3<u32>(u_input.a.x, 0u, u_input.a.x))), countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, -8119i, u_input.b, u_input.b), vec4<i32>(22904i, 8009i, 38010i, -1i)), vec4<i32>(u_input.b, u_input.b, -1i, -1i)), vec4<i32>(1i, u_input.b ^ u_input.b, firstLeadingBit(arg_0), i32(-1i) * -1i))), ~(~u_input.b));
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a.x, 23514u, u_input.a.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(698u, 4294967295u)), select(u_input.a.x, u_input.a.x, false), 78705u), ~vec3<u32>(0u, u_input.a.x, 1u)) << ((vec3<u32>(max(u_input.a.x, 4294967295u), ~u_input.a.x, select(u_input.a.x, 0u, false)) & _wgslsmith_div_vec3_u32(vec3<u32>(1u, 86165u, u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 16408u), vec3<u32>(95871u, 1u, u_input.a.x)))) % vec3<u32>(32u)));
    let var_2 = Struct_1(~(~_wgslsmith_clamp_vec3_u32(var_1.a | vec3<u32>(var_1.a.x, 12385u, var_1.a.x), ~var_1.a, firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)))));
    var_1 = Struct_1(~_wgslsmith_clamp_vec3_u32(var_2.a, _wgslsmith_add_vec3_u32(vec3<u32>(var_1.a.x, var_1.a.x, 62890u), var_2.a), vec3<u32>(15248u, u_input.a.x, 29411u)) << (_wgslsmith_sub_vec3_u32(~var_1.a, vec3<u32>(var_2.a.x, 39814u, ~var_2.a.x)) % vec3<u32>(32u)));
    let var_3 = 2147483647i;
    return Struct_1(var_2.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(f32(-1f) * -337f));
    let var_1 = func_2((-34525i >> (1u % 32u)) >> (arg_0.x % 32u), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false)));
    var_0 = -837f;
    var_0 = -849f;
    var_0 = _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.x)) * _wgslsmith_f_op_f32(-1f)));
    return ~(~(~var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_u32(select(~vec3<u32>(1u, 1867u, 4294967295u), ~vec3<u32>(7737u, u_input.a.x, 1u), vec3<bool>(false, true, true)) >> (vec3<u32>(~4294967295u, abs(u_input.a.x), 38608u) % vec3<u32>(32u)), max(vec3<u32>(23656u, select(33911u, u_input.a.x, false), 1u), ~func_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 41583u), Struct_1(vec3<u32>(43405u, u_input.a.x, u_input.a.x)), vec2<f32>(530f, -427f)))));
    let var_1 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 2147483647i), abs(vec3<i32>(-8314i, 1i, -21935i)))), vec2<i32>(~0i, _wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b)))), _wgslsmith_sub_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(1i, -47949i), vec2<i32>(u_input.b, u_input.b)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(20962i, u_input.b), vec2<i32>(26534i, u_input.b))));
    var var_2 = true;
    var var_3 = _wgslsmith_clamp_vec3_i32(~select(select(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, u_input.b, u_input.b), vec3<i32>(u_input.b, -1i, 2147483647i)), vec3<i32>(-48707i, 0i, -1i) & vec3<i32>(var_1.x, 2147483647i, var_1.x), vec3<bool>(true, true, true)), vec3<i32>(-u_input.b, ~1i, u_input.b), false), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(var_1.x, -1i, 0i), -vec3<i32>(37252i, 5189i, 6602i)), select(vec3<i32>(-1i) * -vec3<i32>(var_1.x, var_1.x, -1i), -(vec3<i32>(u_input.b, 0i, var_1.x) & vec3<i32>(u_input.b, var_1.x, var_1.x)), vec3<bool>(all(vec3<bool>(false, true, false)), true, false))), ~_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, u_input.b, 1i), ~vec3<i32>(1i, -2147483647i, -2147483647i)) ^ min(~vec3<i32>(u_input.b, var_1.x, var_1.x), -(~vec3<i32>(16369i, u_input.b, u_input.b))));
    var var_4 = func_2((~(~(-69753i)) << (((var_0.a.x ^ u_input.a.x) ^ ~25632u) % 32u)) >> (~countOneBits(~17008u) % 32u), !vec2<bool>(all(vec2<bool>(true, true)), true));
    var_2 = false;
    let var_5 = ~0u;
    var var_6 = any(vec3<bool>(false, true, any(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(var_0.a, vec3<u32>(~_wgslsmith_div_u32(0u, var_4.a.x), var_5, func_2(39091i, vec2<bool>(true, true)).a.x), max(~(~vec3<u32>(1u, var_5, 1u)), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_5, u_input.a.x, 1u)), vec3<u32>(var_4.a.x, 43911u, u_input.a.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-755f * 1828f), _wgslsmith_f_op_f32(776f + -874f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1097f * -1702f))), 1449f), !any(vec2<bool>(true, true)))));
}

