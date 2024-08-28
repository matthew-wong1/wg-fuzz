struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(51675u, 1u, 4294967295u, 94429u, 0u, 45732u, 413u, 55420u, 0u, 5013u, 1u, 25814u, 39776u, 14170u, 0u, 32140u, 38776u, 146016u, 0u, 1u, 0u, 48057u, 4294967295u, 16613u, 4294967295u, 18723u, 4294967295u, 49804u, 7785u, 1u, 25275u);

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(true, vec3<bool>(true, false, true)), Struct_2(false, vec3<bool>(false, false, true)), Struct_2(true, vec3<bool>(true, false, true)), Struct_2(true, vec3<bool>(false, false, true)), Struct_2(false, vec3<bool>(true, true, true)), Struct_2(true, vec3<bool>(true, false, true)), Struct_2(false, vec3<bool>(false, true, true)), Struct_2(false, vec3<bool>(false, true, true)), Struct_2(false, vec3<bool>(false, false, false)), Struct_2(true, vec3<bool>(true, true, false)), Struct_2(false, vec3<bool>(false, false, false)), Struct_2(false, vec3<bool>(true, false, true)), Struct_2(false, vec3<bool>(false, true, false)), Struct_2(false, vec3<bool>(true, false, true)), Struct_2(true, vec3<bool>(false, true, false)), Struct_2(true, vec3<bool>(true, false, false)), Struct_2(false, vec3<bool>(false, false, false)), Struct_2(false, vec3<bool>(true, false, true)), Struct_2(false, vec3<bool>(true, true, true)), Struct_2(false, vec3<bool>(true, true, true)));

var<private> global3: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec4<f32>(-377f, -1026f, 449f, 1000f), Struct_1(true, true, vec4<u32>(106845u, 69007u, 82180u, 7124u), 1u), false, Struct_2(false, vec3<bool>(false, true, true)), 337f), Struct_3(vec4<f32>(1000f, 114f, 796f, -917f), Struct_1(true, true, vec4<u32>(49394u, 1u, 1u, 10992u), 4294967295u), true, Struct_2(false, vec3<bool>(true, true, true)), -1356f), Struct_3(vec4<f32>(1000f, -1000f, -836f, -1000f), Struct_1(true, true, vec4<u32>(24143u, 16051u, 1u, 79157u), 0u), false, Struct_2(true, vec3<bool>(false, false, false)), -459f), Struct_3(vec4<f32>(1995f, -2224f, -555f, 1000f), Struct_1(false, true, vec4<u32>(30966u, 39153u, 4294967295u, 43695u), 1u), true, Struct_2(true, vec3<bool>(true, false, false)), -163f), Struct_3(vec4<f32>(861f, 118f, -1356f, 767f), Struct_1(true, false, vec4<u32>(20967u, 4294967295u, 1u, 26179u), 56997u), true, Struct_2(false, vec3<bool>(false, false, false)), -1200f), Struct_3(vec4<f32>(119f, -1916f, 1137f, 342f), Struct_1(false, false, vec4<u32>(4294967295u, 33414u, 0u, 4294967295u), 73621u), false, Struct_2(false, vec3<bool>(true, true, true)), 1333f), Struct_3(vec4<f32>(-717f, -312f, -823f, 2305f), Struct_1(false, false, vec4<u32>(0u, 0u, 1002u, 4294967295u), 4294967295u), true, Struct_2(true, vec3<bool>(false, false, true)), -1850f), Struct_3(vec4<f32>(-530f, 1529f, -427f, -147f), Struct_1(false, false, vec4<u32>(4294967295u, 34037u, 4294967295u, 47564u), 0u), false, Struct_2(false, vec3<bool>(false, false, true)), -455f), Struct_3(vec4<f32>(-866f, -135f, -138f, 1430f), Struct_1(true, false, vec4<u32>(10349u, 44528u, 4294967295u, 73127u), 4294967295u), false, Struct_2(true, vec3<bool>(false, true, true)), -1341f), Struct_3(vec4<f32>(311f, -173f, 483f, 867f), Struct_1(false, true, vec4<u32>(1u, 55292u, 4294967295u, 94742u), 46007u), false, Struct_2(false, vec3<bool>(true, false, true)), -1341f), Struct_3(vec4<f32>(-389f, 351f, -117f, -1271f), Struct_1(false, true, vec4<u32>(71628u, 13025u, 56249u, 53051u), 6148u), false, Struct_2(false, vec3<bool>(true, false, true)), 1009f), Struct_3(vec4<f32>(1000f, 1479f, -464f, 739f), Struct_1(true, false, vec4<u32>(42924u, 41556u, 5047u, 45843u), 1u), false, Struct_2(false, vec3<bool>(false, false, true)), 414f), Struct_3(vec4<f32>(-412f, -1545f, 841f, 563f), Struct_1(true, false, vec4<u32>(57206u, 9236u, 0u, 4294967295u), 43204u), false, Struct_2(false, vec3<bool>(true, true, false)), 1072f), Struct_3(vec4<f32>(-734f, -2387f, -201f, -368f), Struct_1(false, true, vec4<u32>(1u, 14563u, 4294967295u, 0u), 17253u), true, Struct_2(true, vec3<bool>(true, true, true)), -525f), Struct_3(vec4<f32>(1731f, -273f, 1021f, -2219f), Struct_1(false, false, vec4<u32>(6526u, 26559u, 61470u, 4294967295u), 11015u), true, Struct_2(false, vec3<bool>(false, true, true)), -246f), Struct_3(vec4<f32>(1000f, 1000f, 614f, 1000f), Struct_1(true, false, vec4<u32>(86u, 1u, 1u, 4294967295u), 67557u), false, Struct_2(false, vec3<bool>(true, false, false)), -684f), Struct_3(vec4<f32>(-1784f, 404f, -1622f, 271f), Struct_1(true, true, vec4<u32>(52779u, 77634u, 95446u, 0u), 4294967295u), true, Struct_2(true, vec3<bool>(true, true, false)), -231f), Struct_3(vec4<f32>(-521f, -2525f, -758f, 371f), Struct_1(true, false, vec4<u32>(42500u, 4294967295u, 28096u, 39585u), 0u), true, Struct_2(false, vec3<bool>(false, false, true)), -580f), Struct_3(vec4<f32>(-347f, 1847f, -244f, 1000f), Struct_1(false, false, vec4<u32>(0u, 4294967295u, 4294967295u, 76137u), 9364u), true, Struct_2(false, vec3<bool>(true, true, true)), -1000f), Struct_3(vec4<f32>(-1210f, 3090f, -1403f, 570f), Struct_1(false, true, vec4<u32>(60393u, 87747u, 155u, 1u), 1u), false, Struct_2(true, vec3<bool>(true, false, true)), -1407f), Struct_3(vec4<f32>(-1000f, 1000f, 763f, 276f), Struct_1(true, false, vec4<u32>(1u, 17113u, 8709u, 0u), 0u), true, Struct_2(false, vec3<bool>(true, false, false)), 862f), Struct_3(vec4<f32>(-2239f, -1911f, 1000f, 352f), Struct_1(false, false, vec4<u32>(55840u, 35858u, 1u, 4294967295u), 58938u), true, Struct_2(false, vec3<bool>(false, false, true)), 538f), Struct_3(vec4<f32>(-1000f, 629f, -1455f, -2867f), Struct_1(true, true, vec4<u32>(17346u, 102258u, 42351u, 138887u), 753u), true, Struct_2(false, vec3<bool>(true, false, false)), -280f), Struct_3(vec4<f32>(-1000f, -827f, 1000f, -1000f), Struct_1(true, true, vec4<u32>(4294967295u, 63526u, 9638u, 55260u), 4294967295u), false, Struct_2(true, vec3<bool>(true, true, true)), -353f), Struct_3(vec4<f32>(433f, 516f, 140f, 527f), Struct_1(false, true, vec4<u32>(28792u, 59101u, 1u, 80021u), 68446u), true, Struct_2(true, vec3<bool>(false, true, true)), 483f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<u32, 31>();
    var var_0 = global2[_wgslsmith_index_u32(arg_0.d, 20u)];
    let var_1 = Struct_1(arg_0.a, false || global1.x, vec4<u32>(u_input.b.x, u_input.b.x, 0u, 0u), 69050u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1849f, 989f, 390f) * vec3<f32>(746f, -1216f, 882f))))) - vec3<f32>(_wgslsmith_f_op_f32(306f - 811f), _wgslsmith_f_op_f32(sign(-665f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-547f, 356f)))));
    return ~arg_0.d << (~(global0[_wgslsmith_index_u32(u_input.c.x, 31u)] << (_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(40695u, 31u)], global0[_wgslsmith_index_u32(min(0u, global0[_wgslsmith_index_u32(4294967295u, 31u)]), 31u)], var_1.c.x) % 32u)) % 32u);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> u32 {
    global1 = select(!select(arg_0.d, arg_0.d, true), select(!vec4<bool>(any(global1.yw), !global1.x, arg_0.d.x, global1.x), !select(vec4<bool>(true, false, false, false), !arg_0.d, !arg_2), select(vec4<bool>(arg_2, !arg_2, true, false), arg_0.d, !(!arg_2))), arg_2);
    var var_0 = !global1.zw;
    global0 = array<u32, 31>();
    global3 = array<Struct_3, 25>();
    let var_1 = arg_0.c.c.yw;
    return 38636u >> (~_wgslsmith_dot_vec3_u32(~u_input.c.yxy, _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.c.c.xzx, vec3<u32>(1u, 12635u, 0u)), arg_0.c.c.xyz, reverseBits(vec3<u32>(0u, 1628u, 27132u)))) % 32u);
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(func_4(Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(6477u, u_input.b.x), 20u)], _wgslsmith_f_op_vec3_f32(ceil(arg_0.wwx)), Struct_1(all(vec2<bool>(false, global1.x)), global1.x, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 6298u, u_input.b.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, 13347u), u_input.c)), select(vec4<bool>(true, true, global1.x, false), select(vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(false, global1.x, false, true), vec4<bool>(true, global1.x, global1.x, false)), select(vec4<bool>(true, true, global1.x, true), vec4<bool>(global1.x, false, global1.x, true), global1.x)), arg_0.yyx), u_input.c.x | (~u_input.b.x >> (func_3(Struct_1(global1.x, false, vec4<u32>(7598u, global0[_wgslsmith_index_u32(u_input.b.x, 31u)], 18664u, u_input.c.x), 0u)) % 32u)), global1.x)), 25u)];
    var var_1 = -_wgslsmith_dot_vec3_i32(abs(min(select(u_input.a.wyw, u_input.a.xyx, true), countOneBits(vec3<i32>(-48811i, u_input.d.x, u_input.d.x)))), vec3<i32>(u_input.d.x, firstLeadingBit(_wgslsmith_div_i32(u_input.d.x, 13087i)), u_input.a.x));
    var var_2 = -u_input.a;
    global3 = array<Struct_3, 25>();
    var var_3 = Struct_1(global1.x, false, countOneBits(min(vec4<u32>(firstLeadingBit(var_0.b.c.x), 0u, _wgslsmith_mod_u32(23353u, var_0.b.d), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)] << (u_input.b.x % 32u)), vec4<u32>(1u, reverseBits(u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(103447u, 0u, global0[_wgslsmith_index_u32(u_input.c.x, 31u)], 0u), var_0.b.c), 102299u))), abs(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(var_0.b.d, 31u)], _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 0u), 23817u), 31u)]));
    return _wgslsmith_f_op_f32(floor(var_0.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    global3 = array<Struct_3, 25>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(211f, 1516f, _wgslsmith_f_op_f32(-1f), 238f));
    var var_1 = 27575u;
    let var_2 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1292f, var_0.x, var_0.x, -423f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -259f, var_0.x, -541f) * vec4<f32>(var_0.x, -1173f, var_0.x, var_0.x)), true)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-865f, -657f, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1187f, var_0.x, var_0.x)))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 379f, var_0.x, 605f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-259f, 411f, var_0.x, -875f) + vec4<f32>(var_0.x, -1073f, -311f, var_0.x))))))));
    var_1 = ~_wgslsmith_dot_vec3_u32(~(arg_0.c.zyx & u_input.c.ywz) | vec3<u32>(56430u, 39860u, u_input.c.x), u_input.c.xwy);
    return select(!(!(!(!vec4<bool>(false, false, false, arg_0.b)))), select(vec4<bool>((368f != var_0.x) | false, true, global1.x, !(arg_1 > u_input.a.x)), select(select(vec4<bool>(arg_0.b, false, global1.x, arg_0.a), vec4<bool>(true, global1.x, global1.x, global1.x), arg_0.a), select(!vec4<bool>(true, arg_0.a, false, false), vec4<bool>(true, arg_0.b, true, true), global1.x), all(vec4<bool>(true, false, arg_0.b, global1.x))), arg_0.b), all(!vec3<bool>(any(global1.ywx), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(global1.x, true, ~firstTrailingBit(u_input.c), ~(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(57650u, 31u)], global0[_wgslsmith_index_u32(75937u, 31u)]))), countOneBits(u_input.a.x));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(func_3(Struct_1(var_0.x, all(var_0.yxz), vec4<u32>(global0[_wgslsmith_index_u32(0u, 31u)], 1u, 9711u, 48425u) & vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], 31u)], 31u)], u_input.c.x, u_input.b.x, 69781u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15502u, 31u)], 31u)] | 3857u)), u_input.c.x), ~_wgslsmith_mod_vec2_u32(select(firstTrailingBit(u_input.c.xw), u_input.c.wz, true), vec2<u32>(_wgslsmith_add_u32(u_input.b.x, 13019u), abs(34091u))));
    global2 = array<Struct_2, 20>();
    var var_2 = -1i;
    let var_3 = Struct_2(true, global1.xyy);
    var var_4 = Struct_2(var_0.x, vec3<bool>(var_3.b.x, var_3.b.x, any(func_1(Struct_1(var_0.x, global1.x, vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.b.x, 31u)], u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 31u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], 31u)]), _wgslsmith_mult_i32(u_input.d.x, 53762i)).xy)));
    global3 = array<Struct_3, 25>();
    let var_5 = select(vec2<u32>(global0[_wgslsmith_index_u32(func_4(Struct_4(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 20u)], vec3<f32>(-964f, -458f, -1683f), Struct_1(true, var_4.b.x, u_input.c, 6145u), vec4<bool>(var_3.b.x, false, global1.x, var_0.x), vec3<f32>(625f, -1945f, -525f)), 0u | u_input.c.x, true), 31u)] ^ _wgslsmith_dot_vec3_u32(u_input.c.yxy & vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 33767u, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 31u)], u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 31u)])), 23234u), ~vec2<u32>(min(1u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13749u, 31u)], 31u)], 31u)], u_input.b.x)), reverseBits(u_input.b.x)), any(var_0.wzw));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(-53638i, u_input.a.x) | _wgslsmith_add_vec2_i32(u_input.a.zx, u_input.a.zz)), vec4<i32>(_wgslsmith_dot_vec4_i32(min(u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(18196i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, u_input.d.x))), ~(-vec4<i32>(4549i, -39338i, 7544i, 1i))), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a.x, 104793i), abs(u_input.a.x)), -(u_input.a.x ^ u_input.d.x)), _wgslsmith_mult_i32(i32(-1i) * -u_input.d.x, abs(-u_input.a.x)), 20406i));
}

