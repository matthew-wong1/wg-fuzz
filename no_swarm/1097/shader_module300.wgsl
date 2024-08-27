struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(true, false), true, false, vec4<i32>(-1i, 2009i, 21830i, -22781i), -34740i);

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec4<u32>(0u, 6609u, 0u, 8764u), Struct_1(vec3<f32>(350f, 977f, -1147f), vec4<i32>(-1i, 18620i, -31247i, 0i), true), 1710f, Struct_1(vec3<f32>(876f, -1091f, -902f), vec4<i32>(i32(-2147483648), -1i, -50765i, 33301i), false)), Struct_2(vec4<u32>(0u, 4294967295u, 1u, 12049u), Struct_1(vec3<f32>(-382f, 958f, -657f), vec4<i32>(55284i, 1i, -75816i, 10053i), true), -1213f, Struct_1(vec3<f32>(1690f, -209f, 538f), vec4<i32>(-1i, 13032i, 13747i, -1i), false)), Struct_2(vec4<u32>(4294967295u, 18902u, 55863u, 7109u), Struct_1(vec3<f32>(-2374f, 1548f, 263f), vec4<i32>(1i, 16140i, 0i, 37488i), true), -1105f, Struct_1(vec3<f32>(-672f, -640f, 1000f), vec4<i32>(44371i, -14513i, i32(-2147483648), 1i), true)), Struct_2(vec4<u32>(6394u, 4294967295u, 137307u, 993u), Struct_1(vec3<f32>(661f, 1536f, -1000f), vec4<i32>(-1i, -11913i, i32(-2147483648), 2147483647i), true), -613f, Struct_1(vec3<f32>(-2037f, -644f, 2430f), vec4<i32>(-43288i, 4746i, -15200i, -12397i), false)), Struct_2(vec4<u32>(30398u, 69807u, 1u, 1u), Struct_1(vec3<f32>(-510f, 236f, 463f), vec4<i32>(2147483647i, 0i, -12486i, 50719i), true), -860f, Struct_1(vec3<f32>(181f, 1438f, 736f), vec4<i32>(1523i, -19848i, 54691i, 2147483647i), true)), Struct_2(vec4<u32>(96215u, 97573u, 48354u, 54790u), Struct_1(vec3<f32>(-1486f, -2290f, -520f), vec4<i32>(-22685i, -56016i, 0i, i32(-2147483648)), false), 2013f, Struct_1(vec3<f32>(1207f, -563f, 1026f), vec4<i32>(2147483647i, 2147483647i, -37420i, 378i), false)), Struct_2(vec4<u32>(1u, 1u, 43018u, 11600u), Struct_1(vec3<f32>(208f, 1000f, 529f), vec4<i32>(22564i, 16428i, 1i, 8443i), true), -1297f, Struct_1(vec3<f32>(1000f, -1609f, 501f), vec4<i32>(-6843i, 0i, 16039i, 589i), true)), Struct_2(vec4<u32>(4294967295u, 1u, 1u, 17176u), Struct_1(vec3<f32>(671f, -585f, 719f), vec4<i32>(-30025i, i32(-2147483648), 9805i, -30982i), true), -1354f, Struct_1(vec3<f32>(-628f, -893f, -1464f), vec4<i32>(-1i, i32(-2147483648), 0i, 2147483647i), false)), Struct_2(vec4<u32>(0u, 1u, 1u, 35942u), Struct_1(vec3<f32>(-1000f, -283f, -1561f), vec4<i32>(24426i, -8835i, i32(-2147483648), 7920i), false), 1333f, Struct_1(vec3<f32>(166f, -828f, 537f), vec4<i32>(82283i, 98332i, -49988i, -31589i), false)), Struct_2(vec4<u32>(25744u, 4294967295u, 66498u, 0u), Struct_1(vec3<f32>(275f, -2249f, -847f), vec4<i32>(2147483647i, i32(-2147483648), -27042i, -575i), true), -184f, Struct_1(vec3<f32>(-469f, 1000f, 563f), vec4<i32>(i32(-2147483648), 37347i, -2393i, i32(-2147483648)), true)));

var<private> global2: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec2<bool>(false, false), false, false, vec4<i32>(-1i, i32(-2147483648), -43506i, i32(-2147483648)), 6973i), Struct_3(vec2<bool>(false, false), false, true, vec4<i32>(-40882i, 0i, 0i, 28335i), 48470i), Struct_3(vec2<bool>(true, false), false, true, vec4<i32>(2147483647i, 53154i, 1i, 15265i), 0i), Struct_3(vec2<bool>(false, false), false, false, vec4<i32>(1i, 2147483647i, i32(-2147483648), 50356i), -20583i), Struct_3(vec2<bool>(false, true), true, true, vec4<i32>(0i, -60353i, 22397i, 13569i), 33009i), Struct_3(vec2<bool>(true, true), false, false, vec4<i32>(2147483647i, -67052i, -56734i, 2147483647i), -19427i), Struct_3(vec2<bool>(false, false), true, false, vec4<i32>(-1i, -6004i, i32(-2147483648), i32(-2147483648)), 27270i));

var<private> global3: Struct_2;

var<private> global4: Struct_1 = Struct_1(vec3<f32>(935f, -175f, 1000f), vec4<i32>(2147483647i, 1i, 1i, 1i), true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> Struct_2 {
    let var_0 = global0.d.x;
    let var_1 = vec3<bool>(false == global4.c, global4.c, true);
    var var_2 = var_1.x;
    return global1[_wgslsmith_index_u32(global3.a.x, 10u)];
}

fn func_2() -> vec2<bool> {
    global4 = global3.d;
    var var_0 = global3.d;
    let var_1 = global3.a.x;
    global2 = array<Struct_3, 7>();
    global2 = array<Struct_3, 7>();
    return vec2<bool>(!var_0.c, ~countOneBits(0i) < global0.e);
}

fn func_3() -> bool {
    var var_0 = global4.c;
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(~firstLeadingBit(~global3.a.x)), ~(~60111u)), 7u)];
    let var_1 = countOneBits(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(1459u, global3.a.x), vec2<u32>(global3.a.x, global3.a.x), global0.b), firstLeadingBit(vec2<u32>(global3.a.x, global3.a.x)), global3.a.zw), vec2<u32>(~global3.a.x, global3.a.x)));
    var_0 = global4.c & !any(!(!vec4<bool>(false, true, global4.c, global3.d.c)));
    let var_2 = func_1().a;
    return !(1619f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(490f)) * _wgslsmith_f_op_f32(min(-471f, global4.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(reverseBits(max(~(58117u << (global3.a.x % 32u)), global3.a.x)), _wgslsmith_mult_u32(global3.a.x, ~global3.a.x | _wgslsmith_div_u32(global3.a.x, 0u)), _wgslsmith_mult_u32(4294967295u, ~(~(global3.a.x >> (0u % 32u)))));
    global3 = func_1();
    var var_1 = Struct_3(func_2(), global0.c, false, vec4<i32>(global0.e, countOneBits(_wgslsmith_add_i32(global4.b.x, global4.b.x)), -36691i, u_input.a), -_wgslsmith_div_i32(_wgslsmith_mult_i32(-6371i, 21198i), 43324i));
    global4 = func_1().b;
    var var_2 = !vec2<bool>(!(global3.b.c & any(var_1.a)), true);
    global0 = Struct_3(vec2<bool>(false, all(!(!vec3<bool>(global4.c, false, var_1.b)))), func_3(), true, global4.b, -3210i);
    global1 = array<Struct_2, 10>();
    global1 = array<Struct_2, 10>();
    var var_3 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global4.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1257f) + _wgslsmith_f_op_f32(ceil(-293f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.x - 348f))), abs(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, reverseBits(var_3.x), 2147483647i), global3.b.b.wxw)), select(1i, 2147483647i, false));
}

