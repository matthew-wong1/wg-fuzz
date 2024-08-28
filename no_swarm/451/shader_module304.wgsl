struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(225f - -1389f)));
    let var_1 = min(_wgslsmith_div_u32(countOneBits(4294967295u), u_input.a.x), u_input.a.x) ^ (4294967295u << (u_input.a.x % 32u));
    let var_2 = Struct_2(Struct_1(reverseBits(56657u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-507f, 1000f))))), vec3<u32>(firstLeadingBit(max(1u, 4294967295u)), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, var_1)), max(u_input.a.x, var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(741f, -1138f, 1484f, -149f) - vec4<f32>(1767f, 1243f, -1186f, 927f))))), 1169f, select(abs(min(vec3<u32>(var_1, u_input.a.x, 21561u), u_input.a)) ^ u_input.a, u_input.a, vec3<bool>(true, true, true)), _wgslsmith_add_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(76765u, u_input.a.x), vec2<u32>(var_1, 0u)), 48034u) & max(~4294967295u, ~var_1), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_1, var_1), vec3<u32>(8870u, 14871u, var_1) | u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -192f), _wgslsmith_f_op_f32(-649f * -765f)))));
    var_0 = -841f;
    let var_3 = false;
    return ~1u;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_3 {
    global0 = array<i32, 16>();
    var var_0 = func_3();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(-1000f * 1406f), !(!(arg_1.x >= 0u)))));
    let var_2 = Struct_2(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) * -225f), _wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.x))), var_1))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(55372u, 1u, 4294967295u), vec3<u32>(u_input.a.x, 37102u, 71888u)) ^ ~vec3<u32>(u_input.a.x, u_input.a.x, 141734u), abs(vec3<u32>(u_input.a.x, 24441u, arg_0.c.x))), u_input.a, ~vec3<u32>(1u, 1u, ~arg_0.c.x)), ~_wgslsmith_sub_u32(~firstLeadingBit(21599u), min(func_3(), 28366u)), _wgslsmith_f_op_vec2_f32(arg_0.d.zy * arg_0.b));
    global0 = array<i32, 16>();
    return Struct_3(!(_wgslsmith_f_op_f32(round(arg_0.b.x)) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.d.x, 528f, true))))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-861f, _wgslsmith_f_op_f32(f32(-1f) * -1673f))), abs(~reverseBits(vec3<u32>(u_input.a.x, 6756u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -295f, arg_1, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2043f, 1000f, arg_1, -327f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_1))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-520f * arg_1), _wgslsmith_f_op_f32(-arg_1)))), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) ^ u_input.a, 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, 1120f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1246f, arg_1, var_0.a.d.x) + _wgslsmith_f_op_vec3_f32(var_0.a.d.wwz - var_0.a.d.xww)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 168f, arg_1) - vec3<f32>(var_0.b, 1000f, -895f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -342f), -500f, -1828f), _wgslsmith_f_op_vec3_f32(var_0.a.d.zxx + vec3<f32>(arg_1, var_0.e.x, arg_1)))));
    var var_2 = var_0.a;
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(335f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(363f + arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-725f, var_1.x) * -1006f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_1.x))))));
    var var_3 = false;
    return vec3<u32>(~_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(0u, 4294967295u, 4897u), ~0u), var_0.d, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(var_0.c, var_2.c), select(var_2.c, ~vec3<u32>(var_0.c.x, var_0.c.x, 74900u), !vec3<bool>(arg_2, arg_0.a, false))), ~max(86492u, 57285u) ^ var_0.a.a));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<bool>) -> Struct_1 {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    var var_0 = Struct_1(abs(min(~u_input.a.x, ~_wgslsmith_add_u32(u_input.a.x, 4294967295u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(510f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -415f)))))), max(select(u_input.a, u_input.a >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(false, arg_2.x, arg_2.x), false)) & ~u_input.a, func_4(func_2(Struct_1(arg_1.x, vec2<f32>(-1120f, 1882f), u_input.a, vec4<f32>(-1013f, 1522f, -817f, 1534f)), u_input.a.xz), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1135f - -778f))), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(836f - 830f)), -371f, 351f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1341f - -311f) * -376f)) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-119f, -1175f, -1745f, 1137f))), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1164f, 1000f, 1593f, 655f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-801f, 1027f, 508f, -455f))))));
    var_0 = Struct_1(arg_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), _wgslsmith_f_op_f32(1348f * 1000f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(3007f, var_0.d.x) - var_0.b))))), vec3<u32>(var_0.c.x, _wgslsmith_sub_u32(u_input.a.x, 1596u) << (arg_1.x % 32u), 4294967295u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x * 1000f), _wgslsmith_f_op_f32(823f + var_0.b.x), 1027f, var_0.d.x) + var_0.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(292f, -323f, var_0.b.x, 1178f), vec4<f32>(var_0.b.x, 1135f, 1181f, -603f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b.x, var_0.b.x, -844f, var_0.d.x), vec4<f32>(var_0.b.x, -571f, -121f, var_0.b.x)))) * _wgslsmith_f_op_vec4_f32(round(var_0.d))))));
    global0 = array<i32, 16>();
    return Struct_1(var_0.c.x, _wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_clamp_vec3_u32(u_input.a, ~vec3<u32>(abs(13832u), u_input.a.x, arg_0), func_4(func_2(Struct_1(31172u, var_0.b, vec3<u32>(4294967295u, var_0.c.x, arg_0), vec4<f32>(var_0.b.x, var_0.d.x, var_0.b.x, 352f)), var_0.c.xx & vec2<u32>(0u, arg_1.x)), _wgslsmith_f_op_f32(-var_0.b.x), select(u_input.b == -19869i, arg_0 >= 49004u, false))), _wgslsmith_f_op_vec4_f32(floor(var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2156f, 1000f, -328f))))))));
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    let var_1 = Struct_2(func_1(_wgslsmith_sub_u32(~15938u, ~4294967295u), u_input.a.yx, !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 737f, func_2(Struct_1(26010u, var_0.zx, u_input.a, vec4<f32>(797f, var_0.x, var_0.x, var_0.x)), ~u_input.a.xx).a)) - _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))), u_input.a, u_input.a.x, _wgslsmith_f_op_vec2_f32(-var_0.zy));
    global0 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -min(countOneBits(vec3<i32>(63761i, 5124i, u_input.b)), -vec3<i32>(5579i, u_input.b, -13652i)), min(abs(select(vec4<u32>(0u, 28585u, u_input.a.x, u_input.a.x) >> (vec4<u32>(4294967295u, var_1.a.c.x, u_input.a.x, 39018u) % vec4<u32>(32u)), ~vec4<u32>(10728u, u_input.a.x, u_input.a.x, 71173u), true)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.a, 0u, u_input.a.x, 131884u), ~vec4<u32>(var_1.c.x, var_1.c.x, 0u, u_input.a.x)), ~(~vec4<u32>(u_input.a.x, 48980u, u_input.a.x, 1u)))));
}

