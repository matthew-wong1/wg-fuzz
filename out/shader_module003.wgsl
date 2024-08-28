struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<i32> {
    return ~_wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(19469i), -u_input.a, -u_input.a, firstTrailingBit(u_input.a)), vec4<i32>(u_input.a, abs(u_input.a), u_input.a, u_input.a)) & -vec4<i32>(~u_input.a, u_input.a, u_input.a, 0i);
}

fn func_2(arg_0: i32) -> vec3<i32> {
    let var_0 = Struct_1(-1i);
    var var_1 = Struct_1(arg_0);
    let var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_div_i32(~_wgslsmith_mult_i32(2147483647i, var_0.a), i32(-1i) * -2147483647i));
    var_1 = Struct_1(_wgslsmith_dot_vec4_i32(func_3() << (reverseBits(vec4<u32>(0u, 3066u, 13448u, 38743u)) % vec4<u32>(32u)), ~vec4<i32>(-1i, 0i, var_0.a, -45025i)));
    return vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -1i, ~(-1i), var_1.a << (1u % 32u), ~6061i), (vec4<i32>(-2147483647i, arg_0, 2147483647i, -2147483647i) << (vec4<u32>(1161u, 64410u, 36663u, 0u) % vec4<u32>(32u))) >> (~vec4<u32>(0u, 38606u, 4294967295u, 4294967295u) % vec4<u32>(32u))), ~var_2.a, -_wgslsmith_mult_i32(-var_2.a, _wgslsmith_add_i32(-60045i, 12026i))) | _wgslsmith_clamp_vec3_i32(select(vec3<i32>(-53511i, u_input.a, var_1.a), max(vec3<i32>(2147483647i, var_0.a, -55370i), vec3<i32>(-74300i, var_3.a, var_1.a)), any(vec2<bool>(false, true))) ^ (_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a, var_1.a, var_3.a), vec3<i32>(var_2.a, arg_0, -1i)) & ~vec3<i32>(var_1.a, -11872i, 16570i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(36i, var_3.a, var_0.a), vec3<i32>(16192i, var_3.a, -1i)), u_input.a, 37165i), max(vec3<i32>(max(30109i, 24487i), _wgslsmith_add_i32(u_input.a, 0i), ~var_3.a), select(vec3<i32>(-23195i, -1i, arg_0) | vec3<i32>(u_input.a, u_input.a, var_2.a), ~vec3<i32>(var_3.a, -3176i, var_2.a), true)));
}

fn func_1() -> f32 {
    var var_0 = Struct_1(2147483647i);
    var var_1 = min(firstTrailingBit(~vec2<i32>(_wgslsmith_clamp_i32(1i, var_0.a, var_0.a), abs(72123i))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(_wgslsmith_sub_i32(-34425i, var_0.a), max(var_0.a, var_0.a)), vec2<i32>(-51755i, abs(~u_input.a)), vec2<i32>(-(u_input.a >> (0u % 32u)), ~(~u_input.a))));
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u));
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 0i, var_0.a), func_2(var_0.a));
    let var_4 = any(vec3<bool>(true, !(!all(vec4<bool>(false, true, true, true))), all(vec3<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(true, true, false)), true))));
    return _wgslsmith_f_op_f32(1113f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1894f), _wgslsmith_f_op_f32(f32(-1f) * -1050f))), -141f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, 247f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -402f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-942f, -1000f, -825f, _wgslsmith_f_op_f32(f32(-1f) * -1290f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1584f, -515f, -827f, -665f)), vec4<f32>(160f, 618f, 1592f, 1000f))), true)) - vec4<f32>(_wgslsmith_f_op_f32(round(427f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - 925f), _wgslsmith_f_op_f32(min(1461f, _wgslsmith_f_op_f32(trunc(-307f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1615f), _wgslsmith_f_op_f32(271f * 995f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1645f + -684f))))) + 1198f);
    var var_2 = Struct_1(2147483647i);
    var_2 = Struct_1(~func_3().x);
    var var_3 = Struct_1(i32(-1i) * -1i);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))) - _wgslsmith_f_op_f32(f32(-1f) * -594f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(877f * -1931f)))));
    let var_5 = Struct_1(-1i);
    var_3 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(max(1u, 24563u), 1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 40326u, 1u), vec3<u32>(4294967295u, 109639u, 18962u))), vec4<u32>(1u << (0u % 32u), ~1u, ~1u, reverseBits(1u)), false), _wgslsmith_f_op_f32(-var_0.x));
}

