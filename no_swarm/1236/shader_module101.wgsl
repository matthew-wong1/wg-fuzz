struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(u_input.b.x, 0i, u_input.c.x, u_input.b.x)), select(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x), select(vec4<i32>(-2147483647i, u_input.b.x, 0i, u_input.b.x), vec4<i32>(11351i, 10052i, -11288i, 48369i), vec4<bool>(true, false, true, true)), all(vec3<bool>(false, false, true)))), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(73609i, 2147483647i, u_input.b.x, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -54646i, 42204i, -29988i), vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, -34251i))) << (min(vec4<u32>(arg_1.x, u_input.a.x, u_input.a.x, 60163u), abs(vec4<u32>(0u, 9119u, 4294967295u, u_input.a.x))) % vec4<u32>(32u))), u_input.c.x);
    let var_1 = var_0;
    var var_2 = vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(u_input.a.x, arg_1.x, countOneBits(u_input.a.x)))), ~arg_2.x, firstLeadingBit(1u), _wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_sub_u32(4294967295u, arg_2.x) >> (~0u % 32u)) | (u_input.a.x ^ _wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(arg_2.x, arg_1.x))));
    var_2 = reverseBits(~(firstTrailingBit(vec4<u32>(u_input.a.x, 17074u, arg_1.x, arg_1.x)) | (max(vec4<u32>(arg_2.x, 1u, 0u, 0u), vec4<u32>(var_2.x, 1u, u_input.a.x, u_input.a.x)) << (vec4<u32>(u_input.a.x, 4294967295u, 85220u, arg_1.x) % vec4<u32>(32u)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, arg_0.x);
    return ~var_1.a;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, u_input.b.x, 3973i, u_input.c.x), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(955f, 1135f, 877f, -421f) + vec4<f32>(-1000f, 1621f, -1048f, -1328f)), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(1u, u_input.a.x, 1u)), _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(1u, 0u, 10207u))), vec4<bool>(true, any(vec3<bool>(false, false, false)), true, any(vec4<bool>(false, true, true, true)))), ~vec4<i32>(~u_input.c.x, min(u_input.c.x, u_input.b.x), u_input.b.x, 7768i)), 74090i);
    global1 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-454f * _wgslsmith_f_op_f32(818f - -1547f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1015f + 254f)))));
    var_1 = _wgslsmith_div_f32(460f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1952f))))));
    global0 = ~(~(firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, 19291u)) ^ select(51351u & u_input.a.x, u_input.a.x, true)));
    return ~(~(~(~(~u_input.a.x))));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<f32> {
    global1 = _wgslsmith_sub_u32(100944u, u_input.a.x << (0u % 32u));
    let var_0 = u_input.a & (firstLeadingBit(~vec3<u32>(arg_2.x, u_input.a.x, 78423u) ^ u_input.a) << (vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(57457u, arg_2.x, 0u, 1u), vec4<u32>(55876u, arg_2.x, 4294967295u, u_input.a.x)), ~arg_2.x), ~_wgslsmith_add_u32(u_input.a.x, arg_2.x)) % vec3<u32>(32u)));
    let var_1 = true;
    let var_2 = Struct_1(-(max(func_3(vec4<f32>(709f, arg_1.x, arg_1.x, -142f), vec3<u32>(var_0.x, var_0.x, 0u), var_0), _wgslsmith_add_vec4_i32(arg_3.a, arg_3.a)) | (-arg_3.a << ((vec4<u32>(1u, 0u, 4294967295u, 1u) << (vec4<u32>(38613u, arg_2.x, arg_2.x, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)))), ~(-func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), select(var_0, var_0, arg_0), vec3<u32>(u_input.a.x, arg_2.x, var_0.x)).x));
    global0 = _wgslsmith_add_u32(var_0.x, ~(~(~arg_2.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.xx * arg_1.yz) - vec2<f32>(613f, -164f)))));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(all(vec4<bool>(!(u_input.a.x == u_input.a.x), true, !(u_input.b.x <= 0i), func_2() >= u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2018f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 1495f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-139f + -407f), _wgslsmith_f_op_f32(f32(-1f) * -106f)) * 1f)), u_input.a, Struct_1(vec4<i32>(u_input.b.x, u_input.c.x | 0i, u_input.c.x, _wgslsmith_clamp_i32(u_input.b.x, firstTrailingBit(u_input.c.x), _wgslsmith_mult_i32(u_input.c.x, u_input.b.x))), ~u_input.b.x)));
    var var_1 = Struct_1(max(-(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.b.x, -21753i)), abs(min(~vec4<i32>(-20198i, 2147483647i, u_input.b.x, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(-19817i, 2147483647i, u_input.b.x, -11282i), vec4<i32>(-26092i, u_input.c.x, u_input.c.x, -17222i))))), _wgslsmith_sub_i32(u_input.c.x, max(_wgslsmith_div_i32(~u_input.c.x, u_input.b.x), _wgslsmith_div_i32(-u_input.b.x, -u_input.b.x))));
    var var_2 = Struct_1(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, -281f, var_0.x))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))), _wgslsmith_clamp_vec3_u32(vec3<u32>(select(u_input.a.x, u_input.a.x, false), func_2(), ~u_input.a.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<u32>(63165u, 0u, u_input.a.x)), u_input.a), _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(_wgslsmith_clamp_u32(56558u, u_input.a.x, u_input.a.x), 125000u, func_2()))), var_1.b);
    var var_3 = var_0.x;
    var var_4 = u_input.a.yx;
    return StorageBuffer(_wgslsmith_sub_vec4_i32(var_1.a ^ abs(reverseBits(vec4<i32>(u_input.c.x, -4841i, var_2.a.x, 32068i))), max(~(vec4<i32>(var_2.b, var_1.a.x, var_2.b, 70012i) | var_2.a), ~var_1.a)), _wgslsmith_div_f32(var_0.x, 208f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

