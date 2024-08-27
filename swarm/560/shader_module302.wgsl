struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(vec3<u32>(abs(33982u), 1u & u_input.b, u_input.b & u_input.b) << (_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(4713u, 32605u, 15378u)), _wgslsmith_div_vec3_u32(vec3<u32>(75079u, 1u, u_input.b), vec3<u32>(u_input.b, u_input.b, 95709u))) % vec3<u32>(32u)), 1315i, !(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
    var_0 = Struct_2(var_0.a);
    let var_1 = select(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.a.x, var_0.a.a.x, firstTrailingBit(var_0.a.a.x), ~0u), ~(~vec4<u32>(u_input.b, var_0.a.a.x, u_input.b, 9979u)), vec4<u32>(1u, ~9669u, u_input.b, var_0.a.a.x)), _wgslsmith_mod_vec4_u32(select(firstLeadingBit(vec4<u32>(var_0.a.a.x, 34910u, u_input.b, 4294967295u)), select(vec4<u32>(var_0.a.a.x, u_input.b, var_0.a.a.x, 4294967295u), vec4<u32>(var_0.a.a.x, var_0.a.a.x, 1u, 0u), vec4<bool>(true, var_0.a.c.x, false, var_0.a.c.x)), select(vec4<bool>(false, false, true, var_0.a.c.x), vec4<bool>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x, true), true)), select(~vec4<u32>(4294967295u, u_input.b, 57266u, u_input.b), firstTrailingBit(vec4<u32>(u_input.b, 90499u, var_0.a.a.x, 65534u)), true)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 1u, 1u, 27151u) | vec4<u32>(var_0.a.a.x, 0u, 1u, 0u), ~vec4<u32>(u_input.b, u_input.b, var_0.a.a.x, u_input.b), vec4<u32>(4294967295u, 19663u, var_0.a.a.x, u_input.b)), ~reverseBits(vec4<u32>(2537u, 0u, 61818u, 21900u)), !(!vec4<bool>(var_0.a.c.x, var_0.a.c.x, true, var_0.a.c.x)))), _wgslsmith_div_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, var_0.a.a.x), ~vec4<u32>(2923u, u_input.b, var_0.a.a.x, 15054u))), vec4<u32>(countOneBits(25573u), var_0.a.a.x & 0u, u_input.b, 0u)), vec4<bool>(true && var_0.a.c.x, true, false, false));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1127f, _wgslsmith_f_op_f32(ceil(-799f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-476f, 1000f), vec2<f32>(1083f, -584f), var_0.a.c.x)) + vec2<f32>(1f, 1f))) * vec2<f32>(1f, 1f)), -u_input.a.wy, vec2<f32>(-266f, 862f), Struct_1(var_1.yzx, _wgslsmith_mod_i32(-2147483647i, u_input.a.x), !select(var_0.a.c, select(vec2<bool>(var_0.a.c.x, true), vec2<bool>(var_0.a.c.x, true), vec2<bool>(var_0.a.c.x, var_0.a.c.x)), any(var_0.a.c))));
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(85474u, firstLeadingBit(var_2.d.a.x)), _wgslsmith_mult_u32(1u, 11563u), reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(81605u, var_2.d.a.x, u_input.b, 27991u), var_1))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(~(u_input.a.x >> (u_input.b % 32u)), 56985i), var_0.a.b, _wgslsmith_sub_i32(1i, -(~(-1i)))), !(!vec2<bool>(var_0.a.c.x, true)));
    return vec2<bool>(true, any(vec3<bool>(!var_0.a.c.x | all(vec4<bool>(var_2.d.c.x, var_2.d.c.x, true, false)), all(select(vec4<bool>(var_2.d.c.x, var_3.c.x, var_3.c.x, var_0.a.c.x), vec4<bool>(true, var_3.c.x, var_0.a.c.x, var_3.c.x), vec4<bool>(var_0.a.c.x, true, var_2.d.c.x, true))), all(!vec3<bool>(var_2.d.c.x, true, var_3.c.x)))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = ~u_input.a.x;
    var var_1 = 28404u << (~u_input.b % 32u);
    var_1 = u_input.b;
    var_1 = ~u_input.b;
    var_1 = u_input.b;
    return Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(123745u, 0u), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4038u, 56134u) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u)), vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(15738u, 8065u))), 92035u, firstLeadingBit(~12922u)), var_0, !select(vec2<bool>(true, true), func_3(), vec2<bool>(true, true)));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, 2133f, 1117f, 944f))))));
    var var_1 = func_2(_wgslsmith_f_op_f32(347f - _wgslsmith_f_op_f32(1000f - -1571f)));
    return ~(vec3<u32>(1u, 1u, 4294967295u) ^ vec3<u32>(firstTrailingBit(_wgslsmith_div_u32(var_1.a.x, var_1.a.x)), firstTrailingBit(var_1.a.x), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, countOneBits(4294967295u)) ^ func_1(true, select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), var_0), false), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1888f)).b, vec2<bool>(var_0, var_0)));
    var_1 = Struct_2(Struct_1(~vec3<u32>(~15745u, 1621u, var_1.a.a.x), u_input.a.x | _wgslsmith_div_i32(-17856i, ~u_input.a.x), var_1.a.c));
    let var_2 = _wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 104912u) | vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(var_1.a.a.x, 0u))), 0u, _wgslsmith_mod_u32(var_1.a.a.x, ~0u) | _wgslsmith_clamp_u32(var_1.a.a.x, var_1.a.a.x | 1u, u_input.b)) ^ var_1.a.a.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f));
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(258f, -764f), vec2<f32>(var_3, -183f))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3, var_3)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3, var_3), vec2<f32>(-1350f, -922f))))))), min(-countOneBits(abs(vec2<i32>(-2147483647i, -20078i))), -firstLeadingBit(vec2<i32>(u_input.a.x, var_1.a.b) << (var_1.a.a.xz % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -691f), 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, -646f) + vec2<f32>(var_3, -652f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-461f, var_3) + vec2<f32>(823f, var_3)), var_1.a.c))))), func_2(_wgslsmith_f_op_f32(var_3 + -1252f)));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(-1136f).b);
}

