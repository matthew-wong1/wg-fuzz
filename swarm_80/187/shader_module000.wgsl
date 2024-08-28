struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-1000f, -2321f, 1254f), vec3<f32>(886f, 527f, 156f), vec3<f32>(-1000f, 594f, 1377f), vec3<f32>(2413f, -251f, 805f), vec3<f32>(-1254f, -501f, 709f), vec3<f32>(1000f, 259f, -854f));

var<private> global2: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(52148i, -19802i, 2147483647i), vec3<i32>(4170i, 15360i, 1i), vec3<i32>(47593i, 31163i, i32(-2147483648)), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(50384i, i32(-2147483648), 4113i), vec3<i32>(1i, 44337i, 1i), vec3<i32>(i32(-2147483648), -37550i, -21973i), vec3<i32>(1i, -42734i, -1i), vec3<i32>(-40078i, 10109i, -10551i), vec3<i32>(2972i, 1i, 1i), vec3<i32>(-19412i, -30691i, -21147i), vec3<i32>(20305i, 49497i, -1i), vec3<i32>(2147483647i, -32841i, 2147483647i));

var<private> global3: Struct_2;

var<private> global4: Struct_2 = Struct_2(Struct_1(0i, -1000f, true, 6087i, vec2<i32>(53701i, -1i)), vec2<f32>(1219f, -1068f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_3) -> f32 {
    var var_0 = vec2<i32>(arg_1.x, arg_1.x);
    var_0 = min(-vec2<i32>(_wgslsmith_mult_i32(-6787i, _wgslsmith_mod_i32(2147483647i, u_input.d)), ~(-2147483647i)), vec2<i32>(countOneBits(-_wgslsmith_div_i32(0i, var_0.x)), 2147483647i));
    global0 = array<bool, 13>();
    let var_1 = Struct_2(global3.a, vec2<f32>(_wgslsmith_f_op_f32(-174f - _wgslsmith_f_op_f32(-global4.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_2 = reverseBits(~0u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-257f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-115f)) * _wgslsmith_f_op_f32(f32(-1f) * -470f))))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<bool>) -> vec4<f32> {
    let var_0 = global4.a;
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_i32(1i, -u_input.d & 0i, 0i), _wgslsmith_f_op_f32(func_3(vec4<f32>(global3.a.b, _wgslsmith_f_op_f32(-global4.a.b), -327f, -596f), vec4<i32>(-u_input.d, min(-28483i, u_input.d), arg_1, ~global4.a.d), 1i, Struct_3(arg_2.x && global3.a.c, Struct_2(Struct_1(-8241i, 1037f, global4.a.c, u_input.d, global3.a.e), vec2<f32>(1705f, 588f)), vec4<f32>(global3.a.b, global4.b.x, global4.b.x, 867f)))), (_wgslsmith_f_op_f32(-185f * -1518f) >= global3.b.x) && true, -1i, global4.a.e >> ((_wgslsmith_div_vec2_u32(vec2<u32>(1u, 32136u), vec2<u32>(4294967295u, u_input.c)) & min(vec2<u32>(127226u, u_input.c), vec2<u32>(60605u, u_input.c))) % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b)) * var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec4<f32>(-1243f, 307f, global3.a.b, -1000f), vec4<i32>(arg_1, 0i, 5479i, global3.a.a), -1i, Struct_3(false, Struct_2(global3.a, global3.b), vec4<f32>(831f, global3.b.x, global4.b.x, global3.b.x)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(529f)) - -180f))));
    var var_2 = arg_2.zxz;
    global1 = array<vec3<f32>, 6>();
    let var_3 = vec4<i32>(_wgslsmith_div_i32(~_wgslsmith_add_i32(-26940i, -u_input.a), -927i), ~arg_0, arg_0, firstLeadingBit(_wgslsmith_div_i32(~global4.a.d, -12116i)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.b.x, 1338f, var_1.b.x, global4.b.x), vec4<f32>(1178f, 522f, 1146f, -1736f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, global3.a.b, -301f, 1113f)))) + vec4<f32>(1827f, 1f, _wgslsmith_f_op_f32(sign(-1838f)), global3.b.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(-1053f + var_1.b.x), _wgslsmith_f_op_f32(step(var_0.b, -1369f)), global4.a.b))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool) -> Struct_2 {
    global0 = array<bool, 13>();
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(-_wgslsmith_div_i32(2147483647i, u_input.d) != _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, global3.a.e.x, arg_0.a.d, arg_0.a.e.x), vec4<i32>(arg_0.a.a, arg_0.a.e.x, arg_0.a.d, 59347i)), max(vec4<i32>(-2147483647i, 37242i, u_input.d, global3.a.d), vec4<i32>(global4.a.a, -2147483647i, global4.a.a, -62937i))), false, !arg_2), !vec3<bool>(arg_0.a.c, all(!vec3<bool>(arg_2, true, global0[_wgslsmith_index_u32(34731u, 13u)])), global4.a.c && !global0[_wgslsmith_index_u32(2578u, 13u)]));
    let var_1 = global3.a;
    global2 = array<vec3<i32>, 13>();
    var var_2 = var_1.e;
    return arg_0;
}

fn func_1() -> u32 {
    global1 = array<vec3<f32>, 6>();
    global3 = func_4(Struct_2(Struct_1(global4.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), false, (0i & global3.a.d) >> (select(u_input.c, u_input.b, global4.a.c) % 32u), _wgslsmith_add_vec2_i32(global4.a.e, _wgslsmith_mult_vec2_i32(vec2<i32>(2648i, -2147483647i), global4.a.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4.a.b, 543f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.b.x, -421f, global3.a.b, global4.a.b), vec4<f32>(-1216f, global4.a.b, global3.a.b, -1000f), global4.a.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, global4.a.b, global3.a.b, global4.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1347f, global3.b.x, -1257f) + vec4<f32>(-148f, global4.b.x, -155f, global3.b.x)) - vec4<f32>(global4.a.b, global4.b.x, -1949f, -467f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.a.b, -1521f, global4.b.x, 838f), vec4<f32>(2238f, global3.b.x, -1327f, global4.a.b), global4.a.b <= -243f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(global4.a.a, u_input.a, vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.c, 13u)], false))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-173f, global3.b.x, 1000f, -1897f), vec4<f32>(global4.a.b, global4.b.x, 228f, -863f)))))), false);
    global4 = func_4(Struct_2(Struct_1(firstLeadingBit(1i) & global4.a.d, 438f, true, -11383i, -vec2<i32>(u_input.d, 0i)), global3.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.a.b, global3.b.x, global4.a.b, global3.a.b), vec4<f32>(155f, 1153f, global4.a.b, global4.a.b), global0[_wgslsmith_index_u32(70099u, 13u)]))) - vec4<f32>(global3.a.b, global4.b.x, _wgslsmith_f_op_f32(-global3.a.b), _wgslsmith_f_op_f32(f32(-1f) * -298f)))), any(vec3<bool>(select(all(vec3<bool>(false, global3.a.c, global3.a.c)), true, true), true, func_4(Struct_2(global3.a, global4.b), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.a.b, -1897f, 234f, 660f))), any(vec2<bool>(global4.a.c, global0[_wgslsmith_index_u32(u_input.c, 13u)]))).a.c)));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(global4.a.d | -1i, _wgslsmith_clamp_i32(1i, -32913i, _wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(u_input.c | u_input.c, 13u)], ~vec3<i32>(55928i, global3.a.a, 0i))));
    global1 = array<vec3<f32>, 6>();
    let var_1 = select(vec3<bool>(global3.a.c, !(_wgslsmith_sub_u32(4294967295u, 71022u) > _wgslsmith_div_u32(u_input.b, u_input.c)), global3.a.c), select(vec3<bool>(any(select(vec3<bool>(true, global3.a.c, false), vec3<bool>(false, true, global0[_wgslsmith_index_u32(32093u, 13u)]), vec3<bool>(global4.a.c, global3.a.c, global0[_wgslsmith_index_u32(20117u, 13u)]))), true || !global4.a.c, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(71888u, 45093u), vec2<u32>(4294967295u, 4294967295u)), 13u)]), vec3<bool>(false, global4.a.c, true), true), !select(global3.a.c, global0[_wgslsmith_index_u32(4294967295u, 13u)], true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.b) + _wgslsmith_div_f32(382f, global3.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global4.b.x)));
    let var_3 = Struct_2(global4.a, _wgslsmith_f_op_vec2_f32(-global3.b));
    var var_4 = vec4<i32>(-43537i ^ -_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, u_input.c), 13u)], vec3<i32>(var_0, 0i, u_input.d) >> (vec3<u32>(u_input.b, u_input.c, u_input.c) % vec3<u32>(32u))), abs(_wgslsmith_mod_i32(~u_input.a, global4.a.d)), global4.a.a, _wgslsmith_add_i32(~reverseBits(select(1i, -16596i, true)), 21856i));
    var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(523f, _wgslsmith_f_op_f32(max(838f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(608f * -875f)))), global4.a.b, -657f)));
    let var_5 = countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 0u)), vec2<u32>(55141u, ~u_input.b)), _wgslsmith_mod_u32(u_input.c, _wgslsmith_mult_u32(47067u, u_input.b)) & 1u));
    var var_6 = (firstLeadingBit(vec4<u32>(firstTrailingBit(var_5.x), _wgslsmith_div_u32(var_5.x, 0u), func_1(), reverseBits(70451u))) | _wgslsmith_div_vec4_u32(~vec4<u32>(var_5.x, u_input.c, 38421u, 4294967295u), vec4<u32>(4294967295u, var_5.x, var_5.x, 1u) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 18248u, u_input.b, 47737u), vec4<u32>(var_5.x, var_5.x, 18514u, 24553u)))) << (~vec4<u32>(~32906u, ~(~u_input.b), var_5.x, 0u) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_i32(reverseBits(max(vec3<i32>(var_4.x, -2147483647i, var_3.a.e.x), vec3<i32>(u_input.d, var_0, global4.a.d))), select(countOneBits(vec3<i32>(var_4.x, 19133i, 2147483647i)), -vec3<i32>(2147483647i, global3.a.d, global3.a.a), vec3<bool>(var_1.x, global3.a.c, global3.a.c))), _wgslsmith_div_i32(-11765i, -18403i));
}

