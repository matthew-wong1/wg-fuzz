struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = ~(arg_0.c ^ arg_0.c);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(step(272f, -469f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2193f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(529f, 1009f))), var_0 < arg_0.b)))));
    var var_2 = false && !arg_0.a;
    let var_3 = arg_0;
    var_2 = all(!vec2<bool>(var_3.d, select(any(vec2<bool>(arg_0.a, arg_0.d)), u_input.a >= u_input.a, var_3.a | arg_0.a)));
    return !vec4<bool>(false, all(vec3<bool>(true, true, true)), !var_3.d, arg_0.d);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec3<u32>) -> vec3<u32> {
    let var_0 = ~select(-firstLeadingBit(abs(vec4<i32>(arg_0.c, -1i, 17175i, arg_1.b))), firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(2147483647i, 2147483647i), ~arg_1.b, i32(-1i) * -1i, arg_0.c >> (arg_3.x % 32u))), !func_3(Struct_1(arg_1.d, 2147483647i, arg_1.b, false)));
    let var_1 = Struct_1(true, ~(~var_0.x >> ((select(u_input.a, 1u, arg_0.a) | _wgslsmith_mult_u32(u_input.a, arg_3.x)) % 32u)), arg_1.c, arg_0.a);
    let var_2 = var_1;
    var var_3 = any(select(vec3<bool>(true, arg_2, true), !vec3<bool>(arg_2, arg_2, true), !select(select(vec3<bool>(var_1.d, true, false), vec3<bool>(false, var_2.d, false), false), select(vec3<bool>(arg_0.d, arg_2, false), vec3<bool>(arg_0.d, arg_1.a, arg_0.d), vec3<bool>(arg_1.a, arg_1.a, var_2.d)), !vec3<bool>(false, arg_0.d, arg_2))));
    var_3 = any(vec2<bool>(all(select(vec2<bool>(arg_0.a, true), !vec2<bool>(arg_0.a, var_2.d), !var_1.d)), true));
    return select(reverseBits(arg_3), vec3<u32>(45928u, arg_3.x, max(arg_3.x, arg_3.x)), var_1.a);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: u32) -> u32 {
    let var_0 = min(vec3<u32>(firstLeadingBit(u_input.a), 30765u, ~u_input.a), vec3<u32>(1u, u_input.a, _wgslsmith_add_u32(27394u, u_input.a) >> (max(u_input.a, arg_0) % 32u))) >> (select(vec3<u32>(~arg_0, 16697u, ~arg_0), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 13715u, 20045u) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2, 21427u, arg_2), vec3<u32>(1u, 46336u, 10915u)), ~func_2(Struct_1(false, -47375i, -3506i, false), Struct_1(arg_1.x, -2147483647i, 35506i, arg_1.x), arg_1.x, vec3<u32>(arg_0, u_input.a, arg_0))), select(!select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, true, true), vec3<bool>(true, false, true)), func_3(Struct_1(arg_1.x, -1i, 2840i, true)).wwz, -509f != _wgslsmith_f_op_f32(step(570f, 874f)))) % vec3<u32>(32u));
    var var_1 = firstLeadingBit(var_0.xy);
    let var_2 = true;
    var_1 = vec2<u32>(~42126u, var_0.x);
    let var_3 = Struct_1(var_2, i32(-1i) * -(i32(-1i) * -2147483647i), abs(1i), var_2);
    return _wgslsmith_clamp_u32(arg_0, arg_0, _wgslsmith_add_u32(reverseBits(_wgslsmith_add_u32(arg_2, 1u)), ~arg_2 << (1u % 32u)) ^ 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = all(!(!vec3<bool>(select(false, true, true), any(vec4<bool>(false, true, true, true)), true)));
    var_0 = true;
    let var_1 = _wgslsmith_div_vec4_u32(abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(4641u, 35399u, 2469u, u_input.a), vec4<u32>(4294967295u, 0u, 32328u, 60511u))) ^ ~_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 16255u, 4294967295u, u_input.a), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 21780u, u_input.a))), countOneBits(vec4<u32>(func_1(_wgslsmith_clamp_u32(u_input.a, 0u, 26595u), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), abs(47090u)), 1u, ~u_input.a, u_input.a)));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-857f, 644f)), _wgslsmith_f_op_f32(min(-599f, -1378f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2027f)), -575f) + vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(697f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1319f * 1899f)))), _wgslsmith_f_op_f32(trunc(-1392f))));
    var var_3 = _wgslsmith_f_op_f32(abs(-1383f));
    var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1996f, -705f))))))));
    let var_4 = !(_wgslsmith_div_i32(i32(-1i) * -33338i, _wgslsmith_mod_i32(-24529i, -16793i)) > min(~(-2724i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 24665i, -2147483647i), vec4<i32>(0i, -2764i, 2147483647i, 2147483647i)))) | true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(0i, 2147483647i, -49845i)), firstLeadingBit(vec3<i32>(-51865i, -1i, 1i)))), -2147483647i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(526f, -1010f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(2778f, var_2.x), _wgslsmith_f_op_vec2_f32(abs(var_2.yy))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-395f, var_2.x) + vec2<f32>(var_2.x, var_2.x))) + var_2.zx))), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_2.x)));
}

