struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = Struct_1(2147483647i, ~vec3<i32>(~(-2147483647i), u_input.a.x, max(u_input.a.x, -2147483647i)) << (_wgslsmith_add_vec3_u32(max(vec3<u32>(0u, u_input.b, 10752u), min(vec3<u32>(85167u, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.b, 64392u))), ~(~vec3<u32>(u_input.b, 36950u, u_input.b))) % vec3<u32>(32u)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(388f - 1021f))), _wgslsmith_div_f32(_wgslsmith_div_f32(2536f, -309f), _wgslsmith_f_op_f32(trunc(-1633f))))) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(796f, -1000f)) - _wgslsmith_f_op_f32(440f - -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-650f, _wgslsmith_f_op_f32(round(511f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f) - -354f), _wgslsmith_f_op_f32(f32(-1f) * -607f));
    let var_2 = true;
    var var_3 = Struct_1(i32(-1i) * -(~1i), firstLeadingBit(var_0.b));
    var_3 = var_0;
    return ~min(-(~5950i), max(max(_wgslsmith_div_i32(-2147483647i, 1i), -var_0.a), var_3.a));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> vec2<u32> {
    let var_0 = 11128i;
    var var_1 = func_3() <= 1i;
    var_1 = true;
    var var_2 = ~vec2<u32>(u_input.b, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 1u), vec2<u32>(77267u, 4294967295u), vec2<bool>(false, false)), firstLeadingBit(vec2<u32>(u_input.b, arg_0))), 9914u));
    var var_3 = Struct_1(-(_wgslsmith_clamp_i32(473i, -1i >> (var_2.x % 32u), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)) ^ arg_1.x), vec3<i32>(-1i, arg_1.x, 23391i));
    return ~firstTrailingBit(reverseBits(select(vec2<u32>(10347u, 0u), vec2<u32>(arg_0, 98191u), u_input.b > arg_0)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_div_vec2_u32(~(_wgslsmith_mod_vec2_u32(vec2<u32>(15457u, 0u), vec2<u32>(17123u, 4294967295u)) | func_2(u_input.b, vec2<i32>(-2147483647i, -55209i))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, u_input.b), ~vec2<u32>(u_input.b, 4507u))) >> ((_wgslsmith_div_vec2_u32(~countOneBits(vec2<u32>(u_input.b, 26429u)), ~(~vec2<u32>(1u, u_input.b))) & max(vec2<u32>(u_input.b, _wgslsmith_div_u32(40220u, u_input.b)), ~vec2<u32>(63008u, u_input.b) ^ (vec2<u32>(0u, u_input.b) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))))) % vec2<u32>(32u));
    var var_1 = arg_1;
    var_1 = Struct_1(-21637i, -u_input.a);
    var_1 = Struct_1(-1i, ~vec3<i32>(~u_input.c.x, u_input.c.x, abs(var_1.a)) >> (vec3<u32>(u_input.b, 0u, 33005u) % vec3<u32>(32u)));
    var_1 = arg_1;
    return -_wgslsmith_dot_vec3_i32(arg_1.b, min(_wgslsmith_clamp_vec3_i32(u_input.c.www, vec3<i32>(2853i, 1i, 1i), var_1.b), -vec3<i32>(arg_2, arg_1.b.x, 38084i)) ^ var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var_0 = u_input.a.x;
    var_0 = _wgslsmith_dot_vec2_i32(countOneBits(abs(vec2<i32>(-32613i, u_input.c.x))) & reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), u_input.a.xz)), u_input.c.yz) | func_1(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), Struct_1(-(u_input.a.x & u_input.c.x), u_input.c.ywy), u_input.a.x);
    let var_1 = vec3<bool>(true, true, true);
    var_0 = ~u_input.a.x;
    var_0 = -33930i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1889f, -560f) - _wgslsmith_f_op_f32(abs(761f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1636f)) + _wgslsmith_f_op_f32(f32(-1f) * -837f))));
    let var_3 = u_input.c.x;
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(-max(u_input.c.zz, vec2<i32>(u_input.c.x, u_input.c.x))), vec4<i32>(-11082i | countOneBits(26279i ^ var_3), _wgslsmith_sub_i32(-var_3, _wgslsmith_add_i32(reverseBits(-1i), -u_input.c.x)), ~_wgslsmith_mod_i32(~(-21697i), -5936i), ~(~1i)));
}

