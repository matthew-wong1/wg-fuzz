struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: u32 = 4294967295u;

var<private> global3: array<u32, 24> = array<u32, 24>(4294967295u, 4294967295u, 0u, 40925u, 1u, 1u, 5220u, 0u, 29588u, 42103u, 1u, 4294967295u, 31321u, 0u, 17044u, 0u, 64140u, 21734u, 1u, 9081u, 95773u, 1u, 1u, 0u);

var<private> global4: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(-401f, -1i, vec2<bool>(true, true), vec3<bool>(false, true, true), Struct_2(vec2<u32>(13510u, 14439u), -1137f, vec3<f32>(1050f, 129f, 1289f), true)), Struct_4(-1751f, 2147483647i, vec2<bool>(true, true), vec3<bool>(false, false, true), Struct_2(vec2<u32>(18952u, 4294967295u), -303f, vec3<f32>(1000f, 1241f, -247f), false)), Struct_4(-152f, 2147483647i, vec2<bool>(true, true), vec3<bool>(false, true, true), Struct_2(vec2<u32>(52996u, 4294967295u), -193f, vec3<f32>(-2154f, -1144f, -725f), true)), Struct_4(-517f, -25470i, vec2<bool>(true, false), vec3<bool>(false, true, false), Struct_2(vec2<u32>(1u, 0u), 201f, vec3<f32>(-343f, 725f, 378f), false)), Struct_4(-124f, 1i, vec2<bool>(false, true), vec3<bool>(false, true, true), Struct_2(vec2<u32>(0u, 1u), -1000f, vec3<f32>(-632f, -954f, -130f), false)), Struct_4(1000f, -47562i, vec2<bool>(true, true), vec3<bool>(false, false, true), Struct_2(vec2<u32>(1u, 4294967295u), -1396f, vec3<f32>(-1000f, 1345f, -128f), true)), Struct_4(559f, 2147483647i, vec2<bool>(false, true), vec3<bool>(false, true, false), Struct_2(vec2<u32>(42383u, 4294967295u), 671f, vec3<f32>(-853f, -752f, 641f), false)), Struct_4(-630f, 2147483647i, vec2<bool>(true, false), vec3<bool>(true, true, true), Struct_2(vec2<u32>(0u, 15910u), -1279f, vec3<f32>(-1000f, -831f, -239f), true)), Struct_4(-129f, 741i, vec2<bool>(true, true), vec3<bool>(true, false, false), Struct_2(vec2<u32>(1u, 0u), 1000f, vec3<f32>(2059f, -411f, 425f), false)), Struct_4(382f, i32(-2147483648), vec2<bool>(true, false), vec3<bool>(false, true, false), Struct_2(vec2<u32>(9137u, 1u), 518f, vec3<f32>(-244f, 1907f, -866f), true)), Struct_4(918f, 42835i, vec2<bool>(true, true), vec3<bool>(true, false, false), Struct_2(vec2<u32>(4294967295u, 29312u), 2814f, vec3<f32>(1163f, 105f, 403f), false)), Struct_4(1404f, 2147483647i, vec2<bool>(false, true), vec3<bool>(true, false, false), Struct_2(vec2<u32>(49839u, 20000u), -352f, vec3<f32>(-1000f, -905f, 411f), false)), Struct_4(-345f, 0i, vec2<bool>(false, false), vec3<bool>(true, true, false), Struct_2(vec2<u32>(4294967295u, 11490u), 1508f, vec3<f32>(-749f, -832f, -140f), false)), Struct_4(1119f, -2045i, vec2<bool>(true, false), vec3<bool>(false, true, true), Struct_2(vec2<u32>(85511u, 56375u), -472f, vec3<f32>(-1000f, -143f, 941f), true)), Struct_4(-958f, 26428i, vec2<bool>(true, true), vec3<bool>(false, true, false), Struct_2(vec2<u32>(57563u, 21071u), 945f, vec3<f32>(2006f, 213f, -416f), false)), Struct_4(814f, -27779i, vec2<bool>(true, true), vec3<bool>(true, false, false), Struct_2(vec2<u32>(0u, 22891u), -1445f, vec3<f32>(-1527f, -1190f, 1000f), false)), Struct_4(1000f, 8761i, vec2<bool>(false, true), vec3<bool>(true, false, true), Struct_2(vec2<u32>(4294967295u, 30309u), -292f, vec3<f32>(229f, 669f, 470f), false)), Struct_4(1000f, -48823i, vec2<bool>(false, true), vec3<bool>(true, false, false), Struct_2(vec2<u32>(41194u, 81814u), 765f, vec3<f32>(-313f, -108f, -456f), false)), Struct_4(622f, 2147483647i, vec2<bool>(false, false), vec3<bool>(false, true, true), Struct_2(vec2<u32>(1u, 22685u), 1205f, vec3<f32>(778f, -965f, -1000f), false)), Struct_4(948f, -1i, vec2<bool>(false, false), vec3<bool>(true, false, true), Struct_2(vec2<u32>(79919u, 38787u), 1684f, vec3<f32>(2050f, 1000f, 251f), true)), Struct_4(212f, 26503i, vec2<bool>(true, false), vec3<bool>(true, false, true), Struct_2(vec2<u32>(12363u, 0u), -905f, vec3<f32>(-450f, -927f, -550f), false)), Struct_4(1639f, i32(-2147483648), vec2<bool>(true, true), vec3<bool>(true, true, true), Struct_2(vec2<u32>(35776u, 1u), -1286f, vec3<f32>(-883f, 108f, -761f), true)), Struct_4(-397f, 1i, vec2<bool>(true, false), vec3<bool>(false, false, false), Struct_2(vec2<u32>(4294967295u, 20935u), -654f, vec3<f32>(-918f, 739f, -2167f), true)), Struct_4(-312f, 0i, vec2<bool>(true, true), vec3<bool>(false, true, true), Struct_2(vec2<u32>(4294967295u, 0u), -229f, vec3<f32>(193f, 1369f, 473f), true)), Struct_4(259f, 1i, vec2<bool>(true, false), vec3<bool>(true, false, true), Struct_2(vec2<u32>(1u, 42736u), -350f, vec3<f32>(-696f, -1147f, 1321f), true)), Struct_4(-423f, 68618i, vec2<bool>(true, true), vec3<bool>(true, false, true), Struct_2(vec2<u32>(16651u, 0u), 1010f, vec3<f32>(-519f, 1419f, 715f), true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.e.c.x), _wgslsmith_f_op_f32(982f + arg_1.x), _wgslsmith_f_op_f32(min(-970f, arg_1.x)), -899f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 1000f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1205f, -595f, global0.a, -122f)))))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1479f, global0.a, arg_1.x, 592f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(961f, 1031f, -844f, arg_1.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(843f, arg_1.x, 1097f, global0.a), vec4<f32>(global0.a, arg_1.x, -938f, arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 980f, -1345f, 106f) * vec4<f32>(arg_1.x, 938f, 303f, arg_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(select(1000f, global0.a, global0.e.d)), -308f, _wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1301f))))));
    let var_1 = Struct_3(vec2<i32>(9773i ^ -global0.b, -u_input.a.x) & vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 0i, global0.b), vec4<i32>(u_input.b.x, -83881i, -35903i, global0.b))), 20054i), global0.e.a.x, vec2<u32>(global0.e.a.x, arg_0), global0.e);
    let var_2 = ~(~(~u_input.d.x));
    global3 = array<u32, 24>();
    var var_3 = ~firstTrailingBit(-u_input.a.xzy);
    return any(select(select(select(!vec2<bool>(global1.x, var_1.d.d), global0.c, false), global1.zz, vec2<bool>(false, global1.x && true)), vec2<bool>(true | (global0.e.a.x != 45794u), false), !global1.wy));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3) -> u32 {
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.b))), ~global0.b, select(global1.wz, select(global0.c, vec2<bool>(true, !global0.d.x), !(!arg_1.d.d)), select(vec2<bool>(false, true), vec2<bool>(false, global1.x), global1.x)), vec3<bool>(all(vec4<bool>(!arg_1.d.d, func_3(arg_1.c.x, vec3<f32>(-300f, arg_1.d.b, global0.a)), true, true)), all(!(!vec2<bool>(global0.c.x, global1.x))), any(!select(vec3<bool>(arg_1.d.d, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), Struct_2(arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.b) + arg_1.d.c.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(485f - arg_1.d.b) * _wgslsmith_f_op_f32(exp2(global0.e.b))), _wgslsmith_f_op_f32(abs(1f)), -500f), true));
    var var_0 = _wgslsmith_f_op_f32(328f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-823f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.c.x * -2317f) - _wgslsmith_f_op_f32(min(arg_1.d.c.x, 2792f)))), arg_1.d.b));
    var var_1 = global4[_wgslsmith_index_u32(~(~global0.e.a.x), 26u)];
    var var_2 = arg_1;
    global1 = vec4<bool>(global0.e.d, !(!arg_1.d.d), true, true);
    return 61669u;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> u32 {
    var var_0 = Struct_1(global1.x);
    global2 = func_2(vec2<u32>(~1u, ~(~_wgslsmith_sub_u32(global0.e.a.x, 939u))), Struct_3(u_input.b.yw, global0.e.a.x, vec2<u32>(abs(arg_0.x), _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, global3[_wgslsmith_index_u32(127573u, 24u)], arg_0.x, global0.e.a.x), u_input.c, u_input.c))), global0.e));
    let var_1 = Struct_4(_wgslsmith_div_f32(1169f, -478f), _wgslsmith_clamp_i32(0i, u_input.a.x, u_input.b.x), select(global0.d.zy, vec2<bool>(true, true), !global0.d.zz), global1.wzy, Struct_2(vec2<u32>(~global0.e.a.x, global0.e.a.x), -2001f, global0.e.c, global1.x));
    var var_2 = u_input.a.zwx;
    var_2 = abs(reverseBits(select(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-27375i, global0.b, -7979i), u_input.a.zyz, u_input.a.xyx), u_input.a.yxz << (vec3<u32>(global0.e.a.x, 1u, u_input.c.x) % vec3<u32>(32u))), ~u_input.b.zxx, _wgslsmith_f_op_f32(f32(-1f) * -1404f) != _wgslsmith_f_op_f32(-global0.e.b))));
    return arg_0.x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> Struct_3 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global0.d.x;
    var var_1 = func_4(Struct_3(vec2<i32>(max(min(u_input.b.x, u_input.a.x), global0.b), 1i), abs(func_1(_wgslsmith_mult_vec4_u32(u_input.c, u_input.c), ~global0.e.a.x)), _wgslsmith_sub_vec2_u32(firstTrailingBit(~global0.e.a), ~(~u_input.c.xw)), global0.e), Struct_4(1f, reverseBits(_wgslsmith_mod_i32(u_input.b.x, ~(-8127i))), select(vec2<bool>(func_3(4294967295u, global0.e.c), select(true, true, false)), global1.wz, true), vec3<bool>(false || !global1.x, global1.x, u_input.b.x < _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), global0.e));
    let var_2 = 481f;
    var var_3 = ~u_input.c;
    let var_4 = global0.e.a.x;
    global3 = array<u32, 24>();
    var var_5 = vec4<bool>(!any(global0.d), any(!vec3<bool>(!global1.x, global0.c.x, false)), true, false);
    let var_6 = u_input.c;
    var var_7 = global0.e;
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(0u << (u_input.d.x % 32u), 24u)], abs(~reverseBits(~global0.e.a.x)), u_input.c, vec4<i32>(abs(-var_1.a.x) | (i32(-1i) * -var_1.a.x), u_input.b.x, -firstLeadingBit(-48961i), -var_1.a.x));
}

