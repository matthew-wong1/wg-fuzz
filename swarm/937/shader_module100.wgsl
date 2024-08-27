struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: vec4<f32> = vec4<f32>(956f, -804f, -1332f, 1804f);

var<private> global2: f32 = -274f;

var<private> global3: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(115019u, 8004u, 40575u), vec3<u32>(0u, 31996u, 58863u), vec3<u32>(4294967295u, 12081u, 4294967295u), vec3<u32>(34164u, 65575u, 0u), vec3<u32>(42011u, 4294967295u, 0u), vec3<u32>(4294967295u, 22459u, 0u), vec3<u32>(13552u, 27359u, 29775u), vec3<u32>(69626u, 1u, 17166u), vec3<u32>(24164u, 40191u, 1u), vec3<u32>(49139u, 1u, 1u), vec3<u32>(0u, 4294967295u, 10934u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 1u, 25434u), vec3<u32>(18819u, 55556u, 37359u), vec3<u32>(2099u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 98036u), vec3<u32>(4294967295u, 0u, 32213u), vec3<u32>(20891u, 4294967295u, 1u), vec3<u32>(30821u, 0u, 4294967295u), vec3<u32>(0u, 23876u, 1u), vec3<u32>(4294967295u, 753u, 4294967295u), vec3<u32>(504u, 4294967295u, 58182u), vec3<u32>(27825u, 1u, 115350u), vec3<u32>(42673u, 15776u, 1u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(48866u, 25246u, 50338u), vec3<u32>(64904u, 1u, 85159u), vec3<u32>(90321u, 1u, 4294967295u), vec3<u32>(0u, 36114u, 24566u), vec3<u32>(17085u, 28712u, 4294967295u), vec3<u32>(43392u, 4294967295u, 1u), vec3<u32>(58681u, 12112u, 4294967295u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1789f, global1.x, global1.x, 168f), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(-426f, global1.x, 452f, global1.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(620f, global1.x, global1.x, global1.x)))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = -2147483647i <= abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(358i, -24211i), _wgslsmith_mod_i32(14055i, -33468i), -42649i), -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 2147483647i, -16669i, 55833i), vec4<i32>(31074i, 1i, 2147483647i, 1i))));
    var var_1 = select(arg_1.b, !arg_1.b, true);
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 7u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))));
    var var_4 = Struct_3(~arg_0);
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2751f, _wgslsmith_f_op_f32(arg_1.a + global1.x))), -1284f, var_3.x)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_5) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -459f), _wgslsmith_f_op_f32(global1.x * global1.x), 1f), _wgslsmith_f_op_vec4_f32(func_2())))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(29001u, Struct_1(915f, vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-430f, global1.x, 2349f, 139f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1475f, 447f, -799f)))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    let var_0 = Struct_2(vec2<i32>(-1i, -max(arg_1.a.x, arg_1.a.x)) | vec2<i32>(arg_1.a.x ^ -7161i, firstLeadingBit(2147483647i)));
    let var_1 = select(true, !any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true)), all(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false), false)));
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1076f, -473f, global1.x, global1.x)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 753f))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-179f, 1082f, 1000f, global1.x))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, arg_2.b.x, arg_0.a)), Struct_1(global1.x, vec2<bool>(var_1, var_1)))))))));
    return Struct_2(arg_1.a << ((_wgslsmith_clamp_vec2_u32(arg_2.b.xz | vec2<u32>(arg_0.a, arg_0.a), arg_2.b.yz, u_input.a.yz) << (~(~vec2<u32>(u_input.a.x, 19486u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> bool {
    let var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(17365u, 82388u, 8420u), countOneBits(vec3<u32>(4294967295u, 7100u, 87082u))), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_3, u_input.a.x), global3[_wgslsmith_index_u32(arg_3, 32u)]))), ~arg_3, _wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(arg_3, 3393u) & 0u));
    let var_1 = Struct_3(~_wgslsmith_div_u32(var_0, 1u));
    global0 = array<Struct_3, 7>();
    global3 = array<vec3<u32>, 32>();
    var var_2 = Struct_5(~_wgslsmith_div_u32(~(~60245u), abs(arg_3)), u_input.a);
    return false;
}

fn func_5(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_5(select(max(u_input.a.x, 0u << (0u % 32u)), ~u_input.a.x, _wgslsmith_div_f32(-663f, global1.x) <= global1.x) >> (u_input.a.x % 32u), abs(~u_input.a));
    let var_1 = Struct_5(var_0.a, vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 68320u ^ var_0.b.x), u_input.a.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 0u, u_input.a.x, 1u)), ~select(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1908u), vec4<u32>(26414u, u_input.a.x, var_0.b.x, var_0.a), true))));
    var var_2 = -(~(-_wgslsmith_sub_i32(abs(0i), -14394i)));
    var var_3 = Struct_5(var_0.a, var_0.b);
    global2 = -1247f;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1043f)) + 1282f), vec2<bool>(any(vec2<bool>(arg_0 & arg_0, !arg_0)), !arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, 822f, 1000f, 1726f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -682f, global1.x) + vec4<f32>(global1.x, -1000f, global1.x, global1.x))))));
    let var_0 = func_5(func_4(vec2<i32>(~(-36915i) >> (firstTrailingBit(26991u) % 32u), -1i), func_1(Struct_3(~u_input.a.x), Struct_2(~vec2<i32>(0i, -1i)), Struct_5(~u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(584f, 1125f, 1783f, global1.x) + vec4<f32>(global1.x, global1.x, -226f, -1208f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(467f, -920f, global1.x, -709f), vec4<f32>(362f, global1.x, global1.x, -117f), false))) - vec4<f32>(-1603f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_vec4_f32(func_3(u_input.a.x, Struct_1(global1.x, vec2<bool>(true, true)))).x, _wgslsmith_div_f32(global1.x, global1.x))), 9554u), global1.x);
    var var_1 = _wgslsmith_clamp_u32(129915u, 1u, abs(min(~1u, reverseBits(4294967295u))) >> (~u_input.a.x % 32u));
    global3 = array<vec3<u32>, 32>();
    var var_2 = -537f;
    var_2 = 344f;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, global1.x, var_0.a) + vec4<f32>(-384f, global1.x, 1000f, var_0.a)))), vec4<f32>(2143f, _wgslsmith_f_op_f32(step(1027f, global1.x)), 181f, -1092f), select(!vec4<bool>(var_0.b.x, var_0.b.x, true, true), select(vec4<bool>(var_0.b.x, false, true, var_0.b.x), vec4<bool>(false, false, false, true), false), !var_0.b.x))) + _wgslsmith_f_op_vec4_f32(func_2())) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, -184f, 1419f, 463f), vec4<f32>(801f, var_0.a, 453f, var_0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-788f, global1.x, global1.x, -1704f)))), false))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, -firstTrailingBit(~countOneBits(vec3<i32>(0i, 16947i, 13402i))));
}

