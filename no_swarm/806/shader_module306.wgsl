struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-502f - -855f))), true, _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(firstTrailingBit(-15561i), ~2147483647i, -2147483647i >> (u_input.a.x % 32u))), vec3<i32>(2147483647i, ~(20118i >> (u_input.a.x % 32u)), _wgslsmith_div_i32(i32(-1i) * -20940i, 2147483647i))), Struct_2(vec2<u32>(u_input.a.x, u_input.a.x ^ u_input.a.x), ~_wgslsmith_mult_i32(1i, 0i) ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(-23456i, 0i, 55834i, 45340i), vec4<i32>(64691i, -57058i, 43801i, 1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-359f, 1000f, 170f) - vec3<f32>(639f, -1601f, -1669f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1515f, 1270f, -865f), vec3<f32>(-1187f, -101f, -1074f))), true))) + vec3<f32>(_wgslsmith_f_op_f32(-140f + _wgslsmith_f_op_f32(min(-1000f, 588f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-145f + -371f), _wgslsmith_f_op_f32(f32(-1f) * -1521f), all(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -2121f))));
    var var_1 = var_0.c.x;
    var var_2 = Struct_1(~vec4<i32>(~(-var_0.c.x), var_0.c.x, var_0.c.x, ~1i));
    var var_3 = Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, var_0.d.a.x), ~vec2<u32>(var_0.d.a.x, 19460u))), _wgslsmith_add_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, ~u_input.a.x))), -2147483647i);
    var var_4 = 821i ^ _wgslsmith_clamp_i32(-var_0.d.b, -_wgslsmith_dot_vec3_i32(~var_2.a.yzy, ~var_2.a.xxz), _wgslsmith_div_i32(var_3.b, 1i) | -22044i);
    return _wgslsmith_f_op_f32(683f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.e.x)), _wgslsmith_f_op_f32(var_0.a - var_0.a)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = arg_0.x;
    let var_1 = min(-(~abs(vec3<i32>(arg_0.x, -21621i, arg_2.a.x))), vec3<i32>(_wgslsmith_div_i32(-37341i, var_0), abs(-961i), firstLeadingBit(21639i)));
    var var_2 = vec3<i32>(~(-40765i), firstLeadingBit(var_1.x << (~57787u % 32u)), -(~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.x, arg_2.a.x, arg_0.x), vec3<i32>(var_0, var_0, arg_0.x)))));
    let var_3 = vec3<i32>(-2147483647i, -39730i, ~_wgslsmith_add_i32(arg_2.a.x, -(9397i >> (u_input.a.x % 32u))));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -697f);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3())))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = -359f;
    var_0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(460f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-963f)) * _wgslsmith_f_op_f32(func_2(vec3<i32>(36138i, arg_0, -24942i), vec2<bool>(true, false), Struct_1(vec4<i32>(arg_0, arg_0, 1i, -1i)))))))));
    var var_1 = Struct_2(u_input.a.yz, 2147483647i);
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1048f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1538f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(737f - 1251f) + _wgslsmith_f_op_f32(f32(-1f) * -1592f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -754f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -914f)))), true));
    var var_2 = vec2<bool>(true, true);
    return Struct_1(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, arg_0), vec2<i32>(-5561i, var_1.b)), 0i, _wgslsmith_sub_i32(arg_0, 2147483647i), min(-2147483647i, 2147483647i)), vec4<i32>(select(-1i, 1i, var_2.x), 64305i, _wgslsmith_mod_i32(-2147483647i, -2147483647i), var_1.b), ~select(vec4<i32>(arg_0, 0i, 0i, 74059i), vec4<i32>(arg_0, 1i, arg_0, -1i), true))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = vec2<i32>(firstTrailingBit(7437i), arg_2.a.x);
    let var_1 = Struct_2(arg_3, arg_2.a.x);
    let var_2 = !(!select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), any(vec2<bool>(false, false))), false));
    let var_3 = true;
    var_0 = firstTrailingBit(vec2<i32>(277i, ~(i32(-1i) * -var_1.b)));
    return Struct_2(min(~vec2<u32>(var_1.a.x, select(33657u, var_1.a.x, var_3)), vec2<u32>(~var_1.a.x, min(_wgslsmith_mult_u32(arg_3.x, u_input.a.x), ~var_1.a.x))), countOneBits(~(-var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-105f, -1017f, 649f, 367f) * vec4<f32>(272f, 557f, 257f, -489f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-580f, -543f, 1004f, 574f)))))), -669f, func_1(-55849i), firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, countOneBits(54667u)), ~13780u)));
    var_0 = Struct_2(vec2<u32>(1u, _wgslsmith_add_u32(var_0.a.x, ~firstLeadingBit(var_0.a.x))), firstLeadingBit(-_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 1i, 34377i), _wgslsmith_mult_vec3_i32(vec3<i32>(-9238i, -2147483647i, 1i), vec3<i32>(0i, var_0.b, 0i)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1119f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1522f, -1642f) - -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -389f))) + _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1698f + 441f)))), false)));
    let var_2 = -2984f;
    let var_3 = _wgslsmith_add_u32(~max(~u_input.a.x, ~(~4294967295u)), ~u_input.a.x << (abs(var_0.a.x << (1u % 32u)) % 32u));
    var_0 = Struct_2(abs(firstTrailingBit(~u_input.a.wx)), var_0.b);
    var var_4 = func_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-340f, 656f, var_2, var_2) * vec4<f32>(var_2, var_2, var_2, -1000f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, 1000f, 1743f, var_2))) + vec4<f32>(var_2, -252f, 1282f, -544f))))), -313f, func_1(-firstLeadingBit(var_0.b)), _wgslsmith_clamp_vec2_u32(~_wgslsmith_sub_vec2_u32(var_0.a, max(vec2<u32>(var_3, var_3), vec2<u32>(var_0.a.x, u_input.a.x))), _wgslsmith_clamp_vec2_u32(vec2<u32>(select(var_0.a.x, 16695u, false), _wgslsmith_add_u32(var_0.a.x, 11727u)), ~(~vec2<u32>(var_3, var_3)), vec2<u32>(52400u, _wgslsmith_clamp_u32(1u, 13054u, u_input.a.x))), var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}

