struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_4;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, vec3<f32>(1722f, 1000f, -338f), 55470u, 329f), Struct_1(true, vec3<f32>(1499f, 133f, 2175f), 1u, 302f), Struct_1(true, vec3<f32>(205f, -435f, 1031f), 0u, -1530f), Struct_1(true, vec3<f32>(-336f, -816f, -740f), 100221u, -2191f), Struct_1(true, vec3<f32>(700f, 2704f, 323f), 1u, -221f), Struct_1(false, vec3<f32>(-1784f, 472f, -465f), 46473u, -1063f), Struct_1(true, vec3<f32>(1339f, -447f, 607f), 0u, 353f), Struct_1(false, vec3<f32>(1173f, -824f, -1356f), 47077u, 1934f), Struct_1(true, vec3<f32>(1029f, -224f, 281f), 31926u, -437f), Struct_1(false, vec3<f32>(-1100f, -441f, -1473f), 1u, -981f), Struct_1(true, vec3<f32>(916f, 1000f, 466f), 27933u, 1760f), Struct_1(false, vec3<f32>(820f, -401f, -386f), 0u, -605f), Struct_1(true, vec3<f32>(-1134f, 1000f, 609f), 4294967295u, 123f), Struct_1(true, vec3<f32>(1929f, 164f, 456f), 1u, 1321f), Struct_1(false, vec3<f32>(1071f, 1874f, -150f), 47606u, -715f), Struct_1(true, vec3<f32>(2429f, 449f, 997f), 1u, -947f), Struct_1(false, vec3<f32>(-115f, 701f, -704f), 0u, -1482f), Struct_1(true, vec3<f32>(-308f, 1995f, 169f), 4294967295u, -532f), Struct_1(false, vec3<f32>(-1000f, 463f, -1000f), 4294967295u, 1615f), Struct_1(false, vec3<f32>(711f, 2358f, 1053f), 54063u, -1992f), Struct_1(true, vec3<f32>(-1000f, -1805f, -552f), 61653u, 300f), Struct_1(true, vec3<f32>(-1000f, 1258f, 270f), 9293u, -1366f), Struct_1(true, vec3<f32>(-737f, 1612f, 1339f), 27478u, -145f), Struct_1(false, vec3<f32>(1092f, -689f, -226f), 8786u, 460f), Struct_1(false, vec3<f32>(1144f, -1262f, 1834f), 1u, 281f), Struct_1(false, vec3<f32>(322f, -281f, 374f), 0u, -1980f), Struct_1(true, vec3<f32>(-256f, -356f, 433f), 1u, 291f), Struct_1(false, vec3<f32>(844f, -153f, -512f), 0u, 168f), Struct_1(true, vec3<f32>(-2071f, -1829f, -1000f), 163u, 875f), Struct_1(false, vec3<f32>(1717f, 1098f, -970f), 0u, 1291f), Struct_1(true, vec3<f32>(741f, 302f, -1240f), 0u, -1214f), Struct_1(false, vec3<f32>(-263f, 689f, 151f), 4294967295u, -645f));

var<private> global3: array<bool, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_4(all(global0.c.a) == (any(select(global0.c.a.ww, global0.c.a.zx, false)) | global1.b.a), global2[_wgslsmith_index_u32(global0.c.d.c, 32u)], global0.b);
    return 1219f;
}

fn func_2() -> Struct_4 {
    let var_0 = ~vec2<u32>(69534u, 0u);
    let var_1 = Struct_4(false, global1.b, -1i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -924f);
    let var_3 = Struct_1(all(vec2<bool>(var_1.a, _wgslsmith_f_op_f32(sign(global0.d.d)) < _wgslsmith_f_op_f32(-global1.b.d))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -880f), global0.c.b.x, 112f), _wgslsmith_clamp_u32(~(~75855u & _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 4294967295u, 84123u, 1u))), ~(~_wgslsmith_mod_u32(global0.d.c, u_input.a.x)), 1u), -1000f);
    var var_4 = _wgslsmith_div_vec3_f32(global1.b.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global1.b.b * var_1.b.b))) - vec3<f32>(-832f, _wgslsmith_f_op_f32(-var_1.b.d), _wgslsmith_f_op_f32(-1366f - 1000f)))));
    return Struct_4(_wgslsmith_f_op_f32(floor(1446f)) > var_1.b.b.x, global0.d, u_input.b.x);
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_div_f32(func_2().b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -400f));
    let var_2 = countOneBits(max(u_input.a.wxw, max(u_input.d, u_input.d)) >> (~vec3<u32>(0u, 42706u, 0u) % vec3<u32>(32u))) & firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(24365u, firstTrailingBit(1u)), 14230u, ~max(0u, u_input.a.x)));
    global1 = func_2();
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.b.d, _wgslsmith_f_op_f32(global1.b.d - var_0.b.b.x))), var_0.b.d) - global1.b.b.zz), -countOneBits(max(~17488i, ~var_0.c)), global0.c, func_2().b);
    return Struct_3(var_0.b.b.yz, -2147483647i, arg_0, Struct_1(func_2().b.a, global1.b.b, ~(global1.b.c << (u_input.a.x % 32u)), global1.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(global0.c.a, _wgslsmith_f_op_vec2_f32(-global1.b.b.xz), true, Struct_1(any(global0.c.a.yzy), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global1.b.b, global0.c.d.b), vec3<f32>(global1.b.d, global1.b.d, -410f), !global0.c.a.wxz)), _wgslsmith_add_u32(_wgslsmith_mod_u32(7555u, global1.b.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.d.zx)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.d.d + global0.a.x))))));
    global2 = array<Struct_1, 32>();
    let var_1 = global0.c;
    let var_2 = _wgslsmith_div_i32(-1742i & global0.b, -select(_wgslsmith_add_i32(~(-20089i), global0.b & global0.b), _wgslsmith_sub_i32(global0.b, 11533i) >> (1u % 32u), true));
    var var_3 = _wgslsmith_div_u32(func_2().b.c, 50437u);
    global1 = func_2();
    var var_4 = Struct_4(false, Struct_1(var_1.d.a, vec3<f32>(-1000f, -277f, global1.b.b.x), min(var_0.c.d.c, ~(var_0.d.c & var_1.d.c)), func_2().b.b.x), abs(global1.c));
    let var_5 = Struct_1(false, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), global1.b.b.x, global1.b.d), global1.b.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(780f * -1540f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, u_input.a);
}

