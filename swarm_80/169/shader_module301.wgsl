struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> vec3<i32> {
    let var_0 = select(select(vec2<bool>(!arg_1.d.x || arg_1.d.x, arg_1.d.x), vec2<bool>(arg_1.d.x, arg_1.d.x), vec2<bool>(!(!arg_1.d.x), arg_1.d.x)), !arg_1.d.yx, arg_1.d.xz);
    var var_1 = Struct_4(arg_1, arg_1.b, 761f, vec2<bool>(var_0.x, true));
    var var_2 = select(vec3<bool>(false, true, var_1.d.x), select(!vec3<bool>(!var_0.x, arg_1.d.x, all(vec2<bool>(var_0.x, var_0.x))), select(var_1.a.d, var_1.a.d, var_0.x), arg_1.d.x), any(vec2<bool>(true, all(select(vec4<bool>(var_1.a.d.x, var_1.d.x, true, arg_1.d.x), vec4<bool>(arg_1.d.x, var_0.x, var_1.a.d.x, false), arg_1.d.x)))));
    let var_3 = select(!any(arg_1.d), arg_1.d.x, false | var_1.d.x);
    var_2 = arg_1.d;
    return vec3<i32>(9270i, 0i ^ u_input.d, ~_wgslsmith_clamp_i32(-29623i, _wgslsmith_mult_i32(firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(arg_1.b.a.xx, vec2<i32>(arg_1.b.a.x, arg_1.b.a.x))), -var_1.b.a.x | 0i));
}

fn func_2() -> i32 {
    var var_0 = ~func_3(0u, Struct_2(firstTrailingBit(min(vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))), Struct_1(~u_input.c), select(~6448u, ~14119u, select(false, true, false)), vec3<bool>(true, true, true)), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_mod_i32(u_input.b.x, u_input.c.x)), 15733i));
    var_0 = (u_input.c << ((_wgslsmith_mult_vec3_u32(u_input.a, ~u_input.a) | _wgslsmith_mult_vec3_u32(countOneBits(u_input.a), select(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(0u, u_input.a.x, 4294967295u), false))) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(~u_input.c, vec3<i32>(-1i, var_0.x, ~43025i), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -40734i, -698i), u_input.c), abs(vec3<i32>(var_0.x, var_0.x, var_0.x)))), vec3<i32>(-5546i, u_input.b.x, var_0.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1627f, -295f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(405f, -1335f)), _wgslsmith_f_op_f32(min(611f, -561f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1394f), -260f, -133f), vec3<f32>(_wgslsmith_f_op_f32(-536f + -1577f), _wgslsmith_f_op_f32(2390f * 1000f), _wgslsmith_f_op_f32(234f * 643f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1685f, _wgslsmith_f_op_f32(ceil(-487f)), _wgslsmith_f_op_f32(-875f * -1051f)))), true));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.xy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1157f, var_1.x)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1007f, 1446f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, -1487f), vec2<f32>(752f, var_1.x), true))))));
    let var_3 = Struct_1(~(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, var_0.x, -1145i) >> (vec3<u32>(u_input.a.x, 0u, u_input.a.x) % vec3<u32>(32u)), select(vec3<i32>(u_input.c.x, u_input.d, var_0.x), u_input.c, true))));
    return u_input.c.x;
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_2(~(~(~vec4<u32>(3141u, 2714u, u_input.a.x, 109665u) << (vec4<u32>(47600u, 0u, 1u, 37195u) % vec4<u32>(32u)))), Struct_1(-vec3<i32>(0i, u_input.d, -37789i)), 0u, !vec3<bool>(!any(vec3<bool>(false, true, true)), false, false));
    let var_1 = u_input.d;
    let var_2 = vec4<i32>(var_1, func_2(), var_1, firstLeadingBit(-var_0.b.a.x) << (~64730u % 32u));
    let var_3 = Struct_3(var_0.b, var_0.d.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-741f, 1091f)) * -785f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-550f, 896f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1223f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -2305f, 308f)))), vec3<f32>(1f, 1f, 1f))));
    return ~var_2;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> vec3<u32> {
    let var_0 = vec2<bool>(false, !(!all(vec2<bool>(false, false)) && true));
    return _wgslsmith_div_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(8362u, u_input.a.x, 9632u), u_input.a) >> (select(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 77588u), any(vec3<bool>(var_0.x, false, var_0.x))) % vec3<u32>(32u))), ~vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u << (~(~(_wgslsmith_sub_u32(1675u, u_input.a.x) | (u_input.a.x ^ u_input.a.x))) % 32u);
    var var_1 = _wgslsmith_mod_u32(select(0u, ~max(~var_0, u_input.a.x), !((u_input.b.x > u_input.b.x) && true)), reverseBits(11380u | abs(~var_0)));
    var_1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(reverseBits(var_0), ~select(4294967295u, 6749u, true)), ~max(~var_0, _wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.zy) ^ u_input.a.x));
    var var_2 = _wgslsmith_mod_vec3_u32(func_4(1i << (_wgslsmith_div_u32(0u, var_0) % 32u), func_1()), _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(4294967295u), _wgslsmith_add_u32(38154u, u_input.a.x), 81335u), select(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 21279u, var_0)), firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, var_0)), true))) << (~u_input.a % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~u_input.c.xx));
}

