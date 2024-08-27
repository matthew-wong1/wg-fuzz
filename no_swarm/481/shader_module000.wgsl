struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    let var_0 = vec3<bool>(!all(!(!vec4<bool>(false, arg_2.x, arg_2.x, false))), ~(~60991u) < (_wgslsmith_clamp_u32(52006u, 0u, 0u) | 1u), arg_2.x);
    var var_1 = _wgslsmith_f_op_f32(585f - _wgslsmith_f_op_f32(exp2(arg_1)));
    var var_2 = Struct_1(vec3<u32>(min(abs(~20188u), _wgslsmith_add_u32(abs(16857u), ~41085u)), ~firstLeadingBit(firstTrailingBit(4294967295u)), firstLeadingBit(1u)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(u_input.a.ww), firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(67872i, 2147483647i)))), vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 42892i))));
    var var_3 = arg_0.x;
    return ~(~(~var_2.a.x));
}

fn func_2(arg_0: vec3<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_vec4_u32(max(vec4<u32>(1u, ~_wgslsmith_div_u32(1u, 1990u), 1u, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(136f, 1105f)), 1171f, vec2<bool>(false, true))), ~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mult_vec4_u32(~(~firstLeadingBit(vec4<u32>(0u, 4294967295u, 1u, 1u))), ~(~firstTrailingBit(vec4<u32>(1u, 63740u, 4294967295u, 0u)))));
    var var_1 = Struct_3(vec2<u32>(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.x), var_0.yw), 0u)), _wgslsmith_mod_u32(~var_0.x >> (_wgslsmith_add_u32(var_0.x, 50894u) % 32u), countOneBits(var_0.x))));
    var_1 = Struct_3(min(var_1.a, firstLeadingBit(vec2<u32>(var_0.x, select(0u, var_1.a.x, false)))));
    var_1 = Struct_3(var_0.wx);
    var_1 = Struct_3(_wgslsmith_clamp_vec2_u32((~var_0.xz << (~var_1.a % vec2<u32>(32u))) | _wgslsmith_mult_vec2_u32(var_0.wx >> (vec2<u32>(var_1.a.x, 1u) % vec2<u32>(32u)), ~vec2<u32>(1u, var_0.x)), ~(~var_0.zz), countOneBits(select(~var_1.a, vec2<u32>(43811u, 1u), arg_0.x >= u_input.a.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(-997f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -714f))) - _wgslsmith_f_op_f32(sign(189f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-450f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -329f) * -405f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 711f));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-353f, 1568f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-404f, -1042f) * _wgslsmith_f_op_f32(f32(-1f) * -1147f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(543f, -2795f)), 1f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | u_input.a.xwy)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -440f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(695f)), _wgslsmith_f_op_f32(1099f + -1000f), true)), _wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(u_input.a.x, arg_0.b, -2147483647i))).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1484f + 233f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 176f)))), vec4<f32>(var_0.x, 3255f, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_div_f32(var_0.x, 1221f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -112f, 1000f, -1272f) * vec4<f32>(232f, -1000f, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(180f, 644f, var_0.x, 229f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -737f, -253f, 698f), vec4<f32>(var_0.x, 207f, var_0.x, var_0.x), false)))))));
    var var_2 = -647f;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.zz - vec2<f32>(684f, 1544f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.yy - _wgslsmith_f_op_vec2_f32(sign(var_1.xy))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * var_0.wx))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(191f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(406f, -742f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x * 427f))), var_0.x), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(944f)), _wgslsmith_f_op_f32(abs(var_3.x))), var_3.x, -1461f, -247f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, 1171f, var_3.x, -1000f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -247f), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(-1421f)))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mod_i32(u_input.a.x, 1i), func_1(Struct_1(vec3<u32>(1u, 1u, 1u), u_input.a.x)), _wgslsmith_add_i32(-firstLeadingBit(0i), u_input.a.x), countOneBits(_wgslsmith_mod_i32(1i, u_input.a.x)), func_1(func_1(Struct_1(vec3<u32>(1u, 1u, 1u), 2169i))));
    var_0 = Struct_2(~u_input.a.x, func_1(Struct_1(~(~var_0.e.a), _wgslsmith_add_i32(-2147483647i, var_0.d))), -func_1(var_0.b).b, ~var_0.b.b, var_0.e);
    let var_1 = Struct_4(~_wgslsmith_mod_i32(_wgslsmith_add_i32(select(-14991i, u_input.a.x, true), ~u_input.a.x), -select(66764i, -2147483647i, false)));
    var_0 = Struct_2(max(-_wgslsmith_mult_i32(var_0.e.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, -34759i), vec2<i32>(var_0.a, var_1.a))), _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(u_input.a.x, -1i, var_1.a, var_0.e.b)), -vec4<i32>(var_1.a, u_input.a.x, var_0.d, var_0.e.b))), func_1(var_0.b), max(~(-4782i), var_0.c & -_wgslsmith_clamp_i32(-10503i, 0i, -1i)), select(-var_1.a, var_1.a, false) >> ((var_0.e.a.x << (firstTrailingBit(var_0.e.a.x) % 32u)) % 32u), func_1(func_1(Struct_1(~vec3<u32>(var_0.e.a.x, var_0.e.a.x, 28365u), ~42077i))));
    var var_2 = Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(1u, ~var_0.e.a.x | ~9982u), vec2<u32>(~var_0.b.a.x << (var_0.b.a.x % 32u), ~(55251u & var_0.e.a.x))));
    var var_3 = Struct_4(-var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(223f);
}

