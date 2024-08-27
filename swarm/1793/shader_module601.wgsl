struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(false, false, true, true, false, true, false);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 23>;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<f32>(-726f, 285f, 300f, -426f), vec2<i32>(0i, -17493i), vec2<i32>(2147483647i, 1i)), Struct_1(vec4<f32>(855f, 565f, 1145f, -552f), vec2<i32>(8163i, 20889i), vec2<i32>(2147483647i, -1i)), Struct_1(vec4<f32>(-1419f, 1000f, 1125f, 777f), vec2<i32>(-1i, 2147483647i), vec2<i32>(-34287i, 1i)), Struct_1(vec4<f32>(-708f, 295f, 1211f, 144f), vec2<i32>(0i, 21205i), vec2<i32>(2147483647i, 1i)), Struct_1(vec4<f32>(-238f, 206f, 125f, -770f), vec2<i32>(-1i, -23633i), vec2<i32>(i32(-2147483648), 54221i)), Struct_1(vec4<f32>(117f, 1000f, 164f, 1000f), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-6025i, 8431i)), Struct_1(vec4<f32>(196f, 972f, 275f, 373f), vec2<i32>(-36110i, i32(-2147483648)), vec2<i32>(-15199i, 1i)), Struct_1(vec4<f32>(-899f, -426f, 1316f, -288f), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 1i)), Struct_1(vec4<f32>(249f, 1496f, -155f, -2338f), vec2<i32>(0i, 1i), vec2<i32>(-75975i, 12767i)), Struct_1(vec4<f32>(608f, 533f, 1000f, 781f), vec2<i32>(-30554i, -1i), vec2<i32>(1i, 2147483647i)), Struct_1(vec4<f32>(-670f, 1894f, 1423f, -619f), vec2<i32>(1i, -50479i), vec2<i32>(-11027i, 2147483647i)), Struct_1(vec4<f32>(993f, 316f, -582f, -1202f), vec2<i32>(3709i, 74258i), vec2<i32>(0i, i32(-2147483648))), Struct_1(vec4<f32>(-750f, 511f, -1000f, -104f), vec2<i32>(-8664i, i32(-2147483648)), vec2<i32>(-22757i, 2147483647i)), Struct_1(vec4<f32>(132f, 169f, -1883f, 1000f), vec2<i32>(-51835i, 1i), vec2<i32>(2147483647i, -8472i)), Struct_1(vec4<f32>(1422f, -965f, -432f, -664f), vec2<i32>(12006i, 15759i), vec2<i32>(10143i, -4556i)), Struct_1(vec4<f32>(544f, -699f, 1000f, -378f), vec2<i32>(i32(-2147483648), -44809i), vec2<i32>(32035i, 0i)), Struct_1(vec4<f32>(-998f, -775f, 1873f, 596f), vec2<i32>(-18463i, 12877i), vec2<i32>(-1i, 0i)), Struct_1(vec4<f32>(1000f, 1254f, -1242f, 161f), vec2<i32>(-19254i, 0i), vec2<i32>(-1i, 18181i)), Struct_1(vec4<f32>(846f, -1943f, -1509f, 1837f), vec2<i32>(-29277i, 2147483647i), vec2<i32>(-13077i, 2147483647i)), Struct_1(vec4<f32>(1550f, 115f, 387f, 1135f), vec2<i32>(-9735i, 0i), vec2<i32>(5162i, -9309i)), Struct_1(vec4<f32>(1000f, -2183f, 447f, -1843f), vec2<i32>(-1i, -28540i), vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec4<f32>(-1314f, -595f, 1930f, -299f), vec2<i32>(1i, 2147483647i), vec2<i32>(74339i, -1i)), Struct_1(vec4<f32>(-2177f, 1660f, 1102f, -1810f), vec2<i32>(46536i, 0i), vec2<i32>(-51022i, i32(-2147483648))), Struct_1(vec4<f32>(1498f, -473f, -1733f, -765f), vec2<i32>(-30244i, -61587i), vec2<i32>(36303i, 21411i)), Struct_1(vec4<f32>(-468f, -734f, -1000f, 483f), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec4<f32>(946f, 1649f, 1698f, 929f), vec2<i32>(30398i, -28129i), vec2<i32>(-13703i, -17041i)), Struct_1(vec4<f32>(475f, 409f, -307f, 1002f), vec2<i32>(2147483647i, -11576i), vec2<i32>(37542i, -636i)));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_1(global1.a, select(~(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.c.x, global1.b.x), global1.c) | abs(vec2<i32>(-11745i, -19213i))), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, global1.c.x), ~vec2<i32>(2147483647i, 13551i), firstLeadingBit(u_input.c)), vec2<i32>(~(-38626i), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(global1.b.x, 1i))), u_input.c), arg_0 > 36201u), vec2<i32>(-48467i, -7252i));
    var_0 = Struct_1(vec4<f32>(var_0.a.x, -367f, global1.a.x, global1.a.x), var_0.b, global1.b);
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(42324u << (u_input.b.x % 32u), 0u), 23u)];
    let var_1 = global1.a.xz;
    global2 = array<Struct_1, 23>();
    return u_input.a.x;
}

fn func_4(arg_0: u32) -> u32 {
    let var_0 = global1.a.xx;
    global0 = array<bool, 7>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)), var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + -432f))))), ~firstLeadingBit(max(global1.c, u_input.c) | (u_input.c >> (vec2<u32>(29723u, u_input.b.x) % vec2<u32>(32u)))), reverseBits(((global1.b << (vec2<u32>(17977u, 21610u) % vec2<u32>(32u))) & firstTrailingBit(vec2<i32>(-1i, 1i))) << (~select(u_input.a.yx, u_input.b.yy, global0[_wgslsmith_index_u32(arg_0, 7u)]) % vec2<u32>(32u))));
    var var_2 = var_0.x;
    var_2 = -459f;
    return _wgslsmith_div_u32(reverseBits(23125u), func_3(0u));
}

fn func_2() -> Struct_1 {
    let var_0 = select(vec2<bool>(true, all(vec3<bool>(u_input.b.x <= 7430u, true, global0[_wgslsmith_index_u32(u_input.a.x >> (u_input.a.x % 32u), 7u)]))), vec2<bool>(true, true), true | any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)])));
    let var_1 = firstLeadingBit(29441u);
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(13610u, u_input.b.x), 8903u) | u_input.a.x, 27u)];
    global2 = array<Struct_1, 23>();
    global2 = array<Struct_1, 23>();
    return global3[_wgslsmith_index_u32(~(~(~0u << (func_4(func_3(0u)) % 32u))), 27u)];
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<f32> {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.a), vec2<i32>(global1.c.x, 1i), ~_wgslsmith_sub_vec2_i32(u_input.c, firstTrailingBit(_wgslsmith_clamp_vec2_i32(global1.c, vec2<i32>(8808i, u_input.c.x), u_input.c))));
    global1 = func_2();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-826f, global1.a.x, 1000f, 421f))), arg_2.a))))), _wgslsmith_div_vec2_i32(firstTrailingBit(func_2().c), _wgslsmith_clamp_vec2_i32(arg_2.c, ~(u_input.c ^ arg_2.b), select(select(vec2<i32>(arg_2.b.x, 17993i), u_input.c, false), arg_2.b | vec2<i32>(global1.b.x, arg_2.c.x), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], true)))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(63996i, u_input.c.x, arg_2.c.x), max(vec3<i32>(u_input.c.x, 1i, u_input.c.x), vec3<i32>(1i, global1.c.x, 0i)))), ~(~_wgslsmith_add_vec2_i32(arg_2.c, global1.b))));
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(~(-1i), i32(-1i) * -1i), -arg_2.c.x, var_0.c.x, firstTrailingBit(firstTrailingBit(33845i)));
    global2 = array<Struct_1, 23>();
    return _wgslsmith_f_op_vec2_f32(min(arg_2.a.wz, var_0.a.wz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global1.a.xw - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], true, false, global0[_wgslsmith_index_u32(0u, 7u)]), _wgslsmith_f_op_f32(-global1.a.x), Struct_1(vec4<f32>(1803f, -206f, -990f, -1005f), vec2<i32>(-17615i, 20707i), global1.b), ~u_input.a.xy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(728f, global1.a.x))))));
    global2 = array<Struct_1, 23>();
    let var_1 = max(1159u, ~_wgslsmith_div_u32(38704u, _wgslsmith_add_u32(u_input.b.x, ~u_input.b.x)));
    global0 = array<bool, 7>();
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~var_1, var_1), 302f, _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(global1.b.x), u_input.c.x, ~33452i), -(~vec3<i32>(1558i, global1.c.x, 0i))), vec3<i32>(u_input.c.x, ~(~global1.b.x), u_input.c.x ^ 1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_div_f32(559f, func_2().a.x), -815f)));
}

