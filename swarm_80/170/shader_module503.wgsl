struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(44758i, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, ~u_input.b, u_input.b), vec3<i32>(-2147483647i, u_input.b & u_input.b, -1i)), u_input.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -27374i), vec2<i32>(-77183i, 1i)) ^ 3543i), -vec4<i32>(reverseBits(i32(-1i) * -32875i), 2147483647i, 5544i, max(2147483647i, i32(-1i) * -39083i)));
    var var_1 = !select(vec4<bool>(true, true & all(vec4<bool>(false, false, true, false)), true, !all(vec3<bool>(true, true, false))), vec4<bool>(false, u_input.b < -29449i, false, all(vec4<bool>(true, true, true, true))), -abs(var_0.x) > 46443i);
    var_1 = !(!select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !select(vec4<bool>(false, true, false, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), !select(var_1.x, true, false)));
    var_1 = !vec4<bool>(all(select(var_1.xzy, vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, var_1.x, false))), all(vec2<bool>(!var_1.x, true)), select(var_1.x, (var_1.x | true) & false, var_1.x), reverseBits(27408u) != ~_wgslsmith_clamp_u32(14699u, u_input.a.x, 42889u));
    var var_2 = var_1.x;
    return vec3<i32>(33523i, var_0.x, -(~(~2147483647i)) & firstTrailingBit(-1i));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-884f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -809f))))), _wgslsmith_add_u32(u_input.a.x, 46353u), all(vec3<bool>(true, true, true)), ~func_3());
    var var_1 = select(select(select(select(select(vec2<bool>(true, var_0.c), vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, var_0.c)), !vec2<bool>(var_0.c, var_0.c), select(vec2<bool>(false, false), vec2<bool>(var_0.c, true), vec2<bool>(true, false))), select(select(vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, var_0.c), vec2<bool>(true, false)), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, true), true), !vec2<bool>(var_0.c, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, var_0.c), vec2<bool>(false, var_0.c), vec2<bool>(false, false)), all(vec2<bool>(true, true)))), !select(!vec2<bool>(false, var_0.c), select(vec2<bool>(false, false), vec2<bool>(false, var_0.c), true), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, var_0.c))), select(var_0.c, false, var_0.d.x < ~var_0.d.x)), !select(!(!vec2<bool>(false, var_0.c)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, var_0.c), var_0.c), all(vec3<bool>(false, var_0.c, false))), vec2<bool>(true, var_0.c || false)), all(select(!vec4<bool>(true, var_0.c, true, true), !select(vec4<bool>(var_0.c, var_0.c, true, true), vec4<bool>(true, var_0.c, false, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c)), true)));
    var_1 = !vec2<bool>(any(select(select(vec4<bool>(false, var_0.c, true, false), vec4<bool>(true, var_0.c, false, var_0.c), var_0.c), select(vec4<bool>(true, var_1.x, true, true), vec4<bool>(true, true, true, false), vec4<bool>(var_1.x, var_0.c, true, true)), true)), select(var_0.c, _wgslsmith_f_op_f32(step(-833f, var_0.a.x)) > var_0.a.x, var_0.c));
    var var_2 = _wgslsmith_mult_u32(~4294967295u, _wgslsmith_div_u32(u_input.a.x, abs(1u)));
    var var_3 = min(countOneBits(~var_0.d.zx), var_0.d.xy) & abs(var_0.d.xy);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    var var_0 = u_input.a.zxz;
    let var_1 = ~_wgslsmith_clamp_vec2_u32(u_input.a.xy, _wgslsmith_mult_vec2_u32(max(u_input.a.xy, select(var_0.xy, var_0.xz, arg_2.c)), firstLeadingBit(~u_input.a.xx)), vec2<u32>(~select(arg_0.b, 4294967295u, arg_0.c), firstTrailingBit(u_input.a.x >> (arg_2.b % 32u))));
    var_0 = vec3<u32>(~_wgslsmith_mult_u32(~var_0.x, firstLeadingBit(57383u) << (~4294967295u % 32u)), 0u, ~(~u_input.a.x));
    var var_2 = arg_2.d.x;
    var var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2873f * arg_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -167f)), 535f), 265f);
    return func_2().a.x;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -622f));
    var_0 = Struct_2(_wgslsmith_f_op_f32(func_4(func_2(), !select(select(vec4<bool>(true, arg_0, false, true), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, false, true)), vec4<bool>(true, true, true, arg_0), select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, arg_0, false, arg_0), arg_0)), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(476f, 371f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))), 1u, u_input.a.x != ~u_input.a.x, -(vec3<i32>(u_input.b, u_input.b, 11138i) << (u_input.a.zxw % vec3<u32>(32u)))), select(vec2<bool>(false, !arg_0), !select(vec2<bool>(true, arg_0), vec2<bool>(false, false), arg_0), !select(vec2<bool>(arg_0, false), vec2<bool>(true, false), vec2<bool>(false, arg_0))))));
    var_0 = Struct_2(-1887f);
    var_0 = Struct_2(_wgslsmith_f_op_f32(abs(909f)));
    let var_1 = !select(vec4<bool>(any(vec2<bool>(true, false)), arg_0, false, !(arg_0 != arg_0)), select(!vec4<bool>(arg_0, false, arg_0, arg_0), select(!vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, true, arg_0, arg_0), any(vec2<bool>(true, arg_0))), 1i >= min(35516i, u_input.b)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, arg_0), arg_0), vec4<bool>(true, arg_0, true, arg_0), all(vec2<bool>(arg_0, false))), select(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, false, false, arg_0), arg_0), vec4<bool>(true, false, arg_0, arg_0), func_2().c)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, 1966f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -532f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.a)))))), countOneBits(u_input.a.x), all(!vec3<bool>(true, arg_0, true)), _wgslsmith_add_vec3_i32(-vec3<i32>(select(u_input.b, u_input.b, true), -2147483647i, u_input.b >> (u_input.a.x % 32u)), reverseBits(abs(vec3<i32>(u_input.b, -17750i, 1i)) >> (select(vec3<u32>(u_input.a.x, 0u, 702u), vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<bool>(arg_0, var_1.x, true)) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(207f + -734f);
    var_0 = -2221f;
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(600f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1856f, 1000f)) + _wgslsmith_f_op_f32(-205f + 700f)), _wgslsmith_f_op_f32(-1f))));
    var_0 = -1000f;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-425f))), _wgslsmith_f_op_f32(var_1.a + -687f), -860f);
    let var_3 = func_1(-1i >= _wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(27315i, u_input.b, u_input.b))), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -1i, u_input.b), vec3<i32>(u_input.b, 2147483647i, u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(13576i, -23331i, -1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_3.d.x, abs(~var_3.d.x) & u_input.b), _wgslsmith_div_u32(_wgslsmith_clamp_u32((u_input.a.x & 1u) >> (1u % 32u), countOneBits(~u_input.a.x), 66720u), ~4294967295u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(449f)), _wgslsmith_f_op_f32(ceil(var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -668f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1083f, 1000f, var_3.a.x))))), func_1(true).b);
}

