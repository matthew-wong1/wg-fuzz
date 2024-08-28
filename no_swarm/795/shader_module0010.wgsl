struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(214f, abs(~(vec4<i32>(-2147483647i, u_input.d.x, u_input.c.x, -47575i) ^ u_input.b)), 12021u);
    let var_1 = ~(~vec2<u32>(firstLeadingBit(~var_0.c), ~var_0.c & ~var_0.c));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-318f, -670f, _wgslsmith_f_op_f32(sign(520f)), -794f), vec4<f32>(-840f, var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_f_op_f32(-2048f - _wgslsmith_f_op_f32(select(var_0.a, 1046f, true)))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1258f)))), var_0.b ^ vec4<i32>(i32(-1i) * -12876i, -var_0.b.x, -var_0.b.x, i32(-1i) * -25449i), ~var_0.c));
    var_2 = Struct_3(var_2.a, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - 523f)), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(ceil(var_0.a)))), -(~countOneBits(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, -2147483647i))), _wgslsmith_mult_u32(max(~65837u, min(1u, var_0.c)), reverseBits(var_0.c))));
    var var_3 = true;
    return var_2.b.a;
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    var var_0 = abs(0i);
    var var_1 = vec3<u32>(12336u, min(44747u, _wgslsmith_dot_vec4_u32(reverseBits(abs(vec4<u32>(1u, 10717u, arg_3.b.c, arg_3.b.c))), (vec4<u32>(28105u, arg_3.b.c, arg_3.b.c, 22064u) & vec4<u32>(0u, 40303u, 0u, 4294967295u)) >> (firstLeadingBit(vec4<u32>(0u, 1u, 27637u, arg_3.b.c)) % vec4<u32>(32u)))), ~select(arg_3.b.c, ~_wgslsmith_mult_u32(4294967295u, arg_3.b.c), true));
    var_0 = ~u_input.e;
    var_0 = abs(abs(_wgslsmith_mod_i32(-1i, 1i))) << (arg_3.b.c % 32u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-772f * arg_1.b))))));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1157f, -1704f)))), Struct_4(_wgslsmith_f_op_f32(1198f * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(601f), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(685f, -1000f, -1584f, -410f))) - vec4<f32>(1f, 1f, 1f, 1f)), Struct_2(_wgslsmith_f_op_f32(round(503f)), -u_input.d, ~4294967295u)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> f32 {
    var var_0 = func_2();
    var_0 = Struct_1(var_0.a);
    let var_1 = ~(~vec2<u32>(arg_0.x, ~arg_0.x) ^ ~(~arg_0));
    var_0 = func_2();
    var var_2 = !(!vec3<bool>(arg_1 && arg_1, false, false));
    return _wgslsmith_f_op_f32(func_2().a - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))) + vec2<f32>(1f, 1f));
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 1486f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~vec2<u32>(71307u, 72247u), false)) - -1841f)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1055f))), max(u_input.d & _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(-12016i, 84i, -63563i, u_input.e), u_input.d), firstLeadingBit(-vec4<i32>(u_input.e, u_input.b.x, u_input.d.x, -2147483647i))), (select(47396u, 21767u, true) << (_wgslsmith_sub_u32(19136u, 1u) % 32u)) | min(0u, 23504u)));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.b.c, select(var_1.b.c >> (var_1.b.c % 32u), ~(1u >> (var_1.b.c % 32u)), select(select(true, false, true), any(vec3<bool>(false, true, true)), true)), 12759u), ~(~vec3<u32>(var_1.b.c, 1u, 62567u) ^ vec3<u32>(var_1.b.c, 1u | var_1.b.c, 41613u)));
    var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(countOneBits(~var_1.b.c), reverseBits(1u), ~firstLeadingBit(var_1.b.c), countOneBits(select(1u, 19078u, true))), vec4<u32>(min(_wgslsmith_clamp_u32(65411u, 1u, abs(1u)), 4294967295u), 4294967295u, var_1.b.c, 0u));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.x - -908f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))));
    let var_4 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(abs(abs(firstTrailingBit(vec2<i32>(13282i, var_1.b.b.x)))), vec2<i32>(_wgslsmith_sub_i32(0i, i32(-1i) * -69426i), _wgslsmith_add_i32(~u_input.b.x, -17916i))), u_input.c);
    var_3 = Struct_4(_wgslsmith_f_op_f32(var_1.a.x - var_1.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))));
    let var_5 = ~(~select(~vec4<i32>(24874i, u_input.e, var_1.b.b.x, var_4.x), ~(u_input.b ^ vec4<i32>(-87020i, 35354i, 2147483647i, 2147483647i)), vec4<bool>(any(vec3<bool>(false, false, true)), true, false, false)));
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(906f + -1000f), var_1.b.a, var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_1.b.c, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_add_u32(1u, 49559u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b.c, 4294967295u), vec2<u32>(var_1.b.c, 4294967295u)) & reverseBits(vec2<u32>(var_1.b.c, 4864u)))), 1439f, firstTrailingBit(var_1.b.c));
}

