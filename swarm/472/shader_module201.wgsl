struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = select(!vec4<bool>(true, any(!vec2<bool>(arg_1.c.b.d, false)), any(select(arg_0, arg_0, vec4<bool>(arg_1.d, arg_0.x, arg_1.d, false))), true), select(arg_0, !arg_0, arg_0), vec4<bool>(arg_0.x, true, select(true, any(select(vec2<bool>(arg_1.c.b.d, false), arg_0.zx, arg_0.zz)), select(false, any(vec4<bool>(true, false, arg_0.x, true)), arg_0.x)), arg_1.c.b.d || !all(arg_0.yw)));
    let var_1 = reverseBits(_wgslsmith_div_vec2_i32(select(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(750i, arg_1.c.b.a), vec2<i32>(23060i, arg_1.c.b.a)), vec2<i32>(2147483647i, arg_1.c.b.a)), vec2<i32>(~arg_1.c.b.a, _wgslsmith_mult_i32(arg_1.c.b.a, 2147483647i)), arg_1.c.b.d), _wgslsmith_div_vec2_i32(min(vec2<i32>(arg_1.c.b.a, arg_1.c.b.a), reverseBits(vec2<i32>(arg_1.c.b.a, 8699i))), ~_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, arg_1.c.b.a), vec2<i32>(arg_1.c.b.a, 16176i)))));
    let var_2 = true;
    return _wgslsmith_mult_vec3_u32(vec3<u32>(max(countOneBits(arg_1.c.a >> (arg_1.c.a % 32u)), ~abs(arg_1.c.a)), 7781u, 4294967295u), abs(vec3<u32>(1u, abs(arg_1.e), 0u)));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-886f * -1425f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1417f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -320f), -614f))), true & !arg_0, 258f);
    let var_1 = ~(~func_3(!vec4<bool>(arg_0, false, true, var_0.d), Struct_3(_wgslsmith_div_f32(var_0.b, -662f), vec3<f32>(1511f, 1000f, var_0.b), Struct_2(39036u, Struct_1(13138i, var_0.c, var_0.c, true, -892f), vec4<f32>(269f, var_0.e, var_0.b, var_0.e)), !arg_0, 48374u)));
    var var_2 = ~vec3<i32>(_wgslsmith_sub_i32(~var_0.a, _wgslsmith_mod_i32(-var_0.a, ~1i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(23770i, var_0.a, 1i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, 0i, 37750i, var_0.a), vec4<i32>(var_0.a, var_0.a, -11766i, 5581i))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(var_0.a, 39041i, var_0.a, 40880i), vec4<i32>(2147483647i, var_0.a, var_0.a, 58478i), true), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, 22263i, var_0.a, 2147483647i), vec4<i32>(var_0.a, var_0.a, var_0.a, -2147483647i)))), -83862i);
    var_2 = firstLeadingBit(_wgslsmith_div_vec3_i32(select(min(vec3<i32>(38227i, -27744i, 22752i), vec3<i32>(var_0.a, var_2.x, var_0.a)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 1i, -1i), vec3<i32>(var_0.a, -35500i, var_2.x)), any(select(vec3<bool>(true, false, var_0.d), vec3<bool>(var_0.d, arg_0, arg_0), false))), vec3<i32>(var_0.a, var_2.x, countOneBits(0i))));
    var var_3 = var_0;
    return -10299i;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = ~abs(abs(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a, 23356i, arg_0.a), vec3<i32>(arg_0.a, -58858i, -9217i)), max(vec3<i32>(32291i, 2147483647i, arg_0.a), vec3<i32>(40775i, arg_0.a, 1i)))));
    var var_1 = vec3<i32>(countOneBits(1i), -1i, _wgslsmith_add_i32(func_2(false), select(var_0.x, arg_0.a, !arg_0.d)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-606f, arg_0.c))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e, arg_0.b))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -2310f) + vec2<f32>(-659f, arg_0.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, 441f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.b)) * vec2<f32>(1277f, _wgslsmith_f_op_f32(select(arg_0.e, 910f, arg_0.d))))));
    var_0 = -_wgslsmith_div_vec3_i32(firstLeadingBit(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_1.x, arg_0.a), vec3<i32>(-1i, arg_0.a, -47835i)))), -(vec3<i32>(-1i) * -vec3<i32>(arg_0.a, var_1.x, var_1.x)));
    let var_3 = arg_0.e;
    return abs(~55049u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -44631i <= ((countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, 0i, -2147483647i), vec4<i32>(31736i, -32383i, 27898i, 12909i))) >> (~(~1u) % 32u)) & 10953i);
    var var_1 = any(!select(vec3<bool>(var_0, var_0, var_0), !vec3<bool>(var_0, true, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, false), vec3<bool>(false, var_0, var_0)))) & (~firstTrailingBit(i32(-1i) * -16208i) >= -(~(-5790i)));
    let var_2 = 102f;
    var var_3 = Struct_2(~_wgslsmith_dot_vec2_u32(~vec2<u32>(22045u, 15721u), vec2<u32>(u_input.a, func_1(Struct_1(-1i, 1216f, var_2, var_0, var_2)))), Struct_1(-_wgslsmith_clamp_i32(-1i, ~1i, select(-1i, -2147483647i, var_0)), _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(trunc(var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1271f), _wgslsmith_div_f32(var_2, -894f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * var_2) * 467f)), _wgslsmith_f_op_f32(-1727f - var_2) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_2)))), -1445f), vec4<f32>(2318f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, var_2))), _wgslsmith_f_op_f32(var_2 - _wgslsmith_div_f32(var_2, var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 * -105f), _wgslsmith_f_op_f32(1552f * -865f))))));
    var var_4 = Struct_2(0u ^ ~var_3.a, var_3.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 660f, 1026f, 878f) + var_3.c) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.b.c, var_3.b.b, 414f, var_3.c.x))))))));
    var var_5 = 1122f;
    let var_6 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_4.c.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -366f) * var_4.c.yw)) - vec2<f32>(504f, var_2))))));
    let var_7 = false;
    var var_8 = Struct_2(max(firstTrailingBit(0u), var_4.a << (80384u % 32u)), Struct_1(abs(_wgslsmith_mult_i32(select(1i, var_4.b.a, true), max(var_3.b.a, var_3.b.a))), 1074f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.b.e + -2723f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))), false, _wgslsmith_f_op_f32(exp2(var_6.x))), vec4<f32>(var_6.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_6.x) * _wgslsmith_f_op_f32(max(1602f, 449f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4.b.c, _wgslsmith_div_f32(457f, var_2))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1396f)), vec2<i32>(_wgslsmith_dot_vec3_i32((vec3<i32>(-40610i, var_4.b.a, var_4.b.a) & vec3<i32>(var_3.b.a, var_8.b.a, -9432i)) ^ -vec3<i32>(0i, var_3.b.a, 2147483647i), -_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.b.a, -2147483647i, var_3.b.a), vec3<i32>(var_4.b.a, -1i, 1i))), firstTrailingBit(var_4.b.a)), 4294967295u, var_4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4.b.c), _wgslsmith_f_op_f32(var_4.b.c - 1411f))))));
}

