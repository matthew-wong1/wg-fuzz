struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1726f, -404f, 720f);

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec2<u32>(7282u, 17393u), vec4<f32>(580f, -1023f, -1428f, -701f)), Struct_3(vec2<u32>(43083u, 0u), vec4<f32>(1003f, -195f, 281f, 215f)), Struct_3(vec2<u32>(88140u, 95780u), vec4<f32>(173f, 1050f, -668f, -1000f)), Struct_3(vec2<u32>(0u, 875u), vec4<f32>(-672f, 1081f, -1327f, -881f)), Struct_3(vec2<u32>(4294967295u, 0u), vec4<f32>(-830f, 661f, 1383f, -925f)), Struct_3(vec2<u32>(10186u, 16995u), vec4<f32>(-811f, 1000f, 1348f, 1569f)), Struct_3(vec2<u32>(52834u, 109129u), vec4<f32>(-1000f, 794f, -286f, -1963f)), Struct_3(vec2<u32>(16372u, 1u), vec4<f32>(1457f, 1660f, -649f, 386f)), Struct_3(vec2<u32>(0u, 48628u), vec4<f32>(639f, -894f, -1748f, -1447f)), Struct_3(vec2<u32>(25481u, 12467u), vec4<f32>(1080f, 754f, 101f, 2039f)), Struct_3(vec2<u32>(0u, 0u), vec4<f32>(589f, 1000f, -214f, -584f)), Struct_3(vec2<u32>(0u, 8045u), vec4<f32>(1852f, -1347f, 929f, -217f)), Struct_3(vec2<u32>(19457u, 1967u), vec4<f32>(-1000f, 1190f, 804f, 1114f)), Struct_3(vec2<u32>(9243u, 29331u), vec4<f32>(-1000f, 1347f, -195f, 1491f)), Struct_3(vec2<u32>(1u, 0u), vec4<f32>(-823f, 1273f, 2085f, 538f)), Struct_3(vec2<u32>(96683u, 4294967295u), vec4<f32>(826f, -158f, -3290f, 252f)), Struct_3(vec2<u32>(17971u, 0u), vec4<f32>(-1611f, 764f, -1432f, 1132f)), Struct_3(vec2<u32>(0u, 0u), vec4<f32>(-334f, -719f, 111f, -1809f)), Struct_3(vec2<u32>(4294967295u, 50454u), vec4<f32>(-1269f, -532f, -750f, -240f)), Struct_3(vec2<u32>(0u, 123084u), vec4<f32>(320f, -459f, -1284f, -1087f)), Struct_3(vec2<u32>(4294967295u, 1u), vec4<f32>(1697f, 1000f, -167f, 439f)), Struct_3(vec2<u32>(4294967295u, 38974u), vec4<f32>(1984f, 799f, 605f, 1455f)), Struct_3(vec2<u32>(58905u, 4290u), vec4<f32>(-1000f, 1000f, -371f, 1734f)), Struct_3(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-361f, 1111f, 222f, -1371f)), Struct_3(vec2<u32>(0u, 4294967295u), vec4<f32>(-1674f, 1655f, 346f, -280f)), Struct_3(vec2<u32>(25065u, 97276u), vec4<f32>(1246f, 503f, -741f, 985f)), Struct_3(vec2<u32>(6973u, 51605u), vec4<f32>(1044f, -1065f, 1401f, 1647f)), Struct_3(vec2<u32>(54528u, 1u), vec4<f32>(-1410f, -1000f, -339f, 830f)), Struct_3(vec2<u32>(4294967295u, 75323u), vec4<f32>(196f, 157f, -201f, -355f)), Struct_3(vec2<u32>(0u, 4294967295u), vec4<f32>(904f, 538f, 363f, -901f)), Struct_3(vec2<u32>(4294967295u, 0u), vec4<f32>(-1238f, 176f, -618f, -1429f)), Struct_3(vec2<u32>(35807u, 42100u), vec4<f32>(-704f, -217f, 1081f, 2478f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    global1 = array<Struct_3, 32>();
    var var_0 = true;
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.xy), vec2<f32>(1f, _wgslsmith_f_op_f32(-arg_2))))), Struct_2(vec3<f32>(global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-558f + global0.x))), _wgslsmith_f_op_f32(1f - global0.x)), vec3<u32>(358u, _wgslsmith_mod_u32(0u, 1u), arg_3.c), arg_3), ~arg_1.x, arg_0, global1[_wgslsmith_index_u32(u_input.b, 32u)]);
    let var_2 = arg_1;
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-205f, arg_2))), Struct_2(vec3<f32>(var_1.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1588f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1165f)))), vec3<u32>(0u, ~72413u, firstLeadingBit(arg_1.x)), arg_3), 4294967295u, !arg_0, Struct_3(vec2<u32>(u_input.b & arg_3.c, arg_3.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.e.b.x)), global0.x, 935f, _wgslsmith_f_op_f32(trunc(-876f))) * vec4<f32>(_wgslsmith_f_op_f32(min(951f, arg_2)), _wgslsmith_f_op_f32(min(303f, arg_2)), -1246f, arg_2))));
    return vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1713f)))), -212f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-arg_2));
}

fn func_2(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = Struct_3(~countOneBits(arg_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(all(vec3<bool>(true, true, false)), ~vec4<u32>(1u, u_input.b, u_input.b, arg_0.a.x) ^ vec4<u32>(58107u, arg_0.a.x, 8994u, 44008u), _wgslsmith_f_op_f32(trunc(-1486f)), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, 9227i, -5445i), vec4<i32>(115i, u_input.c.x, 1i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.c.x)), vec2<bool>(true, true), ~0u)))));
    let var_1 = Struct_3(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1015f - -322f), _wgslsmith_f_op_f32(416f + 101f)))), _wgslsmith_div_f32(-459f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-435f, 320f))))), _wgslsmith_f_op_f32(2001f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(122f * -304f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.x)), _wgslsmith_f_op_f32(trunc(global0.x))), 862f, select(u_input.b < 0u, true, true)))));
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.c.x, -24231i), countOneBits(min(reverseBits(vec2<i32>(u_input.a.x, -18496i) ^ vec2<i32>(u_input.a.x, u_input.c.x)), u_input.a)));
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(1f + var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + -1358f), _wgslsmith_f_op_f32(step(582f, global0.x))), vec3<u32>(_wgslsmith_sub_u32(reverseBits(4294967295u & var_0.a.x), var_1.a.x), var_1.a.x, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(1u, 4294967295u, 14815u), vec3<u32>(arg_0.a.x, 4294967295u, arg_0.a.x), false), ~vec3<u32>(4294967295u, 0u, 88361u))), Struct_1(~(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, var_2.x, 0i, -26047i), vec4<i32>(-29070i, -12769i, -45847i, -22245i))), !vec2<bool>(any(vec2<bool>(false, true)), true), var_1.a.x));
    global1 = array<Struct_3, 32>();
    return var_0.b.yy;
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(global1[_wgslsmith_index_u32(4294967295u, 32u)])) + _wgslsmith_f_op_vec2_f32(global0.zz * vec2<f32>(_wgslsmith_div_f32(845f, 467f), _wgslsmith_f_op_f32(sign(413f))))), Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1668f, 852f, global0.x), vec3<f32>(-627f, global0.x, global0.x), true))), vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -277f), -1000f))), vec3<u32>(u_input.b, ~(~u_input.b), u_input.b), Struct_1(vec4<i32>(13089i, _wgslsmith_dot_vec4_i32(vec4<i32>(20629i, 1i, -1i, -32921i), vec4<i32>(u_input.a.x, -24808i, 1i, u_input.c.x)), u_input.a.x, 0i), vec2<bool>(all(vec4<bool>(false, true, false, false)), true), 8292u)), select(u_input.b, u_input.b, select(true, true, true)), !(2147483647i >= u_input.a.x), Struct_3(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(49436u, u_input.b) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 15014u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-104f, _wgslsmith_f_op_f32(floor(-1108f)), -1236f, 443f))));
    global1 = array<Struct_3, 32>();
    var var_1 = var_0.b;
    global0 = vec3<f32>(-1326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(var_0.e)).x), 296f);
    let var_2 = (var_0.b.c.b.x & var_0.d) & false;
    return select(select(!select(!vec4<bool>(false, var_0.d, true, var_1.c.b.x), select(vec4<bool>(var_0.b.c.b.x, false, false, true), vec4<bool>(var_1.c.b.x, var_1.c.b.x, true, false), vec4<bool>(false, var_0.b.c.b.x, false, false)), select(vec4<bool>(true, var_2, var_1.c.b.x, false), vec4<bool>(var_0.b.c.b.x, true, false, var_1.c.b.x), var_2)), !vec4<bool>(!var_1.c.b.x, false, true, var_0.b.c.b.x), !(any(vec2<bool>(var_1.c.b.x, true)) && false)), vec4<bool>(!var_2, var_0.d, true, !var_2), !select(vec4<bool>(var_0.d, !var_1.c.b.x, !var_2, all(vec4<bool>(var_0.d, false, true, true))), vec4<bool>(var_0.d, true, select(false, var_0.d, true), true && var_0.d), !(!vec4<bool>(var_0.b.c.b.x, true, var_0.d, var_0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 32>();
    let var_0 = select(!(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), true)), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false))), func_1(), vec4<bool>(true, true, true, true)), vec4<bool>(true | ((1i << (u_input.b % 32u)) >= -37000i), false, true, select(true, !all(vec3<bool>(true, false, false)), !(u_input.c.x < 2147483647i))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(true, vec4<u32>(4294967295u, 0u, 4294967295u, u_input.b), 473f, Struct_1(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 1i), var_0.zw, 1u))).x, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(!var_0.x, vec4<u32>(22854u, 0u, 1u, 10379u), _wgslsmith_f_op_f32(global0.x - -195f), Struct_1(vec4<i32>(33353i, -2147483647i, -1i, -2147483647i), vec2<bool>(var_0.x, var_0.x), 1u))).wyz)));
    let var_1 = true;
    var var_2 = ~select(firstLeadingBit(-28014i), ~(~abs(u_input.c.x)), false);
    let var_3 = min(vec4<i32>(_wgslsmith_mult_i32(countOneBits(2147483647i), 1i), _wgslsmith_add_i32(0i, -27094i), u_input.c.x, ~u_input.c.x), abs(vec4<i32>(abs(abs(460i)), -firstTrailingBit(u_input.a.x), _wgslsmith_sub_i32(-28108i, u_input.c.x), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(2489u, 27350u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 63983u), max(u_input.b, u_input.b), 4294967295u)), max(~vec2<u32>(u_input.b, u_input.b), max(~vec2<u32>(u_input.b, u_input.b), countOneBits(vec2<u32>(u_input.b, 13847u))))));
}

