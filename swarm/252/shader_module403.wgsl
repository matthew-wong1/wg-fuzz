struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    var var_0 = vec2<i32>(26359i, _wgslsmith_dot_vec3_i32(max(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.d, 1i), vec3<i32>(u_input.b, u_input.b, -1i)), ~vec3<i32>(2147483647i, 0i, u_input.b)) << (min(abs(vec3<u32>(1u, u_input.a, u_input.a)), ~u_input.c) % vec3<u32>(32u)), -_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b, u_input.d, u_input.d), abs(vec3<i32>(u_input.b, u_input.b, 21935i)))));
    let var_1 = ~(_wgslsmith_mult_u32(0u, reverseBits(abs(u_input.a))) >> (~4294967295u % 32u));
    var_0 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, u_input.b) & -vec2<i32>(u_input.b, -6883i), ~firstTrailingBit(vec2<i32>(0i, 37445i) ^ vec2<i32>(var_0.x, var_0.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(696f, _wgslsmith_f_op_f32(f32(-1f) * -519f), 202f, _wgslsmith_f_op_f32(f32(-1f) * -534f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1019f, 307f, 1000f, 857f), vec4<f32>(-2321f, -1719f, -462f, -518f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-726f, -1345f, 155f, -733f))))))));
    var var_3 = Struct_2(vec2<u32>(66354u, 1u), vec4<u32>(~select(1u, var_1, any(vec2<bool>(true, true))), 24256u, _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_mult_u32(1u, 51113u)), _wgslsmith_div_u32(0u & var_1, 49517u)), 4294967295u), true);
    return ~(vec2<u32>(73809u, _wgslsmith_sub_u32(~4294967295u, 0u)) >> (var_3.a % vec2<u32>(32u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    var var_0 = u_input.e;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 762f, _wgslsmith_f_op_f32(round(-727f)), _wgslsmith_div_f32(1000f, arg_0.x))));
    var_0 = reverseBits(~_wgslsmith_mod_vec2_u32(~func_3(), vec2<u32>(33829u, 3190u | var_0.x)));
    var var_2 = Struct_2(~u_input.c.xx, select(vec4<u32>(4294967295u, 32702u, 1u, ~(~u_input.c.x)), ~(reverseBits(vec4<u32>(u_input.a, var_0.x, var_0.x, 43539u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, var_0.x, 0u), vec4<u32>(var_0.x, u_input.c.x, 12346u, 21170u), vec4<u32>(0u, u_input.a, u_input.c.x, 1u))), true), select(!arg_3, arg_3 || true, !arg_3));
    var_2 = Struct_2(~(~u_input.c.zy), firstTrailingBit((reverseBits(var_2.b) | select(vec4<u32>(0u, 1u, 1u, var_2.b.x), vec4<u32>(39907u, var_0.x, 33896u, 1u), true)) >> (vec4<u32>(select(0u, 4294967295u, var_2.c), reverseBits(u_input.c.x), 26643u, 1u) % vec4<u32>(32u))), arg_3 || arg_3);
    return ~u_input.a;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = vec3<f32>(-1045f, _wgslsmith_f_op_f32(f32(-1f) * -805f), _wgslsmith_div_f32(1112f, -497f));
    let var_1 = Struct_2(vec2<u32>(abs(~select(91168u, 1u, arg_0.x)), ~_wgslsmith_sub_u32(func_2(vec3<f32>(var_0.x, 875f, var_0.x), u_input.d, vec2<i32>(u_input.b, -14734i), arg_0.x), u_input.c.x)), reverseBits(~vec4<u32>(4294967295u, u_input.a, 1u, firstTrailingBit(1u))), arg_0.x);
    return _wgslsmith_f_op_f32(-var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))) * _wgslsmith_div_f32(158f, -1057f)) - _wgslsmith_f_op_f32(-347f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-683f, -1320f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -289f))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -227f);
    let var_1 = Struct_2(u_input.c.zz, _wgslsmith_clamp_vec4_u32(vec4<u32>(~min(0u, 0u), 49446u, u_input.e.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.a, 0u, u_input.c.x), vec4<u32>(28260u, u_input.c.x, u_input.a, u_input.e.x))), ~vec4<u32>(abs(43800u), 87253u, _wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(u_input.e.x, 71204u)), 20654u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x << (u_input.e.x % 32u), u_input.a, ~u_input.c.x, min(u_input.c.x, u_input.a)), firstLeadingBit(vec4<u32>(53631u, u_input.e.x, u_input.c.x, u_input.e.x) << (vec4<u32>(u_input.a, 74337u, u_input.a, u_input.e.x) % vec4<u32>(32u))))), false);
    var var_2 = 922f <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(select(vec2<bool>(false, true), select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(true, var_1.c), true), !vec2<bool>(var_1.c, var_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-751f * 973f)), all(!vec3<bool>(var_1.c, var_1.c, true))));
    let var_3 = select(vec4<bool>(true, all(!(!vec3<bool>(false, true, var_1.c))), (var_1.c && (var_1.c || var_1.c)) || false, var_1.c), select(!(!(!vec4<bool>(var_1.c, false, var_1.c, var_1.c))), vec4<bool>(var_1.c, any(select(vec4<bool>(var_1.c, var_1.c, var_1.c, true), vec4<bool>(false, var_1.c, true, false), vec4<bool>(var_1.c, var_1.c, true, true))), _wgslsmith_sub_i32(-1i, 1i) > _wgslsmith_clamp_i32(u_input.d, -15311i, -1i), (var_1.b.x | u_input.a) >= max(var_1.a.x, var_1.b.x)), var_1.c), true == var_1.c);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -739f))))));
    let x = u_input.a;
    s_output = StorageBuffer(49770u, ~min(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b, u_input.b, u_input.d), vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(u_input.d, u_input.d, 27693i)), reverseBits(vec3<i32>(2147483647i, u_input.d, -12156i))), _wgslsmith_div_u32(firstTrailingBit(~(~61806u)), ~u_input.c.x), ~vec4<i32>(2147483647i, 4246i | (u_input.b & 18059i), _wgslsmith_sub_i32(u_input.b, u_input.b) << (var_1.b.x % 32u), _wgslsmith_clamp_i32(1i, -83236i, -8594i)), ~(-_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.d, u_input.b, u_input.b, u_input.b), vec4<i32>(41674i, u_input.b, u_input.b, 2147483647i), true), vec4<i32>(u_input.b, u_input.b, u_input.d, u_input.b))));
}

