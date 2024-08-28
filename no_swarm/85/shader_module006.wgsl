struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 11015u, 4294967295u, 24320u);

var<private> global1: array<vec2<i32>, 22>;

var<private> global2: array<i32, 25> = array<i32, 25>(3390i, -16876i, -481i, 1i, -58426i, 2147483647i, -1i, 1i, -54674i, -86217i, i32(-2147483648), -1i, 1i, 68116i, 1i, i32(-2147483648), -5229i, i32(-2147483648), -4034i, 8217i, i32(-2147483648), 4592i, -90825i, -1i, 45254i);

var<private> global3: array<Struct_1, 6>;

var<private> global4: array<u32, 7> = array<u32, 7>(1u, 7601u, 0u, 13539u, 34930u, 67834u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a)) * _wgslsmith_div_f32(arg_2, arg_0.e)))))), arg_0.e);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = vec4<bool>(arg_0 || true, arg_0, arg_0, any(select(!select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, true, arg_0, arg_0)), select(!vec4<bool>(true, arg_0, false, arg_0), !vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0)), true)));
    let var_1 = _wgslsmith_div_u32(27922u, ~(~23347u));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-917f, _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(~u_input.a, 6u)], _wgslsmith_mod_u32(u_input.a, 14318u), _wgslsmith_f_op_f32(ceil(286f)))), _wgslsmith_div_f32(-788f, -1000f), -317f) - vec4<f32>(-106f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-267f + -327f), _wgslsmith_f_op_f32(556f - -481f), var_0.x || var_0.x)), 732f, _wgslsmith_f_op_f32(f32(-1f) * -1010f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(511f, 1000f, -236f, -2765f) + _wgslsmith_div_vec4_f32(vec4<f32>(-1502f, -769f, 1017f, -892f), vec4<f32>(-1000f, -930f, 660f, -1059f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(632f, 474f, -1269f, -1350f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1554f, -1000f, 966f, 1092f), vec4<f32>(-1072f, -971f, -742f, 358f), vec4<bool>(var_0.x, var_0.x, arg_0, var_0.x))) - vec4<f32>(2435f, 1000f, -551f, -195f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-311f, var_2.x, var_2.x)), _wgslsmith_div_vec3_f32(var_2.zyy, var_2.xzw))) + _wgslsmith_f_op_vec3_f32(-var_2.yzw))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(499f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(var_2.x, arg_1, true, -3347i, -250f), 14295u, var_2.x))), var_2.x))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(2732f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_2.x)))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-arg_1, select(~vec3<i32>(arg_1.x, u_input.b, arg_1.x), vec3<i32>(1i, 2147483647i, global2[_wgslsmith_index_u32(4294967295u, 25u)]) | arg_1, !var_0.wwx)), -min(u_input.d.ywx >> (vec3<u32>(1u, var_1, global0.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, global2[_wgslsmith_index_u32(global0.x, 25u)], 4707i), vec3<i32>(-25046i, 0i, -8330i)))), !all(vec2<bool>(true, var_0.x)), _wgslsmith_dot_vec4_i32(select(u_input.d, vec4<i32>(global2[_wgslsmith_index_u32(arg_2.x, 25u)] | 2147483647i, 0i, _wgslsmith_div_i32(0i, u_input.c), u_input.c), vec4<bool>(any(var_0.wx), var_0.x, true, !arg_0)), ~firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, global2[_wgslsmith_index_u32(global0.x, 25u)], -1i, global2[_wgslsmith_index_u32(u_input.a, 25u)]), vec4<i32>(3095i, global2[_wgslsmith_index_u32(global0.x, 25u)], arg_1.x, -18506i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.x))))));
    return 0u;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(~global0.x, 75883u, ~global4[_wgslsmith_index_u32(u_input.a, 7u)], 1u), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(9736u, global4[_wgslsmith_index_u32(1u, 7u)], 1624u, global0.x), vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 7u)], 31623u, 0u, u_input.a), vec4<u32>(global0.x, 74285u, global0.x, 1u)), vec4<u32>(global0.x, 80418u, u_input.a, global4[_wgslsmith_index_u32(0u, 7u)])), arg_0.c), vec4<u32>(u_input.a, 1u, 31531u, 4294967295u)), vec4<u32>(u_input.a >> (4294967295u % 32u), u_input.a ^ u_input.a, firstLeadingBit(15644u) >> (1u % 32u), ~(~1u)));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1285f, arg_0.a, !any(vec3<bool>(arg_0.c, true, false)))) + _wgslsmith_f_op_f32(f32(-1f) * -1566f)), _wgslsmith_sub_vec3_i32(~arg_0.b, -u_input.d.wyw), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(arg_0.c, true, true), vec3<bool>(arg_0.c, true, true), vec3<bool>(arg_0.c, arg_0.c, arg_0.c)))) && true, select(~(~(~(-37814i))), arg_0.d, arg_0.c), arg_0.e);
    var var_1 = _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global4[_wgslsmith_index_u32(min(~0u, 0u), 7u)], global4[_wgslsmith_index_u32(28833u, 7u)] << (func_2(var_0.c, vec3<i32>(arg_0.d, global2[_wgslsmith_index_u32(0u, 25u)], arg_0.b.x), vec4<u32>(global4[_wgslsmith_index_u32(0u, 7u)], 4294967295u, 61459u, 1u), vec2<u32>(1u, 0u)) % 32u), firstTrailingBit(4294967295u), ~select(17427u, 1u, false))), min(vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, global0.x, 18003u), abs(4294967295u), 1u, _wgslsmith_dot_vec2_u32(~global0.yz, vec2<u32>(4294967295u, global0.x))), vec4<u32>(14222u, 4294967295u, 48347u, u_input.a)));
    global1 = array<vec2<i32>, 22>();
    global3 = array<Struct_1, 6>();
    return _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(51629u, ~(~1u)), select(4294967295u, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.a, 7u)], u_input.a), arg_0.d <= 22456i) >> (func_2(true, vec3<i32>(arg_0.d, var_0.b.x, u_input.b), vec4<u32>(u_input.a, 1u, 1u, 1u) ^ vec4<u32>(79494u, global4[_wgslsmith_index_u32(0u, 7u)], 0u, global0.x), global0.xx) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 4294967295u), global0.zz)), 13215u);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(844f, arg_1.e)), arg_1.e, 130f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.e, 479f, arg_1.a), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(243f, arg_1.a, 1307f))), select(vec3<bool>(arg_1.c, arg_1.c, false), vec3<bool>(arg_1.c, false, arg_1.c), arg_1.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.e, 320f, 914f) * vec3<f32>(-470f, -622f, arg_1.e)) + _wgslsmith_div_vec3_f32(vec3<f32>(278f, 1000f, arg_1.e), vec3<f32>(-187f, 1895f, 1269f)))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(183f, 1000f, 1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -438f, 132f) - vec3<f32>(arg_1.a, arg_1.e, -1000f)))))));
    var var_1 = ~reverseBits(_wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, 1u), 1u));
    global4 = array<u32, 7>();
    let var_2 = u_input.a;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.e + var_0.x))), select(min(u_input.d.wxz, u_input.d.wzx), select(vec3<i32>(u_input.d.x, global2[_wgslsmith_index_u32(arg_0, 25u)], global2[_wgslsmith_index_u32(arg_0, 25u)]), _wgslsmith_add_vec3_i32(arg_1.b, u_input.d.xxz), !vec3<bool>(true, arg_1.c, false)) | _wgslsmith_clamp_vec3_i32(-arg_1.b, vec3<i32>(global2[_wgslsmith_index_u32(arg_0, 25u)], u_input.e, 2147483647i), firstTrailingBit(arg_1.b)), (arg_1.c && all(vec3<bool>(arg_1.c, true, true))) || true), all(vec4<bool>(arg_1.c | false, arg_1.c || false, true, !select(false, true, true))), ~(~abs(_wgslsmith_mult_i32(arg_1.d, u_input.e))), var_0.x);
    return -2147483647i;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    var var_0 = !(!vec3<bool>(arg_2 || all(vec2<bool>(arg_1.c, true)), true, (global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.x, 7u)], 25u)] == 0i) && true));
    global0 = firstLeadingBit(~vec4<u32>(1u, 32102u, 1u, firstLeadingBit(abs(0u))));
    let var_1 = Struct_1(arg_0.a, firstTrailingBit(arg_0.b), all(vec3<bool>(true, arg_2 && false, arg_0.c)), ~(-(~u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e - _wgslsmith_div_f32(_wgslsmith_f_op_f32(225f + arg_0.a), arg_0.e))));
    var var_2 = vec2<bool>(true, arg_2);
    global4 = array<u32, 7>();
    return vec4<u32>(countOneBits(_wgslsmith_mult_u32(24512u, 3088u)), countOneBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(4294967295u), abs(0u)), ~global4[_wgslsmith_index_u32(0u, 7u)])), _wgslsmith_mult_u32((~global4[_wgslsmith_index_u32(17862u, 7u)] | ~20785u) << (~(~3963u) % 32u), 1u), ~9890u << (~u_input.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, abs(min(global2[_wgslsmith_index_u32(global0.x, 25u)] & -1i, 35951i))), vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-8052i, -9399i), u_input.d.wy), u_input.d.wx | u_input.d.zw));
    global2 = array<i32, 25>();
    global0 = func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1821f))))), firstLeadingBit(vec3<i32>(var_0.x, global2[_wgslsmith_index_u32(3657u, 25u)], var_0.x)) & u_input.d.zwx, false, func_4((global4[_wgslsmith_index_u32(41854u, 7u)] | 1u) ^ (7267u << (0u % 32u)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(func_1(Struct_1(-118f, u_input.d.xzw, true, global2[_wgslsmith_index_u32(u_input.a, 25u)], -1138f)), _wgslsmith_clamp_u32(37914u, 0u, 0u)), 6u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1187f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-661f))), u_input.d.xwx, true, _wgslsmith_add_i32(-u_input.b, -2300i ^ global2[_wgslsmith_index_u32(1u, 25u)]), 1f), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-335f, 1000f, _wgslsmith_f_op_f32(min(-1468f, _wgslsmith_f_op_f32(f32(-1f) * -510f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, 1128f, _wgslsmith_f_op_f32(f32(-1f) * -948f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1781f, 1061f, -218f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1502f, -1031f, 758f))))), select(vec3<bool>(true, any(vec3<bool>(false, true, false)), var_0.x == -2147483647i), vec3<bool>(true, true, select(true, false, false)), true)))));
    let var_2 = Struct_1(var_1.x, _wgslsmith_add_vec3_i32(vec3<i32>(-max(var_0.x, var_0.x), u_input.b, ~firstLeadingBit(5290i)), u_input.d.xxx), all(!vec4<bool>(false, all(vec3<bool>(false, true, true)), true, all(vec4<bool>(false, false, false, false)))), ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(~1i, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.a, 22u)], u_input.d.xz)), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1553f + var_1.x)))) * -126f));
    var var_3 = -var_0.x ^ var_0.x;
    let var_4 = _wgslsmith_f_op_f32(-1f);
    let var_5 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -682f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -183f))), u_input.d.xww, true, -_wgslsmith_sub_i32(0i, 1i), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, reverseBits(0u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(52204u, 1074u), 11717u), 1u), vec4<u32>(abs(max(42275u, global0.x)), 869u, func_2(true, -u_input.d.zyy, vec4<u32>(u_input.a, 16290u, global0.x, global4[_wgslsmith_index_u32(global0.x, 7u)]), global0.wx), ~countOneBits(5215u))));
}

