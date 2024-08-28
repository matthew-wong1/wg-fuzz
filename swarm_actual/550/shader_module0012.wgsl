struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(771f, 1215f, 1792f, 1261f);

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(299f, vec2<f32>(369f, -563f)), Struct_2(-1000f, vec2<f32>(-226f, -1192f)), Struct_2(-2564f, vec2<f32>(107f, 2075f)), Struct_2(647f, vec2<f32>(1546f, -332f)), Struct_2(696f, vec2<f32>(333f, 2022f)), Struct_2(-221f, vec2<f32>(727f, -1127f)), Struct_2(1089f, vec2<f32>(-1498f, -2546f)), Struct_2(121f, vec2<f32>(711f, -628f)), Struct_2(1497f, vec2<f32>(782f, 123f)), Struct_2(1000f, vec2<f32>(1396f, 1038f)), Struct_2(-1000f, vec2<f32>(-1993f, 248f)), Struct_2(835f, vec2<f32>(1994f, 323f)), Struct_2(1000f, vec2<f32>(-263f, -1725f)), Struct_2(634f, vec2<f32>(-1275f, -1054f)), Struct_2(-545f, vec2<f32>(187f, -115f)), Struct_2(187f, vec2<f32>(-777f, 2041f)), Struct_2(-1000f, vec2<f32>(-113f, -193f)), Struct_2(-1480f, vec2<f32>(1000f, -526f)), Struct_2(1261f, vec2<f32>(1608f, -249f)), Struct_2(249f, vec2<f32>(781f, 1137f)), Struct_2(-620f, vec2<f32>(-1000f, 699f)), Struct_2(2263f, vec2<f32>(-698f, 800f)), Struct_2(-525f, vec2<f32>(-2047f, 973f)), Struct_2(-1302f, vec2<f32>(-541f, 1246f)), Struct_2(1002f, vec2<f32>(-1001f, 701f)), Struct_2(1132f, vec2<f32>(835f, -219f)), Struct_2(-1010f, vec2<f32>(-1117f, -935f)), Struct_2(1000f, vec2<f32>(-1063f, -1230f)), Struct_2(190f, vec2<f32>(329f, -212f)), Struct_2(967f, vec2<f32>(210f, 811f)));

var<private> global2: array<Struct_4, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    return firstTrailingBit(18072i);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = u_input.a.x;
    global1 = array<Struct_2, 30>();
    let var_1 = Struct_4(Struct_3(select(select(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_1.x), vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_1.x), arg_0.a.x), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.x, false, true, false), vec4<bool>(arg_1.x, false, false, arg_0.a.x)), !select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_1.x, false), vec4<bool>(true, arg_1.x, arg_0.a.x, arg_0.a.x), vec4<bool>(true, true, arg_0.a.x, arg_0.a.x))), Struct_2(_wgslsmith_div_f32(-510f, global0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0.yx)) + _wgslsmith_f_op_vec2_f32(-global0.zw))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1264f * global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -775f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1024f, -890f)), global0.xy)), 52188u));
    global1 = array<Struct_2, 30>();
    global2 = array<Struct_4, 6>();
    return select(select(select(vec4<bool>(all(var_1.a.a.yzy), all(vec3<bool>(true, arg_1.x, arg_0.a.x)), all(var_1.a.a), !arg_0.a.x), select(!vec4<bool>(arg_0.a.x, false, false, false), vec4<bool>(false, false, arg_1.x, true), select(vec4<bool>(arg_0.a.x, true, true, true), var_1.a.a, vec4<bool>(arg_1.x, var_1.a.a.x, true, var_1.a.a.x))), !(!vec4<bool>(arg_1.x, arg_0.a.x, var_1.a.a.x, arg_1.x))), vec4<bool>(true, any(select(arg_0.a.yx, var_1.a.a.zz, arg_1)), all(vec2<bool>(var_1.a.a.x, arg_0.a.x)) && var_1.a.a.x, true), !(!(var_1.a.d >= u_input.b.x))), vec4<bool>(countOneBits(_wgslsmith_div_u32(0u, 20031u)) <= arg_0.c.x, arg_1.x, true, false & all(!arg_0.a)), vec4<bool>(arg_0.a.x, var_1.a.a.x, ((14824i >> (arg_0.c.x % 32u)) < (u_input.d | -301i)) == arg_0.a.x, !(!arg_0.a.x)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(640f, arg_2.x, arg_0, arg_0)))));
    var var_0 = 11786i <= (_wgslsmith_sub_i32(u_input.d, 6446i) | ~68523i);
    var var_1 = !select(!vec4<bool>(true, false, any(vec4<bool>(true, false, true, false)), 1u == u_input.a.x), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), any(vec2<bool>(true, false))), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), false), true), !vec4<bool>(true, true, select(true, true, false), true));
    var var_2 = Struct_4(Struct_3(vec4<bool>(false, !var_1.x, !any(vec3<bool>(false, true, var_1.x)), any(var_1.yww)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-672f, -156f) - vec2<f32>(arg_2.x, arg_0)))), arg_3, 47009u));
    var_1 = var_2.a.a;
    return Struct_3(func_4(Struct_1(select(var_2.a.a.wwz, vec3<bool>(var_2.a.a.x, false, var_2.a.a.x), !vec3<bool>(var_1.x, false, var_2.a.a.x)), func_3(), (vec4<u32>(4294967295u, 1104u, 2319u, u_input.a.x) & vec4<u32>(arg_1, 1u, 10379u, 0u)) >> (vec4<u32>(61080u, 72747u, u_input.c, 0u) % vec4<u32>(32u))), vec2<bool>(true, true)), Struct_2(_wgslsmith_f_op_f32(max(arg_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-519f, var_2.a.c.a)))), _wgslsmith_f_op_vec2_f32(step(var_2.a.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -500f)))))), var_2.a.c, ~30333u);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -477f), -135f));
    var_0 = global0.x;
    let var_1 = func_2(811f, ~u_input.a.x, global0.ww, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(649f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xx - _wgslsmith_f_op_vec2_f32(abs(global0.xx))))));
    global2 = array<Struct_4, 6>();
    var_0 = -1139f;
    return func_2(var_1.b.a, ~(~_wgslsmith_dot_vec4_u32(abs(arg_0.c), _wgslsmith_mod_vec4_u32(arg_1, vec4<u32>(45942u, 44939u, arg_0.c.x, 37778u)))), global0.yy, func_2(_wgslsmith_f_op_f32(abs(-823f)), _wgslsmith_sub_u32(95353u, countOneBits(_wgslsmith_dot_vec3_u32(u_input.b.wwz, vec3<u32>(6480u, arg_1.x, 0u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.b + global0.xz)), Struct_2(_wgslsmith_div_f32(global0.x, -209f), _wgslsmith_f_op_vec2_f32(global0.ww * global0.yy))).b).b;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1389f, global0.x, 177f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(global0.x)), arg_0, 967f))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f - -217f) * _wgslsmith_f_op_f32(step(-959f, 1233f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(true, arg_1.a.x, true), 30062i, vec4<u32>(4294967295u, 93174u, u_input.c, 4294967295u)), vec4<u32>(arg_1.d, 8978u, arg_1.d, u_input.b.x), vec3<bool>(true, arg_2, false)).a - -198f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), -838f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(func_2(arg_1.c.b.x, 1u, arg_1.c.b, Struct_2(-881f, vec2<f32>(-671f, 670f))).c.a)), 474f)));
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x * 667f), 1632f, _wgslsmith_f_op_f32(arg_1.c.b.x * arg_0), 209f))), vec4<f32>(-2509f, _wgslsmith_f_op_f32(-1366f * arg_0), 1307f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.b.b.x, 620f))) + _wgslsmith_f_op_f32(sign(arg_1.b.b.x))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_1.c.a), -465f);
    let var_0 = Struct_3(vec4<bool>(!any(arg_1.a), false, true, any(vec4<bool>(arg_1.a.x, false, any(arg_1.a.xw), false))), func_1(Struct_1(select(vec3<bool>(arg_2, false, false), vec3<bool>(true, arg_1.a.x, arg_2), true), _wgslsmith_div_i32(-1i, 53002i << (0u % 32u)), u_input.b), (vec4<u32>(u_input.c, u_input.b.x, 102167u, 0u) | (u_input.b ^ u_input.b)) << (~(~vec4<u32>(arg_1.d, 0u, u_input.a.x, u_input.c)) % vec4<u32>(32u)), !(!(!vec3<bool>(arg_2, false, false)))), arg_1.b, countOneBits(4294967295u) >> (_wgslsmith_clamp_u32(abs(1u), ~(0u << (u_input.c % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 14797u, 17379u), u_input.b.yzy)) % 32u));
    let var_1 = global0.zyz;
    return var_0.a.x;
}

fn func_6(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_mult_u32(arg_2.x, u_input.b.x);
    global1 = array<Struct_2, 30>();
    global1 = array<Struct_2, 30>();
    var var_1 = reverseBits(vec4<i32>(u_input.d, 1i, -65734i, u_input.d) ^ max(-vec4<i32>(u_input.d, u_input.d, -2147483647i, u_input.d), vec4<i32>(firstTrailingBit(u_input.d), reverseBits(u_input.d), u_input.d, -2147483647i)));
    var_0 = abs(87012u);
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))), 5536u, global0.yy, global1[_wgslsmith_index_u32(1u & u_input.a.x, 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(_wgslsmith_f_op_f32(f32(-1f) * -256f), Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), Struct_2(_wgslsmith_f_op_f32(-587f * global0.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, global0.x)))), func_1(Struct_1(vec3<bool>(false, true, true), -2147483647i, u_input.b), min(u_input.b, u_input.b), vec3<bool>(true, false, true)), select(0u, 22076u, true)), all(vec3<bool>(true, true, true)), 31800i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(519f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-192f - _wgslsmith_div_f32(1092f, global0.x))))), u_input.b);
    global2 = array<Struct_4, 6>();
    var var_1 = _wgslsmith_add_i32(u_input.d, abs(-firstTrailingBit(-2147483647i)) >> (var_0.d % 32u));
    global1 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(var_0.a.x, global0.x, vec4<u32>(4294967295u, 1u, u_input.b.x, 34113u)).b.b.x * global0.x), _wgslsmith_f_op_f32(max(370f, _wgslsmith_f_op_f32(712f * -1000f)))) - _wgslsmith_f_op_f32(max(var_0.c.a, var_0.b.a))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a, 465f, 447f)), _wgslsmith_f_op_vec3_f32(global0.yzx + global0.wyz))))))));
}

