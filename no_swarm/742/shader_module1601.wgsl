struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: i32;

var<private> global2: u32 = 22281u;

var<private> global3: array<Struct_2, 28>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(~5087u, min(~u_input.e.wwz, _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.e.x, u_input.d, 4294967295u), u_input.e.wwz)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-416f, -838f, -1508f) * vec3<f32>(446f, -796f, -1000f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2534f, 1368f, 2033f), vec3<f32>(687f, 861f, -316f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1291f, 971f, -1674f)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1290f, 1091f, 1178f))))))), _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(select(-vec4<i32>(11200i, 2147483647i, -44629i, -2147483647i), ~vec4<i32>(u_input.c.x, u_input.a, u_input.a, u_input.a), vec4<bool>(true, global0.x, global0.x, global0.x)), vec4<i32>(-39881i, -2147483647i, -6541i, ~u_input.c.x))));
    var var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1156f, var_0.d.x, 1417f, var_0.d.x) * vec4<f32>(var_0.c.x, -1023f, var_0.d.x, var_0.d.x)), vec4<f32>(var_0.c.x, -107f, -2512f, var_0.c.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.x, var_0.d.x, var_0.d.x, var_0.d.x), vec4<f32>(-2059f, 1405f, var_0.d.x, var_0.d.x))), vec4<f32>(1475f, var_0.d.x, var_0.d.x, 2077f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-892f, 839f, var_0.c.x, -803f)))));
    var var_3 = vec4<i32>(_wgslsmith_add_i32(-max(28646i, u_input.c.x), min(-46797i, ~(var_0.e & u_input.a))), -_wgslsmith_add_i32(~var_0.e, select(10088i, -47311i, global0.x | global0.x)), firstLeadingBit(-(u_input.c.x ^ 3946i) ^ u_input.c.x), u_input.c.x);
    let var_4 = ~var_0.b.x;
    return select(vec4<bool>(false, true, (20100u < u_input.e.x) | global0.x, 2147483647i <= ~_wgslsmith_div_i32(var_3.x, -31156i)), vec4<bool>(!global0.x, false, global0.x, _wgslsmith_mod_i32(u_input.a, ~2452i) == -12070i), !(!(!(global0.x & global0.x))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = all(func_3());
    var var_1 = firstLeadingBit(arg_1.x << (~arg_2.a % 32u)) | -27219i;
    var var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(min(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(-31114i, arg_2.e)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 11740i), vec2<i32>(-10241i, 1i))), reverseBits(firstLeadingBit(u_input.c))), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(arg_1, arg_1), select(vec2<i32>(u_input.a, arg_2.e), arg_1, false) & select(vec2<i32>(arg_2.e, -11945i), u_input.c, true), _wgslsmith_clamp_vec2_i32(arg_1 >> (vec2<u32>(arg_0.x, u_input.b.x) % vec2<u32>(32u)), arg_1, u_input.c))), _wgslsmith_mult_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, arg_2.e), u_input.c)) | _wgslsmith_sub_vec2_i32(arg_1, u_input.c >> (vec2<u32>(arg_2.b.x, arg_0.x) % vec2<u32>(32u))), vec2<i32>(2147483647i & arg_1.x, _wgslsmith_mult_i32(min(u_input.a, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, arg_1.x, -2147483647i), vec4<i32>(arg_2.e, arg_1.x, arg_2.e, 36754i))))));
    let var_3 = u_input.c;
    var var_4 = arg_2;
    return global0.x;
}

fn func_1() -> vec3<f32> {
    let var_0 = 1u;
    global3 = array<Struct_2, 28>();
    var var_1 = -_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c, _wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, 1i), u_input.c, min(u_input.c, vec2<i32>(-2147483647i, u_input.a)))), _wgslsmith_mod_vec2_i32(u_input.c, firstTrailingBit(~vec2<i32>(-2147483647i, u_input.a))));
    let var_2 = !select(select(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), select(select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, false, true, global0.x), vec4<bool>(global0.x, false, true, global0.x)), !vec4<bool>(true, true, global0.x, global0.x), func_2(vec4<u32>(u_input.b.x, u_input.e.x, u_input.b.x, var_0), vec2<i32>(16870i, -1i), Struct_1(50698u, vec3<u32>(9354u, u_input.e.x, 4294967295u), vec3<f32>(1067f, 1269f, 1071f), vec3<f32>(951f, -714f, -2452f), u_input.a), -237f)), true), vec4<bool>(global0.x, !global0.x | !global0.x, !global0.x, any(global0.xz) || false), false);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-813f * -1000f), 413f);
    return vec3<f32>(937f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-583f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_3, -974f), -1777f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(true, global0.x, true);
    let var_0 = 45444u != _wgslsmith_mod_u32(u_input.e.x ^ 1u, ~(~(~u_input.d)));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(798f, -860f, 1059f), vec3<f32>(-592f, -1790f, 1426f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1833f, 1373f, 728f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(869f, -188f, -409f)) * vec3<f32>(-460f, -117f, 548f)), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(184f, 463f, 727f)))), _wgslsmith_div_vec3_f32(vec3<f32>(-941f, -204f, 199f), vec3<f32>(-716f, 271f, -129f)))))));
    var var_2 = u_input.a | u_input.a;
    global1 = u_input.c.x;
    var_2 = ~u_input.c.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 581f, var_1.x, var_1.x), vec4<f32>(-899f, 342f, 1262f, -1986f), vec4<bool>(true, global0.x, true, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1186f, 805f, var_1.x))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-431f, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, var_1.x, -147f)))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1065f, 1438f, var_1.x, var_1.x), vec4<f32>(var_1.x, 1736f, 1219f, var_1.x))))))))));
    global1 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, u_input.c.x, _wgslsmith_div_u32(18580u << (firstLeadingBit(u_input.d) % 32u), ~u_input.e.x) << (abs(u_input.b.x) % 32u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_3.x)))));
}

