struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(193f, 1801f, 1927f, 434f))) + vec4<f32>(-1609f, 1946f, -1644f, -1780f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1162f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(129f, var_0.x))))));
    let var_2 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, arg_1.x & 73282u), ~firstTrailingBit(u_input.a)), ~(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(2090i, 43745i, -25050i), vec3<i32>(-724i, 31009i, 39651i))), -11655i, _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(-var_0.yx)), !(!(_wgslsmith_f_op_f32(-var_0.x) < -796f)));
    var var_3 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(-453f, var_0.x)));
    var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1187f + var_0.x)))));
    return _wgslsmith_mod_vec2_i32(min(_wgslsmith_div_vec2_i32(min(vec2<i32>(var_2.b, 1i), vec2<i32>(var_2.b, var_2.b)), -vec2<i32>(70777i, var_2.b)), vec2<i32>(1i, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(var_2.b, var_2.b << (u_input.b.x % 32u)), ~vec2<i32>(2147483647i, var_2.c))) & (max(select(vec2<i32>(var_2.c, 61517i), vec2<i32>(var_2.c, var_2.b), arg_0) << (~arg_1.xz % vec2<u32>(32u)), firstTrailingBit(-vec2<i32>(var_2.b, 39999i))) << (~firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), u_input.b)) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = Struct_2(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_3, -17194i, arg_3), select(arg_0.a.wwy, vec3<i32>(arg_0.a.x, arg_0.a.x, -2147483647i), true)), _wgslsmith_mult_vec3_i32(arg_0.a.xzw, arg_0.a.yzx)), -1i, -2147483647i, firstLeadingBit(abs(-22290i))), arg_1.zxx);
    var_0 = Struct_2(-arg_0.a, firstLeadingBit(_wgslsmith_mult_vec3_u32(select(vec3<u32>(15120u, var_0.b.x, arg_1.x), arg_1.zyz, vec3<bool>(false, arg_2.e, arg_2.e)), vec3<u32>(24163u, arg_0.b.x, 4863u))) >> ((arg_0.b | var_0.b) % vec3<u32>(32u)));
    let var_1 = Struct_1(~(~select(0u, arg_1.x, true)) >> (4294967295u % 32u), -abs(-arg_0.a.x | 52583i), _wgslsmith_add_i32(arg_3, select(-(~2147483647i), -firstTrailingBit(1i), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.d.x)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(812f, -394f))))))), false);
    let var_2 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.x, -233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-132f)) * _wgslsmith_f_op_f32(-arg_2.d.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, 967f), _wgslsmith_f_op_f32(-arg_2.d.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.d.x, arg_2.d.x, var_1.d.x, -1665f), vec4<f32>(515f, 820f, var_1.d.x, arg_2.d.x), vec4<bool>(arg_2.e, false, true, arg_2.e)))), vec4<f32>(_wgslsmith_f_op_f32(666f + -838f), _wgslsmith_f_op_f32(f32(-1f) * -592f), -103f, 137f))), Struct_3(func_3(vec2<bool>(select(arg_2.e, false, true), arg_2.e), min(vec3<u32>(arg_1.x, 1u, arg_0.b.x) >> (vec3<u32>(var_1.a, arg_2.a, var_0.b.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(arg_1.yxy, vec3<u32>(21712u, arg_2.a, arg_1.x)))), u_input.b.x), countOneBits(1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, ~firstTrailingBit(var_0.b.x)), ~4294967295u), !(!select(!vec4<bool>(arg_2.e, arg_2.e, true, true), select(vec4<bool>(var_1.e, var_1.e, arg_2.e, false), vec4<bool>(arg_2.e, false, var_1.e, var_1.e), vec4<bool>(true, var_1.e, arg_2.e, arg_2.e)), false | var_1.e)));
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(515f, var_2.a.x, var_2.a.x, arg_2.d.x) + vec4<f32>(110f, arg_2.d.x, 1270f, var_2.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.x, 610f, arg_2.d.x, var_1.d.x) + vec4<f32>(var_2.a.x, -607f, arg_2.d.x, var_2.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-903f, arg_2.d.x, arg_2.d.x, arg_2.d.x), var_2.a) + var_2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.a.x, var_1.d.x, var_1.d.x, var_1.d.x), var_2.a))))))), var_2.b, _wgslsmith_mult_u32((0u | arg_0.b.x) << (4294967295u % 32u), ~u_input.b.x >> (1u % 32u)) ^ 1u, arg_1.x, !vec4<bool>(false, var_1.e, true, !any(var_2.e.yy)));
    return !(!arg_2.e && true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_4 {
    let var_0 = abs(max(arg_1.a.x, reverseBits(arg_2.a.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1460f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1581f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1774f + -528f))))));
    let var_2 = !vec3<bool>(arg_2.b.x > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_2.b.x), _wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(76628u, arg_1.b.x), arg_2.b.zy)), true, all(!(!arg_0)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -273f) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1123f, -1419f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-607f))))) + _wgslsmith_f_op_f32(f32(-1f) * -1725f)));
    var var_3 = min(~(~_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(u_input.a, 4294967295u, arg_2.b.x)), arg_2.b)), firstLeadingBit(vec3<u32>(1u ^ (27097u & arg_1.b.x), ~(~u_input.a), 34842u)));
    return Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) - _wgslsmith_f_op_f32(min(-1173f, _wgslsmith_f_op_f32(-544f * -3467f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(344f, 1408f))) * 1657f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-181f, -1031f))), Struct_3(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.a.ww ^ vec2<i32>(var_0, arg_1.a.x), vec2<i32>(-1i, var_0) | arg_2.a.yy), arg_1.a.xw, select(arg_2.a.wy, arg_2.a.zw, !arg_0.x)), ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.b.x, arg_2.b.x, var_3.x), vec4<u32>(31906u, 4294967295u, var_3.x, arg_1.b.x)), arg_2.b.x)), 9106u | arg_2.b.x, ~4294967295u, select(select(vec4<bool>(!var_2.x, any(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), true, true & arg_0.x), !select(vec4<bool>(true, false, var_2.x, true), vec4<bool>(false, false, var_2.x, true), vec4<bool>(var_2.x, arg_0.x, true, true)), true), vec4<bool>(true, var_2.x, any(select(var_2.yz, vec2<bool>(var_2.x, var_2.x), true)), true), false));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_mod_i32(~_wgslsmith_mult_i32(-arg_0.x, _wgslsmith_clamp_i32(-1i, arg_0.x, ~arg_0.x)), -2147483647i);
    var_0 = ~abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(arg_0.zx, max(vec2<i32>(-2147483647i, -26890i), arg_0.xz)), arg_0.x, arg_0.x));
    let var_1 = func_4(select(select(vec2<bool>(func_2(Struct_2(vec4<i32>(arg_0.x, arg_0.x, 1i, arg_0.x), vec3<u32>(0u, 13516u, 92775u)), vec4<u32>(0u, arg_1, u_input.b.x, 0u), Struct_1(arg_1, arg_0.x, -1i, vec2<f32>(-652f, -406f), true), 0i), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), false), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), true), all(vec3<bool>(arg_0.x > arg_0.x, arg_1 < u_input.b.x, all(vec2<bool>(false, true))))), Struct_2(vec4<i32>(1i, max(arg_0.x, min(-48052i, -1i)), arg_0.x, arg_0.x), countOneBits(vec3<u32>(4294967295u, ~1u, min(0u, 4294967295u)))), Struct_2(vec4<i32>(-arg_0.x, abs(arg_0.x), arg_0.x, arg_0.x) << (((vec4<u32>(u_input.b.x, u_input.a, 1u, 71153u) & vec4<u32>(arg_2.x, 464u, 1u, 43350u)) >> (vec4<u32>(arg_1, arg_1, 1u, 17711u) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_2));
    let var_2 = Struct_2(~(select(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, -2147483647i, var_1.b.a.x, var_1.b.a.x), vec4<i32>(var_1.b.a.x, arg_0.x, 0i, arg_0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(16285i, var_1.b.a.x, var_1.b.a.x, arg_0.x), vec4<i32>(-10559i, var_1.b.a.x, arg_0.x, -1i)), false) | _wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.x, var_1.b.a.x, arg_0.x, arg_0.x), vec4<i32>(var_1.b.a.x, 2147483647i, arg_0.x, 4118i) >> (vec4<u32>(u_input.a, arg_1, arg_2.x, u_input.a) % vec4<u32>(32u)))), ~_wgslsmith_add_vec3_u32(~(~vec3<u32>(1u, var_1.c, u_input.b.x)), select(vec3<u32>(arg_1, var_1.d, 19254u), arg_2 & arg_2, vec3<bool>(false, var_1.e.x, true))));
    var var_3 = Struct_4(func_4(select(var_1.e.wx, vec2<bool>(any(var_1.e), !var_1.e.x), var_1.e.x), Struct_2(-var_2.a, ~var_2.b << (~vec3<u32>(arg_2.x, var_2.b.x, var_1.c) % vec3<u32>(32u))), Struct_2(~var_2.a | var_2.a, _wgslsmith_mod_vec3_u32(abs(var_2.b), select(vec3<u32>(1u, 1u, u_input.b.x), arg_2, var_1.e.x)))).a, func_4(!vec2<bool>(false, 1u < var_2.b.x), Struct_2(firstLeadingBit(-vec4<i32>(1i, 1i, var_1.b.a.x, var_1.b.a.x)), ~(~vec3<u32>(40028u, var_1.c, u_input.a))), Struct_2(-vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -27077i), arg_2)).b, 4294967295u >> (0u % 32u), ~firstLeadingBit(abs(var_2.b.x)) | var_1.d, vec4<bool>(true, var_1.e.x, select(!any(vec3<bool>(false, var_1.e.x, var_1.e.x)), var_1.e.x, var_1.e.x), _wgslsmith_sub_i32(~arg_0.x, ~22682i) <= -1i));
    return Struct_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, var_3.a.x) + _wgslsmith_div_f32(-1613f, -253f)), _wgslsmith_f_op_f32(-var_1.a.x), -211f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_3.b, arg_1, 1u, var_1.e);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4) -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, _wgslsmith_clamp_i32(arg_0.x >> (0u % 32u), func_3(arg_1.e.wx, vec3<u32>(0u, arg_1.c, 4294967295u)).x, arg_1.b.a.x ^ arg_1.b.a.x), 1i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -12362i), vec4<i32>(arg_0.x, arg_1.b.a.x, -1i, -2147483647i)) ^ vec4<i32>(arg_0.x, -arg_0.x, ~arg_0.x, 3749i), firstLeadingBit(firstTrailingBit(vec4<i32>(arg_0.x, 0i, arg_1.b.a.x, arg_0.x) | vec4<i32>(6042i, arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x)))), vec3<u32>(u_input.b.x, max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b), arg_1.b.b), 24939u) << (abs(vec3<u32>(countOneBits(0u), 1u, arg_1.b.b ^ 4294967295u)) % vec3<u32>(32u)));
    var var_1 = Struct_3(vec2<i32>(_wgslsmith_add_i32(arg_1.b.a.x >> (4294967295u % 32u), arg_1.b.a.x), -1i) & vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(8547i, arg_0.x, arg_0.x, -35469i), vec4<i32>(arg_0.x, 0i, arg_1.b.a.x, arg_1.b.a.x)), -43676i ^ (arg_0.x << (u_input.a % 32u))), ~_wgslsmith_div_u32(~1u, func_4(select(arg_1.e.zw, arg_1.e.yz, arg_1.e.zz), Struct_2(vec4<i32>(arg_1.b.a.x, 1i, -14442i, -2147483647i), var_0.b), Struct_2(vec4<i32>(var_0.a.x, arg_1.b.a.x, 44454i, -2147483647i), vec3<u32>(1u, arg_1.c, u_input.a))).c));
    return vec3<f32>(-287f, func_4(!arg_1.e.wz, Struct_2(vec4<i32>(1i, 2147483647i, _wgslsmith_sub_i32(24943i, var_1.a.x), _wgslsmith_mult_i32(var_0.a.x, var_0.a.x)), vec3<u32>(reverseBits(0u), _wgslsmith_add_u32(arg_1.b.b, var_1.b), _wgslsmith_mod_u32(arg_1.d, var_1.b))), Struct_2(~abs(var_0.a), var_0.b)).a.x, _wgslsmith_f_op_f32(round(-675f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 32686u), u_input.b);
    var_0 = vec2<u32>(45786u, ~27012u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(254f, -397f, -544f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, 1671f, 1166f)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(~vec3<i32>(-33415i, -28076i, 33661i), func_1(vec3<i32>(-4846i, 48132i, -3695i), 0u, vec3<u32>(44311u, u_input.b.x, 4294967295u)))))));
    var_0 = _wgslsmith_mod_vec2_u32(~(~(vec2<u32>(1u, u_input.a) << (u_input.b % vec2<u32>(32u)))), ~u_input.b);
    var_0 = u_input.b & (vec2<u32>(61255u, 24911u) ^ select(vec2<u32>(select(u_input.a, var_0.x, false), ~51025u), ~(~vec2<u32>(u_input.a, u_input.b.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(190f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x)), _wgslsmith_f_op_f32(var_1.x - func_4(vec2<bool>(true, true), Struct_2(vec4<i32>(-1i, -1i, 27723i, 0i), vec3<u32>(u_input.a, 4294967295u, 41197u)), Struct_2(vec4<i32>(0i, 0i, -1i, -1i), vec3<u32>(0u, 0u, 0u))).a.x)), _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, 7370i >> (u_input.b.x % 32u), _wgslsmith_mult_i32(-12757i, -1i), ~(-1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -45011i, ~0i, _wgslsmith_mod_i32(-2147483647i, -26544i)), vec4<i32>(-3188i, -35972i, i32(-1i) * -53431i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i))));
}

