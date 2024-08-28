struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = u_input.c;
    let var_1 = Struct_1(vec2<bool>(arg_1.x, arg_3.b.a.x | (arg_2.x || true)));
    var var_2 = arg_3.d;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, arg_3.a, 1000f, 231f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, arg_3.a, 1595f, 129f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, arg_3.a, arg_3.a, 1706f)))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-462f, arg_3.a, arg_3.a, -436f))) - vec4<f32>(arg_3.a, arg_3.a, arg_3.a, arg_3.a))))));
    var var_4 = arg_0;
    return arg_3;
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_2(-1000f, Struct_1(!vec2<bool>(false, all(vec4<bool>(false, true, true, false)))), u_input.c, _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(u_input.d.zx, vec2<i32>(u_input.a.x, u_input.d.x))), -vec2<i32>(u_input.b, u_input.b)) & _wgslsmith_sub_i32(u_input.d.x, abs(~u_input.a.x)), ~vec2<u32>(~countOneBits(arg_0.x), countOneBits(0u) << (~arg_0.x % 32u)));
    var var_1 = ~abs(reverseBits(min(var_0.e.x, var_0.c)) | ~max(41973u, var_0.c));
    let var_2 = arg_0.x;
    var_1 = ~var_0.e.x;
    var_1 = u_input.c;
    return _wgslsmith_f_op_f32(f32(-1f) * -2918f);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(-677f));
    var var_1 = min(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, _wgslsmith_div_i32(arg_0, u_input.b), firstLeadingBit(-18059i)) >> (~vec4<u32>(47645u, u_input.c, 4294967295u, u_input.c) % vec4<u32>(32u)), vec4<i32>(~19399i, u_input.b, -1i, u_input.a.x & 0i) << (select(~vec4<u32>(15299u, u_input.c, u_input.c, u_input.c), vec4<u32>(83732u, u_input.c, u_input.c, 1u) & vec4<u32>(u_input.c, 26605u, 42290u, u_input.c), select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, false), vec4<bool>(true, arg_1.a.x, arg_1.a.x, true), vec4<bool>(false, true, false, arg_1.a.x))) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(-firstLeadingBit(vec4<i32>(46145i, 1i, -70658i, arg_0)), -max(-vec4<i32>(u_input.d.x, 8942i, arg_0, arg_0), select(vec4<i32>(arg_0, 19205i, arg_0, u_input.a.x), vec4<i32>(arg_0, -48204i, 13825i, 22822i), vec4<bool>(arg_1.a.x, false, false, true)))));
    let var_2 = countOneBits(~reverseBits(1i));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1471f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(2233f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-748f * _wgslsmith_f_op_f32(f32(-1f) * -424f))), false)), -539f));
    var_0 = -834f;
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-550f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(299f * -291f))), _wgslsmith_f_op_f32(func_3(~(~vec4<u32>(74957u, u_input.c, u_input.c, 46694u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1799f - 417f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-664f - 748f)), -1000f)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<f32>) -> vec2<bool> {
    let var_0 = u_input.d;
    var var_1 = arg_0.d;
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -743f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(1505f - 474f)))))));
    var_1 = firstTrailingBit(1i);
    return !(!(!(!arg_0.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-844f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-888f * -287f), _wgslsmith_f_op_f32(step(-789f, -1023f))))))), Struct_1(func_4(func_1(vec3<bool>(true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), Struct_2(1000f, Struct_1(vec2<bool>(false, false)), 0u, -2147483647i, vec2<u32>(1u, 4294967295u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(101f + 644f))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(25475i, Struct_1(vec2<bool>(false, false))))))), 3669u, _wgslsmith_add_i32(abs(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d)), -40598i << (u_input.c % 32u)) & -((u_input.b << (u_input.c % 32u)) >> (4294967295u % 32u)), ~(vec2<u32>(_wgslsmith_div_u32(0u, 111122u), ~1u) ^ _wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, 0u), vec2<bool>(true, true)), ~vec2<u32>(4294967295u, u_input.c))));
    let var_1 = var_0.b;
    let var_2 = select(!select(vec4<bool>(select(var_0.b.a.x, var_0.b.a.x, true), var_0.a == 1782f, false, var_0.b.a.x), vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, false, var_1.a.x)), var_0.b.a.x, false, var_0.b.a.x && true)), vec4<bool>(var_0.b.a.x, true, any(!(!vec2<bool>(var_0.b.a.x, var_0.b.a.x))), all(vec4<bool>(!var_0.b.a.x, true, all(vec3<bool>(var_0.b.a.x, var_1.a.x, var_0.b.a.x)), func_4(var_0, var_0.a, var_0.b.a, vec3<f32>(var_0.a, var_0.a, -263f)).x))), select(vec4<bool>(func_4(func_1(vec3<bool>(var_0.b.a.x, var_1.a.x, var_0.b.a.x), vec4<bool>(false, var_1.a.x, false, false), vec4<bool>(false, var_1.a.x, var_0.b.a.x, var_0.b.a.x), var_0), _wgslsmith_f_op_f32(var_0.a - -133f), select(var_1.a, vec2<bool>(var_1.a.x, false), var_0.b.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1499f, 206f, 846f))).x, var_0.b.a.x, select(any(vec2<bool>(var_1.a.x, var_1.a.x)), true, u_input.b > u_input.b), true), !(!vec4<bool>(var_1.a.x, var_1.a.x, var_0.b.a.x, var_1.a.x)), vec4<bool>(false, var_0.b.a.x, var_1.a.x, var_1.a.x)));
    let var_3 = var_2;
    var var_4 = !var_1.a.x;
    var_4 = var_3.x || !select(var_2.x, true, !var_2.x);
    var var_5 = var_0.c;
    let var_6 = var_1.a.x;
    let var_7 = -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(u_input.b), var_0.d, ~var_0.d, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), -vec4<i32>(u_input.d.x, 1i, -21056i, u_input.d.x)), ~max(1i, -1i), ~_wgslsmith_dot_vec2_i32(u_input.d.yz, abs(u_input.d.xz)), abs(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a * var_0.a))))), _wgslsmith_div_vec3_i32(-select(vec3<i32>(var_0.d, var_7.x, u_input.a.x), vec3<i32>(u_input.d.x, 16554i, 2147483647i), vec3<bool>(var_1.a.x, var_6, var_3.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, u_input.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -1i, -2147483647i), u_input.d))) << (~abs(select(vec3<u32>(u_input.c, 4294967295u, 24021u), vec3<u32>(4294967295u, var_0.c, 53049u), false)) % vec3<u32>(32u)));
}

