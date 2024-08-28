struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: u32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_4,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(19663i, vec4<bool>(true, true, false, false)), -1267f, Struct_1(2147483647i, vec4<bool>(true, true, true, false))), Struct_2(Struct_1(-47122i, vec4<bool>(true, true, true, false)), -1442f, Struct_1(28553i, vec4<bool>(true, true, true, false))), Struct_2(Struct_1(-7973i, vec4<bool>(true, true, true, false)), 1223f, Struct_1(-7432i, vec4<bool>(true, false, true, true))), Struct_2(Struct_1(53024i, vec4<bool>(false, false, true, false)), 843f, Struct_1(-1i, vec4<bool>(true, true, false, false))), Struct_2(Struct_1(0i, vec4<bool>(false, false, true, false)), -600f, Struct_1(0i, vec4<bool>(false, false, false, false))), Struct_2(Struct_1(0i, vec4<bool>(false, false, true, true)), -174f, Struct_1(16059i, vec4<bool>(false, true, true, true))), Struct_2(Struct_1(-1i, vec4<bool>(false, false, false, false)), 1772f, Struct_1(24837i, vec4<bool>(true, false, true, false))), Struct_2(Struct_1(-31744i, vec4<bool>(false, false, false, true)), 1890f, Struct_1(0i, vec4<bool>(false, false, true, false))), Struct_2(Struct_1(1i, vec4<bool>(false, false, false, true)), 1556f, Struct_1(i32(-2147483648), vec4<bool>(true, false, true, false))), Struct_2(Struct_1(i32(-2147483648), vec4<bool>(true, false, true, false)), 430f, Struct_1(-38581i, vec4<bool>(false, true, false, true))), Struct_2(Struct_1(-1i, vec4<bool>(false, false, false, false)), -2318f, Struct_1(37211i, vec4<bool>(false, false, true, true))), Struct_2(Struct_1(2147483647i, vec4<bool>(false, true, true, true)), 1582f, Struct_1(-27041i, vec4<bool>(false, false, true, false))), Struct_2(Struct_1(1i, vec4<bool>(false, true, false, true)), -1688f, Struct_1(-1i, vec4<bool>(false, false, true, true))), Struct_2(Struct_1(-29229i, vec4<bool>(true, true, false, true)), -137f, Struct_1(-3106i, vec4<bool>(true, true, true, true))), Struct_2(Struct_1(-52235i, vec4<bool>(true, true, false, false)), 565f, Struct_1(-20877i, vec4<bool>(true, false, false, true))), Struct_2(Struct_1(-3599i, vec4<bool>(false, true, false, false)), -1245f, Struct_1(12040i, vec4<bool>(false, false, false, true))), Struct_2(Struct_1(33183i, vec4<bool>(true, true, false, false)), -630f, Struct_1(-1i, vec4<bool>(false, false, false, false))), Struct_2(Struct_1(-58660i, vec4<bool>(true, true, false, true)), -262f, Struct_1(24130i, vec4<bool>(true, true, false, false))));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec2<bool> {
    global0 = array<Struct_2, 18>();
    var var_0 = abs(vec3<u32>(1u, 1u, 1u));
    let var_1 = Struct_5(~2326i, any(arg_1.a), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-896f, arg_1.d.b))))), Struct_3(vec2<bool>(true, true), _wgslsmith_mod_i32(select(u_input.a, arg_0.c.a, arg_0.a.b.x), i32(-1i) * -2147483647i), Struct_2(arg_1.e, -1465f, arg_0.c), arg_0, arg_1.d.c), ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 4294967295u)), max(var_0.xx, var_0.yx)), vec3<bool>(true, true, true), arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-717f, _wgslsmith_f_op_f32(-arg_0.b)))));
    let var_2 = vec4<u32>(4294967295u, _wgslsmith_mod_u32(var_0.x, 4294967295u), reverseBits(~select(_wgslsmith_clamp_u32(var_0.x, 24375u, 1u), var_1.c.c << (21371u % 32u), select(var_1.b, arg_0.a.b.x, var_1.b))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(48850u, var_0.x) | ~var_0.yz, ~vec2<u32>(var_0.x, var_1.c.c) ^ vec2<u32>(1u, 31168u)));
    let var_3 = arg_1;
    return select(select(select(vec2<bool>(all(vec4<bool>(var_3.d.a.b.x, var_3.e.b.x, true, true)), true), !(!vec2<bool>(arg_0.c.b.x, false)), all(!vec3<bool>(false, var_3.a.x, var_3.e.b.x))), !select(var_1.c.e.b.xz, var_1.c.d.xy, var_1.b & var_1.b), arg_0.c.b.yx), var_1.c.b.d.c.b.yz, !var_3.a);
}

fn func_2(arg_0: u32) -> f32 {
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    let var_0 = true;
    var var_1 = Struct_3(!select(!func_3(Struct_2(Struct_1(u_input.a, vec4<bool>(true, true, true, var_0)), -1196f, Struct_1(u_input.a, vec4<bool>(true, true, var_0, var_0))), Struct_3(vec2<bool>(var_0, var_0), -1363i, Struct_2(Struct_1(58987i, vec4<bool>(true, true, var_0, var_0)), -546f, Struct_1(2147483647i, vec4<bool>(false, var_0, false, false))), Struct_2(Struct_1(u_input.a, vec4<bool>(var_0, var_0, true, true)), -962f, Struct_1(-23583i, vec4<bool>(false, true, false, var_0))), Struct_1(29525i, vec4<bool>(false, var_0, true, var_0)))), select(vec2<bool>(var_0, true), !vec2<bool>(var_0, false), func_3(Struct_2(Struct_1(2147483647i, vec4<bool>(var_0, true, var_0, var_0)), 931f, Struct_1(u_input.a, vec4<bool>(true, true, var_0, false))), Struct_3(vec2<bool>(var_0, false), u_input.a, global0[_wgslsmith_index_u32(46298u, 18u)], Struct_2(Struct_1(u_input.a, vec4<bool>(false, var_0, false, false)), 701f, Struct_1(u_input.a, vec4<bool>(var_0, var_0, var_0, false))), Struct_1(u_input.a, vec4<bool>(false, var_0, var_0, true))))), true), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, -_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, 31553i, -1i))) >> (select(select(vec4<u32>(19315u, arg_0, arg_0, 11143u), vec4<u32>(arg_0, 1u, 4294967295u, 27053u), true), vec4<u32>(arg_0, 1u, arg_0, 0u), !vec4<bool>(false, false, var_0, true)) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~(~arg_0)), _wgslsmith_sub_u32(abs(firstTrailingBit(arg_0)), arg_0)), 18u)], Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i), select(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(u_input.a, u_input.a), vec2<bool>(var_0, true))), select(!vec4<bool>(var_0, var_0, var_0, var_0), !vec4<bool>(false, var_0, true, false), vec4<bool>(false, var_0, false, var_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-477f, -1929f)) + _wgslsmith_f_op_f32(min(1283f, 349f))))), Struct_1(i32(-1i) * -22533i, !select(vec4<bool>(true, true, true, var_0), vec4<bool>(false, var_0, var_0, var_0), var_0))), Struct_1(u_input.a, vec4<bool>(true & any(vec2<bool>(var_0, var_0)), any(!vec4<bool>(var_0, var_0, var_0, false)), true, !(u_input.a != 26210i))));
    global0 = array<Struct_2, 18>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1395f - var_1.c.b)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(405f, 1120f))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-661f * -941f), 1000f)))));
    let var_1 = Struct_1(abs(0i), !(!vec4<bool>(true, arg_0.x, arg_0.x, true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1764f))), -505f));
    let var_3 = max(1u, 0u);
    var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(539f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1127f - 146f) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1432f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_3)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1999f))))));
    return !arg_0;
}

fn func_4(arg_0: Struct_5) -> u32 {
    let var_0 = arg_0.c.b.d;
    global0 = array<Struct_2, 18>();
    let var_1 = _wgslsmith_f_op_f32(-915f * var_0.b);
    global0 = array<Struct_2, 18>();
    let var_2 = i32(-1i) * -_wgslsmith_sub_i32(max(-u_input.a, 2147483647i), ~min(var_0.c.a, -10399i));
    return ~countOneBits(2601u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_5(abs(1i), any(func_1(vec3<bool>(false, false, false), u_input.a)), Struct_4(vec2<f32>(1f, 1f), Struct_3(func_1(vec3<bool>(true, true, false), 1i).xz, _wgslsmith_sub_i32(u_input.a, u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(33512u, 28879u), vec2<u32>(4294967295u, 56713u)), 18u)], Struct_2(Struct_1(u_input.a, vec4<bool>(false, true, false, true)), 1000f, Struct_1(u_input.a, vec4<bool>(true, true, false, true))), Struct_1(48437i, vec4<bool>(true, false, false, true))), 1u, vec3<bool>(true, true, true), Struct_1(-u_input.a, vec4<bool>(false, false, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-334f + -446f)))));
    var var_1 = true;
    global0 = array<Struct_2, 18>();
    let var_2 = Struct_2(Struct_1(~u_input.a, vec4<bool>(select(true, u_input.a >= -2147483647i, true), !(var_0 <= 34067u), true, var_0 < _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 37219u, var_0, var_0), vec4<u32>(4294967295u, var_0, 0u, var_0)))), 1000f, Struct_1(u_input.a & -u_input.a, !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true))));
    let var_3 = ~(i32(-1i) * -var_2.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(vec4<u32>(67001u, 4294967295u, 25502u, var_0), ~vec4<u32>(var_0, 1u, 4906u, var_0))), var_0);
}

