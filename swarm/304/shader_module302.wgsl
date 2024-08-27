struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1>;

var<private> global1: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true));

var<private> global2: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false));

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(-1000f, true, vec4<i32>(-1i, 1i, 2147483647i, 19469i)), Struct_1(-338f, false, vec4<i32>(i32(-2147483648), -20258i, 2147483647i, 1i)), Struct_1(-212f, true, vec4<i32>(-20661i, 2147483647i, i32(-2147483648), 36014i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    global0 = array<vec3<f32>, 1>();
    global2 = array<vec4<bool>, 3>();
    let var_0 = select(!vec4<bool>(false, any(vec4<bool>(true, true, true, true)), (-2147483647i ^ u_input.a) < select(-2147483647i, -31000i, true), true != select(false, false, false)), select(!select(select(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], false), global2[_wgslsmith_index_u32(~4294967295u, 3u)], select(global2[_wgslsmith_index_u32(4294967295u, 3u)], vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), !all(vec3<bool>(false, true, false)), true, any(vec3<bool>(true, false, false)))), all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(true, true), true)));
    global2 = array<vec4<bool>, 3>();
    let var_1 = Struct_2(abs(-vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a) & abs(reverseBits(vec4<i32>(0i, 2147483647i, u_input.a, -37672i)))), global3[_wgslsmith_index_u32(~max(~(~15670u), ~113427u), 3u)], ~select(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(59064i, -1i, u_input.a)), -u_input.a, false), Struct_1(_wgslsmith_f_op_f32(103f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(vec4<bool>(var_0.x, true, all(vec3<bool>(var_0.x, var_0.x, var_0.x)), select(false, true, true))), vec4<i32>(1i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(2746i, u_input.a, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a)), -u_input.a), _wgslsmith_div_i32(-23379i, u_input.a), _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -55561i), vec2<i32>(0i, u_input.a))))));
    return _wgslsmith_div_u32(26889u, ~1u);
}

fn func_4(arg_0: vec3<u32>, arg_1: u32) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(787f, 340f, false))))))), any(vec2<bool>(false, true)) | true, ~_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) | vec4<i32>(u_input.a, u_input.a, 13660i, 2147483647i), -vec4<i32>(-15469i, u_input.a, u_input.a, u_input.a) << (firstTrailingBit(vec4<u32>(arg_0.x, arg_1, 30313u, arg_0.x)) % vec4<u32>(32u))));
    global3 = array<Struct_1, 3>();
    var var_1 = !(!(!vec2<bool>(select(true, false, var_0.b), any(vec3<bool>(var_0.b, true, var_0.b)))));
    var var_2 = var_0.a;
    global0 = array<vec3<f32>, 1>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1289f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1015f, -1628f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -1099f) + _wgslsmith_div_vec2_f32(vec2<f32>(-558f, 1810f), vec2<f32>(638f, 248f))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, var_0.a), vec2<f32>(var_0.a, var_0.a)) * vec2<f32>(var_0.a, var_0.a)))), vec2<bool>(any(select(global2[_wgslsmith_index_u32(53646u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(8167u, 32u)])), any(vec2<bool>(var_0.b, true))))));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    global1 = array<vec4<bool>, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(vec3<u32>(1u, reverseBits(~func_3()), ~(~1u)), ~_wgslsmith_mult_u32(~1u, min(1730u, 1u))));
    var var_1 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(22337i, _wgslsmith_add_i32(firstLeadingBit(u_input.a), _wgslsmith_add_i32(1143i, -132i)), min(_wgslsmith_dot_vec4_i32(arg_0.c, arg_0.c), u_input.a)), firstLeadingBit(-arg_0.c.zxz));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.x), !((0i & _wgslsmith_add_i32(var_1.x, -69183i)) > u_input.a), vec4<i32>(_wgslsmith_add_i32(-u_input.a, u_input.a), -var_1.x ^ 1i, -41351i, 2147483647i));
    var var_3 = global3[_wgslsmith_index_u32(~min(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(1u, 22232u), ~(~788u), ~(~1u)), 1u), 3u)];
    return countOneBits(select(-(~var_2.c.xzw), countOneBits(_wgslsmith_div_vec3_i32(var_2.c.wwz, vec3<i32>(u_input.a, 24497i, arg_0.c.x) >> (vec3<u32>(29555u, 20953u, 0u) % vec3<u32>(32u)))), select(!vec3<bool>(var_3.b, var_2.b, arg_0.b), select(vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(var_3.b, false, false), vec3<bool>(var_3.b, var_3.b, false)), var_2.b)));
}

fn func_1(arg_0: bool) -> vec3<u32> {
    let var_0 = 34735u;
    var var_1 = Struct_2(countOneBits(vec4<i32>(abs(select(0i, 2147483647i, arg_0)), _wgslsmith_mult_i32(u_input.a, -18794i) >> (9648u % 32u), _wgslsmith_add_i32(1i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, 0i), func_2(Struct_1(1000f, arg_0, vec4<i32>(u_input.a, -7363i, u_input.a, -2147483647i)))))), global3[_wgslsmith_index_u32(1u, 3u)], u_input.a, global3[_wgslsmith_index_u32(min(30336u, ~var_0), 3u)]);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.d.a, var_1.b.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.a, var_1.b.a)), !vec2<bool>(true, var_1.d.b))), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.d.a)), var_1.b.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1947f, var_1.b.a), vec2<f32>(var_1.b.a, var_1.b.a), vec2<bool>(var_1.b.b, true)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.d.a, var_1.b.a), vec2<f32>(-449f, var_1.b.a))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1357f, 705f), vec2<f32>(var_1.d.a, -1183f))))));
    var_1 = Struct_2(min(var_1.b.c, -vec4<i32>(u_input.a, var_1.c >> (0u % 32u), -u_input.a, -10797i >> (var_0 % 32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(953f))), all(select(vec4<bool>(var_1.d.b, arg_0, var_1.d.b, false), select(vec4<bool>(arg_0, true, true, true), global2[_wgslsmith_index_u32(var_0, 3u)], global1[_wgslsmith_index_u32(52731u, 32u)]), all(vec3<bool>(true, true, var_1.b.b)))), vec4<i32>(_wgslsmith_mod_i32(~var_1.c, ~(-2147483647i)), _wgslsmith_add_i32(~(-49825i), i32(-1i) * -60910i), var_1.a.x, abs(_wgslsmith_add_i32(var_1.a.x, 14423i)))), var_1.a.x, var_1.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-506f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.a) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x + var_2.x))))));
    return ~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0, 0u), vec3<u32>(var_0, 1u, 17134u))) >> (countOneBits(min(vec3<u32>(0u, var_0, 0u), vec3<u32>(var_0, var_0, var_0))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(12059u, 1u, 9819u), func_1(true)), countOneBits(15967u), func_1(all(vec3<bool>(false, false, true))).x), func_1(!((u_input.a == 15497i) != all(vec4<bool>(false, false, false, true)))), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), !all(global1[_wgslsmith_index_u32(0u, 32u)])));
    let var_1 = Struct_2((vec4<i32>(u_input.a & -11925i, _wgslsmith_dot_vec3_i32(vec3<i32>(-18885i, -31077i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), -2147483647i, ~0i) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 83644u, var_0.x, var_0.x) | vec4<u32>(34414u, var_0.x, 0u, var_0.x), vec4<u32>(62427u, 0u, var_0.x, var_0.x) << (vec4<u32>(0u, var_0.x, var_0.x, 10217u) % vec4<u32>(32u)), ~vec4<u32>(var_0.x, var_0.x, 20924u, var_0.x)) % vec4<u32>(32u))) << (~(~abs(vec4<u32>(4294967295u, 29391u, 29456u, var_0.x))) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(var_0.x, 3u)], 2147483647i, global3[_wgslsmith_index_u32(func_1(any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), true))).x, 3u)]);
    var var_2 = firstTrailingBit(~var_0.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-421f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d.a))))), true, _wgslsmith_div_vec4_i32(var_1.b.c, var_1.b.c));
    global3 = array<Struct_1, 3>();
    global2 = array<vec4<bool>, 3>();
    global0 = array<vec3<f32>, 1>();
    var_0 = ~(~reverseBits(~vec3<u32>(var_0.x, var_0.x, var_0.x)));
    let var_4 = vec4<bool>(var_3.b, false, true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(611f + -349f))) < 419f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 501f, var_3.a))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1463f, var_3.a, var_1.d.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2137f + 715f) - var_1.b.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.a), _wgslsmith_f_op_f32(f32(-1f) * -2121f), true))))), _wgslsmith_mod_u32(reverseBits(func_3() << (6488u % 32u)), ~max(_wgslsmith_div_u32(var_0.x, var_0.x), var_0.x)));
}

