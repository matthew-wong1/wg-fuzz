struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 3> = array<i32, 3>(1i, 1246i, -55763i);

var<private> global2: Struct_1 = Struct_1(vec3<u32>(1u, 0u, 1u), vec2<f32>(804f, 3377f), vec3<i32>(17466i, -46288i, 43353i), -344f);

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, 1i);

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<u32>(40257u, 2394u, 30113u), vec2<f32>(432f, 255f), vec3<i32>(10140i, 1i, 83007i), 147f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec2<f32>(-1000f, -2184f), vec3<i32>(-47455i, 34812i, -11002i), -1497f), Struct_1(vec3<u32>(0u, 63562u, 1u), vec2<f32>(-1246f, 1516f), vec3<i32>(-35428i, 15596i, 22286i), 115f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 7436u), vec2<f32>(672f, 921f), vec3<i32>(0i, i32(-2147483648), 1i), -223f), Struct_1(vec3<u32>(2348u, 7925u, 0u), vec2<f32>(-600f, 744f), vec3<i32>(232i, -12730i, 1i), -641f), Struct_1(vec3<u32>(4438u, 4294967295u, 1u), vec2<f32>(-242f, -1000f), vec3<i32>(-17518i, i32(-2147483648), -1i), -127f), Struct_1(vec3<u32>(1u, 0u, 62541u), vec2<f32>(321f, -320f), vec3<i32>(49193i, 27662i, 680i), -186f), Struct_1(vec3<u32>(0u, 4294967295u, 922u), vec2<f32>(-559f, -654f), vec3<i32>(13579i, -43098i, 0i), -1592f), Struct_1(vec3<u32>(4294967295u, 58578u, 23327u), vec2<f32>(-279f, 772f), vec3<i32>(11985i, 55164i, 1i), 362f), Struct_1(vec3<u32>(13291u, 4294967295u, 78891u), vec2<f32>(824f, -835f), vec3<i32>(-17742i, 0i, 0i), -1126f), Struct_1(vec3<u32>(1u, 28495u, 46687u), vec2<f32>(1907f, 471f), vec3<i32>(2147483647i, i32(-2147483648), 0i), -134f), Struct_1(vec3<u32>(7343u, 12069u, 54969u), vec2<f32>(-1362f, -167f), vec3<i32>(2147483647i, -5930i, -8335i), -943f), Struct_1(vec3<u32>(4294967295u, 0u, 19322u), vec2<f32>(344f, -597f), vec3<i32>(-36985i, -228i, -15330i), -644f), Struct_1(vec3<u32>(1u, 4294967295u, 22400u), vec2<f32>(-612f, 346f), vec3<i32>(-984i, -73256i, 56261i), -1917f), Struct_1(vec3<u32>(1u, 7575u, 35071u), vec2<f32>(-1147f, 1527f), vec3<i32>(41779i, 2147483647i, 2147483647i), 978f), Struct_1(vec3<u32>(25406u, 28178u, 0u), vec2<f32>(-137f, -1422f), vec3<i32>(i32(-2147483648), -44631i, 24703i), 611f), Struct_1(vec3<u32>(0u, 0u, 1u), vec2<f32>(664f, -561f), vec3<i32>(55863i, i32(-2147483648), 20665i), -1196f), Struct_1(vec3<u32>(20334u, 76001u, 18619u), vec2<f32>(-804f, -1000f), vec3<i32>(0i, 0i, 1i), -275f), Struct_1(vec3<u32>(39986u, 28194u, 1u), vec2<f32>(-105f, 547f), vec3<i32>(-1i, -16414i, i32(-2147483648)), -1727f), Struct_1(vec3<u32>(41270u, 22540u, 52745u), vec2<f32>(752f, -796f), vec3<i32>(17194i, -58838i, 1i), 582f), Struct_1(vec3<u32>(5932u, 1u, 30933u), vec2<f32>(204f, -193f), vec3<i32>(-37033i, -22302i, -1i), -483f), Struct_1(vec3<u32>(1u, 37964u, 38208u), vec2<f32>(217f, 1354f), vec3<i32>(0i, -27875i, 43416i), -201f), Struct_1(vec3<u32>(48172u, 8460u, 0u), vec2<f32>(223f, -1263f), vec3<i32>(1i, 2147483647i, -79474i), -1517f), Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec2<f32>(-182f, 355f), vec3<i32>(i32(-2147483648), i32(-2147483648), 2536i), -524f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    return ~(~0u);
}

fn func_3() -> vec2<f32> {
    var var_0 = reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(2594u, global0.a.x) & select(_wgslsmith_mod_vec2_u32(vec2<u32>(8862u, 4294967295u), vec2<u32>(global0.a.x, u_input.d)), global2.a.zz << (vec2<u32>(global2.a.x, u_input.d) % vec2<u32>(32u)), vec2<bool>(true, true)), select(vec2<u32>(0u, u_input.b.x), vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, 49298u), _wgslsmith_mod_u32(global0.a.x, global0.a.x)), global0.a.x == abs(1u))));
    var var_1 = vec3<i32>(18317i, global0.c.x, _wgslsmith_mod_i32(1i, min(-global3.x, ~global3.x)));
    var_0 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-298f, _wgslsmith_f_op_f32(-global2.d))) - _wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(global2.b.x * -112f))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-200f, 1000f, 887f, 2037f), vec4<f32>(var_2, global0.d, var_2, global0.d))) + _wgslsmith_div_vec4_f32(vec4<f32>(-393f, -471f, var_2, 2481f), vec4<f32>(-274f, global0.b.x, -610f, global0.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.d, -326f, 1978f, 436f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, -1882f, -244f, var_2) + vec4<f32>(var_2, -1682f, -906f, var_2)))))));
    return global0.b;
}

fn func_2() -> vec2<f32> {
    global1 = array<i32, 3>();
    global4 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_mod_u32(u_input.d, 4294967295u);
    var var_1 = 1u;
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.a.x, ~global2.a.x, 41297u), 24u)];
    return _wgslsmith_f_op_vec2_f32(select(global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.b.x, 145f)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d, 1173f)) - _wgslsmith_f_op_vec2_f32(max(global2.b, vec2<f32>(-738f, var_2.d))))))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, true, false)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 3>();
    global2 = Struct_1(~vec3<u32>(func_1(global4[_wgslsmith_index_u32(u_input.b.x, 24u)]) ^ 1u, select(42962u, u_input.b.x, true), abs(global2.a.x) << (global0.a.x % 32u)), _wgslsmith_f_op_vec2_f32(step(global0.b, _wgslsmith_f_op_vec2_f32(func_2()))), ~_wgslsmith_add_vec3_i32(global2.c, max(-global2.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global1[_wgslsmith_index_u32(global2.a.x, 3u)], 3036i), global2.c, vec3<i32>(-2147483647i, global3.x, 30009i)))), global0.b.x);
    let var_0 = vec3<u32>(global2.a.x, global0.a.x, u_input.d);
    global3 = vec2<i32>(global1[_wgslsmith_index_u32((abs(~var_0.x) >> (~_wgslsmith_clamp_u32(1u, var_0.x, var_0.x) % 32u)) ^ 26475u, 3u)], abs(-25452i));
    let var_1 = any(select(!vec3<bool>(global2.c.x >= global0.c.x, false, global0.b.x != global0.d), !vec3<bool>(any(vec3<bool>(true, false, false)), all(vec3<bool>(false, true, false)), true), !vec3<bool>(all(vec2<bool>(false, false)), true, all(vec3<bool>(false, true, false)))));
    let var_2 = (~vec2<u32>(9247u, select(var_0.x, global2.a.x, var_1)) << (_wgslsmith_add_vec2_u32(var_0.yx, reverseBits(global2.a.zx >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)))) % vec2<u32>(32u))) << (vec2<u32>(~(~(~var_0.x)), 0u) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x & abs(global0.a.x), ~(~vec2<u32>(var_2.x, _wgslsmith_dot_vec3_u32(global2.a, vec3<u32>(1u, 61031u, 59534u)))), _wgslsmith_add_vec4_u32(vec4<u32>(global0.a.x, var_0.x, u_input.b.x, global2.a.x) << (vec4<u32>(23505u, 27451u, 68265u, global2.a.x) % vec4<u32>(32u)), vec4<u32>(41650u, ~global0.a.x, 1u, _wgslsmith_clamp_u32(var_2.x, var_2.x, 65642u))) | _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global2.a.x, 1u, var_2.x, global0.a.x)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(global2.a.x, 61169u, 4294967295u, u_input.b.x), vec4<u32>(var_0.x, 0u, 5929u, 18070u)), ~vec4<u32>(35498u, u_input.b.x, var_0.x, global0.a.x))));
}

