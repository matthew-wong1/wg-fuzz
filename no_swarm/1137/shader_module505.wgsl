struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: f32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8>;

var<private> global1: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-490f, 1116f, -1000f), vec3<f32>(312f, -315f, -2105f), vec3<f32>(941f, 365f, 655f), vec3<f32>(536f, 990f, -1283f), vec3<f32>(-649f, -1344f, -756f), vec3<f32>(119f, 180f, -800f), vec3<f32>(261f, 249f, -1001f), vec3<f32>(-1189f, 733f, 276f), vec3<f32>(773f, -1458f, -159f), vec3<f32>(1049f, -393f, -2225f), vec3<f32>(-840f, -522f, -1567f), vec3<f32>(-489f, -862f, 883f), vec3<f32>(1194f, 1219f, -892f), vec3<f32>(2646f, 1000f, -1000f), vec3<f32>(925f, 530f, 533f), vec3<f32>(-1210f, -1000f, 535f), vec3<f32>(-613f, -201f, -196f), vec3<f32>(-934f, 465f, -2663f), vec3<f32>(-785f, 975f, 1100f), vec3<f32>(-1000f, -1146f, -926f), vec3<f32>(1262f, 171f, -858f), vec3<f32>(-542f, 1064f, -114f), vec3<f32>(-684f, 572f, -382f), vec3<f32>(-294f, 1495f, 959f), vec3<f32>(580f, -191f, -213f), vec3<f32>(350f, 1038f, 1398f), vec3<f32>(-640f, -1000f, -2146f));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = ~(-u_input.b);
    global0 = array<vec4<u32>, 8>();
    global1 = array<vec3<f32>, 27>();
    global0 = array<vec4<u32>, 8>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), 839f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, arg_0.b.b))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(-arg_0.b.b)))));
    return Struct_3(1217f, arg_0, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.b), _wgslsmith_f_op_f32(-896f - -1000f), -686f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.zy - var_1.xy) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(floor(237f))))));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    global0 = array<vec4<u32>, 8>();
    var var_0 = Struct_5(752f, _wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.b, 6363i) >> (u_input.a % vec3<u32>(32u)), ~vec3<i32>(u_input.b, 1325i, 1i)), vec3<i32>(abs(~0i), 1i, 0i)), select(vec3<bool>(true, func_2(func_2(arg_2.b, vec4<f32>(-740f, -1541f, arg_2.a, arg_1.c.x)).b, vec4<f32>(arg_1.b.a, 1000f, arg_2.c.x, arg_2.d.x)).b.b.a, arg_2.b.b.a), vec3<bool>(!arg_1.b.b.a && true, false, true), arg_1.b.b.a), _wgslsmith_clamp_u32(~(~80018u | (4294967295u << (arg_0 % 32u))), 1u, 11759u), 449u);
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(max(abs(_wgslsmith_mod_u32(arg_1.b.b.c, u_input.a.x)), 0u), _wgslsmith_sub_u32(arg_0, 14489u), ~var_0.e), vec3<u32>(max(u_input.a.x, _wgslsmith_mod_u32(0u, 1u)) ^ ((99506u | var_0.e) << (u_input.a.x % 32u)), _wgslsmith_div_u32(u_input.a.x, 1772u), ~min(4294967295u, arg_0)));
    global1 = array<vec3<f32>, 27>();
    return !(!arg_2.b.b.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = vec2<u32>(1u, ~6597u);
    var var_1 = arg_0.zx;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, -360f), vec2<f32>(var_1.x, var_1.x))) - arg_0.zz) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-708f, arg_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 580f))) + arg_0.yx)));
    global0 = array<vec4<u32>, 8>();
    global0 = array<vec4<u32>, 8>();
    return func_2(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -141f)), func_2(func_2(Struct_2(arg_0.x, Struct_1(false, -1738f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 2375f, -278f, -431f))).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(468f, var_1.x, arg_0.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))).b.b), vec4<f32>(1588f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))) * -965f), _wgslsmith_f_op_f32(trunc(var_1.x)), -2490f));
}

fn func_1() -> Struct_3 {
    global0 = array<vec4<u32>, 8>();
    var var_0 = true;
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 27u)])), _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(1u, 27u)], vec3<f32>(-838f, -154f, 671f)))), vec2<bool>(func_3(4294967295u, Struct_3(1631f, Struct_2(638f, Struct_1(true, -299f, 86275u)), vec3<f32>(-540f, 1000f, 1000f), vec2<f32>(-1507f, -1717f)), func_2(Struct_2(131f, Struct_1(true, -816f, 4294967295u)), vec4<f32>(1883f, -268f, 150f, 1642f))) & func_3(u_input.a.x, Struct_3(-427f, Struct_2(-155f, Struct_1(true, -387f, 166189u)), vec3<f32>(1714f, 1616f, 1279f), vec2<f32>(342f, 443f)), Struct_3(1000f, Struct_2(1933f, Struct_1(false, -469f, 0u)), global1[_wgslsmith_index_u32(1u, 27u)], vec2<f32>(-623f, -2242f))), true));
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-211f))), -1013f, _wgslsmith_f_op_f32(-var_1.c.x))), select(!vec2<bool>(any(vec3<bool>(false, var_1.b.b.a, var_1.b.b.a)), u_input.b < -2147483647i), select(select(select(vec2<bool>(var_1.b.b.a, true), vec2<bool>(false, var_1.b.b.a), vec2<bool>(var_1.b.b.a, var_1.b.b.a)), vec2<bool>(true, true), !vec2<bool>(var_1.b.b.a, var_1.b.b.a)), select(select(vec2<bool>(var_1.b.b.a, var_1.b.b.a), vec2<bool>(var_1.b.b.a, var_1.b.b.a), vec2<bool>(false, var_1.b.b.a)), vec2<bool>(true, true), true), !vec2<bool>(var_1.b.b.a, var_1.b.b.a)), vec2<bool>(false, var_1.b.b.a)));
    global1 = array<vec3<f32>, 27>();
    return func_2(func_4(vec3<f32>(-1015f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1041f), _wgslsmith_f_op_f32(var_1.a * var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * -423f))), !vec2<bool>(var_2.b.b.a, true)).b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(617f, 474f, var_2.d.x, var_1.c.x)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.b.b, 809f, var_1.b.b.b, var_1.d.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(855f, var_2.c.x, 1531f, var_2.c.x)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.d.x, -1138f, 351f, var_2.b.b.b), vec4<f32>(295f, var_2.a, var_2.b.a, 2036f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(793f, 496f, var_2.c.x, var_1.d.x))))))));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>, arg_3: bool) -> Struct_2 {
    global1 = array<vec3<f32>, 27>();
    let var_0 = ~vec3<i32>(_wgslsmith_clamp_i32(u_input.b, -13808i, _wgslsmith_clamp_i32(min(arg_2.x, -40884i), ~0i, -1i)), _wgslsmith_add_i32(_wgslsmith_div_i32(arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, u_input.b, arg_2.x, -17165i), vec4<i32>(-1i, -10936i, 0i, u_input.b))), firstLeadingBit(-39025i & u_input.b)), u_input.b);
    var var_1 = Struct_5(_wgslsmith_f_op_f32(select(func_1().a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-875f, _wgslsmith_f_op_f32(638f * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -592f))), any(select(vec4<bool>(false, arg_0.b.b.a, arg_0.b.b.a, arg_3), select(vec4<bool>(arg_0.b.b.a, arg_3, arg_3, arg_3), vec4<bool>(false, true, arg_0.b.b.a, true), vec4<bool>(arg_0.b.b.a, false, arg_3, arg_0.b.b.a)), arg_3)))), vec3<i32>(~24660i, -u_input.b, abs(_wgslsmith_clamp_i32(22207i, 28717i, -21100i))), !(!vec3<bool>(any(vec2<bool>(arg_0.b.b.a, arg_0.b.b.a)), arg_3, arg_0.b.b.a)), ~arg_0.b.b.c, firstLeadingBit(select(~(arg_0.b.b.c << (31697u % 32u)), max(arg_0.b.b.c, 1u) | 0u, -1586f <= func_2(arg_0.b, vec4<f32>(453f, -1276f, arg_1, arg_0.a)).c.x)));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1684f, 108f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(335f - -1215f) + _wgslsmith_f_op_f32(f32(-1f) * -837f))))), vec3<i32>(_wgslsmith_sub_i32(-var_1.b.x, 0i), _wgslsmith_add_i32(~_wgslsmith_add_i32(u_input.b, arg_2.x), -arg_2.x >> (abs(12196u) % 32u)), ~var_0.x >> (~(~1u) % 32u)), var_1.c, u_input.a.x, ~(~0u));
    let var_3 = arg_2.x;
    return func_2(Struct_2(func_1().b.b.b, arg_0.b.b), vec4<f32>(532f, _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 990f, -203f)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1197f;
    let var_1 = min(-countOneBits(abs(~vec3<i32>(u_input.b, u_input.b, u_input.b))), abs(countOneBits(-vec3<i32>(-66589i, u_input.b, -25807i)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-8206i, -2147483647i, -1i), -vec3<i32>(-2147483647i, 2147483647i, u_input.b), ~vec3<i32>(-733i, u_input.b, -2147483647i))));
    global1 = array<vec3<f32>, 27>();
    global0 = array<vec4<u32>, 8>();
    let var_2 = true;
    var var_3 = func_5(func_1(), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 * -439f), -1083f, var_2)), countOneBits(var_1.xx), false);
    var_3 = Struct_2(867f, var_3.b);
    let var_4 = select(!select(vec2<bool>(true, true), select(vec2<bool>(false, var_3.b.a), select(vec2<bool>(true, var_2), vec2<bool>(var_2, true), vec2<bool>(var_2, true)), !var_3.b.a), !(u_input.a.x != 1u)), vec2<bool>(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1476f, var_3.b.b, var_3.a))) * _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(var_3.b.c, 27u)])), vec2<bool>(true, true)).b.b.a, false), !vec2<bool>(true, !(0u == u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.b, var_1.zy, ~vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-25592i, -1i), var_1.xy), -var_1.x), max(vec3<i32>(u_input.b, 2147483647i, -(~u_input.b)), vec3<i32>(-219i, -u_input.b, -(~u_input.b))), var_3.b.c);
}

