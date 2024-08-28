struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>) -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1154f))), _wgslsmith_f_op_f32(f32(-1f) * -215f))), _wgslsmith_f_op_f32(-2117f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 213f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-247f)) - 1700f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2440f + _wgslsmith_f_op_f32(747f + -590f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1327f + 289f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1018f, 623f) * _wgslsmith_f_op_f32(sign(2064f))))), 2409f);
    var var_1 = ~(-29490i) | reverseBits(u_input.b);
    var var_2 = vec4<i32>(51452i, -2147483647i, -39934i, u_input.c.x);
    var_1 = -var_2.x;
    let var_3 = reverseBits(vec3<i32>(-9293i, u_input.c.x, _wgslsmith_dot_vec4_i32(arg_0, arg_0)));
    return select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, false, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), vec3<bool>(true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false))), vec3<bool>(1172f <= _wgslsmith_f_op_f32(var_0.x * var_0.x), false, all(vec2<bool>(false, true)))), !select(vec3<bool>(any(vec4<bool>(true, false, true, false)), true, false), vec3<bool>(true, true, true), 4294967295u < min(u_input.a, 24392u)), all(!vec2<bool>(true, 8953i == var_2.x)));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(select(func_3(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.c.x, -1i, 12930i), vec4<i32>(15768i, 15641i, 19204i, -1i))), select(func_3(-vec4<i32>(1i, -45716i, u_input.c.x, u_input.c.x)), select(func_3(vec4<i32>(u_input.b, u_input.c.x, u_input.b, u_input.b)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), any(vec4<bool>(true, false, false, true))), vec3<bool>(true, true, true)), true), u_input.b, any(vec3<bool>(true, !any(vec2<bool>(false, true)), true)), u_input.d.zx);
    var var_1 = firstLeadingBit(vec2<i32>(abs(abs(i32(-1i) * -1i)), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-1i, var_0.b, 65145i, -24175i)), ~countOneBits(vec4<i32>(u_input.b, var_0.b, u_input.b, u_input.b)))));
    var var_2 = -1000f;
    let var_3 = true;
    var_2 = _wgslsmith_f_op_f32(max(1144f, -514f));
    return _wgslsmith_mult_i32(2147483647i, var_1.x);
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~arg_0.d, vec2<u32>(reverseBits(~u_input.a), 40910u)), u_input.a, max(~(~0u), 21465u));
    var_0 = u_input.d.x;
    var var_1 = vec2<i32>(func_2(), _wgslsmith_clamp_i32(reverseBits(reverseBits(~3428i)), -_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c.x, -669i), arg_0.b), _wgslsmith_dot_vec3_i32(u_input.c, _wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, -702i, 1i), _wgslsmith_mult_vec3_i32(u_input.c, u_input.c)))));
    let var_2 = _wgslsmith_div_vec4_i32(-min(~(-vec4<i32>(0i, arg_0.b, -6930i, var_1.x)), vec4<i32>(firstLeadingBit(42721i), -2147483647i, var_1.x & 18611i, u_input.c.x << (arg_0.d.x % 32u))), countOneBits(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_0.b, var_1.x, 10858i), -vec4<i32>(-9670i, 1i, arg_0.b, var_1.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(-1688f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1614f + 2924f) * _wgslsmith_f_op_f32(step(-284f, -154f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1795f + 235f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-163f - _wgslsmith_f_op_f32(min(501f, 223f))))))));
    return (~(4294967295u | ~u_input.d.x) | abs(~(~arg_0.d.x))) < 1870u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    return StorageBuffer(arg_1.d.x | arg_0.d.x, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2040f + 372f)), _wgslsmith_f_op_f32(-1f)))), ~1u, _wgslsmith_clamp_vec3_u32(firstTrailingBit(u_input.d.zzx), _wgslsmith_mult_vec3_u32(u_input.d.zxx, vec3<u32>(u_input.d.x, ~0u, ~arg_1.d.x)), vec3<u32>(1u, arg_0.d.x ^ arg_0.d.x, abs(abs(0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, func_1(Struct_1(vec3<bool>(false, false, true), u_input.b, true, vec2<u32>(u_input.a, u_input.a))), true), true), _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(42452i, u_input.b, -33368i), u_input.c.x), false, vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(94255u, u_input.a, 39321u, 1u), _wgslsmith_mult_vec4_u32(u_input.d, u_input.d)), u_input.a)), Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -24095i, true, vec2<u32>(reverseBits(48330u), u_input.d.x & 4294967295u) >> (_wgslsmith_add_vec2_u32(select(u_input.d.yx, vec2<u32>(u_input.d.x, u_input.a), vec2<bool>(true, false)), ~vec2<u32>(u_input.d.x, 0u)) % vec2<u32>(32u))));
}

