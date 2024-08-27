struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = -34441i;
    var var_1 = Struct_1(!vec4<bool>(select(arg_1.b, !arg_1.b, arg_1.a.x), true, any(!vec4<bool>(false, arg_2.a.x, arg_1.b, arg_2.b)), false), true);
    let var_2 = vec4<i32>(arg_0, ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, 50028i, 1i, -2147483647i), max(vec4<i32>(-34302i, u_input.c.x, u_input.c.x, arg_0), vec4<i32>(arg_0, -62388i, arg_0, -23340i))), abs(vec4<i32>(arg_0, -14966i, 2492i, 2147483647i)) | vec4<i32>(17759i, 1i, u_input.b, u_input.c.x)), min(firstTrailingBit(-1i), arg_0), firstTrailingBit(-(~arg_0)));
    let var_3 = Struct_1(!vec4<bool>(true, !(!arg_1.b), !(arg_2.b & arg_1.b), !(arg_2.b & arg_1.a.x)), any(select(!vec2<bool>(true, arg_1.a.x), vec2<bool>(all(vec3<bool>(false, arg_2.a.x, arg_2.a.x)), arg_2.a.x || arg_1.a.x), true == any(var_1.a.yyz))));
    var_1 = Struct_1(var_1.a, true);
    return -2147483647i;
}

fn func_2() -> u32 {
    let var_0 = 1u;
    let var_1 = Struct_1(!(!select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, true, true, false))), !all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))));
    let var_2 = var_1;
    var var_3 = _wgslsmith_sub_vec4_i32(~(vec4<i32>(54163i, abs(u_input.a.x), func_3(19790i, var_2, var_1), 1i) >> (reverseBits(~vec4<u32>(u_input.d.x, 0u, 1u, u_input.d.x)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.c.x, -63733i, 1i), vec4<i32>(u_input.c.x, u_input.b, u_input.c.x, u_input.b) >> (vec4<u32>(u_input.d.x, 66341u, var_0, 19688u) % vec4<u32>(32u))), -2147483647i, firstLeadingBit(-1i), ~(-637i)), vec4<i32>(abs(min(-14004i, u_input.c.x)), _wgslsmith_add_i32(i32(-1i) * -16393i, _wgslsmith_clamp_i32(-14072i, u_input.a.x, 10398i)), reverseBits(u_input.b << (u_input.d.x % 32u)), min(u_input.b, ~u_input.b))));
    var_3 = select(_wgslsmith_add_vec4_i32(vec4<i32>(func_3(13109i, Struct_1(var_2.a, var_1.a.x), Struct_1(vec4<bool>(false, true, var_2.b, var_1.b), true)), 0i, func_3(-1i, var_2, var_1), -var_3.x) ^ ~(vec4<i32>(2147483647i, -30545i, 13861i, 2147483647i) ^ vec4<i32>(2147483647i, -1i, var_3.x, u_input.b)), abs(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.c.x, 1i, u_input.c.x, -33587i)), vec4<i32>(var_3.x, -1i, 45801i, var_3.x), ~vec4<i32>(var_3.x, u_input.a.x, 1i, u_input.a.x)))), _wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(6991i, var_3.x, var_3.x, 2147483647i)), vec4<i32>(var_3.x, u_input.a.x, 14363i, var_3.x) | vec4<i32>(34997i, 8593i, u_input.b, var_3.x))), -vec4<i32>(var_3.x ^ u_input.a.x, ~(-1123i), u_input.a.x, min(u_input.b, u_input.b))), select(!select(var_1.a, !vec4<bool>(var_1.b, true, false, var_2.a.x), false), select(vec4<bool>(any(vec4<bool>(var_2.a.x, false, var_2.b, var_1.b)), var_2.a.x, true, all(var_1.a)), select(var_1.a, var_1.a, select(vec4<bool>(true, false, var_1.a.x, false), var_2.a, var_1.a)), select(var_1.a, var_2.a, var_1.a.x)), !var_2.a));
    return 34601u;
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x ^ arg_0, _wgslsmith_div_u32(u_input.d.x, abs(1u)), abs(_wgslsmith_div_u32(arg_0, u_input.d.x)), _wgslsmith_mult_u32(49446u, 0u)), vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(arg_0, u_input.d.x)), 20708u, _wgslsmith_mult_u32(arg_0, 0u), arg_0), reverseBits(select(vec4<u32>(0u, u_input.d.x, arg_0, 4294967295u), vec4<u32>(72585u, 1877u, 5445u, 13847u), vec4<bool>(true, true, true, false))) >> (~vec4<u32>(u_input.d.x, arg_0, 3143u, u_input.d.x) % vec4<u32>(32u))) ^ select(vec4<u32>(~(arg_0 >> (u_input.d.x % 32u)), 4294967295u, ~min(arg_0, arg_0), _wgslsmith_mult_u32(0u, arg_0)), vec4<u32>(u_input.d.x, _wgslsmith_mod_u32(19972u >> (arg_0 % 32u), 1808u), func_2(), _wgslsmith_clamp_u32(67633u, arg_0, 1858u ^ arg_0)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(181f, 994f) * vec2<f32>(-852f, 870f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(144f, 2539f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-352f, -248f), vec2<f32>(251f, -1325f))))) + vec2<f32>(-1000f, _wgslsmith_div_f32(-430f, 1206f)))));
    let var_2 = arg_0 << ((~(~80886u) & (~func_2() & 4294967295u)) % 32u);
    var var_3 = !all(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, any(vec2<bool>(false, false))), !select(false, false, true)));
    var_3 = _wgslsmith_f_op_f32(floor(var_1.x)) == _wgslsmith_f_op_f32(sign(var_1.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(137f, 946f, func_1(u_input.d.x)));
    let var_1 = u_input.d;
    var_0 = 319f;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~u_input.d.x, _wgslsmith_clamp_u32(var_1.x, 49589u, u_input.d.x) & countOneBits(var_1.x), select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, 45303u), var_1), any(vec3<bool>(false, false, false)))), vec4<i32>(u_input.a.x, ~(-45840i), -_wgslsmith_div_i32(-u_input.c.x, u_input.c.x | 2147483647i), u_input.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(793f, 1037f)))), -1216f))), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_1, ~vec3<u32>(var_1.x, 15220u, 4294967295u)), var_1 | ~vec3<u32>(var_1.x, 36803u, u_input.d.x)) ^ var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 635f, 363f, 890f))))));
}

