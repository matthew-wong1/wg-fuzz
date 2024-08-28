struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec2<f32>(198f, -351f), Struct_1(-2130f, vec3<f32>(711f, 825f, 992f), 0u), Struct_1(1473f, vec3<f32>(715f, -1000f, -444f), 0u), vec3<u32>(4294967295u, 7120u, 4294967295u)), Struct_2(vec2<f32>(913f, 624f), Struct_1(-1917f, vec3<f32>(1024f, 101f, -1000f), 8162u), Struct_1(937f, vec3<f32>(-705f, 1000f, -129f), 0u), vec3<u32>(66875u, 4294967295u, 4294967295u)), Struct_2(vec2<f32>(325f, 1384f), Struct_1(646f, vec3<f32>(1417f, -1056f, -636f), 4294967295u), Struct_1(-1967f, vec3<f32>(1397f, -580f, -447f), 0u), vec3<u32>(28726u, 28644u, 50455u)), Struct_2(vec2<f32>(-1783f, 1548f), Struct_1(-122f, vec3<f32>(346f, 675f, -1690f), 0u), Struct_1(-387f, vec3<f32>(-701f, 259f, -1296f), 1u), vec3<u32>(1u, 0u, 4294967295u)), Struct_2(vec2<f32>(661f, -1078f), Struct_1(-835f, vec3<f32>(-1470f, 938f, -613f), 0u), Struct_1(215f, vec3<f32>(1087f, -1460f, 206f), 0u), vec3<u32>(20163u, 4294967295u, 4294967295u)), Struct_2(vec2<f32>(1000f, 405f), Struct_1(-2485f, vec3<f32>(237f, 415f, -1722f), 6996u), Struct_1(-608f, vec3<f32>(116f, 1469f, -1013f), 44769u), vec3<u32>(36715u, 4294967295u, 51298u)), Struct_2(vec2<f32>(-206f, 1014f), Struct_1(-1450f, vec3<f32>(-777f, 1754f, 226f), 42917u), Struct_1(-921f, vec3<f32>(191f, -454f, -986f), 22415u), vec3<u32>(0u, 1u, 34539u)), Struct_2(vec2<f32>(954f, -256f), Struct_1(903f, vec3<f32>(1056f, 359f, -1621f), 0u), Struct_1(824f, vec3<f32>(-503f, -1476f, 156f), 52405u), vec3<u32>(52295u, 0u, 47072u)), Struct_2(vec2<f32>(-1000f, -643f), Struct_1(916f, vec3<f32>(977f, -749f, -236f), 47148u), Struct_1(1300f, vec3<f32>(-1859f, 914f, -2121f), 32409u), vec3<u32>(4294967295u, 9292u, 30109u)), Struct_2(vec2<f32>(-902f, -1629f), Struct_1(216f, vec3<f32>(696f, 1210f, -185f), 1u), Struct_1(-595f, vec3<f32>(314f, -855f, -587f), 41458u), vec3<u32>(28271u, 87027u, 0u)), Struct_2(vec2<f32>(530f, 571f), Struct_1(298f, vec3<f32>(-631f, -703f, 458f), 10525u), Struct_1(-446f, vec3<f32>(1317f, -1000f, -546f), 26735u), vec3<u32>(7815u, 34139u, 58912u)), Struct_2(vec2<f32>(-474f, 1783f), Struct_1(952f, vec3<f32>(561f, 1374f, 202f), 1u), Struct_1(1542f, vec3<f32>(1257f, 843f, 389f), 0u), vec3<u32>(0u, 4294967295u, 0u)), Struct_2(vec2<f32>(-634f, 1000f), Struct_1(-573f, vec3<f32>(-940f, -588f, -1000f), 4294967295u), Struct_1(-323f, vec3<f32>(-1507f, -281f, -259f), 23855u), vec3<u32>(95483u, 0u, 4294967295u)));

var<private> global4: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = global3[_wgslsmith_index_u32(1u, 13u)];
    let var_1 = -631f;
    var var_2 = arg_2;
    var var_3 = Struct_1(var_2.b.b.x, _wgslsmith_f_op_vec3_f32(-var_0.c.b), ~_wgslsmith_mod_u32(abs(74184u), arg_2.d.x));
    var var_4 = max(~(_wgslsmith_sub_vec4_u32(~vec4<u32>(6656u, var_3.c, global1.c, 1u), ~vec4<u32>(0u, 1u, 0u, u_input.a)) << (~(~vec4<u32>(u_input.a, 0u, 1u, global1.c)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.c, u_input.b.x, var_0.d.x, 28549u), vec4<u32>(u_input.b.x, global1.c, var_3.c, arg_2.b.c)) & vec4<u32>(var_3.c, 4294967295u, global1.c, 0u)), firstTrailingBit(vec4<u32>(~arg_2.b.c, _wgslsmith_clamp_u32(var_3.c, var_2.b.c, var_2.c.c), ~19271u, global1.c ^ var_0.c.c))));
    return vec3<u32>(~var_4.x, var_2.d.x, _wgslsmith_mod_u32(~(~(var_3.c >> (global1.c % 32u))), abs(16292u)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = arg_3.c;
    let var_1 = Struct_1(-641f, arg_3.b, 24756u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(952f)), arg_2));
    let var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -2268f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), var_1, arg_3, reverseBits(select(reverseBits(firstTrailingBit(vec3<u32>(global1.c, u_input.a, arg_1))), func_3(global1.b, true, Struct_2(vec2<f32>(871f, -1000f), global0[_wgslsmith_index_u32(1u, 30u)], Struct_1(1255f, var_1.b, var_1.c), vec3<u32>(arg_1, arg_3.c, arg_1))), vec3<bool>(true, true, true))));
    let var_4 = Struct_3(3901i);
    return min(max(min(select(vec4<u32>(u_input.b.x, 13315u, var_3.d.x, arg_1), vec4<u32>(var_3.d.x, 4294967295u, 0u, var_3.d.x), vec4<bool>(false, false, true, true)), firstLeadingBit(vec4<u32>(45005u, arg_3.c, 0u, global1.c))), ~vec4<u32>(u_input.a, global1.c, 0u, var_1.c) | vec4<u32>(var_1.c, arg_1, var_3.d.x, u_input.b.x)) | vec4<u32>(0u, global1.c, firstTrailingBit(_wgslsmith_mod_u32(41691u, 4294967295u)), u_input.a), ~(~vec4<u32>(0u, firstLeadingBit(0u), 1u, 4294967295u)));
}

fn func_1(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_vec4_u32(select(abs(func_2(-469f, global1.c, -1588f, global0[_wgslsmith_index_u32(~0u, 30u)])), ~firstLeadingBit(~arg_0), !select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false))), arg_0, arg_0 << (~abs(~arg_0) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 45154i, -2147483647i), vec3<i32>(113283i, -1i, -49004i), vec3<i32>(2147483647i, 30120i, -25246i))), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -42077i, 67374i), vec3<i32>(-44464i, 1i, 12605i)), vec3<i32>(-34298i, -1i, 1i))), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(26965i, 1i, 500i, -18459i)), -vec4<i32>(-2147483647i, 1i, -7296i, 89291i), firstTrailingBit(vec4<i32>(10383i, 26522i, 74836i, -2147483647i))), ~vec4<i32>(38183i, 0i, 2147483647i, 1i))));
    let var_2 = _wgslsmith_add_u32(arg_0.x, 1u);
    let var_3 = select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), !(var_2 < 15628u)), vec2<bool>(true, all(vec2<bool>(true, true))), true));
    global3 = array<Struct_2, 13>();
    return !(!select(vec2<bool>(u_input.a >= 12735u, true), var_3, vec2<bool>(true, var_3.x)));
}

fn func_4(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = vec3<f32>(-846f, _wgslsmith_f_op_f32(-global1.a), global1.a);
    let var_1 = Struct_3(-48882i);
    global0 = array<Struct_1, 30>();
    let var_2 = _wgslsmith_f_op_vec2_f32(global1.b.xy - global1.b.xx);
    let var_3 = Struct_3(-13690i);
    return select(!vec4<bool>(!(!arg_0.x), abs(50342u) > (global1.c ^ u_input.a), all(arg_0), true), select(!arg_0, select(arg_0, !vec4<bool>(false, false, arg_0.x, true), min(global1.c, 11079u) <= (global1.c ^ 9999u)), func_1(firstLeadingBit(func_2(1000f, global1.c, -501f, Struct_1(-1964f, vec3<f32>(832f, -939f, global1.a), 0u)))).x), select(vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(!any(vec2<bool>(true, arg_0.x)), false, select(96697u, 118683u, false) > _wgslsmith_add_u32(u_input.b.x, 74756u), true), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_4(vec4<bool>(all(func_1(vec4<u32>(4294967295u, global1.c, 0u, 0u))), global1.c == global1.c, true, !any(vec4<bool>(false, true, false, false)))), !vec4<bool>(true, true, true, select(true, func_1(vec4<u32>(global1.c, 0u, 4294967295u, u_input.a)).x, any(vec4<bool>(false, true, false, true)))), ~(-7956i) > (3308i << (select(abs(28487u), 1u, all(vec3<bool>(true, false, false))) % 32u)));
    global1 = global0[_wgslsmith_index_u32(global1.c, 30u)];
    let var_1 = var_0.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-global1.b.zz), global0[_wgslsmith_index_u32(func_2(582f, ~(~(~0u)), _wgslsmith_div_f32(132f, global1.a), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-197f + -1284f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1209f, global1.a, -149f) * vec3<f32>(global1.a, global1.a, global1.a)), global1.c)).x, 30u)], Struct_1(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(trunc(744f)), _wgslsmith_f_op_f32(304f - -1004f)))), ~(~4314u) & u_input.b.x), func_2(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(floor(-500f))), 51239u, _wgslsmith_f_op_f32(1244f + global1.a), global0[_wgslsmith_index_u32(~1u, 30u)]).xyx);
    var var_3 = true;
    global4 = ~(~var_2.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(-1i, -24061i, -25947i, -1i))), ~reverseBits(-2147483647i)), ~(-_wgslsmith_sub_vec2_i32(vec2<i32>(-16548i, 2147483647i), vec2<i32>(37323i, 22368i)))), ~select(_wgslsmith_div_vec2_u32(vec2<u32>(global1.c, 35925u), _wgslsmith_add_vec2_u32(u_input.b, u_input.b)), _wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.b), u_input.b), false), ~90319u);
}

