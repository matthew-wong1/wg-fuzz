struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global2: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(0u, 17292u, 0u, 1u), vec4<u32>(9887u, 28098u, 3813u, 33811u), vec4<u32>(5731u, 1u, 4294967295u, 0u), vec4<u32>(44447u, 46600u, 43831u, 23192u), vec4<u32>(1u, 51600u, 24884u, 0u), vec4<u32>(15363u, 33454u, 1u, 4294967295u), vec4<u32>(4294967295u, 15465u, 0u, 12398u), vec4<u32>(2373u, 138316u, 55982u, 47042u), vec4<u32>(90894u, 33920u, 0u, 0u), vec4<u32>(24419u, 0u, 1u, 65421u), vec4<u32>(1u, 1u, 131540u, 1u), vec4<u32>(25824u, 1u, 45743u, 4294967295u), vec4<u32>(64177u, 0u, 4294967295u, 72216u), vec4<u32>(4294967295u, 0u, 4294967295u, 10871u), vec4<u32>(13767u, 31738u, 65193u, 17585u), vec4<u32>(1u, 0u, 1u, 60746u), vec4<u32>(1u, 10336u, 19325u, 14176u), vec4<u32>(1u, 0u, 64414u, 57260u), vec4<u32>(0u, 73218u, 38683u, 98843u), vec4<u32>(10927u, 1u, 4294967295u, 72848u), vec4<u32>(9756u, 0u, 1u, 0u), vec4<u32>(70064u, 4294967295u, 4294967295u, 9594u));

var<private> global3: array<f32, 28> = array<f32, 28>(112f, -1592f, 2054f, -761f, -239f, 1492f, 1462f, -1302f, -882f, -2295f, 474f, -2088f, 2093f, -331f, -1081f, 278f, 295f, 653f, -746f, 1000f, 162f, -1463f, 1849f, -181f, -599f, -1000f, 749f, -265f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_5) -> f32 {
    var var_0 = max(~reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global0.e, global0.e), global0.e << (global0.e % vec3<u32>(32u)))), 15130u);
    global1 = vec4<bool>(arg_2.b.x, global0.b, any(vec3<bool>(global0.b, global0.b, any(vec2<bool>(global0.b, global0.b)) && false)), true);
    global3 = array<f32, 28>();
    let var_1 = select(max(vec3<u32>(1u, ~_wgslsmith_add_u32(1371u, 0u), u_input.b.x), ~vec3<u32>(~u_input.b.x, u_input.c, ~16615u)), ~vec3<u32>(u_input.b.x, 4294967295u, abs(45499u)), select(!global1.yxy, select(global1.yyz, global1.xxx, arg_2.b), arg_2.a == arg_2.a));
    var var_2 = Struct_3(vec3<bool>(!(global0.e.x < ~u_input.b.x), !(1449f > arg_2.a), select(arg_1, -2147483647i <= global0.c.x, select(all(vec4<bool>(arg_2.b.x, global0.b, true, global0.b)), all(global1.ywz), arg_1))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1173f)) + global0.a) * -1193f)));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1572f) * _wgslsmith_div_f32(global0.a, global0.a))), arg_0, 1471f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))) + -777f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(164f, _wgslsmith_f_op_f32(sign(1000f)), -371f, _wgslsmith_f_op_f32(func_3(182f, true, Struct_5(-714f, vec3<bool>(true, global1.x, global0.b))))))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1296f + -1576f)), _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.e.x, 28u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-740f, true, Struct_5(-257f, vec3<bool>(false, global0.b, false))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-497f - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 28u)] - global0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -813f))), vec2<i32>(-1i) * -(~(global0.c | global0.c)), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.c.x, global0.d.x, global0.d.x, global0.d.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.c.x, global0.d.x, 41345i, 2147483647i), vec4<i32>(-68453i, global0.d.x, 0i, global0.c.x), vec4<i32>(global0.d.x, global0.d.x, 1i, 13206i)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.d.x, global0.d.x, -6804i, global0.c.x), vec4<i32>(global0.d.x, 77974i, global0.c.x, 23939i))), vec4<i32>(firstTrailingBit(global0.d.x), _wgslsmith_sub_i32(global0.c.x, global0.c.x), global0.d.x, _wgslsmith_div_i32(-36725i, global0.d.x))), firstLeadingBit(-_wgslsmith_div_i32(33875i, -2147483647i)), _wgslsmith_mult_i32(-45347i, -reverseBits(global0.d.x))), vec3<u32>(_wgslsmith_div_u32(1u, global0.e.x), _wgslsmith_sub_u32(firstTrailingBit(~u_input.b.x), 51987u), 8842u));
    var var_1 = Struct_4(global0.a, 4294967295u);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(0u, 28u)], true, Struct_5(arg_0, vec3<bool>(global1.x, true, global0.b)))))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_div_u32(u_input.c & 33048u, 4294967295u));
    var var_3 = !select(vec3<bool>(true, global1.x, false), select(global1.wxw, global1.xzw, vec3<bool>(true, true, true)), vec3<bool>(true, !all(vec4<bool>(false, true, global0.b, false)), true));
    return global0.d.x;
}

fn func_1() -> vec3<f32> {
    let var_0 = global0.d.x;
    global2 = array<vec4<u32>, 22>();
    var var_1 = ~global0.d & vec3<i32>(_wgslsmith_clamp_i32(reverseBits(global0.d.x), global0.c.x, func_2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.e.x, 28u)]))), -2147483647i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(global0.d.x, i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, 11714i), global0.d.zz)), func_2(global0.a)));
    var var_2 = Struct_5(-1019f, !vec3<bool>(select(true, any(vec4<bool>(global0.b, false, global0.b, false)), global0.b), global0.b, _wgslsmith_mult_i32(var_1.x, 75522i) != reverseBits(-2094i)));
    var_2 = Struct_5(_wgslsmith_f_op_f32(trunc(-2233f)), vec3<bool>(var_2.b.x, !any(select(vec3<bool>(true, false, global1.x), var_2.b, vec3<bool>(false, true, global0.b))), global1.x));
    return vec3<f32>(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a)))), -1000f);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: u32) -> vec4<bool> {
    var var_0 = Struct_4(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_2, u_input.a), 28u)], 16644u);
    return vec4<bool>(!all(vec4<bool>(true, !arg_0, true, true)), true, !(_wgslsmith_div_i32(_wgslsmith_sub_i32(global0.c.x, 0i), global0.c.x) >= -_wgslsmith_mult_i32(33779i, 4702i)), arg_0 && (1u < arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(func_4(~(~58950u) <= countOneBits(~global0.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 28u)], global0.a, -291f)))), u_input.c), vec4<bool>(!func_4(any(vec4<bool>(global0.b, true, false, global0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -606f, global3[_wgslsmith_index_u32(1u, 28u)])), abs(global0.e.x)).x, any(!func_4(global0.b, vec3<f32>(global3[_wgslsmith_index_u32(28636u, 28u)], -1301f, global0.a), 0u).wzy), select(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], -1391f) >= 609f, all(vec2<bool>(true, true)) | true, !global1.x), any(vec2<bool>(!global1.x, global0.d.x > global0.c.x))), select(vec4<bool>(false, global0.b, true, global0.b), !vec4<bool>(global0.b != global1.x, global1.x, global1.x | global1.x, global0.b), true));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(529f))))));
    global0 = Struct_1(-1795f, true, ~global0.d.zz, -global0.d, vec3<u32>(max(~select(14214u, u_input.a, global1.x), 0u), global0.e.x, global0.e.x | 93540u));
    let var_1 = global0.a;
    global0 = Struct_1(var_0, !(108275u == global0.e.x), ~select(vec2<i32>(_wgslsmith_mod_i32(global0.d.x, global0.d.x), reverseBits(global0.d.x)), -global0.d.zz, global1.wx), ~(-_wgslsmith_div_vec3_i32(vec3<i32>(global0.c.x, -41325i, global0.c.x) | global0.d, -global0.d)), global0.e);
    let var_2 = global0.e;
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, global0.a), vec2<f32>(535f, -240f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x, global0.d.x, 1i), global0.d), global0.d.x) >> (var_2.x % 32u), firstTrailingBit(global0.c), _wgslsmith_f_op_vec2_f32(round(var_3)), 1u, firstLeadingBit(vec4<i32>(func_2(-1794f), -6657i, 24117i, _wgslsmith_add_i32(max(2147483647i, global0.c.x), ~1i))));
}

