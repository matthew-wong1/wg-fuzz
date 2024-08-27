struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(6716i, 0i), vec2<i32>(-31194i, 18247i), vec2<i32>(49548i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(19914i, 9708i), vec2<i32>(2147483647i, -31648i), vec2<i32>(2147483647i, 14302i), vec2<i32>(-6896i, 11523i), vec2<i32>(22031i, -8088i), vec2<i32>(50365i, -42856i), vec2<i32>(1879i, -34689i), vec2<i32>(-24633i, -1i), vec2<i32>(1i, -53520i), vec2<i32>(26372i, -19938i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), -37994i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-38157i, -17379i), vec2<i32>(-11435i, 1i), vec2<i32>(1i, 1i), vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 34214i), vec2<i32>(0i, 10989i), vec2<i32>(-49758i, -37397i), vec2<i32>(7815i, -1i), vec2<i32>(2147483647i, 3842i), vec2<i32>(14912i, -44108i), vec2<i32>(i32(-2147483648), -55388i), vec2<i32>(-1i, -1i));

var<private> global2: array<vec3<bool>, 17>;

var<private> global3: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-548f, 401f, -3169f, 755f), vec4<f32>(421f, 283f, -1241f, -568f), vec4<f32>(-797f, -522f, -364f, -1143f), vec4<f32>(-674f, 1353f, -3270f, 547f), vec4<f32>(-566f, -334f, -406f, -657f), vec4<f32>(2498f, 1071f, -1000f, -320f), vec4<f32>(-1468f, -1578f, -238f, 398f), vec4<f32>(665f, -1000f, -651f, -477f), vec4<f32>(-645f, -406f, -448f, -838f), vec4<f32>(-512f, -1007f, 297f, 582f), vec4<f32>(-258f, 1523f, 633f, 883f), vec4<f32>(1000f, 409f, -1480f, 1544f), vec4<f32>(-1000f, 237f, -1558f, 330f), vec4<f32>(-1000f, 399f, 368f, -1000f), vec4<f32>(-947f, 1712f, -493f, 510f), vec4<f32>(1000f, -2090f, 1511f, -1434f), vec4<f32>(-497f, 750f, 514f, -642f), vec4<f32>(1131f, -2850f, 1000f, -1063f), vec4<f32>(879f, -873f, 974f, 595f), vec4<f32>(221f, 1000f, -1387f, -1038f), vec4<f32>(1049f, -304f, 301f, -1009f), vec4<f32>(-1000f, 1000f, 498f, 1000f), vec4<f32>(380f, -1209f, 1174f, -760f), vec4<f32>(-1000f, 1000f, 1911f, 693f), vec4<f32>(487f, 1383f, -1319f, -894f), vec4<f32>(200f, 1373f, 1582f, -896f), vec4<f32>(-755f, -375f, 1000f, 460f), vec4<f32>(-514f, -628f, 1000f, -298f), vec4<f32>(-1000f, -254f, 906f, 1301f), vec4<f32>(-1124f, 426f, -410f, -598f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    global0 = array<i32, 18>();
    global2 = array<vec3<bool>, 17>();
    global2 = array<vec3<bool>, 17>();
    global2 = array<vec3<bool>, 17>();
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(countOneBits(u_input.a.x ^ u_input.a.x), !(arg_0.x || false), -(vec3<i32>(-30581i, 1211i, -2147483647i) | vec3<i32>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(24830u, 18u)])), select(vec4<bool>(arg_0.x, arg_0.x, false, false), select(vec4<bool>(arg_0.x, false, arg_0.x, false), arg_0, false), arg_0.x), any(vec2<bool>(true, true))), ~(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), abs(1u), vec4<u32>(~abs(1u), ~u_input.a.x, u_input.a.x, u_input.a.x)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(528f, 778f))))), Struct_1(u_input.a.x, true, -(~vec3<i32>(global0[_wgslsmith_index_u32(46905u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], 47937i)), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x), -(~firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 18140i, 27880i, global0[_wgslsmith_index_u32(35181u, 18u)]))), 4294967295u, select(firstTrailingBit(~vec4<u32>(69117u, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 29738u, 4294967295u), vec4<u32>(6362u, 20396u, 1u, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 34018u) % vec4<u32>(32u))), true)), ~(~countOneBits(vec4<u32>(4294967295u, u_input.a.x, 53073u, 17462u)) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 56545u, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u), ~vec4<u32>(27596u, 9010u, 58663u, 7145u)) % vec4<u32>(32u))));
    return countOneBits((global0[_wgslsmith_index_u32(var_0.b.b.a, 18u)] | _wgslsmith_sub_i32(var_0.a.c.x, 2147483647i)) | _wgslsmith_div_i32(~(-1i), abs(var_0.a.c.x)));
}

fn func_2() -> Struct_1 {
    return Struct_1(28464u, false, select(vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -global0[_wgslsmith_index_u32(0u, 18u)], 47206i), func_3(vec4<bool>(true, true, true, true)), 1i), vec3<i32>(min(abs(global0[_wgslsmith_index_u32(4294967295u, 18u)]), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], vec2<i32>(global0[_wgslsmith_index_u32(11534u, 18u)], 24607i))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x), 18u)], global0[_wgslsmith_index_u32(~u_input.a.x, 18u)]), any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, u_input.a.x != 36071u, all(vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), true), true), !(!all(vec3<bool>(false, true, false))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = 17080u;
    global3 = array<vec4<f32>, 30>();
    let var_1 = global0[_wgslsmith_index_u32(var_0, 18u)];
    var var_2 = arg_1.b;
    var var_3 = -1580f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-115f)) * arg_1.a));
    return -1511f;
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(188f, -854f)), Struct_2(_wgslsmith_f_op_f32(-629f + 204f), func_2(), vec4<i32>(-19250i, global0[_wgslsmith_index_u32(1u, 18u)], arg_1, arg_1) | vec4<i32>(-16453i, arg_0.a, arg_0.a, -1i), 0u, ~vec4<u32>(u_input.a.x, 25329u, u_input.a.x, u_input.a.x)), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, -1i, 0i), vec3<i32>(arg_0.a, global0[_wgslsmith_index_u32(5806u, 18u)], 2147483647i)))))), func_2(), vec4<i32>(-1i) * -(~(~vec4<i32>(global0[_wgslsmith_index_u32(25155u, 18u)], -1i, global0[_wgslsmith_index_u32(57519u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)]))), u_input.a.x, select(~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.x, ~u_input.a.x, u_input.a.x), reverseBits(vec4<u32>(1u, ~u_input.a.x, u_input.a.x, u_input.a.x)), true));
    global1 = array<vec2<i32>, 30>();
    var var_1 = arg_0;
    global1 = array<vec2<i32>, 30>();
    var var_2 = max(u_input.a ^ _wgslsmith_div_vec2_u32(firstTrailingBit(u_input.a), ~(u_input.a | var_0.e.wx)), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 35371u), var_0.e.zy));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 30u)])));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2) -> f32 {
    let var_0 = vec2<u32>(75274u, 5104u);
    let var_1 = ~(i32(-1i) * -2147483647i);
    var var_2 = Struct_3(arg_1, Struct_2(_wgslsmith_f_op_f32(floor(arg_1.a)), arg_1.b, min(arg_1.c, vec4<i32>(~arg_1.b.c.x, 42537i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(18316u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]), global0[_wgslsmith_index_u32(~0u, 18u)])), firstLeadingBit(var_0.x), vec4<u32>(42832u, var_0.x, var_0.x, ~_wgslsmith_add_u32(33888u, var_0.x))), arg_1.e);
    global3 = array<vec4<f32>, 30>();
    let var_3 = arg_1.c << (select(~vec4<u32>(~u_input.a.x, 96793u >> (var_2.b.b.a % 32u), ~353u, _wgslsmith_mod_u32(22914u, var_2.c.x)), vec4<u32>(1u, u_input.a.x & ~29348u, ~arg_1.e.x, 3709u), var_2.b.b.d.x) % vec4<u32>(32u));
    return arg_1.a;
}

fn func_6(arg_0: f32) -> vec3<u32> {
    var var_0 = ~vec4<u32>(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 77681u), vec3<u32>(1u, func_2().a, u_input.a.x)), 4294967295u, _wgslsmith_add_u32(countOneBits(53726u) | (1u | u_input.a.x), 24839u));
    global3 = array<vec4<f32>, 30>();
    let var_1 = true;
    var_0 = min(~vec4<u32>(5762u, var_0.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 36776u, var_0.x), var_0.yyw), _wgslsmith_add_u32(0u, u_input.a.x)), vec4<u32>(firstTrailingBit(u_input.a.x), 22778u, _wgslsmith_div_u32(~abs(u_input.a.x), 0u), u_input.a.x));
    var_0 = ~firstTrailingBit(~firstTrailingBit(vec4<u32>(4399u, 1u, 4294967295u, var_0.x) << (vec4<u32>(43153u, 4294967295u, 4294967295u, var_0.x) % vec4<u32>(32u))));
    return var_0.xwx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~(~(global0[_wgslsmith_index_u32(u_input.a.x, 18u)] | ~global0[_wgslsmith_index_u32(u_input.a.x, 18u)])));
    global3 = array<vec4<f32>, 30>();
    var var_1 = _wgslsmith_add_vec3_u32(func_6(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(func_1(var_0, var_0.a)), Struct_2(_wgslsmith_f_op_f32(trunc(476f)), func_2(), vec4<i32>(global0[_wgslsmith_index_u32(45241u, 18u)], -1i, var_0.a, -41095i), ~u_input.a.x, ~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))))), abs(max(min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<u32>(34176u, 112267u, u_input.a.x)), ~(~vec3<u32>(0u, u_input.a.x, 1u)))));
    var var_2 = select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 69745u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(0u, u_input.a.x, u_input.a.x), false), reverseBits(vec3<u32>(80967u ^ u_input.a.x, var_1.x, 4294967295u))), 17u)], func_2().d.wzz, true);
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-469f)) - _wgslsmith_f_op_f32(-1928f + 1062f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + -863f)), Struct_1(4294967295u, !all(global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec3<i32>(-1i, 2147483647i, var_0.a) | -vec3<i32>(-2147483647i, -30641i, global0[_wgslsmith_index_u32(0u, 18u)]), !vec4<bool>(false, var_2.x, var_2.x, var_2.x), true), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(~u_input.a.x, 18u)], ~(~1i), -var_0.a ^ func_2().c.x), 0u, vec4<u32>(63457u, abs(53048u), u_input.a.x, u_input.a.x)), Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-311f)) - -394f), 979f)), func_2(), reverseBits(~vec4<i32>(var_0.a, -9265i, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], var_0.a)), 26444u, abs(vec4<u32>(0u, var_1.x, 0u, 9219u)) & firstLeadingBit(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 27102u))), reverseBits(~(~(~vec4<u32>(var_1.x, 0u, 14198u, var_1.x)))));
    let var_4 = Struct_3(var_3.b, Struct_2(-1384f, var_3.a.b, select(countOneBits(vec4<i32>(21930i, global0[_wgslsmith_index_u32(7322u, 18u)], 2147483647i, 42955i) << (vec4<u32>(var_3.b.b.a, var_3.a.d, var_3.b.b.a, var_3.c.x) % vec4<u32>(32u))), vec4<i32>(~52153i, var_0.a, 0i, var_0.a), true), 1u, ~abs(var_3.a.e)), var_3.a.e);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(~6151u, 1u, firstTrailingBit(var_4.b.b.a), ~4294967295u) | select(select(vec4<u32>(var_1.x, var_1.x, var_1.x, var_3.c.x), var_3.c, true), firstTrailingBit(var_3.c), var_3.a.b.d)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<f32>(var_3.a.a, var_4.a.a), var_4.b, var_0.a))))), -204f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.a + -539f)), _wgslsmith_f_op_f32(1747f - _wgslsmith_f_op_f32(-var_4.b.a)), _wgslsmith_f_op_f32(-1994f - _wgslsmith_f_op_f32(func_5(vec4<f32>(var_3.a.a, -373f, var_3.a.a, var_4.b.a), Struct_2(var_3.b.a, var_4.a.b, vec4<i32>(-6754i, var_4.a.b.c.x, -41068i, 2147483647i), 11395u, vec4<u32>(var_4.b.e.x, var_1.x, var_4.c.x, u_input.a.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_4.b.a))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.a, var_3.a.a, var_4.a.a, -998f) * global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_3.a.b.a), var_4.a.e.wy), 30u)])))));
}

