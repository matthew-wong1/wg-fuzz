struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_3,
    d: f32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-316f, arg_2.b, arg_1), vec3<f32>(709f, arg_1, arg_2.c))))))))));
    let var_1 = Struct_3(u_input.d, Struct_2(Struct_1(~(11783u << (arg_2.a % 32u)), 1571f, 453f)), Struct_2(arg_2), 1u, 20687u);
    var var_2 = false;
    let var_3 = _wgslsmith_mod_vec3_u32(abs(vec3<u32>(13534u, ~54078u, var_1.c.a.a)), ~(~(vec3<u32>(arg_2.a, arg_2.a, var_1.c.a.a) ^ vec3<u32>(1u, u_input.b, arg_2.a))));
    var var_4 = select(select(_wgslsmith_div_vec4_u32(~vec4<u32>(63242u, arg_2.a, arg_2.a, 4294967295u), select(vec4<u32>(36655u, u_input.e, 133377u, arg_2.a), vec4<u32>(5169u, arg_2.a, var_1.a.x, 0u), vec4<bool>(true, true, false, false))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 26770u, 41383u, 72680u), _wgslsmith_add_vec4_u32(vec4<u32>(49641u, var_1.a.x, u_input.b, var_3.x), vec4<u32>(var_3.x, 4294967295u, 7733u, 94993u)), firstTrailingBit(vec4<u32>(1u, var_3.x, 42096u, 4294967295u))), true) ^ ~(~(vec4<u32>(var_1.b.a.a, var_1.d, var_3.x, var_1.b.a.a) & vec4<u32>(arg_2.a, var_3.x, u_input.e, u_input.b))), ~select(vec4<u32>(arg_2.a, var_1.b.a.a, var_3.x, 1u) | vec4<u32>(var_3.x, 4294967295u, 0u, 33258u), vec4<u32>(var_1.d, 4294967295u, u_input.d.x, u_input.b) ^ vec4<u32>(arg_2.a, 21820u, 0u, var_3.x), vec4<bool>(true, false, false, false)) << ((vec4<u32>(_wgslsmith_dot_vec3_u32(var_3, var_3), abs(u_input.e), var_3.x, _wgslsmith_sub_u32(689u, 0u)) ^ vec4<u32>(_wgslsmith_mult_u32(arg_2.a, var_3.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, 62145u, var_1.b.a.a, u_input.e), vec4<u32>(var_3.x, 1u, 4294967295u, 2091u)), arg_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(35246u, 94211u, arg_2.a, 34621u), vec4<u32>(var_1.d, 18078u, var_1.a.x, 0u)))) % vec4<u32>(32u)), any(vec3<bool>(true, false, -3082i == _wgslsmith_div_i32(u_input.a.x, -1i))));
    return var_0.x;
}

fn func_2() -> f32 {
    let var_0 = any(!select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), any(vec2<bool>(false, true))), true));
    let var_1 = vec3<bool>(var_0, false, false);
    var var_2 = Struct_1(6487u, -2016f, -1570f);
    var var_3 = select(vec4<bool>(var_0, true, any(select(select(vec4<bool>(false, true, var_0, var_1.x), vec4<bool>(var_1.x, var_1.x, var_0, var_0), var_0), select(vec4<bool>(var_0, var_1.x, true, var_1.x), vec4<bool>(false, true, true, false), vec4<bool>(true, var_0, false, true)), !vec4<bool>(true, true, var_1.x, false))), !(_wgslsmith_f_op_f32(-var_2.c) == _wgslsmith_f_op_f32(f32(-1f) * -205f))), !vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(true, true, any(!var_1.yy), var_1.x));
    var var_4 = firstLeadingBit(54730u);
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(-var_2.b), Struct_1(var_2.a, var_2.b, _wgslsmith_f_op_f32(-var_2.c)))), var_2.c)));
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: u32) -> f32 {
    var var_0 = ~_wgslsmith_mult_i32(-32603i, ~(~(~0i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), -676f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-588f - 254f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-394f + var_1), _wgslsmith_f_op_f32(-var_1))))));
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: vec4<f32>) -> Struct_5 {
    return Struct_5(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.x, u_input.c, -12877i), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -2147483647i, arg_0.b), u_input.a.xxz)) ^ (~u_input.c ^ -23975i), 70828i), 0i, max(arg_0.c, ~_wgslsmith_clamp_vec3_i32(-arg_0.c, vec3<i32>(-1i, u_input.c, arg_0.c.x) | vec3<i32>(arg_0.c.x, -1843i, 0i), select(u_input.a.xwx, arg_0.c, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_5(-13430i, u_input.c >> ((~u_input.d.x ^ abs(1u)) % 32u), u_input.a.zzz), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -982f, 580f, 754f), vec4<f32>(1000f, -756f, -609f, -147f), true)), vec4<f32>(-323f, -634f, 757f, -471f), false))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2072f, 1741f, -250f, -772f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2396f, 207f, 520f, 1000f) - vec4<f32>(-572f, 226f, 999f, 1109f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(981f)), 603f, 1390f, _wgslsmith_f_op_f32(func_1(5877i, Struct_5(u_input.c, 2147483647i, vec3<i32>(-7409i, 9898i, 1i)), u_input.d.x))), true || select(false, true, true)))));
    let var_1 = -(_wgslsmith_add_vec2_i32(var_0.c.yy, vec2<i32>(u_input.c, u_input.c) | var_0.c.xy) << (countOneBits(~vec2<u32>(1u, 1u)) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(abs(vec2<u32>(4294967295u, u_input.e >> (u_input.b % 32u))), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(u_input.e, 4294967295u)) & u_input.d) % vec2<u32>(32u));
    let var_2 = !any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))));
    var var_3 = any(select(select(!vec3<bool>(false, var_2, false), select(vec3<bool>(var_2, var_2, false), !vec3<bool>(var_2, var_2, var_2), select(vec3<bool>(false, var_2, false), vec3<bool>(var_2, false, var_2), true)), !select(vec3<bool>(true, var_2, true), vec3<bool>(var_2, false, true), vec3<bool>(var_2, false, var_2))), vec3<bool>(var_2, true, u_input.c >= -8684i), !vec3<bool>(var_2, false, true)));
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-22206i);
}

