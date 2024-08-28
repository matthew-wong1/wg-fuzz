struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> i32 {
    return -(~u_input.a.x);
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = min(-_wgslsmith_add_i32(-_wgslsmith_add_i32(2147483647i, -17890i), _wgslsmith_add_i32(select(u_input.a.x, u_input.a.x, true), -13492i)), u_input.a.x);
    let var_1 = 27437i;
    var var_2 = Struct_4(reverseBits(vec4<u32>(59661u, ~0u, ~_wgslsmith_mod_u32(61774u, 2132u), 18237u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1158f, 307f, -525f), vec3<f32>(503f, -500f, 393f), vec3<bool>(true, arg_0, true)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(983f, 2072f, -108f) + vec3<f32>(-1394f, 298f, -380f)))));
    var var_3 = _wgslsmith_mod_u32(var_2.a.x, abs(~_wgslsmith_mod_u32(4655u, var_2.a.x))) ^ ~reverseBits(36023u);
    var_2 = Struct_4(var_2.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-300f, _wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_div_f32(var_2.b.x, var_2.b.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x))))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(var_2.b.zz, var_2.b.xz))), vec2<u32>(39771u, 43135u) | _wgslsmith_mult_vec2_u32((vec2<u32>(11792u, var_2.a.x) | var_2.a.yy) | vec2<u32>(var_2.a.x, 0u), ~vec2<u32>(0u, 17553u) ^ select(var_2.a.xx, vec2<u32>(0u, 4592u), arg_0)), countOneBits(vec3<i32>(countOneBits(u_input.a.x), u_input.a.x, _wgslsmith_div_i32(40973i, var_1))), ~min(select(select(vec4<i32>(var_1, var_1, var_1, 2147483647i), vec4<i32>(49853i, -24811i, var_1, 1i), vec4<bool>(true, true, arg_0, arg_0)), vec4<i32>(1i, -17765i, 0i, var_1), !arg_0), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, -1131i, -17322i)), vec4<i32>(-255i, var_1, u_input.a.x, u_input.a.x))));
}

fn func_3(arg_0: u32, arg_1: u32) -> i32 {
    let var_0 = func_2(true);
    var var_1 = Struct_3(vec3<i32>(func_1(~(~vec3<u32>(4294967295u, 43162u, arg_1)), 212f), _wgslsmith_mod_i32(-2147483647i, ~u_input.a.x), countOneBits(3076i)), true);
    var_1 = Struct_3(_wgslsmith_add_vec3_i32(firstLeadingBit(-var_0.d.yxw), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.x, 2147483647i, u_input.a.x), var_1.a, vec3<i32>(42270i, var_0.c.x, -75592i)), ~var_0.c, var_0.c)) ^ ~(-vec3<i32>(2147483647i, 0i, var_1.a.x)), true);
    let var_2 = Struct_4(_wgslsmith_add_vec4_u32(vec4<u32>(4313u, 32755u & var_0.b.x, 27839u, var_0.b.x) << (~vec4<u32>(arg_0, 4294967295u, 1u, 93598u) % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_add_u32(var_0.b.x, arg_1), arg_1, _wgslsmith_clamp_u32(~arg_0, 4294967295u, 35931u), _wgslsmith_clamp_u32(var_0.b.x, ~122952u, 4294967295u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-529f, _wgslsmith_f_op_f32(-529f - 480f), var_0.a.a.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(543f, var_0.a.a.x, 909f), vec3<f32>(-2795f, 355f, 2411f), all(vec2<bool>(var_1.b, true)))))));
    var var_3 = func_2(true).a.a.x;
    return _wgslsmith_add_i32(countOneBits(2147483647i), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-317f, -1401f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(356f, 338f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-516f, -100f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(724f, -2173f) * vec2<f32>(196f, -2057f)), vec2<f32>(-581f, -1496f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f)));
    let var_2 = vec3<i32>(-func_1(select(~vec3<u32>(4294967295u, 4294967295u, 4294967295u), abs(vec3<u32>(0u, 31305u, 5603u)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, -1000f)))), 1134i, -11167i);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + -543f));
    let var_3 = func_2(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(43086u, 22331u, 43112u, 94622u)) >= 1u);
    var_1 = _wgslsmith_div_f32(var_3.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_2(false).a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.x)) - _wgslsmith_div_f32(var_0.a.x, var_0.a.x)))) - var_3.a.a.x));
    var var_4 = abs(~(-var_3.c));
    var var_5 = Struct_3(abs(~vec3<i32>(select(-2147483647i, var_3.c.x, false), func_3(var_3.b.x, 31188u), min(0i, var_2.x))), all(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), var_3.b.x == 1u), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false), var_3.d.x < var_4.x), all(vec4<bool>(true, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), ~(-var_2.x), abs(vec2<u32>(4294967295u, _wgslsmith_div_u32(countOneBits(25593u), abs(var_3.b.x)))), firstTrailingBit(var_3.d.yx & ~(-var_3.d.wy)));
}

