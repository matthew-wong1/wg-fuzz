struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-100838i, -4325i), vec2<i32>(2147483647i, 1i), vec2<i32>(21624i, -1i), vec2<i32>(0i, 20029i), vec2<i32>(-12255i, -53106i), vec2<i32>(20435i, 0i), vec2<i32>(-9162i, 26911i), vec2<i32>(-19596i, 2147483647i), vec2<i32>(-9350i, 0i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-24529i, 14718i), vec2<i32>(11688i, 7538i), vec2<i32>(0i, 18466i), vec2<i32>(13462i, 33339i));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = array<vec2<i32>, 14>();
    global0 = array<vec2<i32>, 14>();
    global0 = array<vec2<i32>, 14>();
    global0 = array<vec2<i32>, 14>();
    global0 = array<vec2<i32>, 14>();
    return _wgslsmith_f_op_f32(select(-824f, 598f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(893f)))) + arg_0.a) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -913f) - arg_0.a)))));
}

fn func_1(arg_0: i32) -> f32 {
    global0 = array<vec2<i32>, 14>();
    global0 = array<vec2<i32>, 14>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(409f, vec4<i32>(u_input.c.x, 66558i, arg_0, 5205i), u_input.c.yxw, u_input.c, arg_0))) + _wgslsmith_f_op_f32(round(259f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(612f)) + _wgslsmith_f_op_f32(491f - 1363f))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = reverseBits(~(~vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.a, u_input.a)));
    var var_1 = 21649u;
    var_1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 1u), ~vec2<u32>(u_input.b, 4424u)) | _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(0u, 13751u)), select(~vec2<u32>(56645u, 4294967295u), max(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(var_0.x, u_input.a)), vec2<bool>(false, false)), vec2<u32>(var_0.x, 28535u)), reverseBits(vec2<u32>(abs(_wgslsmith_mod_u32(50507u, 1u)), firstTrailingBit(4294967295u))));
    var var_2 = vec4<bool>(true, select(all(vec4<bool>(false, true, true, true)), !any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), true), all(select(vec4<bool>(false, false, true, true), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true))), false);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1443f), vec4<i32>(u_input.c.x, arg_2.e, -45264i, -73032i), ~arg_0.d.xzx, vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c.x, arg_2.e, 2256i, arg_0.b.x), vec4<i32>(arg_2.d.x, arg_1.b.x, u_input.c.x, 30206i)), 2147483647i);
    return reverseBits(arg_0.c & _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.c.x ^ 2147483647i, countOneBits(arg_0.d.x)), (arg_1.d.wxy & arg_2.d.yww) ^ ~var_3.b.xxy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(~(~u_input.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, -864f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(-875f, 2711f), -2113f)))));
    let var_2 = Struct_1(var_1.x, abs(firstLeadingBit(vec4<i32>(countOneBits(-37944i), max(u_input.c.x, u_input.c.x), -u_input.c.x, ~u_input.c.x))), func_3(Struct_1(_wgslsmith_f_op_f32(539f - 1000f), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 73892i, 44531i, 27462i), vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, -26471i)), vec3<i32>(-2147483647i, 26106i, 0i) >> (vec3<u32>(u_input.b, 4294967295u, 38116u) % vec3<u32>(32u)), _wgslsmith_mult_vec4_i32(u_input.c, u_input.c), 1i), Struct_1(-1097f, vec4<i32>(0i, u_input.c.x, 16526i, -12166i), _wgslsmith_sub_vec3_i32(u_input.c.zzz, u_input.c.wzx), u_input.c, u_input.c.x), Struct_1(var_1.x, vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(-50743i, -2147483647i, -46979i), max(u_input.c, vec4<i32>(-5076i, u_input.c.x, u_input.c.x, 13697i)), _wgslsmith_mod_i32(-33497i, u_input.c.x)), vec2<i32>(firstLeadingBit(0i), -34199i)) ^ firstTrailingBit(abs(vec3<i32>(u_input.c.x, u_input.c.x, -1i))), _wgslsmith_mult_vec4_i32(-(u_input.c ^ (u_input.c >> (vec4<u32>(0u, u_input.b, 4294967295u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(select(-1i, u_input.c.x, true), -2147483647i, 2147483647i, u_input.c.x))), min(u_input.c.x, 2147483647i));
    var_0 = all(!vec2<bool>(!any(vec3<bool>(true, true, true)), true));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -446f), var_1.x));
    var var_4 = any(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_1.x)))))), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.e, u_input.c.x), ~firstLeadingBit(u_input.c.xy)), var_2.e), _wgslsmith_sub_vec3_u32(abs(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.b, u_input.b))), countOneBits(select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, u_input.a), vec3<u32>(18742u, u_input.b, u_input.a)), vec3<u32>(12042u, u_input.a, u_input.b), true))));
}

