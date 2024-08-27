struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: i32) -> i32 {
    var var_0 = Struct_2(Struct_1(u_input.a), firstTrailingBit(select(firstTrailingBit(-vec2<i32>(arg_2, arg_2)), -reverseBits(vec2<i32>(982i, 1i)), true)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_1.x)))))), arg_0.x, -1360f), _wgslsmith_mod_vec4_i32(vec4<i32>(-26597i, i32(-1i) * -12350i, _wgslsmith_sub_i32(-2147483647i, -2147483647i & u_input.b), -1i), vec4<i32>(-1i, -24131i, 0i, -641i)), true);
    var_0 = Struct_2(var_0.a, var_0.d.zz, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - 877f), 847f), var_0.d, !var_0.e);
    var var_1 = Struct_2(var_0.a, select(vec2<i32>(var_0.b.x, ~1i), var_0.d.xw, any(select(!vec3<bool>(true, var_0.e, false), vec3<bool>(true, true, true), true))), var_0.c, max(vec4<i32>(u_input.b, 1i, reverseBits(var_0.d.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-18048i, -1i), vec2<i32>(var_0.d.x, arg_2)), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 30924i), vec2<i32>(1i, -1i)))), vec4<i32>(2147483647i, 0i ^ _wgslsmith_div_i32(var_0.b.x, u_input.b), i32(-1i) * -arg_2, 1i)), var_0.e);
    var_0 = Struct_2(Struct_1(~var_1.a.a), vec2<i32>(1i, -2147483647i), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1000f)), var_0.c.x), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * var_0.c.x) * _wgslsmith_f_op_f32(var_1.c.x - -622f)))), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_1.d.x, 31396i), vec3<i32>(-2298i, -6928i, u_input.b)), _wgslsmith_sub_i32(arg_2, firstTrailingBit(_wgslsmith_sub_i32(0i, 0i))), min(1i, _wgslsmith_add_i32(~(-35881i), _wgslsmith_dot_vec4_i32(var_1.d, vec4<i32>(1i, var_1.b.x, u_input.b, arg_2)))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.x, var_0.b.x), var_1.d.wz)), true);
    var var_2 = true;
    return _wgslsmith_dot_vec3_i32(~vec3<i32>(reverseBits(min(27932i, 2147483647i)), reverseBits(1i), ~_wgslsmith_add_i32(var_0.b.x, arg_2)), firstLeadingBit(vec3<i32>(2147483647i, -2147483647i, firstTrailingBit(_wgslsmith_sub_i32(var_1.d.x, var_0.b.x)))));
}

fn func_2(arg_0: bool) -> i32 {
    return select(22544i, func_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-362f, -2505f, 304f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1126f, -556f, -470f)), (u_input.b >> (u_input.a % 32u)) >> (~1u % 32u)), arg_0 || (true & arg_0)) | u_input.b;
}

fn func_1() -> f32 {
    var var_0 = -2147483647i;
    var var_1 = vec2<f32>(855f, -195f);
    let var_2 = func_2(true);
    var var_3 = any(vec3<bool>(all(vec3<bool>(true, true, true)), true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(536f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))))));
    return _wgslsmith_f_op_f32(floor(var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(8222u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -413f) + 2888f)) - 1240f), u_input.a, vec2<u32>(max(68248u, 37991u), _wgslsmith_mod_u32(countOneBits(23844u), _wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, u_input.a), ~4294967295u, ~1u))));
    var var_1 = Struct_2(Struct_1(~1u), vec2<i32>(~_wgslsmith_mod_i32(-2147483647i, ~u_input.b), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-14558i, u_input.b, -1i, u_input.b), vec4<i32>(-26813i, 1i, -43022i, 0i)), -vec4<i32>(1i, u_input.b, u_input.b, u_input.b)), u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(971f, -1734f, -1623f) + vec3<f32>(var_0.b, -2354f, var_0.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 574f, -191f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, -269f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, var_0.b, -511f)))), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -447f, var_0.b))))), ~(-abs(vec4<i32>(0i, u_input.b, -2147483647i, u_input.b) << (vec4<u32>(4294967295u, var_0.d.x, u_input.a, 4294967295u) % vec4<u32>(32u)))), (var_0.a > firstLeadingBit(0u)) | (false && (_wgslsmith_f_op_f32(228f * 2425f) >= _wgslsmith_div_f32(var_0.b, var_0.b))));
    var_1 = Struct_2(var_1.a, ~(-vec2<i32>(-1i, 2147483647i << (var_0.a % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, -351f, var_1.c.x)))), vec4<i32>(abs(var_1.d.x), -_wgslsmith_mult_i32(firstTrailingBit(-2147483647i), 1i), -15223i, u_input.b), true);
    var_1 = Struct_2(Struct_1(1u ^ ~var_1.a.a), vec2<i32>(_wgslsmith_dot_vec4_i32(abs(var_1.d), var_1.d), 1i), _wgslsmith_f_op_vec3_f32(select(var_1.c, vec3<f32>(-494f, var_0.b, 858f), (var_0.b > _wgslsmith_f_op_f32(-102f * var_0.b)) == ((var_1.a.a < 4294967295u) || var_1.e))), var_1.d, _wgslsmith_div_i32(-5765i, _wgslsmith_add_i32(var_1.d.x, u_input.b)) >= (_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(var_1.d, vec4<i32>(u_input.b, var_1.d.x, -2096i, -2147483647i)), var_1.d) << (_wgslsmith_mod_u32(41286u, var_0.d.x) % 32u)));
    var var_2 = ~1u;
    var var_3 = -656f;
    var var_4 = var_0;
    var_2 = 4294967295u;
    var var_5 = var_1.e & true;
    let x = u_input.a;
    s_output = StorageBuffer(5381i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4.b, 485f, var_4.b, var_0.b), vec4<f32>(var_1.c.x, 1264f, var_4.b, var_0.b))), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_0.b, var_4.b, var_4.b), vec4<f32>(594f, var_1.c.x, 620f, var_1.c.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1298f, 1477f, 1039f, var_0.b), vec4<f32>(var_4.b, -243f, var_4.b, var_0.b), false))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, 1909f, -738f, var_4.b), vec4<f32>(-124f, 1009f, -125f, var_4.b), true))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(174f, 272f, 1067f, 1908f) - vec4<f32>(-1045f, -775f, var_4.b, 601f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(925f, -525f, var_1.c.x, var_4.b)), select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.e, true, var_1.e, false), var_1.e)))))));
}

