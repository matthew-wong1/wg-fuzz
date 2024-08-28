struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> f32 {
    let var_0 = abs(~(vec2<i32>(u_input.c, u_input.c) | -vec2<i32>(26825i, 8349i)) & vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, u_input.b), vec3<i32>(u_input.b, u_input.b, 10847i)), _wgslsmith_add_i32(1i, ~u_input.a)));
    let var_1 = -vec2<i32>(u_input.a, -min(var_0.x >> (1u % 32u), -3267i));
    global0 = all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), any(vec2<bool>(false, true))))) | (min(abs(reverseBits(-1i)), var_1.x) != var_1.x);
    global0 = false;
    global0 = true;
    return _wgslsmith_div_f32(-686f, _wgslsmith_f_op_f32(-889f - _wgslsmith_f_op_f32(sign(585f))));
}

fn func_4(arg_0: Struct_2) -> f32 {
    return 378f;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = Struct_3(select(arg_1.zwx, arg_1.yzz, arg_0.x), _wgslsmith_f_op_f32(func_4(Struct_2(-_wgslsmith_mult_i32(11183i, 9521i), vec4<f32>(_wgslsmith_f_op_f32(-893f - -1550f), _wgslsmith_f_op_f32(func_3()), 1135f, _wgslsmith_f_op_f32(f32(-1f) * -229f)), Struct_1(arg_1.x)))), Struct_2(~(_wgslsmith_add_i32(-27255i, u_input.b) & u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(599f, 133f, 1020f, 315f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-579f, -735f, -1399f, -282f) * vec4<f32>(-1594f, -132f, -1000f, -230f)), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)))), Struct_1(1u)), Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e.x, 0u, u_input.e.x, 4294967295u) << ((vec4<u32>(u_input.d, u_input.e.x, 17493u, 1u) | arg_1) % vec4<u32>(32u)), firstTrailingBit(arg_1))), _wgslsmith_clamp_vec2_u32(u_input.e, select(~(~arg_1.wz), ~arg_1.zy, any(arg_0.xy)), vec2<u32>(~5444u, u_input.d | 845u) & vec2<u32>(abs(arg_1.x), ~30701u)));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f)), _wgslsmith_f_op_f32(floor(var_0.c.b.x)))), Struct_2(~(~(u_input.a << (arg_1.x % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.b) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(var_0.c.b, vec4<f32>(-616f, var_0.b, 260f, var_0.b)))))), Struct_1(0u)), Struct_1(1u), firstTrailingBit(var_0.a.yx));
    global0 = any(arg_0.zyy);
    var var_1 = _wgslsmith_div_u32(~(~(_wgslsmith_sub_u32(arg_1.x, u_input.e.x) ^ (u_input.e.x & 32083u))), ~1u);
    var var_2 = abs(firstLeadingBit(~vec3<u32>(4294967295u, u_input.d, 6731u)));
    return _wgslsmith_div_vec3_f32(var_0.c.b.yyz, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(var_0.c.b.xxw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-384f, -419f, var_0.c.b.x)))))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1320f, 100f, -1578f)))) + _wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(true, u_input.d >= u_input.d, any(vec3<bool>(true, true, false)), true), vec4<u32>(select(u_input.d, 1u, false), 0u, 4294967295u, 19826u & u_input.d)))));
    var var_1 = Struct_2(~reverseBits(u_input.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, -868f), vec4<f32>(-252f, 1000f, var_0.x, var_0.x), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 172f, var_0.x, 640f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, _wgslsmith_f_op_f32(1000f - var_0.x), 1039f, -770f))), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))))), Struct_1(min(~(~u_input.e.x), ~firstLeadingBit(u_input.e.x))));
    let var_2 = u_input.a;
    var var_3 = Struct_3(~reverseBits(~(~vec3<u32>(u_input.e.x, 1u, 4294967295u))), _wgslsmith_f_op_f32(func_4(Struct_2(u_input.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1101f, -292f, var_1.b.x, var_0.x) - vec4<f32>(-1198f, var_0.x, 1268f, var_0.x)), _wgslsmith_f_op_vec4_f32(-var_1.b)), Struct_1(~u_input.d)))), Struct_2(~(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, var_1.a, var_1.a, -80069i), vec4<i32>(var_2, -20505i, -58902i, 2147483647i)) | ~0i), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.x, var_1.b.x, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(func_3())))), var_1.c), var_1.c, _wgslsmith_clamp_vec2_u32(countOneBits(reverseBits(u_input.e)), ~min(_wgslsmith_sub_vec2_u32(u_input.e, vec2<u32>(1u, 1u)), u_input.e), ~reverseBits(abs(u_input.e))));
    var var_4 = Struct_3(_wgslsmith_add_vec3_u32(reverseBits(var_3.a), ~vec3<u32>(41464u, 0u, var_3.a.x) << (firstLeadingBit(countOneBits(vec3<u32>(var_3.a.x, var_1.c.a, var_1.c.a))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.b, _wgslsmith_f_op_f32(-510f - 300f))))), var_3.c, Struct_1(_wgslsmith_sub_u32(~u_input.e.x, select(1u, ~4294967295u, true))), firstLeadingBit(var_3.e));
    return Struct_2(select((~var_4.c.a & (i32(-1i) * -26936i)) >> (select(~var_3.d.a, u_input.e.x, 0i < var_1.a) % 32u), abs(~1i), false), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(var_4.c.b)))), var_3.d);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> vec2<i32> {
    let var_0 = !any(vec4<bool>(true, true, true, true));
    var var_1 = vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_1.c.a), vec2<u32>(arg_2, 45772u)), u_input.e >> (~vec2<u32>(4294967295u, 10308u) % vec2<u32>(32u))), ~(~u_input.e)), ~0u << (arg_2 % 32u), firstTrailingBit(~_wgslsmith_sub_u32(0u, arg_2)));
    return firstLeadingBit(_wgslsmith_mult_vec2_i32(-vec2<i32>(~u_input.a, arg_1.a), vec2<i32>(0i, 2339i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a ^ u_input.b, ~1i)), firstLeadingBit(firstTrailingBit(~vec2<i32>(u_input.b, -1i)))), u_input.c, 1i);
    var var_1 = firstTrailingBit(var_0.yy);
    var_1 = func_5(~_wgslsmith_div_u32(0u, 1u), func_1(), 1u);
    var_1 = -(abs(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-32035i, u_input.a), vec2<i32>(-28456i, 2147483647i)), vec2<i32>(var_0.x, 2147483647i))) << (vec2<u32>(4294967295u, max(1u, ~0u)) % vec2<u32>(32u)));
    var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-43083i, 5072i, var_1.x), vec3<i32>(2147483647i, var_1.x, var_1.x), vec3<i32>(-2147483647i, -1i, var_1.x))), vec3<i32>(_wgslsmith_add_i32(~(-24724i), 0i), firstLeadingBit(var_0.x), var_0.x)), vec3<i32>(select(1i, var_0.x, all(vec3<bool>(false, true, true))), 1i & _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 1i, var_0.x, 9480i), vec4<i32>(69050i, var_1.x, 0i, var_1.x)), 1i) ^ ~(-abs(vec3<i32>(-56824i, -12300i, 23474i))));
    let x = u_input.a;
    s_output = StorageBuffer(907f, ~(~1i), _wgslsmith_div_f32(288f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f) - _wgslsmith_f_op_f32(f32(-1f) * -208f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1944f, 687f))))), -var_0.x, vec4<f32>(_wgslsmith_div_f32(1908f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2491f * -752f) * _wgslsmith_f_op_f32(func_3()))), 1698f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-207f - _wgslsmith_f_op_f32(-1246f + 391f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-499f)), _wgslsmith_f_op_f32(func_4(Struct_2(var_0.x, vec4<f32>(459f, 447f, -187f, -401f), Struct_1(u_input.e.x)))))));
}

