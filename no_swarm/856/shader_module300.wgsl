struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<f32> {
    let var_0 = select(!vec4<bool>(all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))), select(false, any(vec2<bool>(true, false)), true), all(vec4<bool>(false, false, false, false)) & true, true), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(false, false)), true, -35978i <= u_input.a.x), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), false), vec4<bool>(true, true, true, all(vec3<bool>(true, false, true)))), u_input.a.x != u_input.b.x), select(vec4<bool>(-1318f > _wgslsmith_f_op_f32(floor(591f)), all(vec3<bool>(false, true, true)), true, select(true, u_input.c.x != u_input.c.x, all(vec3<bool>(true, false, true)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true));
    global0 = array<vec3<i32>, 30>();
    let var_1 = Struct_2(select(!(!vec3<bool>(false, var_0.x, false)), select(var_0.zwx, var_0.zzz, !select(var_0.yzx, vec3<bool>(var_0.x, var_0.x, var_0.x), false)), !(!var_0.zxz)), var_0.x, u_input.a.x);
    global0 = array<vec3<i32>, 30>();
    var var_2 = -920f;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1590f, -369f), vec3<f32>(639f, 226f, 123f), var_0.wzy)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(-1000f, 747f, 404f)))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -927f))), 518f, _wgslsmith_f_op_f32(trunc(-683f)))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3())));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-671f)))) + _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(sign(1f)))), arg_1));
    var var_2 = ~u_input.a.x;
    var_1 = arg_1;
    var var_3 = Struct_1(firstTrailingBit(vec4<i32>(abs(0i), _wgslsmith_div_i32(~arg_2.a.x, -2147483647i), 0i, ~49398i)), abs(arg_2.b));
    return u_input.c.xxz;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = func_2(~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) & ~u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(272f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(303f, -1000f, false)) * 1395f))), Struct_1(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, 13422i), u_input.b.x & u_input.a.x), _wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_div_i32(-2147483647i, -1i)), -39078i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 1i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), -1i), max(vec4<i32>(-2147483647i, u_input.b.x, -8906i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x)) >> (select(u_input.c, vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 1u), false) % vec4<u32>(32u)))));
    var_0 = vec3<u32>(~u_input.c.x | 111448u, 4294967295u, _wgslsmith_mod_u32(930u, ~(~var_0.x)));
    var_0 = abs(_wgslsmith_mod_vec3_u32(u_input.c.zyw ^ reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<u32>(var_0.x, 4294967295u, 4294967295u))), select(~vec3<u32>(u_input.c.x, 0u, u_input.c.x), _wgslsmith_mult_vec3_u32(u_input.c.xxw, u_input.c.ywx), arg_0) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_0.x, 0u, var_0.x), vec4<u32>(0u, 4294967295u, 42703u, var_0.x)), var_0.x, u_input.c.x & u_input.c.x)));
    var var_1 = Struct_1(-select(countOneBits(vec4<i32>(0i, 1i, -19486i, u_input.b.x) | vec4<i32>(2147483647i, u_input.a.x, -52827i, -1i)), select(abs(vec4<i32>(0i, u_input.a.x, -2147483647i, 1i)), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 11671i), vec4<bool>(false, arg_0, arg_0, arg_0)), select(select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(true, false, false, arg_0), false), vec4<bool>(arg_0, true, arg_0, arg_0), select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, true)))), max(reverseBits(-min(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.a.x), vec4<i32>(0i, u_input.a.x, u_input.b.x, 0i))), _wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 24398i, 1i), vec4<i32>(0i, -19440i, u_input.b.x, 3194i)), vec4<i32>(u_input.a.x, min(u_input.a.x, 30241i), 23041i, u_input.b.x << (u_input.c.x % 32u)))));
    var_0 = ~vec3<u32>(60012u, u_input.c.x, _wgslsmith_clamp_u32(var_0.x & var_0.x, 11943u, 1u) << (_wgslsmith_add_u32(u_input.c.x, select(48129u, 12760u, arg_0)) % 32u));
    return Struct_1(firstTrailingBit(var_1.b) & ~vec4<i32>(u_input.b.x, ~var_1.b.x, 1i, -1i), abs(var_1.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = arg_1;
    var var_1 = countOneBits(arg_0.xw);
    var var_2 = _wgslsmith_dot_vec3_u32(u_input.c.wwy, select(~arg_0.wyz, arg_0.xzx, vec3<bool>(true, false, any(vec2<bool>(false, true))))) | firstTrailingBit(_wgslsmith_mod_u32(var_1.x, u_input.c.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_4 = min(vec2<u32>(arg_0.x, ~(~40177u)), arg_0.zw);
    return StorageBuffer(~(~arg_0) << (max(vec4<u32>(_wgslsmith_mod_u32(arg_0.x, 1u), ~16233u, ~50483u, 61866u), arg_0) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(923f, 882f, -351f, 108f) * vec4<f32>(-466f, 1156f, -678f, 1530f)), vec4<f32>(508f, -826f, 1000f, 533f), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-266f, 760f, 1312f, 1042f)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-766f, -510f, -874f, 360f), vec4<f32>(1158f, 375f, -1736f, -1509f), true)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(233f, 303f, -304f, 116f)))))), func_2(~76555u, -174f, func_1(true)).x < firstLeadingBit(u_input.c.x ^ u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-538f))));
    global0 = array<vec3<i32>, 30>();
    var_0 = -141f;
    let var_1 = ~u_input.c.x;
    var var_2 = Struct_2(vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), ((49771i <= u_input.a.x) & true) && any(vec3<bool>(false, true, false)), true), !(select(firstTrailingBit(var_1), 96565u, select(false, false, true)) >= 46773u), ~(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.b.x), _wgslsmith_mod_i32(u_input.b.x, 8891i)) >> ((~0u << (_wgslsmith_clamp_u32(var_1, 4711u, u_input.c.x) % 32u)) % 32u)));
    global0 = array<vec3<i32>, 30>();
    let x = u_input.a;
    s_output = func_4(min(firstTrailingBit(u_input.c), u_input.c), func_1(true));
}

