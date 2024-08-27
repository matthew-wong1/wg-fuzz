struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 58240u;

var<private> global1: f32 = -320f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<i32>) -> vec2<i32> {
    global0 = firstLeadingBit(u_input.b);
    let var_0 = Struct_2(_wgslsmith_sub_vec4_i32(select(~(~vec4<i32>(67158i, 49513i, -2147483647i, 2147483647i)), vec4<i32>(_wgslsmith_clamp_i32(arg_0.x, arg_0.x, 1i), ~arg_0.x, _wgslsmith_add_i32(-27737i, arg_0.x), 1i), true), vec4<i32>(2147483647i, arg_0.x, _wgslsmith_mod_i32(abs(arg_0.x), -42603i), max(-31480i, arg_0.x))), u_input.b, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(743f, 534f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-198f, -791f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-786f, -254f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(186f, -663f, -1957f), vec3<f32>(-193f, -335f, 649f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(480f, -381f, 1000f), vec3<f32>(467f, -1342f, 1734f))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1124f, 973f, -1000f) * vec3<f32>(-394f, -660f, -892f))))))));
    let var_1 = _wgslsmith_f_op_f32(max(1115f, _wgslsmith_f_op_f32(ceil(484f))));
    global1 = var_1;
    var var_2 = -2147483647i;
    return -(_wgslsmith_sub_vec2_i32(-max(arg_0.yy, arg_0.xy), vec2<i32>(var_0.a.x, ~arg_0.x)) | var_0.a.ww);
}

fn func_3() -> vec4<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-316f)) - _wgslsmith_f_op_f32(abs(1000f))) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-217f, -356f), -719f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(845f, _wgslsmith_f_op_f32(trunc(2177f))))), _wgslsmith_f_op_f32(max(-1046f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-974f, 1000f)))))))), _wgslsmith_f_op_f32(f32(-1f) * -678f));
    let var_1 = any(vec2<bool>(!all(vec4<bool>(false, false, false, true)), var_0.x < -1000f));
    let var_2 = true;
    var var_3 = ~firstTrailingBit(vec3<u32>(u_input.b, ~u_input.a, firstLeadingBit(u_input.a)) >> (~vec3<u32>(1u, u_input.a, u_input.b) % vec3<u32>(32u)));
    var_3 = ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 33326u, var_3.x) >> (vec3<u32>(0u, var_3.x, 136667u) % vec3<u32>(32u)), vec3<u32>(1u, 0u, 4294967295u)) | ~vec3<u32>(select(u_input.b, 4720u, false), var_3.x, var_3.x));
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 437f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(var_0.x * 1493f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_2)) + 1000f))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: i32, arg_3: f32) -> vec2<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(func_3()), true, func_1(vec3<i32>(~1i >> ((u_input.a | 4294967295u) % 32u), 0i, 0i ^ arg_2)).x, _wgslsmith_mod_u32(~u_input.b, _wgslsmith_add_u32(~16382u, _wgslsmith_mod_u32(u_input.a, _wgslsmith_mult_u32(19236u, 0u)))));
    let var_1 = Struct_3(Struct_1(select(vec3<bool>(var_0.b, 1368f >= var_0.a.x, arg_2 >= arg_2), select(vec3<bool>(arg_0.x, var_0.b, var_0.b), vec3<bool>(true, var_0.b, arg_0.x), var_0.b), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, var_0.b), vec3<bool>(arg_0.x, false, true)), select(vec3<bool>(var_0.b, false, arg_0.x), vec3<bool>(true, var_0.b, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x)), false | var_0.b)), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, -47495i, -1i, arg_2), vec4<i32>(arg_2, var_0.c, 21303i, 24040i), vec4<i32>(arg_1, -1i, arg_2, var_0.c)) >> (min(vec4<u32>(var_0.d, 17028u, var_0.d, 4294967295u), vec4<u32>(36960u, var_0.d, 4294967295u, 57188u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(arg_1, 0i, var_0.c, arg_1)), vec4<i32>(arg_1, arg_1, var_0.c, -8374i) | vec4<i32>(var_0.c, var_0.c, 36751i, arg_2)))), _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(select(-1445f, arg_3, var_0.b && false)))), vec2<u32>(~1u, 14104u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3 - var_0.a.x))) + var_0.a.x) + 1197f), Struct_1(select(select(select(vec3<bool>(true, var_0.b, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), arg_0.x), !vec3<bool>(false, var_0.b, true), var_0.b & arg_0.x), !select(vec3<bool>(var_0.b, arg_0.x, true), vec3<bool>(true, false, var_0.b), vec3<bool>(arg_0.x, arg_0.x, var_0.b)), !(0u < u_input.b)), vec4<i32>(var_0.c, ~var_0.c, _wgslsmith_div_i32(countOneBits(var_0.c), ~(-2147483647i)), 1i)));
    var var_2 = vec2<i32>(_wgslsmith_add_i32(0i, -var_1.e.b.x) << (_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.c.x, var_1.c.x | 22170u), var_0.d ^ 4294967295u) % 32u), -1i);
    var var_3 = 80900u;
    global0 = abs(firstLeadingBit(~_wgslsmith_add_u32(~5984u, var_1.c.x)));
    return var_1.e.b.wz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_mult_u32(~1u, u_input.a);
    global0 = abs(_wgslsmith_add_u32(u_input.b, ~(~25253u & ~u_input.b)));
    var var_0 = select(select(reverseBits(vec2<i32>(17626i, ~(-1i))), vec2<i32>(1i, 1i), !(!all(vec3<bool>(true, false, false)))), max(vec2<i32>(1i, 1i), (func_1(vec3<i32>(-21840i, 0i, 1i)) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) | func_2(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), 1i, ~0i, _wgslsmith_f_op_f32(f32(-1f) * -906f))), select(vec2<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), vec2<bool>(4294967295u != u_input.a, false), !vec2<bool>(all(vec4<bool>(true, true, false, true)), true)));
    var var_1 = Struct_3(Struct_1(vec3<bool>(true, true, true), ~vec4<i32>(abs(17237i), max(var_0.x, 12694i), var_0.x, -62041i)), 1395f, ~vec2<u32>(1u, select(u_input.a, 22291u, true) << (u_input.a % 32u)), _wgslsmith_f_op_f32(-330f - -2144f), Struct_1(vec3<bool>(false, true, true), max(firstTrailingBit(vec4<i32>(var_0.x, 0i, 0i, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, -61761i, 2147483647i), vec4<i32>(1i, var_0.x, var_0.x, -12176i) >> (vec4<u32>(1u, 0u, u_input.b, u_input.a) % vec4<u32>(32u))))));
    let var_2 = Struct_3(Struct_1(vec3<bool>(var_1.a.a.x, _wgslsmith_f_op_f32(var_1.b * var_1.b) < var_1.b, false), _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, 0i, var_1.e.b.x, var_0.x), firstLeadingBit(~var_1.a.b))), _wgslsmith_f_op_f32(trunc(-2703f)), ~var_1.c >> (~var_1.c % vec2<u32>(32u)), var_1.b, Struct_1(!var_1.e.a, ~var_1.a.b));
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.b, var_1.d, var_1.b)), vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.d)), -1170f, _wgslsmith_f_op_f32(min(var_2.d, var_2.d)), 1000f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -106f, 2390f, 1208f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, var_2.b, -857f, var_2.d))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.d, 825f, var_1.d, var_1.d)))))))), -var_2.a.b.x == var_1.e.b.x, 35478i, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_3.a.zxw)) + vec3<f32>(var_3.a.x, -1212f, 313f)), vec3<f32>(_wgslsmith_f_op_f32(-var_3.a.x), var_3.a.x, var_3.a.x)))), vec3<i32>(-1i, var_2.a.b.x, ~(16160i ^ var_1.e.b.x) | 53805i));
}

