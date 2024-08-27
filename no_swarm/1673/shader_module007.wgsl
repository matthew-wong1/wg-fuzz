struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<f32>) -> f32 {
    var var_0 = arg_0.b.d.a.x;
    var_0 = ~(arg_0.c.x >> (44268u % 32u));
    var var_1 = Struct_2(35469u, arg_0.b.d, arg_0.b.b, arg_0.b.b, arg_0.b.e);
    var_0 = arg_0.c.x;
    var_1 = Struct_2(arg_1.x, arg_0.b.c, arg_0.b.d, Struct_1(arg_0.b.c.a << ((countOneBits(vec4<u32>(21992u, u_input.c, 4294967295u, arg_1.x)) >> ((vec4<u32>(1u, arg_2, u_input.d, var_1.a) >> (vec4<u32>(24582u, arg_2, 5667u, arg_2) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-var_1.d.b)), !all(!vec4<bool>(arg_0.b.e, arg_0.b.e, arg_0.b.e, arg_0.b.e)));
    return _wgslsmith_div_f32(var_1.d.b.x, arg_0.b.c.b.x);
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: f32, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1308f - _wgslsmith_f_op_f32(func_3(Struct_3(-310f, Struct_2(u_input.d, Struct_1(vec4<i32>(-21996i, u_input.b, 2147483647i, 37994i), arg_1), Struct_1(vec4<i32>(u_input.b, u_input.b, u_input.a.x, -17519i), vec2<f32>(arg_1.x, -1349f)), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b), vec2<f32>(arg_1.x, 1008f)), false), vec3<i32>(u_input.a.x, u_input.b, 2147483647i), u_input.e.xz), u_input.e, u_input.d, vec2<f32>(-914f, -1012f)))), arg_1.x) * 417f), Struct_2(_wgslsmith_mod_u32((u_input.c << (4294967295u % 32u)) | 0u, u_input.c), Struct_1(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -17026i, -16747i, -3391i), vec4<i32>(-2147483647i, 2147483647i, u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(arg_1, vec2<f32>(arg_1.x, -1445f), vec2<bool>(arg_0, arg_0)))))), Struct_1(~(~vec4<i32>(2147483647i, u_input.a.x, -1i, -2147483647i)), vec2<f32>(666f, _wgslsmith_f_op_f32(arg_2 - arg_1.x))), Struct_1(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-5663i, u_input.a.x, -38230i, 0i), vec4<i32>(u_input.a.x, u_input.b, 2147483647i, u_input.b), vec4<i32>(-21076i, -15843i, u_input.a.x, u_input.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_1, arg_1)) * _wgslsmith_f_op_vec2_f32(-arg_1))), true), max(~(~max(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, u_input.a.x, -1i))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, u_input.a.x), ~vec3<i32>(u_input.b, u_input.a.x, 36387i))), vec2<u32>(~arg_3, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, 1u), arg_3), ~u_input.e.yx)));
    var var_1 = arg_2;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c.b.x)), arg_1.x));
    let var_2 = Struct_1(var_0.b.b.a, vec2<f32>(-348f, _wgslsmith_f_op_f32(step(-1222f, 1282f))));
    var_1 = var_0.a;
    return Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2860f * _wgslsmith_f_op_f32(var_0.b.d.b.x - 219f))))), var_0.b, _wgslsmith_clamp_vec3_i32(select(_wgslsmith_mod_vec3_i32(~var_2.a.zzz, _wgslsmith_add_vec3_i32(var_0.c, vec3<i32>(-1i, 0i, var_0.b.c.a.x))), -select(var_0.c, var_0.c, vec3<bool>(true, true, arg_0)), true), var_2.a.wwz, _wgslsmith_sub_vec3_i32(firstTrailingBit(var_2.a.zxz), _wgslsmith_div_vec3_i32(vec3<i32>(0i, var_2.a.x, -2147483647i), var_0.c) << ((u_input.e << (vec3<u32>(var_0.d.x, 4294967295u, 5336u) % vec3<u32>(32u))) % vec3<u32>(32u)))), var_0.d);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = u_input.a.x;
    var var_1 = vec3<i32>(arg_1.a.x, ~(-41156i), -50288i);
    var_0 = var_1.x;
    let var_2 = firstTrailingBit(6984u);
    let var_3 = func_2(_wgslsmith_f_op_f32(-758f + -1835f) != arg_1.b.x, _wgslsmith_f_op_vec2_f32(min(arg_1.b, vec2<f32>(arg_1.b.x, arg_1.b.x))), arg_0.x, 1u ^ _wgslsmith_clamp_u32(~_wgslsmith_add_u32(u_input.c, u_input.d), u_input.e.x << (_wgslsmith_mult_u32(u_input.c, u_input.c) % 32u), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.d, 18570u, 0u, var_2)), vec4<u32>(var_2, 0u, var_2, var_2) << (vec4<u32>(4294967295u, u_input.c, 1u, 490u) % vec4<u32>(32u)))));
    return _wgslsmith_dot_vec3_i32(var_3.b.c.a.xzw, -vec3<i32>(func_2(any(vec4<bool>(var_3.b.e, var_3.b.e, false, false)), _wgslsmith_f_op_vec2_f32(-arg_1.b), arg_1.b.x, var_3.d.x).b.d.a.x, _wgslsmith_div_i32(~(-1i), arg_1.a.x), _wgslsmith_div_i32(arg_1.a.x ^ 9411i, firstTrailingBit(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(abs(vec3<i32>(abs(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-10024i, u_input.b, u_input.b), vec3<i32>(u_input.a.x, 1i, u_input.b)), ~(-19479i))), (-vec3<i32>(u_input.b, u_input.a.x, 1i) << (countOneBits(vec3<u32>(u_input.c, u_input.c, u_input.d)) % vec3<u32>(32u))) & (vec3<i32>(-1i) * -vec3<i32>(u_input.b, -20191i, -8776i))) & (vec3<i32>(~(~(-2147483647i)), -func_1(vec4<f32>(-630f, -410f, 500f, -1347f), Struct_1(vec4<i32>(u_input.a.x, 17018i, u_input.a.x, u_input.a.x), vec2<f32>(874f, -341f))), u_input.a.x) << (vec3<u32>(~84909u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(51130u, 0u, 25447u), vec3<u32>(10938u, 164u, u_input.d)) % 32u), 1u, ~u_input.d) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_dot_vec4_i32(~(countOneBits(vec4<i32>(-22426i, 2147483647i, var_0.x, 2920i)) << (~max(vec4<u32>(4294967295u, u_input.e.x, 0u, 4294967295u), vec4<u32>(4294967295u, u_input.e.x, 1u, 1u)) % vec4<u32>(32u))), select(vec4<i32>(-func_1(vec4<f32>(311f, 2583f, -103f, -904f), Struct_1(vec4<i32>(-2147483647i, var_0.x, 306i, var_0.x), vec2<f32>(-987f, 1466f))), -var_0.x, -1i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.x, 2147483647i), -1i)), vec4<i32>(2147483647i, u_input.b, var_0.x, -2138i), !any(vec4<bool>(true, true, true, true))));
    var var_2 = u_input.e.yz;
    let var_3 = -2147483647i;
    var var_4 = _wgslsmith_dot_vec4_u32(min(~(vec4<u32>(u_input.c, 4294967295u, var_2.x, 0u) ^ vec4<u32>(var_2.x, var_2.x, u_input.e.x, u_input.d)) >> (~vec4<u32>(6591u, var_2.x, var_2.x, 20339u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(4294967295u, var_2.x, 87718u, var_2.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, u_input.d, 0u, u_input.e.x), vec4<u32>(65142u, 21u, var_2.x, var_2.x) >> (vec4<u32>(var_2.x, var_2.x, u_input.e.x, u_input.e.x) % vec4<u32>(32u))))), countOneBits(abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d, u_input.c, 0u, u_input.d), vec4<u32>(19526u, 1u, u_input.e.x, 12716u), countOneBits(vec4<u32>(u_input.d, var_2.x, u_input.c, 4294967295u))))));
    var_4 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_u32(~42302u, u_input.e.x)), _wgslsmith_sub_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_2.x, 4294967295u, 10503u), vec4<u32>(1924u, u_input.d, 29981u, u_input.d))) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.e.x, 1u, var_2.x), vec4<u32>(0u, 11824u, var_2.x, 14316u)) % vec4<u32>(32u)), ~(vec4<u32>(u_input.e.x, 0u, u_input.e.x, 0u) >> (~vec4<u32>(var_2.x, 49381u, u_input.c, 49932u) % vec4<u32>(32u)))));
}

