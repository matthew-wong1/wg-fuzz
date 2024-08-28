struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> u32 {
    var var_0 = !select(select(vec2<bool>(true, true), !vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(any(arg_0), arg_0.x)), arg_0, arg_0.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))) - vec2<f32>(-695f, -924f));
    var var_2 = Struct_3(vec4<i32>(~(~(-2147483647i)), (-2147483647i & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 53497i, 2147483647i), vec3<i32>(13672i, 2147483647i, 1i))) << (76040u % 32u), _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_add_i32(-44274i, 53599i)), -2147483647i), countOneBits(-select(0i, -1i, true))), vec3<f32>(666f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x * arg_1))), var_1.x), !(!select(!vec3<bool>(true, true, var_0.x), !vec3<bool>(true, true, arg_0.x), true)));
    var_0 = var_2.c.zz;
    let var_3 = vec2<i32>(_wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(var_2.a, var_2.a), -var_2.a), ~var_2.a.x), firstLeadingBit(var_2.a.x));
    return 47302u;
}

fn func_2(arg_0: vec4<i32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(464f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1255f)))));
    var_0 = -1798f;
    var_0 = 101f;
    var var_1 = _wgslsmith_mult_vec4_i32(-arg_0, -arg_0);
    var var_2 = u_input.a ^ _wgslsmith_clamp_u32(func_3(vec2<bool>(true, select(true, true, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1234f)))), u_input.a, u_input.a);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-448f, -104f, 1601f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1011f, 371f, 416f) * vec3<f32>(474f, -1485f, 274f)))), vec3<f32>(_wgslsmith_f_op_f32(round(-868f)), -2489f, _wgslsmith_f_op_f32(f32(-1f) * -1395f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1084f, -885f))), _wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -707f) + _wgslsmith_f_op_f32(abs(597f))))));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = Struct_5(vec3<u32>(~(~(~arg_0)), _wgslsmith_sub_u32(8132u >> (arg_0 % 32u), arg_0), _wgslsmith_mod_u32(arg_0, arg_0)), Struct_1(countOneBits(_wgslsmith_mod_i32(firstLeadingBit(-2147483647i), ~0i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(~vec4<i32>(-18197i, 21840i, -38921i, -1i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-998f, -1193f, -1000f) * vec3<f32>(-1000f, -1000f, 1515f))), firstTrailingBit(vec3<u32>(~arg_0, arg_0, 38409u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(235f, 1933f, 1658f, -275f), vec4<f32>(-517f, -658f, 963f, -649f)))))), all(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_2(!var_0.b.e, select(!vec4<bool>(!var_0.b.e, false || var_0.b.e, select(var_0.b.e, var_0.b.e, var_0.b.e), var_0.b.e || false), !vec4<bool>(var_0.b.e & false, true, true, any(vec4<bool>(true, false, var_0.b.e, false))), select(any(vec3<bool>(var_0.b.e, var_0.b.e, var_0.b.e)), false, var_0.b.e)), var_0.b.c);
    let var_2 = select(var_1.a && true, true & all(!var_1.b.yy), true || var_1.b.x);
    var_0 = Struct_5(vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.a, reverseBits(firstLeadingBit(var_1.c))), _wgslsmith_div_u32(18152u, var_1.c.x << (arg_0 % 32u)), _wgslsmith_mult_u32(34816u, u_input.a ^ _wgslsmith_sub_u32(4294967295u, arg_0))), var_0.b);
    var var_3 = Struct_2(true, vec4<bool>(all(select(!vec4<bool>(false, false, var_1.a, var_2), var_1.b, !vec4<bool>(var_1.a, true, var_1.b.x, false))), !any(select(var_1.b, var_1.b, var_1.a)), select(false | var_0.b.e, any(var_1.b.xx), var_1.b.x) & var_1.b.x, any(vec3<bool>(all(var_1.b), true, any(vec3<bool>(var_2, var_1.b.x, false))))), _wgslsmith_add_vec3_u32(var_1.c, var_1.c));
    return ~(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~var_3.c, ~var_1.c), _wgslsmith_sub_u32(~1u, 11917u)) ^ (countOneBits(var_3.c.x) << (60898u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 247u;
    var var_1 = vec4<u32>(~_wgslsmith_clamp_u32(~func_1(u_input.a), var_0, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, 0u), var_0, 1u)), u_input.a << (~(~max(32657u, 37780u)) % 32u), reverseBits(_wgslsmith_clamp_u32(~var_0, ~1u, func_3(vec2<bool>(false, true), _wgslsmith_f_op_f32(1000f - 808f)))), u_input.a);
    let var_2 = _wgslsmith_add_vec4_i32(-(reverseBits(vec4<i32>(65766i, 2147483647i, 2147483647i, -1i)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, var_1.x, 1u), vec4<u32>(var_0, 1u, u_input.a, 1u), vec4<u32>(var_1.x, u_input.a, var_0, 37992u)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(firstLeadingBit(-1i), _wgslsmith_mult_i32(1i, 0i), _wgslsmith_mult_i32(36838i, 0i), firstLeadingBit(-69047i)))) | _wgslsmith_mult_vec4_i32(-reverseBits(~vec4<i32>(0i, 0i, 21397i, 2693i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-15957i, 0i, ~1i, ~0i), vec4<i32>(-1i) * -vec4<i32>(28402i, 2147483647i, -14630i, -2147483647i), reverseBits(~vec4<i32>(4009i, -7838i, 2147483647i, 0i))));
    var_1 = select(_wgslsmith_div_vec4_u32((_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, var_0), vec4<u32>(u_input.a, 4294967295u, var_1.x, var_0)) | abs(vec4<u32>(u_input.a, var_1.x, 1u, 13694u))) ^ vec4<u32>(var_0, 15982u, _wgslsmith_dot_vec3_u32(var_1.zxz, var_1.xxy), 33019u), abs(vec4<u32>(var_1.x, ~var_0, 4294967295u >> (var_1.x % 32u), ~var_0))), vec4<u32>(select(~_wgslsmith_clamp_u32(14506u, 0u, 0u), firstLeadingBit(_wgslsmith_dot_vec2_u32(var_1.yz, var_1.yz)), true), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), 4294967295u, u_input.a << (4294967295u % 32u)), ~(u_input.a << (u_input.a % 32u))), 4294967295u, firstLeadingBit(u_input.a)), vec4<bool>(true, all(vec2<bool>(true, false)), false, false));
    let var_3 = Struct_3(firstTrailingBit(~vec4<i32>(countOneBits(var_2.x), var_2.x, var_2.x ^ var_2.x, ~(-1i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(vec4<i32>(var_2.x, 9564i, var_2.x, -2147483647i))).x * _wgslsmith_f_op_f32(-516f - -1215f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(trunc(-565f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-301f)))))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, any(vec4<bool>(false, true, false, true))), all(vec2<bool>(false, true)) != all(vec3<bool>(false, true, false))), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, false), vec3<bool>(~1u >= _wgslsmith_add_u32(var_1.x, 35405u), all(vec2<bool>(true, false)), !select(false, true, false))));
    let var_4 = ~_wgslsmith_sub_vec4_u32(abs(max(min(vec4<u32>(14787u, 2225u, 47710u, 1u), vec4<u32>(16013u, 4294967295u, var_0, 18413u)), vec4<u32>(45515u, var_0, var_0, var_1.x))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0, 1u, 52538u, var_1.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 46776u, 64940u, var_1.x), vec4<u32>(var_0, 1u, u_input.a, var_1.x))));
    let var_5 = Struct_1(-(~46505i), _wgslsmith_f_op_vec3_f32(-var_3.b), _wgslsmith_add_vec3_u32(var_4.xxw, ~var_4.xzz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1012f, 477f, var_3.b.x, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.x, var_3.b.x, var_3.b.x, -1798f), vec4<f32>(-139f, var_3.b.x, 866f, -645f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.b.x, -103f, var_3.b.x, 1303f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-538f, 789f, var_3.b.x, var_3.b.x) + vec4<f32>(963f, var_3.b.x, var_3.b.x, -1000f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.x, 1579f, var_3.b.x, var_3.b.x), _wgslsmith_div_vec4_f32(vec4<f32>(1221f, var_3.b.x, var_3.b.x, 1000f), vec4<f32>(var_3.b.x, 1015f, -1326f, 534f))))), true);
    var_1 = vec4<u32>(abs(34949u), 0u, abs(~_wgslsmith_add_u32(_wgslsmith_sub_u32(var_1.x, 24573u), u_input.a | 1u)), _wgslsmith_mod_u32((var_0 ^ 11981u) | ~var_4.x, 0u) ^ 5719u);
    var var_6 = Struct_5(_wgslsmith_clamp_vec3_u32(vec3<u32>(~var_5.c.x, firstLeadingBit(var_0) << (27673u % 32u), 1u), _wgslsmith_mult_vec3_u32(~(var_5.c << (var_5.c % vec3<u32>(32u))), countOneBits(var_1.xxy)), vec3<u32>(77766u, ~(~16837u), var_0)), Struct_1(max(var_3.a.x, ~var_2.x) << (var_5.c.x % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -736f), _wgslsmith_f_op_f32(f32(-1f) * -375f))), (vec3<u32>(var_0, var_4.x, var_5.c.x) | select(vec3<u32>(0u, var_4.x, var_1.x), var_1.zzx, vec3<bool>(true, false, var_3.c.x))) & abs(~vec3<u32>(4294967295u, u_input.a, 0u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_5.d)) * _wgslsmith_f_op_vec4_f32(-var_5.d)))), (false == var_3.c.x) | true));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(max(select(var_0 & var_1.x, 0u, all(vec3<bool>(var_3.c.x, true, true))), 4294967295u)), var_2.yzx << (firstTrailingBit(var_5.c) % vec3<u32>(32u)), var_6.b.d.xy, ~reverseBits(~abs(vec2<u32>(21441u, 1u))));
}

