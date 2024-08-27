struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4) -> vec3<f32> {
    let var_0 = u_input.a | ~u_input.a;
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-341f, 1219f)))), _wgslsmith_f_op_f32(f32(-1f) * -229f)));
    var var_2 = Struct_2(abs(_wgslsmith_clamp_u32(arg_0.a.x >> (~arg_0.a.x % 32u), ~_wgslsmith_div_u32(arg_0.a.x, 4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 4294967295u, u_input.d.x, arg_0.a.x), vec4<u32>(u_input.d.x, arg_0.a.x, u_input.d.x, arg_0.a.x)))), _wgslsmith_f_op_f32(-113f + var_1.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-206f, -1545f)) + _wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(-1733f, var_1.a.x)))))), vec3<bool>(true, true, true));
    var_2 = Struct_2(~(_wgslsmith_add_u32(u_input.d.x << (arg_0.a.x % 32u), 99126u) ^ u_input.c), var_1.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.b)), _wgslsmith_div_f32(-1377f, var_1.a.x)) - _wgslsmith_f_op_vec2_f32(min(var_2.c.a, var_1.a)))), select(vec3<bool>(var_2.d.x, !var_2.d.x, true), var_2.d, !(!(!var_2.d.x))));
    let var_3 = ~(~abs(~vec4<u32>(u_input.c, var_2.a, 0u, u_input.d.x))) | ~vec4<u32>(_wgslsmith_sub_u32(var_2.a, ~9721u), 1u, 0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, var_2.a), u_input.d), abs(18078u));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-244f, var_2.b, var_2.d.x)), -1146f, 576f) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1163f, arg_0.b, -455f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(290f, -1028f, -955f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b, 987f, 703f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.a.x, -339f, 1683f) * vec3<f32>(986f, var_1.a.x, var_2.b)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-935f, -1793f, -271f) - vec3<f32>(129f, 1299f, -273f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.x, 1334f, var_2.b), vec3<f32>(-2648f, var_1.a.x, 1317f)))), vec3<f32>(1297f, _wgslsmith_f_op_f32(select(303f, var_1.a.x, var_2.d.x)), _wgslsmith_f_op_f32(-arg_0.b)), var_2.d.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-360f, -197f, -1529f), vec3<f32>(266f, 714f, var_2.b)))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -386f)), var_2.d.x)))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-884f - 2141f)), _wgslsmith_f_op_f32(sign(220f)), _wgslsmith_f_op_f32(-980f - _wgslsmith_f_op_f32(step(-526f, 302f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(vec2<u32>(1u, ~u_input.d.x), var_0.x))), _wgslsmith_f_op_vec3_f32(-var_0), select(select(vec3<bool>(true, true, var_0.x >= var_0.x), vec3<bool>(all(vec4<bool>(true, false, true, false)), false, all(vec4<bool>(true, false, false, false))), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), u_input.e.x < -2147483647i), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), false), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(step(858f, _wgslsmith_f_op_f32(var_0.x * 1261f))) != _wgslsmith_f_op_f32(step(-1649f, var_0.x)))));
    let var_2 = abs(u_input.b);
    var var_3 = Struct_3((~vec2<u32>(1u, 92881u) & ~vec2<u32>(u_input.d.x, u_input.c)) << (u_input.d.zz % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-838f, -1080f))))), u_input.b.x, ~73210u);
    var_3 = Struct_3(u_input.d.xy, var_3.b, firstTrailingBit(var_2.x), _wgslsmith_dot_vec2_u32(var_3.a, select(~(~vec2<u32>(0u, 1u)), reverseBits(u_input.d.zz), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    return var_3.b;
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = vec4<f32>(1013f, _wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1287f + 487f), _wgslsmith_f_op_f32(round(-774f))) * 1000f))), _wgslsmith_f_op_f32(step(1153f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1859f)) - -1000f))));
    var var_1 = vec3<i32>(reverseBits(-_wgslsmith_add_i32(u_input.e.x, 15329i)), 1i, u_input.a.x);
    var_1 = vec3<i32>(~_wgslsmith_div_i32(0i, 2147483647i) & reverseBits(u_input.b.x), -u_input.b.x, _wgslsmith_mult_i32(-2147483647i, var_1.x) ^ var_1.x) << (select(~u_input.d, vec3<u32>(0u, 16247u, ~u_input.d.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)) % vec3<u32>(32u));
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * 1f));
    return reverseBits(firstLeadingBit(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 0u), ~u_input.d.xy), ~(vec2<u32>(u_input.c, u_input.d.x) | vec2<u32>(u_input.d.x, 28399u))), ~select(vec2<u32>(u_input.c, u_input.c), ~u_input.d.yy, vec2<bool>(true, true))));
    var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-u_input.a.x, firstLeadingBit(1i)), -(u_input.e.x ^ u_input.e.x)), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.e.x, 0i, -15007i), vec4<i32>(-23646i, u_input.a.x, -1i, u_input.a.x)), select(func_1(vec2<u32>(u_input.c, u_input.d.x)), _wgslsmith_sub_i32(u_input.e.x, u_input.a.x), select(false, true, true)), -45671i)) | u_input.a.x;
    var_0 = reverseBits(-min(-52030i, 2147483647i));
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(23350i, _wgslsmith_clamp_i32(-2147483647i, 1i, -1i), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-22832i, u_input.a.x, u_input.e.x, 1i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), countOneBits(_wgslsmith_add_vec4_i32(-u_input.a, _wgslsmith_div_vec4_i32(countOneBits(u_input.b), select(vec4<i32>(10828i, u_input.b.x, 2147483647i, -16024i), vec4<i32>(u_input.a.x, 1918i, 43028i, u_input.b.x), false)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1135f, 714f, -862f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-635f, 700f, 1248f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2098f, 430f, -736f)), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(vec2<u32>(28427u, u_input.c), -512f))))), true)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(441f, 1194f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(300f, -366f) * 1217f), -1152f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-405f + -446f) - _wgslsmith_f_op_f32(abs(162f))), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(vec2<u32>(u_input.c, u_input.c), -1325f))).x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(u_input.e ^ (u_input.a.wyz | abs(vec3<i32>(0i, u_input.a.x, 1i))), u_input.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-555f, var_1.x, 924f, var_1.x) - vec4<f32>(1000f, 144f, -584f, 865f)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -650f, var_1.x, var_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1973f)) - _wgslsmith_f_op_f32(-func_2().a.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, -2033f, var_1.x), vec4<f32>(var_1.x, var_1.x, -250f, 1000f), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-905f, -1000f, 632f, var_1.x)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, -334f, 547f, 1236f))))))));
}

