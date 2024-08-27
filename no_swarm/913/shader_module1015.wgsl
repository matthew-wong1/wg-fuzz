struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.d, 0u), vec2<u32>(46534u, 68148u), arg_0.a.c), _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_2, 32828u), vec2<u32>(arg_0.a.b, u_input.c))), ~1u, arg_0.a.b, arg_2));
    let var_1 = firstTrailingBit(~(~vec4<u32>(arg_0.a.b, var_0.x, arg_0.a.b, 4294967295u) << (var_0 % vec4<u32>(32u)))) << (firstTrailingBit(~(~var_0)) % vec4<u32>(32u));
    let var_2 = 37322u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1251f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f)));
    let var_4 = _wgslsmith_f_op_f32(-arg_0.a.a);
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(33535u, abs(_wgslsmith_mod_u32(var_0.x, arg_2)) << (~select(4294967295u, 1u, arg_1) % 32u)), 4294967295u);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-133f + -1651f)), -943f), ~func_3(Struct_2(Struct_1(1411f, arg_1.x, arg_0.x)), arg_0.x, 131134u, _wgslsmith_f_op_f32(abs(548f))), _wgslsmith_mod_u32(select(arg_1.x, u_input.c, arg_0.x), ~u_input.d) != 16544u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f + var_0.a.a))), var_0.a.a)));
    let var_2 = any(arg_0.xy);
    var var_3 = var_0;
    var var_4 = max(-u_input.b.x, 34223i);
    return 0u;
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, 651f)) + _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(trunc(arg_0.a)))))));
    var var_1 = ~(~1u);
    var_1 = 4294967295u;
    var var_2 = !select(vec4<bool>(arg_0.c, any(!vec4<bool>(false, true, arg_0.c, true)), arg_0.c, !(!arg_0.c)), !(!vec4<bool>(arg_0.c, arg_0.c, false, true)), select(select(!vec4<bool>(false, arg_0.c, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c), arg_0.c || false), !vec4<bool>(true, true, arg_0.c, true), !arg_0.c));
    var var_3 = abs(max(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 100830u), min(vec2<u32>(arg_0.b, 46942u), vec2<u32>(u_input.d, u_input.a))), vec2<u32>(_wgslsmith_add_u32(arg_0.b, 0u), countOneBits(0u)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0.b), vec2<u32>(1u, 0u)), vec2<u32>(arg_0.b, 0u) | vec2<u32>(u_input.d, u_input.d))), ~select(reverseBits(vec2<u32>(96693u, arg_0.b)), vec2<u32>(0u, arg_0.b), true)));
    return ~vec2<u32>(arg_0.b, u_input.d);
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(arg_0.x)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 1u, u_input.d), vec4<u32>(u_input.d, 81709u, u_input.c, u_input.a))), !all(vec3<bool>(true, false, true)) | !all(vec2<bool>(false, true))));
    let var_1 = _wgslsmith_dot_vec2_u32(func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.a), 111f), func_2(!vec3<bool>(true, var_0.a.c, var_0.a.c), vec2<u32>(u_input.d, var_0.a.b) & vec2<u32>(u_input.d, u_input.a)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.a.c, true, var_0.a.c, false), vec4<bool>(var_0.a.c, var_0.a.c, var_0.a.c, true))))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(24662u, 33550u), select(vec2<u32>(u_input.c, u_input.a), vec2<u32>(4294967295u, var_0.a.b), vec2<bool>(var_0.a.c, var_0.a.c))), u_input.a));
    let var_2 = vec4<i32>(27946i, 0i, max(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, -2147483647i, -2364i, u_input.b.x)), -2147483647i), ~(u_input.b.x & 2147483647i)), -u_input.b.x | 2147483647i), u_input.b.x);
    var var_3 = ~_wgslsmith_clamp_vec4_u32(select(countOneBits(min(vec4<u32>(u_input.a, var_0.a.b, 65717u, var_1), vec4<u32>(u_input.a, var_0.a.b, 1u, u_input.a))), ~(~vec4<u32>(u_input.d, var_0.a.b, 1u, 6532u)), select(!vec4<bool>(false, var_0.a.c, false, true), !vec4<bool>(true, var_0.a.c, false, true), !var_0.a.c)), select(select(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 87839u, 4294967295u, var_1), vec4<u32>(var_1, 4294967295u, u_input.d, var_1)), countOneBits(vec4<u32>(0u, var_1, var_0.a.b, 1u)), !var_0.a.c), reverseBits(abs(vec4<u32>(4294967295u, 0u, var_0.a.b, var_0.a.b))), true), ~countOneBits(vec4<u32>(4294967295u, var_1, var_0.a.b, var_0.a.b)));
    var var_4 = 34982i;
    return Struct_1(880f, min(var_0.a.b, _wgslsmith_div_u32(9011u ^ var_1, var_1)), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-34057i), 0i, countOneBits(var_2.x), -30866i), -var_2) < _wgslsmith_sub_i32(i32(-1i) * -2147483647i, min(u_input.b.x, min(u_input.b.x, 15817i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-707f, -2353f, -1218f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(860f, -787f, -193f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) - _wgslsmith_f_op_f32(abs(var_0.a.a)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1317f));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-714f, -1361f, -2395f, 919f)));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1111f) + -842f) + -2714f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, true)) - var_0.a.a)), 1440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(430f * _wgslsmith_f_op_f32(ceil(775f)))), _wgslsmith_f_op_f32(-var_0.a.a), func_1(var_2.zwy).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x)))), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer((select(u_input.b.x, ~u_input.b.x, true) << (countOneBits(4294967295u) % 32u)) >> (var_0.a.b % 32u), firstTrailingBit(vec3<u32>(abs(78433u), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(15929u, u_input.a, 4294967295u), vec3<u32>(55429u, var_0.a.b, u_input.d))), u_input.c)), u_input.b | reverseBits(max(-u_input.b, u_input.b)), _wgslsmith_dot_vec4_u32(~reverseBits(~vec4<u32>(var_0.a.b, u_input.d, 0u, 31715u)), ~vec4<u32>(var_0.a.b & var_0.a.b, u_input.a, 21457u, u_input.a)), firstLeadingBit(~(~vec2<u32>(u_input.c, var_0.a.b)) >> (~select(vec2<u32>(86753u, 21941u), vec2<u32>(var_0.a.b, u_input.a), false) % vec2<u32>(32u))));
}

