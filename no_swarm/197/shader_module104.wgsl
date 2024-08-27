struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_div_u32(u_input.a ^ _wgslsmith_clamp_u32(u_input.a, 67380u, ~u_input.a), 0u);
    let var_1 = vec2<bool>(!(!(!arg_0 | true)), arg_0 & any(select(select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(true, false, arg_0, true), true), select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, true, arg_0, false)), !arg_0)));
    var var_2 = ~_wgslsmith_add_vec2_u32(reverseBits(firstLeadingBit(vec2<u32>(u_input.a, u_input.a))), firstLeadingBit(~(vec2<u32>(u_input.b, u_input.a) >> (vec2<u32>(2216u, 63301u) % vec2<u32>(32u)))));
    var_2 = ~_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0, 22369u) >> ((firstLeadingBit(vec2<u32>(var_2.x, u_input.b)) ^ ~vec2<u32>(41299u, var_2.x)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(15962u, reverseBits(80568u)), ~(vec2<u32>(var_2.x, 68911u) ^ vec2<u32>(var_0, var_2.x))));
    var_2 = reverseBits(vec2<u32>(~max(var_2.x, u_input.b & 121466u), ~_wgslsmith_div_u32(1u, ~17326u)));
    return -1162f;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-325f + arg_0.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(func_3(false)))));
    let var_1 = arg_0.a;
    var var_2 = arg_0;
    let var_3 = arg_0;
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), var_2.a)) + -967f)));
    return var_3.b.zz;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    let var_0 = 39470i;
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-53080i, _wgslsmith_mod_i32(0i, var_0), firstLeadingBit(2147483647i), firstTrailingBit(u_input.d)), vec4<i32>(0i, arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -1i, -2147483647i, 0i), u_input.c), -15535i | u_input.c.x) | (vec4<i32>(-1i) * -vec4<i32>(arg_3.d, -1i, 26960i, 43385i))), _wgslsmith_add_vec4_i32(vec4<i32>(5013i, 0i, -16528i, 1i) >> (~vec4<u32>(33129u, u_input.a, arg_2.x, 4294967295u) % vec4<u32>(32u)), ~(u_input.c >> (vec4<u32>(1u, 1u, 4294967295u, 92229u) % vec4<u32>(32u)))) << (vec4<u32>(u_input.b, ~arg_0.x, 0u, arg_2.x) % vec4<u32>(32u)));
    let var_2 = -u_input.c.x;
    var_1 = ((min(_wgslsmith_dot_vec2_i32(arg_1, arg_1), ~var_0) & 1i) << (~arg_0.x % 32u)) ^ firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -32505i & u_input.d, firstLeadingBit(arg_1.x), countOneBits(51489i)), vec4<i32>(arg_3.d, -2147483647i, -1i, 4020i ^ arg_3.d)));
    var var_3 = true;
    return true;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = !all(arg_2.b.zz);
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), -1000f, _wgslsmith_f_op_f32(trunc(1795f)), -1515f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-636f * arg_3.a), _wgslsmith_f_op_f32(-732f + -911f), arg_3.a, arg_3.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(992f, 884f, arg_3.a, 168f), vec4<f32>(arg_3.a, -2536f, -1000f, var_1.a), var_1.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1719f, 475f, 1946f, arg_2.a) - vec4<f32>(arg_3.a, 228f, -575f, -1006f))))), arg_2.b.x));
    var var_3 = select(arg_3.c, vec4<bool>(arg_2.b.x, true, !arg_2.c.x, true), arg_3.b);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(139f, -217f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(820f - 1192f), _wgslsmith_f_op_f32(ceil(-723f))))) - -441f));
    return func_4(vec2<u32>(_wgslsmith_sub_u32(u_input.b, ~arg_0), 39232u), select(vec2<i32>(~_wgslsmith_clamp_i32(u_input.d, arg_1, arg_2.d), ~(-6145i)), select(vec2<i32>(abs(var_1.d), firstTrailingBit(-41265i)), countOneBits(u_input.c.ww), select(var_3.yx, !vec2<bool>(arg_2.c.x, arg_3.c.x), true)), func_2(Struct_1(-1210f, vec4<bool>(false, true, false, arg_2.c.x), !vec4<bool>(false, arg_2.c.x, false, var_3.x), firstTrailingBit(arg_1)), var_1.b.x, ~arg_0)), ~firstTrailingBit(vec3<u32>(~4294967295u, ~69277u, reverseBits(20940u))), Struct_1(_wgslsmith_f_op_f32(-var_2.x), select(vec4<bool>(true, arg_2.c.x, true, var_1.c.x), !select(arg_3.c, var_1.b, vec4<bool>(arg_3.c.x, arg_3.b.x, true, var_3.x)), any(var_1.c)), !(!vec4<bool>(var_3.x, true, arg_2.c.x, false)), var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1106f, vec4<bool>(true, select(true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false))), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !func_1(u_input.a, u_input.c.x, Struct_1(-499f, vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), -1i), Struct_1(1000f, vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), u_input.c.x)) || false), abs(select(~_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), firstLeadingBit(firstTrailingBit(u_input.c.x)), (u_input.c.x > u_input.c.x) || (u_input.b < u_input.a))));
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(1000f, 1598f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * -1199f) - var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(374f * var_0.a)), _wgslsmith_f_op_f32(trunc(-466f))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1234f))), _wgslsmith_f_op_f32(-var_0.a), var_0.a), var_0.c.x & (any(vec3<bool>(true, false, var_0.c.x)) & !var_0.c.x)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_2.x, -228f)))) + 513f)), select(var_0.b, select(var_0.b, select(vec4<bool>(var_0.c.x, var_0.b.x, var_0.c.x, var_0.b.x), vec4<bool>(true, true, var_0.c.x, var_0.b.x), var_0.b.x), !var_0.c.x), !vec4<bool>(false, all(var_0.c), false, true)), vec4<bool>(var_0.d > _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec2_i32(u_input.c.wx, vec2<i32>(var_0.d, -2147483647i)), ~(-16445i)), false, false, var_0.b.x), -16348i);
    var var_4 = -u_input.c.wzy;
    let var_5 = var_0.d;
    let var_6 = !vec3<bool>(var_0.b.x, all(select(var_3.c.xzz, vec3<bool>(var_0.b.x, false, true), var_3.c.zyw)), true);
    var var_7 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2165f * -2290f)))), u_input.b, max(select(6066u, 0u, false), ~(u_input.a | 1u) >> (firstLeadingBit(reverseBits(18737u)) % 32u)));
}

