struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> u32 {
    let var_0 = select(select(u_input.c, _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 1150i, -1i), vec3<i32>(min(u_input.b, u_input.c.x), 2147483647i, arg_3)), select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, false, true)), arg_1.b.x >= -664f, true), false)), u_input.c, true);
    let var_1 = !(var_0.x < -47525i);
    let var_2 = arg_1;
    var var_3 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(abs(firstTrailingBit(firstLeadingBit(vec4<u32>(var_2.a, arg_2.x, arg_1.a, 20748u))))), ~(vec4<u32>(max(1u, 1u), arg_2.x | arg_2.x, var_2.a, 24639u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_2.x, arg_2.x, 52411u), abs(vec4<u32>(arg_1.a, var_2.a, arg_1.a, 0u)))), _wgslsmith_div_vec4_u32(~(~firstLeadingBit(vec4<u32>(var_2.a, 29978u, arg_2.x, arg_2.x))), ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a, arg_1.a, 34916u, arg_2.x), vec4<u32>(arg_1.a, 1u, 0u, 12378u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a, 38010u, 1u, arg_2.x), vec4<u32>(arg_1.a, 4294967295u, 4294967295u, 1u)))));
    var var_4 = Struct_1(~reverseBits(0u), vec2<f32>(arg_0.x, 1931f));
    return (_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, var_2.a, firstTrailingBit(28784u)), vec3<u32>(~18111u, 4294967295u, arg_1.a)) << (~countOneBits(var_2.a) % 32u)) | arg_1.a;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = true;
    let var_1 = select(vec3<bool>(!(func_3(vec4<f32>(arg_0.b.x, arg_0.b.x, -1000f, arg_0.b.x), Struct_1(0u, vec2<f32>(-1818f, arg_0.b.x)), vec3<u32>(arg_0.a, 15297u, 9658u), 1i) <= ~arg_0.a), var_0, true), select(vec3<bool>(false, var_0, (var_0 != var_0) & any(vec3<bool>(false, var_0, var_0))), !vec3<bool>(!var_0, all(vec4<bool>(false, true, true, false)), true), select(select(select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, var_0), false), !vec3<bool>(var_0, false, var_0), select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, var_0, false), vec3<bool>(var_0, false, false))), select(!vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), all(vec4<bool>(var_0, var_0, var_0, var_0))), !select(vec3<bool>(false, true, true), vec3<bool>(var_0, var_0, var_0), var_0))), false);
    var var_2 = Struct_1(select(arg_0.a << (countOneBits(arg_0.a & 0u) % 32u), 0u, any(!var_1.yx) && select(any(vec4<bool>(var_0, true, true, var_1.x)), false, u_input.d != -19530i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, arg_0.b.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, -1044f) + vec2<f32>(355f, -415f))))));
    var_2 = Struct_1(~(~var_2.a << (arg_0.a % 32u)) << (1u % 32u), arg_0.b);
    var_2 = Struct_1(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(arg_0.a, min(4294967295u, 44450u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, arg_0.a, 4294967295u, 4294967295u), vec4<u32>(0u, var_2.a, 93602u, arg_0.a)), _wgslsmith_sub_u32(var_2.a, arg_0.a)), ~_wgslsmith_add_u32(0u, 0u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-246f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.b.x)))))));
    return arg_0.a;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = ~(vec2<u32>(_wgslsmith_mult_u32(~17934u, func_2(Struct_1(18610u, vec2<f32>(arg_0.x, arg_0.x)))), abs(~0u)) >> (vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(10761u, 34576u, 4294967295u, 1u), vec4<u32>(0u, 1u, 33808u, 1u)) | ~4294967295u) % vec2<u32>(32u)));
    var var_1 = ~var_0.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(min(countOneBits(var_0.x), var_0.x >> (var_0.x % 32u)), abs(~var_0.x)), abs(firstTrailingBit(~vec2<u32>(1u, var_0.x)))) % 32u);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(sign(890f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(930f + 1280f) + _wgslsmith_f_op_f32(663f - arg_0.x))))), any(vec2<bool>(true, any(vec3<bool>(true, true, true)))) && true));
    var var_3 = vec2<bool>(true, false);
    var_1 = 30362u;
    return Struct_1(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, var_0.x, var_0.x, 0u) ^ ~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 4294967295u, 99235u, var_0.x) << (~vec4<u32>(var_0.x, 1u, 16914u, var_0.x) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), _wgslsmith_mod_vec4_u32(reverseBits(reverseBits(vec4<u32>(4414u, var_0.x, 1u, 20498u))), select(vec4<u32>(41050u, var_0.x, var_0.x, var_0.x), ~vec4<u32>(var_0.x, 40222u, 10861u, var_0.x), select(vec4<bool>(true, var_3.x, var_3.x, true), vec4<bool>(var_3.x, var_3.x, true, var_3.x), var_3.x)))), arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    let var_0 = max(vec4<i32>(_wgslsmith_mult_i32(u_input.b, u_input.a), ~u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, -1i, u_input.d), vec4<i32>(u_input.d, 0i, -2147483647i, 40764i)), u_input.c.x & u_input.b, 0i, ~45071i), firstLeadingBit(vec4<i32>(u_input.c.x, u_input.d, 2147483647i, u_input.c.x) >> (vec4<u32>(arg_1.x, 97667u, arg_1.x, arg_0.a) % vec4<u32>(32u)))), ~u_input.a), firstTrailingBit(-min(vec4<i32>(u_input.d, -1i, u_input.b, -7312i), vec4<i32>(u_input.c.x, u_input.b, u_input.c.x, 0i)) ^ (~vec4<i32>(-2147483647i, u_input.a, u_input.c.x, u_input.d) | vec4<i32>(u_input.c.x, u_input.a, 2147483647i, u_input.a))));
    let var_1 = func_1(vec2<f32>(-144f, -431f));
    let var_2 = var_0.x;
    return any(vec2<bool>(false, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, false, true);
    let var_1 = Struct_1(1u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1044f, 1384f) - vec2<f32>(-639f, -1987f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(730f, -1163f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -498f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(280f, -1478f), vec2<f32>(-740f, -674f), var_0.x)))))));
    var var_2 = u_input.d;
    var_2 = -7843i;
    let var_3 = vec4<bool>(!var_0.x, var_0.x, !func_4(func_1(var_1.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 93928u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a, var_1.a), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(1u, var_1.a))), false);
    var_2 = -u_input.b << ((~var_1.a >> (67881u % 32u)) % 32u);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2458f));
    var_0 = var_3.wzz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yz, vec2<u32>(max(func_1(vec2<f32>(var_1.b.x, -1600f)).a, ~(~32214u)), var_1.a), ~2793u);
}

