struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec4<f32>(-926f, 289f, 906f, -135f), Struct_1(true, 1567f, -704f, vec3<f32>(-438f, -432f, 541f)), vec2<i32>(0i, 59075i), vec2<u32>(23658u, 81193u), Struct_1(false, -252f, 1774f, vec3<f32>(1472f, -1150f, -1395f))), Struct_2(vec4<f32>(1614f, 443f, -460f, 1763f), Struct_1(true, -309f, -156f, vec3<f32>(-520f, -1000f, 1611f)), vec2<i32>(24609i, 1i), vec2<u32>(43752u, 4294967295u), Struct_1(true, -1060f, 1655f, vec3<f32>(411f, -739f, 1348f))), Struct_2(vec4<f32>(-1851f, -1000f, -1000f, -236f), Struct_1(true, -297f, 153f, vec3<f32>(914f, 401f, -266f)), vec2<i32>(-69517i, 21752i), vec2<u32>(4294967295u, 34944u), Struct_1(true, -710f, -823f, vec3<f32>(2110f, 100f, 1001f))), Struct_2(vec4<f32>(-1438f, 1096f, 1000f, -1274f), Struct_1(false, 181f, 1020f, vec3<f32>(1091f, -868f, 521f)), vec2<i32>(-14405i, -9640i), vec2<u32>(4294967295u, 23048u), Struct_1(true, -541f, -940f, vec3<f32>(-972f, -869f, 1122f))), Struct_2(vec4<f32>(-450f, -485f, -816f, 602f), Struct_1(true, 679f, 2470f, vec3<f32>(-1174f, -186f, 559f)), vec2<i32>(0i, 23914i), vec2<u32>(51956u, 3329u), Struct_1(true, 971f, 1404f, vec3<f32>(-1137f, 1137f, 323f))));

var<private> global3: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: bool) -> Struct_4 {
    var var_0 = arg_0.d;
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(2779f - arg_0.b), var_0.x)) + _wgslsmith_f_op_vec3_f32(arg_0.d + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c), var_0.x, arg_0.c)))));
    global2 = array<Struct_2, 5>();
    let var_1 = vec4<bool>(false, !(!arg_0.a), true || !arg_3, true);
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(266f, -396f, var_0.x, var_0.x), vec4<f32>(var_0.x, arg_0.d.x, var_0.x, arg_0.d.x), true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.b, 1226f, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(sign(-1206f)), -889f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2416f)), var_0.x)))));
    return Struct_4(all(var_1.xxy));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    global2 = array<Struct_2, 5>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, arg_0.c.e.c) + vec2<f32>(arg_0.b.c, 966f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-875f, 774f))))) - vec2<f32>(arg_0.b.b, -854f));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-839f, _wgslsmith_f_op_f32(round(-1746f)), _wgslsmith_f_op_f32(min(var_0.x, -251f)), arg_0.d), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.c.a, arg_0.c.a, vec4<bool>(arg_0.b.a, arg_1.a, false, arg_1.a))) + arg_0.c.a))))), Struct_1(!arg_0.c.b.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.c))), 911f, true)), arg_1.d.x, _wgslsmith_f_op_vec3_f32(arg_0.b.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.d * vec3<f32>(arg_0.d, 230f, 1187f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, var_0.x, arg_0.c.a.x) - arg_1.d)))), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.e.zy, vec2<i32>(u_input.b, arg_0.c.c.x)) & select(arg_0.c.c, arg_0.c.c, true), ~arg_0.c.c | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, arg_0.e.x), vec2<i32>(-8375i, arg_0.e.x))), _wgslsmith_mod_i32(-36592i, -2147483647i >> (arg_0.c.d.x % 32u))), reverseBits(vec2<u32>(u_input.a.x, arg_0.a.x)), arg_1);
    var var_2 = arg_0.c;
    return -13078i;
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    let var_0 = 4294967295u;
    global3 = 55008u;
    let var_1 = ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b, -1i, u_input.b)), ~vec3<i32>(u_input.b, -31589i, u_input.b)), max(1i >> (u_input.a.x % 32u), _wgslsmith_add_i32(-24202i, 1i))) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b, 16014i), -u_input.b), -29490i), vec3<i32>(-firstLeadingBit(u_input.b), -17297i, 1i));
    var var_2 = arg_3.d.yx;
    var var_3 = true;
    return Struct_3(~vec4<u32>(var_0, u_input.a.x, u_input.a.x, ~4294967295u), arg_3, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1421f, arg_3.c), _wgslsmith_f_op_f32(sign(arg_3.c)), _wgslsmith_f_op_f32(940f - -947f), 169f)), arg_3, vec2<i32>(firstLeadingBit(var_1) | 14041i, _wgslsmith_clamp_i32(-21669i >> (u_input.a.x % 32u), _wgslsmith_mult_i32(-31109i, var_1), func_3(Struct_3(vec4<u32>(arg_0, u_input.a.x, 41891u, u_input.a.x), Struct_1(true, -875f, 1396f, vec3<f32>(1109f, arg_3.b, 928f)), global2[_wgslsmith_index_u32(arg_0, 5u)], arg_3.b, vec3<i32>(u_input.b, u_input.b, -2147483647i)), Struct_1(arg_3.a, var_2.x, var_2.x, vec3<f32>(arg_3.c, arg_3.d.x, arg_3.c))))), vec2<u32>(select(firstLeadingBit(4294967295u), _wgslsmith_mult_u32(u_input.a.x, 21567u), var_2.x == 1189f), u_input.a.x), arg_3), -1000f, ~select(~vec3<i32>(2147483647i, 1i, u_input.b) | max(vec3<i32>(u_input.b, u_input.b, -9002i), vec3<i32>(var_1, var_1, var_1)), ~firstLeadingBit(vec3<i32>(var_1, var_1, u_input.b)), !vec3<bool>(arg_2, arg_1.a, arg_2)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = Struct_1(~(~abs(arg_1.a.x)) != ~(u_input.a.x & arg_1.a.x), arg_1.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b.b))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.x, arg_1.c.e.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -377f)) + 1102f)), _wgslsmith_f_op_vec3_f32(-arg_0.a.yzw), false)));
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_div_vec2_u32(arg_1.c.d, vec2<u32>(_wgslsmith_clamp_u32(23841u, ~1u, ~(~71021u)), u_input.a.x));
    var var_3 = func_2(func_2(arg_0.d.x, func_1(func_2(_wgslsmith_div_u32(u_input.a.x, 4294967295u), arg_2, any(vec2<bool>(true, false)), var_0).c.e, vec3<i32>(_wgslsmith_add_i32(-20109i, u_input.b), -22817i, arg_1.e.x), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, arg_0.c.x), _wgslsmith_mult_i32(1i, arg_1.e.x), ~arg_1.c.c.x), any(!vec4<bool>(var_0.a, arg_0.b.a, arg_2.a, true))), func_1(arg_1.c.b, ~vec3<i32>(arg_0.c.x, 1832i, arg_0.c.x) >> (vec3<u32>(1u, var_2.x, arg_0.d.x) % vec3<u32>(32u)), arg_1.e, arg_2.a).a, Struct_1(func_1(func_2(arg_1.c.d.x, arg_2, arg_0.b.a, arg_0.e).b, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.c.x, -2147483647i, 6492i), arg_1.e), firstTrailingBit(vec3<i32>(-1i, -2147483647i, u_input.b)), all(vec4<bool>(false, false, true, arg_1.b.a))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -357f) - _wgslsmith_f_op_f32(-arg_1.d)), 332f, vec3<f32>(-1345f, _wgslsmith_f_op_f32(-var_0.b), arg_0.b.d.x))).c.d.x, arg_2, (arg_0.d.x >= 55110u) && arg_2.a, func_2(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.x & arg_1.a.x, _wgslsmith_mult_u32(var_2.x, arg_1.a.x)), _wgslsmith_mult_u32(min(16158u, 1u), select(26013u, 79154u, true))), Struct_4(any(global0[_wgslsmith_index_u32(53561u, 19u)]) && arg_0.b.a), false, func_2(min(arg_0.d.x, 0u), Struct_4(var_0.a), arg_1.c.e.b <= _wgslsmith_f_op_f32(f32(-1f) * -865f), arg_0.b).b).b).c;
    let var_4 = arg_1;
    return ~countOneBits(arg_1.e);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: u32) -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(28427u, 5u)];
    var var_1 = func_2(max(28028u, 119174u), Struct_4(!arg_1.x), all(arg_1.yx), func_2(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, var_0.d.x, 24575u, u_input.a.x), ~vec4<u32>(arg_2, var_0.d.x, 0u, 45139u)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(arg_2, 1u, 89435u, 1u), vec4<u32>(arg_2, var_0.d.x, 4294967295u, var_0.d.x)), func_2(24058u, Struct_4(true), false, Struct_1(false, -331f, -225f, vec3<f32>(-822f, 275f, 1742f))).a)), Struct_4(func_2(var_0.d.x, Struct_4(true), any(vec4<bool>(var_0.e.a, arg_1.x, false, arg_1.x)), func_2(4294967295u, Struct_4(arg_1.x), false, var_0.b).c.b).b.a), (_wgslsmith_dot_vec2_i32(var_0.c, var_0.c) ^ var_0.c.x) >= arg_0.x, Struct_1(true, var_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.c))), vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), _wgslsmith_f_op_f32(exp2(var_0.b.c)), var_0.a.x))).b);
    var var_2 = ~(~vec3<i32>(~33892i, _wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, arg_0.x), var_0.c.x), _wgslsmith_clamp_i32(var_0.c.x, 2147483647i, firstTrailingBit(var_0.c.x))));
    let var_3 = select(abs(~_wgslsmith_div_vec2_u32(vec2<u32>(12144u, u_input.a.x), ~vec2<u32>(27281u, arg_2))), countOneBits(~_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, arg_2), countOneBits(var_1.a.xy))), var_1.c.b.a);
    var var_4 = abs(var_1.a.x);
    return func_2(~_wgslsmith_div_u32(arg_2, _wgslsmith_sub_u32(1u, var_1.a.x)) | 35095u, Struct_4(true), all(!arg_1.wz), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 5>();
    var var_0 = vec3<bool>((all(!global0[_wgslsmith_index_u32(63896u, 19u)]) || true) & true, u_input.a.x > ~((u_input.a.x | u_input.a.x) >> (91030u % 32u)), all(vec4<bool>(all(vec2<bool>(true, true)), false, (-5065i < u_input.b) || true, true)));
    let var_1 = !select(select(global0[_wgslsmith_index_u32(~(~0u), 19u)], vec3<bool>(u_input.b >= -1897i, true, var_0.x | true), !(u_input.a.x != 1u)), global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) << (vec4<u32>(58268u, u_input.a.x, 0u, u_input.a.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.a.x, 2639u, 3420u, u_input.a.x))), u_input.a.x, all(vec4<bool>(false, var_0.x, false, var_0.x))), 19u)], select(global0[_wgslsmith_index_u32(351u, 19u)], select(select(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], var_0.x), !vec3<bool>(var_0.x, false, true), !var_0.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 19u)]));
    var var_2 = Struct_4(true);
    var var_3 = func_5(firstTrailingBit(func_4(global2[_wgslsmith_index_u32(0u, 5u)], func_2(~u_input.a.x, func_1(Struct_1(true, 1000f, -1000f, vec3<f32>(852f, -1000f, 264f)), vec3<i32>(-3466i, u_input.b, 1i), vec3<i32>(u_input.b, -42128i, u_input.b), var_1.x), var_0.x, Struct_1(false, 791f, -1000f, vec3<f32>(-139f, 601f, -766f))), Struct_4(true))), select(!(!vec4<bool>(true, false, var_1.x, true)), !vec4<bool>(all(vec3<bool>(true, false, false)), var_1.x && var_2.a, true, var_0.x), var_1.x), ~_wgslsmith_div_u32(31766u, ~0u));
    let var_4 = -u_input.b;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2(~var_3.c.d.x, func_1(var_3.b, var_3.e, vec3<i32>(u_input.b, u_input.b, -17013i), true), true, func_5(var_3.e, vec4<bool>(true, true, false, true), var_3.c.d.x).c.e).d, _wgslsmith_f_op_f32(var_3.c.e.c + var_3.d)) - var_3.b.b));
    var var_6 = vec2<bool>((_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_5)))) == -758f) && any(select(!var_0.zz, select(vec2<bool>(false, var_2.a), var_0.xy, vec2<bool>(true, var_1.x)), var_4 > u_input.b)), var_3.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.c) - _wgslsmith_f_op_f32(-var_5)), _wgslsmith_f_op_f32(-var_5)));
}

