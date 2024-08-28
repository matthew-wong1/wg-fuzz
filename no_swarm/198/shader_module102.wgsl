struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(-19791i, 1i, 2147483647i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(29316i, -18398i, -1i), vec3<i32>(0i, i32(-2147483648), 6249i), vec3<i32>(i32(-2147483648), -30578i, -47202i), vec3<i32>(1i, -11043i, 121734i), vec3<i32>(-53377i, -30373i, 28681i), vec3<i32>(i32(-2147483648), 0i, 28369i), vec3<i32>(-41727i, 2147483647i, -13784i), vec3<i32>(0i, -1i, 8581i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(16623i, 19240i, 0i), vec3<i32>(-75702i, -29695i, 2147483647i), vec3<i32>(1i, -40243i, -1i), vec3<i32>(i32(-2147483648), 18229i, i32(-2147483648)), vec3<i32>(-1i, 27732i, 2147483647i), vec3<i32>(6192i, 6496i, i32(-2147483648)), vec3<i32>(-1i, 38101i, 22890i), vec3<i32>(i32(-2147483648), -1i, -1331i), vec3<i32>(-1i, 2908i, 2147483647i), vec3<i32>(21440i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-45631i, 0i, 2147483647i), vec3<i32>(0i, -16928i, -68509i), vec3<i32>(107475i, 34017i, 2147483647i), vec3<i32>(9434i, -1i, 21649i), vec3<i32>(32963i, -54131i, 30025i), vec3<i32>(-14342i, 1i, 0i), vec3<i32>(48357i, 1i, -55627i), vec3<i32>(-1i, -1i, -5279i));

var<private> global1: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(1u, 1u, 891u), vec3<u32>(49469u, 6093u, 4523u), vec3<u32>(77955u, 4294967295u, 4294967295u), vec3<u32>(0u, 20966u, 0u), vec3<u32>(1u, 12471u, 0u), vec3<u32>(1u, 65340u, 24455u), vec3<u32>(38217u, 56824u, 4507u), vec3<u32>(51159u, 0u, 29736u), vec3<u32>(0u, 0u, 0u), vec3<u32>(32307u, 4294967295u, 2554u), vec3<u32>(16687u, 49612u, 283u), vec3<u32>(1u, 0u, 36042u), vec3<u32>(34792u, 4294967295u, 28296u), vec3<u32>(0u, 44514u, 16372u), vec3<u32>(32354u, 32588u, 24717u), vec3<u32>(4294967295u, 8845u, 10323u), vec3<u32>(0u, 91244u, 61151u), vec3<u32>(0u, 0u, 28529u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(37293u, 1u, 1u), vec3<u32>(46488u, 78087u, 0u), vec3<u32>(83081u, 4294967295u, 1u), vec3<u32>(33426u, 1u, 1u), vec3<u32>(1u, 0u, 15541u), vec3<u32>(2700u, 4294967295u, 35745u), vec3<u32>(1u, 1u, 37280u), vec3<u32>(58337u, 20820u, 1u), vec3<u32>(1u, 2693u, 47651u), vec3<u32>(19057u, 1u, 4294967295u));

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_2(Struct_1(-55456i, 388f, -892f), 84075u), false, false, vec3<u32>(4294967295u, 41405u, 14731u), vec4<f32>(-172f, 937f, 152f, -1000f)), Struct_3(Struct_2(Struct_1(4576i, 411f, -488f), 4294967295u), true, true, vec3<u32>(76101u, 4294967295u, 4294967295u), vec4<f32>(-372f, -1784f, 377f, -344f)), Struct_3(Struct_2(Struct_1(33551i, 246f, -166f), 21551u), true, true, vec3<u32>(46403u, 19491u, 4294967295u), vec4<f32>(-488f, 1000f, 712f, -1240f)), Struct_3(Struct_2(Struct_1(4235i, -537f, -300f), 0u), true, true, vec3<u32>(1u, 4294967295u, 4294967295u), vec4<f32>(-1116f, -587f, -604f, -1000f)), Struct_3(Struct_2(Struct_1(607i, 1168f, -1000f), 4294967295u), false, true, vec3<u32>(33533u, 34724u, 0u), vec4<f32>(-158f, 741f, -580f, 1314f)), Struct_3(Struct_2(Struct_1(2147483647i, -2156f, 1136f), 0u), true, false, vec3<u32>(0u, 780u, 1662u), vec4<f32>(-327f, 1043f, 592f, 1214f)), Struct_3(Struct_2(Struct_1(0i, -730f, 1000f), 0u), false, false, vec3<u32>(68349u, 0u, 13311u), vec4<f32>(-448f, 1051f, -371f, -1263f)), Struct_3(Struct_2(Struct_1(24818i, -394f, 531f), 52029u), true, true, vec3<u32>(1u, 12938u, 51515u), vec4<f32>(-2636f, 1044f, -2352f, -163f)), Struct_3(Struct_2(Struct_1(-993i, 1351f, -1000f), 71479u), false, true, vec3<u32>(21810u, 7727u, 0u), vec4<f32>(486f, 435f, -634f, 485f)));

var<private> global3: array<f32, 28> = array<f32, 28>(-2197f, 1806f, 691f, 996f, -270f, 2449f, -1000f, -503f, 1123f, -417f, 819f, -1098f, 2043f, -692f, -1159f, 146f, 624f, -1629f, -631f, -116f, -1000f, -1127f, -854f, -456f, 1000f, -1000f, 745f, -744f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> i32 {
    global3 = array<f32, 28>();
    var var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 9u)];
    var var_1 = 0u;
    var var_2 = _wgslsmith_mult_vec4_u32(u_input.a | u_input.a, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(36377u, 1u, u_input.a.x & 8216u, 4294967295u), vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~68684u, countOneBits(4294967295u), ~u_input.a.x)), ~countOneBits(~vec4<u32>(var_0.a.b, u_input.a.x, var_0.a.b, 1u))));
    var var_3 = var_0.a.a.a;
    return ~_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(u_input.b.yw, vec2<i32>(u_input.b.x, -2900i)), ~_wgslsmith_clamp_vec2_i32(~u_input.b.wy, ~u_input.b.yy, abs(vec2<i32>(u_input.b.x, u_input.b.x))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>) -> u32 {
    let var_0 = -_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -55249i, 1i), arg_1), arg_1.x ^ arg_1.x) | countOneBits(-29045i), -u_input.c.x);
    global0 = array<vec3<i32>, 31>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(159f, _wgslsmith_f_op_f32(1528f - 1414f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2111f), _wgslsmith_f_op_f32(sign(-361f))), _wgslsmith_f_op_f32(max(-434f, -1279f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3[_wgslsmith_index_u32(520u, 28u)], global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(u_input.a.x, 28u)], global3[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec4<f32>(global3[_wgslsmith_index_u32(10928u, 28u)], 183f, 503f, -1790f)))) + vec4<f32>(_wgslsmith_f_op_f32(-582f * global3[_wgslsmith_index_u32(30153u, 28u)]), _wgslsmith_f_op_f32(ceil(-256f)), global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(22441u >> (1u % 32u), 28u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.a.x, 28u)])), global3[_wgslsmith_index_u32(8598u, 28u)], _wgslsmith_f_op_f32(602f * -870f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -818f), _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.a.x, 28u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 28u)] - global3[_wgslsmith_index_u32(u_input.a.x, 28u)]), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(1u, 28u)]))) - vec4<f32>(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(max(457u, 73665u), 28u)])), _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(79973u >> (u_input.a.x % 32u), 28u)])), global3[_wgslsmith_index_u32(~u_input.a.x, 28u)], global3[_wgslsmith_index_u32(countOneBits(u_input.a.x), 28u)])), vec4<bool>(arg_0.x, global3[_wgslsmith_index_u32(select(14267u << (1u % 32u), 60703u, false), 28u)] < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1230f)), 123f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(160f + global3[_wgslsmith_index_u32(u_input.a.x, 28u)]))), !select(!arg_0.x, !arg_0.x, true))));
    let var_2 = ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_1.x, ~u_input.b.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.c.x, arg_1.x), vec4<i32>(arg_1.x, u_input.b.x, u_input.b.x, arg_1.x)), ~(u_input.c.x & arg_1.x), 1i), vec4<i32>(-_wgslsmith_mult_i32(2147483647i, u_input.b.x), ~_wgslsmith_clamp_i32(0i, arg_1.x, var_0), firstLeadingBit(-13324i), firstLeadingBit(-1i)));
    global0 = array<vec3<i32>, 31>();
    return firstTrailingBit(~1u);
}

fn func_4(arg_0: vec2<bool>, arg_1: f32) -> f32 {
    global3 = array<f32, 28>();
    var var_0 = ~(~u_input.a.x);
    global3 = array<f32, 28>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 150f, -279f) + vec3<f32>(-715f, 198f, -210f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 682f, arg_1))))))), vec3<f32>(1f, _wgslsmith_div_f32(375f, 914f), global3[_wgslsmith_index_u32(u_input.a.x, 28u)]), all(!select(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, false), vec3<bool>(arg_0.x, true, arg_0.x)), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, true, false), false), select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x), arg_0.x)))));
    global3 = array<f32, 28>();
    return _wgslsmith_div_f32(-146f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(223f + 1373f)) - _wgslsmith_f_op_f32(sign(-732f))))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = func_1();
    var var_1 = 55110i;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(18941u, 28u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), true), global3[_wgslsmith_index_u32(func_3(vec2<bool>(true, arg_0), u_input.c), 28u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2106f)));
    var var_3 = u_input.a.x;
    var var_4 = vec4<u32>(firstLeadingBit(81296u), _wgslsmith_dot_vec3_u32(~u_input.a.xyx, ~firstLeadingBit(vec3<u32>(u_input.a.x, arg_2.b, 4294967295u))), arg_2.b, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 26995u) & _wgslsmith_add_vec2_u32(u_input.a.xy, u_input.a.wz), u_input.a.zz)));
    return vec2<bool>(arg_0, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(4294967295u, 28u)])) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-279f * -1000f))));
    global3 = array<f32, 28>();
    global0 = array<vec3<i32>, 31>();
    var var_1 = Struct_1(-1i, -164f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1189f, -1180f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 28u)] - -2406f)));
    let var_2 = -1024f;
    var var_3 = select(vec3<bool>(func_1() != ~(-var_1.a), all(!func_2(false, global3[_wgslsmith_index_u32(u_input.a.x, 28u)], Struct_2(Struct_1(2147483647i, -764f, -473f), 4294967295u))), true), vec3<bool>(var_0, !any(select(vec4<bool>(false, false, var_0, false), vec4<bool>(var_0, var_0, true, var_0), false)), 763f < _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a.x, 28u)], _wgslsmith_f_op_f32(ceil(var_2)))), !select(select(select(vec3<bool>(false, false, var_0), vec3<bool>(true, var_0, var_0), true), vec3<bool>(var_0, true, true), var_0), vec3<bool>(var_0, var_0 && var_0, var_0), vec3<bool>(select(true, var_0, var_0), var_0, any(vec2<bool>(true, true)))));
    var_1 = Struct_1(u_input.c.x, var_2, _wgslsmith_div_f32(-495f, _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, 582f) - _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.a.x, 28u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(655f, global3[_wgslsmith_index_u32(u_input.a.x, 28u)], 723f), 1u, u_input.b, _wgslsmith_f_op_f32(trunc(1532f)), u_input.a.x);
}

