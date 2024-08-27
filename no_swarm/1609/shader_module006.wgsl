struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> vec4<i32> {
    var var_0 = arg_1.a;
    let var_1 = !(!arg_0.zy);
    let var_2 = arg_1.a.b.x;
    var_0 = arg_1.a;
    var var_3 = var_0.a;
    return vec4<i32>(u_input.a.x, 0i, arg_3, i32(-1i) * -2177i);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_sub_i32(-39144i, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-14785i, -58321i, -1i, 5454i), firstLeadingBit(vec4<i32>(-59851i, -27239i, arg_1, arg_1)), true), vec4<i32>(-29630i, _wgslsmith_div_i32(-2147483647i, 33342i), -arg_1, u_input.a.x & 25621i)) ^ _wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, _wgslsmith_clamp_i32(u_input.a.x, -2147483647i, -1i)), -2147483647i, 16080i));
    let var_2 = min(countOneBits(_wgslsmith_clamp_i32(0i ^ var_1, var_1, arg_1)) >> (_wgslsmith_mult_u32(~arg_0.a.x | 1u, arg_0.a.x) % 32u), -2147483647i);
    var_0 = arg_0;
    var var_3 = ~(-max(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 1i, 2147483647i, -46931i), ~func_3(vec3<bool>(true, false, false), Struct_3(Struct_1(var_0.a, arg_0.b)), 91001u, u_input.a.x)));
    return _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b.x, 0u, 1u, 26877u) << (~vec4<u32>(u_input.c, 4294967295u, 1u, 23454u) % vec4<u32>(32u))), ~min(min(vec4<u32>(51984u, var_0.a.x, u_input.b.x, 38865u), vec4<u32>(1u, 0u, u_input.c, u_input.b.x)), ~vec4<u32>(arg_0.a.x, var_0.a.x, arg_0.a.x, 1u))) & _wgslsmith_clamp_u32(arg_0.a.x, ~(~u_input.b.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_0.a.x, 1u, u_input.b.x), ~vec4<u32>(1u, 0u, 4294967295u, u_input.c)) % 32u), 32095u);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = !all(vec4<bool>(any(vec2<bool>(true, true)), true, false, !(0i > u_input.a.x)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(778f - arg_1), _wgslsmith_f_op_f32(arg_1 + -665f), false))) * arg_1), _wgslsmith_f_op_f32(135f * _wgslsmith_f_op_f32(ceil(arg_1))));
    let var_2 = max(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(70354u, 85727u, u_input.c, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 69702u, 67156u, u_input.c), vec4<u32>(0u, 1u, arg_0, arg_0)))), ~(~arg_0)) | abs(func_2(Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, arg_1, -1811f))), 19040i >> (~u_input.b.x % 32u)));
    let var_3 = u_input.a.x;
    let var_4 = _wgslsmith_add_vec3_u32(min(vec3<u32>(_wgslsmith_mod_u32(~u_input.b.x, select(74691u, 19542u, true)), 4294967295u, abs(~1u)), select(~vec3<u32>(var_2, var_2, 4423u) | vec3<u32>(1u, 1u, 1u), vec3<u32>(~arg_0, 49266u, var_2), true)), vec3<u32>(~30648u, var_2, var_2));
    return Struct_1(min(_wgslsmith_sub_vec2_u32(var_4.zz, ~vec2<u32>(4294967295u, 27385u)) >> (~(~var_4.zz) % vec2<u32>(32u)), u_input.b & u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(-var_1), 243f, -104f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 968f, arg_1, -141f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(434f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f))));
    var var_1 = Struct_3(func_1(~(~u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-736f + -197f) + _wgslsmith_f_op_f32(sign(1108f)))), -2147483647i >> (1u % 32u)));
    var var_2 = ~(-(min(vec2<i32>(30353i, u_input.a.x), u_input.a) ^ u_input.a));
    var var_3 = true;
    let var_4 = var_1.a;
    let var_5 = Struct_1(var_4.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_4.b))));
    var var_6 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~min(vec4<u32>(0u, 0u, var_4.a.x, var_1.a.a.x), vec4<u32>(24281u, 0u, var_5.a.x, var_4.a.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(18678u, var_4.a.x, 40169u), vec3<u32>(var_5.a.x, var_5.a.x, var_1.a.a.x)), var_4.a.x, var_4.a.x, 18631u), ~(vec4<u32>(1u, var_1.a.a.x, 4294967295u, var_5.a.x) >> (vec4<u32>(36598u, 6505u, var_5.a.x, 0u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.a.a.x, 10222u, 0u, u_input.b.x) | _wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.a.x, 1u, 1u, 4294967295u), vec4<u32>(18301u, 0u, 18979u, var_1.a.a.x)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(var_1.a.a.x, u_input.c, var_4.a.x, var_1.a.a.x), vec4<u32>(0u, 1u, 43681u, 58847u), vec4<bool>(false, true, true, false)), vec4<u32>(var_5.a.x, var_1.a.a.x, 4294967295u, var_5.a.x) << (vec4<u32>(0u, var_4.a.x, var_1.a.a.x, var_1.a.a.x) % vec4<u32>(32u))))), abs(~(~var_1.a.a.x | (79001u >> (u_input.c % 32u)))), ~countOneBits(_wgslsmith_clamp_u32(u_input.b.x, 1u, 28888u)) << (~(~var_1.a.a.x & 0u) % 32u), 30783u);
    let var_7 = 4294967295u;
    var_6 = ~((select(vec4<u32>(var_5.a.x, 26363u, var_4.a.x, 1u) << (vec4<u32>(var_5.a.x, 1u, 12982u, u_input.b.x) % vec4<u32>(32u)), abs(vec4<u32>(var_7, 35155u, var_7, 13073u)), vec4<bool>(true, true, true, true)) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_7, var_5.a.x, u_input.b.x, 5971u), vec4<u32>(21350u, var_6.x, 41562u, 0u)), vec4<u32>(var_5.a.x, 0u, var_6.x, u_input.c))) << (countOneBits(vec4<u32>(var_7, _wgslsmith_mult_u32(var_5.a.x, var_7), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), var_4.a), _wgslsmith_clamp_u32(var_6.x, var_4.a.x, 0u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(440f + _wgslsmith_f_op_f32(f32(-1f) * -1020f)) - -2413f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(865f)))), var_4.b.x, min(vec2<i32>(u_input.a.x, ~37815i), -vec2<i32>(firstTrailingBit(u_input.a.x), _wgslsmith_div_i32(19110i, var_2.x))));
}

