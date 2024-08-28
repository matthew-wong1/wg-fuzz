struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(4294967295u, 1u, 62312u, 1u), vec4<u32>(1u, 38203u, 0u, 8893u), vec4<u32>(1u, 27901u, 28748u, 0u), vec4<u32>(39517u, 0u, 14222u, 1u), vec4<u32>(1389u, 105060u, 61524u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 12554u), vec4<u32>(19055u, 1u, 43103u, 4294967295u), vec4<u32>(4294967295u, 1u, 2287u, 1u), vec4<u32>(44549u, 0u, 0u, 87053u), vec4<u32>(4294967295u, 65315u, 5227u, 34531u));

var<private> global2: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(2069f, 2106f, -667f, 1508f), vec4<f32>(892f, 897f, 868f, -266f), vec4<f32>(-659f, 1070f, 1799f, 210f), vec4<f32>(118f, -989f, 237f, -102f), vec4<f32>(1263f, 1000f, 1525f, -833f), vec4<f32>(1000f, -1782f, -279f, -1064f), vec4<f32>(-1031f, -1204f, 1157f, 434f), vec4<f32>(-1306f, 2020f, -110f, -947f), vec4<f32>(1673f, 1228f, -682f, 798f), vec4<f32>(-646f, -1048f, -851f, 292f), vec4<f32>(-804f, 430f, -140f, -1000f), vec4<f32>(534f, 1284f, 738f, 106f), vec4<f32>(-571f, -514f, -1000f, 874f), vec4<f32>(723f, -2568f, -1000f, -827f), vec4<f32>(1666f, 825f, 1286f, 1738f), vec4<f32>(-818f, -1225f, 549f, -165f), vec4<f32>(661f, 202f, 667f, -2114f), vec4<f32>(-405f, -763f, 126f, 264f), vec4<f32>(673f, 1085f, -334f, -417f), vec4<f32>(-666f, -1098f, 384f, -520f), vec4<f32>(689f, 680f, -1444f, 421f));

var<private> global3: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec4<bool> {
    global2 = array<vec4<f32>, 21>();
    return select(vec4<bool>(true, true, true, true), vec4<bool>(true, !(all(vec3<bool>(true, false, false)) & true), false, false), true);
}

fn func_1() -> i32 {
    global3 = firstTrailingBit(1u);
    let var_0 = vec4<u32>(_wgslsmith_add_u32(~18132u, 39614u & (u_input.d.x << (0u % 32u))), ~(~26924u), 1u, 18151u);
    let var_1 = vec4<u32>(var_0.x, 0u, firstTrailingBit(~(~abs(31957u))), var_0.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1511f, _wgslsmith_f_op_f32(881f + -1694f), true)) * _wgslsmith_f_op_f32(-893f - _wgslsmith_f_op_f32(f32(-1f) * -680f))))) - 628f);
    var var_3 = vec3<bool>(all(vec2<bool>(var_2 <= _wgslsmith_f_op_f32(var_2 + var_2), true)), !all(select(func_2(128f, u_input.b), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), !(!(~var_1.x < 4294967295u)));
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(-4633i, u_input.b, u_input.b)), -reverseBits(vec3<i32>(1i, u_input.b, -45151i))), 781i), 1689i);
}

fn func_3() -> bool {
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -_wgslsmith_sub_i32(min(u_input.b, func_1()), _wgslsmith_dot_vec2_i32(vec2<i32>(-5148i, u_input.b), vec2<i32>(1i, u_input.b)) << (u_input.a % 32u));
    let var_1 = global2[_wgslsmith_index_u32(67863u, 21u)];
    var var_2 = all(vec4<bool>(select(func_3() && true, true, (-940f >= var_1.x) && true), -2830i > u_input.b, all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), select(!func_2(var_1.x, u_input.b).x, false, true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -276f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, var_1.x, 888f))))))));
    global1 = array<vec4<u32>, 10>();
    var var_4 = vec4<u32>(u_input.c, 102456u, u_input.c, _wgslsmith_div_u32(~min(u_input.c, 0u), 1u)) & global1[_wgslsmith_index_u32(18097u, 10u)];
    var var_5 = Struct_2(~(_wgslsmith_sub_vec4_u32(min(vec4<u32>(4294967295u, 0u, var_4.x, 27177u), u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_4.x, 15233u, 35238u), global1[_wgslsmith_index_u32(u_input.d.x, 10u)])) << ((u_input.d | _wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(u_input.a, 10u)], vec4<u32>(4294967295u, u_input.d.x, var_4.x, u_input.c))) % vec4<u32>(32u))), _wgslsmith_div_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_0, -2147483647i), -vec3<i32>(-1i, 1i, -60055i)), ~vec3<i32>(u_input.b, -1i, u_input.b) | countOneBits(vec3<i32>(53491i, -1i, -1i)), true), vec3<i32>(var_0 >> ((u_input.c >> (var_4.x % 32u)) % 32u), -64314i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(24357i, -12939i, var_0, u_input.b), vec4<i32>(-40857i, var_0, 2147483647i, u_input.b), vec4<bool>(true, false, false, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.b, 74166i), vec4<i32>(var_0, 46608i, var_0, u_input.b))))), u_input.b, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(_wgslsmith_mult_i32(49677i, var_0), func_1(), ~var_0, -2147483647i)), select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, 2147483647i), vec3<i32>(-69740i, u_input.b, 1i)), u_input.b ^ var_0, 16399i & var_0, abs(var_0)), vec4<i32>(_wgslsmith_add_i32(var_0, u_input.b), u_input.b, abs(-90223i), ~19183i), false)), all(vec4<bool>(all(vec4<bool>(true, false, true, true)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false)), !(var_4.x < 1u), false)));
    global2 = array<vec4<f32>, 21>();
    let var_6 = Struct_1(false, _wgslsmith_add_vec4_u32(select(reverseBits(global1[_wgslsmith_index_u32(u_input.c, 10u)]), firstTrailingBit(~vec4<u32>(0u, 3315u, u_input.a, 17620u)), func_2(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_sub_i32(u_input.b, 9906i)).x), ~(~min(vec4<u32>(var_5.a.x, var_5.a.x, var_5.a.x, var_4.x), vec4<u32>(4294967295u, var_4.x, u_input.d.x, 121878u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_3.x))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-323f, 967f))))))), ~_wgslsmith_add_u32(abs(_wgslsmith_div_u32(0u, 1u)), ~var_5.a.x >> (0u % 32u)), -2065f);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-854f + var_3.x), -295f), var_5.a.wwz, var_5.b.xx, firstLeadingBit(vec4<u32>(select(firstTrailingBit(var_6.d), var_4.x, true), 4294967295u, 1u, ~(~1u))));
}

