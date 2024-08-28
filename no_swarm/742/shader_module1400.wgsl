struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_sub_i32(min(i32(-1i) * -13075i, 2147483647i), u_input.b.x) > countOneBits(_wgslsmith_sub_i32(i32(-1i) * -27082i, u_input.c));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -869f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-179f, arg_2.x)) + _wgslsmith_f_op_f32(-261f - arg_2.x))), -124f)));
    var var_2 = 1u == abs(max(40281u, _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(27699u, arg_1.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(arg_2 + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2), _wgslsmith_f_op_vec3_f32(sign(arg_2))));
    var_2 = -1i >= u_input.b.x;
    return arg_0.x;
}

fn func_2(arg_0: bool) -> f32 {
    return -1986f;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_4) -> Struct_1 {
    var var_0 = countOneBits(~arg_2.b.x);
    var var_1 = arg_1.x;
    var_0 = firstLeadingBit(0u);
    var var_2 = vec3<bool>(arg_3.a.x, any(select(select(select(vec4<bool>(true, arg_3.a.x, true, arg_0.x), vec4<bool>(arg_0.x, true, true, false), true), select(vec4<bool>(true, true, true, arg_3.a.x), vec4<bool>(arg_3.a.x, false, false, true), arg_0.x), u_input.c == arg_1.x), vec4<bool>(!arg_3.a.x, true, any(vec3<bool>(arg_0.x, arg_3.a.x, false)), all(arg_0.yxy)), arg_0)), true);
    var var_3 = Struct_5(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(0i, u_input.b.x), -2147483647i, -5364i), arg_1 | u_input.b.yyw), u_input.b.wyx), 1338f, Struct_1(u_input.b.x));
    return var_3.c;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> bool {
    var var_0 = func_3(vec4<bool>(!func_1(!vec2<bool>(false, arg_1), vec3<u32>(0u, 23920u, u_input.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-765f, -253f, -417f) - vec3<f32>(-723f, -2299f, 102f))), ~arg_2.x <= _wgslsmith_clamp_u32(min(u_input.d.x, arg_2.x), arg_2.x, ~5855u), true, arg_2.x > firstTrailingBit(~arg_2.x)), u_input.b.yxw, Struct_3(vec4<f32>(_wgslsmith_div_f32(170f, _wgslsmith_f_op_f32(select(1000f, -955f, true))), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1968f, 894f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -754f)))), vec2<u32>(~min(4294967295u, 4294967295u), 0u), _wgslsmith_sub_vec2_u32(u_input.d, _wgslsmith_clamp_vec2_u32(u_input.d, abs(vec2<u32>(1u, arg_2.x)), u_input.d))), Struct_4(!(!(!vec3<bool>(true, arg_1, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-646f, -637f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(139f, 757f))))), vec3<u32>(u_input.d.x, arg_2.x, ~(arg_2.x & 65206u))));
    let var_1 = Struct_4(vec3<bool>(false, (0u >> (_wgslsmith_div_u32(arg_2.x, 0u) % 32u)) > reverseBits(arg_2.x), 1000f > _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(985f, -799f), vec2<f32>(-283f, -1598f))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-222f, 551f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(242f, -706f) + vec2<f32>(2002f, -602f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(217f, 148f)), _wgslsmith_div_vec2_f32(vec2<f32>(574f, 427f), vec2<f32>(-700f, -420f)))))), firstLeadingBit(~arg_2 << (arg_2 % vec3<u32>(32u))) | vec3<u32>(~(u_input.d.x & arg_2.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(36128u, u_input.a, 6385u, arg_2.x), _wgslsmith_mod_vec4_u32(vec4<u32>(3529u, 1u, u_input.a, 1u), vec4<u32>(u_input.d.x, arg_2.x, 0u, arg_2.x))), ~_wgslsmith_add_u32(arg_2.x, 1u)));
    var_0 = func_3(!(!select(!vec4<bool>(var_1.a.x, arg_1, arg_1, var_1.a.x), select(vec4<bool>(var_1.a.x, true, false, false), vec4<bool>(var_1.a.x, true, true, var_1.a.x), vec4<bool>(true, true, true, false)), false)), vec3<i32>(arg_0.a & ~(arg_0.a | 42520i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, ~arg_0.a, arg_0.a & -2918i), vec3<i32>(~1i, arg_0.a ^ var_0.a, _wgslsmith_mult_i32(var_0.a, 8612i))), var_0.a | min(-1i, arg_0.a)), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(205f)), var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -264f))), _wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.d), var_1.c.xy, arg_2.yz) << (_wgslsmith_mod_vec2_u32(abs(arg_2.yy), u_input.d) % vec2<u32>(32u)), ~var_1.c.yz), Struct_4(select(!vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(true, true, var_1.b.x >= 3957f), var_0.a < firstLeadingBit(1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, 301f))), vec3<u32>(u_input.a, max(var_1.c.x, _wgslsmith_mult_u32(var_1.c.x, u_input.d.x)), ~_wgslsmith_dot_vec2_u32(u_input.d, u_input.d))));
    var var_2 = Struct_1(11427i);
    var_0 = Struct_1(~var_2.a);
    return !arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = func_4(func_3(vec4<bool>(!func_1(vec2<bool>(false, true), vec3<u32>(u_input.a, u_input.a, 1u), vec3<f32>(148f, -1196f, 140f)), 1f == _wgslsmith_f_op_f32(func_2(var_0)), false, true), vec3<i32>(~(-1i) | u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.c), -u_input.b), countOneBits(u_input.b.x)), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-1024f - 2688f), -371f, 2021f, -294f), u_input.d, u_input.d), Struct_4(vec3<bool>(func_1(vec2<bool>(var_0, var_0), vec3<u32>(u_input.a, u_input.d.x, u_input.d.x), vec3<f32>(-1000f, -933f, -2326f)), true, false), vec2<f32>(_wgslsmith_f_op_f32(-980f - 1267f), _wgslsmith_f_op_f32(-1639f - 751f)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 36126u), vec3<u32>(4683u, u_input.d.x, u_input.d.x)), vec3<u32>(0u, 30022u, 94313u)))), true, vec3<u32>(32154u, u_input.a, 568u));
    let var_2 = vec3<bool>(!(!(!(u_input.b.x != u_input.b.x))), false, true);
    var var_3 = select(false, true, func_1(select(vec2<bool>(var_0, all(var_2.yz)), var_2.xx, false), vec3<u32>(~1u & u_input.d.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a, 4294967295u), countOneBits(vec3<u32>(u_input.d.x, u_input.a, 37718u))), ~(~1u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1325f, -139f, 1630f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(537f, -731f, 176f))))));
    var var_4 = Struct_3(vec4<f32>(1743f, _wgslsmith_f_op_f32(-1254f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1047f) + _wgslsmith_f_op_f32(f32(-1f) * -322f))), _wgslsmith_f_op_f32(f32(-1f) * -131f), _wgslsmith_f_op_f32(-961f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(759f)) * -246f))), vec2<u32>(_wgslsmith_clamp_u32(~u_input.d.x & (0u << (u_input.d.x % 32u)), u_input.d.x, ~u_input.a), ~u_input.a), vec2<u32>(_wgslsmith_div_u32(max(~u_input.a, ~u_input.d.x), 4294967295u), ~(~(u_input.a >> (57283u % 32u)))));
    var var_5 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.a.x)))), var_4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f - _wgslsmith_f_op_f32(var_4.a.x * -209f)))), vec2<u32>(var_4.b.x, ~(~0u)), select(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.b.x, 20083u, var_4.c.x, var_4.c.x), vec4<u32>(119569u, u_input.a, 0u, var_4.b.x)), ~(~var_4.c.x)), u_input.d, !var_2.yx));
    var var_6 = countOneBits(vec4<u32>(_wgslsmith_div_u32(~_wgslsmith_mult_u32(var_5.c.x, 4294967295u), abs(var_5.c.x) | ~var_5.b.x), var_5.b.x, 1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1790f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f))), _wgslsmith_f_op_f32(trunc(-241f)), var_4.a.x));
}

