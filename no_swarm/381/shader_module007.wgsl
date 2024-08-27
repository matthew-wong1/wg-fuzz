struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(221f, -1000f, 1229f, -685f), vec4<f32>(279f, -971f, -729f, -526f), vec4<f32>(994f, 128f, 1000f, -1053f), vec4<f32>(-109f, -114f, -986f, 1000f), vec4<f32>(-1781f, 328f, -179f, 735f), vec4<f32>(-443f, -1243f, 464f, 1000f), vec4<f32>(229f, -623f, 1195f, -1119f), vec4<f32>(-1573f, -1365f, -1339f, 392f), vec4<f32>(680f, -1116f, -1049f, 2051f), vec4<f32>(-652f, 229f, -1091f, -278f), vec4<f32>(1000f, 1506f, -553f, -343f), vec4<f32>(-489f, 1092f, -826f, -475f), vec4<f32>(1364f, 1103f, -1296f, -1492f), vec4<f32>(587f, -144f, 1114f, -574f), vec4<f32>(-1000f, -1106f, 453f, -648f), vec4<f32>(352f, 648f, -721f, -2446f), vec4<f32>(301f, -458f, -1580f, 720f), vec4<f32>(-2119f, -744f, -1345f, 501f), vec4<f32>(-962f, 975f, 2336f, 123f), vec4<f32>(-1000f, -307f, 346f, 1721f), vec4<f32>(361f, -888f, 877f, -912f), vec4<f32>(-1036f, -236f, 1000f, 669f), vec4<f32>(271f, 1006f, -1049f, 509f), vec4<f32>(-122f, 264f, -849f, 671f), vec4<f32>(-1046f, -1569f, -225f, 769f));

var<private> global1: array<f32, 3> = array<f32, 3>(-1333f, -810f, 1040f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    let var_0 = Struct_1(702f, vec2<i32>(-1i) * -(vec2<i32>(u_input.c.x, -70569i) & ~u_input.b.yy), reverseBits(_wgslsmith_clamp_i32(u_input.c.x << (~u_input.a.x % 32u), firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, u_input.c.x, 2147483647i), u_input.b))), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), false);
    let var_1 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, ~(~30981u)), 0u), 3u)] + global1[_wgslsmith_index_u32(arg_0, 3u)]);
    let var_2 = Struct_1(793f, ~_wgslsmith_mod_vec2_i32(vec2<i32>(1i << (arg_0 % 32u), 1i), ~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), u_input.c)), _wgslsmith_add_i32(u_input.c.x, _wgslsmith_div_i32(1i, -u_input.b.x) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, u_input.a.x, arg_0), vec4<u32>(u_input.a.x, u_input.a.x, arg_0, u_input.a.x)), 75369u) % 32u)), var_0.d, !all(vec2<bool>(var_0.d, true)));
    let var_3 = Struct_2(var_2);
    var var_4 = vec4<bool>(var_3.a.e, false, all(vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(var_2.e, var_0.e), false)))), true);
    return _wgslsmith_mult_vec2_i32(-firstTrailingBit(vec2<i32>(-1201i, 2147483647i)), reverseBits(vec2<i32>(0i, var_0.c)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(-135f, ~func_3(u_input.a.x), ~min(u_input.b.x, ~u_input.c.x), true, false));
    var var_1 = select(!vec3<bool>(false, false && var_0.a.d, select(var_0.a.e, var_0.a.d, false) || var_0.a.e), select(select(select(vec3<bool>(true, var_0.a.e, false), select(vec3<bool>(var_0.a.e, false, var_0.a.d), vec3<bool>(var_0.a.e, var_0.a.e, true), vec3<bool>(var_0.a.d, false, false)), false), vec3<bool>(true, true, !var_0.a.e), vec3<bool>(false, true | var_0.a.e, !var_0.a.d)), vec3<bool>(true, true, true), false), true);
    global0 = array<vec4<f32>, 25>();
    global0 = array<vec4<f32>, 25>();
    var var_2 = Struct_2(var_0.a);
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-696f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 3u)] + var_2.a.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-403f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 1000f)))), _wgslsmith_f_op_f32(step(1304f, global1[_wgslsmith_index_u32(max(1u, u_input.a.x), 3u)])), var_1.x))), vec2<i32>(-(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c) >> (u_input.a.x % 32u)), countOneBits(48746i)), ~_wgslsmith_add_i32(1i, 0i), all(vec4<bool>(!(!var_0.a.d), !var_2.a.e, true, !select(true, false, var_0.a.d))), true);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~(~u_input.b), u_input.b), abs(arg_0.b.x) & -u_input.b.x);
    global1 = array<f32, 3>();
    let var_1 = firstLeadingBit(u_input.c.x);
    global0 = array<vec4<f32>, 25>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1666f * -689f) + _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, arg_0.b.x) << (u_input.a.xx % vec2<u32>(32u)), vec2<i32>(u_input.c.x, u_input.c.x) | vec2<i32>(-2147483647i, 29684i), func_2().b), abs(select(u_input.b.xz, arg_0.b, true))), _wgslsmith_sub_i32(i32(-1i) * -u_input.c.x, arg_0.b.x), func_2().e, !all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, arg_0.e), vec3<bool>(true, arg_0.d, arg_0.d)))));
    return func_2();
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    global1 = array<f32, 3>();
    var var_0 = Struct_2(func_4(func_2()));
    var var_1 = ~(~(u_input.a.x ^ u_input.a.x));
    var var_2 = Struct_2(Struct_1(-639f, (vec2<i32>(-1i) * -u_input.b.yx) | vec2<i32>(abs(0i), firstTrailingBit(u_input.b.x)), 2147483647i, false | func_2().e, var_0.a.d));
    let var_3 = !(!vec4<bool>(all(select(vec2<bool>(var_0.a.e, false), vec2<bool>(var_2.a.e, true), vec2<bool>(var_0.a.e, true))), any(vec4<bool>(var_0.a.e, false, false, var_0.a.e)), all(vec3<bool>(var_0.a.d, false, var_0.a.e)), false));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 25>();
    global0 = array<vec4<f32>, 25>();
    global0 = array<vec4<f32>, 25>();
    let var_0 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1354f + -528f), global1[_wgslsmith_index_u32(17834u, 3u)], 1f)), true));
    var var_1 = select(vec4<bool>(var_0.a.d, false, any(!(!vec4<bool>(false, var_0.a.e, var_0.a.d, true))), true), vec4<bool>(!(-u_input.b.x <= -8163i), !(u_input.c.x <= u_input.b.x) && (_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 3u)] * 1000f) < -1000f), true, -67134i > ~(2147483647i << (u_input.a.x % 32u))), var_0.a.e);
    let var_2 = select(true, !(!(!(!var_1.x))), var_0.a.e);
    let var_3 = func_4(Struct_1(1483f, countOneBits(~u_input.b.yx), ((var_0.a.b.x >> (u_input.a.x % 32u)) >> ((u_input.a.x & u_input.a.x) % 32u)) >> (u_input.a.x % 32u), true, !var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(3995i, _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, reverseBits(var_0.a.b.x), -1i, var_0.a.c) | -firstLeadingBit(vec4<i32>(-2147483647i, var_0.a.b.x, -72024i, var_0.a.b.x)), ~select(vec4<i32>(2147483647i, 3513i, -1i, -2334i), vec4<i32>(var_3.b.x, 1i, var_3.c, var_3.b.x), vec4<bool>(var_1.x, var_3.e, var_3.d, true)) << (~vec4<u32>(u_input.a.x, u_input.a.x, 51580u, 0u) % vec4<u32>(32u))), _wgslsmith_add_i32(u_input.c.x | -u_input.b.x, func_2().b.x));
}

