struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = !(!select(all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), !any(vec2<bool>(true, false))));
    var_0 = ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, 27517i), vec4<i32>(-8159i, -2147483647i, 1i, -28765i)) << (reverseBits(~36538u) % 32u)) <= ((i32(-1i) * -24218i) >> ((~min(u_input.b.x, u_input.b.x) ^ u_input.b.x) % 32u));
    let var_1 = Struct_4(Struct_3(firstLeadingBit(max(~vec4<u32>(22559u, u_input.b.x, u_input.b.x, 83073u), ~vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.b.x))), true, true, select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))));
    var_0 = false;
    var_0 = countOneBits(38948i >> (~firstTrailingBit(var_1.a.a.x) % 32u)) < -70783i;
    return var_1.a.a.x;
}

fn func_2(arg_0: i32) -> vec3<bool> {
    var var_0 = Struct_3(vec4<u32>(~(~func_3()), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 69555u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, 4294967295u) | vec4<u32>(0u, 36934u, u_input.b.x, u_input.b.x)), _wgslsmith_sub_u32(31263u >> (u_input.b.x % 32u), 30314u), u_input.a.x), !all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false, !select(vec2<bool>(all(vec3<bool>(true, false, true)), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), any(vec3<bool>(true, true, true))));
    var_0 = Struct_3(~_wgslsmith_mult_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(var_0.a, var_0.a, vec4<u32>(u_input.a.x, u_input.b.x, var_0.a.x, var_0.a.x))), countOneBits(vec4<u32>(30977u, var_0.a.x, 0u, 69900u))), false, false, !select(vec2<bool>(true, all(vec4<bool>(true, var_0.d.x, true, true))), vec2<bool>(var_0.d.x, select(true, var_0.c, var_0.b)), select(var_0.d, vec2<bool>(var_0.b, true), vec2<bool>(true, true))));
    let var_1 = vec2<bool>(true, true);
    var_0 = Struct_3(_wgslsmith_sub_vec4_u32(var_0.a, min(~_wgslsmith_div_vec4_u32(var_0.a, var_0.a), var_0.a)), (i32(-1i) * -16052i) > firstLeadingBit(arg_0), !var_0.c, select(select(!select(var_1, vec2<bool>(var_0.b, var_1.x), vec2<bool>(var_0.b, var_1.x)), select(vec2<bool>(var_1.x, false), !var_0.d, !var_1), !var_0.d), vec2<bool>(true, true), select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, 2147483647i), vec4<i32>(64616i, arg_0, arg_0, arg_0)) < max(-24778i, -4166i), true, !select(true, var_1.x, var_0.c))));
    var_0 = Struct_3(select(~var_0.a, ((var_0.a & var_0.a) >> (vec4<u32>(33820u, u_input.a.x, var_0.a.x, 1u) % vec4<u32>(32u))) >> ((abs(var_0.a) >> ((var_0.a & var_0.a) % vec4<u32>(32u))) % vec4<u32>(32u)), !(countOneBits(arg_0) >= 2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1201f, -2099f)), _wgslsmith_f_op_f32(-270f * -1000f)) <= 479f, !(-25884i < select(abs(1i), 0i, var_0.c)), !vec2<bool>(false, firstTrailingBit(u_input.a.x) < ~var_0.a.x));
    return select(select(vec3<bool>(true, true, var_1.x), select(select(vec3<bool>(true, true, false), !vec3<bool>(var_0.b, false, var_1.x), select(vec3<bool>(var_1.x, var_0.b, var_0.c), vec3<bool>(var_0.c, true, var_0.d.x), false)), select(select(vec3<bool>(var_1.x, var_0.d.x, var_1.x), vec3<bool>(var_1.x, var_0.c, true), vec3<bool>(var_1.x, var_0.b, var_0.d.x)), !vec3<bool>(false, var_1.x, var_1.x), !var_1.x), !vec3<bool>(var_1.x, true, var_1.x)), false), select(select(select(select(vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, var_0.b, false), vec3<bool>(false, false, var_0.b)), vec3<bool>(false, var_1.x, false), any(var_1)), vec3<bool>(any(var_1), select(false, var_1.x, true), true), min(var_0.a.x, 15506u) > var_0.a.x), vec3<bool>(true, all(select(vec3<bool>(false, true, var_1.x), vec3<bool>(var_0.b, false, false), false)), ~u_input.a.x >= 91819u), true), vec3<bool>(false, any(select(vec3<bool>(false, var_1.x, var_1.x), select(vec3<bool>(true, var_0.d.x, false), vec3<bool>(var_1.x, var_1.x, true), true), !vec3<bool>(false, var_0.b, true))), true));
}

fn func_1(arg_0: i32, arg_1: i32) -> vec3<u32> {
    let var_0 = vec3<bool>(false, all(!func_2(74757i)), !(!any(vec3<bool>(false, false, true))));
    var var_1 = select(u_input.b.x, func_3(), !func_2(-1i).x) & ~(~49039u);
    var_1 = firstLeadingBit(func_3()) >> (~(~0u) % 32u);
    var_1 = u_input.a.x;
    var_1 = ~u_input.b.x ^ 1u;
    return ~vec3<u32>(~(u_input.b.x & u_input.b.x), 38513u, min(_wgslsmith_div_u32(max(41559u, u_input.a.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), ~(~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-2147483647i, select(~_wgslsmith_dot_vec4_i32(vec4<i32>(82610i, 36502i, 0i, -2147483647i) << (vec4<u32>(u_input.b.x, 87363u, 59932u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-36211i, -1i, -3101i, 0i), vec4<i32>(1i, 4652i, -1i, 1i))), ~(-_wgslsmith_div_i32(-2147483647i, 2147483647i)), false), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(-2147483647i, 2501i, -1i)) >> (func_1(0i, i32(-1i) * -6667i) % vec3<u32>(32u)), select(vec3<i32>(firstLeadingBit(-76313i), i32(-1i) * -1i, ~(-1i)), vec3<i32>(~(-26530i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -38827i), vec2<i32>(64649i, 19578i)), abs(27759i)), func_2(2309i))));
    let var_1 = abs(-vec3<i32>(var_0.x, 25297i, var_0.x)) | (vec3<i32>(var_0.x, _wgslsmith_sub_i32(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 0i, var_0.x), vec3<i32>(var_0.x, -24014i, var_0.x))), _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.x, var_0.x, var_0.x), -vec3<i32>(var_0.x, var_0.x, var_0.x))) | (min(vec3<i32>(0i, 1i, var_0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x))) & countOneBits(-vec3<i32>(2147483647i, var_0.x, 3962i))));
    let var_2 = firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.x, 1i), _wgslsmith_div_i32(var_0.x, var_0.x)), -1i)) | firstLeadingBit(vec2<i32>(-31707i, 42737i >> (1u % 32u)));
    var var_3 = Struct_3(_wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u), vec4<u32>(19290u, u_input.a.x, 1u, 0u))) | ~firstTrailingBit(vec4<u32>(1u, u_input.a.x, u_input.b.x, u_input.b.x)), countOneBits(max(vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u), ~vec4<u32>(u_input.a.x, 32096u, u_input.a.x, 44322u)))), false, false, vec2<bool>(true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false))))));
    let var_4 = Struct_1(vec3<f32>(-172f, _wgslsmith_f_op_f32(f32(-1f) * -918f), _wgslsmith_f_op_f32(trunc(-360f))));
    var var_5 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4.a * vec3<f32>(_wgslsmith_f_op_f32(-var_4.a.x), _wgslsmith_f_op_f32(-167f - var_4.a.x), 1939f)), var_4.a));
    let var_6 = -1154f;
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<i32>(var_0.x, _wgslsmith_sub_i32(-var_1.x, abs(var_2.x)), 0i, var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x)))));
}

