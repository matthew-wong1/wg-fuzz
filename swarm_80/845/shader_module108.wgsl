struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_4, 30>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> vec2<u32> {
    global0 = select(vec3<bool>(!(!(!arg_0.b.x)), all(arg_0.b), global0.x & global0.x), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(151f * 1510f) * _wgslsmith_f_op_f32(sign(2107f))) >= arg_0.c, !(-907f < _wgslsmith_f_op_f32(-arg_0.c)), (i32(-1i) * -42312i) < _wgslsmith_div_i32(~(-475i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, u_input.a.x, 8664i), vec4<i32>(u_input.e, -30441i, u_input.e, 5876i)))), false);
    global1 = array<Struct_4, 30>();
    let var_0 = -vec4<i32>(_wgslsmith_sub_i32(-(1i ^ u_input.b.x), firstTrailingBit(_wgslsmith_mod_i32(2147483647i, u_input.b.x))), 1i ^ u_input.a.x, 31708i, _wgslsmith_div_i32(_wgslsmith_div_i32(-28319i, u_input.e) ^ -2147483647i, min(u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.a.x, -24891i, u_input.b.x), vec4<i32>(u_input.a.x, -12911i, u_input.e, u_input.a.x)))));
    var var_1 = u_input.c;
    global0 = vec3<bool>(all(!(!(!vec3<bool>(global0.x, true, true)))), !(!global0.x), all(select(select(select(vec4<bool>(false, true, arg_0.b.x, true), vec4<bool>(true, global0.x, global0.x, global0.x), global0.x), !vec4<bool>(false, global0.x, true, arg_0.b.x), vec4<bool>(true, global0.x, false, arg_0.b.x)), vec4<bool>(all(vec4<bool>(global0.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)), true, true, 34403u == arg_0.a.x), !vec4<bool>(true, global0.x, global0.x, false))));
    return ~arg_0.a.yy;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: bool) -> bool {
    global1 = array<Struct_4, 30>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(506f)), _wgslsmith_f_op_f32(f32(-1f) * -1370f), true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -577f) * -1000f))) + _wgslsmith_f_op_f32(trunc(560f)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-716f)), 1261f)));
    global1 = array<Struct_4, 30>();
    var_0 = 1733f;
    return arg_2;
}

fn func_2(arg_0: vec4<f32>) -> vec3<u32> {
    global0 = vec3<bool>(all(vec3<bool>(!global0.x, func_4(u_input.a.zx | u_input.a.xz, func_3(Struct_4(vec3<u32>(27787u, u_input.c, 4889u), global0.yx, 1678f)), u_input.d.x >= u_input.d.x), abs(-2147483647i) <= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, -21133i, u_input.e), vec4<i32>(4551i, 7977i, u_input.e, u_input.e)))), !global0.x, (true & any(select(vec2<bool>(global0.x, global0.x), global0.xx, global0.x))) && global0.x);
    let var_0 = _wgslsmith_div_i32(min(-16519i, 6294i ^ u_input.e) & u_input.a.x, 2147483647i) | ((1i ^ u_input.b.x) & -u_input.a.x);
    global0 = vec3<bool>(true, true, true);
    var var_1 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1428f), arg_0.x, _wgslsmith_f_op_f32(154f * arg_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1525f, 1524f))), ~vec3<u32>(1u, u_input.d.x, u_input.d.x) << (_wgslsmith_add_vec3_u32(~u_input.d.wxw, vec3<u32>(65666u, 4294967295u, u_input.d.x)) % vec3<u32>(32u)), ~_wgslsmith_mult_i32(-2147483647i, _wgslsmith_add_i32(u_input.a.x, -32128i))), vec4<bool>(true, global0.x, all(select(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, true), false), vec3<bool>(global0.x, true, global0.x), false)), any(vec3<bool>(all(vec3<bool>(true, true, global0.x)), all(vec3<bool>(global0.x, global0.x, true)), !global0.x))), _wgslsmith_dot_vec3_u32(~vec3<u32>(~4294967295u, 69764u, 4294967295u), u_input.d.wxx), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.xxz), u_input.d.xwx, _wgslsmith_mod_i32(-(var_0 | -17485i), firstLeadingBit(1i))));
    var_1 = Struct_5(var_1.a, !vec4<bool>(true, var_1.b.x && var_1.b.x, var_1.b.x, !(arg_0.x < -489f)), u_input.d.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, var_1.d.a.x, arg_0.x) - vec3<f32>(var_1.d.a.x, 1082f, -158f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-290f, arg_0.x, 1946f))))), select(vec3<u32>(~u_input.d.x, ~var_1.d.b.x, var_1.c), ~firstLeadingBit(vec3<u32>(0u, 74438u, var_1.c)), select(vec3<bool>(var_1.b.x, global0.x, true), select(vec3<bool>(true, false, true), var_1.b.xxz, vec3<bool>(false, false, var_1.b.x)), global0.x)), -(~(-var_1.d.c))));
    return _wgslsmith_add_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.b.x, var_1.a.b.x, var_1.c), firstLeadingBit(u_input.d.zzy))), ~vec3<u32>(var_1.d.b.x, 1u, ~u_input.c >> ((u_input.c ^ var_1.a.b.x) % 32u)));
}

fn func_1() -> Struct_4 {
    var var_0 = vec3<i32>(4325i, 13507i, -39976i);
    let var_1 = countOneBits(~(~(u_input.d.zxz << (func_2(vec4<f32>(-464f, -359f, 1219f, 1873f)) % vec3<u32>(32u)))));
    var var_2 = vec4<i32>(select(-1448i, -var_0.x, true), var_0.x, ~var_0.x, (i32(-1i) * -2147483647i) ^ var_0.x) >> (~_wgslsmith_mod_vec4_u32(u_input.d, u_input.d) % vec4<u32>(32u));
    var_0 = vec3<i32>(reverseBits(countOneBits(u_input.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(var_0.x | u_input.e, u_input.e, 11240i), var_0.x), max(~_wgslsmith_div_vec2_i32(var_2.wx, u_input.a.zz), ~vec2<i32>(u_input.a.x, -30183i))), 0i);
    return global1[_wgslsmith_index_u32(1u, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = select(!select(vec3<bool>(!var_0.b.x, any(vec3<bool>(var_0.b.x, global0.x, false)), var_0.b.x), !select(vec3<bool>(true, var_0.b.x, false), vec3<bool>(false, var_0.b.x, global0.x), false), vec3<bool>(true, true, true)), !(!(!vec3<bool>(false, false, global0.x))), global0.x);
    global0 = select(vec3<bool>(global0.x, var_0.b.x, true), select(select(!vec3<bool>(var_0.b.x, false, true), vec3<bool>(all(var_0.b), func_4(u_input.b, u_input.d.zx, var_0.b.x), all(vec4<bool>(global0.x, global0.x, true, true))), true), select(select(select(vec3<bool>(global0.x, global0.x, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, false), global0.x), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, var_0.b.x), vec3<bool>(global0.x, false, true)), vec3<bool>(var_0.b.x, var_0.b.x, false)), !(!vec3<bool>(true, false, var_0.b.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, global0.x), vec3<bool>(true, global0.x, var_0.b.x), vec3<bool>(var_0.b.x, true, false)), true)), all(select(vec4<bool>(false, var_0.b.x, var_0.b.x, global0.x), vec4<bool>(global0.x, var_0.b.x, true, global0.x), false))), select(false, all(!select(global0.yy, global0.zz, false)), !global0.x));
    global1 = array<Struct_4, 30>();
    global1 = array<Struct_4, 30>();
    var var_1 = Struct_3(func_1().c);
    var_0 = func_1();
    global1 = array<Struct_4, 30>();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yz, 6065i, abs(u_input.a) >> (vec3<u32>(1u, ~0u >> (1u % 32u), ~(~var_0.a.x)) % vec3<u32>(32u)), 143f);
}

