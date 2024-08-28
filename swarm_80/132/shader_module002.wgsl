struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-324f, -339f));
    let var_1 = _wgslsmith_add_i32(i32(-1i) * -4658i, -57162i);
    let var_2 = arg_2;
    var var_3 = arg_2;
    var var_4 = var_2;
    return ~55123i;
}

fn func_2() -> vec2<i32> {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(select(1i, -35094i, false), -6131i >> (u_input.a % 32u)), _wgslsmith_sub_i32(~func_3(6053u, -1165f, Struct_1(vec2<i32>(28470i, -52804i), u_input.a), Struct_2(false)), 11053i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_mod_i32(-1i, -20672i), _wgslsmith_add_i32(2147483647i, -1i), 1i), select(vec3<i32>(1i, 1i, 1i), vec3<i32>(abs(-16070i), -2147483647i, 1i), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), ~(8350i >> (1u % 32u)), -2147483647i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1145f, 747f, 346f, -317f)))))));
    var var_2 = ~(~vec3<u32>(_wgslsmith_clamp_u32(2517u, 0u, 4294967295u) | reverseBits(31798u), 4294967295u, 38999u));
    let var_3 = countOneBits(var_0.x);
    var var_4 = Struct_2(~max(_wgslsmith_mod_i32(0i, var_0.x), 1i) > var_3);
    return vec2<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(~var_0.x, 0i), vec2<i32>(_wgslsmith_div_i32(var_3, -2147483647i), ~var_0.x)), -1i, true), _wgslsmith_dot_vec2_i32(~vec2<i32>(15599i, countOneBits(var_3)), vec2<i32>(var_0.x, ~_wgslsmith_dot_vec2_i32(var_0.yw, vec2<i32>(11238i, 2147483647i)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = arg_1;
    return arg_0;
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = 1u;
    var_0 = ~reverseBits(~16767u);
    var_0 = firstLeadingBit(0u) << (~u_input.a % 32u);
    let var_1 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(sign(-643f)));
    let var_2 = func_4(Struct_1(-(func_2() | _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(4883i, 2147483647i), vec2<i32>(-1i, -2147483647i))), u_input.a), Struct_2(true), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-183f, -802f))));
    return _wgslsmith_mod_i32(i32(-1i) * 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.x, var_2.a.x, 0i) | firstTrailingBit(vec3<i32>(var_2.a.x, var_2.a.x, -1i)), select(vec3<i32>(var_2.a.x, var_2.a.x, var_2.a.x), ~vec3<i32>(31953i, -1i, var_2.a.x), true))) | -_wgslsmith_mult_i32(var_2.a.x & func_3(u_input.a, arg_0, Struct_1(vec2<i32>(-18147i, var_2.a.x), 1u), Struct_2(false)), var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~reverseBits(abs(~vec2<u32>(u_input.a, u_input.a))));
    let var_1 = u_input.a;
    let var_2 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(25766i), ~(-1i), -1i, 1i), _wgslsmith_add_vec4_i32(select(vec4<i32>(58420i, 2147483647i, 2147483647i, 1i), vec4<i32>(1i, -3199i, 2147483647i, 1i), vec4<bool>(false, false, true, false)), vec4<i32>(17968i, 7197i, 0i, -1i))) >= _wgslsmith_add_i32(abs(1i), -(6625i << (var_0.x % 32u))));
    let var_3 = ~vec4<i32>(_wgslsmith_div_i32(~(-45561i), func_1(742f)), _wgslsmith_clamp_i32(1i, 1i, 40524i), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, 3426i, 15383i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)), -2147483647i) | _wgslsmith_mult_vec4_i32(abs(max(_wgslsmith_mod_vec4_i32(vec4<i32>(10618i, 50615i, 1i, 19436i), vec4<i32>(-1i, 2147483647i, 2147483647i, 1i)), -vec4<i32>(0i, -7756i, -25405i, -3430i))), max(vec4<i32>(-28069i, 37612i, -1i, -2147483647i), ~vec4<i32>(1i, -2147483647i, -13373i, -1i)) << (reverseBits(vec4<u32>(2257u, var_1, 0u, 0u)) % vec4<u32>(32u)));
    var_0 = vec2<u32>(1u, var_1);
    let var_4 = var_3.ywz | var_3.wyz;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_1, 1u, firstTrailingBit(var_0.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(var_3.xw, var_4.yz) ^ (var_4.yy ^ var_3.xw), var_4.yx) | ~vec2<i32>(var_3.x, _wgslsmith_mult_i32(var_4.x, 0i)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-2805f, -650f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-889f, 1234f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1262f))));
}

