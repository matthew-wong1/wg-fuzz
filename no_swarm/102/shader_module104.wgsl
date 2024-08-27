struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
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

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<u32>) -> vec3<u32> {
    return ~vec3<u32>(_wgslsmith_mult_u32(4294967295u, max(arg_0.x, 24443u << (arg_2.x % 32u))), ~min(~70861u, 1u << (arg_2.x % 32u)), ~arg_2.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<u32>) -> i32 {
    let var_0 = Struct_3(Struct_2(select(arg_0.xy, select(!vec2<bool>(false, arg_0.x), select(arg_0.xx, vec2<bool>(true, arg_1.a.x), true), vec2<bool>(arg_0.x, arg_1.a.x)), arg_1.a)));
    let var_1 = arg_1;
    var var_2 = ~min(vec2<i32>(28569i, -45383i) | (vec2<i32>(2147483647i, 78695i) << (arg_2.xy % vec2<u32>(32u))), firstLeadingBit(select(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(1i, 7711i), vec2<bool>(var_1.a.x, var_1.a.x)))) & vec2<i32>(-20066i, abs(abs(abs(-2147483647i))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1510f, _wgslsmith_f_op_f32(f32(-1f) * -694f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1088f, -1802f))))) - _wgslsmith_f_op_f32(f32(-1f) * -1229f)));
    let var_4 = Struct_3(Struct_2(var_0.a.a));
    return ~(-firstLeadingBit(select(u_input.c, var_2.x, true)));
}

fn func_2(arg_0: i32) -> i32 {
    global0 = reverseBits(arg_0);
    global0 = _wgslsmith_div_i32(-2147483647i, 1i);
    var var_0 = vec4<i32>(2886i, ~1153i ^ _wgslsmith_div_i32(-1i, arg_0), func_4(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), Struct_2(vec2<bool>(true, true)), ~func_3(vec2<u32>(0u, u_input.a), Struct_2(vec2<bool>(false, false)), ~vec2<u32>(39812u, 8907u))), -_wgslsmith_mult_i32(~(-28675i), u_input.c ^ ~(-46345i)));
    global0 = u_input.c << (0u % 32u);
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(var_0.x == firstLeadingBit(u_input.c), !((u_input.b > 48774u) & true)), all(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), true)));
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: i32) -> Struct_3 {
    var var_0 = vec2<bool>(true, true);
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(564f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1419f) - _wgslsmith_f_op_f32(714f * 525f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -293f) * _wgslsmith_f_op_f32(min(-1799f, 1312f))))), _wgslsmith_f_op_f32(2234f + 1079f), _wgslsmith_f_op_f32(-107f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1111f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-208f, 520f, false)) + 1364f)))));
    var var_2 = Struct_3(Struct_2(vec2<bool>(var_0.x, var_0.x)));
    var var_3 = Struct_2(select(!select(select(vec2<bool>(true, false), vec2<bool>(false, var_0.x), var_2.a.a.x), var_2.a.a, arg_0 == -9482i), vec2<bool>(var_2.a.a.x & any(vec4<bool>(false, var_2.a.a.x, var_0.x, false)), true), false));
    var var_4 = _wgslsmith_clamp_vec2_u32((~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 12086u), vec2<u32>(24679u, 1u)) >> (select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 24514u), vec2<u32>(4294967295u, 66742u)), ~vec2<u32>(u_input.a, u_input.b), true) % vec2<u32>(32u))) | ((select(vec2<u32>(u_input.d, u_input.b), vec2<u32>(31792u, 30147u), var_2.a.a.x) | ~vec2<u32>(u_input.a, u_input.a)) | vec2<u32>(firstLeadingBit(1u), u_input.a << (0u % 32u))), vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.d, _wgslsmith_mult_u32(u_input.d, 24428u)), ~(~vec3<u32>(35500u, u_input.b, u_input.d)))), ~(~vec2<u32>(1u, 1u) ^ abs(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(4294967295u, 8363u))));
    return Struct_3(Struct_2(vec2<bool>(var_0.x, false)));
}

fn func_1() -> Struct_3 {
    return func_5(func_2(-11264i), -61873i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 10381u;
    var var_1 = func_1();
    let var_2 = _wgslsmith_add_u32(abs(u_input.a), max(u_input.b & _wgslsmith_mult_u32(60522u, 0u), min(1u, countOneBits(21031u))) >> (u_input.b % 32u));
    var var_3 = _wgslsmith_clamp_u32(4294967295u, countOneBits(u_input.d), ~(~0u));
    var_3 = _wgslsmith_mult_u32(~_wgslsmith_sub_u32(firstLeadingBit(u_input.d), firstTrailingBit(u_input.b)) >> (~4294967295u % 32u), (var_2 >> (_wgslsmith_div_u32(0u, abs(14127u)) % 32u)) >> (firstLeadingBit(4029u) % 32u));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1808f) * _wgslsmith_f_op_f32(sign(-196f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1039f, -950f, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-999f))))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(307f, -1166f), vec2<f32>(-472f, -703f), var_1.a.a.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-528f, 662f), vec2<f32>(129f, -1323f)))))));
    var var_5 = ~(~vec2<i32>(firstTrailingBit(~u_input.c), -38231i));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

