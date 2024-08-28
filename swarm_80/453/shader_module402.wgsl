struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(1i, 16231i), vec2<i32>(40929i, i32(-2147483648)), vec2<i32>(-21278i, 36426i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(-40358i, -1i), vec2<i32>(-18774i, 25407i), vec2<i32>(-34021i, 1i));

var<private> global1: array<i32, 26>;

var<private> global2: f32 = -436f;

var<private> global3: array<f32, 20> = array<f32, 20>(-2068f, 430f, -1000f, 1373f, -280f, 741f, -790f, -2039f, 177f, 434f, 1308f, 720f, -714f, -1741f, -1500f, -481f, 1000f, 210f, 1000f, -172f);

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<f32>(633f, 282f, 526f), 33584u, vec3<bool>(true, true, false)), Struct_1(vec3<f32>(-1512f, 867f, 270f), 0u, vec3<bool>(true, true, true)), Struct_1(vec3<f32>(186f, 1230f, -293f), 21460u, vec3<bool>(true, true, true)), Struct_1(vec3<f32>(833f, 715f, 1371f), 11666u, vec3<bool>(false, false, true)), Struct_1(vec3<f32>(1149f, 482f, -1290f), 1141u, vec3<bool>(true, false, true)), Struct_1(vec3<f32>(-1387f, 813f, 199f), 46429u, vec3<bool>(true, false, false)), Struct_1(vec3<f32>(558f, -432f, 1393f), 20162u, vec3<bool>(true, false, true)), Struct_1(vec3<f32>(-416f, 217f, -493f), 29982u, vec3<bool>(true, false, true)), Struct_1(vec3<f32>(517f, -446f, -246f), 4294967295u, vec3<bool>(false, false, true)), Struct_1(vec3<f32>(196f, 225f, -232f), 1u, vec3<bool>(true, false, false)), Struct_1(vec3<f32>(1970f, -1000f, 252f), 4294967295u, vec3<bool>(false, false, true)), Struct_1(vec3<f32>(626f, -914f, 185f), 44278u, vec3<bool>(false, true, false)), Struct_1(vec3<f32>(122f, 1000f, -827f), 23636u, vec3<bool>(true, true, false)), Struct_1(vec3<f32>(-1168f, 855f, 457f), 4294967295u, vec3<bool>(true, true, false)), Struct_1(vec3<f32>(835f, 822f, -779f), 4294967295u, vec3<bool>(false, true, false)), Struct_1(vec3<f32>(886f, -214f, -606f), 78060u, vec3<bool>(true, true, false)), Struct_1(vec3<f32>(-221f, -1000f, -1476f), 36213u, vec3<bool>(true, true, false)), Struct_1(vec3<f32>(863f, 282f, 430f), 21723u, vec3<bool>(false, true, false)), Struct_1(vec3<f32>(-385f, 310f, -1137f), 37247u, vec3<bool>(true, true, false)), Struct_1(vec3<f32>(562f, 1144f, -1148f), 858u, vec3<bool>(true, true, true)), Struct_1(vec3<f32>(747f, 1047f, -969f), 0u, vec3<bool>(false, false, false)), Struct_1(vec3<f32>(-427f, 474f, 856f), 34899u, vec3<bool>(false, true, false)), Struct_1(vec3<f32>(-258f, 1000f, -512f), 4294967295u, vec3<bool>(false, true, true)), Struct_1(vec3<f32>(765f, -202f, 377f), 39133u, vec3<bool>(true, true, true)), Struct_1(vec3<f32>(-475f, -400f, 135f), 0u, vec3<bool>(false, false, false)), Struct_1(vec3<f32>(-1894f, 1101f, -884f), 1u, vec3<bool>(false, false, true)), Struct_1(vec3<f32>(739f, 1061f, -1706f), 1u, vec3<bool>(true, false, true)), Struct_1(vec3<f32>(1377f, 171f, -631f), 4294967295u, vec3<bool>(true, true, true)), Struct_1(vec3<f32>(-475f, 297f, 1000f), 10334u, vec3<bool>(false, false, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = u_input.b.wz;
    var var_1 = vec4<u32>(0u, max(var_0.x, ~(~arg_0)) & 2106u, ~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~arg_0, firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b.yw, vec2<u32>(u_input.d, 1u))), _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0, 1u), _wgslsmith_add_u32(73951u, 7376u))), min(u_input.b, u_input.b)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(var_0.x, 20u)], 129f, global3[_wgslsmith_index_u32(1u, 20u)]), vec3<f32>(-1791f, global3[_wgslsmith_index_u32(0u, 20u)], 536f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-410f, global3[_wgslsmith_index_u32(arg_0, 20u)], 333f), vec3<f32>(-1505f, -728f, -622f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-702f, global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(0u, 20u)]) * vec3<f32>(global3[_wgslsmith_index_u32(15404u, 20u)], -684f, -863f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_0, 20u)], global3[_wgslsmith_index_u32(61127u, 20u)], -2396f), _wgslsmith_f_op_vec3_f32(vec3<f32>(783f, global3[_wgslsmith_index_u32(1u, 20u)], -915f) + vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], 466f, global3[_wgslsmith_index_u32(16257u, 20u)]))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3[_wgslsmith_index_u32(var_0.x, 20u)], global3[_wgslsmith_index_u32(u_input.d, 20u)], -948f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1422f, global3[_wgslsmith_index_u32(arg_0, 20u)], global3[_wgslsmith_index_u32(1u, 20u)]), vec3<f32>(global3[_wgslsmith_index_u32(var_1.x, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], 346f))))), false)), select(false, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true)), true))), var_1.x, select(vec3<bool>(arg_0 < _wgslsmith_mult_u32(arg_0, arg_0), false, all(vec4<bool>(true, true, true, true))), !vec3<bool>(true, true, arg_0 < 1u), any(vec3<bool>(true, true, true))));
    global3 = array<f32, 20>();
    global0 = array<vec2<i32>, 9>();
    return _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(abs(504f))));
}

fn func_2() -> vec3<f32> {
    var var_0 = global4[_wgslsmith_index_u32(max(firstLeadingBit(4294967295u), u_input.d), 29u)];
    var var_1 = !var_0.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(673f, var_0.a.x, var_1.x | !var_0.c.x)));
    var var_3 = _wgslsmith_mult_u32(var_0.b, firstLeadingBit(var_0.b));
    var_2 = _wgslsmith_f_op_f32(-1967f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-204f * var_0.a.x)) * _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(var_0.b, 20u)]))))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1365f, var_0.a.x, var_1.x)))) * _wgslsmith_div_f32(var_0.a.x, -231f)), _wgslsmith_f_op_f32(func_3(1u))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(58921u, 20u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 20u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(234f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(global3[_wgslsmith_index_u32(30194u, 20u)], var_0.a.x, -972f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 455f, global3[_wgslsmith_index_u32(4294967295u, 20u)]) + var_0.a), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1369f, var_0.a.x, global3[_wgslsmith_index_u32(u_input.b.x, 20u)]))))))));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global0 = array<vec2<i32>, 9>();
    let var_0 = 76441u;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1076f, global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(var_0, 20u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(23545u, 20u)], global3[_wgslsmith_index_u32(u_input.d, 20u)], global3[_wgslsmith_index_u32(96025u, 20u)]) * vec3<f32>(global3[_wgslsmith_index_u32(25691u, 20u)], 447f, -569f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-501f, global3[_wgslsmith_index_u32(var_0, 20u)], global3[_wgslsmith_index_u32(var_0, 20u)]) - vec3<f32>(900f, global3[_wgslsmith_index_u32(0u, 20u)], 285f)) + vec3<f32>(global3[_wgslsmith_index_u32(84031u, 20u)], 1643f, 1000f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-3176f, -1069f, global3[_wgslsmith_index_u32(14282u, 20u)])))))), vec3<bool>(true, true, true))));
    global3 = array<f32, 20>();
    var var_2 = reverseBits(-u_input.a);
    return !select(vec4<bool>(false, false, arg_0, all(select(vec3<bool>(false, false, arg_0), vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0)))), select(select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(true, arg_0, true, arg_0), false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, arg_0), true), vec4<bool>(false, false, false, arg_0), true), !all(vec2<bool>(false, arg_0))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-1438f * global3[_wgslsmith_index_u32(4294967295u, 20u)])) != _wgslsmith_f_op_f32(-624f - 699f));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = vec4<i32>(-1i, ~_wgslsmith_mult_i32(-6112i, arg_1 ^ 41240i) & global1[_wgslsmith_index_u32(firstLeadingBit(6067u), 26u)], max(-global1[_wgslsmith_index_u32(38450u, 26u)], u_input.c), ~_wgslsmith_add_i32(global1[_wgslsmith_index_u32(41641u, 26u)], arg_1));
    var var_1 = var_0;
    let var_2 = _wgslsmith_dot_vec3_i32(-select(-vec3<i32>(35859i, global1[_wgslsmith_index_u32(58065u, 26u)], -25826i), var_1.xwy, !arg_0.x) & min(u_input.a, -var_0.zxz), firstTrailingBit(~(~firstTrailingBit(var_1.zyz))));
    var_1 = firstTrailingBit(vec4<i32>(31069i, u_input.c, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(1635i, var_2)))) >> (abs(vec4<u32>(~(~1u), 53656u, firstTrailingBit(~u_input.d), u_input.b.x)) % vec4<u32>(32u));
    let var_3 = Struct_1(_wgslsmith_div_vec3_f32(arg_3.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, global3[_wgslsmith_index_u32(27625u, 20u)])) + _wgslsmith_f_op_f32(-arg_2.a.x)), -715f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-234f, 1472f)), _wgslsmith_f_op_f32(arg_3.a.x - -600f), arg_2.c.x)))), ~u_input.b.x >> (_wgslsmith_sub_u32(~(~16288u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.b, arg_2.b, 9038u, arg_3.b), vec4<u32>(4294967295u, 4294967295u, 0u, arg_2.b)), arg_2.b)) % 32u), arg_0.xxx);
    return arg_3.c.x & arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 29>();
    let var_0 = global4[_wgslsmith_index_u32(106827u, 29u)];
    global1 = array<i32, 26>();
    global0 = array<vec2<i32>, 9>();
    global1 = array<i32, 26>();
    let var_1 = !vec4<bool>(func_4(func_1(var_0.c.x), -6141i, Struct_1(var_0.a, ~18978u, vec3<bool>(true, var_0.c.x, var_0.c.x)), global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(20008u, 0u)), 29u)]), !all(var_0.c.yy), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - 410f) * -1589f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d, 20u)] + 631f) - _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(30328u, 20u)]))));
    let var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(abs(1u)), 26u)];
    var var_3 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1465f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1182f, _wgslsmith_div_f32(var_0.a.x, global3[_wgslsmith_index_u32(0u, 20u)]), -1000f, global3[_wgslsmith_index_u32(6664u, 20u)]))));
}

