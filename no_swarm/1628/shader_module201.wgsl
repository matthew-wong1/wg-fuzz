struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<i32> {
    var var_0 = vec3<i32>(-u_input.b, select(-41987i, 55347i, true), firstTrailingBit(1i));
    let var_1 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), true)));
    var_0 = abs(_wgslsmith_mod_vec3_i32(firstLeadingBit(-vec3<i32>(var_0.x, 0i, var_0.x)) << ((select(vec3<u32>(1u, 1u, u_input.a.x), vec3<u32>(4294967295u, u_input.e.x, 4294967295u), vec3<bool>(var_1.x, var_1.x, true)) ^ countOneBits(vec3<u32>(4294967295u, u_input.a.x, u_input.e.x))) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_0.x, var_0.x), vec3<i32>(22632i, -26761i, var_0.x)), select(vec3<i32>(u_input.c, u_input.b, -1i), vec3<i32>(u_input.b, u_input.c, -2147483647i) >> (vec3<u32>(25157u, 16568u, 4294967295u) % vec3<u32>(32u)), var_1.x))));
    let var_2 = Struct_1(~_wgslsmith_clamp_vec2_i32(min(reverseBits(vec2<i32>(var_0.x, 1i)), ~vec2<i32>(2147483647i, -2147483647i)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(1i, u_input.b)), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.yy, vec2<i32>(-2147483647i, u_input.c)), ~var_0.yz)));
    var_0 = (-vec3<i32>(var_0.x, ~var_2.a.x, reverseBits(u_input.b)) | vec3<i32>(u_input.c ^ -2147483647i, ~(-u_input.c), _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, u_input.c), var_0.x & u_input.c))) ^ ~(-vec3<i32>(var_2.a.x, var_2.a.x, -38333i) << (~select(vec3<u32>(1u, 1u, u_input.d), vec3<u32>(u_input.d, 0u, u_input.d), var_1.x) % vec3<u32>(32u)));
    return vec2<i32>(-792i, firstTrailingBit(0i)) << (vec2<u32>(_wgslsmith_add_u32(1u, ~u_input.d), 56744u ^ _wgslsmith_mult_u32(u_input.a.x, 1u)) % vec2<u32>(32u));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = !arg_0;
    var var_1 = !vec2<bool>(false, abs(-2147483647i) >= u_input.b);
    let var_2 = Struct_1(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(2147483647i, 38050i)), func_3()) << (~_wgslsmith_mult_vec2_u32(~u_input.e, vec2<u32>(u_input.e.x, 4294967295u)) % vec2<u32>(32u)));
    var_1 = !vec2<bool>(!var_0.x, true);
    let var_3 = u_input.a;
    return Struct_1(vec2<i32>(-_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c, -47018i), i32(-1i) * -24329i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(8068i, var_2.a.x), vec2<i32>(2147483647i, -1i)) >> (6575u % 32u)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-611f - -1494f), _wgslsmith_f_op_f32(ceil(-1998f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2367f, -277f))))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -872f)) - _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(floor(3285f)), true))), -2024f), func_2(vec4<bool>(true, true, true, true)), Struct_1(arg_0.a));
    let var_1 = !select(vec4<bool>(all(vec3<bool>(false, true, true)), true, all(vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true), true);
    let var_2 = 4294967295u;
    let var_3 = ~_wgslsmith_sub_i32(-31921i, reverseBits(0i << (~u_input.a.x % 32u)));
    let var_4 = arg_0;
    return abs(var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(func_1(Struct_1(vec2<i32>(34081i, u_input.c))) != firstTrailingBit(~(1i << (u_input.a.x % 32u))));
    var var_1 = ~vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 0u, 50358u, 76896u), firstTrailingBit(vec4<u32>(79936u, 53979u, u_input.a.x, 13347u)))), ~101432u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(select(u_input.e.x, u_input.a.x, var_0), ~u_input.a.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 26232u, 59667u, 32390u) ^ vec4<u32>(u_input.d, 8840u, 4294967295u, u_input.d), vec4<u32>(0u, 15222u, u_input.a.x, 1u))), reverseBits(_wgslsmith_div_u32(~u_input.e.x, ~u_input.d)));
    var_1 = ~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.a.x, var_1.x), vec4<u32>(var_1.x, 0u, u_input.a.x, u_input.d)), 4294967295u << (u_input.e.x % 32u), u_input.a.x, 0u);
    var_1 = ~(~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 9084u, 4294967295u, var_1.x), vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.d)) >> ((vec4<u32>(u_input.e.x, 5579u, u_input.e.x, u_input.a.x) & vec4<u32>(0u, 6453u, 1u, u_input.d)) % vec4<u32>(32u)))));
    var_1 = vec4<u32>(~u_input.a.x, 67963u, u_input.d, u_input.d);
    var_1 = ~reverseBits(abs(firstTrailingBit(reverseBits(vec4<u32>(36668u, var_1.x, var_1.x, 0u)))));
    let var_2 = vec4<bool>(var_0, var_0, true != (any(vec4<bool>(var_0, var_0, var_0, false)) == var_0), any(select(!select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, true), var_0), !select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, false, var_0), false), !select(vec3<bool>(true, true, false), vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, true)))));
    var var_3 = _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-251f, -1000f))), -265f)), !(!select(!var_2.x, any(var_2.yyy), all(vec4<bool>(var_2.x, false, var_0, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.yww);
}

