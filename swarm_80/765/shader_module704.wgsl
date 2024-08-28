struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 10723u;

var<private> global1: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    let var_0 = arg_0.wyw;
    var var_1 = true;
    let var_2 = Struct_1(vec4<u32>(~(~_wgslsmith_div_u32(u_input.a, 4294967295u)), _wgslsmith_mod_u32(u_input.c.x, ~firstLeadingBit(u_input.c.x)), reverseBits(_wgslsmith_add_u32(u_input.c.x | u_input.a, _wgslsmith_mod_u32(5147u, u_input.d))), _wgslsmith_mod_u32(u_input.d, ~u_input.d)), vec3<i32>(i32(-1i) * -1i, 0i, -2147483647i));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1249f));
    let var_4 = Struct_1(_wgslsmith_add_vec4_u32(~var_2.a, vec4<u32>(11431u, ~u_input.a, _wgslsmith_mult_u32(u_input.d, 7606u), firstLeadingBit(_wgslsmith_mod_u32(0u, u_input.c.x)))), var_2.b);
    return reverseBits(i32(-1i) * -1i);
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global0 = firstLeadingBit(arg_0.a.x);
    global0 = 4294967295u;
    var var_0 = Struct_1(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, arg_0.a.x, u_input.a, arg_0.a.x), _wgslsmith_mod_vec4_u32(u_input.c, arg_0.a))), vec3<i32>(-11837i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.e.x, arg_0.b.x, arg_0.b.x), arg_0.b), _wgslsmith_div_i32(8659i, u_input.b)), abs(1i)));
    let var_1 = true;
    var var_2 = arg_0;
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1486f, 317f), vec2<f32>(500f, -874f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1300f, -265f)))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-617f, -558f))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    global1 = all(vec2<bool>(true, false));
    global0 = 6031u ^ _wgslsmith_mult_u32(109868u, u_input.a);
    let var_0 = arg_1;
    global0 = 0u;
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(1u << (~var_0.a.x % 32u), u_input.c.x), 87238u, arg_1.a.x, select(~firstTrailingBit(0u), 48725u, true)), vec3<i32>(i32(-1i) * -min(arg_0.x, arg_0.x), arg_1.b.x, ~(-2147483647i)));
    return var_0;
}

fn func_1(arg_0: i32) -> i32 {
    global0 = _wgslsmith_mod_u32(31983u, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(~u_input.a, ~u_input.a), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 1u), all(vec2<bool>(false, true))), select(~vec2<u32>(u_input.a, u_input.d), vec2<u32>(1u, 1u), true))));
    global0 = u_input.a;
    let var_0 = func_4(-u_input.e, Struct_1(~(~u_input.c), vec3<i32>(-2147483647i, -4882i, ~arg_0) | vec3<i32>(u_input.b, -33179i, func_2(vec4<bool>(false, true, true, false)))), -579i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(u_input.c, vec3<i32>(1i, u_input.e.x, arg_0)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(214f, -680f))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(2063f * -294f), _wgslsmith_f_op_f32(-910f - 647f)), vec2<f32>(_wgslsmith_f_op_f32(147f * -689f), -1707f))), !vec2<bool>(true, any(vec3<bool>(false, false, false))))));
    return arg_0;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(abs(min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 12936u, 22169u, 126982u), u_input.c), _wgslsmith_clamp_vec4_u32(arg_2.a, vec4<u32>(1u, 13356u, 1u, 65043u), vec4<u32>(arg_1.x, 63929u, arg_1.x, 4294967295u)))) & arg_2.a, arg_2.b);
    var var_1 = vec2<bool>(any(vec3<bool>(true, true, true)), true);
    var var_2 = vec4<u32>(~(~4294967295u), 81831u, abs(_wgslsmith_mult_u32(arg_2.a.x, firstLeadingBit(_wgslsmith_mult_u32(u_input.d, u_input.d)))), ~1u);
    let var_3 = var_0;
    var_1 = !select(!(!(!vec2<bool>(var_1.x, var_1.x))), select(!vec2<bool>(false, var_1.x), vec2<bool>(true, false), vec2<bool>(any(vec3<bool>(false, var_1.x, false)), false)), select(!select(vec2<bool>(true, var_1.x), vec2<bool>(false, true), false), vec2<bool>(true, true), select(true, true, false)));
    return Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(~arg_2.a.x, 1u, ~var_3.a.x, ~var_2.x), firstLeadingBit(_wgslsmith_div_vec4_u32(var_3.a, ~vec4<u32>(var_0.a.x, 4399u, u_input.d, var_0.a.x)))), abs(var_3.b >> ((~vec3<u32>(var_0.a.x, 11877u, 124018u) >> (arg_2.a.xwz % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = -11003i;
    global0 = ~firstTrailingBit(u_input.d ^ 25681u);
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.b.zx, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(arg_0.b.x, arg_0.b.x))), u_input.e.x), arg_2.b.yx) << ((select(u_input.c.yw, vec2<u32>(~42986u, 1u), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))) >> ((_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.c.x, 1u)), arg_2.a.zy ^ arg_0.a.ww) | arg_0.a.wx) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = !(!vec4<bool>(true, true, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.e.x, arg_2.b.x, -1i), vec4<i32>(-36784i, arg_2.b.x, u_input.e.x, -33515i)) == func_4(vec2<i32>(arg_2.b.x, u_input.e.x), Struct_1(vec4<u32>(arg_2.a.x, 4294967295u, arg_2.a.x, 4294967295u), arg_0.b), u_input.e.x, arg_3.zy).b.x, false));
    let var_3 = arg_2;
    return arg_2;
}

fn func_7(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    global1 = all(vec3<bool>(arg_2.x, arg_2.x, !(arg_3.b.x == _wgslsmith_add_i32(arg_0.b.x, -26672i))));
    let var_0 = select(!(!vec3<bool>(any(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)), select(true, arg_2.x, true), arg_2.x)), vec3<bool>(any(arg_2), arg_2.x, !all(arg_2.yz)), arg_2.x);
    global0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~arg_1 | arg_0.a.wwy, vec3<u32>(~select(arg_0.a.x, u_input.a, var_0.x), _wgslsmith_div_u32(_wgslsmith_div_u32(0u, arg_0.a.x), reverseBits(4294967295u)), 1711u)), firstTrailingBit(_wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(124912u, 0u, arg_0.a.x)), ~_wgslsmith_sub_vec3_u32(u_input.c.wxx, arg_3.a.xyy))));
    var var_1 = arg_1.x;
    let var_2 = all(var_0.yx);
    return Struct_1(abs(abs(arg_0.a >> (arg_3.a % vec4<u32>(32u)))), _wgslsmith_add_vec3_i32(func_5(func_5(-arg_3.b.xy, select(u_input.c, arg_3.a, var_2), func_4(arg_0.b.zz, Struct_1(arg_3.a, arg_0.b), 11174i, vec2<f32>(-1000f, 439f))).b.xy, arg_3.a, func_6(func_5(vec2<i32>(arg_0.b.x, -8913i), arg_0.a, Struct_1(vec4<u32>(u_input.a, 4294967295u, arg_0.a.x, u_input.d), vec3<i32>(-2147483647i, u_input.e.x, u_input.b))), arg_3.a.x >> (u_input.d % 32u), arg_0, vec4<f32>(1f, 1f, 1f, 1f))).b, arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~4294967295u & u_input.d)) ^ u_input.a;
    global0 = u_input.c.x;
    global0 = _wgslsmith_dot_vec3_u32(u_input.c.yzx, ~(~vec3<u32>(10539u, 85265u, ~1u)));
    global0 = _wgslsmith_add_u32(u_input.d, u_input.c.x);
    var var_1 = func_7(func_6(func_5(vec2<i32>(_wgslsmith_div_i32(0i, u_input.e.x), func_1(u_input.e.x)), ~abs(vec4<u32>(u_input.a, u_input.d, u_input.d, u_input.c.x)), func_4(u_input.e, func_4(u_input.e, Struct_1(vec4<u32>(u_input.a, 1u, u_input.d, 87678u), vec3<i32>(26870i, u_input.b, u_input.b)), u_input.b, vec2<f32>(-1508f, -1594f)), -u_input.b, vec2<f32>(610f, -1009f))), func_4(_wgslsmith_div_vec2_i32(abs(u_input.e), u_input.e), func_5(vec2<i32>(1i, -26482i), u_input.c, Struct_1(vec4<u32>(u_input.a, 56582u, 4294967295u, u_input.d), vec3<i32>(-54499i, u_input.b, -11445i))), -3358i, vec2<f32>(-1898f, -579f)).a.x, Struct_1(u_input.c & ~vec4<u32>(u_input.a, u_input.a, 9295u, u_input.a), max(firstLeadingBit(vec3<i32>(u_input.b, u_input.e.x, u_input.b)), func_4(vec2<i32>(-1i, 2147483647i), Struct_1(u_input.c, vec3<i32>(u_input.b, u_input.b, -2147483647i)), u_input.b, vec2<f32>(233f, 601f)).b)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1872f, 583f, 281f, 1602f) * vec4<f32>(1358f, 1000f, -636f, -1000f)), vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), 810f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -770f))))), ~vec3<u32>(_wgslsmith_mult_u32(~u_input.c.x, 0u), ~_wgslsmith_add_u32(40279u, 24769u), 24592u), select(vec4<bool>(false, true, (u_input.d <= 51411u) || true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)))), vec4<bool>(true, true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true))), func_6(func_5(vec2<i32>(~1i, ~u_input.e.x), u_input.c, func_4(u_input.e, Struct_1(u_input.c, vec3<i32>(-19625i, 63357i, -59902i)), 1i, _wgslsmith_div_vec2_f32(vec2<f32>(-1334f, -199f), vec2<f32>(765f, 1101f)))), 2376u, func_4(select(firstTrailingBit(vec2<i32>(-27926i, u_input.e.x)), vec2<i32>(u_input.b, 2147483647i), vec2<bool>(true, false)), func_6(Struct_1(vec4<u32>(u_input.d, 18108u, 9322u, u_input.a), vec3<i32>(u_input.e.x, 2147483647i, -1i)), u_input.a | 1u, Struct_1(u_input.c, vec3<i32>(39827i, -2147483647i, 1896i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2005f, -1000f, 374f, -138f) + vec4<f32>(-1255f, -1000f, -476f, 1051f))), 1i, vec2<f32>(_wgslsmith_f_op_f32(539f - 508f), _wgslsmith_f_op_f32(max(409f, 425f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1288f, 298f, -293f, -952f) - vec4<f32>(711f, 1809f, -1000f, -431f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(293f, -1552f, -2527f, -499f)))))));
    global1 = -1877f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(718f)) + _wgslsmith_f_op_f32(-263f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1086f * -697f)))));
    let var_2 = firstTrailingBit(min(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, u_input.c.x, var_1.a.x), u_input.c.wyz ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 37795u, 100959u), var_1.a.wzy)), _wgslsmith_dot_vec3_u32(countOneBits(var_1.a.zyx), ~vec3<u32>(6401u, 39806u, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1352f, -420f, 1536f, _wgslsmith_f_op_f32(f32(-1f) * -791f)))), u_input.e.x, u_input.e.x);
}

