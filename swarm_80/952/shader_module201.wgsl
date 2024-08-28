struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_3(-_wgslsmith_sub_i32(u_input.a, ~_wgslsmith_div_i32(u_input.a, u_input.a)), ~(-_wgslsmith_add_i32(abs(27574i), 1i)));
    var var_1 = Struct_4(0i, u_input.b.x, -1000f);
    let var_2 = var_0;
    let var_3 = Struct_2(!(-834f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - var_1.c))), -986f, Struct_1(~u_input.b.zy, select(vec3<i32>(12919i, _wgslsmith_dot_vec4_i32(vec4<i32>(-9684i, u_input.a, u_input.a, var_0.a), vec4<i32>(var_0.a, var_0.b, var_1.a, -2147483647i)), ~(-2147483647i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 11058i, 20235i), vec3<i32>(var_1.a, -1i, -34384i)), false), select(vec3<bool>(false, true, any(vec3<bool>(true, true, false))), vec3<bool>(true, true, false), var_1.c >= var_1.c), -11157i, true));
    let var_4 = ~(~(~var_3.c.a));
    return var_3.c.c;
}

fn func_2() -> bool {
    var var_0 = Struct_3(28754i, ~(-4375i));
    var_0 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.a, u_input.a, 0i), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-11422i, 21734i, 3623i), vec3<i32>(1i, -3123i, u_input.a))), i32(-1i) * -29103i), -53138i);
    var var_1 = _wgslsmith_f_op_f32(-524f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1260f, _wgslsmith_div_f32(741f, 127f))))));
    var_0 = Struct_3(0i >> (u_input.b.x % 32u), 0i);
    var var_2 = !(!vec4<bool>(any(func_3()), 19426i < _wgslsmith_mod_i32(-1i, u_input.a), true, all(vec3<bool>(true, true, true))));
    return any(var_2.wz);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = !vec2<bool>(func_2(), 25293i <= (firstLeadingBit(u_input.a) | 0i));
    var var_1 = countOneBits(firstLeadingBit(firstLeadingBit(_wgslsmith_add_i32(u_input.a, 38114i))) & (i32(-1i) * -u_input.a));
    var var_2 = (vec3<i32>(1i, -27737i, firstTrailingBit(u_input.a)) | -vec3<i32>(~2147483647i, -1i, firstTrailingBit(u_input.a))) | _wgslsmith_mult_vec3_i32(~(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 11900i, -67020i), vec3<i32>(u_input.a, u_input.a, u_input.a)) << (vec3<u32>(34541u, 5966u, u_input.b.x) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(38959i, u_input.a), _wgslsmith_sub_i32(u_input.a | -6983i, 1i), u_input.a));
    var_1 = (i32(-1i) * -firstLeadingBit(_wgslsmith_sub_i32(var_2.x, 0i))) << (arg_2.x % 32u);
    let var_3 = Struct_3(u_input.a, -2147483647i);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-248f, 1701f, -1312f), vec3<f32>(-1943f, -363f, 977f), true))))), true, ~vec2<u32>(~(~33915u), u_input.b.x));
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 1600f, 209f))))), vec3<f32>(_wgslsmith_f_op_f32(max(-128f, -405f)), _wgslsmith_div_f32(496f, -922f), 335f)))), any(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), !(-1i > var_0.b))), reverseBits(~(~u_input.b.xz)));
    var var_1 = func_2();
    var_1 = true;
    var var_2 = ~(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -u_input.a), ~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a))) | max(-firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, var_0.a), vec2<i32>(-2147483647i, -29358i)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, 5063i), vec2<i32>(-2371i, u_input.a))));
    let var_3 = !select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, select(true, false, false), false, false), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), true)), vec4<bool>(true, true, u_input.b.x > _wgslsmith_mod_u32(u_input.b.x, 0u), true), vec4<bool>(true, true, true, true));
    var_0 = Struct_3(_wgslsmith_clamp_i32(func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(699f, 1362f, -1604f)))), any(var_3.xzy), vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 85103u), ~1u)).b, -22772i, -24431i), _wgslsmith_sub_i32(firstLeadingBit(-2147483647i), min(-abs(0i), -(var_2.x >> (0u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(1i, var_0.a), var_0.a), _wgslsmith_div_vec2_i32(-(~vec2<i32>(var_2.x, var_0.a)), select(abs(vec2<i32>(11477i, 8084i)), vec2<i32>(u_input.a, 13621i), true))), 0u, vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -12733i, -2147483647i), vec3<i32>(var_2.x, var_0.a, var_0.b)), u_input.b.x, ~u_input.b);
}

