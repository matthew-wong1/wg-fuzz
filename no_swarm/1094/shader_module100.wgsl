struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_1(vec4<f32>(-1303f, -472f, -1142f, 745f), 82713u, -295f, 0u)), Struct_3(Struct_1(vec4<f32>(-331f, 783f, -142f, 1201f), 39648u, -599f, 0u)), Struct_3(Struct_1(vec4<f32>(1000f, -731f, -370f, 348f), 94804u, -2148f, 60543u)), Struct_3(Struct_1(vec4<f32>(1436f, 549f, -109f, -1807f), 1u, -1000f, 27776u)), Struct_3(Struct_1(vec4<f32>(-136f, -1000f, 1111f, -1179f), 0u, 730f, 0u)), Struct_3(Struct_1(vec4<f32>(381f, 1669f, -455f, -486f), 18637u, 1150f, 1u)), Struct_3(Struct_1(vec4<f32>(511f, -1150f, -794f, 1000f), 4294967295u, -247f, 4294967295u)), Struct_3(Struct_1(vec4<f32>(1369f, 1000f, -152f, 1000f), 93855u, -817f, 33165u)), Struct_3(Struct_1(vec4<f32>(786f, 1000f, -269f, 1331f), 92864u, -568f, 1u)), Struct_3(Struct_1(vec4<f32>(840f, -1221f, -1570f, 796f), 1u, 576f, 15932u)), Struct_3(Struct_1(vec4<f32>(-418f, 1082f, 873f, 1165f), 52202u, -646f, 82176u)), Struct_3(Struct_1(vec4<f32>(-248f, 2128f, 139f, -367f), 36334u, -1257f, 50732u)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = ~(-2147483647i) <= min(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_0.x, u_input.b.x, arg_0.x), _wgslsmith_add_i32(2147483647i, arg_0.x))), _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(27099i, -1i, u_input.e.x), _wgslsmith_clamp_i32(-14358i, arg_0.x, _wgslsmith_div_i32(u_input.c.x, 2147483647i))));
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    var var_1 = ~abs(~1u);
    var var_2 = ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, -(~(-48651i))), firstLeadingBit(-1i), ~arg_0.x);
    return arg_1;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec3<u32>) -> vec2<bool> {
    global0 = array<Struct_3, 12>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(func_1(abs(vec4<i32>(-16103i, u_input.b.x, arg_2.x, arg_2.x)), Struct_1(arg_0.a.a, 4294967295u, 590f, 1u), Struct_3(arg_0.a)).a.x, 353f)) + arg_0.a.c), _wgslsmith_f_op_f32(arg_0.a.c - _wgslsmith_div_f32(-564f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.c)))))));
    var var_1 = arg_0.a;
    var_1 = arg_0.a;
    var_1 = func_1(vec4<i32>(-2147483647i, select(arg_2.x, 0i, !arg_1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, -2147483647i) | vec2<i32>(-19572i, -1i), arg_2), -1i) << (u_input.d % vec4<u32>(32u)), Struct_1(arg_0.a.a, 4294967295u | arg_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(379f, 245f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * var_0) - arg_0.a.c)), 1u ^ arg_3.x), global0[_wgslsmith_index_u32(countOneBits(select(_wgslsmith_add_u32(countOneBits(var_1.b), 4294967295u), _wgslsmith_mult_u32(u_input.a.x, arg_0.a.d), arg_2.x <= (u_input.b.x >> (1u % 32u)))), 12u)]);
    return vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(937f + arg_0.a.c) + _wgslsmith_f_op_f32(var_0 - -447f)), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(1000f + -1098f))), false);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = arg_0.a.a.xxz;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_3.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-874f, arg_0.a.a.x, 2433f, 375f)))), arg_0.a.a)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(1440f)), -1466f, _wgslsmith_f_op_f32(step(-576f, _wgslsmith_f_op_f32(floor(arg_3.a.x)))), _wgslsmith_f_op_f32(846f * arg_3.c)))));
    global0 = array<Struct_3, 12>();
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c, 458f, arg_0.a.c, 1199f) * arg_3.a))))))));
    let var_2 = 1u << (~func_1(firstTrailingBit(vec4<i32>(1i, u_input.e.x, u_input.c.x, 1i)) << (~vec4<u32>(59679u, 1u, arg_1, u_input.a.x) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.a.a * arg_3.a), _wgslsmith_clamp_u32(u_input.a.x, arg_3.d, 0u), -703f, 1u ^ arg_3.b), Struct_3(arg_0.a)).b % 32u);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)), _wgslsmith_f_op_f32(-1353f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -523f)), -532f))), arg_0.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1((vec4<i32>(u_input.c.x, ~(-55285i), u_input.e.x & u_input.c.x, ~0i) << (u_input.d % vec4<u32>(32u))) | firstLeadingBit(-(~vec4<i32>(62149i, u_input.b.x, -28370i, 2147483647i))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2125f, -1000f, 509f, 874f), vec4<f32>(-829f, -362f, -522f, 1234f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1157f, 238f, -330f, 170f)))), vec4<f32>(_wgslsmith_f_op_f32(min(476f, -993f)), _wgslsmith_f_op_f32(sign(225f)), -1677f, -584f), vec4<bool>(false, true, true, true))), ~0u, _wgslsmith_f_op_f32(-490f + 311f), _wgslsmith_div_u32(12310u, u_input.a.x)), global0[_wgslsmith_index_u32(73217u, 12u)]);
    let var_1 = _wgslsmith_div_vec4_i32(countOneBits(firstLeadingBit(-vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x) & -vec4<i32>(u_input.b.x, -45924i, 22258i, u_input.e.x))), ~vec4<i32>(reverseBits(-42321i) >> ((u_input.d.x ^ u_input.a.x) % 32u), -17012i, -7347i, u_input.c.x));
    global0 = array<Struct_3, 12>();
    let var_2 = select(select(select(vec2<bool>(true, true), func_2(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true), vec2<i32>(-43875i, u_input.e.x), vec3<u32>(u_input.a.x, 15867u, var_0.d)), all(vec2<bool>(true, true))), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(false, false)), vec2<bool>(true, true), false);
    let var_3 = func_1(vec4<i32>(min(i32(-1i) * -2147483647i, ~7284i), u_input.e.x, firstLeadingBit(var_1.x), 0i), func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-47909i, -28480i, var_1.x, -2147483647i) | var_1, min(var_1, vec4<i32>(var_1.x, -2147483647i, var_1.x, 0i))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-221f, var_0.c, -1000f, -859f)), _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(u_input.d.x, 12u)], 0u, vec2<bool>(var_2.x, true), Struct_1(var_0.a, u_input.d.x, var_0.c, 23749u)))), _wgslsmith_clamp_u32(44263u, 10374u, var_0.d) ^ func_1(vec4<i32>(1i, var_1.x, var_1.x, var_1.x), Struct_1(vec4<f32>(-680f, -167f, var_0.a.x, var_0.c), var_0.d, -184f, u_input.a.x), Struct_3(Struct_1(vec4<f32>(var_0.a.x, 748f, var_0.c, 680f), var_0.d, 1169f, 32444u))).b, var_0.a.x, 63098u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(abs(var_0.d)), u_input.a.x), 12u)]), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 997f, var_0.a.x, var_0.a.x))), 1u, var_0.a.x, var_0.d)));
    var_0 = func_1(var_1, var_3, global0[_wgslsmith_index_u32(var_0.b, 12u)]);
    let x = u_input.a;
    s_output = StorageBuffer(max(i32(-1i) * -u_input.b.x, -1i), _wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(var_3.a.x)), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(floor(-592f)), _wgslsmith_f_op_f32(-1165f + -209f)), vec4<f32>(_wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, -142f), all(!vec3<bool>(var_2.x, var_2.x, false))))));
}

