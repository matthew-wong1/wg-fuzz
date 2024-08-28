struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec2<bool>(true, true), vec2<u32>(4294967295u, 53352u), vec2<bool>(false, false), vec3<bool>(false, false, false));

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(false, vec2<bool>(false, false), vec2<u32>(1u, 1u), vec2<bool>(false, true), vec3<bool>(false, true, false)), Struct_1(true, vec2<bool>(true, false), vec2<u32>(4294967295u, 1u), vec2<bool>(true, true), vec3<bool>(true, true, false)), Struct_1(true, vec2<bool>(false, true), vec2<u32>(0u, 4294967295u), vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_1(false, vec2<bool>(false, false), vec2<u32>(4294967295u, 66460u), vec2<bool>(true, true), vec3<bool>(true, true, false)), Struct_1(true, vec2<bool>(true, false), vec2<u32>(82210u, 1174u), vec2<bool>(false, false), vec3<bool>(true, false, false)), Struct_1(true, vec2<bool>(false, false), vec2<u32>(1u, 0u), vec2<bool>(false, true), vec3<bool>(true, false, true)), Struct_1(true, vec2<bool>(true, false), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false), vec3<bool>(true, true, true)), Struct_1(false, vec2<bool>(false, false), vec2<u32>(1u, 4294967295u), vec2<bool>(true, false), vec3<bool>(false, false, true)), Struct_1(false, vec2<bool>(true, true), vec2<u32>(4294967295u, 0u), vec2<bool>(false, false), vec3<bool>(false, true, false)), Struct_1(true, vec2<bool>(false, false), vec2<u32>(38591u, 0u), vec2<bool>(false, false), vec3<bool>(false, false, true)), Struct_1(false, vec2<bool>(true, true), vec2<u32>(1u, 1u), vec2<bool>(false, false), vec3<bool>(true, true, true)), Struct_1(true, vec2<bool>(true, false), vec2<u32>(46783u, 0u), vec2<bool>(true, true), vec3<bool>(true, true, true)), Struct_1(true, vec2<bool>(false, true), vec2<u32>(0u, 45741u), vec2<bool>(false, false), vec3<bool>(false, false, false)), Struct_1(true, vec2<bool>(false, true), vec2<u32>(1u, 23203u), vec2<bool>(true, false), vec3<bool>(false, true, true)));

var<private> global2: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(1379f, 1827f, -518f, -695f), vec4<f32>(-1901f, -1745f, -865f, 2206f), vec4<f32>(-443f, -116f, -184f, -1000f), vec4<f32>(-127f, -444f, -786f, -331f), vec4<f32>(-394f, -788f, 232f, 390f), vec4<f32>(-317f, 962f, -402f, -1112f), vec4<f32>(-554f, 1064f, -2383f, 303f), vec4<f32>(-730f, -1000f, 922f, 635f));

var<private> global3: array<f32, 13> = array<f32, 13>(-1422f, -1065f, -1000f, 154f, -364f, -227f, 1093f, 690f, 848f, 1791f, 1000f, 1782f, -1395f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global0 = global1[_wgslsmith_index_u32(countOneBits(4294967295u), 14u)];
    global3 = array<f32, 13>();
    global3 = array<f32, 13>();
    let var_0 = Struct_2(Struct_1(false, vec2<bool>(true && global0.e.x, global0.a && global0.b.x), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.xy, global0.c, global0.c >> (global0.c % vec2<u32>(32u))), countOneBits(vec2<u32>(4294967295u, u_input.d))), vec2<bool>(global0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1138f) == global3[_wgslsmith_index_u32(max(0u, global0.c.x), 13u)]), global0.e), Struct_1(all(select(!vec4<bool>(global0.a, false, global0.a, global0.a), vec4<bool>(true, true, true, true), vec4<bool>(false, global0.a, true, global0.d.x))), vec2<bool>(false, true), max(arg_0.zz, global0.c), select(global0.b, !select(global0.e.zy, global0.d, false), !global0.b), global0.e), false, _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(4294967295u, 13u)], _wgslsmith_f_op_f32(-229f - _wgslsmith_div_f32(global3[_wgslsmith_index_u32(arg_0.x, 13u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.x, 13u)]))))), global1[_wgslsmith_index_u32(u_input.d, 14u)]);
    global3 = array<f32, 13>();
    return 1u;
}

fn func_2() -> Struct_1 {
    let var_0 = 28119u;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(select(reverseBits(global0.c.x), func_3(vec4<u32>(1u, 20550u, 35566u, global0.c.x)), true) >> (~global0.c.x % 32u), 13u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f + global3[_wgslsmith_index_u32(global0.c.x, 13u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(max(global0.c.x, 0u), 13u)], _wgslsmith_f_op_f32(-2580f * -586f), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(30118u, 13u)] * -614f))), !any(vec2<bool>(true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.c.x, 13u)] - _wgslsmith_div_f32(521f, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0, 4354u), 13u)]))));
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(min(firstLeadingBit(u_input.a), _wgslsmith_div_i32(1i, u_input.a)), -1i) & reverseBits(-reverseBits(u_input.a)), 7529i);
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_u32(~6461u, global0.c.x) < firstTrailingBit(1u), !vec2<bool>(global0.b.x, false), ~vec2<u32>(max(global0.c.x, 66911u), ~global0.c.x), vec2<bool>(false, !any(global0.d)), vec3<bool>(true, true, all(select(global0.e.zy, global0.b, vec2<bool>(false, true))))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0.c, _wgslsmith_mult_vec2_u32(global0.c, vec2<u32>(4294967295u, 20577u)) ^ firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), global0.c))), 14u)], any(vec4<bool>(true, true, global0.d.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(44820u & _wgslsmith_sub_u32(1u, global0.c.x), 13u)] + -207f)), global1[_wgslsmith_index_u32(u_input.e, 14u)]);
    return var_3.b;
}

fn func_1() -> bool {
    var var_0 = !(!vec3<bool>(all(vec3<bool>(false, true, true)), false, true));
    global0 = func_2();
    var var_1 = abs(select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, global0.c.x, 1u, global0.c.x), ~vec4<u32>(global0.c.x, 35027u, global0.c.x, u_input.d)), min(select(vec4<u32>(u_input.d, 54983u, global0.c.x, 4294967295u), vec4<u32>(global0.c.x, u_input.c, 140434u, u_input.e), vec4<bool>(global0.b.x, global0.e.x, true, var_0.x)), ~vec4<u32>(67985u, global0.c.x, 4294967295u, 47918u)), ~(~vec4<u32>(3837u, 0u, global0.c.x, global0.c.x))), vec4<u32>(global0.c.x, reverseBits(1u), ~4294967295u, 100395u), !(!vec4<bool>(false, true, var_0.x, false))));
    var var_2 = _wgslsmith_f_op_f32(2294f + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1.x << (~firstLeadingBit(var_1.x) % 32u), 13u)] - _wgslsmith_f_op_f32(select(1723f, -1176f, -1037f > global3[_wgslsmith_index_u32(1u, 13u)]))));
    return var_0.x;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = 14311i;
    global3 = array<f32, 13>();
    let var_1 = arg_2.a.c.x << (u_input.b % 32u);
    global3 = array<f32, 13>();
    var var_2 = 474f;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~(~global0.c.x), u_input.c, global0.c.x, global0.c.x);
    var var_1 = reverseBits(u_input.d);
    let var_2 = global0.a;
    let var_3 = func_4(-_wgslsmith_mult_i32(-u_input.a | (u_input.a >> (8550u % 32u)), -(23458i >> (global0.c.x % 32u))), -firstTrailingBit(vec4<i32>(u_input.a, -13633i, -2147483647i, 141i)), Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 44828i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)) < u_input.a, vec2<bool>(true, !global0.d.x), ~(vec2<u32>(69729u, var_0.x) & vec2<u32>(66194u, 40708u)), global0.d, vec3<bool>(global0.b.x, all(vec4<bool>(global0.a, global0.e.x, true, false)), !global0.b.x)), Struct_1(func_1(), !global0.b, firstLeadingBit(func_2().c), vec2<bool>(false, true), vec3<bool>(global0.a, global0.a & global0.a, global0.a)), global0.e.x, global3[_wgslsmith_index_u32(func_3(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, u_input.d, 29668u, 24831u), vec4<u32>(u_input.c, u_input.c, 46536u, 16101u))), 13u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.zwx & var_0.wwx, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.wxw, var_0.wxw, vec3<u32>(1u, 1u, global0.c.x)), max(vec3<u32>(u_input.c, u_input.d, u_input.c), var_0.wzz))), 14u)]));
    var var_4 = Struct_1(var_3.a.a, select(var_3.b.d, var_3.e.b, func_4(_wgslsmith_add_i32(u_input.a, 16388i) & -u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, 2147483647i), ~vec4<i32>(-23983i, u_input.a, u_input.a, -2147483647i)), var_3).b.e.yy), vec2<u32>(8453u << (u_input.b % 32u), min(1u, 7503u)), func_4(reverseBits(1i) | u_input.a, vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), var_3).b.d, func_2().e);
    let var_5 = -(~_wgslsmith_div_vec3_i32(~vec3<i32>(-71136i, -14077i, 1i), vec3<i32>(1i, 1i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_5.x, u_input.a, -2147483647i, 20719i), -vec4<i32>(481i, -2147483647i, -3731i, -1i)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_5.x, u_input.a, var_5.x, -6002i), vec4<i32>(-22853i, -2147483647i, 50745i, 7183i), vec4<i32>(u_input.a, 1i, u_input.a, var_5.x)))), firstLeadingBit(-vec4<i32>(-1i, -68058i, -4717i, 0i)) & -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_5.x, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, 0i, 7113i), vec4<i32>(var_5.x, 0i, var_5.x, 13034i))), -var_5.x, 0i);
}

