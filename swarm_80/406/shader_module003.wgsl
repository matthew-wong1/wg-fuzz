struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(-56030i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, -1i, -61605i)), vec4<i32>(-43046i, 35939i, u_input.a.x, -12671i) | vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), true)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(~1u, _wgslsmith_mult_u32(4294967295u, 1u), 1u, _wgslsmith_mult_u32(4294967295u, 0u)), vec4<u32>(22724u, _wgslsmith_dot_vec3_u32(vec3<u32>(34426u, 64895u, 42353u), vec3<u32>(4294967295u, 1u, 4294967295u)), ~0u, max(14787u, 25375u))) % vec4<u32>(32u)));
    let var_1 = select(vec2<bool>(!(!all(vec4<bool>(true, true, false, false))), all(vec3<bool>(true, true, true))), vec2<bool>(any(vec4<bool>(true, true, true, true)), (i32(-1i) * -1i) > _wgslsmith_dot_vec2_i32(var_0.a.xx, vec2<i32>(u_input.a.x, var_0.a.x) << (vec2<u32>(0u, 79518u) % vec2<u32>(32u)))), select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec4<bool>(true, false, true, false))), vec2<bool>(true, true), !(select(33166i, var_0.a.x, true) < (i32(-1i) * -1i))));
    let var_2 = !all(!(!select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, true), true)));
    let var_3 = ~vec2<u32>(43025u, 1u);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 1000f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-987f * _wgslsmith_div_f32(293f, -1729f))))) - _wgslsmith_f_op_f32(-1014f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-899f)) - -1366f)));
    return vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(70404u, var_3.x, 1455u), vec3<u32>(~var_3.x, 1u, ~var_3.x)), max(4294967295u, _wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(var_3.x, 0u, var_3.x)) | 81190u), var_3.x);
}

fn func_2() -> vec4<i32> {
    let var_0 = u_input.a.x;
    let var_1 = ~firstLeadingBit(func_3());
    let var_2 = var_1.x;
    let var_3 = _wgslsmith_sub_i32(0i, _wgslsmith_add_i32(12924i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, firstTrailingBit(14368i), var_0 << (var_1.x % 32u)), ~vec3<i32>(var_0, 2147483647i, 30922i) ^ vec3<i32>(-2147483647i, -14791i, 0i))));
    let var_4 = ~reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 0i, -26188i, _wgslsmith_clamp_i32(var_0, 41744i, var_3)), ~vec4<i32>(10447i, var_3, 2147483647i, -15058i)));
    return ~max(firstTrailingBit(reverseBits(-var_4)), var_4);
}

fn func_1() -> vec4<i32> {
    return _wgslsmith_mult_vec4_i32(vec4<i32>(1i, ~_wgslsmith_mod_i32(~u_input.a.x, select(-8719i, u_input.a.x, false)), -2147483647i, u_input.a.x), _wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(func_2(), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, -56966i), vec4<i32>(12278i, u_input.a.x, -71950i, -20945i))), ~vec4<i32>(_wgslsmith_mult_i32(1i, -22854i), abs(u_input.a.x), ~u_input.a.x, _wgslsmith_mult_i32(1i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~(~vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u, abs(0u))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(43131u, 3829u)), 4294967295u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-567f + 549f), _wgslsmith_f_op_f32(floor(-379f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(491f * 431f) + _wgslsmith_div_f32(229f, 211f)))));
    var var_2 = vec4<f32>(-206f, -250f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(257f + var_1.x))) + -1222f) * _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), var_1.x);
    let var_3 = ~(~(~var_0.x));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.zyx - vec3<f32>(-1000f, var_1.x, 313f)))));
    var var_4 = ~abs(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_1.x - -206f), 845f, _wgslsmith_f_op_f32(var_1.x - var_1.x)))), ~_wgslsmith_mod_u32(~1u, ~var_4.x), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_div_i32(countOneBits(-2147483647i), -16666i >> (var_0.x % 32u))), _wgslsmith_dot_vec4_i32(func_1(), vec4<i32>(-2163i, firstLeadingBit(u_input.a.x), -1i, ~u_input.a.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_2.x, var_2.x, 578f) - vec4<f32>(526f, var_1.x, -1080f, -138f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, -1635f, -715f, var_2.x), vec4<f32>(-510f, var_1.x, var_2.x, var_2.x), vec4<bool>(true, false, true, true))), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -1120f, 1190f, var_2.x) * vec4<f32>(var_1.x, 752f, var_1.x, var_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, -709f, -536f), vec4<f32>(1288f, 106f, -1000f, 893f)), true)), vec4<bool>(true, all(vec2<bool>(false, true)), true, -995f >= var_1.x))))));
}

