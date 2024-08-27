struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<i32>) -> vec4<i32> {
    let var_0 = !select(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), !(u_input.a < 4907i)), vec3<bool>(all(vec3<bool>(false, true, true)), true, any(vec4<bool>(false, false, true, false))), vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), any(vec3<bool>(true, true, true)), all(vec4<bool>(false, false, false, true))));
    var var_1 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1446f), 120f, 867f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(875f, -1000f, 341f) - vec3<f32>(-688f, 1300f, 982f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 567f, -1697f) + vec3<f32>(-2667f, 1000f, 505f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-466f, 932f, -1325f), vec3<f32>(1373f, -458f, 1764f), var_0))))));
    var_1 = Struct_4(var_1.a);
    var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, 237f, 1175f), var_1.a), var_1.a), var_1.a))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -824f)));
    return _wgslsmith_div_vec4_i32(-select(arg_0, ~vec4<i32>(u_input.a, -3198i, u_input.a, -3388i) >> (~vec4<u32>(1u, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u)), true), min(abs(vec4<i32>(21686i, u_input.a, arg_0.x, arg_0.x)) >> (firstLeadingBit(abs(vec4<u32>(4294967295u, u_input.b, 0u, 80529u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32((vec4<i32>(-27884i, 927i, u_input.c.x, 1i) << (vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) % vec4<u32>(32u))) << (vec4<u32>(0u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<i32>(~u_input.c.x, -arg_0.x, u_input.c.x, u_input.a))));
}

fn func_3(arg_0: vec3<i32>) -> Struct_4 {
    let var_0 = arg_0.x;
    let var_1 = vec3<u32>(~1u & (53357u ^ select(u_input.b, 39453u, select(true, false, true))), _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), u_input.b, u_input.b << (4294967295u % 32u), u_input.b), _wgslsmith_div_vec4_u32(~vec4<u32>(13168u, 0u, 71338u, 1u), abs(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)) >> (~vec4<u32>(u_input.b, 2719u, u_input.b, 1u) % vec4<u32>(32u)))), u_input.b);
    var var_2 = Struct_3(Struct_2(i32(-1i) * -_wgslsmith_mult_i32(-1i, -1i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-698f * -1431f)))), vec3<bool>((false & any(vec2<bool>(false, false))) || true, false, _wgslsmith_mod_u32(var_1.x, ~var_1.x) >= firstTrailingBit(~u_input.b)), vec4<bool>(true, !any(vec3<bool>(true, true, true)), true & all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), true), Struct_1(986f), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(var_0), var_0, _wgslsmith_div_i32(~2147483647i, 0i ^ arg_0.x), _wgslsmith_clamp_i32(-23871i, i32(-1i) * -2147483647i, 0i)), vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, var_0, var_0, u_input.a)));
    var_2 = Struct_3(var_2.a, select(var_2.b, !vec3<bool>(all(var_2.c), var_2.c.x, var_2.b.x), any(var_2.c)), vec4<bool>(true, var_2.c.x, !(var_2.b.x | (var_1.x < u_input.b)), true), Struct_1(var_2.d.a), _wgslsmith_add_i32(var_2.a.a, -_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.x, 70602i, 0i, -3808i), vec4<i32>(var_2.e, var_0, -2147483647i, 1i) >> (vec4<u32>(var_1.x, var_1.x, u_input.b, var_1.x) % vec4<u32>(32u)))));
    let var_3 = _wgslsmith_sub_vec2_u32(var_1.zy, var_1.xy);
    return Struct_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1010f, _wgslsmith_f_op_f32(max(var_2.a.b.a, -807f)), -418f))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(~(-1i), Struct_1(arg_2.x)), vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-553f, -1005f)) * _wgslsmith_f_op_f32(sign(arg_0.a.x))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1525f))), false), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, false), u_input.b == 90079u), !(-55324i >= u_input.c.x)), vec4<bool>(all(vec3<bool>(true, true, true)), false, !(4294967295u < arg_3), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false))))), Struct_1(arg_2.x), _wgslsmith_clamp_i32(firstLeadingBit(~17217i), u_input.c.x, ~u_input.c.x));
    var var_1 = arg_3;
    var_1 = u_input.b;
    let var_2 = Struct_2(~_wgslsmith_add_i32(-1i, min(firstLeadingBit(-16930i), ~u_input.a)), arg_1);
    let var_3 = arg_0;
    return var_2.b;
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = arg_0.a.b;
    let var_1 = arg_0.c;
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1073f, arg_0.d.a, -262f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.a, var_0.a, 977f))))) + vec3<f32>(var_0.a, _wgslsmith_f_op_f32(min(arg_0.d.a, arg_0.d.a)), _wgslsmith_f_op_f32(-arg_0.a.b.a))));
    let var_3 = arg_0.c.yzx;
    let var_4 = func_4(func_3(vec3<i32>(-46112i | (30741i & u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a, u_input.c.x, arg_0.a.a, -1806i), func_2(vec4<i32>(arg_0.a.a, u_input.a, u_input.a, arg_0.a.a))), countOneBits(_wgslsmith_mod_i32(u_input.a, u_input.c.x)))), arg_0.a.b, vec3<f32>(arg_0.d.a, -219f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.a + -1474f))))), u_input.b);
    return var_1.yz;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<u32>) -> StorageBuffer {
    var var_0 = any(!select(!(!vec4<bool>(false, arg_0.x, true, arg_0.x)), vec4<bool>(true, true, !arg_0.x, false), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(false, false, true, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true), true), select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, false, arg_0.x)))));
    var var_1 = select(firstLeadingBit(~(u_input.c.x & u_input.a)), 28899i, true);
    var var_2 = Struct_3(Struct_2(_wgslsmith_sub_i32(2089i, _wgslsmith_add_i32(-25487i >> (u_input.b % 32u), reverseBits(u_input.a))), func_4(func_3(vec3<i32>(0i, 14194i, 1i)), func_4(func_3(vec3<i32>(1i, u_input.c.x, 15479i)), Struct_1(900f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(543f, 235f, 863f), vec3<f32>(778f, -1289f, 389f), vec3<bool>(false, arg_0.x, arg_0.x))), 1u), vec3<f32>(_wgslsmith_f_op_f32(trunc(-671f)), -1261f, -1316f), 24032u)), vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(79244u, u_input.b), firstTrailingBit(vec2<u32>(1u, u_input.b))) < _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b, 1u, 97540u), vec4<u32>(0u, 20418u, 0u, 0u)), vec4<u32>(0u, u_input.b, 10184u, 1u)), !select(true, any(vec3<bool>(arg_0.x, arg_0.x, false)), true), all(select(select(vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, false, false, true), true), select(vec4<bool>(false, false, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, false, false)), true))), select(vec4<bool>(arg_0.x, false, true, false), vec4<bool>(true, all(vec4<bool>(arg_0.x, true, arg_0.x, true)), true, false), all(vec3<bool>(any(vec4<bool>(arg_0.x, false, arg_0.x, true)), arg_0.x, true))), func_4(func_3(_wgslsmith_div_vec3_i32(vec3<i32>(-25165i, 2147483647i, 0i) ^ vec3<i32>(u_input.c.x, u_input.a, u_input.a), vec3<i32>(-4765i, u_input.a, u_input.a))), func_4(Struct_4(vec3<f32>(1634f, -819f, -406f)), func_4(Struct_4(vec3<f32>(608f, -635f, 804f)), func_4(Struct_4(vec3<f32>(-2078f, 513f, 557f)), Struct_1(205f), vec3<f32>(515f, 2012f, -1000f), 0u), vec3<f32>(896f, -525f, -309f), u_input.b), _wgslsmith_div_vec3_f32(vec3<f32>(1106f, 157f, 814f), vec3<f32>(1f, 1f, 1f)), _wgslsmith_div_u32(82392u, 4294967295u) & arg_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1189f, -244f, -787f)))) + vec3<f32>(-690f, 1339f, -1098f)), arg_1.x | u_input.b), firstTrailingBit(u_input.c.x) << ((55525u | u_input.b) % 32u));
    var_2 = Struct_3(Struct_2(-11421i, Struct_1(-989f)), var_2.b, select(!select(var_2.c, var_2.c, !vec4<bool>(arg_0.x, var_2.c.x, true, var_2.b.x)), vec4<bool>(arg_0.x, !(!arg_0.x), any(vec2<bool>(true, arg_0.x)), var_2.b.x), select(vec4<bool>(!arg_0.x, false, true, true), select(select(var_2.c, vec4<bool>(true, false, false, var_2.b.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), select(vec4<bool>(false, arg_0.x, var_2.b.x, true), var_2.c, false), true || arg_0.x), !vec4<bool>(false, true, var_2.b.x, var_2.c.x))), Struct_1(var_2.d.a), -(~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-7161i, var_2.a.a, var_2.e), i32(-1i) * -5328i)));
    let var_3 = u_input.c;
    return StorageBuffer(i32(-1i) * -(var_3.x ^ 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = u_input.c.x;
    var var_2 = _wgslsmith_f_op_f32(-1518f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(190f * _wgslsmith_f_op_f32(155f + _wgslsmith_f_op_f32(step(-1000f, 570f))))));
    var_1 = u_input.a;
    let var_3 = !(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    let x = u_input.a;
    s_output = func_5(vec2<bool>(!any(vec3<bool>(var_3.x, var_3.x, var_3.x)), all(vec4<bool>(var_3.x, var_3.x, var_3.x, true)) && any(func_1(Struct_3(Struct_2(-10822i, Struct_1(-288f)), vec3<bool>(var_3.x, true, false), vec4<bool>(var_3.x, var_3.x, true, var_3.x), Struct_1(-1000f), -2147483647i)))), min(_wgslsmith_mod_vec2_u32(~select(vec2<u32>(var_0, u_input.b), vec2<u32>(1u, var_0), var_3), ~vec2<u32>(0u, var_0)), max(abs(vec2<u32>(51189u, 6821u)), vec2<u32>(~u_input.b, ~49739u))));
}

