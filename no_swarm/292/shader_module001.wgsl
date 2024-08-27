struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<bool>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(0i, 2147483647i, -21827i, -45547i), vec4<i32>(0i, 410i, -10066i, 48894i));

var<private> global2: array<f32, 15> = array<f32, 15>(-1093f, -1000f, -289f, 114f, -1530f, -509f, -813f, 843f, -1224f, -1000f, -960f, 456f, 739f, 525f, -1000f);

var<private> global3: Struct_1 = Struct_1(true, 0u);

var<private> global4: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec2<f32>(-1634f, 302f)), Struct_3(vec2<f32>(1015f, -1081f)), Struct_3(vec2<f32>(1916f, -1299f)), Struct_3(vec2<f32>(1689f, -1738f)), Struct_3(vec2<f32>(-408f, 1430f)), Struct_3(vec2<f32>(-229f, 1000f)), Struct_3(vec2<f32>(555f, 172f)), Struct_3(vec2<f32>(-821f, 826f)), Struct_3(vec2<f32>(956f, -568f)), Struct_3(vec2<f32>(114f, 1025f)), Struct_3(vec2<f32>(-1675f, 485f)), Struct_3(vec2<f32>(601f, 599f)), Struct_3(vec2<f32>(738f, 112f)), Struct_3(vec2<f32>(675f, -1000f)), Struct_3(vec2<f32>(1420f, -267f)), Struct_3(vec2<f32>(-1290f, -838f)), Struct_3(vec2<f32>(-370f, 466f)), Struct_3(vec2<f32>(223f, 775f)), Struct_3(vec2<f32>(-421f, 587f)), Struct_3(vec2<f32>(1000f, 564f)), Struct_3(vec2<f32>(-718f, -1206f)), Struct_3(vec2<f32>(1025f, 134f)), Struct_3(vec2<f32>(1000f, -125f)), Struct_3(vec2<f32>(-602f, 676f)), Struct_3(vec2<f32>(-616f, -660f)), Struct_3(vec2<f32>(-526f, -3012f)), Struct_3(vec2<f32>(1000f, 129f)), Struct_3(vec2<f32>(-1021f, 387f)), Struct_3(vec2<f32>(-1000f, 1093f)), Struct_3(vec2<f32>(189f, 1649f)), Struct_3(vec2<f32>(-904f, -1000f)), Struct_3(vec2<f32>(-1470f, -430f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: i32) -> vec2<i32> {
    global1 = array<vec4<i32>, 2>();
    var var_0 = select(!select(vec3<bool>(global3.a, false, any(vec2<bool>(global3.a, arg_0.b.a))), !select(vec3<bool>(true, true, global3.a), vec3<bool>(true, false, global3.a), true), true | global3.a), select(vec3<bool>(false, global3.a, any(select(vec3<bool>(false, true, arg_0.b.a), vec3<bool>(arg_0.b.a, true, false), vec3<bool>(false, arg_0.b.a, arg_0.b.a)))), vec3<bool>(true | arg_0.b.a, false, !any(vec3<bool>(arg_0.b.a, false, true))), vec3<bool>(global3.a, any(!vec3<bool>(global3.a, arg_0.b.a, false)), -u_input.d.x >= 0i)), vec3<bool>(!(any(vec4<bool>(true, false, false, true)) & true), false, arg_0.b.a));
    let var_1 = Struct_5(u_input.d.x, arg_0.b);
    var var_2 = vec3<bool>(!any(!(!vec3<bool>(var_0.x, true, arg_0.b.a))), arg_0.b.a || !(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(48470u, 15u)], -902f) == _wgslsmith_f_op_f32(402f + -1299f)), var_1.b.a && !all(select(vec3<bool>(true, var_1.b.a, true), vec3<bool>(false, true, var_1.b.a), vec3<bool>(false, true, false))));
    let var_3 = 0u;
    return select(_wgslsmith_sub_vec2_i32(~vec2<i32>(2147483647i >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, var_1.a, 65993i), vec3<i32>(arg_0.a, -6868i, -8957i))), u_input.d), vec2<i32>(_wgslsmith_clamp_i32(countOneBits(u_input.c) | -2147483647i, i32(-1i) * -49375i, -3828i), 46202i), var_0.x);
}

fn func_2() -> Struct_5 {
    var var_0 = !(!select(select(!vec4<bool>(global3.a, false, global3.a, true), vec4<bool>(global3.a, true, false, global3.a), vec4<bool>(false, global3.a, global3.a, false)), vec4<bool>(true, global3.a, true, !global3.a), select(true, false && global3.a, true)));
    var var_1 = max(~func_3(Struct_5(u_input.c, Struct_1(global3.a, 0u)), -607f, u_input.c) | vec2<i32>(1i | u_input.c, -10411i), vec2<i32>(_wgslsmith_div_i32(select(func_3(Struct_5(u_input.c, Struct_1(var_0.x, 4294967295u)), global2[_wgslsmith_index_u32(0u, 15u)], u_input.c).x, _wgslsmith_dot_vec4_i32(vec4<i32>(-19001i, -1i, 55969i, u_input.d.x), global1[_wgslsmith_index_u32(u_input.b, 2u)]), any(vec3<bool>(var_0.x, true, global3.a))), 59553i | (-13071i | u_input.c)), _wgslsmith_dot_vec3_i32(~(vec3<i32>(-44468i, u_input.d.x, 7699i) & vec3<i32>(u_input.c, -54077i, u_input.d.x)), vec3<i32>(u_input.d.x, u_input.c >> (4294967295u % 32u), ~25344i))));
    var var_2 = select(-u_input.d, vec2<i32>(-9526i, 9449i), select(!var_0.xz, var_0.zx, true));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1581f + global2[_wgslsmith_index_u32(min(global3.b, u_input.b), 15u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 15u)] - 404f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1488f, global2[_wgslsmith_index_u32(u_input.b, 15u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1990f, 628f) * vec2<f32>(-346f, -1110f))) + vec2<f32>(-619f, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(global3.b, 15u)]))))));
    var var_4 = _wgslsmith_div_u32(83949u, firstLeadingBit(~(~1u))) < ~u_input.a.x;
    return Struct_5(~(-2147483647i), Struct_1(false, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b, u_input.b, u_input.a.x, global3.b), vec4<u32>(77251u, 14184u, 1144u, global3.b)), ~51064u, _wgslsmith_sub_u32(global3.b, 0u)) | 6980u));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_5 {
    return func_2();
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> Struct_1 {
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstLeadingBit(global3.b), 15u)] - _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.b, 15u)]))), -1172f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 15u)])), false), _wgslsmith_sub_vec2_u32(max(select(~vec2<u32>(u_input.a.x, 33389u), vec2<u32>(u_input.b, u_input.a.x), global3.a), vec2<u32>(u_input.b, u_input.b)), max(reverseBits(u_input.a), u_input.a)), (~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -13581i), u_input.d) ^ _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.d.x, 0i), countOneBits(vec2<i32>(u_input.d.x, -13593i)))) >> (vec2<u32>(~select(98963u, u_input.b, global3.a), global3.b) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.b, 15u)]), _wgslsmith_f_op_f32(-1463f + -725f), global2[_wgslsmith_index_u32(~global3.b, 15u)], 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], global2[_wgslsmith_index_u32(u_input.a.x, 15u)], global2[_wgslsmith_index_u32(11688u, 15u)], 457f) * _wgslsmith_div_vec4_f32(vec4<f32>(-510f, 403f, global2[_wgslsmith_index_u32(30420u, 15u)], 2213f), vec4<f32>(266f, global2[_wgslsmith_index_u32(u_input.a.x, 15u)], -1358f, -540f))))));
    let var_1 = Struct_4(Struct_2(func_2().b, func_2().b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(var_0.b, 15u)], -1143f, 429f, global2[_wgslsmith_index_u32(13925u, 15u)]), vec4<f32>(540f, 943f, global2[_wgslsmith_index_u32(75133u, 15u)], -1610f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], -857f, 1445f, global2[_wgslsmith_index_u32(33683u, 15u)]) + vec4<f32>(global2[_wgslsmith_index_u32(36380u, 15u)], global2[_wgslsmith_index_u32(u_input.a.x, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(global3.b, 15u)]))) + vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(1000f + -1461f), global2[_wgslsmith_index_u32(abs(global3.b), 15u)], -476f))), _wgslsmith_add_vec2_u32(~countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 32078u), vec2<u32>(0u, var_0.b))), u_input.a), vec3<bool>(global3.a || func_4(Struct_5(u_input.c, Struct_1(true, 27837u)), vec2<u32>(69550u, 2394u), vec2<i32>(2147483647i, u_input.d.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], -1232f, 1000f, global2[_wgslsmith_index_u32(23192u, 15u)])))).a, true, select(any(vec2<bool>(true, true)), func_2().b.a, firstTrailingBit(26121i) == ~u_input.c)), true, vec3<i32>(~(u_input.c << (_wgslsmith_sub_u32(var_0.b, 80569u) % 32u)), u_input.c ^ reverseBits(-30112i), u_input.c));
    global4 = array<Struct_3, 32>();
    var var_2 = Struct_4(Struct_2(Struct_1(var_1.c.x, ~var_0.b), Struct_1(true, reverseBits(var_0.b)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.c.x, -1040f, 1026f, 1f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-117f, global2[_wgslsmith_index_u32(var_0.b, 15u)], -1164f, 1378f) - vec4<f32>(var_1.a.c.x, var_1.a.c.x, var_1.a.c.x, -1911f)), var_1.a.c)))), ~firstTrailingBit(~vec2<u32>(u_input.a.x, 54391u)) | (~(vec2<u32>(global3.b, global3.b) >> (vec2<u32>(var_1.b.x, var_1.a.a.b) % vec2<u32>(32u))) ^ var_1.b), !(!select(select(var_1.c, var_1.c, false), !var_1.c, vec3<bool>(false, false, var_0.a))), !all(!var_1.c), select(var_1.e, var_1.e, true));
    global1 = array<vec4<i32>, 2>();
    var var_3 = vec4<f32>(278f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(842f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c.x) * global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.b.x, 10094u), 15u)])))), var_2.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.c.x, 535f)) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(global3.b, 11975u), 15u)])));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_mod_vec2_i32(select(vec2<i32>(0i, u_input.c) & var_2.e.zz, var_2.e.yz, func_2().b.a), ~(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), u_input.d) << (vec2<u32>(4294967295u, var_2.a.a.b) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-305f, -1846f, _wgslsmith_f_op_f32(var_1.a.c.x - -269f)))) * var_3.zxx));
}

