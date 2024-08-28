struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> bool {
    global0 = u_input.a.x;
    global0 = 0u;
    let var_0 = !(!arg_1.b.d.c);
    global0 = _wgslsmith_sub_u32(~(((u_input.a.x & 4294967295u) ^ ~0u) | 1u), u_input.c);
    var var_1 = countOneBits(~arg_1.b.b.x);
    return true;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    var var_0 = false | select(func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1171f, 826f, 1995f, -133f))), Struct_3(Struct_1(vec2<f32>(-1000f, -187f), vec2<bool>(false, true), vec4<bool>(false, false, true, false)), Struct_2(vec3<bool>(true, true, false), vec3<u32>(arg_0, arg_0, 0u), vec2<bool>(false, false), Struct_1(vec2<f32>(-424f, 477f), vec2<bool>(false, false), vec4<bool>(false, false, true, true))))), any(vec3<bool>(false, true, true)), !any(vec4<bool>(true, false, false, false)));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(105f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)))), !select(!select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, func_3(vec4<f32>(-1591f, -1355f, 1726f, 455f), Struct_3(Struct_1(vec2<f32>(-992f, -836f), vec2<bool>(false, false), vec4<bool>(true, true, true, false)), Struct_2(vec3<bool>(true, false, true), vec3<u32>(u_input.e, 0u, 36419u), vec2<bool>(false, false), Struct_1(vec2<f32>(2352f, 699f), vec2<bool>(true, false), vec4<bool>(false, true, false, false)))))), vec2<bool>(true, any(vec3<bool>(false, true, true)))), select(!vec4<bool>(func_3(vec4<f32>(-609f, -189f, -1355f, -636f), Struct_3(Struct_1(vec2<f32>(618f, -271f), vec2<bool>(false, false), vec4<bool>(false, false, true, true)), Struct_2(vec3<bool>(true, true, true), vec3<u32>(4294967295u, 4294967295u, arg_0), vec2<bool>(true, false), Struct_1(vec2<f32>(697f, -597f), vec2<bool>(false, true), vec4<bool>(false, true, true, false))))), true, u_input.a.x != 0u, all(vec2<bool>(false, false))), vec4<bool>(_wgslsmith_f_op_f32(-178f - 713f) != _wgslsmith_f_op_f32(floor(1374f)), true, select(any(vec4<bool>(false, false, false, true)), true, false), false), vec4<bool>(true, false, !any(vec3<bool>(true, true, false)), false)));
    var var_2 = vec2<u32>(14273u, 1u) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), ~30786u) % vec2<u32>(32u));
    let var_3 = Struct_3(Struct_1(var_1.a, select(var_1.b, var_1.c.yx, !(!vec2<bool>(var_1.b.x, var_1.c.x))), !var_1.c), Struct_2(select(select(vec3<bool>(true, false, false), vec3<bool>(var_1.b.x, true, false), select(var_1.c.wwz, var_1.c.wyw, false)), var_1.c.zxy, true), vec3<u32>(~_wgslsmith_clamp_u32(var_2.x, var_2.x, arg_0), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x)), ~vec4<u32>(4294967295u, arg_0, 100884u, u_input.a.x)), u_input.c ^ var_2.x), vec2<bool>(any(select(vec2<bool>(var_1.c.x, true), vec2<bool>(false, var_1.b.x), var_1.b)), 106851u >= _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 50671u), u_input.a)), Struct_1(var_1.a, select(select(vec2<bool>(false, var_1.c.x), vec2<bool>(var_1.c.x, var_1.b.x), var_1.b.x), select(vec2<bool>(false, true), vec2<bool>(true, var_1.b.x), true), var_1.c.x), select(var_1.c, var_1.c, any(var_1.c.wx)))));
    let var_4 = var_1.c.x;
    return var_3.a.c.zzy;
}

fn func_1() -> Struct_3 {
    var var_0 = false;
    var var_1 = select(select(!vec4<bool>(true, select(false, false, true), true, true), !vec4<bool>(2147483647i < u_input.b.x, true, false, false), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), vec4<bool>(!(26044u <= _wgslsmith_div_u32(u_input.e, u_input.a.x)), false, all(select(vec3<bool>(false, false, false), func_2(1u), vec3<bool>(false, true, false))), false), false | select(true, true, true));
    var var_2 = 1f;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-685f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1000f, -741f))))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1103f, 2045f), vec2<f32>(850f, -970f))))))));
    var_1 = !select(vec4<bool>(var_1.x, var_1.x, true, true), !vec4<bool>(func_2(u_input.c).x, true, true, true), !vec4<bool>(true, all(vec3<bool>(false, var_1.x, false)), true, u_input.c <= u_input.c));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(718f, 274f)))))), vec2<bool>(any(!var_1.xzy), !select(var_1.x, true, var_1.x)), select(!vec4<bool>(true, true, var_1.x, false), select(!vec4<bool>(var_1.x, var_1.x, true, var_1.x), select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x)), !vec4<bool>(var_1.x, var_1.x, var_1.x, true)), !(!vec4<bool>(false, true, var_1.x, false)))), Struct_2(!vec3<bool>(true, select(false, var_1.x, var_1.x), true), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, u_input.c, 40007u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, u_input.e, 0u), vec3<u32>(1u, 0u, u_input.e))) & vec3<u32>(1875u, u_input.e, 4294967295u), var_1.wx, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, var_3.x), vec2<f32>(383f, var_3.x))), func_2(~u_input.a.x).xy, vec4<bool>(!var_1.x, any(vec3<bool>(var_1.x, false, false)), var_1.x, false))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_1 {
    global0 = countOneBits(u_input.c);
    var var_0 = vec4<f32>(-227f, -496f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-596f))) + _wgslsmith_f_op_f32(max(arg_1.x, -164f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1252f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, -1887f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_1 * arg_1), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(1510f + -943f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(459f, 1655f)), -266f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.a.x)) + 295f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(542f + -654f))))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1769f + arg_0.a.a.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1879f * -2450f), 528f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(311f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - -1000f), _wgslsmith_f_op_f32(sign(-158f))))) + func_1().b.d.a.x));
    global0 = firstLeadingBit(~(~(~14877u)));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 15137u;
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.d.x, u_input.d.x), vec2<i32>(_wgslsmith_clamp_i32(u_input.d.x | u_input.d.x, _wgslsmith_dot_vec3_i32(u_input.d.yxx, vec3<i32>(-10684i, u_input.b.x, -22516i)), -1i) >> (1u % 32u), u_input.b.x));
    let var_1 = func_4(func_1(), vec4<f32>(-1101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-func_1().a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 2033f)) + _wgslsmith_f_op_f32(f32(-1f) * -776f))));
    var var_2 = vec2<bool>(false, func_1().a.c.x || var_1.c.x);
    let var_3 = func_1().b;
    let x = u_input.a;
    s_output = StorageBuffer(~select(~(u_input.a.x & u_input.c), abs(50013u) & (8317u >> (u_input.c % 32u)), u_input.b.x >= 0i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 332f, var_1.a.x, -209f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-800f, -922f, -881f, 1478f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1005f, var_3.d.a.x, 2448f, 454f) - vec4<f32>(var_3.d.a.x, 977f, 1640f, -727f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2430f, var_3.d.a.x, var_3.d.a.x, 791f), vec4<f32>(var_3.d.a.x, -1228f, -257f, 419f), vec4<bool>(true, true, var_1.c.x, true))))), vec4<f32>(-1000f, var_1.a.x, _wgslsmith_f_op_f32(1613f - var_3.d.a.x), -704f))), vec4<f32>(var_3.d.a.x, -1809f, _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_3.d.a.x)), 457f))), -470f));
}

