struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec3<f32>(962f, -1310f, 640f), 4294967295u, Struct_1(-168f, vec2<i32>(2147483647i, -4122i))), Struct_3(vec3<f32>(-883f, 1000f, -568f), 0u, Struct_1(-823f, vec2<i32>(39744i, 31794i))), Struct_3(vec3<f32>(2569f, 494f, 963f), 1u, Struct_1(-1000f, vec2<i32>(1i, 0i))), Struct_3(vec3<f32>(-418f, 1624f, 793f), 16183u, Struct_1(275f, vec2<i32>(i32(-2147483648), 2147483647i))), Struct_3(vec3<f32>(727f, -1591f, 1883f), 58268u, Struct_1(665f, vec2<i32>(-30903i, -15500i))), Struct_3(vec3<f32>(903f, 1416f, 1177f), 39401u, Struct_1(-697f, vec2<i32>(-93349i, 2147483647i))), Struct_3(vec3<f32>(1000f, -1141f, -146f), 4294967295u, Struct_1(-1178f, vec2<i32>(-6674i, 93551i))), Struct_3(vec3<f32>(389f, -293f, 230f), 1u, Struct_1(-650f, vec2<i32>(-1i, -13254i))), Struct_3(vec3<f32>(-241f, -127f, -536f), 36576u, Struct_1(-1633f, vec2<i32>(-28191i, 18252i))), Struct_3(vec3<f32>(208f, -137f, -134f), 13205u, Struct_1(776f, vec2<i32>(0i, 11708i))), Struct_3(vec3<f32>(724f, 1271f, 253f), 119947u, Struct_1(404f, vec2<i32>(0i, i32(-2147483648)))), Struct_3(vec3<f32>(-286f, -407f, -2134f), 39989u, Struct_1(1000f, vec2<i32>(1579i, 47097i))), Struct_3(vec3<f32>(567f, 465f, 893f), 1u, Struct_1(1507f, vec2<i32>(2147483647i, -16182i))), Struct_3(vec3<f32>(-295f, 2471f, -1000f), 1u, Struct_1(-1425f, vec2<i32>(i32(-2147483648), i32(-2147483648)))), Struct_3(vec3<f32>(-1192f, 599f, -1635f), 4294967295u, Struct_1(-1000f, vec2<i32>(2147483647i, 1i))), Struct_3(vec3<f32>(-865f, -1545f, 672f), 35057u, Struct_1(1072f, vec2<i32>(8186i, -11638i))), Struct_3(vec3<f32>(-844f, 825f, 1000f), 4294967295u, Struct_1(234f, vec2<i32>(0i, -49067i))), Struct_3(vec3<f32>(1000f, -702f, -149f), 89822u, Struct_1(1000f, vec2<i32>(-9912i, 13958i))), Struct_3(vec3<f32>(-524f, 449f, -835f), 45849u, Struct_1(1801f, vec2<i32>(0i, 0i))), Struct_3(vec3<f32>(-1000f, 735f, -565f), 38981u, Struct_1(1044f, vec2<i32>(-21399i, 1i))), Struct_3(vec3<f32>(-1670f, 348f, -152f), 4294967295u, Struct_1(-456f, vec2<i32>(-51789i, i32(-2147483648)))), Struct_3(vec3<f32>(-837f, -126f, 2478f), 77910u, Struct_1(2179f, vec2<i32>(-61782i, 0i))), Struct_3(vec3<f32>(2928f, -1683f, 152f), 27251u, Struct_1(1544f, vec2<i32>(-1i, 45144i))), Struct_3(vec3<f32>(-1082f, 496f, -602f), 41266u, Struct_1(825f, vec2<i32>(2147483647i, -7323i))), Struct_3(vec3<f32>(-988f, 1520f, -591f), 42554u, Struct_1(932f, vec2<i32>(-15500i, 1i))), Struct_3(vec3<f32>(-453f, -716f, 296f), 10244u, Struct_1(-1472f, vec2<i32>(1i, 14912i))), Struct_3(vec3<f32>(1426f, -1121f, 170f), 0u, Struct_1(-990f, vec2<i32>(i32(-2147483648), 2147483647i))), Struct_3(vec3<f32>(-1000f, -206f, 850f), 28987u, Struct_1(1858f, vec2<i32>(17884i, -1i))), Struct_3(vec3<f32>(1000f, 103f, -1663f), 1u, Struct_1(-1112f, vec2<i32>(2147483647i, 0i))), Struct_3(vec3<f32>(2469f, -155f, 391f), 18499u, Struct_1(-504f, vec2<i32>(1i, i32(-2147483648)))), Struct_3(vec3<f32>(915f, 414f, 223f), 4294967295u, Struct_1(-161f, vec2<i32>(-34071i, 0i))));

var<private> global1: vec3<i32>;

var<private> global2: array<i32, 31>;

var<private> global3: array<f32, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, u_input.a.x), 23u)])), vec2<i32>(1i, 12966i << (~u_input.a.x % 32u))));
    global0 = array<Struct_3, 31>();
    global1 = u_input.c;
    let var_1 = var_0.a.b;
    let var_2 = var_0.a.b.x <= _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.d.x, 22962i, global1.x) & -vec4<i32>(global1.x, -12724i, 0i, var_1.x), abs(~vec4<i32>(-21102i, 5149i, -2147483647i, 36923i))), _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.c.xx, reverseBits(vec2<i32>(5320i, 0i)))));
    return _wgslsmith_dot_vec4_u32(~firstLeadingBit(~abs(vec4<u32>(4879u, u_input.a.x, 1u, u_input.a.x))), min(abs(vec4<u32>(_wgslsmith_mult_u32(arg_0, 84975u), u_input.a.x, _wgslsmith_sub_u32(0u, u_input.a.x), u_input.a.x)), ~vec4<u32>(arg_0, arg_0 >> (arg_0 % 32u), u_input.a.x, 4294967295u)));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: bool, arg_3: bool) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -1051f, 575f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, global3[_wgslsmith_index_u32(u_input.a.x, 23u)], global3[_wgslsmith_index_u32(u_input.a.x, 23u)]))), arg_2)), vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), -778f, global3[_wgslsmith_index_u32(u_input.a.x, 23u)]))), _wgslsmith_mult_u32(~(u_input.a.x ^ ~u_input.a.x), 67872u), Struct_1(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(firstLeadingBit(~7837u), 23u)] - -892f), -vec2<i32>(1i, -1i & global2[_wgslsmith_index_u32(u_input.a.x, 31u)])));
    global2 = array<i32, 31>();
    var var_1 = Struct_4(vec3<u32>(var_0.b, var_0.b, 1u), vec2<i32>(arg_1.x, 3054i), ~vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(14031i, global2[_wgslsmith_index_u32(85470u, 31u)], -15133i, 0i), vec4<i32>(1i, u_input.d.x, -43301i, arg_1.x)), -1i), u_input.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, arg_1.x, var_0.c.b.x, var_0.c.b.x), firstLeadingBit(vec4<i32>(global2[_wgslsmith_index_u32(var_0.b, 31u)], 34355i, arg_1.x, var_0.c.b.x)))), vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(41673u, var_0.b, var_0.b, var_0.b) | vec4<u32>(1u, var_0.b, 1u, u_input.a.x)), vec4<u32>(var_0.b, u_input.a.x, 1u, 0u) & ~vec4<u32>(4294967295u, u_input.a.x, var_0.b, u_input.a.x)), 12194u, ~var_0.b));
    global2 = array<i32, 31>();
    var_1 = Struct_4(abs(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), var_1.a))), -firstTrailingBit(min(arg_1.zz ^ var_0.c.b, _wgslsmith_sub_vec2_i32(vec2<i32>(-15582i, arg_1.x), u_input.c.yy))), _wgslsmith_mult_vec3_i32(arg_1, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, u_input.c.x), arg_1), -1i, -firstLeadingBit(global2[_wgslsmith_index_u32(84350u, 31u)]))), vec3<u32>(~(abs(var_1.d.x) | _wgslsmith_add_u32(var_0.b, var_0.b)), func_3(_wgslsmith_add_u32(~u_input.a.x, u_input.a.x)), var_0.b));
    return vec4<u32>(1u, 4294967295u, ~(~0u ^ select(_wgslsmith_mod_u32(4294967295u, u_input.a.x), abs(35856u), 2147483647i <= arg_1.x)), firstLeadingBit(min(~43206u & _wgslsmith_div_u32(var_0.b, 4294967295u), 8534u)));
}

fn func_1(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 23u)], 1409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1624f, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -705f), _wgslsmith_f_op_f32(sign(arg_0.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(f32(-1f) * -1454f), 657f, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(14454u, 23u)])))), true)));
    return vec3<i32>(global2[_wgslsmith_index_u32(arg_0.b, 31u)] & -(~(7399i << (0u % 32u))), arg_0.c.b.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~func_2(_wgslsmith_f_op_f32(arg_0.c.a - -1297f), _wgslsmith_mult_vec3_i32(vec3<i32>(-2729i, arg_0.c.b.x, -2147483647i), u_input.c), true, true), _wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(0u, u_input.a.x, arg_0.b, 20115u)), ~(~vec4<u32>(u_input.a.x, arg_0.b, arg_0.b, u_input.a.x)))), 31u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    global0 = array<Struct_3, 31>();
    global1 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, 1i, ~u_input.b)), u_input.c, ~(-func_1(global0[_wgslsmith_index_u32(u_input.a.x, 31u)]))), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, global1.x, -36184i), _wgslsmith_clamp_vec3_i32(~u_input.c, -vec3<i32>(u_input.c.x, -2147483647i, u_input.d.x), u_input.c))));
    let var_1 = true;
    global0 = array<Struct_3, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(-949f, (-vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], u_input.b, u_input.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]) ^ _wgslsmith_mult_vec4_i32(-vec4<i32>(global1.x, -1i, global2[_wgslsmith_index_u32(111979u, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(0u, 31u)], 33881i, -1i))) >> (~(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) >> (reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 31087u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 23u)])), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, 1u), 23u)], global3[_wgslsmith_index_u32((16821u & u_input.a.x) & u_input.a.x, 23u)]))), _wgslsmith_mod_i32(38602i, global1.x), u_input.c);
}

