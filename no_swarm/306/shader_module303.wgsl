struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(8812i, -43472i, 55938i, 1i);

var<private> global1: array<bool, 24> = array<bool, 24>(false, true, false, false, true, false, true, false, false, true, true, false, false, true, false, false, true, false, true, false, true, false, false, true);

var<private> global2: bool = true;

var<private> global3: array<bool, 21>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = Struct_3(Struct_2(max(~u_input.a.wxw, u_input.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(536f, -193f, 1687f), vec3<f32>(-2538f, 557f, 1429f))) + _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -829f, -926f), vec3<f32>(896f, 240f, -1000f))))), _wgslsmith_sub_i32(41029i, 2147483647i));
    let var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(arg_3.e, var_0.a.a.x) << (arg_2 % 32u), firstTrailingBit(arg_2), firstTrailingBit(9856u)), ~vec3<u32>(arg_3.b, 1u, 49161u) ^ ~vec3<u32>(arg_2, 25106u, 4294967295u));
    global1 = array<bool, 24>();
    var var_2 = select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, arg_3.c), select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 21u)], true, global3[_wgslsmith_index_u32(1u, 21u)]), vec3<bool>(global3[_wgslsmith_index_u32(50829u, 21u)], false, arg_3.c), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(~var_0.a.a.x, 24u)]), !(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(49610u, 24u)], global3[_wgslsmith_index_u32(29354u, 21u)]))), !vec3<bool>(global3[_wgslsmith_index_u32(~(~1u), 21u)], !(!global3[_wgslsmith_index_u32(3628u, 21u)]), !global1[_wgslsmith_index_u32(~4294967295u, 24u)]));
    let var_3 = var_0.a;
    return select(vec2<i32>(-77508i, 19761i), vec2<i32>(countOneBits(arg_3.d.x), -abs(reverseBits(u_input.c.x))), select(var_2.zz, vec2<bool>(all(vec4<bool>(true, var_2.x, var_2.x, false)), select(var_2.x, !global3[_wgslsmith_index_u32(4294967295u, 21u)], true)), select(global3[_wgslsmith_index_u32(abs(arg_3.e), 21u)], false, !(!var_2.x))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>) -> Struct_4 {
    global1 = array<bool, 24>();
    let var_0 = Struct_1(select(~u_input.c.zzw, ~u_input.c.yyy, select(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(arg_2.x, 24u)], false)), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(arg_2.x, 24u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 21u)], true, global1[_wgslsmith_index_u32(1u, 24u)])), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.a.x, 24u)], false, !global3[_wgslsmith_index_u32(arg_0.a.x, 21u)]))), 1u, false, -_wgslsmith_clamp_vec2_i32(abs(-u_input.c.wz), func_3(-9549i, 1i, arg_0.a.x, Struct_1(vec3<i32>(-38192i, 1i, 4827i), 31697u, true, vec2<i32>(u_input.c.x, 21091i), u_input.b.x)) ^ (u_input.c.yx | vec2<i32>(-61789i, global0[_wgslsmith_index_u32(27766u, 4u)])), vec2<i32>(17333i, 1i)), ~(arg_0.a.x & 1u));
    let var_1 = _wgslsmith_f_op_f32(abs(arg_1));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1671f, var_1, arg_0.b.x, 2554f)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-329f, 1093f, arg_1, 640f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-276f, var_1, -453f, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(454f, var_1, -812f, 726f)) * vec4<f32>(1070f, arg_0.b.x, -450f, -745f)), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -1000f, arg_1, 1597f)) - vec4<f32>(-711f, 184f, 1180f, arg_1)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1492f, 1548f, var_1, arg_0.b.x), vec4<f32>(201f, -1229f, -818f, 1737f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.b.x, arg_0.b.x, arg_0.b.x)), global3[_wgslsmith_index_u32(54833u, 21u)])))))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -765f), -1714f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(select(290f, -399f, !var_0.c)))), arg_1);
    return Struct_4(_wgslsmith_clamp_i32(~(-u_input.c.x), var_0.d.x, ~global0[_wgslsmith_index_u32(0u, 4u)]) ^ select(-42338i, func_3(reverseBits(global0[_wgslsmith_index_u32(4294967295u, 4u)]), 1i, arg_0.a.x, var_0).x, !(!global3[_wgslsmith_index_u32(37979u, 21u)])), var_0, _wgslsmith_mod_u32(~firstLeadingBit(1u), _wgslsmith_mult_u32(min(u_input.b.x & 72886u, arg_2.x), var_0.e)), select(vec2<bool>(var_0.c && true, !(global3[_wgslsmith_index_u32(1u, 21u)] | global3[_wgslsmith_index_u32(45804u, 21u)])), !(!select(vec2<bool>(true, var_0.c), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_2.x, 24u)]), global1[_wgslsmith_index_u32(arg_2.x, 24u)])), !(!(!vec2<bool>(global3[_wgslsmith_index_u32(53630u, 21u)], var_0.c)))));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> vec3<u32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(7018u, _wgslsmith_mod_u32(arg_0.c, arg_1), 4294967295u >> (1u % 32u)), _wgslsmith_div_vec3_u32(u_input.d, ~vec3<u32>(arg_1, 4294967295u, 1u))), func_2(Struct_2(u_input.d, vec3<f32>(730f, -350f, 272f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-539f * 1406f))), u_input.d.yz).b.b), max(u_input.a.xy, vec2<u32>(~u_input.b.x, 1u))), 4u)];
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(-709f, -452f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-507f + 1978f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(620f * _wgslsmith_f_op_f32(floor(-753f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1340f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1314f, var_1.x), vec2<f32>(-515f, var_1.x), true))))));
    var var_3 = func_2(Struct_2(~(~vec3<u32>(1u, 98802u, 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1383f, var_1.x, var_2.x) + _wgslsmith_div_vec3_f32(var_1, var_1)))), var_1.x, _wgslsmith_sub_vec2_u32(u_input.a.zy, vec2<u32>(23377u, arg_0.c)));
    var var_4 = _wgslsmith_mult_vec4_u32(max(~(~(~u_input.a)), vec4<u32>(0u, ~arg_1 ^ (22162u & arg_0.c), abs(~var_3.b.e), 26039u)), vec4<u32>(~arg_0.b.e, ~u_input.b.x, ~u_input.a.x, ~_wgslsmith_mod_u32(var_3.b.e, ~36934u)));
    return vec3<u32>(63565u, 1u, _wgslsmith_add_u32(_wgslsmith_add_u32(arg_1, (arg_0.c | arg_1) & 0u), arg_0.b.e));
}

fn func_1() -> f32 {
    global3 = array<bool, 21>();
    var var_0 = Struct_2(func_4(func_2(Struct_2(u_input.a.zwz ^ u_input.d, _wgslsmith_div_vec3_f32(vec3<f32>(1695f, 2152f, -575f), vec3<f32>(1000f, -445f, 1220f))), 759f, vec2<u32>(~4294967295u, 4294967295u)), _wgslsmith_add_u32(u_input.a.x, u_input.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-145f, 742f, 1891f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1449f, -325f, 1576f))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -710f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1343f)), 702f), _wgslsmith_f_op_f32(round(511f)))));
    return _wgslsmith_f_op_f32(select(var_0.b.x, -1173f, u_input.d.x >= (~u_input.a.x << (var_0.a.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 24>();
    global0 = array<i32, 4>();
    var var_0 = vec2<bool>(false, true);
    var var_1 = global1[_wgslsmith_index_u32(0u, 24u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-118f)) + _wgslsmith_f_op_f32(round(-1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-180f, -893f))), -1466f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1603f * -1406f) - _wgslsmith_f_op_f32(2513f * -1118f))), _wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(381f, 810f, 623f, 250f) - vec4<f32>(1025f, -1487f, 362f, -381f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-675f, -587f, -1390f, -901f) * vec4<f32>(-231f, -112f, -3981f, 1270f)))))));
    var var_3 = ~(-4430i);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), -548f, -1872f), _wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(46254u, 37006u, 48578u, u_input.b.x) >> (vec4<u32>(0u, 53772u, 42241u, u_input.b.x) % vec4<u32>(32u))), min(firstLeadingBit(u_input.a >> (u_input.a % vec4<u32>(32u))), ~select(u_input.a, u_input.a, vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 21u)], global3[_wgslsmith_index_u32(u_input.d.x, 21u)], var_0.x)))), u_input.a.yy, ~(~u_input.a));
}

