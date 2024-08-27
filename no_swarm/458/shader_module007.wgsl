struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = vec3<bool>(!all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), any(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)))), !any(vec4<bool>(true, true, true, true)) & (any(vec4<bool>(true, true, true, true)) | false));
    var var_1 = min(u_input.e.wy, vec2<i32>(1i, _wgslsmith_mult_i32(arg_0, arg_0))) >> (max(firstLeadingBit(vec2<u32>(~u_input.d, u_input.d)), vec2<u32>(1u, ~u_input.d & 5334u)) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-593f, -1035f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -429f))) - _wgslsmith_f_op_f32(2230f * _wgslsmith_f_op_f32(floor(1354f))))));
    var_1 = select(_wgslsmith_mod_vec2_i32(u_input.e.yx, vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -9655i, u_input.b), ~u_input.e.zyy))), -_wgslsmith_mult_vec2_i32(-abs(u_input.e.xz), select(~u_input.e.ww, -u_input.e.wx, vec2<bool>(var_0.x, true))), !var_0.x);
    var_1 = _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(var_1.x, 2147483647i) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(13880u, 0u)) % vec2<u32>(32u))), vec2<i32>(u_input.a, -17978i), -u_input.e.xz) ^ u_input.e.xz;
    return ~abs(i32(-1i) * -4020i);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(1u, ~firstLeadingBit(vec4<i32>(u_input.e.x, 26874i, -2147483647i, u_input.e.x)) & u_input.e);
    var var_1 = _wgslsmith_div_vec3_i32(~abs(~(~vec3<i32>(83343i, -1i, var_0.b.x))), u_input.e.yxx);
    var var_2 = Struct_1(firstTrailingBit(var_0.a ^ ~1u), vec4<i32>(-1i, -33117i, _wgslsmith_mult_i32(u_input.a, func_3(var_1.x)), u_input.e.x));
    var var_3 = -215f;
    let var_4 = Struct_3(true, Struct_1(21898u, u_input.e));
    return Struct_3(true, Struct_1(var_2.a, vec4<i32>(29282i, -(~var_4.b.b.x), i32(-1i) * -52676i, _wgslsmith_dot_vec4_i32(var_4.b.b, _wgslsmith_mult_vec4_i32(u_input.e, vec4<i32>(-2147483647i, -45171i, 16283i, var_2.b.x))))));
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = select(false, _wgslsmith_f_op_f32(-1f) >= arg_0, all(vec2<bool>(true, true)));
    var var_1 = func_2();
    var var_2 = ~(-(-var_1.b.b.x ^ var_1.b.b.x)) | var_1.b.b.x;
    let var_3 = vec3<f32>(-865f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(arg_0, arg_0, false)))), 128f))), _wgslsmith_f_op_f32(exp2(arg_0)));
    let var_4 = _wgslsmith_f_op_f32(-var_3.x);
    return countOneBits(-u_input.e.x);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = vec4<bool>(arg_1.b.a >= firstTrailingBit(4294967295u), true, ~arg_1.b.a == 24680u, (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_1.b.a, u_input.d, 2053u, 4294967295u)), min(vec4<u32>(u_input.d, arg_1.b.a, 4294967295u, arg_1.b.a), vec4<u32>(arg_1.b.a, 0u, arg_1.b.a, u_input.d))) > abs(88759u)) | (_wgslsmith_mult_u32(u_input.d & u_input.d, _wgslsmith_sub_u32(arg_1.b.a, arg_1.b.a)) <= _wgslsmith_mult_u32(arg_1.b.a, u_input.d)));
    let var_1 = vec3<u32>(_wgslsmith_add_u32(~(~_wgslsmith_clamp_u32(0u, 20416u, arg_1.b.a)), 77685u), _wgslsmith_dot_vec3_u32((~vec3<u32>(1u, arg_1.b.a, u_input.d) ^ vec3<u32>(u_input.d, u_input.d, u_input.d)) ^ ~vec3<u32>(arg_1.b.a, 1u, arg_1.b.a), reverseBits(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_1.b.a, arg_1.b.a, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 18304u, u_input.d), vec3<u32>(u_input.d, 0u, u_input.d))))), ~max(1u, 43653u));
    return select(vec3<bool>(!any(select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, true, false), true)), arg_1.a & true, _wgslsmith_dot_vec3_i32(min(arg_1.b.b.yxx, vec3<i32>(arg_1.b.b.x, -1i, u_input.b)), -vec3<i32>(u_input.a, arg_1.b.b.x, arg_0)) >= u_input.a), vec3<bool>(_wgslsmith_add_i32(arg_0 | u_input.e.x, arg_0) < arg_1.b.b.x, !var_0.x && !(false == var_0.x), arg_1.a), select(!(!(!var_0.yzx)), var_0.zxz, false));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: f32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = !vec3<bool>(arg_0.a, _wgslsmith_f_op_f32(sign(1098f)) >= -485f, arg_3.x);
    var_0 = !func_4(-select(~u_input.e.x, arg_0.b.b.x ^ arg_0.b.b.x, all(arg_3)), func_2());
    let var_1 = _wgslsmith_mod_vec3_i32(u_input.e.xwy, _wgslsmith_sub_vec3_i32(vec3<i32>(min(~arg_0.b.b.x, i32(-1i) * -21935i), arg_0.b.b.x, 1i), vec3<i32>(_wgslsmith_sub_i32(1i, 1i), abs(-14008i ^ arg_0.b.b.x), u_input.a)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_2)))) * arg_2));
    var var_3 = Struct_2(u_input.e.xw);
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_sub_vec3_i32(~u_input.e.xzw, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e.x, u_input.b, u_input.c), u_input.e.yyy, u_input.e.wwx)) | _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 1i, -1i), vec3<i32>(-41253i, u_input.a, 37782i)) >> (~(vec3<u32>(20542u, 41589u, 79249u) | vec3<u32>(u_input.d, u_input.d, u_input.d)) % vec3<u32>(32u)), vec3<i32>(-u_input.e.x & u_input.b, -46233i | u_input.e.x, u_input.b));
    var var_1 = Struct_3(true, func_5(Struct_3(!any(vec2<bool>(false, true)), Struct_1(~1u, -vec4<i32>(-7354i, u_input.b, u_input.a, u_input.e.x))), max(~vec3<u32>(u_input.d, 1u, 45577u), ~vec3<u32>(u_input.d, 36796u, u_input.d) & vec3<u32>(1u, u_input.d, 16749u)), -1000f, func_4(_wgslsmith_add_i32(func_1(-1589f), _wgslsmith_div_i32(var_0.x, u_input.c)), func_2())));
    var_1 = func_2();
    var_1 = func_2();
    let var_2 = Struct_3(false, Struct_1(_wgslsmith_mod_u32(select(~988u, ~u_input.d, var_1.b.a != 1u), ~21926u), ~_wgslsmith_sub_vec4_i32(~var_1.b.b, ~var_1.b.b)));
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_1.b.a, firstTrailingBit(12052u), 26789u | var_2.b.a), vec4<u32>(~_wgslsmith_sub_u32(var_2.b.a | 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, var_1.b.a), vec4<u32>(var_2.b.a, u_input.d, u_input.d, 4294967295u))), var_2.b.a, ~62434u, max(~firstTrailingBit(var_1.b.a), abs(reverseBits(u_input.d)))), reverseBits(var_1.b.b));
}

