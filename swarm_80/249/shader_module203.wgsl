struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> bool {
    let var_0 = false;
    var var_1 = false;
    var_1 = true;
    var_1 = true;
    var var_2 = select(select(!vec3<bool>(false, false, var_0), !select(vec3<bool>(var_0, false, var_0), vec3<bool>(true, arg_1, var_0), !arg_1), var_0 || true), select(!vec3<bool>(true, true, !arg_1), select(vec3<bool>(u_input.a < 1u, any(vec3<bool>(false, var_0, arg_1)), -23551i > arg_0.a.b), vec3<bool>(!var_0, false, all(vec2<bool>(false, false))), vec3<bool>(false, !var_0, all(vec4<bool>(true, true, arg_1, arg_1)))), false), var_0);
    return !all(select(select(select(vec4<bool>(true, var_0, var_0, false), vec4<bool>(var_2.x, false, arg_1, true), vec4<bool>(false, false, false, var_2.x)), vec4<bool>(true, arg_1, arg_1, arg_1), var_0), !vec4<bool>(false, true, false, arg_1), true));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3 * arg_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1084f * arg_3) + _wgslsmith_f_op_f32(exp2(arg_3)))), arg_3) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, 1350f, 2352f) * vec3<f32>(438f, arg_3, 1280f)))))));
    var var_1 = 74105u;
    var var_2 = !(false || (_wgslsmith_mult_u32(u_input.a >> (u_input.a % 32u), 19898u) == 1u));
    var var_3 = true;
    var_3 = func_3(Struct_2(Struct_1(var_0.x, _wgslsmith_sub_i32(-51090i >> (0u % 32u), _wgslsmith_mult_i32(arg_0, -2147483647i)), abs(~vec3<u32>(u_input.a, u_input.a, 4294967295u)), -1000f, reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 34836u, u_input.a), vec3<u32>(u_input.a, 86724u, 4294967295u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -310f, 818f) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(572f, -925f, arg_3), vec3<f32>(106f, -433f, arg_3), vec3<bool>(arg_1, arg_1, arg_1)))))), _wgslsmith_f_op_f32(-var_0.x)), true);
    return vec3<i32>(-reverseBits(abs(-arg_2.x)), arg_0, _wgslsmith_div_i32(0i >> (firstLeadingBit(5444u) % 32u), firstLeadingBit(arg_2.x)));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = firstLeadingBit(-(~firstTrailingBit(1i) & -abs(-44775i)));
    var var_1 = select(vec3<i32>(var_0, var_0, -var_0 & (1i & _wgslsmith_dot_vec4_i32(vec4<i32>(-7281i, var_0, -1i, var_0), vec4<i32>(var_0, var_0, 26527i, 2147483647i)))), select(~vec3<i32>(min(var_0, var_0), 0i, var_0), vec3<i32>(~(~0i), _wgslsmith_add_i32(var_0, -var_0), 1i), arg_0 | !(u_input.a >= 35468u)), any(!(!arg_2.wz)));
    var_1 = max(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-6136i, var_1.x, var_0), func_2(var_1.x, arg_2.x, vec3<i32>(-7697i, var_1.x, var_1.x), -1000f)), -firstTrailingBit(vec3<i32>(5869i, -1i, -2147483647i))), select(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-9243i, var_0, var_1.x), vec3<i32>(var_1.x, -51905i, -50860i)), vec3<i32>(26478i, var_0, -21698i) << (arg_1.xyx % vec3<u32>(32u)), vec3<bool>(arg_0, arg_2.x, true)), vec3<i32>(~var_1.x, -var_0, _wgslsmith_sub_i32(var_1.x, var_1.x)), arg_2.x)) | ((-select(vec3<i32>(0i, var_1.x, var_0), vec3<i32>(var_1.x, -30847i, 1i), arg_2.zyw) >> (~arg_1.zyz % vec3<u32>(32u))) << (~countOneBits(vec3<u32>(1u, 4294967295u, u_input.a)) % vec3<u32>(32u)));
    var var_2 = min(abs(_wgslsmith_mult_u32(1u, (arg_1.x << (4294967295u % 32u)) >> ((66155u << (u_input.a % 32u)) % 32u))), arg_1.x);
    var var_3 = Struct_2(Struct_1(-332f, -2147483647i, arg_1.yxw, -1124f, _wgslsmith_mod_vec3_u32(~abs(arg_1.xwx), arg_1.yzx)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-883f, 540f, 860f))))), vec3<f32>(_wgslsmith_f_op_f32(-1620f * -666f), -531f, _wgslsmith_f_op_f32(f32(-1f) * -865f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-813f, 144f, -942f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(955f, 1257f, 641f), vec3<f32>(-1000f, -778f, 924f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(992f, 2143f, -511f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1243f, -1290f, 1059f))), true & (arg_0 || true)))), _wgslsmith_div_f32(_wgslsmith_div_f32(1190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1083f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(135f)) * _wgslsmith_f_op_f32(-1000f * 1010f)))));
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_0.a, arg_2)), _wgslsmith_div_f32(arg_2, 1000f), true)) - _wgslsmith_f_op_f32(sign(1f))), _wgslsmith_div_f32(797f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2, 1980f, true)), arg_1.c)), arg_1.c) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-183f, -713f, arg_2, arg_0.d) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1163f, -696f, arg_0.a, arg_1.b.x) - vec4<f32>(233f, 877f, arg_0.a, arg_0.d))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(ceil(arg_1.a.d)), _wgslsmith_f_op_f32(arg_2 * arg_0.d))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1099f, arg_1.c, arg_0.a, 1045f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, -157f, arg_1.b.x, arg_0.d) - vec4<f32>(arg_0.d, 612f, -938f, -1000f))))));
    var var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b.xy + _wgslsmith_f_op_vec2_f32(var_0.wy * _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_0.a, arg_0.a)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-arg_0.d)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(ceil(var_0.x))))))));
    var var_4 = -2147483647i;
    return StorageBuffer(vec2<i32>(-1i) * -(vec2<i32>(-1i) * -vec2<i32>(arg_1.a.b, -2147483647i)), vec3<u32>(~_wgslsmith_sub_u32(24768u, arg_0.c.x), u_input.a, arg_1.a.e.x), arg_1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = 2190f;
    let x = u_input.a;
    s_output = func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -972f), -1i, _wgslsmith_sub_vec3_u32(abs(vec3<u32>(31405u, 4294967295u, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, u_input.a)) << (reverseBits(vec3<u32>(41451u, u_input.a, u_input.a)) % vec3<u32>(32u)), 608f, ~vec3<u32>(u_input.a | u_input.a, u_input.a, abs(1871u))), Struct_2(func_1(false, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 8544u, 23922u, u_input.a), vec4<u32>(39810u, 59299u, 18885u, 75628u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), vec4<u32>(82280u, 0u, u_input.a, u_input.a)), vec4<bool>(true, true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(abs(154f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1317f, -833f, true))), _wgslsmith_f_op_f32(f32(-1f) * -1722f)), -501f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-558f * -426f))))));
}

