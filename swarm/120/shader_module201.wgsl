struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10>;

var<private> global1: Struct_4 = Struct_4(0u, -887f, vec3<f32>(267f, -1034f, 345f));

var<private> global2: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(123063u, -148f, vec3<f32>(727f, 1000f, -1321f)), Struct_4(100158u, -1048f, vec3<f32>(496f, -2385f, 514f)), Struct_4(4370u, 284f, vec3<f32>(-1000f, -823f, -1021f)), Struct_4(1u, -389f, vec3<f32>(1050f, 928f, -1000f)), Struct_4(0u, 572f, vec3<f32>(698f, -705f, 1000f)), Struct_4(4294967295u, 1761f, vec3<f32>(721f, 1748f, 184f)), Struct_4(39038u, 936f, vec3<f32>(129f, 275f, 249f)), Struct_4(10288u, 277f, vec3<f32>(-1339f, 206f, 650f)), Struct_4(1u, 208f, vec3<f32>(-412f, -2009f, -1133f)), Struct_4(82316u, 827f, vec3<f32>(-1415f, 1837f, -535f)), Struct_4(1u, -379f, vec3<f32>(238f, 678f, 1215f)), Struct_4(16801u, -1031f, vec3<f32>(-2000f, 1202f, 465f)), Struct_4(4294967295u, -478f, vec3<f32>(932f, -929f, -884f)), Struct_4(15389u, -207f, vec3<f32>(-471f, -220f, -1131f)), Struct_4(1u, -1057f, vec3<f32>(2888f, 1754f, 421f)), Struct_4(20961u, 767f, vec3<f32>(-927f, 1511f, -1033f)), Struct_4(4294967295u, 922f, vec3<f32>(693f, -1196f, 1396f)), Struct_4(87850u, 1429f, vec3<f32>(1000f, -1695f, -146f)), Struct_4(33013u, -776f, vec3<f32>(225f, -306f, -754f)), Struct_4(50u, -546f, vec3<f32>(-1015f, 1336f, -874f)), Struct_4(1u, -211f, vec3<f32>(-1013f, -1000f, -1870f)), Struct_4(0u, -385f, vec3<f32>(596f, 1540f, -157f)), Struct_4(34697u, 1000f, vec3<f32>(631f, -127f, -1000f)), Struct_4(4294967295u, -1000f, vec3<f32>(1597f, -748f, -248f)), Struct_4(1u, -397f, vec3<f32>(-1305f, 496f, -1173f)), Struct_4(47844u, -235f, vec3<f32>(1209f, 1000f, 1396f)), Struct_4(28968u, -229f, vec3<f32>(755f, 1417f, 1000f)), Struct_4(0u, 210f, vec3<f32>(-1206f, 446f, -1231f)), Struct_4(0u, 151f, vec3<f32>(-1000f, 1152f, 499f)));

var<private> global3: f32 = -617f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(~98251u, 29u)];
    let var_1 = ~max(_wgslsmith_mod_i32(1i, -35251i), _wgslsmith_mult_i32(~1i, max(1i, -11900i)));
    var var_2 = global1.c.x;
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(746f - _wgslsmith_f_op_f32(-global1.b)))) - var_0.c.x), var_0.c.x);
    let var_3 = max(((max(arg_0.yz, vec2<u32>(arg_0.x, global1.a)) << (countOneBits(u_input.a) % vec2<u32>(32u))) >> (~vec2<u32>(0u, 24810u) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(~arg_0.xz, u_input.a) % vec2<u32>(32u)), u_input.a);
    return any(vec3<bool>(true, any(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))), _wgslsmith_mult_u32(~40284u, _wgslsmith_add_u32(arg_0.x, 28919u)) >= ~1u));
}

fn func_2() -> Struct_1 {
    var var_0 = func_3(~(~(~(~vec4<u32>(45802u, global1.a, 46180u, 0u)))));
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 29u)];
    var var_2 = vec4<u32>(~_wgslsmith_mult_u32(25593u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global1.a, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u)), vec4<u32>(19854u, 26016u, 1u, 45236u))), u_input.a.x, firstTrailingBit(min(~(~12311u), abs(global1.a))), var_1.a);
    let var_3 = all(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), func_3(vec4<u32>(global1.a, 72659u, 61924u, 0u))), vec3<bool>(true, true, func_3(vec4<u32>(71507u, var_2.x, 23580u, var_1.a))), false));
    var var_4 = Struct_1(global1.c, !vec3<bool>(any(vec3<bool>(var_3, var_3, var_3)), all(vec4<bool>(false, false, var_3, false)) && var_3, any(!vec4<bool>(true, true, var_3, true))));
    return Struct_1(global1.c, var_4.b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = func_2();
    global0 = array<vec3<u32>, 10>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0.a, vec3<f32>(arg_0.a.x, arg_1.c.x, -1283f))) + global1.c)))));
    var var_2 = func_3(max(_wgslsmith_add_vec4_u32(~vec4<u32>(6325u, 0u, 32137u, 0u), firstTrailingBit(vec4<u32>(global1.a, global1.a, u_input.a.x, global1.a)) ^ abs(vec4<u32>(1u, 4294967295u, 63552u, 1u))), ~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(global1.a, arg_1.a, 147u, u_input.a.x)), vec4<u32>(global1.a, 0u, u_input.a.x, global1.a) | vec4<u32>(arg_1.a, 1u, global1.a, arg_2.a))));
    let var_3 = Struct_3(var_1);
    return ~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~2147483647i, firstTrailingBit(7929i), ~20523i), vec3<i32>(1i, 1i, 1i)), -(vec3<i32>(1i, 1i, 1i) << (vec3<u32>(13123u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), max(countOneBits(~vec3<i32>(2147483647i, 1i, -4424i)), _wgslsmith_sub_vec3_i32(vec3<i32>(23345i, 2147483647i, 1i), vec3<i32>(1i, 0i, 1i) << (global0[_wgslsmith_index_u32(1u, 10u)] % vec3<u32>(32u)))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<i32>, arg_3: f32) -> Struct_2 {
    let var_0 = func_2().b.x;
    global1 = global2[_wgslsmith_index_u32(u_input.a.x, 29u)];
    var var_1 = vec4<u32>(reverseBits(~firstTrailingBit(~4294967295u)), u_input.a.x, countOneBits(30465u), ~global1.a);
    let var_2 = ~(~max(u_input.a.x, min(~15754u, 21409u)));
    global1 = Struct_4(_wgslsmith_add_u32(var_1.x, var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c.x * arg_0))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), global1.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1366f))), _wgslsmith_f_op_vec3_f32(-global1.c));
    return Struct_2(global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(global1.b + -784f), ~abs(2147483647i), _wgslsmith_mod_vec3_i32(~vec3<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 18922i, -2147483647i), vec4<i32>(2147483647i, -14081i, 63722i, 2147483647i)), 0i), vec3<i32>(~_wgslsmith_sub_i32(0i, 0i), reverseBits(~(-2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(30430i, 19692i, 2147483647i) << (vec3<u32>(u_input.a.x, 102639u, u_input.a.x) % vec3<u32>(32u)), func_1(Struct_1(vec3<f32>(global1.b, -1225f, global1.b), vec3<bool>(false, false, false)), global2[_wgslsmith_index_u32(global1.a, 29u)], Struct_4(global1.a, global1.b, vec3<f32>(global1.c.x, global1.b, 1059f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1604f + global1.b)));
    global1 = Struct_4(~u_input.a.x, -1000f, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.b, global1.b, false))))), -517f, -821f));
    let var_1 = reverseBits(38329u);
    global3 = -529f;
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.b, -252f))))), func_4(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(1858f * var_0.a.x)), _wgslsmith_mult_i32(min(2147483647i, -22134i), 2147483647i >> (global1.a % 32u)), max(~vec3<i32>(1i, -1i, -48026i), ~vec3<i32>(-1i, -2147483647i, 14901i)), _wgslsmith_f_op_f32(ceil(var_0.a.x))).a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(global1.a, var_1, 22714u, 24260u), vec4<u32>(global1.a, 0u, 0u, var_1)), ~vec4<u32>(var_1, 36112u, 4294967295u, 1u), all(vec3<bool>(false, false, false))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 76434u, 25355u), ~vec4<u32>(45486u, 7936u, 0u, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(var_1, 1u, 10566u, u_input.a.x)), abs(vec4<u32>(9201u, 70074u, 0u, var_1))), _wgslsmith_add_vec4_u32(vec4<u32>(var_1, 13351u, global1.a, u_input.a.x) ^ vec4<u32>(4294967295u, 71792u, var_1, global1.a), vec4<u32>(565u, global1.a, u_input.a.x, 30580u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global1.c.yz, vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), 738f))) - var_0.a.yz));
}

