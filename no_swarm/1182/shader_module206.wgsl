struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    return !vec3<bool>(((i32(-1i) * -5259i) != u_input.a) || true, true, false);
}

fn func_2() -> vec4<bool> {
    var var_0 = select(vec3<i32>(u_input.a, abs(2147483647i), _wgslsmith_sub_i32(-25983i, u_input.a)), -(~vec3<i32>(u_input.a, -2147483647i, u_input.a) & (max(vec3<i32>(-93671i, u_input.a, 20151i), vec3<i32>(23548i, 1710i, u_input.a)) >> (abs(vec3<u32>(0u, u_input.b, u_input.b)) % vec3<u32>(32u)))), select(!vec3<bool>(true, select(false, false, true), any(vec3<bool>(true, false, true))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(all(vec3<bool>(false, false, false)), true, select(true, false, false)), min(-2147483647i, u_input.a) <= (u_input.a ^ u_input.a)), func_3(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(0u, 34077u, 47376u)), _wgslsmith_sub_vec3_u32(vec3<u32>(106743u, u_input.b, u_input.b), vec3<u32>(15514u, 65476u, u_input.b))))));
    var var_1 = Struct_3(vec3<i32>(var_0.x, ~(-23917i), i32(-1i) * -2147483647i));
    let var_2 = Struct_2(~vec3<u32>(73922u, 1987u << (~u_input.b % 32u), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, u_input.b), firstLeadingBit(1u))));
    var var_3 = 1404f;
    var var_4 = 744f;
    return select(!select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), all(vec2<bool>(true, false))), true), !(!all(vec4<bool>(true, true, true, true)) & true));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = select(func_2(), select(vec4<bool>(arg_0, arg_0, true, true), !select(select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, true, true, arg_0), arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), true), vec4<bool>(true, false, any(vec3<bool>(arg_0, true, false)), arg_0)), !(!vec4<bool>(arg_0, 2147483647i <= u_input.a, false, !arg_0)));
    var var_1 = Struct_2(countOneBits(~(~vec3<u32>(0u, u_input.b, u_input.b))));
    var var_2 = u_input.b;
    let var_3 = -11265i;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -803f) + _wgslsmith_f_op_f32(min(-171f, 2018f)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-755f, -609f, 366f, -2437f)) - vec4<f32>(-1405f, -801f, 721f, -1000f))))), _wgslsmith_dot_vec2_u32(max(var_1.a.zx, var_1.a.zx) << (vec2<u32>(~var_1.a.x, reverseBits(76878u)) % vec2<u32>(32u)), var_1.a.xz));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(arg_1.a.x - arg_0.a.x)))), -1419f);
    let var_1 = arg_2 ^ ~arg_2;
    let var_2 = all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, func_3(vec3<u32>(var_1, 1u, 4294967295u)).x, false, func_3(vec3<u32>(u_input.b, 0u, 17767u)).x), func_2(), select(func_2(), vec4<bool>(true, true, true, true), true)), select(select(vec4<bool>(true, true, true, true), func_2(), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), u_input.a <= u_input.a), vec4<bool>(63468u == var_1, true, true, true))));
    var_0 = arg_1.a;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1692f, arg_0.a.x, 888f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -1481f))) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a.x, -1000f))), _wgslsmith_f_op_f32(arg_1.a.x + arg_0.a.x), -1010f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-678f, arg_0.a.x, -155f, -1646f))), arg_0.a));
    return Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(41774u, var_1, arg_1.b), ~vec3<u32>(0u, arg_2, 8058u)) ^ vec3<u32>(arg_2, 4294967295u << (arg_1.b % 32u), _wgslsmith_mod_u32(1u, 11039u)), _wgslsmith_sub_vec3_u32(min(vec3<u32>(0u, 26753u, 10356u), ~vec3<u32>(0u, 1u, 81870u)), ~vec3<u32>(arg_2, arg_2, arg_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<u32>(u_input.b, u_input.b, 1u));
    var var_1 = func_4(func_1(any(vec3<bool>(true, false, all(vec3<bool>(false, false, false))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-822f, 1624f, false)), -416f, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1008f, -1729f) - _wgslsmith_f_op_f32(ceil(-181f))), _wgslsmith_f_op_f32(f32(-1f) * -288f), 260f), func_1(any(vec3<bool>(true, true, false))).b), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.b, 8369u)), select(var_0.a.xz, vec2<u32>(59022u, u_input.b), false)), u_input.b) | func_1(true).b);
    var var_2 = !all(select(vec4<bool>(true, func_3(var_1.a).x, func_3(vec3<u32>(44992u, 58407u, 4294967295u)).x, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-822f, 303f, 467f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1581f, -1043f, 623f), vec3<f32>(-1036f, -1094f, -473f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -744f)), _wgslsmith_f_op_f32(abs(-226f)), -174f)));
    let var_4 = all(!(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)))));
    var_2 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, min(u_input.a, u_input.a), 0i), firstLeadingBit(reverseBits(vec3<i32>(u_input.a, -58905i, u_input.a)))) >= _wgslsmith_sub_i32(55729i, u_input.a);
    var var_5 = ~vec3<u32>(4294967295u, _wgslsmith_mult_u32(~4346u, 0u), u_input.b);
    var_5 = ~(~vec3<u32>(~98632u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_5.x, var_5.x), 0u, 17475u), 59878u));
    let var_6 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(var_3.x)), var_3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.x * var_3.x))), 1064f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(u_input.b, u_input.b, 4294967295u, 24222u)) & reverseBits(vec4<u32>(4294967295u, var_0.a.x, 1u, u_input.b) | vec4<u32>(1u, 4294967295u, 1u, u_input.b)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, var_1.a.x, var_1.a.x, 4294967295u), ~vec4<u32>(var_5.x, var_0.a.x, u_input.b, 15884u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, u_input.b), vec4<u32>(var_5.x, 15999u, 0u, 26775u)) % vec4<u32>(32u)))), var_6, var_5.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_5.xy, vec2<u32>(var_5.x, var_0.a.x)), ~59394u, 0u, ~var_1.a.x), vec4<u32>(~30721u, _wgslsmith_div_u32(10724u, u_input.b), firstLeadingBit(35756u), 1u)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1242f) * _wgslsmith_f_op_f32(var_3.x * var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-487f, -305f, false)) - _wgslsmith_f_op_f32(-var_6.x))))));
}

