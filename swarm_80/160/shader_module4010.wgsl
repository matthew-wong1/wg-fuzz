struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec3<f32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    let var_0 = Struct_3(arg_0, vec4<i32>(~_wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(-40111i, 1i)), -29798i & _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.a.xy), _wgslsmith_mod_vec2_i32(u_input.a.yx, arg_2)), reverseBits(-66936i | abs(arg_2.x)), ~0i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 14402u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_3, 0u, arg_0), vec3<u32>(54954u, arg_0, arg_3))) % 32u)), !select(vec3<bool>(arg_1, !arg_1, false), select(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, arg_1, arg_1)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, true, false))), select(any(vec3<bool>(arg_1, arg_1, false)), false, any(vec4<bool>(false, false, arg_1, arg_1)))), _wgslsmith_sub_vec3_u32(countOneBits(~vec3<u32>(1u, 24350u, arg_3) << (~vec3<u32>(arg_0, arg_3, arg_3) % vec3<u32>(32u))), vec3<u32>(~(~arg_0), ~(arg_0 ^ 4294967295u), select(arg_3 ^ 34850u, _wgslsmith_mod_u32(arg_0, 1u), arg_1 && false))), _wgslsmith_div_u32(~_wgslsmith_add_u32(0u, arg_3), _wgslsmith_add_u32(1u, select(arg_3, select(1u, 123954u, true), true))));
    var var_1 = Struct_1(_wgslsmith_mult_vec4_i32(var_0.b, select(_wgslsmith_mult_vec4_i32(min(var_0.b, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), var_0.b), var_0.b, ~u_input.a.x < 0i)), -178f, !select(var_0.c, select(select(vec3<bool>(arg_1, arg_1, var_0.c.x), vec3<bool>(true, var_0.c.x, arg_1), var_0.c), var_0.c, all(var_0.c)), arg_1));
    var_1 = Struct_1(var_0.b, 1739f, !select(vec3<bool>(0i >= arg_2.x, any(vec3<bool>(false, true, false)), true), vec3<bool>(true, !arg_1, any(var_0.c.xx)), var_0.c.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-983f, 1f, _wgslsmith_f_op_f32(ceil(1f)), -1687f) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b))), var_1.b, 110f, var_1.b)) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - 330f))), _wgslsmith_f_op_f32(round(var_1.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b - -1357f))), var_1.b));
    var var_3 = Struct_2(Struct_1(var_0.b, 951f, var_1.c), var_1.a.wwx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_2.x, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(step(-831f, var_1.b))), _wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_div_f32(var_1.b, 145f), false)))));
    return var_0.e;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = -vec3<i32>(_wgslsmith_div_i32(-2147483647i, u_input.a.x), ~(-1i), abs(_wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, arg_0.a.x), u_input.a.x & u_input.a.x)));
    var var_1 = Struct_3(~func_3(~1u, any(select(vec4<bool>(true, false, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, true, arg_0.c.x, false), true)), select(select(vec2<i32>(arg_0.a.x, 1i), u_input.a.yy, arg_0.c.xx), arg_0.a.wy, arg_0.c.yx), ~0u), arg_0.a, arg_0.c, ~vec3<u32>(1u, _wgslsmith_sub_u32(~0u, reverseBits(4294967295u)), 1u), 11477u << (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 36055u, 4294967295u, 23018u), vec4<u32>(9783u, 0u, 22552u, 55951u))) % 32u));
    let var_2 = ~(-var_0.x);
    var_0 = u_input.a;
    let var_3 = var_1.d;
    return abs(~(_wgslsmith_add_u32(firstTrailingBit(var_1.e), _wgslsmith_div_u32(var_1.a, 4294967295u)) << (var_3.x % 32u)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4) -> Struct_1 {
    var var_0 = Struct_3(arg_0.e ^ ~(~arg_0.d.x), ~firstLeadingBit(arg_0.b), vec3<bool>(arg_0.c.x, false, select(arg_1.b, (arg_0.a < 36128u) & any(arg_1.a.wxz), !(!arg_0.c.x))), arg_0.d, _wgslsmith_sub_u32(func_2(Struct_1(-vec4<i32>(arg_0.b.x, u_input.a.x, 26404i, arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), !vec3<bool>(arg_1.a.x, true, arg_0.c.x))), abs(arg_0.e)));
    var_0 = Struct_3(arg_0.d.x, -(~arg_0.b), !vec3<bool>(false, !arg_0.c.x, (var_0.c.x || true) || var_0.c.x), vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_0.d, arg_0.d), abs(4294967295u)), 74232u, abs(_wgslsmith_clamp_u32(arg_0.d.x, ~var_0.e, 24215u))), _wgslsmith_sub_u32(select(~var_0.e & firstLeadingBit(arg_0.d.x), 23963u, arg_0.c.x), 22987u));
    var var_1 = Struct_1(-vec4<i32>(-9587i, reverseBits(13659i), -34145i, -var_0.b.x) | var_0.b, _wgslsmith_div_f32(-1700f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-896f, 769f)) + 1028f)), arg_1.a.yxw);
    var var_2 = arg_0;
    var_2 = Struct_3(var_0.d.x ^ (~(~69850u) << (arg_0.d.x % 32u)), vec4<i32>(1i, u_input.a.x >> (max(_wgslsmith_sub_u32(var_0.a, 4294967295u), ~var_2.e) % 32u), _wgslsmith_sub_i32(var_2.b.x, -(~var_0.b.x)), abs(0i)), arg_1.a.xzy, var_0.d, max(_wgslsmith_dot_vec3_u32(~var_0.d, ~vec3<u32>(4294967295u, 0u, 4294967295u)), ~abs(28662u)) >> (~(arg_0.d.x >> (var_0.a % 32u)) % 32u));
    return Struct_1(~(vec4<i32>(_wgslsmith_clamp_i32(21590i, arg_0.b.x, var_2.b.x), _wgslsmith_clamp_i32(arg_0.b.x, var_0.b.x, -5069i), _wgslsmith_dot_vec4_i32(var_2.b, arg_0.b), min(arg_0.b.x, arg_0.b.x)) & vec4<i32>(~(-32966i), -2147483647i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_1.a.x, var_1.a.x, u_input.a.x)), 2147483647i)), -1877f, vec3<bool>(false, !(!arg_0.c.x), false));
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_4(vec4<bool>(all(!(!vec3<bool>(true, arg_0.a.c.x, true))), arg_0.a.c.x, arg_0.a.c.x, !all(select(vec4<bool>(true, arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x), vec4<bool>(arg_0.a.c.x, true, arg_0.a.c.x, arg_0.a.c.x), true))), func_1(Struct_3(1u, select(arg_0.a.a, arg_0.a.a, all(arg_0.a.c.zy)), vec3<bool>(true || arg_0.a.c.x, true, 1000f >= arg_0.c.x), vec3<u32>(1u, 1u, 1u), ~select(4294967295u, 1u, false)), Struct_4(select(vec4<bool>(true, arg_0.a.c.x, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, true, false), vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x, true), false)), arg_0.a.c.x)).c.x);
    var var_1 = arg_0.a.c;
    var_1 = var_0.a.wzy;
    var var_2 = !(func_2(Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(floor(arg_0.a.b)), var_0.a.zxw)) < 27968u);
    var_1 = !vec3<bool>(!(-8736i == arg_0.b.x), all(select(!var_1.zx, arg_0.a.c.zy, select(vec2<bool>(false, true), vec2<bool>(var_0.a.x, true), false))), !select(true, false, var_1.x));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(vec3<i32>(21067i >> (_wgslsmith_div_u32(~4294967295u, _wgslsmith_mult_u32(66590u, 19027u)) % 32u), u_input.a.x, -1i));
    var_0 = vec3<i32>(func_4(Struct_2(func_1(Struct_3(0u, vec4<i32>(2147483647i, var_0.x, 4757i, 2147483647i), vec3<bool>(false, false, false), vec3<u32>(0u, 0u, 8627u), 1u), Struct_4(vec4<bool>(true, true, true, false), true)), vec3<i32>(-2989i, ~var_0.x, 3636i), vec4<f32>(_wgslsmith_f_op_f32(round(1138f)), 608f, _wgslsmith_f_op_f32(1492f * -236f), _wgslsmith_f_op_f32(sign(-1967f))))), 0i, abs(~_wgslsmith_div_i32(1i, firstLeadingBit(u_input.a.x))));
    let var_1 = 1u;
    let var_2 = func_3(_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(1u, var_1), _wgslsmith_mult_u32(0u, ~(~4294967295u))), any(vec4<bool>(true, true, true, true)), vec2<i32>(-42108i & -firstLeadingBit(u_input.a.x), -1i), _wgslsmith_mult_u32(~1u, var_1));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f));
    var var_4 = Struct_2(Struct_1(select(_wgslsmith_add_vec4_i32(vec4<i32>(-30189i, 2147483647i, var_0.x, u_input.a.x), vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, u_input.a.x)) & vec4<i32>(-4222i, var_0.x, 1i, 0i), vec4<i32>(u_input.a.x, countOneBits(u_input.a.x), u_input.a.x, var_0.x), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false))), _wgslsmith_f_op_f32(abs(var_3)), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), max(_wgslsmith_mult_vec3_i32((u_input.a ^ vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)) >> ((vec3<u32>(21574u, var_2, var_2) ^ vec3<u32>(59429u, var_1, 1u)) % vec3<u32>(32u)), -u_input.a), u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1430f, -1148f, 1724f, -785f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3, var_3, var_3, var_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-389f, var_3, -344f, 1653f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3, 1426f, var_3, var_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, 337f, 145f)), true)) - vec4<f32>(-868f, _wgslsmith_f_op_f32(-752f * var_3), -501f, _wgslsmith_f_op_f32(sign(1061f))))));
    var_0 = select(vec3<i32>(2147483647i, _wgslsmith_sub_i32(abs(38518i), var_4.b.x), _wgslsmith_sub_i32(u_input.a.x, 1i)), min(func_1(Struct_3(1u, _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 0i, var_0.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.x)), !vec3<bool>(var_4.a.c.x, var_4.a.c.x, var_4.a.c.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2, 21189u, var_2), vec3<u32>(var_2, var_2, 21814u)), var_1), Struct_4(select(vec4<bool>(true, var_4.a.c.x, var_4.a.c.x, false), vec4<bool>(false, false, var_4.a.c.x, var_4.a.c.x), vec4<bool>(var_4.a.c.x, var_4.a.c.x, false, var_4.a.c.x)), true)).a.xxx, func_1(Struct_3(var_2, var_4.a.a, var_4.a.c, vec3<u32>(var_2, var_2, var_1), var_1), Struct_4(vec4<bool>(false, var_4.a.c.x, false, true), false)).a.xzw << (reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2, var_1, 51061u), vec3<u32>(var_1, 16u, 55326u), vec3<u32>(1u, 45433u, 623u))) % vec3<u32>(32u))), select(!(!(!var_4.a.c)), vec3<bool>(!select(var_4.a.c.x, false, var_4.a.c.x), true, any(select(vec4<bool>(var_4.a.c.x, true, true, var_4.a.c.x), vec4<bool>(var_4.a.c.x, true, var_4.a.c.x, true), var_4.a.c.x))), select(!vec3<bool>(var_4.a.c.x, var_4.a.c.x, false), func_1(Struct_3(46747u, vec4<i32>(var_4.a.a.x, u_input.a.x, 0i, u_input.a.x), var_4.a.c, vec3<u32>(83562u, 4294967295u, 1045u), 1858u), Struct_4(vec4<bool>(var_4.a.c.x, var_4.a.c.x, true, var_4.a.c.x), var_4.a.c.x)).c, var_4.a.c.x)));
    var_4 = Struct_2(Struct_1(var_4.a.a, -465f, vec3<bool>(var_4.a.c.x, !var_4.a.c.x, any(!vec2<bool>(false, var_4.a.c.x)))), reverseBits((var_4.a.a.xwx >> (vec3<u32>(14362u, 56521u, 25414u) % vec3<u32>(32u))) << (vec3<u32>(var_2, var_1, func_3(4294967295u, false, u_input.a.zx, var_1)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_4.c) - var_4.c));
    var_4 = Struct_2(Struct_1(vec4<i32>(-1i) * -(~vec4<i32>(-74467i, -20393i, -2147483647i, var_4.a.a.x)), _wgslsmith_f_op_f32(-var_4.a.b), !var_4.a.c), ~vec3<i32>(_wgslsmith_mod_i32(11915i, u_input.a.x), firstTrailingBit(-62753i), ~(-20111i)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(~var_1, var_1 << (25416u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, var_1), vec2<u32>(62846u, 1u))), _wgslsmith_div_vec3_u32(~vec3<u32>(4581u, 0u, 0u), ~vec3<u32>(var_1, var_2, 20249u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_4.c + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-148f, -1379f, -921f, 1449f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(abs(~73080u), var_1), ~(reverseBits(vec2<u32>(6215u, 17305u)) >> (vec2<u32>(var_2, 0u) % vec2<u32>(32u))), var_4.a.c.x), ~_wgslsmith_sub_u32(abs(4294967295u & var_2), func_2(Struct_1(vec4<i32>(0i, 6818i, 2147483647i, 58964i), var_3, var_4.a.c))), _wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(15753u, var_2)), var_4.a.a, var_4.a.c, max(vec3<u32>(36125u, 34311u, var_2), vec3<u32>(1u, var_2, 14243u)), var_1), Struct_4(select(vec4<bool>(true, var_4.a.c.x, true, true), vec4<bool>(var_4.a.c.x, var_4.a.c.x, true, false), var_4.a.c.x), var_2 == var_1)).b * _wgslsmith_f_op_f32(-var_3)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-433f)))))), var_4.c.x, _wgslsmith_f_op_f32(-var_3)));
}

