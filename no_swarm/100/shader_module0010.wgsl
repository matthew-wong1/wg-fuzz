struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<f32>) -> u32 {
    var var_0 = vec3<bool>(!arg_0.c.x, true, !any(select(!arg_0.c.zxz, select(vec3<bool>(true, arg_0.a.x, arg_0.b), vec3<bool>(arg_0.c.x, true, true), vec3<bool>(true, arg_0.c.x, true)), !vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.c.x))));
    var_0 = arg_0.c.xxx;
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i, select(-1i, 0i, arg_1.x <= -474f)) ^ vec2<i32>(1i, 1i), -_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(-1i, -5211i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), vec2<i32>(i32(-1i) * -1i, firstTrailingBit(22740i))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1 * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x)) * _wgslsmith_f_op_vec3_f32(arg_1 + arg_1)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-1187f + arg_1.x), _wgslsmith_f_op_f32(arg_1.x - arg_1.x), -273f))))));
    var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) - vec3<f32>(var_2.x, 936f, var_2.x)), _wgslsmith_f_op_vec3_f32(arg_1 * vec3<f32>(var_2.x, 1217f, 1187f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.x, arg_1.x))) * arg_1)));
    return u_input.a;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(abs(u_input.a), abs(0u), ~u_input.a), vec3<u32>(658u, _wgslsmith_div_u32(0u, 4294967295u), func_3(Struct_5(vec3<bool>(false, false, true), false, vec4<bool>(true, true, true, true)), vec3<f32>(1496f, -1000f, -779f)))), vec3<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 94731u), vec3<u32>(u_input.a, 17995u, 33977u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 31298u)), true), ~(~52178u), 4294967295u)), select(_wgslsmith_div_vec3_u32(max(abs(vec3<u32>(u_input.a, 0u, 48704u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 31111u, 1u), vec3<u32>(23792u, 4294967295u, u_input.a))), abs(~vec3<u32>(34129u, 63585u, u_input.a))), vec3<u32>(_wgslsmith_mult_u32(~4294967295u, u_input.a), abs(u_input.a), select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, u_input.a)), ~u_input.a, true)), vec3<bool>(false, true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false)))));
    var_0 = countOneBits(~(~_wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(u_input.a, 21641u))));
    return _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(28410i, 26881i), vec2<i32>(-2147483647i, 17293i)) ^ ~(-55420i), 70395i, min(countOneBits(1i), ~(-8444i)), select(1i, firstLeadingBit(-1i), true))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(1i, -1i, -4607i, _wgslsmith_clamp_i32(-36058i, -20774i, -1i))), vec4<i32>(1i, 1i, 1i, 1i), select(-vec4<i32>(-2147483647i, 31368i, 9399i, 74990i), ~vec4<i32>(-14168i, -1i, 9327i, 40590i), select(false, false, false)) | -vec4<i32>(46047i, 692i, 11884i, 29686i)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool) -> bool {
    var var_0 = func_2();
    let var_1 = _wgslsmith_add_i32(-26171i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 32845i, 0i) << (vec3<u32>(arg_0.a, u_input.a, arg_0.b.d.x) % vec3<u32>(32u)), vec3<i32>(50222i, 1i, abs(-47599i))), -83911i));
    var_0 = -(-2147483647i | var_1);
    var_0 = _wgslsmith_div_i32(24943i, _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(19729i, ~(-34102i)), var_1), countOneBits(0i | _wgslsmith_div_i32(var_1, 1923i))));
    var_0 = ~var_1;
    return any(arg_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(755f, -429f) * _wgslsmith_f_op_f32(select(-202f, -249f, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-166f - 865f) - _wgslsmith_f_op_f32(191f - -377f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) - -790f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(908f, 509f), 1f)))));
    var_1 = -1625f;
    let var_2 = Struct_2(~u_input.a, Struct_1(vec4<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false)) || true, func_1(Struct_2(64600u, Struct_1(vec4<bool>(true, true, true, true), 11898u, vec2<u32>(u_input.a, 33707u), vec2<u32>(33954u, u_input.a)), vec2<bool>(false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(459f, 878f, 484f, 1000f)), true), all(vec3<bool>(true, true, false))), countOneBits(func_3(Struct_5(vec3<bool>(true, true, false), true, vec4<bool>(true, true, true, true)), vec3<f32>(-656f, 235f, 2148f))) ^ 0u, ~(~(~vec2<u32>(4294967295u, u_input.a))), vec2<u32>(u_input.a, select(0u, 4294967295u, false))), select(vec2<bool>(false, !any(vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), true), true));
    var var_3 = select(var_2.b.a.wz, !select(!(!var_2.b.a.zx), var_2.b.a.wx, var_2.c), var_2.c.x);
    var var_4 = vec3<bool>(!var_3.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2269f)) * _wgslsmith_f_op_f32(-701f + -570f))) >= _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -716f), _wgslsmith_f_op_f32(f32(-1f) * -704f)))));
    let var_5 = 475f;
    var var_6 = _wgslsmith_f_op_f32(-var_5);
    let var_7 = abs(reverseBits(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, 4294967295u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(min(~vec2<u32>(var_7.x, 31379u), select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, var_7.x), var_2.b.c), vec2<u32>(var_7.x, var_7.x), var_4.zz)), var_7.zy));
}

