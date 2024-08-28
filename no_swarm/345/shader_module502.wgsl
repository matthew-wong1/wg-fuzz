struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: f32) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_i32(abs(-abs(vec4<i32>(2147483647i, -1i, -17312i, 0i))), vec4<i32>(abs(-2147483647i), 1i, min(-23111i, 1i), -1i) | vec4<i32>(1i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-25203i, 0i, -63963i), vec3<i32>(-2147483647i, -10723i, -17912i)), i32(-1i) * -3194i)), _wgslsmith_mult_i32(~(-2147483647i), 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(arg_3 + -651f), arg_0, 816f, -1555f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_0, 1000f))))), -2147483647i, firstTrailingBit(54646u));
    let var_1 = vec4<u32>(0u, max(~min(var_0.e, 1u) | arg_2, _wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), var_0.e)), _wgslsmith_dot_vec3_u32(((vec3<u32>(u_input.a.x, arg_2, var_0.e) << (u_input.a % vec3<u32>(32u))) ^ (u_input.a | u_input.a)) ^ u_input.a, ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.e, 44753u, 39643u), u_input.a))), arg_2);
    let var_2 = Struct_2(select(-(~var_0.a.xxz), -vec3<i32>(4329i, var_0.d, var_0.b), vec3<bool>(true, true, true)) >> (vec3<u32>(u_input.a.x, 17980u, _wgslsmith_add_u32(arg_2 | 11698u, _wgslsmith_dot_vec2_u32(u_input.a.zz, var_1.zx))) % vec3<u32>(32u)), select(vec3<bool>(false, arg_1, true), !(!select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, arg_1, true), false)), !any(select(vec4<bool>(arg_1, true, true, false), vec4<bool>(false, false, false, arg_1), true))));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)));
    var_0 = Struct_1(var_0.a, var_0.d, _wgslsmith_f_op_vec4_f32(-var_0.c), -_wgslsmith_clamp_i32(27847i & (var_2.a.x ^ var_2.a.x), 4360i, 37918i), u_input.a.x);
    return firstTrailingBit(vec3<i32>(abs(-var_0.b ^ reverseBits(-1i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.b, 2147483647i, var_2.a.x, var_0.b), _wgslsmith_mod_vec4_i32(var_0.a, var_0.a) ^ vec4<i32>(0i, var_2.a.x, var_2.a.x, var_2.a.x)), var_2.a.x));
}

fn func_2() -> vec2<u32> {
    var var_0 = -(~(~(-func_3(-421f, true, 4294967295u, -873f))));
    var_0 = select(countOneBits(~vec3<i32>(var_0.x, -3829i, var_0.x >> (60094u % 32u))), vec3<i32>(-2147483647i, reverseBits(_wgslsmith_mult_i32(i32(-1i) * -9243i, var_0.x)), 77494i), true);
    var var_1 = vec4<u32>(u_input.a.x << (_wgslsmith_dot_vec4_u32((vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x) << (vec4<u32>(u_input.a.x, 117358u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x), vec4<u32>(43899u, 14235u, 17709u, u_input.a.x), vec4<u32>(129241u, u_input.a.x, 4294967295u, 75042u)), ~(vec4<u32>(u_input.a.x, u_input.a.x, 29028u, 95209u) | vec4<u32>(u_input.a.x, u_input.a.x, 19750u, 1u))) % 32u), ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)), vec4<u32>(reverseBits(u_input.a.x), firstLeadingBit(81761u), firstLeadingBit(u_input.a.x), 0u)), abs(u_input.a.x), abs(u_input.a.x));
    var_0 = vec3<i32>(0i << (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_1.x), ~vec2<u32>(u_input.a.x, var_1.x))) % 32u), ~(-23931i), var_0.x);
    let var_2 = vec2<i32>(var_0.x, var_0.x);
    return u_input.a.yy;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> StorageBuffer {
    var var_0 = func_2();
    var_0 = vec2<u32>(4294967295u, 4294967295u);
    var_0 = ~(~func_2());
    var var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 28473i, 0i, -1i), -vec4<i32>(-17678i, 0i, -17050i, 0i))), vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-48669i, -5688i, -1i), vec3<i32>(-2147483647i, -70564i, 2147483647i), true), _wgslsmith_add_vec3_i32(vec3<i32>(-9826i, 0i, -16579i), vec3<i32>(2147483647i, 2147483647i, 0i))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(28097i, 1i, 2147483647i, -1i), vec4<i32>(-2147483647i, -23445i, 10495i, 1i)), -9957i, _wgslsmith_dot_vec4_i32(vec4<i32>(7217i, -47193i, -1i, 31958i), ~vec4<i32>(49439i, 35343i, -24949i, -44015i))), (~vec4<i32>(-1i, -2147483647i, -2147483647i, 1i) >> (vec4<u32>(4294967295u, arg_1, arg_0.x, 6523u) % vec4<u32>(32u))) | vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_dot_vec3_i32(firstTrailingBit(~vec3<i32>(-15091i, 1i, -1i)), ~reverseBits(firstTrailingBit(vec3<i32>(0i, 24700i, 0i)))), _wgslsmith_div_vec4_f32(vec4<f32>(1107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f) + _wgslsmith_f_op_f32(trunc(150f))), 901f, 2053f), vec4<f32>(_wgslsmith_f_op_f32(sign(628f)), -1160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-434f * -1297f)), -709f)), firstTrailingBit(_wgslsmith_dot_vec4_i32(max(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i, -21621i, 0i, 2147483647i)), vec4<i32>(-2147483647i, -53209i, ~(-39060i), 1i))), arg_1);
    return StorageBuffer(var_2.b, var_2.c.x, var_2.a.xw, 50555u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x), 66224u, ~firstTrailingBit(~57430u), firstTrailingBit(abs(u_input.a.x))), u_input.a.x);
}

