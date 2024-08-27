struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 2> = array<bool, 2>(true, true);

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-245f, _wgslsmith_div_f32(595f, -1067f), all(vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_f32(-704f - _wgslsmith_f_op_f32(-arg_0.b)))), arg_0.b)));
    let var_1 = 37335u;
    let var_2 = Struct_3(arg_1, arg_0.c, Struct_2(countOneBits(~arg_0.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(432f, 1741f) + _wgslsmith_f_op_f32(trunc(var_0.x))) * _wgslsmith_f_op_f32(-arg_3.x)), arg_0.c), Struct_1(abs(min(~arg_0.c.a, vec2<u32>(4294967295u, arg_2))), 4294967295u << (arg_2 % 32u), countOneBits(arg_1.a.x)), _wgslsmith_f_op_f32(ceil(374f)));
    let var_3 = Struct_4(var_2, -358f, abs(u_input.b.yx) ^ u_input.b.xy);
    let var_4 = 777f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-554f + var_2.c.b) - var_2.e), 170f)));
}

fn func_2(arg_0: f32) -> Struct_4 {
    global0 = abs(u_input.b.x);
    var var_0 = Struct_4(Struct_3(Struct_1(firstTrailingBit(u_input.d.zy), u_input.e, u_input.a), Struct_1(u_input.d.xy, abs(~u_input.e), select(u_input.e, u_input.a, 661i != u_input.c)), Struct_2(_wgslsmith_mult_vec2_u32(select(u_input.d.yz, vec2<u32>(u_input.d.x, u_input.d.x), global2.x), ~u_input.d.zx), _wgslsmith_f_op_f32(-arg_0), Struct_1(u_input.d.zy, _wgslsmith_div_u32(u_input.d.x, u_input.d.x), max(0u, 4294967295u))), Struct_1(~firstLeadingBit(u_input.d.xx), ~u_input.a >> (u_input.a % 32u), u_input.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_3(Struct_2(vec2<u32>(6905u, u_input.e), 740f, Struct_1(u_input.d.yy, 0u, u_input.e)), Struct_1(u_input.d.xx, u_input.e, u_input.e), 0u, vec3<f32>(1738f, arg_0, arg_0)))))), _wgslsmith_f_op_f32(func_3(Struct_2(select(vec2<u32>(32790u, u_input.a), _wgslsmith_add_vec2_u32(u_input.d.zx, u_input.d.yy), all(vec2<bool>(false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-317f, arg_0)) - _wgslsmith_f_op_f32(floor(-336f))), Struct_1(vec2<u32>(10615u, u_input.a), abs(u_input.e), ~24991u)), Struct_1(vec2<u32>(u_input.e, abs(19314u)), u_input.a, u_input.d.x), reverseBits(_wgslsmith_add_u32(u_input.e, u_input.e) ^ u_input.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-213f, arg_0, arg_0) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -266f, arg_0), vec3<f32>(-1745f, arg_0, -219f))))), u_input.b.zy);
    let var_1 = Struct_4(var_0.a, _wgslsmith_div_f32(560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), abs(firstLeadingBit(_wgslsmith_div_vec2_i32(var_0.c, vec2<i32>(var_0.c.x, -1i)))));
    global1 = array<bool, 2>();
    global1 = array<bool, 2>();
    return var_1;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> Struct_1 {
    global0 = abs(_wgslsmith_clamp_i32(~firstTrailingBit(-u_input.b.x), -1i, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, arg_0.c.x), vec2<i32>(u_input.b.x, arg_0.c.x)))));
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(16931i, 2147483647i, u_input.c), vec3<i32>(_wgslsmith_sub_i32(-11917i, arg_0.c.x >> (~u_input.d.x % 32u)), ~_wgslsmith_div_i32(-1i, i32(-1i) * -41582i), _wgslsmith_add_i32(u_input.c >> (~58133u % 32u), reverseBits(~u_input.c))));
    var var_0 = Struct_2(abs(~(~max(u_input.d.yx, vec2<u32>(4294967295u, arg_0.a.d.a.x)))), 842f, Struct_1(~u_input.d.yz, ~(~1u), _wgslsmith_mult_u32(arg_1.c, u_input.e)));
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.b, -974f))))))).a.c;
    global2 = vec2<bool>(true, global2.x);
    return Struct_1(~abs(vec2<u32>(0u, 31993u)), reverseBits(107790u), arg_0.a.b.c);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = u_input.c;
    var var_1 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-1300f + -1087f))), 1000f, all(!arg_1))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1463f)), 915f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))))) * _wgslsmith_div_f32(_wgslsmith_div_f32(-1458f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -676f)))));
    global1 = array<bool, 2>();
    var var_3 = Struct_4(func_2(arg_0.b).a, _wgslsmith_f_op_f32(sign(-1333f)), var_1.c);
    return Struct_1(~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_3.a.a.a.x), vec2<u32>(58720u, u_input.e) & var_3.a.a.a), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 38060u), vec3<u32>(arg_0.a.x, arg_0.c.c, 19313u)), firstLeadingBit(16134u))), (arg_0.c.c & _wgslsmith_sub_u32(1u, arg_0.a.x << (4294967295u % 32u))) & 4294967295u, (var_3.a.a.b >> (79550u % 32u)) << (var_3.a.a.c % 32u));
}

fn func_1(arg_0: f32, arg_1: i32) -> u32 {
    let var_0 = Struct_3(Struct_1(~u_input.d.xx, firstLeadingBit(35758u), u_input.e), func_5(Struct_2(~vec2<u32>(u_input.d.x, u_input.d.x), _wgslsmith_f_op_f32(-1888f - _wgslsmith_f_op_f32(arg_0 - -1000f)), func_4(func_2(-450f), Struct_1(u_input.d.yy, 1u, 4294967295u))), vec2<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 2u)], global2.x, global1[_wgslsmith_index_u32(u_input.e, 2u)])) && select(global1[_wgslsmith_index_u32(0u, 2u)], false, true), global1[_wgslsmith_index_u32((u_input.e | u_input.a) | func_4(Struct_4(Struct_3(Struct_1(u_input.d.xz, u_input.a, u_input.a), Struct_1(u_input.d.zx, u_input.a, 30345u), Struct_2(u_input.d.zy, arg_0, Struct_1(vec2<u32>(u_input.a, 1u), u_input.a, u_input.d.x)), Struct_1(u_input.d.xy, 2073u, u_input.a), -335f), arg_0, vec2<i32>(-2147483647i, -2147483647i)), Struct_1(u_input.d.yz, u_input.d.x, u_input.d.x)).c, 2u)]), Struct_1(u_input.d.zz, u_input.a, ~(~32579u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -882f, arg_0) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1143f, 493f, arg_0), vec3<f32>(675f, arg_0, arg_0))))))), func_2(_wgslsmith_f_op_f32(-arg_0)).a.c, Struct_1(vec2<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32(u_input.e, u_input.e)), _wgslsmith_sub_u32(u_input.a, func_5(Struct_2(vec2<u32>(u_input.a, u_input.d.x), -1065f, Struct_1(vec2<u32>(u_input.e, 10405u), 4294967295u, u_input.a)), vec2<bool>(global2.x, global2.x), Struct_1(vec2<u32>(25277u, u_input.e), 111827u, u_input.e), vec3<f32>(arg_0, arg_0, 1783f)).a.x)), ~(~u_input.d.x), 39120u), 1265f);
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2692f, var_0.c.b, -774f) + vec3<f32>(-2146f, -1000f, arg_0))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_0.c.b, arg_0) - vec3<f32>(832f, 1000f, -784f))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1354f - -113f)), 247f)) * vec3<f32>(_wgslsmith_div_f32(306f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.b), -1000f)), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1211f, 1356f) + -453f))), _wgslsmith_f_op_f32(-110f - _wgslsmith_f_op_f32(abs(arg_0)))));
    let var_3 = select(false, all(select(select(!vec3<bool>(global2.x, false, false), vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 2u)]), all(vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_0.d.a.x, 2u)]))), !(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 2u)])), true)), false);
    let var_4 = Struct_2(~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 25834u), u_input.d.xy), ~1u), ~vec2<u32>(65186u, 64485u), var_0.b.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 152f) * var_1.x)))), func_5(Struct_2(vec2<u32>(19888u, u_input.d.x) << (u_input.d.yx % vec2<u32>(32u)), -848f, var_0.d), select(vec2<bool>(true, !global1[_wgslsmith_index_u32(1u, 2u)]), vec2<bool>(u_input.e < 4294967295u, global2.x), select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 2u)]), vec2<bool>(true, var_3), vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 2u)])), select(vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.d.b, 2u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.e, 2u)], global1[_wgslsmith_index_u32(76056u, 2u)]), var_3), global2.x)), Struct_1(vec2<u32>(var_0.d.b, ~var_0.c.c.b), var_0.d.b, max(var_0.b.a.x, 1u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1176f, var_2.x, var_1.x) - vec3<f32>(1024f, 2484f, arg_0))), vec3<f32>(var_0.c.b, 1059f, _wgslsmith_div_f32(-1155f, var_0.e))))));
    return u_input.d.x;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>) -> StorageBuffer {
    var var_0 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1059f))))), -1026f));
    global2 = !select(select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 2u)], false), vec2<bool>(arg_1.x, true), global2.x), !arg_1.wy, select(arg_1.ww, arg_1.xy, vec2<bool>(false, arg_1.x))), vec2<bool>(global1[_wgslsmith_index_u32(var_0.a.a.a.x & 1u, 2u)], true), true), arg_1.zz, any(arg_1.zxw));
    var var_1 = u_input.b.yx;
    let var_2 = true;
    var var_3 = Struct_1(~u_input.d.zz, ~u_input.d.x, select(var_0.a.a.a.x, u_input.e, false & any(!vec3<bool>(false, global2.x, false))));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.e))), _wgslsmith_f_op_f32(var_0.a.c.b - 589f))), -1196f), abs(u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1535f, _wgslsmith_f_op_f32(-190f * -1002f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-393f)), 1567f)))), -519f) * vec3<f32>(_wgslsmith_div_f32(467f, 360f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-591f + 1425f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1214f, -1221f))));
    let x = u_input.a;
    s_output = func_6(Struct_1(countOneBits(u_input.d.yz), firstTrailingBit(func_1(var_0.x, 1i)), _wgslsmith_mult_u32(0u, u_input.e) >> (u_input.d.x % 32u)), select(select(select(!vec4<bool>(true, false, false, global2.x), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 2u)], global2.x, global2.x), true), vec4<bool>(all(vec3<bool>(false, false, global2.x)), !global2.x, true, any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.e, 2u)], global1[_wgslsmith_index_u32(42485u, 2u)]))), global2.x || (global2.x | true)), !(!select(vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(true, global2.x, true, global1[_wgslsmith_index_u32(u_input.e, 2u)]), false)), true));
}

