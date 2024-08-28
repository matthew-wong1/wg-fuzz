struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(45609u, vec2<bool>(true, true), vec4<f32>(548f, 358f, -1897f, 1408f), 109f, vec3<i32>(1545i, 60233i, i32(-2147483648))), Struct_1(4294967295u, vec2<bool>(false, false), vec4<f32>(1759f, 1677f, 271f, -2174f), 519f, vec3<i32>(-1i, -1i, 11578i)), Struct_1(3398u, vec2<bool>(true, false), vec4<f32>(684f, -1000f, -1048f, -1612f), -1470f, vec3<i32>(-1i, 19174i, -17555i)), Struct_1(1u, vec2<bool>(true, true), vec4<f32>(-332f, 119f, 622f, -819f), 485f, vec3<i32>(0i, 20430i, 22364i)), Struct_1(1u, vec2<bool>(false, true), vec4<f32>(-199f, -199f, -112f, -983f), 503f, vec3<i32>(14504i, 1i, -53243i)), Struct_1(16231u, vec2<bool>(true, false), vec4<f32>(1957f, 626f, 1824f, 813f), 861f, vec3<i32>(15441i, -29241i, 1i)), Struct_1(80870u, vec2<bool>(true, true), vec4<f32>(1345f, -1000f, 1415f, 1738f), 1913f, vec3<i32>(41949i, 39343i, -1i)), Struct_1(0u, vec2<bool>(true, true), vec4<f32>(1435f, -266f, -1439f, -699f), -450f, vec3<i32>(-1i, 0i, -63523i)), Struct_1(23348u, vec2<bool>(true, true), vec4<f32>(683f, 174f, -1275f, -593f), 835f, vec3<i32>(-325i, 0i, i32(-2147483648))), Struct_1(14354u, vec2<bool>(true, true), vec4<f32>(210f, -988f, -716f, -1542f), 981f, vec3<i32>(-1i, i32(-2147483648), -4078i)), Struct_1(110643u, vec2<bool>(false, false), vec4<f32>(-131f, 159f, 236f, -1279f), -2476f, vec3<i32>(-835i, -41728i, -879i)), Struct_1(0u, vec2<bool>(true, false), vec4<f32>(-690f, 139f, 1000f, 1405f), 1047f, vec3<i32>(i32(-2147483648), 16953i, 2147483647i)));

var<private> global3: vec4<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = u_input.a.zz ^ (abs(reverseBits(~vec2<u32>(4294967295u, arg_1.a))) >> (~vec2<u32>(0u, ~u_input.a.x) % vec2<u32>(32u)));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.d))), 918f));
    var_1 = arg_1;
    let var_3 = !(!vec2<bool>(true, var_1.b.x));
    return vec4<i32>(arg_1.e.x, ~u_input.b.x, select(3828i, _wgslsmith_mod_i32(var_1.e.x & global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(17363i, u_input.b.x, -24999i), vec3<i32>(global3.x, var_1.e.x, global3.x))) & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -20224i), global3.yz), true), u_input.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-549f, 1331f, arg_0.a.c.x, arg_0.a.d) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.d, -1033f, arg_0.a.c.x, arg_0.a.c.x), arg_0.a.c)) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.c.x), 1f, -1486f, _wgslsmith_f_op_f32(arg_0.a.d - 457f))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a.d), -2284f)), _wgslsmith_f_op_f32(abs(-642f)), _wgslsmith_div_f32(arg_0.a.c.x, _wgslsmith_f_op_f32(arg_0.a.d + 519f)), -771f))));
    global1 = array<Struct_1, 4>();
    var var_1 = Struct_1(min((48875u | _wgslsmith_dot_vec2_u32(arg_2.yz, vec2<u32>(arg_2.x, 0u))) << (~1u % 32u), _wgslsmith_dot_vec2_u32(u_input.a.wz, abs(arg_2.xz) | u_input.a.yw)), select(select(select(select(vec2<bool>(arg_0.a.b.x, arg_0.a.b.x), arg_0.a.b, arg_0.a.b), vec2<bool>(true, false), select(arg_0.a.b, vec2<bool>(arg_0.a.b.x, arg_0.a.b.x), false)), arg_0.a.b, false), vec2<bool>(!arg_0.a.b.x, true), vec2<bool>(!(-11824i <= arg_1.x), false)), vec4<f32>(_wgslsmith_f_op_f32(round(-1786f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.d)), arg_0.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-279f, _wgslsmith_f_op_f32(-1356f - arg_0.a.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.d))))), arg_0.a.d, u_input.b);
    var var_2 = Struct_2(Struct_1(80612u, select(vec2<bool>(!var_1.b.x, var_1.b.x), select(select(vec2<bool>(arg_0.a.b.x, true), vec2<bool>(false, false), var_1.b.x), !vec2<bool>(arg_0.a.b.x, var_1.b.x), vec2<bool>(true, var_1.b.x)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, arg_0.a.b.x), vec3<bool>(var_1.b.x, var_1.b.x, false)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1000f)))), -1196f, var_1.d, _wgslsmith_f_op_f32(select(var_1.d, 1341f, false && var_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(max(-414f, 957f))) - var_1.c.x), -(select(vec3<i32>(var_1.e.x, global3.x, var_1.e.x), vec3<i32>(-2147483647i, u_input.b.x, -2147483647i), vec3<bool>(var_1.b.x, var_1.b.x, arg_0.a.b.x)) ^ _wgslsmith_clamp_vec3_i32(u_input.b, arg_1.yxz, vec3<i32>(1i, -35086i, -21042i)))));
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -1035f);
}

fn func_2(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_2(Struct_1(abs(_wgslsmith_sub_u32(0u << (arg_0.a.a % 32u), u_input.a.x ^ arg_0.c.a)), vec2<bool>(arg_0.b.a.b.x, all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b.a.c) * arg_0.c.c), _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(arg_0.a.a, arg_0.a.b, arg_0.c.c, arg_0.c.d, global3.zzz)), func_3(true, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 20012u), 4u)]), u_input.a.zxz)), _wgslsmith_mult_vec3_i32(-(vec3<i32>(1i, -17357i, -2147483647i) & global0[_wgslsmith_index_u32(arg_0.c.a, 8u)]), _wgslsmith_mod_vec3_i32(global0[_wgslsmith_index_u32(arg_0.a.a, 8u)] | vec3<i32>(arg_0.a.e.x, global3.x, arg_0.c.e.x), abs(u_input.b)))));
    var var_1 = Struct_2(var_0.a);
    let var_2 = select(vec3<i32>(firstLeadingBit(1i), i32(-1i) * -2147483647i, i32(-1i) * -1i), _wgslsmith_clamp_vec3_i32(global3.zzx, vec3<i32>(0i, _wgslsmith_div_i32(-1i, arg_0.a.e.x), arg_0.a.e.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -2147483647i, var_0.a.e.x), select(vec3<i32>(arg_0.a.e.x, 32629i, arg_0.c.e.x), vec3<i32>(0i, var_0.a.e.x, 1788i), var_1.a.b.x), vec3<i32>(u_input.b.x, arg_0.a.e.x, var_0.a.e.x))), true) << (firstLeadingBit(vec3<u32>(arg_0.a.a | firstLeadingBit(5824u), 19303u, u_input.a.x)) % vec3<u32>(32u));
    let var_3 = true;
    var var_4 = vec4<u32>(1u, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c, 15553u, arg_0.c.a), u_input.a.zww, true) >> (vec3<u32>(var_0.a.a, var_0.a.a, 35292u) % vec3<u32>(32u)), ~u_input.a.wwx), ~_wgslsmith_dot_vec2_u32((u_input.a.zw ^ vec2<u32>(62807u, var_1.a.a)) << (~u_input.a.wy % vec2<u32>(32u)), reverseBits(~u_input.a.xx)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.a, 34959u, 30830u & u_input.a.x), ~u_input.a.wzz));
    return ~var_1.a.e.x;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = !arg_0.a.b.x;
    var var_1 = arg_0.a.e.x;
    var_1 = 10152i;
    let var_2 = arg_0;
    global3 = vec4<i32>(~arg_0.a.e.x, -(i32(-1i) * -func_2(Struct_3(arg_0.a, arg_0, Struct_1(var_2.a.a, vec2<bool>(false, var_2.a.b.x), arg_0.a.c, 1289f, vec3<i32>(arg_0.a.e.x, 1i, 2147483647i))))), _wgslsmith_mult_i32(14780i, -_wgslsmith_mod_i32(u_input.b.x, i32(-1i) * -2147483647i)), 24464i >> (0u % 32u));
    return global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.a.a, 56114u << (~(~(u_input.c >> (u_input.c % 32u))) % 32u)), 12u)];
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> f32 {
    let var_0 = func_3(all(arg_2.b.a.b) | !select(any(vec2<bool>(arg_2.b.a.b.x, true)), true, !arg_1), Struct_1(4294967295u, vec2<bool>(arg_1, !arg_2.a.b.x), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_2.c.c.x)), _wgslsmith_f_op_f32(-arg_2.b.a.c.x))), arg_2.c.d, _wgslsmith_f_op_f32(-arg_2.c.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.a.d + 965f) * _wgslsmith_f_op_f32(194f * 489f))), arg_2.b.a.c.x, reverseBits(vec3<i32>(1i, -2147483647i, global3.x)))).x;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(arg_2.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(223f)) - arg_2.c.c.x), _wgslsmith_f_op_f32(select(arg_2.b.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.c.x + arg_2.b.a.c.x)) * _wgslsmith_f_op_f32(func_4(arg_2.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3, global3.x, -1i, -2891i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, global3.x), vec4<i32>(-43723i, 19347i, -2147483647i, arg_2.c.e.x)), vec3<u32>(0u, u_input.c, 1u) >> (u_input.a.xzz % vec3<u32>(32u))))), arg_1)));
    let var_2 = arg_2.b;
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(reverseBits(u_input.c), 4u)]);
    var var_4 = arg_2;
    return _wgslsmith_f_op_f32(select(-1537f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), any(vec2<bool>(false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 8>();
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(abs(reverseBits(~u_input.a.xz)), true, Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u ^ u_input.c, u_input.c ^ 4294967295u), 12u)], Struct_2(global2[_wgslsmith_index_u32(~4294967295u, 12u)]), func_1(Struct_2(Struct_1(4294967295u, vec2<bool>(false, false), vec4<f32>(-1162f, 822f, -967f, 362f), -1000f, global3.xzz)))), 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -459f), _wgslsmith_div_f32(-1630f, 902f))) * -1000f)));
    global3 = func_3(all(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, true, true, false)), false, func_1(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 12u)])).b.x, true), -1226f <= _wgslsmith_f_op_f32(sign(680f)))), global1[_wgslsmith_index_u32(1u, 4u)]);
    let var_2 = ~global3.x & 2147483647i;
    var var_3 = func_3(2147483647i < func_1(Struct_2(global2[_wgslsmith_index_u32(~u_input.a.x, 12u)])).e.x, global2[_wgslsmith_index_u32(26250u, 12u)]).yw;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-(~_wgslsmith_sub_i32(global3.x, 2927i))), ~(51937u << (u_input.c % 32u)), -_wgslsmith_mod_vec2_i32(select(firstTrailingBit(global3.xx), vec2<i32>(1i, 1i), all(vec3<bool>(true, false, true))), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_3.x) | vec2<i32>(global3.x, var_3.x), vec2<i32>(var_3.x, -52227i))), -func_3(any(vec4<bool>(false, true, false, true)), func_1(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 4u)]))).zy, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(413f)))), _wgslsmith_f_op_f32(func_5(vec2<u32>(u_input.c, _wgslsmith_sub_u32(4294967295u, 4294967295u)), true, Struct_3(func_1(Struct_2(global2[_wgslsmith_index_u32(u_input.c, 12u)])), Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), global1[_wgslsmith_index_u32(abs(u_input.a.x), 4u)]), select(-1i | global3.x, ~8678i, true))), false)));
}

