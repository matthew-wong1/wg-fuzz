struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: vec2<i32>) -> bool {
    var var_0 = ~vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.d.xz, vec2<u32>(u_input.d.x, 1u)), u_input.d.x);
    let var_1 = select(vec2<bool>(arg_0, all(vec4<bool>(arg_0, true, any(arg_1.wx), arg_1.x))), select(vec2<bool>(all(!arg_1), !(!arg_2.x)), vec2<bool>(true, true), true | any(arg_1)), arg_1.wx);
    var_0 = max(max(~_wgslsmith_sub_vec2_u32(select(u_input.d.xy, vec2<u32>(u_input.d.x, 4294967295u), false), vec2<u32>(var_0.x, var_0.x)), u_input.d.zx), vec2<u32>(u_input.d.x | u_input.d.x, firstTrailingBit(~(~var_0.x))));
    let var_2 = vec3<u32>(u_input.d.x, ~(~(_wgslsmith_clamp_u32(u_input.d.x, 0u, u_input.d.x) >> (u_input.d.x % 32u))), 30295u);
    var_0 = min(u_input.d.xy, vec2<u32>(max(u_input.d.x, u_input.d.x), 0u << (_wgslsmith_mult_u32(13693u, 0u) % 32u)) ^ firstTrailingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.x, 0u), select(var_2.yy, vec2<u32>(1u, var_2.x), arg_1.xw))));
    return all(select(arg_1.wzy, vec3<bool>(!arg_0, !(!arg_0), arg_0), true));
}

fn func_4(arg_0: vec2<bool>) -> f32 {
    let var_0 = Struct_2(all(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), Struct_1(_wgslsmith_clamp_i32(1i, u_input.c.x >> (~0u % 32u), u_input.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-280f, -119f, -520f)))), vec3<f32>(_wgslsmith_f_op_f32(-729f + 1026f), _wgslsmith_f_op_f32(f32(-1f) * -1444f), -468f), arg_0.x))), Struct_1(abs(~_wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), vec3<f32>(-632f, _wgslsmith_f_op_f32(f32(-1f) * -953f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1010f)))))), select(arg_0, select(select(arg_0, select(vec2<bool>(false, arg_0.x), vec2<bool>(true, arg_0.x), false), !vec2<bool>(arg_0.x, false)), select(select(vec2<bool>(arg_0.x, arg_0.x), arg_0, arg_0.x), select(arg_0, arg_0, arg_0), true), select(any(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), any(vec3<bool>(true, false, true)), arg_0.x)), (reverseBits(u_input.a.x) & (-20165i | u_input.b.x)) < firstLeadingBit(29705i)), Struct_1(73279i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-496f, 697f, -976f)))), false & !arg_0.x))));
    var var_1 = ~(~(_wgslsmith_mod_u32(66267u, ~96106u) << (reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, 0u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x))) % 32u)));
    let var_2 = ~u_input.d.x;
    var_1 = u_input.d.x;
    var_1 = var_2;
    return var_0.b.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<bool>(u_input.d.x <= (u_input.d.x ^ u_input.d.x), func_3(true, select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), vec2<bool>(true, true), vec2<i32>(arg_1, u_input.a.x))))));
    var var_1 = max(reverseBits(firstLeadingBit(select(vec4<u32>(u_input.d.x, u_input.d.x, 1u, 46551u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<bool>(false, false, true, true)) ^ ~vec4<u32>(u_input.d.x, 76012u, 4294967295u, u_input.d.x))), vec4<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(77276u, 59624u, 4294967295u, u_input.d.x), vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.d.x)), vec4<u32>(7443u, u_input.d.x, u_input.d.x, u_input.d.x)), min(vec4<u32>(1284u, 1u, 0u, u_input.d.x), min(vec4<u32>(4294967295u, u_input.d.x, 0u, 4294967295u), vec4<u32>(28045u, u_input.d.x, 40042u, u_input.d.x)))), u_input.d.x, ~u_input.d.x));
    return Struct_1(~min(abs(u_input.b.x), -1i), vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + 286f) + _wgslsmith_f_op_f32(667f + arg_0.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(-var_0)));
}

fn func_1() -> vec4<i32> {
    let var_0 = func_2(Struct_1(u_input.b.x & 11477i, vec3<f32>(-274f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1002f - -1038f) * -2061f), 1f)), ~(~(-20288i)) ^ _wgslsmith_add_i32(u_input.a.x, u_input.a.x));
    let var_1 = Struct_3(Struct_2(false, var_0, Struct_1(-33746i ^ ~var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 1069f, var_0.b.x) * var_0.b) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(180f, var_0.b.x, -593f))))), vec2<bool>(select(true, true, true), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), func_2(Struct_1(0i << (u_input.d.x % 32u), _wgslsmith_f_op_vec3_f32(var_0.b * var_0.b)), -2147483647i)));
    var var_2 = reverseBits(_wgslsmith_sub_u32(firstTrailingBit(u_input.d.x ^ 1u), _wgslsmith_div_u32(u_input.d.x, u_input.d.x)));
    var_2 = 4671u;
    let var_3 = ~(~(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(61612u, 4294967295u, 0u), u_input.d), abs(13806u)) >> ((~vec2<u32>(39999u, 0u) | (vec2<u32>(49903u, u_input.d.x) & vec2<u32>(u_input.d.x, u_input.d.x))) % vec2<u32>(32u))));
    return u_input.c;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: u32) -> bool {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_mod_u32(select(~firstLeadingBit(u_input.d.x), reverseBits(_wgslsmith_mult_u32(~4294967295u, 33382u)), false), 9603u);
    var_1 = reverseBits(_wgslsmith_div_u32(~36862u, 53183u));
    let var_2 = Struct_3(Struct_2(false, Struct_1(u_input.c.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.x, var_0.x, -474f), vec3<f32>(var_0.x, var_0.x, var_0.x)))))), func_2(func_2(func_2(Struct_1(u_input.c.x, vec3<f32>(-816f, 130f, var_0.x)), u_input.b.x), _wgslsmith_sub_i32(arg_0.x, arg_0.x)), u_input.b.x), vec2<bool>(any(vec3<bool>(arg_1.x, false, true)), arg_1.x), Struct_1(-func_1().x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, arg_2.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-232f, arg_2.x, -1977f))))));
    let var_3 = Struct_3(var_2.a);
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_5(func_1(), vec2<bool>(true, true), _wgslsmith_div_vec2_f32(vec2<f32>(809f, -1126f), vec2<f32>(625f, 211f)), _wgslsmith_mult_u32(0u, 0u)) & false);
    let var_1 = Struct_3(Struct_2(true, Struct_1(-_wgslsmith_mod_i32(-54832i, u_input.c.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, -812f, -1927f))))), func_2(Struct_1(1556i, _wgslsmith_div_vec3_f32(vec3<f32>(256f, -875f, -363f), vec3<f32>(-1399f, -106f, -1081f))), u_input.c.x), select(vec2<bool>(true, true), vec2<bool>(func_5(u_input.c, vec2<bool>(true, false), vec2<f32>(500f, -1000f), u_input.d.x), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))), func_2(func_2(Struct_1(1i, vec3<f32>(1592f, -832f, -976f)), select(13204i, u_input.a.x, false)), func_2(func_2(Struct_1(u_input.c.x, vec3<f32>(-588f, 922f, 293f)), -2147483647i), -u_input.b.x).a)));
    var var_2 = ~vec4<u32>(_wgslsmith_sub_u32(~1u, u_input.d.x), _wgslsmith_sub_u32(69447u, ~u_input.d.x) | u_input.d.x, max(u_input.d.x, 52674u), 1u >> (u_input.d.x % 32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b.b.x, 210f, -740f, -526f) * vec4<f32>(111f, 2052f, 114f, var_1.a.c.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-324f, -1661f, var_1.a.b.b.x, 512f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1097f), _wgslsmith_f_op_f32(var_1.a.c.b.x + -1000f), _wgslsmith_div_f32(var_1.a.c.b.x, var_1.a.e.b.x), 1f))));
    var var_4 = var_1;
    var var_5 = func_2(func_2(var_4.a.c, u_input.a.x), -(~1i));
    let var_6 = var_4.a.e.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-var_5.a));
}

