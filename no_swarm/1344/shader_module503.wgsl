struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>) -> vec4<i32> {
    var var_0 = vec2<bool>(true, !(!all(vec2<bool>(true, true))));
    let var_1 = 1595f;
    var var_2 = Struct_1(_wgslsmith_div_u32(~(~u_input.a), ~_wgslsmith_mult_u32(~u_input.a, 9421u)), var_0.x, firstLeadingBit(~(~(~vec4<i32>(arg_0.x, u_input.b, 42462i, 0i)))));
    let var_3 = Struct_1(4294967295u, var_2.b, vec4<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.b, arg_0.x)), vec2<i32>(-1i, _wgslsmith_clamp_i32(arg_0.x, -1i, 18497i))), 5748i, ~12127i, -u_input.b << (1u % 32u)));
    let var_4 = abs(1u);
    return vec4<i32>(-_wgslsmith_sub_i32(-var_3.c.x, -1i) << (_wgslsmith_sub_u32((var_3.a << (var_2.a % 32u)) >> (_wgslsmith_clamp_u32(var_2.a, u_input.a, var_2.a) % 32u), firstTrailingBit(13996u)) % 32u), _wgslsmith_dot_vec4_i32(countOneBits(-var_2.c), reverseBits(countOneBits(vec4<i32>(u_input.b, 2147483647i, 13255i, var_2.c.x)))), var_3.c.x, -1i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = !select(select(select(vec4<bool>(arg_1.b, true, false, arg_1.b), select(vec4<bool>(false, arg_1.b, false, false), vec4<bool>(false, arg_1.b, arg_1.b, false), vec4<bool>(arg_1.b, arg_1.b, false, true)), select(vec4<bool>(true, false, arg_1.b, true), vec4<bool>(arg_1.b, false, arg_1.b, true), true)), vec4<bool>(arg_1.b, arg_1.b == true, arg_1.b, any(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b))), true), !vec4<bool>(all(vec4<bool>(arg_1.b, false, arg_1.b, true)), any(vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b)), arg_1.b, arg_1.b), !vec4<bool>(!arg_1.b, !arg_1.b, false, true));
    var var_1 = _wgslsmith_add_vec2_i32(-(vec2<i32>(arg_0.x, u_input.b) ^ vec2<i32>(_wgslsmith_clamp_i32(83735i, arg_0.x, arg_1.c.x), -63061i)), arg_1.c.xx);
    var_1 = _wgslsmith_div_vec2_i32(arg_0.zz, vec2<i32>(_wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(11853i, 0i), vec2<i32>(arg_0.x, -1i)), _wgslsmith_mult_i32(arg_1.c.x, arg_1.c.x) >> (max(u_input.a, 0u) % 32u)), -20357i));
    var_1 = vec2<i32>(~(select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.x, 1i, var_1.x, arg_0.x), vec4<i32>(1i, -25544i, -1i, 0i)), -2147483647i, false) | -30937i), var_1.x);
    let var_2 = !vec2<bool>(true, arg_1.b);
    return (_wgslsmith_add_u32(u_input.a, abs(u_input.a) >> (34416u % 32u)) | ~abs(abs(arg_1.a))) | abs(u_input.a & ~reverseBits(u_input.a));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(u_input.a, false, -firstTrailingBit(vec4<i32>(u_input.b, u_input.b, -18329i, -u_input.b)));
    return Struct_1(_wgslsmith_add_u32(func_4(-vec4<i32>(u_input.b, 1i, var_0.c.x, var_0.c.x) & func_3(vec3<i32>(var_0.c.x, 28475i, 157i)), var_0), _wgslsmith_clamp_u32(24600u, _wgslsmith_add_u32(~4294967295u, u_input.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.a, var_0.a, u_input.a), vec4<u32>(90312u, 0u, u_input.a, u_input.a)))), max(_wgslsmith_mod_u32(max(var_0.a, 23162u), 1u), abs(u_input.a) ^ _wgslsmith_add_u32(27243u, 15627u)) <= _wgslsmith_dot_vec4_u32(vec4<u32>(72964u, 58694u, 34140u, firstLeadingBit(1u)), firstLeadingBit(vec4<u32>(4294967295u, var_0.a, var_0.a, 4294967295u)) & reverseBits(vec4<u32>(var_0.a, u_input.a, var_0.a, u_input.a))), ~(var_0.c | abs(var_0.c)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(~49002u, ~1u);
    let var_1 = arg_0;
    let var_2 = 117570u;
    let var_3 = vec3<f32>(426f, -531f, _wgslsmith_f_op_f32(step(-1351f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1078f, 573f))))))));
    var var_4 = var_1;
    return var_1;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_vec3_u32(abs(select(~vec3<u32>(1u, 1u, 63925u), ~vec3<u32>(105985u, u_input.a, u_input.a), vec3<bool>(true, true, true))), vec3<u32>(1u, _wgslsmith_mod_u32(u_input.a, u_input.a) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(0u, 85752u)) % 32u), ~4294967295u));
    let var_1 = true;
    var var_2 = Struct_1(0u, all(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), var_1), vec2<bool>(arg_0.x >= -285f, arg_0.x == arg_0.x), vec2<bool>(var_1 | var_1, var_1))), _wgslsmith_div_vec4_i32(min(firstLeadingBit(vec4<i32>(u_input.b, -10525i, u_input.b, u_input.b)), vec4<i32>(countOneBits(2147483647i), firstLeadingBit(10384i), -u_input.b, -8612i)), _wgslsmith_clamp_vec4_i32(abs(~vec4<i32>(-21153i, 51246i, u_input.b, u_input.b)), select(vec4<i32>(u_input.b, 0i, u_input.b, 28594i) | vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), -vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), select(vec4<bool>(var_1, true, var_1, false), vec4<bool>(var_1, true, false, var_1), false)), firstTrailingBit(min(vec4<i32>(u_input.b, u_input.b, u_input.b, 40915i), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b))))));
    var var_3 = func_5(func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(1546f + arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x))), !(!select(vec3<bool>(false, var_1, true), vec3<bool>(var_1, true, false), vec3<bool>(true, var_1, var_2.b)))));
    let var_4 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(969f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f) - arg_0.x))));
    return Struct_1(_wgslsmith_dot_vec2_u32(~var_0.xy, ~var_0.zz), reverseBits(_wgslsmith_dot_vec3_i32(var_3.c.zxw, func_5(Struct_1(u_input.a, false, var_3.c)).c.yww)) <= (30876i << (u_input.a % 32u)), var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1935f, _wgslsmith_f_op_f32(f32(-1f) * -1043f)) + vec2<f32>(638f, _wgslsmith_f_op_f32(f32(-1f) * -770f))));
    var var_1 = vec3<bool>(!any(!vec2<bool>(var_0.b, false)), false, true);
    let var_2 = !vec3<bool>(true, !var_1.x, var_1.x);
    var var_3 = var_0.b;
    var_0 = Struct_1(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a, var_0.a, 3646u) >> (vec4<u32>(u_input.a, 1u, 0u, 40999u) % vec4<u32>(32u)), vec4<u32>(u_input.a, 0u, 0u, 0u) | vec4<u32>(u_input.a, 21357u, 4294967295u, 81970u)), ~var_0.a & var_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1979f)))) >= 934f, ~var_0.c);
    var var_4 = var_0.c.x;
    var var_5 = countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(10752i | var_0.c.x, 1i, var_0.c.x >> (0u % 32u), var_0.c.x)), ~u_input.b));
    let var_6 = firstTrailingBit(~60729u);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(958f, 643f, 1248f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-408f, 1099f, 744f) + vec3<f32>(1821f, 1375f, -763f)))), vec3<bool>(any(!vec4<bool>(false, var_2.x, var_1.x, var_1.x)), false, true)).c, firstLeadingBit(firstTrailingBit(firstTrailingBit(vec2<u32>(u_input.a, 33845u)) >> (max(vec2<u32>(4294967295u, 29004u), vec2<u32>(var_0.a, var_6)) % vec2<u32>(32u)))));
}

