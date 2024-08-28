struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(475f, 823f, -595f, 374f, 210f, -272f, 526f, -457f, -1016f, 663f, -169f, -338f, 1743f, -681f, -2471f, -1954f, 1376f, -398f, -131f, 464f, 429f, -1426f);

var<private> global1: i32 = -1i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> vec3<i32> {
    global1 = -arg_1.x;
    global1 = arg_1.x;
    let var_0 = ~(~vec3<u32>(~1u, u_input.d, _wgslsmith_clamp_u32(u_input.e, abs(u_input.b.x), u_input.b.x)));
    return select(u_input.a, u_input.c, countOneBits(-32062i) <= ~arg_1.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    global1 = abs(u_input.a.x) | arg_1.x;
    var var_0 = _wgslsmith_clamp_vec3_i32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-666f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.e, 22u)], -444f), any(vec2<bool>(true, true))))), -vec2<i32>(firstTrailingBit(-26794i), _wgslsmith_div_i32(arg_1.x, arg_1.x))), vec3<i32>(reverseBits(-39331i), 0i, arg_1.x), ~abs(~(u_input.c << (vec3<u32>(u_input.e, 28615u, u_input.e) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(ceil(-503f));
    var var_2 = Struct_3(Struct_1(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), arg_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(213f, var_1, arg_0.x, 1000f) + vec4<f32>(153f, arg_3.b, -938f, 479f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-562f, 651f, -138f, arg_3.b))), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, arg_3.b, -362f, arg_3.b))))), -296f, all(vec3<bool>(true, true, true))), var_1, true, _wgslsmith_mult_vec3_i32(-(~abs(u_input.a)), vec3<i32>(2147483647i, u_input.a.x, 2147483647i)), firstLeadingBit(4294967295u & _wgslsmith_div_u32(countOneBits(u_input.d), 25317u)));
    var var_3 = Struct_3(Struct_1(var_2.a.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0.x, arg_2, false)), arg_0.x)) + _wgslsmith_div_f32(-387f, _wgslsmith_f_op_f32(ceil(var_1)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_2)), arg_2, _wgslsmith_f_op_f32(select(-1305f, var_1, var_2.a.a)), _wgslsmith_f_op_f32(-2211f - -327f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1028f, 178f))), _wgslsmith_f_op_f32(f32(-1f) * -430f))), abs(4294967295u) >= _wgslsmith_mod_u32(_wgslsmith_clamp_u32(18192u, u_input.b.x, 32517u), countOneBits(arg_3.a))), global0[_wgslsmith_index_u32(arg_3.a, 22u)], all(!select(vec4<bool>(false, true, var_2.a.a, var_2.c), !vec4<bool>(var_2.a.a, false, var_2.a.a, false), true)), countOneBits(~(~_wgslsmith_add_vec3_i32(u_input.c, var_2.d))), _wgslsmith_div_u32(u_input.d, var_2.e));
    return select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(select(vec2<bool>(false, select(false, var_3.c, true)), vec2<bool>(any(vec2<bool>(true, var_2.a.a)), true), false)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: vec3<u32>) -> vec3<bool> {
    let var_0 = select(select(select(!func_2(vec3<f32>(-1409f, global0[_wgslsmith_index_u32(1u, 22u)], 131f), vec2<i32>(u_input.a.x, 2147483647i), 1204f, Struct_2(arg_3.x, global0[_wgslsmith_index_u32(arg_3.x, 22u)])), vec3<bool>(!arg_0, true, true), arg_0), select(!vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, !arg_0, true), vec3<bool>(arg_0, all(vec2<bool>(true, true)), arg_0)), select(vec3<bool>(any(vec4<bool>(arg_0, false, false, arg_0)), !arg_0, all(vec4<bool>(true, arg_0, true, true))), !(!vec3<bool>(arg_0, arg_0, false)), !select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, true)))), !(!select(!vec3<bool>(arg_0, arg_0, true), !vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(arg_0, false, false), vec3<bool>(false, true, arg_0), vec3<bool>(false, arg_0, false)))), !func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(85424u, 22u)], 493f, global0[_wgslsmith_index_u32(18841u, 22u)]), vec3<f32>(global0[_wgslsmith_index_u32(47335u, 22u)], global0[_wgslsmith_index_u32(u_input.e, 22u)], global0[_wgslsmith_index_u32(37714u, 22u)]), false))), u_input.c.yz, -831f, Struct_2(1u, _wgslsmith_f_op_f32(f32(-1f) * -220f))).x);
    let var_1 = Struct_2(9612u & ~(~(~arg_3.x)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u & _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(49891u, u_input.d, u_input.d, arg_3.x), vec4<u32>(0u, 1u, 0u, 0u)), min(1u, arg_3.x)), ~68764u), 22u)]);
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(select(firstLeadingBit(vec2<i32>(0i, 19629i)), func_3(-372f, vec2<i32>(arg_2, -16243i)).yz, vec2<bool>(var_0.x, true)), _wgslsmith_sub_vec2_i32(u_input.a.zy, -(~vec2<i32>(1i, arg_1)))), _wgslsmith_mod_vec2_i32(~u_input.c.yx, ~u_input.a.zy));
    let var_2 = _wgslsmith_sub_u32(var_1.a, var_1.a);
    let var_3 = -955f;
    return vec3<bool>(select(false, !(!(arg_0 && arg_0)), var_0.x), _wgslsmith_f_op_f32(var_1.b * -1010f) != var_1.b, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: vec3<bool>) -> f32 {
    let var_0 = Struct_3(Struct_1(arg_3.x, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(42320u, 23930u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 4294967295u), u_input.b)), 22u)])), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(-529f, -734f)), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(82107u, 22u)])), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.e, 22u)], -792f)), 1308f), vec4<f32>(_wgslsmith_f_op_f32(floor(314f)), -440f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e, 22u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(20339u, 22u)])))), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(u_input.e, 1u) << (vec2<u32>(53032u, 85795u) % vec2<u32>(32u))), 22u)])), false), _wgslsmith_f_op_f32(-521f + _wgslsmith_div_f32(161f, _wgslsmith_f_op_f32(round(868f)))), arg_1.x || arg_2.x, _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(u_input.a.x, u_input.c.x)), u_input.a.x, u_input.c.x), -(~u_input.a)), ~21870u);
    let var_1 = _wgslsmith_mod_i32(abs(var_0.d.x), -(~(-2147483647i))) | (54342i >> (0u % 32u));
    let var_2 = -2147483647i;
    global1 = -(max(_wgslsmith_sub_i32(reverseBits(-46444i), _wgslsmith_add_i32(var_2, -28054i)), ~var_0.d.x) << (75683u % 32u));
    var var_3 = firstLeadingBit(_wgslsmith_mod_i32(u_input.c.x, ~u_input.c.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.d)), _wgslsmith_f_op_f32(min(-527f, global0[_wgslsmith_index_u32(u_input.d, 22u)]))), _wgslsmith_f_op_f32(646f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(19782u, 22u)])) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e, 22u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(629f)) - _wgslsmith_f_op_f32(-678f + global0[_wgslsmith_index_u32(3108u, 22u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1655f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.d, 22u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), func_1(false, u_input.a.x, 54211i, vec3<u32>(6270u, 55264u, u_input.b.x)), vec3<bool>(false, false, false))))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-var_0), !(-(u_input.a.x >> (2637u % 32u)) == 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_0, 1000f) - vec4<f32>(global0[_wgslsmith_index_u32(33298u, 22u)], -921f, 941f, -560f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1401f, 1170f, -1600f, 600f) + vec4<f32>(734f, -1000f, -515f, global0[_wgslsmith_index_u32(u_input.b.x, 22u)]))))), Struct_2(1u, var_1.x));
    var var_3 = true;
    var var_4 = var_2;
    let var_5 = Struct_1(true, _wgslsmith_f_op_f32(func_4(vec3<bool>(!var_4.b, (38902u & u_input.e) == 0u, true), select(!(!vec3<bool>(true, var_4.b, var_2.b)), vec3<bool>(true, any(vec2<bool>(false, var_2.b)), var_2.b), func_1(false, _wgslsmith_div_i32(1i, -12375i), u_input.c.x, _wgslsmith_mod_vec3_u32(vec3<u32>(var_4.d.a, 3355u, var_2.d.a), vec3<u32>(74724u, var_4.d.a, 45376u)))), !vec3<bool>(true, false, var_4.b), vec3<bool>(true, var_4.b || true, any(vec2<bool>(true, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.c * vec4<f32>(-208f, var_4.d.b, -1000f, var_4.d.b)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(18614u, 22u)], -1423f, -1922f, -328f))))))), _wgslsmith_f_op_f32(round(var_1.x)), select(false, false, var_4.b));
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1025f, _wgslsmith_f_op_f32(-var_1.x), -780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 22u)] * 177f))), var_4.c)) - _wgslsmith_f_op_vec4_f32(min(var_5.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-420f, var_0, 1000f, var_1.x)))));
    var_4 = Struct_4(var_2.d.b, all(!func_2(_wgslsmith_div_vec3_f32(vec3<f32>(378f, 265f, var_2.c.x), var_5.c.xwy), u_input.a.xz, _wgslsmith_f_op_f32(ceil(var_1.x)), Struct_2(var_4.d.a, 101f)).xy), _wgslsmith_div_vec4_f32(var_2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_2.c, _wgslsmith_f_op_vec4_f32(var_4.c + vec4<f32>(global0[_wgslsmith_index_u32(1u, 22u)], var_6.x, -256f, var_0)))))), var_2.d);
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_4.c, vec4<f32>(701f, -1297f, global0[_wgslsmith_index_u32(var_2.d.a, 22u)], var_0))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.d.b, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-var_4.a)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_6.x, _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(var_2.d.a, 22u)]))), _wgslsmith_f_op_vec2_f32(var_5.c.wy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 131f)))))), abs(vec3<u32>(~1u, _wgslsmith_div_u32(u_input.d, u_input.b.x), _wgslsmith_clamp_u32(var_2.d.a, u_input.b.x, var_2.d.a)) >> ((~vec3<u32>(var_2.d.a, var_4.d.a, 4294967295u) ^ vec3<u32>(var_4.d.a, var_2.d.a, var_2.d.a)) % vec3<u32>(32u))), ~9210i);
}

