struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> vec2<i32> {
    let var_0 = !any(vec4<bool>(any(vec4<bool>(false, false, false, true)), true, true, true)) || true;
    return _wgslsmith_mult_vec2_i32(-vec2<i32>(_wgslsmith_div_i32(-23980i, ~u_input.b), max(u_input.b, u_input.e | 18771i)), ~reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, u_input.e))) | (reverseBits(vec2<i32>(u_input.b, -40373i) | vec2<i32>(u_input.e, -1i)) & _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 2147483647i), countOneBits(vec2<i32>(34233i, u_input.e)))));
}

fn func_3() -> vec4<i32> {
    let var_0 = true;
    var var_1 = _wgslsmith_clamp_i32(abs(~_wgslsmith_add_i32(u_input.e, -33571i)) | 1i, ~(-(~(~(-208i)))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.e, u_input.b, -76035i, 50406i), vec4<i32>(1i << (u_input.a.x % 32u), u_input.b | u_input.e, ~u_input.b, 22637i ^ u_input.b), -6428i <= _wgslsmith_sub_i32(u_input.e, u_input.e)), -vec4<i32>(_wgslsmith_add_i32(16442i, u_input.b), u_input.e | -5567i, ~2147483647i, firstLeadingBit(-2147483647i))));
    var var_2 = Struct_3(_wgslsmith_div_vec4_i32(countOneBits(select(vec4<i32>(u_input.b, u_input.b, u_input.e, u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 25139i, u_input.e, -2147483647i), vec4<i32>(u_input.b, u_input.e, -2147483647i, u_input.b)), var_0)), ~firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.e, u_input.b, u_input.e), vec4<i32>(u_input.b, -17130i, u_input.e, 41335i)))), !select(select(!vec2<bool>(var_0, true), !vec2<bool>(var_0, var_0), !vec2<bool>(true, var_0)), !select(vec2<bool>(true, var_0), vec2<bool>(true, false), vec2<bool>(true, true)), any(!vec2<bool>(var_0, var_0))));
    var var_3 = ~min(u_input.d, ~select(_wgslsmith_add_u32(0u, 4294967295u), u_input.c.x, false));
    let var_4 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2528f)), 404f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-520f - _wgslsmith_f_op_f32(min(-1868f, -931f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(962f)), 525f))), -1074f)));
    return _wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(var_2.a << (min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, 1u), vec4<u32>(4294967295u, u_input.c.x, u_input.a.x, u_input.c.x)) % vec4<u32>(32u)), firstTrailingBit(firstTrailingBit(var_2.a)), -(~var_2.a)), vec4<i32>(countOneBits(firstLeadingBit(-2147483647i)), firstTrailingBit(13671i), 1i, firstLeadingBit(_wgslsmith_add_i32(1i, u_input.e))));
}

fn func_1(arg_0: vec4<bool>) -> vec4<i32> {
    let var_0 = u_input.c.x;
    let var_1 = -func_2();
    return func_3();
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(2828f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1013f + 1018f), -2460f)), 1000f, false)), -2051f, -1052f));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(abs(var_0.x)))))) + _wgslsmith_f_op_vec3_f32(-var_0.zwz));
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(~(-11247i & u_input.b), 54243i), countOneBits(_wgslsmith_clamp_i32(arg_2.d << (arg_3.x % 32u), countOneBits(arg_1.a.x), 1i))), func_1(select(!vec4<bool>(false, true, arg_2.b.x, false), !vec4<bool>(false, arg_2.b.x, arg_1.b.x, arg_1.b.x), !vec4<bool>(arg_1.b.x, arg_1.b.x, true, arg_1.b.x))).x);
    var_2 = 12424i;
    let var_3 = Struct_4(~(-abs(-2147483647i)), vec2<bool>((arg_2.b.x || all(vec4<bool>(true, false, arg_2.b.x, arg_1.b.x))) != true, true), abs(~arg_2.c), 0i);
    return Struct_1(arg_3, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    var var_1 = func_4((u_input.c | vec2<u32>(firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, 1u, 134827u), vec4<u32>(u_input.c.x, u_input.d, 24613u, 1u)))) ^ ~(~u_input.a), Struct_3(select(func_1(vec4<bool>(true, false, true, false)), vec4<i32>(-u_input.e, ~u_input.b, 4017i, select(u_input.b, 37161i, false)), true), !vec2<bool>(u_input.d >= 4294967295u, true)), Struct_4(func_2().x, vec2<bool>(all(vec4<bool>(true, true, true, false)), false), vec3<u32>(0u & (32399u | u_input.a.x), 134302u, ~u_input.c.x & 1u), -26136i), vec2<u32>(4294967295u, firstLeadingBit(max(~u_input.c.x, ~1u))));
    var var_2 = _wgslsmith_sub_i32(select(func_3().x, _wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(u_input.e, 53974i)), u_input.e), false), abs(~(-84672i)));
    let var_3 = vec3<i32>(u_input.e, countOneBits(-40590i), select(1i, 1i, true));
    var_0 = _wgslsmith_div_u32(~u_input.d, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b, ~0u, var_1.a.x, select(var_1.a.x, 4294967295u, true)), ~(~vec4<u32>(var_1.b, var_1.a.x, u_input.a.x, 33882u)) & abs(abs(vec4<u32>(var_1.a.x, var_1.b, var_1.a.x, 2023u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-424f))) + -424f), ~reverseBits(vec4<u32>(1u, 51874u, 45100u, var_1.a.x) << (~vec4<u32>(42702u, u_input.d, var_1.a.x, 1u) % vec4<u32>(32u))), var_3 ^ (_wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, var_3.x, -46284i), ~var_3) & _wgslsmith_div_vec3_i32(var_3, ~var_3)), ~var_3, ~u_input.a.x);
}

