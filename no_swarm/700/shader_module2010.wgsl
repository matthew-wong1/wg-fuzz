struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_1(vec2<i32>(42415i, 0i)), Struct_3(686f), Struct_2(Struct_1(vec2<i32>(2147483647i, 1i)), 2040f), vec3<u32>(54756u, 96293u, 1u)), Struct_4(Struct_1(vec2<i32>(-1i, 48599i)), Struct_3(958f), Struct_2(Struct_1(vec2<i32>(21088i, 5045i)), 1918f), vec3<u32>(15042u, 6184u, 2524u)), Struct_4(Struct_1(vec2<i32>(i32(-2147483648), -431i)), Struct_3(916f), Struct_2(Struct_1(vec2<i32>(-48267i, -4832i)), -1483f), vec3<u32>(3615u, 10160u, 43734u)), Struct_4(Struct_1(vec2<i32>(13436i, -6941i)), Struct_3(-288f), Struct_2(Struct_1(vec2<i32>(2147483647i, 38808i)), -851f), vec3<u32>(1u, 29003u, 46395u)), Struct_4(Struct_1(vec2<i32>(0i, 2147483647i)), Struct_3(1304f), Struct_2(Struct_1(vec2<i32>(-42417i, 0i)), 609f), vec3<u32>(47299u, 10978u, 1u)), Struct_4(Struct_1(vec2<i32>(-64642i, -23183i)), Struct_3(-1454f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 1i)), 1316f), vec3<u32>(32492u, 21872u, 20535u)), Struct_4(Struct_1(vec2<i32>(14595i, 1i)), Struct_3(-472f), Struct_2(Struct_1(vec2<i32>(20183i, 2147483647i)), 1000f), vec3<u32>(12543u, 4294967295u, 1u)), Struct_4(Struct_1(vec2<i32>(-43293i, 0i)), Struct_3(1405f), Struct_2(Struct_1(vec2<i32>(1i, i32(-2147483648))), -839f), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_4(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_3(205f), Struct_2(Struct_1(vec2<i32>(29647i, 1i)), -1446f), vec3<u32>(49449u, 4294967295u, 1u)), Struct_4(Struct_1(vec2<i32>(1i, 35419i)), Struct_3(-270f), Struct_2(Struct_1(vec2<i32>(-37448i, 1i)), 1599f), vec3<u32>(22166u, 22623u, 0u)), Struct_4(Struct_1(vec2<i32>(i32(-2147483648), 39569i)), Struct_3(301f), Struct_2(Struct_1(vec2<i32>(-1i, 1i)), -1112f), vec3<u32>(4294967295u, 50853u, 35009u)), Struct_4(Struct_1(vec2<i32>(i32(-2147483648), 33871i)), Struct_3(-521f), Struct_2(Struct_1(vec2<i32>(-1i, -1i)), -598f), vec3<u32>(1u, 1u, 0u)), Struct_4(Struct_1(vec2<i32>(2147483647i, 2147483647i)), Struct_3(-2167f), Struct_2(Struct_1(vec2<i32>(1i, -1i)), -1514f), vec3<u32>(1u, 19692u, 9233u)), Struct_4(Struct_1(vec2<i32>(-40919i, -1i)), Struct_3(-630f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 31130i)), -2156f), vec3<u32>(1u, 0u, 19088u)), Struct_4(Struct_1(vec2<i32>(-12305i, i32(-2147483648))), Struct_3(188f), Struct_2(Struct_1(vec2<i32>(28126i, 1i)), 187f), vec3<u32>(17777u, 20080u, 4380u)), Struct_4(Struct_1(vec2<i32>(1i, -4162i)), Struct_3(512f), Struct_2(Struct_1(vec2<i32>(-41238i, -26253i)), -1000f), vec3<u32>(1u, 132750u, 4294967295u)), Struct_4(Struct_1(vec2<i32>(-63808i, 0i)), Struct_3(921f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 1i)), -2038f), vec3<u32>(0u, 0u, 1u)), Struct_4(Struct_1(vec2<i32>(2147483647i, 2147483647i)), Struct_3(517f), Struct_2(Struct_1(vec2<i32>(75735i, 16544i)), -1000f), vec3<u32>(4294967295u, 54469u, 1u)), Struct_4(Struct_1(vec2<i32>(2147483647i, 26145i)), Struct_3(-1418f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i)), 196f), vec3<u32>(4294967295u, 4294967295u, 7548u)), Struct_4(Struct_1(vec2<i32>(-1i, -7406i)), Struct_3(-481f), Struct_2(Struct_1(vec2<i32>(2147483647i, -24328i)), -1000f), vec3<u32>(0u, 4294967295u, 0u)), Struct_4(Struct_1(vec2<i32>(0i, -37740i)), Struct_3(418f), Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i)), -2063f), vec3<u32>(23450u, 61945u, 15765u)), Struct_4(Struct_1(vec2<i32>(-1i, 3106i)), Struct_3(-174f), Struct_2(Struct_1(vec2<i32>(0i, -25199i)), 841f), vec3<u32>(37692u, 4294967295u, 1u)), Struct_4(Struct_1(vec2<i32>(-21571i, -17436i)), Struct_3(-1071f), Struct_2(Struct_1(vec2<i32>(2147483647i, -11468i)), 496f), vec3<u32>(18046u, 56665u, 37625u)), Struct_4(Struct_1(vec2<i32>(11796i, 25579i)), Struct_3(-871f), Struct_2(Struct_1(vec2<i32>(-4962i, 4266i)), 2440f), vec3<u32>(4294967295u, 4294967295u, 2702u)), Struct_4(Struct_1(vec2<i32>(2147483647i, -6343i)), Struct_3(1025f), Struct_2(Struct_1(vec2<i32>(-778i, -6960i)), 995f), vec3<u32>(0u, 4294967295u, 1u)), Struct_4(Struct_1(vec2<i32>(-7379i, -31221i)), Struct_3(-1530f), Struct_2(Struct_1(vec2<i32>(-1i, 48097i)), -901f), vec3<u32>(1u, 42932u, 1u)), Struct_4(Struct_1(vec2<i32>(-2030i, -1i)), Struct_3(1000f), Struct_2(Struct_1(vec2<i32>(-9198i, 2147483647i)), 1427f), vec3<u32>(35196u, 16226u, 4294967295u)), Struct_4(Struct_1(vec2<i32>(-1i, -1i)), Struct_3(-1575f), Struct_2(Struct_1(vec2<i32>(54002i, 0i)), -344f), vec3<u32>(21590u, 4294967295u, 54009u)), Struct_4(Struct_1(vec2<i32>(-42449i, i32(-2147483648))), Struct_3(1259f), Struct_2(Struct_1(vec2<i32>(720i, 54150i)), -142f), vec3<u32>(0u, 1u, 67448u)));

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(461f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1382f)))) + _wgslsmith_div_f32(202f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1474f, -606f)), 1441f)))));
    let var_1 = min(4294967295u, firstTrailingBit(18074u));
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -776f, var_0)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1321f, 286f, var_0, -1639f))), vec4<f32>(-752f, -407f, var_0, var_0), true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, 187f, var_0, var_0))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(-2089f)), var_0, -687f, _wgslsmith_f_op_f32(1000f - -954f)))));
    return select(!select(!(!vec4<bool>(true, false, global1.x, global1.x)), vec4<bool>(true, 0i >= arg_0, !global1.x, arg_1), select(true, true, !global1.x)), select(!(!select(vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(arg_1, true, arg_1, global1.x), vec4<bool>(arg_1, arg_1, true, true))), vec4<bool>(all(global1.xzz) || (var_1 < var_1), ~var_1 != 65293u, all(select(vec2<bool>(true, true), global1.yx, true)), true), !vec4<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(global1.x, arg_1, true, false)), true, true)), !select(select(!vec4<bool>(false, false, arg_1, global1.x), !vec4<bool>(global1.x, global1.x, arg_1, false), all(vec4<bool>(arg_1, true, arg_1, global1.x))), select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(false, arg_1, arg_1, arg_1), !vec4<bool>(true, global1.x, arg_1, arg_1)), global1.x));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    var var_0 = select(vec4<bool>(!any(!global1.xx), true, global1.x, !global1.x), select(!(!vec4<bool>(arg_0.x, global1.x, true, false)), func_3(30139i, global1.x), !select(select(vec4<bool>(arg_0.x, true, global1.x, global1.x), vec4<bool>(false, true, arg_0.x, false), false), !vec4<bool>(arg_0.x, global1.x, true, false), select(vec4<bool>(arg_0.x, false, global1.x, arg_0.x), vec4<bool>(global1.x, false, true, false), false))), vec4<bool>(true, global1.x, false, func_3(-u_input.a, !(arg_0.x & false)).x));
    var var_1 = Struct_1(~(~vec2<i32>(-u_input.a, 0i)));
    var_1 = Struct_1(vec2<i32>(-2147483647i, var_1.a.x));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(909f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1156f) - 783f), -1895f), _wgslsmith_f_op_f32(step(-1868f, 1f)) == _wgslsmith_f_op_f32(abs(725f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-594f, -704f), -1691f)))))));
    global1 = func_3(~var_1.a.x << (1u % 32u), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_1.a.x, -21814i), vec3<i32>(u_input.a, var_1.a.x, -20804i) << (vec3<u32>(53517u, 4294967295u, 8690u) % vec3<u32>(32u))) == firstTrailingBit(-(u_input.a & 0i)));
    return 4294967295u <= _wgslsmith_mult_u32(82205u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(21728u, 857u, 44755u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 6192u, 101676u))), 0u));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>) -> vec4<f32> {
    global0 = array<Struct_4, 29>();
    global1 = vec4<bool>(!(func_2(global1.zzy) != global1.x) != global1.x, arg_2.x > (~(~53672u) | arg_2.x), true, true);
    global1 = func_3(_wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(abs(~0i), u_input.a)), !(!(_wgslsmith_f_op_f32(f32(-1f) * -572f) > _wgslsmith_f_op_f32(select(760f, -173f, global1.x)))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_0.a, -1716f, -549f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 555f, -321f, -328f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1453f, arg_1.b, arg_1.b, -442f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b, arg_1.b, 823f, -987f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -809f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, -312f))), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(360f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(floor(arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_vec4_f32(func_1(Struct_3(arg_3.b), arg_3, vec3<u32>(19552u, 32408u, 1u))).x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) + arg_0.x));
    var var_1 = -(vec2<i32>(-1i) * -vec2<i32>(~u_input.a, _wgslsmith_clamp_i32(arg_3.a.a.x, -1i, 1764i)));
    let var_2 = Struct_3(-302f);
    var_0 = _wgslsmith_div_vec3_f32(arg_0.zyz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.xzy - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.wyz))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)), var_0.x, 1000f)));
    return select(vec4<bool>(!global1.x, func_2(global1.xzy), arg_1 && true, false), select(!(!(!vec4<bool>(global1.x, global1.x, false, global1.x))), !func_3(2147483647i, global1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(32604u, 1u), vec2<u32>(4294967295u, 4294967295u)) >= firstTrailingBit(1u)), !(!select(!vec4<bool>(false, arg_1, global1.x, true), select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(false, true, global1.x, true), vec4<bool>(arg_1, arg_1, global1.x, global1.x)), !global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!(!select(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, true, global1.x), false), !vec4<bool>(true, true, global1.x, true), true)));
    global1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-439f, -206f, -1374f, 841f) * vec4<f32>(-360f, -1861f, 136f, 1000f)) + _wgslsmith_f_op_vec4_f32(func_1(Struct_3(-718f), Struct_2(Struct_1(vec2<i32>(u_input.a, 11010i)), 800f), vec3<u32>(62568u, 97539u, 70974u))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(185f - 128f) - _wgslsmith_f_op_f32(1000f + -957f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(664f - -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -645f), -1246f)), any(vec3<bool>(true, true, func_2(vec3<bool>(global1.x, global1.x, true)))), vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-48509i, u_input.a, -28478i), -vec3<i32>(0i, u_input.a, u_input.a)), 0i, _wgslsmith_sub_i32(u_input.a, 2240i)) | ~select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(-2147483647i, 14302i, u_input.a, 2147483647i)), reverseBits(vec4<i32>(2147483647i, 2147483647i, u_input.a, u_input.a)), select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(true, global1.x, false, global1.x), false)), Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(17547i, u_input.a), vec2<i32>(26483i, u_input.a))), 227f));
    global0 = array<Struct_4, 29>();
    var var_0 = !any(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-550f, -1325f, 140f, -1509f), vec4<f32>(-1467f, 107f, 422f, 139f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(426f, 285f, 598f, -562f))), global1.x, select(vec4<i32>(u_input.a, u_input.a, u_input.a, -82487i), vec4<i32>(u_input.a, u_input.a, u_input.a, 37535i), global1.x) | ~vec4<i32>(2147483647i, 2147483647i, -1i, u_input.a), Struct_2(Struct_1(vec2<i32>(-1i, u_input.a)), _wgslsmith_f_op_f32(-1000f + 322f))).wxy);
    var var_1 = Struct_2(Struct_1(abs(abs(~vec2<i32>(2147483647i, u_input.a)))), 372f);
    global1 = vec4<bool>(true, any(vec3<bool>(false, global1.x != (false & global1.x), global1.x)), !all(global1.yw), false);
    let var_2 = Struct_5(global1.xy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, 315f) - vec2<f32>(586f, 281f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2406f, 1205f))), global1.x | true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1841f, -1000f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.b, 688f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, -801f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(798f, -959f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b))))), ~(~_wgslsmith_mult_i32(1i, var_1.a.a.x)) | select(abs(var_1.a.a.x), -(~var_1.a.a.x), any(select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), true))), -(vec4<i32>(u_input.a, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_1.a.a.x, u_input.a), vec3<i32>(u_input.a, var_1.a.a.x, u_input.a)), ~var_1.a.a.x) & firstTrailingBit(vec4<i32>(2106i, -22289i, -19990i, u_input.a))));
    var var_3 = select(vec2<bool>(true, !(!var_2.a.x)), func_3(-select(u_input.a, var_2.c, true), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 989f, 1439f, 1581f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 606f, -1005f, 733f), vec4<f32>(612f, -1000f, var_2.b.x, var_1.b)))), var_2.a.x, -vec4<i32>(u_input.a, -2147483647i, var_1.a.a.x, -2147483647i) >> (~vec4<u32>(0u, 4294967295u, 4294967295u, 24627u) % vec4<u32>(32u)), Struct_2(var_1.a, 477f)).x).xx, (_wgslsmith_dot_vec3_u32(~vec3<u32>(17694u, 91843u, 74238u), max(vec3<u32>(47075u, 55868u, 32685u), vec3<u32>(0u, 1384u, 17454u))) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(106093u, 44722u, 0u, 35207u), vec4<u32>(1u, 20901u, 1u, 4294967295u))) == _wgslsmith_mult_u32(10668u, countOneBits(~2066u)));
    let var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(278f, -1000f))), var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(9120u, 34487u, reverseBits(14649u) << ((~38433u & _wgslsmith_clamp_u32(4294967295u, 39770u, 4294967295u)) % 32u)));
}

