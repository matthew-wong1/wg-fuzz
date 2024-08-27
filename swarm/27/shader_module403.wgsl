struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = ~(-(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b, 29040i, 1i), vec4<i32>(0i, u_input.b, -2147483647i, u_input.b))) >> (firstTrailingBit(firstLeadingBit(vec4<u32>(1u, 0u, 49486u, 57235u))) % vec4<u32>(32u)));
    let var_1 = -select(select(u_input.c, var_0.ww, all(vec2<bool>(true, false))), vec2<i32>(~1i, _wgslsmith_dot_vec4_i32(var_0, var_0)), false);
    var var_2 = vec4<f32>(-2029f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-173f, -179f)), -458f, any(vec3<bool>(true, true, true))))), 291f);
    let var_3 = Struct_2(true, Struct_1(vec4<u32>(44919u, min(~0u, 46719u), select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(26180u, 92489u, 1u)), 1u, all(vec4<bool>(true, true, false, true))), abs(~28819u))), firstTrailingBit(~abs(vec4<u32>(4294967295u, 30325u, 1u, 4294967295u))) & (vec4<u32>(1u, 1u, 81182u, ~6691u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(45595u, 20892u, 43799u, 1u), firstTrailingBit(vec4<u32>(74650u, 122249u, 15933u, 4294967295u)))));
    var var_4 = abs(select(-select(var_0.xwz, abs(var_0.zyy), any(vec4<bool>(true, var_3.a, true, true))), vec3<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -8146i, var_0.x), vec3<i32>(-1i, -38300i, 2147483647i))), var_0.x, ~1i), any(vec3<bool>(all(vec4<bool>(var_3.a, true, var_3.a, var_3.a)), false, true))));
    return !any(vec3<bool>(false, var_3.a, false));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>) -> vec3<f32> {
    var var_0 = select(!vec2<bool>(any(vec4<bool>(true, false, true, false)) & any(vec2<bool>(true, true)), true || func_3()), !select(vec2<bool>(arg_0.x > arg_0.x, false), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))));
    let var_1 = Struct_2(false, Struct_1(countOneBits(~(~vec4<u32>(arg_1.x, 17221u, arg_1.x, 38334u)))), vec4<u32>(~0u, arg_1.x, countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 26006u), vec3<u32>(arg_1.x, 31854u, arg_1.x)), 1u, firstLeadingBit(18606u))), _wgslsmith_sub_u32(10685u, countOneBits(0u))));
    let var_2 = !(!select(vec2<bool>(any(vec4<bool>(var_0.x, false, var_1.a, true)), var_1.a || true), !(!vec2<bool>(var_1.a, true)), ~var_1.c.x != firstTrailingBit(var_1.c.x)));
    let var_3 = !select(vec4<bool>(true, true, true, _wgslsmith_f_op_f32(arg_0.x * -597f) <= _wgslsmith_f_op_f32(1362f + -470f)), vec4<bool>(true, true, ~19883i <= u_input.c.x, !var_0.x), !(!select(vec4<bool>(var_2.x, false, var_1.a, var_0.x), vec4<bool>(false, var_1.a, var_0.x, false), vec4<bool>(var_1.a, true, true, false))));
    var var_4 = vec4<i32>(u_input.c.x, ~0i, _wgslsmith_mod_i32(2147483647i, -38038i) ^ -_wgslsmith_add_i32(0i, u_input.b), select(u_input.b, ~u_input.a, true)) ^ abs(vec4<i32>(~18425i, firstTrailingBit(-7993i), _wgslsmith_clamp_i32(u_input.b, ~(-29057i), -9620i), max(-u_input.b, -55706i)));
    return vec3<f32>(-108f, -328f, _wgslsmith_f_op_f32(min(330f, -265f)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = (~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 11890u, arg_0), vec4<u32>(arg_0, 40008u, arg_0, arg_0)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 1u, 0u, 1u), vec4<u32>(arg_0, 1u, 4294967295u, arg_0))) >> (~vec2<u32>(~arg_0, arg_0) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(15025u, arg_0, 1u), vec3<u32>(arg_0, arg_0, 83399u)), min(vec3<u32>(arg_0, 45973u, 0u), vec3<u32>(0u, 13369u, 41245u))), vec3<u32>(_wgslsmith_add_u32(27093u, 21544u), _wgslsmith_div_u32(arg_0, 55218u), _wgslsmith_mult_u32(arg_0, 55841u))), ~arg_0) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(-760f, 119f, 446f), vec3<u32>(18893u, arg_0, 29783u)))))))));
    var var_2 = ~min(5841u, ~min(_wgslsmith_sub_u32(17144u, 1u), countOneBits(26696u)));
    let var_3 = !(!select(vec2<bool>(u_input.a == u_input.c.x, any(vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(select(false, true, true), true)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, 1367f, 1434f)))))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.x, -946f, var_3.x)), _wgslsmith_f_op_f32(min(var_1.x, var_1.x))), var_1.x, _wgslsmith_f_op_f32(-var_1.x))));
    return Struct_2(all(vec3<bool>(var_3.x, false, !all(vec4<bool>(var_3.x, var_3.x, false, true)))), Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 1u, var_0.x, 42641u), ~vec4<u32>(1u, 51545u, 30466u, 1u)), vec4<u32>(_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(arg_0, 1u)), _wgslsmith_mult_u32(var_0.x, 21141u), countOneBits(34204u), ~0u))), min(vec4<u32>(0u, max(0u ^ var_0.x, ~4294967295u), arg_0, abs(_wgslsmith_div_u32(arg_0, arg_0))), ~vec4<u32>(1u, arg_0, 1u, ~95880u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(-1308i));
    var_0 = 0i;
    var var_1 = Struct_2(true, Struct_1(max(abs(vec4<u32>(21941u, 22923u, 43969u, 19957u)), vec4<u32>(1u, 1u, 1u, 1u))), ~reverseBits(reverseBits(vec4<u32>(1u, 1u, 1u, 1u))));
    var var_2 = ~countOneBits(vec3<i32>(-u_input.b, u_input.c.x, 2147483647i) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.a, -2147483647i), vec3<i32>(u_input.c.x, u_input.a, u_input.b), vec3<i32>(-1i, 9786i, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.c.x), vec3<i32>(u_input.a, -2147483647i, 10025i))));
    var_1 = func_1(~var_1.b.a.x);
    var var_3 = func_1(_wgslsmith_dot_vec4_u32(countOneBits(var_1.c), ~select(vec4<u32>(var_1.c.x, var_1.c.x, var_1.b.a.x, 4294967295u), var_1.b.a, vec4<bool>(true, var_1.a, false, true))) >> (~4294967295u % 32u));
    var var_4 = Struct_1(vec4<u32>(0u, _wgslsmith_mult_u32(~(var_3.b.a.x ^ 20744u), 9751u), 1u, var_1.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-(firstLeadingBit(var_2.x) ^ select(var_2.x, u_input.b, var_3.a)) | _wgslsmith_mod_i32(57204i | reverseBits(u_input.b), u_input.c.x ^ 21345i), -23456i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1153f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1018f) + vec2<f32>(-559f, -536f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(459f, 587f)))), vec2<bool>(any(!vec2<bool>(var_1.a, true)), var_1.a))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(113f, 1031f, -903f), var_1.c.wyz)).x, -1153f)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -475f, false)) + _wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(1003f, -1344f, 230f), var_1.b.a.yyw)).x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-211f * -1000f), _wgslsmith_f_op_f32(ceil(1163f))), _wgslsmith_f_op_f32(f32(-1f) * -584f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1639f, -673f, 256f, 1295f), vec4<f32>(-778f, 1031f, -1601f, 1464f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(302f, -2290f, 1487f, -1185f) + vec4<f32>(1166f, -293f, -197f, -372f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-425f * 318f))), _wgslsmith_f_op_f32(-368f - _wgslsmith_f_op_f32(675f * -117f)), 633f)));
}

