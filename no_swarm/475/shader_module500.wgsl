struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: Struct_4,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(Struct_3(false, vec3<i32>(46982i, 23342i, -45597i), vec3<f32>(-613f, -1135f, 213f), -1i, Struct_1(vec3<f32>(-634f, 375f, 2128f), false, 5353i)), vec3<i32>(10133i, 1i, 36191i)), Struct_4(Struct_3(false, vec3<i32>(-19780i, -1i, 2147483647i), vec3<f32>(1781f, 233f, -680f), -29591i, Struct_1(vec3<f32>(-291f, -1000f, -1304f), true, 2147483647i)), vec3<i32>(-61888i, -26802i, 2147483647i)), Struct_4(Struct_3(true, vec3<i32>(-7463i, i32(-2147483648), i32(-2147483648)), vec3<f32>(1039f, -1033f, 823f), -20386i, Struct_1(vec3<f32>(3654f, -232f, -419f), true, -22307i)), vec3<i32>(-1i, -1i, 23323i)), Struct_4(Struct_3(false, vec3<i32>(-1i, -1i, 1i), vec3<f32>(439f, 1225f, 352f), 2147483647i, Struct_1(vec3<f32>(782f, -654f, -892f), false, -28962i)), vec3<i32>(i32(-2147483648), -1i, 10819i)), Struct_4(Struct_3(false, vec3<i32>(-43697i, i32(-2147483648), i32(-2147483648)), vec3<f32>(-349f, -237f, -662f), 2147483647i, Struct_1(vec3<f32>(914f, -662f, 601f), false, i32(-2147483648))), vec3<i32>(2147483647i, 0i, i32(-2147483648))), Struct_4(Struct_3(true, vec3<i32>(i32(-2147483648), 50970i, 0i), vec3<f32>(-443f, 1247f, 493f), -54672i, Struct_1(vec3<f32>(257f, 578f, -186f), true, 29843i)), vec3<i32>(1i, 5984i, 1i)), Struct_4(Struct_3(true, vec3<i32>(i32(-2147483648), 22394i, -42679i), vec3<f32>(505f, 1315f, -1356f), i32(-2147483648), Struct_1(vec3<f32>(1417f, -1132f, -2287f), false, 0i)), vec3<i32>(-57525i, 10187i, -42902i)), Struct_4(Struct_3(true, vec3<i32>(i32(-2147483648), 42033i, -589i), vec3<f32>(-1039f, -677f, 1443f), 12344i, Struct_1(vec3<f32>(-759f, -557f, 635f), true, -40129i)), vec3<i32>(-224i, 2147483647i, 1i)), Struct_4(Struct_3(true, vec3<i32>(-19639i, 42141i, -4630i), vec3<f32>(999f, -1000f, 1221f), -1i, Struct_1(vec3<f32>(1560f, -1272f, 477f), false, i32(-2147483648))), vec3<i32>(77328i, -1i, 0i)), Struct_4(Struct_3(false, vec3<i32>(-2522i, -65244i, i32(-2147483648)), vec3<f32>(-471f, 101f, 1823f), i32(-2147483648), Struct_1(vec3<f32>(-140f, -2043f, -548f), true, 1i)), vec3<i32>(1i, 9520i, 0i)), Struct_4(Struct_3(false, vec3<i32>(i32(-2147483648), -3166i, -1i), vec3<f32>(487f, -1431f, 1092f), 3669i, Struct_1(vec3<f32>(-549f, -689f, 1229f), true, 50604i)), vec3<i32>(35056i, 1i, i32(-2147483648))), Struct_4(Struct_3(true, vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<f32>(1185f, 866f, -101f), 72795i, Struct_1(vec3<f32>(-102f, 183f, -443f), true, -11466i)), vec3<i32>(53221i, 24430i, i32(-2147483648))), Struct_4(Struct_3(false, vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<f32>(-213f, -926f, -1929f), 10172i, Struct_1(vec3<f32>(-411f, 1000f, -1128f), true, -1i)), vec3<i32>(11406i, 2147483647i, 30077i)), Struct_4(Struct_3(false, vec3<i32>(1i, 18948i, 1i), vec3<f32>(-994f, 855f, 423f), 25031i, Struct_1(vec3<f32>(1103f, 1869f, 1107f), false, 1i)), vec3<i32>(-35970i, i32(-2147483648), 1i)), Struct_4(Struct_3(true, vec3<i32>(0i, -1i, 0i), vec3<f32>(-488f, 669f, -605f), -1i, Struct_1(vec3<f32>(1609f, -2001f, -691f), true, 40602i)), vec3<i32>(1i, 1i, -1i)), Struct_4(Struct_3(false, vec3<i32>(-82220i, -14359i, 19863i), vec3<f32>(-1095f, 1951f, -527f), 32169i, Struct_1(vec3<f32>(-1713f, -608f, -1000f), false, 1i)), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i)), Struct_4(Struct_3(false, vec3<i32>(2147483647i, 49707i, 0i), vec3<f32>(-1752f, -106f, -1000f), i32(-2147483648), Struct_1(vec3<f32>(475f, 726f, 1034f), false, 0i)), vec3<i32>(25953i, -1675i, 35476i)));

var<private> global1: vec4<i32> = vec4<i32>(1385i, 0i, -18241i, 23980i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec3<u32>, arg_3: bool) -> vec4<i32> {
    var var_0 = Struct_3(true, _wgslsmith_mod_vec3_i32(-_wgslsmith_clamp_vec3_i32(~u_input.c, firstTrailingBit(vec3<i32>(arg_0.b.x, u_input.b.x, -6843i)), select(vec3<i32>(u_input.c.x, arg_0.b.x, u_input.c.x), vec3<i32>(-1i, -2147483647i, -10819i), vec3<bool>(arg_0.a.e.b, false, false))), max(abs(vec3<i32>(u_input.b.x, u_input.b.x, u_input.c.x)), vec3<i32>(-2147483647i, u_input.c.x, arg_0.b.x) >> (~u_input.a % vec3<u32>(32u)))), arg_0.a.c, ~(-2147483647i << (~min(4294967295u, u_input.d) % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.e.a.x, -146f, arg_0.a.e.a.x) * _wgslsmith_f_op_vec3_f32(arg_0.a.e.a - vec3<f32>(345f, -1137f, arg_1))), arg_0.a.e.a)), arg_0.a.e.a.x != _wgslsmith_f_op_f32(229f * arg_1), firstLeadingBit(_wgslsmith_dot_vec3_i32(global1.yzy, _wgslsmith_mult_vec3_i32(u_input.c, u_input.c)))));
    global0 = array<Struct_4, 17>();
    var var_1 = Struct_5(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 520f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2378f - 365f), -2658f), arg_1), !all(select(vec2<bool>(arg_3, true), vec2<bool>(false, arg_3), var_0.e.b)), 34806i), _wgslsmith_f_op_f32(-arg_1), !(!vec4<bool>(arg_1 < 714f, arg_0.a.a, true, var_0.a)), arg_0, arg_0.a);
    var var_2 = Struct_3(any(select(vec3<bool>(arg_0.a.a, true, arg_1 > var_0.e.a.x), vec3<bool>(arg_3, all(var_1.c.wwz), any(vec2<bool>(var_0.a, true))), arg_0.a.a)), var_0.b, _wgslsmith_f_op_vec3_f32(-var_0.e.a), var_1.a.c, var_1.d.a.e);
    let var_3 = 4294967295u;
    return vec4<i32>(countOneBits(-39893i), var_1.e.d, -2147483647i, -1i);
}

fn func_2() -> Struct_4 {
    let var_0 = ~_wgslsmith_mod_u32(1u & ~u_input.a.x, u_input.d);
    global1 = select(-func_3(global0[_wgslsmith_index_u32(var_0, 17u)], 508f, (vec3<u32>(47404u, var_0, 4294967295u) << (u_input.a % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, var_0), u_input.a), false), vec4<i32>(global1.x, -28126i, ~firstLeadingBit(u_input.c.x >> (0u % 32u)), min(-1i | _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -14528i, -151i, 0i), vec4<i32>(u_input.c.x, global1.x, u_input.b.x, global1.x)), -global1.x)), select(!vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, 54713i, global1.x), u_input.c) >= _wgslsmith_mult_i32(u_input.b.x | -2147483647i, u_input.b.x)));
    let var_1 = true;
    let var_2 = Struct_3(var_1, global1.wzx, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-796f - 272f) - _wgslsmith_f_op_f32(-1000f - -704f)))), _wgslsmith_f_op_f32(-604f * 195f), 857f), -1i, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(405f + -995f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-285f - -1183f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(step(108f, 1170f)))), _wgslsmith_add_u32(max(71027u, 4294967295u), _wgslsmith_mod_u32(u_input.d, u_input.d)) != u_input.a.x, global1.x));
    let var_3 = var_0;
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, var_3), 17u)];
}

fn func_4(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = arg_0.a.a;
    global1 = ~countOneBits(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b.x, -21365i, -1i, u_input.b.x), abs(vec4<i32>(-60723i, -26659i, u_input.b.x, 1i)))) ^ (firstLeadingBit(-countOneBits(vec4<i32>(0i, 36218i, 1i, 15557i))) >> (~(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4686u))) % vec4<u32>(32u)));
    var var_2 = Struct_5(arg_0.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.c.x - arg_0.a.e.a.x))))), vec4<bool>(all(!select(var_0.zz, vec2<bool>(true, false), var_0.yy)), arg_0.a.a, !var_0.x, false), global0[_wgslsmith_index_u32(~(~(_wgslsmith_sub_u32(u_input.d, 4294967295u) ^ 52168u)), 17u)], func_2().a);
    var var_3 = false && !all(var_2.c.zx);
    return global1.xwz;
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: Struct_2) -> Struct_1 {
    var var_0 = -2147483647i;
    var var_1 = Struct_3(arg_1.a.e.b, func_4(func_2()), arg_1.a.c, -2147483647i, func_2().a.e);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(893f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(127f)))))));
    let var_3 = _wgslsmith_f_op_f32(-arg_2.b.a.x);
    return func_2().a.e;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = Struct_1(vec3<f32>(-291f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1880f)), 372f, true)), arg_1.e.a.x), false, -(countOneBits(global1.x) | u_input.c.x));
    let var_1 = ~arg_1.b.x | ~(-2147483647i);
    let var_2 = arg_1.e.a.x;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1110f, 1996f, arg_0.x, -800f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, 1000f, var_2, 861f) * vec4<f32>(var_2, -1338f, -1233f, arg_1.c.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_2, arg_1.c.x, arg_0.x), vec4<f32>(-1000f, 1311f, 1107f, var_2), vec4<bool>(var_0.b, arg_1.a, true, false))), !vec4<bool>(false, var_0.b, true, true)))))));
    global1 = countOneBits(countOneBits(~firstTrailingBit(abs(vec4<i32>(global1.x, global1.x, 28205i, var_1)))));
    return ~(~vec4<u32>(u_input.d, 4294967295u, ~(~u_input.a.x), ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    global1 = min(abs(abs(vec4<i32>(-2147483647i, u_input.b.x, var_0, global1.x))) << (func_5(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(731f, -102f, -1511f) - vec3<f32>(1324f, -472f, 384f)))), Struct_3(true, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b.x, var_0), u_input.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1108f, 1000f, -451f)), 35176i, func_1(u_input.d, Struct_4(Struct_3(true, vec3<i32>(global1.x, -2147483647i, u_input.b.x), vec3<f32>(1416f, 1929f, -1000f), 0i, Struct_1(vec3<f32>(-1000f, -2312f, -339f), true, u_input.b.x)), global1.wyw), Struct_2(u_input.d, Struct_1(vec3<f32>(-1422f, -665f, -664f), false, global1.x))))) % vec4<u32>(32u)), (vec4<i32>(global1.x >> (u_input.a.x % 32u), 2147483647i, _wgslsmith_clamp_i32(0i, 23291i, u_input.c.x), u_input.c.x) | _wgslsmith_mult_vec4_i32(-vec4<i32>(1i, var_0, 2147483647i, -1i), vec4<i32>(0i, 2147483647i, u_input.b.x, var_0))) << (vec4<u32>(27067u, ~13714u, u_input.a.x, firstTrailingBit(31887u)) % vec4<u32>(32u)));
    var var_1 = func_2().a;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, -524f, var_1.e.a.x)), var_1.e.b, var_0);
    var var_3 = func_2().a.e;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-784f, -1558f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~(~u_input.a.x), reverseBits(~4716u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.zy * var_2.a.xz)), select(firstLeadingBit(vec2<u32>(u_input.d, ~u_input.d)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.d), u_input.a.xy), vec2<bool>(any(vec2<bool>(true, var_3.b)) || !var_3.b, false)));
}

