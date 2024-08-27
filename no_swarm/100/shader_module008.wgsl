struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(654f, vec2<f32>(-398f, -678f), 1u, vec3<f32>(951f, -647f, 2279f), vec2<f32>(1212f, 409f)), Struct_1(-629f, vec2<f32>(-691f, -639f), 4294967295u, vec3<f32>(-372f, 1000f, -600f), vec2<f32>(1073f, 1340f)), Struct_1(-2249f, vec2<f32>(-145f, 1391f), 4294967295u, vec3<f32>(1364f, -627f, 767f), vec2<f32>(1741f, 1065f)), Struct_1(-1104f, vec2<f32>(255f, 407f), 22240u, vec3<f32>(741f, -565f, 232f), vec2<f32>(600f, 936f)), Struct_1(-759f, vec2<f32>(536f, -1865f), 27202u, vec3<f32>(1820f, 857f, 1021f), vec2<f32>(1161f, 451f)), Struct_1(-1532f, vec2<f32>(289f, 453f), 65189u, vec3<f32>(1387f, -306f, -133f), vec2<f32>(878f, 1448f)), Struct_1(-136f, vec2<f32>(716f, 809f), 0u, vec3<f32>(274f, -1000f, 682f), vec2<f32>(-1000f, 1050f)), Struct_1(214f, vec2<f32>(-1000f, 562f), 1u, vec3<f32>(-190f, -289f, 802f), vec2<f32>(-2149f, 580f)), Struct_1(732f, vec2<f32>(1328f, -1174f), 4294967295u, vec3<f32>(676f, 2471f, 1562f), vec2<f32>(1156f, 1095f)), Struct_1(-531f, vec2<f32>(-1000f, -1078f), 5974u, vec3<f32>(911f, -1204f, 1372f), vec2<f32>(-862f, -485f)), Struct_1(832f, vec2<f32>(-1548f, -1000f), 1u, vec3<f32>(1694f, 1639f, -724f), vec2<f32>(-496f, -940f)), Struct_1(-525f, vec2<f32>(-2517f, -754f), 4488u, vec3<f32>(-704f, 107f, 325f), vec2<f32>(624f, 256f)), Struct_1(211f, vec2<f32>(-164f, -1676f), 4216u, vec3<f32>(-602f, 284f, 1301f), vec2<f32>(-941f, -340f)), Struct_1(-674f, vec2<f32>(-741f, -1779f), 54245u, vec3<f32>(-488f, 428f, 412f), vec2<f32>(1000f, 470f)), Struct_1(618f, vec2<f32>(-1645f, -561f), 0u, vec3<f32>(-400f, -1864f, -1820f), vec2<f32>(2303f, -799f)), Struct_1(-2027f, vec2<f32>(522f, -2789f), 0u, vec3<f32>(1533f, 535f, 300f), vec2<f32>(-479f, -616f)));

var<private> global1: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(-518f, 1163f, -1000f), vec3<f32>(-513f, 1162f, 757f), vec3<f32>(-501f, -349f, 905f), vec3<f32>(1259f, -413f, 890f), vec3<f32>(538f, 179f, 609f), vec3<f32>(1552f, 887f, -476f), vec3<f32>(450f, -383f, 957f), vec3<f32>(1000f, -589f, -1407f), vec3<f32>(1262f, -141f, 1180f), vec3<f32>(2008f, -1000f, -691f), vec3<f32>(370f, -1079f, -1000f));

var<private> global2: f32 = 1000f;

var<private> global3: array<vec2<u32>, 23>;

var<private> global4: bool;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = arg_1;
    global1 = array<vec3<f32>, 11>();
    let var_1 = u_input.a.xzw;
    global3 = array<vec2<u32>, 23>();
    global3 = array<vec2<u32>, 23>();
    return ~(~(~reverseBits(vec4<u32>(80704u, 29942u, var_1.x, u_input.a.x))));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec3<i32> {
    let var_0 = _wgslsmith_div_i32(0i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, 67141i, 9757i) | countOneBits(vec4<i32>(u_input.b.x, u_input.c.x, 2147483647i, arg_0) ^ vec4<i32>(arg_0, arg_0, arg_0, -28152i)), vec4<i32>(i32(-1i) * -1i, -2147483647i, reverseBits(u_input.c.x), abs(_wgslsmith_mod_i32(6914i, arg_0)))));
    global0 = array<Struct_1, 16>();
    var var_1 = u_input.a.x;
    var_1 = ~u_input.a.x;
    let var_2 = u_input.a;
    return _wgslsmith_mult_vec3_i32(vec3<i32>(var_0, ~2593i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -25639i) << (countOneBits(~1u) % 32u)), ~reverseBits(abs(u_input.c)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = (vec4<i32>(~0i, reverseBits(u_input.c.x), 23227i, -u_input.b.x << (abs(u_input.a.x) % 32u)) & _wgslsmith_div_vec4_i32(vec4<i32>(-41407i, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(132346u, arg_1.c, u_input.a.x, arg_1.c) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.c.x, -5052i, u_input.b.x), -vec4<i32>(-1i, u_input.c.x, 0i, -17121i)))) | ~(-(select(vec4<i32>(-16910i, u_input.b.x, 2147483647i, -2147483647i), vec4<i32>(-1i, u_input.c.x, 2147483647i, u_input.b.x), arg_0) >> (func_2(false, arg_1) % vec4<u32>(32u))));
    let var_1 = abs(-func_3(-var_0.x | _wgslsmith_clamp_i32(u_input.b.x, var_0.x, 31015i), all(!vec4<bool>(true, arg_0, arg_0, true))));
    let var_2 = ~_wgslsmith_mult_u32(~firstLeadingBit(u_input.a.x), 19222u);
    global3 = array<vec2<u32>, 23>();
    global1 = array<vec3<f32>, 11>();
    return all(vec2<bool>(var_1.x >= u_input.c.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-941f - -1276f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1564f) * 1697f), -1464f)))));
    var var_0 = !select(vec3<bool>(true || (4294967295u < u_input.a.x), any(vec2<bool>(true, true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(func_1(true, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), true, all(vec4<bool>(true, true, false, true))), vec3<bool>(true, true, true), vec3<bool>(u_input.b.x >= u_input.c.x, false, true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-531f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f - _wgslsmith_f_op_f32(f32(-1f) * -1646f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -315f) + _wgslsmith_f_op_f32(-499f + -459f))) - 426f));
    let var_2 = select(vec3<bool>(!(!all(vec3<bool>(true, var_0.x, false))), select(!var_0.x, var_0.x, true), any(!vec3<bool>(false, var_0.x, var_0.x))), select(!(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_0.x, true), var_0.x)), !(!(!vec3<bool>(true, true, var_0.x))), vec3<bool>(!(u_input.a.x < 1u), !(!var_0.x), true)), var_0.x);
    global2 = 873f;
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), 41133u), u_input.a.x);
    let var_4 = (_wgslsmith_sub_i32(max(~u_input.b.x, u_input.c.x), -2147483647i) & u_input.c.x) ^ firstTrailingBit(abs(firstTrailingBit(u_input.b.x)));
    var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, u_input.a.x, firstLeadingBit(~u_input.a.x), ~_wgslsmith_add_u32(4294967295u, 0u)) | vec4<u32>(func_2(func_1(var_2.x, global0[_wgslsmith_index_u32(38566u, 16u)]), global0[_wgslsmith_index_u32(4294967295u, 16u)]).x, u_input.a.x, _wgslsmith_mod_u32(~4294967295u, _wgslsmith_mod_u32(1u, u_input.a.x)), abs(28207u << (u_input.a.x % 32u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x), min(~u_input.a, u_input.a)));
    var var_5 = ~u_input.a.zzz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(select(vec4<u32>(var_5.x, var_5.x, var_5.x, 1u) >> (~u_input.a % vec4<u32>(32u)), vec4<u32>(49489u, var_5.x, var_5.x, 0u), !all(var_2)), ~u_input.a));
}

