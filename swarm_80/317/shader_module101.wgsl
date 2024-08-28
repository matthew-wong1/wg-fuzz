struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 13>;

var<private> global2: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(184f, -1358f, 1758f));

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(54675u, vec3<f32>(549f, -1261f, 1000f), vec4<i32>(1i, -40021i, 1i, 0i)), Struct_1(2810u, vec3<f32>(1263f, 237f, 562f), vec4<i32>(-33937i, -5681i, 0i, 19704i)), Struct_1(2225u, vec3<f32>(1000f, 641f, 137f), vec4<i32>(1i, 2147483647i, 1i, -65470i)), Struct_1(0u, vec3<f32>(-921f, 1799f, -970f), vec4<i32>(1i, 27865i, -43712i, -7673i)), Struct_1(29513u, vec3<f32>(-180f, -643f, 977f), vec4<i32>(-1i, i32(-2147483648), -1i, 0i)), Struct_1(4013u, vec3<f32>(1388f, -731f, -540f), vec4<i32>(1i, 1i, 2147483647i, 1i)), Struct_1(3882u, vec3<f32>(-643f, 301f, -616f), vec4<i32>(1i, -11485i, -1i, -28012i)), Struct_1(5027u, vec3<f32>(1181f, -1089f, -1239f), vec4<i32>(0i, 23304i, 2147483647i, -1i)), Struct_1(4294967295u, vec3<f32>(1000f, 803f, 945f), vec4<i32>(2147483647i, 4952i, 0i, 49592i)), Struct_1(31895u, vec3<f32>(887f, -1424f, 154f), vec4<i32>(0i, 2147483647i, 2147483647i, 45021i)), Struct_1(30409u, vec3<f32>(-803f, -2509f, 555f), vec4<i32>(1i, 0i, -18350i, 0i)), Struct_1(1u, vec3<f32>(-795f, 920f, -1000f), vec4<i32>(1i, 51221i, 1i, -48851i)), Struct_1(56447u, vec3<f32>(1000f, 526f, -1763f), vec4<i32>(i32(-2147483648), 2147483647i, -42750i, 2147483647i)), Struct_1(19091u, vec3<f32>(-286f, -433f, -243f), vec4<i32>(31174i, i32(-2147483648), i32(-2147483648), 1i)), Struct_1(1u, vec3<f32>(-1323f, 1458f, -1000f), vec4<i32>(-11310i, -4596i, -16009i, -26242i)), Struct_1(4847u, vec3<f32>(-1614f, 1000f, -1000f), vec4<i32>(-64126i, 30730i, i32(-2147483648), i32(-2147483648))), Struct_1(19187u, vec3<f32>(3083f, -1005f, -582f), vec4<i32>(67669i, 1i, 1i, 2147483647i)), Struct_1(79475u, vec3<f32>(1038f, -1076f, 1063f), vec4<i32>(17616i, 47745i, 36044i, -26354i)), Struct_1(1u, vec3<f32>(1069f, -710f, -1072f), vec4<i32>(-20672i, 6440i, -17497i, 24619i)), Struct_1(7840u, vec3<f32>(331f, -690f, -322f), vec4<i32>(-20423i, 14370i, 1i, -26250i)), Struct_1(0u, vec3<f32>(-1234f, 1603f, 581f), vec4<i32>(-23005i, i32(-2147483648), 0i, -1i)), Struct_1(25920u, vec3<f32>(-451f, -815f, -1399f), vec4<i32>(13428i, -24916i, -21539i, 33934i)), Struct_1(4294967295u, vec3<f32>(-269f, 373f, -1429f), vec4<i32>(31971i, 33352i, 1i, 1i)), Struct_1(0u, vec3<f32>(-167f, 147f, 526f), vec4<i32>(1i, -40613i, 2147483647i, i32(-2147483648))), Struct_1(28214u, vec3<f32>(-465f, 864f, 1089f), vec4<i32>(-1i, 45365i, 2147483647i, 0i)), Struct_1(26162u, vec3<f32>(-154f, 1944f, 422f), vec4<i32>(6987i, 11674i, 2147483647i, 0i)), Struct_1(4294967295u, vec3<f32>(-979f, -926f, 753f), vec4<i32>(2147483647i, -4499i, 27836i, i32(-2147483648))), Struct_1(1u, vec3<f32>(1000f, 948f, 340f), vec4<i32>(34727i, -27811i, 1i, -51588i)), Struct_1(0u, vec3<f32>(-1748f, 1327f, 819f), vec4<i32>(47311i, 79612i, 54293i, 35332i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32) -> f32 {
    global1 = array<vec2<bool>, 13>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.b))));
    global1 = array<vec2<bool>, 13>();
    global1 = array<vec2<bool>, 13>();
    let var_1 = vec3<bool>(all(vec2<bool>(true, true)), all(global1[_wgslsmith_index_u32(global0.a ^ (firstLeadingBit(112759u) & global0.a), 13u)]), true);
    return global0.b.x;
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    global2 = array<vec3<f32>, 1>();
    let var_0 = Struct_1(~(global0.a | abs(~arg_0.x)), _wgslsmith_f_op_vec3_f32(min(global0.b, _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(75007u, 1u)]))), abs(-global0.c));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -528f);
    var var_2 = Struct_1(~_wgslsmith_clamp_u32(26018u, ~34309u, 96045u), _wgslsmith_div_vec3_f32(vec3<f32>(-1566f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.c.x))), -317f), _wgslsmith_f_op_vec3_f32(exp2(var_0.b))), -vec4<i32>(_wgslsmith_mult_i32(88547i, global0.c.x) ^ global0.c.x, -58494i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, -2147483647i)), var_0.c.wz), _wgslsmith_mult_i32(global0.c.x, ~global0.c.x)));
    var var_3 = var_2.c.yxy;
    return _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 36387u, global0.a) >> ((_wgslsmith_mult_vec3_u32(arg_0, vec3<u32>(58312u, 46093u, arg_0.x)) ^ ~arg_0) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, (54720u & var_2.a) & ~0u, _wgslsmith_sub_u32(~var_2.a, var_0.a)), _wgslsmith_mod_vec3_u32(arg_0, _wgslsmith_sub_vec3_u32(~u_input.a.xyz, countOneBits(u_input.a.zzy)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global0 = arg_1;
    let var_0 = ~(~func_2(u_input.a.wwx));
    global3 = array<Struct_1, 29>();
    let var_1 = u_input.a.zy;
    global3 = array<Struct_1, 29>();
    return select(!select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, any(vec3<bool>(false, true, false))), vec4<bool>(any(global1[_wgslsmith_index_u32(var_0, 13u)]), true, true, true)), select(vec4<bool>(true, true, arg_0.c.x < -30578i, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(!any(vec4<bool>(true, true, false, false)), true, false, _wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x) < _wgslsmith_f_op_f32(trunc(377f)))), 1u <= (firstLeadingBit(~var_0) & firstLeadingBit(firstTrailingBit(arg_0.a))));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    let var_0 = !select(arg_0, select(vec4<bool>(arg_0.x, true, any(arg_0.zw), !arg_0.x), arg_0, vec4<bool>(all(vec2<bool>(arg_0.x, arg_0.x)), true || arg_0.x, any(arg_0), true)), arg_0.x);
    let var_1 = vec3<u32>(min(firstTrailingBit(u_input.c), ~0u), reverseBits(4294967295u), _wgslsmith_mult_u32(~u_input.b << ((u_input.c ^ global0.a) % 32u), _wgslsmith_sub_u32(func_2(vec3<u32>(global0.a, 4294967295u, u_input.c)), u_input.a.x))) ^ u_input.a.xzy;
    global3 = array<Struct_1, 29>();
    var var_2 = u_input.a.zw;
    var var_3 = global3[_wgslsmith_index_u32(var_2.x, 29u)];
    return ~func_2(_wgslsmith_add_vec3_u32(vec3<u32>(0u, global0.a, ~53502u), ~vec3<u32>(var_3.a, 1u, var_2.x) ^ firstTrailingBit(vec3<u32>(37811u, var_1.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_mult_u32(firstTrailingBit(u_input.c), func_4(!func_1(Struct_1(32511u, vec3<f32>(global0.b.x, global0.b.x, 984f), global0.c), Struct_1(global0.a, vec3<f32>(-191f, -1000f, -1000f), global0.c)), 0i, global0.c)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1330f)) * _wgslsmith_f_op_f32(f32(-1f) * -1017f)), global0.b.x), _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -100f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - 989f)))), vec4<i32>(-2147483647i, firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.c.x, global0.c.x), vec2<i32>(1i, global0.c.x)), abs(vec2<i32>(global0.c.x, global0.c.x)))), global0.c.x, -(_wgslsmith_dot_vec2_i32(global0.c.xy, vec2<i32>(global0.c.x, 2147483647i)) ^ 1i)));
    var var_0 = _wgslsmith_sub_vec4_i32(global0.c, global0.c) | _wgslsmith_mod_vec4_i32(global0.c, select(global0.c, -(global0.c ^ global0.c), true));
    global3 = array<Struct_1, 29>();
    global0 = Struct_1(func_2(~vec3<u32>(u_input.b, min(u_input.c, u_input.a.x), u_input.b ^ global0.a)), _wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(-447f, global0.b.x, global0.b.x)) * vec3<f32>(107f, global0.b.x, -1449f)))), ~vec4<i32>(_wgslsmith_mod_i32(-1i, -38769i), ~var_0.x, global0.c.x, 45287i) | -vec4<i32>(~var_0.x, 25281i, -15923i, ~(-13251i)));
    let var_1 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(func_2(u_input.a.wzz << (vec3<u32>(u_input.a.x, 3944u, global0.a) % vec3<u32>(32u))), 0u, ~u_input.a.x), ~(~(u_input.a.x >> (u_input.c % 32u))));
    let var_2 = global3[_wgslsmith_index_u32(var_1, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(global0.b)), _wgslsmith_f_op_f32(2176f * -1000f));
}

