struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<f32>, arg_3: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1196f)), -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -858f)), -394f), !select(false, true, !(arg_1 >= -2033f)), -2738f, _wgslsmith_f_op_vec2_f32(-arg_2.yx), u_input.e);
    let var_1 = abs(-1997i);
    var var_2 = ~(u_input.a >> (14732u % 32u));
    let var_3 = false;
    var_2 = ~(max(arg_3, 55494u) << (~(~91747u) % 32u)) | 1u;
    return _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, var_0.c))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1570f, -612f, -1000f, arg_1.c))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -978f, arg_0.x, -709f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_0.x, 797f, -937f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-666f, arg_1.c, 151f, -2198f), vec4<f32>(101f, arg_1.a, arg_1.a, arg_1.d.x), vec4<bool>(arg_1.b, false, arg_1.b, true))) + vec4<f32>(2865f, arg_0.x, 331f, -208f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(945f, -1004f, arg_0.x, -1255f))))))));
    let var_1 = countOneBits(-49099i ^ (21555i >> (firstLeadingBit(u_input.a) % 32u)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1421f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -394f))))), var_0.x, 1230f, 231f);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_0.x), arg_1.b, _wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.xz * arg_1.d)))), -_wgslsmith_add_i32(-arg_3.x, -39225i));
    var var_4 = arg_1;
    return reverseBits(reverseBits(_wgslsmith_dot_vec2_i32(max(u_input.d, arg_3.yy), vec2<i32>(var_1, -1i >> (1u % 32u)))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(-1017f, true | select(true, any(vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-594f)), -1000f) * -521f), _wgslsmith_div_vec2_f32(vec2<f32>(-677f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(380f, 980f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-205f, 701f), vec2<f32>(-1469f, 380f), true))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -589f)))))), _wgslsmith_sub_i32(u_input.d.x, u_input.b.x));
    var_0 = Struct_1(251f, false, 967f, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d.x * -1548f), var_0.a)), _wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_div_i32(min(select(var_0.e, 2147483647i, false) >> (19443u % 32u), -1i), -53968i));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, var_0.b), -1142f, vec3<f32>(624f, 726f, var_0.c), 4294967295u)), _wgslsmith_f_op_f32(min(var_0.a, -1418f)))), var_0.c)) * -1804f), all(!(!(!vec3<bool>(var_0.b, var_0.b, var_0.b)))), _wgslsmith_f_op_f32(var_0.a + 760f), var_0.d, ~_wgslsmith_mod_i32(func_3(vec3<f32>(var_0.a, 120f, 896f), Struct_1(-205f, true, 757f, var_0.d, var_0.e), select(var_0.e, u_input.e, false), vec3<i32>(-2147483647i, u_input.b.x, u_input.e) ^ vec3<i32>(16934i, var_0.e, u_input.c)), 37254i));
    let var_1 = ~_wgslsmith_sub_vec3_u32(select(min(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 30039u, u_input.a) >> (vec3<u32>(u_input.a, 6138u, u_input.a) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, 80864u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(6169u, u_input.a, 4294967295u)), !(!var_0.b)), vec3<u32>(max(~u_input.a, firstLeadingBit(u_input.a)), reverseBits(firstLeadingBit(0u)), ~4294967295u));
    var var_2 = _wgslsmith_mult_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(22667u, var_1.x, 1u), ~var_1, firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 48994u)))), var_1);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x + 1000f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * var_0.d.x), var_0.d.x, var_0.b))), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-113f - var_0.c), var_0.a))), -1336f), var_0.d, _wgslsmith_clamp_i32(_wgslsmith_add_i32(-46477i, _wgslsmith_dot_vec4_i32(vec4<i32>(23373i, u_input.e, var_0.e, var_0.e), vec4<i32>(var_0.e, u_input.b.x, var_0.e, -16504i))) >> (4294967295u % 32u), abs(_wgslsmith_mult_i32(select(var_0.e, -1i, var_0.b), func_3(vec3<f32>(-142f, -409f, 674f), Struct_1(780f, true, var_0.a, vec2<f32>(var_0.d.x, 228f), 19080i), -1i, vec3<i32>(-19795i, var_0.e, u_input.c)))), 1i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<i32>(1i, _wgslsmith_div_i32(abs(func_1().e), func_1().e), func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, arg_0.c, -1345f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.a, arg_0.c, -110f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-301f, -140f, 1524f) + vec3<f32>(-174f, 1567f, -448f)))), arg_1.b)), Struct_1(arg_1.d.x, arg_1.b, _wgslsmith_f_op_f32(exp2(arg_1.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(165f, arg_1.d.x), vec2<f32>(arg_1.c, arg_0.d.x), false))), arg_0.e), reverseBits(_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_1.e, arg_1.e), vec2<i32>(-1i, arg_0.e), false), vec2<i32>(arg_0.e, arg_0.e))), firstTrailingBit(reverseBits(-vec3<i32>(-48068i, u_input.e, arg_1.e)))), ~(-abs(_wgslsmith_dot_vec2_i32(u_input.b, u_input.d))));
    let var_1 = func_1();
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1942f, _wgslsmith_f_op_f32(round(1331f)))) * _wgslsmith_f_op_f32(1f + var_1.c)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1166f, 1000f)))), !select(arg_1.b, true, arg_0.b) | func_1().b, !var_1.b, true);
    let var_3 = var_1.b && any(var_2.zw);
    var var_4 = 106f;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(816f)))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1028f * _wgslsmith_f_op_f32(exp2(arg_1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)))), (true | any(vec3<bool>(false, var_2.x, true))) & true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.c, arg_0.c))), 1453f))), _wgslsmith_f_op_vec2_f32(-arg_0.d), ~1i >> (u_input.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(-1f), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(896f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, -1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -879f)))), u_input.c), func_1(), ~_wgslsmith_div_vec4_u32(~countOneBits(vec4<u32>(u_input.a, u_input.a, 31989u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) & vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u), select(vec4<u32>(u_input.a, 1u, 76427u, u_input.a), vec4<u32>(u_input.a, 55178u, 1u, 0u), true), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<u32>(0u, u_input.a, 1u, u_input.a))), ~firstTrailingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 1u))));
    var var_1 = func_1();
    var var_2 = var_0;
    let var_3 = !var_2.b;
    var var_4 = abs(vec4<i32>(13062i, firstLeadingBit(1i) | _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.e, var_1.e, var_2.e), ~vec3<i32>(2147483647i, 59284i, var_1.e)), -43111i, -1i));
    var var_5 = _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.e, ~var_4.x, firstLeadingBit(-1i), var_2.e), min(abs(vec4<i32>(firstLeadingBit(-1i), func_3(vec3<f32>(800f, var_0.a, var_2.a), Struct_1(var_1.a, false, var_1.d.x, vec2<f32>(var_2.d.x, -906f), var_4.x), var_4.x, vec3<i32>(u_input.c, var_4.x, -13294i)), -var_0.e, var_4.x)), vec4<i32>(~var_4.x, -2147483647i, -func_3(vec3<f32>(var_1.c, var_2.d.x, 434f), Struct_1(321f, true, var_0.c, var_2.d, var_4.x), 2147483647i, var_4.yyx), ~var_4.x)));
    let var_6 = _wgslsmith_f_op_f32(-1000f * var_0.d.x);
    let var_7 = ~vec3<i32>(var_1.e, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_5.xxy, _wgslsmith_mod_vec3_i32(var_5.xyz, vec3<i32>(var_5.x, 40962i, 2147483647i))), abs(var_5.yxy)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.e, var_2.e, var_2.e) & -var_5.xyy, abs(-vec3<i32>(2147483647i, var_4.x, var_5.x))));
    var var_8 = abs(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a ^ 2220u, 0u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(13795u, 0u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 6202u, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.b >> (_wgslsmith_add_vec2_u32(~var_8.yx, vec2<u32>(3370u, 0u)) % vec2<u32>(32u))), ~u_input.a, 4294967295u);
}

