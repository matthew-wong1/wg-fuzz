struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(985f, _wgslsmith_f_op_f32(f32(-1f) * -747f)), -1331f));
    var var_1 = !(!(abs(4294967295u ^ u_input.c) < _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, u_input.e, 1u)), vec3<u32>(u_input.d.x, 25294u, 61044u))));
    var var_2 = select(!select(!select(vec3<bool>(false, false, false), vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, arg_0, false)), vec3<bool>(any(vec2<bool>(arg_0, arg_0)), any(vec3<bool>(true, arg_0, true)), u_input.b < u_input.b), false), !vec3<bool>(-3515i >= ~u_input.a.x, true, !arg_0), u_input.c == (~1u << (firstTrailingBit(4294967295u) % 32u)));
    var_2 = !(!vec3<bool>(arg_0, !var_2.x || true, arg_0));
    var var_3 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a.ww)), u_input.a.x >> (4294967295u % 32u)));
    return Struct_1(var_3.a);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = u_input.a.zzz;
    var var_1 = ~(~countOneBits(vec4<u32>(u_input.c, u_input.d.x, u_input.e, 26379u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c, 1926u, 0u), vec4<u32>(u_input.d.x, u_input.e, u_input.d.x, 137851u)) % vec4<u32>(32u))));
    var var_2 = vec4<bool>(all(vec4<bool>(true, true, true, true)) & true, any(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))) | !all(vec3<bool>(true, true, true)), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false))), all(vec3<bool>(any(vec4<bool>(true, true, true, true)), false, select(true, any(vec2<bool>(false, true)), false))));
    let var_3 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(arg_2.a.x, -1i), -arg_3.a), var_0.xy));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.x, arg_0.x)))) + 122f));
    return 1u;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = arg_0 || (u_input.a.x >= countOneBits(-_wgslsmith_div_i32(u_input.a.x, -2147483647i)));
    let var_1 = _wgslsmith_f_op_f32(775f - _wgslsmith_f_op_f32(trunc(1417f)));
    var var_2 = vec3<u32>(max(max(u_input.e, firstTrailingBit(4294967295u)), func_3(vec2<f32>(-484f, var_1), ~u_input.a.wz, func_2(arg_0), Struct_1(vec2<i32>(u_input.b, u_input.a.x)))), countOneBits(1u), ((u_input.e | 1u) | u_input.e) ^ 28713u);
    var var_3 = vec4<u32>(~13867u, 4294967295u, 1u, _wgslsmith_sub_u32(var_2.x, 4294967295u));
    var_0 = true;
    return func_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(countOneBits(u_input.a.yz) | u_input.a.yy));
    var var_1 = func_1(true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-109f, -813f)) * _wgslsmith_f_op_f32(round(-1042f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-699f * 157f) + _wgslsmith_f_op_f32(-1143f * -878f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(151f, -107f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2039f, 1081f)))))));
    let var_3 = _wgslsmith_sub_i32(1i | var_0.a.x, 21375i);
    var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1188f + -616f), 217f)) * _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-758f * 235f))) != -424f);
    let var_4 = var_1.a.x;
    var var_5 = func_2(false);
    var_5 = Struct_1(select(_wgslsmith_add_vec2_i32(vec2<i32>(abs(2147483647i), -var_1.a.x), max(vec2<i32>(var_0.a.x, var_1.a.x), var_5.a)), vec2<i32>(min(2147483647i, ~var_0.a.x), ~(-var_5.a.x)), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)))));
    var_1 = Struct_1(-var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(4294967295u, 1u), u_input.e, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(0u, u_input.e, u_input.e)), ~u_input.c), ~vec4<u32>(u_input.c, u_input.e, 1u, u_input.e)) >> (vec4<u32>(10056u, countOneBits(u_input.d.x) << (80633u % 32u), u_input.e, u_input.d.x) % vec4<u32>(32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(-vec3<i32>(var_5.a.x, 32907i, -21212i)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, var_0.a.x, u_input.a.x), u_input.a.yyy), vec3<i32>(31290i, -20536i, 21810i))), vec3<i32>(-_wgslsmith_mult_i32(30380i, 16633i), 44472i, ~(9876i & var_1.a.x))), _wgslsmith_div_vec3_u32(vec3<u32>(~6581u << (~u_input.e % 32u), ~u_input.c, _wgslsmith_clamp_u32(u_input.e, _wgslsmith_dot_vec2_u32(u_input.d.zy, u_input.d.xz), u_input.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.c, ~2263u, ~1u), u_input.d)), ~(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, 20693u, 106012u, 4294967295u), vec4<u32>(1u, u_input.c, u_input.c, 34654u), vec4<u32>(4294967295u, 27510u, u_input.e, u_input.e)), ~vec4<u32>(u_input.d.x, 0u, u_input.c, u_input.c)) >> (vec4<u32>(_wgslsmith_div_u32(u_input.e, 44875u), 0u, u_input.c | u_input.e, func_3(vec2<f32>(var_2.x, -193f), vec2<i32>(var_3, var_0.a.x), Struct_1(vec2<i32>(-17234i, 2147483647i)), Struct_1(vec2<i32>(var_1.a.x, 25053i)))) % vec4<u32>(32u))));
}

