struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12>;

var<private> global1: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(757u, 29583u), vec2<u32>(33421u, 22242u), vec2<u32>(1u, 84674u));

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(60904i, true, vec2<i32>(-16819i, 0i), 478f, vec4<bool>(true, true, false, false)), Struct_1(8898i, false, vec2<i32>(0i, 0i), -851f, vec4<bool>(true, false, false, false)), Struct_1(-23893i, false, vec2<i32>(9210i, 4056i), -142f, vec4<bool>(true, true, true, true)), Struct_1(0i, false, vec2<i32>(-1351i, 2147483647i), -746f, vec4<bool>(true, false, true, true)), Struct_1(8251i, true, vec2<i32>(27661i, -13634i), -408f, vec4<bool>(false, true, true, false)), Struct_1(0i, true, vec2<i32>(-1i, -1664i), 1927f, vec4<bool>(false, true, true, false)), Struct_1(2147483647i, true, vec2<i32>(2147483647i, i32(-2147483648)), 2466f, vec4<bool>(true, false, true, true)), Struct_1(11033i, true, vec2<i32>(0i, -4999i), 553f, vec4<bool>(true, true, false, true)), Struct_1(2147483647i, true, vec2<i32>(30146i, 0i), 927f, vec4<bool>(false, false, false, false)), Struct_1(2147483647i, true, vec2<i32>(0i, -57851i), -458f, vec4<bool>(true, true, false, false)), Struct_1(16723i, false, vec2<i32>(-1i, i32(-2147483648)), 1000f, vec4<bool>(false, true, false, true)), Struct_1(39675i, false, vec2<i32>(2147483647i, 46092i), -285f, vec4<bool>(false, true, false, false)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> vec4<f32> {
    global1 = array<vec2<u32>, 3>();
    let var_0 = ~(~(vec4<u32>(u_input.a.x, 26967u, u_input.a.x, u_input.a.x) >> (~vec4<u32>(1u, 50673u, 4294967295u, u_input.a.x) % vec4<u32>(32u))) >> (vec4<u32>(max(~u_input.a.x, u_input.a.x), ~abs(u_input.a.x), 13654u, u_input.a.x) % vec4<u32>(32u)));
    global0 = array<vec2<bool>, 12>();
    global0 = array<vec2<bool>, 12>();
    var var_1 = ~(~arg_1) ^ -23579i;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1808f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f + 340f) + _wgslsmith_div_f32(-1000f, -1300f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-263f)), _wgslsmith_f_op_f32(1076f * -949f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(295f, 388f, -581f, -1227f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(588f, -263f, -488f, -1633f))), global2.x)) + vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(292f, -229f, 1001f, -122f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-955f * 279f), _wgslsmith_f_op_f32(-452f + -1304f), _wgslsmith_f_op_f32(f32(-1f) * -513f), -238f) + vec4<f32>(1f, 1f, 1f, 1f)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    global3 = array<Struct_1, 12>();
    global3 = array<Struct_1, 12>();
    let var_0 = Struct_1(~(-21451i), true, -arg_0.zy, _wgslsmith_div_f32(arg_1.d, -1000f), select(arg_1.e, vec4<bool>(arg_1.b, any(!arg_1.e.zwx), arg_1.b, false), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(!arg_1.e, _wgslsmith_dot_vec3_i32(arg_0.zyw, vec3<i32>(var_0.c.x, 1i, -2147483647i)))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -1626f), var_0.d, -492f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(970f, -857f, arg_1.d, -176f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-931f, 729f, arg_1.d, var_0.d), vec4<f32>(-1139f, arg_1.d, -882f, var_0.d))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, arg_1.d, var_0.d, var_0.d) + vec4<f32>(-770f, 1059f, -729f, arg_1.d)), vec4<f32>(819f, 254f, var_0.d, arg_1.d))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * arg_1.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1941f) + var_0.d))), _wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_div_f32(-704f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d))))));
    let var_2 = var_0.d;
    return Struct_1(-reverseBits(arg_0.x), any(vec2<bool>(any(vec2<bool>(false, true)), true)), max(arg_1.c, -firstTrailingBit(-vec2<i32>(var_0.a, 2147483647i))), 1000f, !select(!(!vec4<bool>(arg_1.b, arg_1.e.x, false, global2.x)), select(vec4<bool>(arg_1.e.x, false, false, var_0.e.x), vec4<bool>(var_0.b, true, false, arg_1.e.x), !var_0.e), arg_1.e));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = vec3<bool>(!arg_2.e.x, true, true);
    let var_1 = func_2(vec4<i32>(-(~(2147483647i ^ arg_2.c.x)), -25538i, 43797i, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_2.c.x, arg_1.a, 6939i, arg_2.a), -(vec4<i32>(arg_2.c.x, arg_2.a, arg_1.a, 1i) ^ vec4<i32>(arg_2.a, arg_1.c.x, arg_1.a, -8958i)))), arg_1, vec2<u32>(61889u, _wgslsmith_clamp_u32(1u, 1u & u_input.a.x, u_input.a.x)));
    return arg_1.a <= arg_1.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<u32>) -> vec3<bool> {
    global2 = select(func_2(vec4<i32>(~countOneBits(arg_0.x), 1i, func_2(vec4<i32>(arg_0.x, -2147483647i, -25823i, 30356i), global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 12u)], arg_3.wx).c.x, ~1i), global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(abs(u_input.a.x), _wgslsmith_mult_u32(0u, 49676u)), 12u)], vec2<u32>(~(~arg_3.x), firstTrailingBit(~4294967295u))).e.wwy, select(vec3<bool>(true, false, global2.x), select(!(!vec3<bool>(global2.x, arg_1, false)), !select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, false, false), false), 1u >= (u_input.a.x & u_input.a.x)), !(!vec3<bool>(arg_1, false, global2.x))), vec3<bool>(false, func_1(arg_2, func_2(vec4<i32>(arg_0.x, -2958i, -35021i, -2147483647i), Struct_1(2147483647i, arg_1, arg_0, -283f, vec4<bool>(global2.x, arg_1, true, false)), ~vec2<u32>(4294967295u, arg_3.x)), global3[_wgslsmith_index_u32(u_input.a.x, 12u)]), !any(global2.xx)));
    let var_0 = Struct_1(2147483647i, arg_1, _wgslsmith_add_vec2_i32((arg_0 >> (_wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u))) ^ arg_0, arg_0), _wgslsmith_f_op_f32(-606f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), -288f)), vec4<bool>(true, global2.x, false, func_2(-vec4<i32>(arg_0.x, arg_0.x, 30124i, arg_0.x), global3[_wgslsmith_index_u32(abs(30045u), 12u)], _wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.a.yy), arg_3.xx)).b));
    global3 = array<Struct_1, 12>();
    global0 = array<vec2<bool>, 12>();
    var var_1 = var_0.a;
    return func_2(select(vec4<i32>(var_0.a, 0i, -1i, ~2256i), vec4<i32>(max(-2147483647i, abs(25132i)), 0i | var_0.c.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, 1i), arg_0.x), -firstTrailingBit(2147483647i)), var_0.e), Struct_1(select(var_0.a, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2147483647i, 36291i, arg_0.x), 1i), true), true, vec2<i32>(arg_0.x, -42042i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_3(var_0.e, -4933i)).x, _wgslsmith_f_op_f32(ceil(var_0.d)), arg_2.x > var_0.d)) * var_0.d), var_0.e), min(u_input.a.zz, vec2<u32>(countOneBits(arg_3.x), 0u))).e.yxz;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(!select(select(select(vec3<bool>(global2.x, false, false), vec3<bool>(true, global2.x, false), false), !vec3<bool>(global2.x, false, false), all(vec2<bool>(true, false))), vec3<bool>(true, false, all(vec3<bool>(global2.x, true, global2.x))), func_4(max(vec2<i32>(-2147483647i, 1i), vec2<i32>(-2147483647i, 1i)), func_1(vec4<f32>(-1118f, 1602f, 173f, -731f), global3[_wgslsmith_index_u32(4648u, 12u)], global3[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<f32>(-1796f, 897f, 578f, -846f), vec4<u32>(0u, 4294967295u, 0u, 4294967295u))), select(vec3<bool>(true, true, global2.x), select(vec3<bool>(true, true, !global2.x), !vec3<bool>(true, global2.x, true), global2.x), global2.x), true);
    global1 = array<vec2<u32>, 3>();
    var var_0 = Struct_1(~(i32(-1i) * -40597i), all(!func_2(-vec4<i32>(-65800i, 0i, 1i, -11913i), func_2(vec4<i32>(-14111i, 27880i, -44728i, 0i), Struct_1(-14398i, true, vec2<i32>(0i, -1i), -1126f, vec4<bool>(false, true, global2.x, global2.x)), u_input.a.zy), global1[_wgslsmith_index_u32(~1u, 3u)]).e), vec2<i32>(max(abs(-31636i), -2147483647i), -2147483647i), 435f, !select(select(!vec4<bool>(false, true, true, global2.x), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, global2.x), vec4<bool>(true, global2.x, global2.x, global2.x)), true), vec4<bool>(true, true, true, true), select(vec4<bool>(global2.x, false, true, global2.x), !vec4<bool>(true, true, true, global2.x), vec4<bool>(true, false, false, global2.x))));
    var var_1 = func_2(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(0i, var_0.c.x, var_0.c.x, 15705i)), vec4<i32>(var_0.a, var_0.c.x, var_0.c.x, -36749i) | vec4<i32>(34156i, var_0.a, 24434i, var_0.c.x)), func_2(~vec4<i32>(var_0.a, 13813i, -var_0.a, var_0.c.x), Struct_1(0i, true && global2.x, vec2<i32>(abs(0i), _wgslsmith_sub_i32(var_0.a, var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), !vec4<bool>(global2.x, global2.x, global2.x, false)), select(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<u32>(abs(67886u), 1u), func_2(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, var_0.a, 2147483647i, var_0.a), vec4<i32>(var_0.c.x, 1i, var_0.a, 22947i)), func_2(vec4<i32>(22558i, var_0.c.x, 17806i, var_0.c.x), global3[_wgslsmith_index_u32(u_input.a.x, 12u)], vec2<u32>(0u, 0u)), vec2<u32>(4294967295u, 409u) & vec2<u32>(u_input.a.x, 0u)).e.wx)), vec2<u32>(_wgslsmith_sub_u32(~(u_input.a.x & 40916u), firstLeadingBit(u_input.a.x & 0u)), 1u));
    global3 = array<Struct_1, 12>();
    global3 = array<Struct_1, 12>();
    var var_2 = func_2(min(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(1i, var_1.a, 2147483647i, -42553i)), ~vec4<i32>(var_1.a, 86377i, 1i, 29582i)), ~(-vec4<i32>(-2147483647i, var_0.c.x, -43573i, -17760i))) ^ (-vec4<i32>(2147483647i, -49198i, var_0.c.x, var_0.c.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), func_2(~countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a, var_1.c.x, -42937i, var_0.c.x), vec4<i32>(var_0.c.x, var_0.a, var_0.c.x, 8070i))), global3[_wgslsmith_index_u32(1u, 12u)], u_input.a.zz), vec2<u32>(u_input.a.x, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(2147483647i | var_1.c.x), 21847u);
}

