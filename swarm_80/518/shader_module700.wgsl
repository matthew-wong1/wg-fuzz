struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: Struct_3,
    d: vec3<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    return Struct_1(u_input.b);
}

fn func_3(arg_0: i32) -> vec4<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1587f + -1443f))), _wgslsmith_f_op_f32(min(-482f, _wgslsmith_f_op_f32(f32(-1f) * -760f))))))), _wgslsmith_f_op_f32(sign(-796f)));
    var var_1 = -2147483647i;
    let var_2 = select(_wgslsmith_dot_vec2_i32(abs(-select(vec2<i32>(arg_0, 2147483647i), vec2<i32>(arg_0, arg_0), vec2<bool>(true, true))), vec2<i32>(countOneBits(_wgslsmith_clamp_i32(arg_0, -1i, 9858i)), firstLeadingBit(_wgslsmith_mod_i32(u_input.a, 39646i)))), 39032i, !(!all(vec2<bool>(true, true))));
    var_1 = u_input.a;
    var var_3 = vec4<u32>(_wgslsmith_sub_u32(~(~(~0u)), ~(~54950u)), ~(~4294967295u), ~reverseBits(~1u), ~(~4294967295u));
    return min(select(vec4<i32>(arg_0, arg_0, ~0i, abs(1i)), vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -1i, abs(-2147483647i)), u_input.a, var_2, firstTrailingBit(_wgslsmith_mod_i32(0i, arg_0))), all(vec4<bool>(true, true, true, true))), ~(-abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.a, -6779i, u_input.d), vec4<i32>(u_input.b, 1i, var_2, 2147483647i)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = func_2();
    let var_1 = Struct_2(arg_0.a, Struct_1(var_0.a), abs(_wgslsmith_div_vec3_u32(countOneBits(arg_2.d), max(arg_2.d, arg_2.d))), arg_2.c);
    var var_2 = vec4<u32>(0u, 36021u, ~(arg_2.d.x >> (select(13478u, arg_0.c.x, all(arg_1.zx)) % 32u)), _wgslsmith_mult_u32(arg_0.c.x, 40465u));
    var_2 = _wgslsmith_div_vec4_u32(~(~vec4<u32>(~31730u, ~var_2.x, 20086u, 4294967295u)), ~select(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.d.x, 64732u, var_1.c.x, var_1.c.x), vec4<u32>(28813u, 102080u, 8062u, var_1.c.x)) | countOneBits(vec4<u32>(var_1.c.x, 28830u, arg_0.c.x, 1u)), ~firstLeadingBit(vec4<u32>(var_1.c.x, 1u, 4294967295u, var_2.x)), arg_2.b));
    let var_3 = vec3<bool>(false, arg_1.x, !arg_1.x);
    return func_3(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, u_input.d, u_input.d, 2147483647i), func_1(Struct_2(vec3<i32>(56835i, u_input.d, u_input.a), Struct_1(u_input.d), vec3<u32>(0u, 41537u, 4294967295u), Struct_1(2147483647i)), vec4<bool>(true, false, true, true), Struct_3(1i, true, Struct_1(25545i), vec3<u32>(0u, 34653u, 1u)))), select(_wgslsmith_sub_i32(firstTrailingBit(u_input.a), ~(-27773i)), firstLeadingBit(2147483647i), false)), abs(36869i) > u_input.d, Struct_1(-(_wgslsmith_mod_i32(77641i, u_input.a) >> (0u % 32u))), vec3<u32>(1u, 1u, max(~(~48637u), 7504u)));
    var var_1 = vec4<f32>(968f, 462f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1468f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1900f)) * -2093f));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, 575f, 700f), vec4<f32>(-1000f, -582f, -381f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-507f, -201f, var_1.x, var_1.x) - vec4<f32>(283f, 134f, -1000f, 1011f)), !vec4<bool>(true, var_0.b, true, true)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, -1786f, var_1.x), vec4<f32>(-1141f, var_1.x, -1063f, var_1.x))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2018f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -502f) + -2166f), var_1.x))) * vec4<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(-var_1.x)))), -278f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1595f)), _wgslsmith_f_op_f32(f32(-1f) * -719f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-179f, var_1.x, -1064f, -419f), vec4<f32>(var_1.x, var_1.x, var_1.x, -538f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 485f, 2346f) - vec4<f32>(var_1.x, 1035f, 1984f, -213f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1450f, -787f, -1421f, var_1.x)))), vec4<bool>(true, !var_0.b, var_0.b, any(vec2<bool>(true, var_0.b)))))));
    var var_2 = Struct_2(vec3<i32>(-2385i, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -17617i), -select(vec2<i32>(var_0.c.a, var_0.a), vec2<i32>(-8823i, var_0.a), false))), var_0.c, (((vec3<u32>(var_0.d.x, 4294967295u, 39817u) | var_0.d) >> (vec3<u32>(4294967295u, var_0.d.x, var_0.d.x) % vec3<u32>(32u))) | ~(~vec3<u32>(var_0.d.x, var_0.d.x, 0u))) & ~(~vec3<u32>(var_0.d.x, 0u, 31725u)), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(var_0.a, -27165i, -1i, 1i)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 1i, 1i, -2147483647i), vec4<i32>(-2147483647i, -19306i, var_2.b.a, var_2.a.x)), ~vec4<i32>(u_input.c, u_input.d, u_input.c, 0i))), vec4<i32>(u_input.b, -2147483647i, -47321i, u_input.b)));
}

