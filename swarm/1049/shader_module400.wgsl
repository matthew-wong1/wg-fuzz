struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(false, true, true, false, false, true, false, false, false, false, false, true, true, true, true, false, false, true, false, false, true, false, false, false, true, true, true, false, false, false);

var<private> global1: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(2147483647i, Struct_3(vec4<i32>(-1i, -16759i, 42281i, i32(-2147483648))), Struct_3(vec4<i32>(16660i, -1i, -8259i, 2147483647i))), Struct_4(-38086i, Struct_3(vec4<i32>(-1i, 0i, -10027i, -33937i)), Struct_3(vec4<i32>(i32(-2147483648), -1i, 19792i, 31445i))), Struct_4(-1i, Struct_3(vec4<i32>(0i, 0i, 26053i, -3201i)), Struct_3(vec4<i32>(0i, 2147483647i, -1i, 1i))), Struct_4(-11127i, Struct_3(vec4<i32>(1i, -1i, 12670i, i32(-2147483648))), Struct_3(vec4<i32>(2147483647i, 17997i, 29715i, 31736i))), Struct_4(-30042i, Struct_3(vec4<i32>(0i, -22203i, 13655i, -59160i)), Struct_3(vec4<i32>(-33211i, -1i, 0i, 67529i))), Struct_4(11732i, Struct_3(vec4<i32>(0i, 0i, 25792i, 64255i)), Struct_3(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -2192i))), Struct_4(-20448i, Struct_3(vec4<i32>(-19454i, -1i, 2147483647i, -6794i)), Struct_3(vec4<i32>(2147483647i, -4277i, 22900i, -5792i))), Struct_4(-11210i, Struct_3(vec4<i32>(0i, 0i, 10596i, 35011i)), Struct_3(vec4<i32>(1i, -15993i, i32(-2147483648), 1i))), Struct_4(i32(-2147483648), Struct_3(vec4<i32>(-19586i, 0i, 2147483647i, 2147483647i)), Struct_3(vec4<i32>(-56197i, i32(-2147483648), 2147483647i, -2667i))), Struct_4(3602i, Struct_3(vec4<i32>(2147483647i, 2147483647i, 58165i, i32(-2147483648))), Struct_3(vec4<i32>(-1i, -1i, -1i, 12655i))), Struct_4(-18539i, Struct_3(vec4<i32>(-36123i, -1i, 1i, 1i)), Struct_3(vec4<i32>(27783i, -15563i, 0i, -38580i))), Struct_4(i32(-2147483648), Struct_3(vec4<i32>(26643i, -33330i, 33858i, -1i)), Struct_3(vec4<i32>(-10395i, 0i, -19866i, 1538i))), Struct_4(7360i, Struct_3(vec4<i32>(1i, 1i, 36318i, 41048i)), Struct_3(vec4<i32>(18814i, i32(-2147483648), 0i, 35386i))), Struct_4(0i, Struct_3(vec4<i32>(2147483647i, 20347i, 9173i, -22616i)), Struct_3(vec4<i32>(2147483647i, 0i, 1i, i32(-2147483648)))), Struct_4(0i, Struct_3(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 1i)), Struct_3(vec4<i32>(0i, 71326i, i32(-2147483648), -1i))), Struct_4(35069i, Struct_3(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 1i)), Struct_3(vec4<i32>(1571i, i32(-2147483648), 22597i, -35396i))), Struct_4(2351i, Struct_3(vec4<i32>(10707i, 1i, 5580i, 0i)), Struct_3(vec4<i32>(-64933i, -1i, 29448i, -1i))), Struct_4(-7619i, Struct_3(vec4<i32>(-25481i, 10490i, 1i, -31534i)), Struct_3(vec4<i32>(i32(-2147483648), -82291i, i32(-2147483648), i32(-2147483648)))), Struct_4(0i, Struct_3(vec4<i32>(-25226i, 1i, i32(-2147483648), 0i)), Struct_3(vec4<i32>(-19062i, i32(-2147483648), 47282i, 1i))), Struct_4(-1i, Struct_3(vec4<i32>(-1i, -67093i, 1i, -6148i)), Struct_3(vec4<i32>(9893i, -2112i, 36773i, i32(-2147483648)))), Struct_4(-1i, Struct_3(vec4<i32>(0i, 30489i, 7362i, 0i)), Struct_3(vec4<i32>(63628i, -1i, 12213i, 19748i))), Struct_4(0i, Struct_3(vec4<i32>(1i, -9048i, 0i, 45409i)), Struct_3(vec4<i32>(-1i, 1i, 1i, 2147483647i))));

var<private> global2: array<u32, 29>;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2() -> u32 {
    let var_0 = ~_wgslsmith_add_i32(abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(1i, -43479i), countOneBits(1i))), ~firstTrailingBit(1i));
    let var_1 = Struct_3(-((-vec4<i32>(var_0, 23406i, var_0, 1i) << ((vec4<u32>(26524u, 25295u, u_input.a.x, u_input.a.x) << (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)], global3.b, 41959u, global3.c) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ max(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, 1i, -6551i, var_0), vec4<i32>(45316i, -2147483647i, var_0, var_0), vec4<i32>(-2147483647i, var_0, -1i, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0, var_0, 0i, 0i), vec4<i32>(var_0, var_0, var_0, 1i)))));
    let var_2 = Struct_3(var_1.a);
    global2 = array<u32, 29>();
    let var_3 = ~var_1.a.zx;
    return u_input.a.x;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> vec2<u32> {
    var var_0 = vec3<bool>(!all(vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(floor(-1000f)) >= -1000f);
    global0 = array<bool, 30>();
    var var_1 = _wgslsmith_f_op_f32(sign(global3.d.x));
    let var_2 = 1u;
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_div_i32(-min(1i, arg_0.x), select(arg_1.a.x << (1u % 32u), abs(-1i), true)), firstLeadingBit(select(~(-2147483647i), -2147483647i, var_0.x))) << (_wgslsmith_mult_u32(0u, _wgslsmith_div_u32(_wgslsmith_div_u32(firstTrailingBit(1u), _wgslsmith_mult_u32(var_2, 45058u)), u_input.a.x)) % 32u);
    return ~_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(~_wgslsmith_mult_u32(4294967295u, var_2), firstLeadingBit(global3.b << (165u % 32u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<u32>) -> f32 {
    let var_0 = vec4<u32>(19109u, global2[_wgslsmith_index_u32(firstLeadingBit(func_2()), 29u)], _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(8609u, global2[_wgslsmith_index_u32(global3.c, 29u)]), vec2<u32>(9963u, 53452u)) | vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, arg_2.yy), 4294967295u), _wgslsmith_clamp_vec2_u32(func_3(vec4<i32>(-1285i, 1i, 1i, 383i), Struct_3(vec4<i32>(-1i, -4479i, -33759i, 2147483647i)), true, 1i), vec2<u32>(max(arg_2.x, global3.b), ~u_input.a.x), func_3(vec4<i32>(35509i, 1i, 13396i, 25660i), Struct_3(vec4<i32>(1i, 27206i, -15870i, 2147483647i)), global3.a, -6894i))), u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.x, -1196f, -1979f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.d.www)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.d.x, -410f) - -900f), _wgslsmith_f_op_f32(arg_0.x + -1730f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x - arg_0.x)))));
    global0 = array<bool, 30>();
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global3.d.wyw, _wgslsmith_f_op_vec3_f32(var_1 * _wgslsmith_f_op_vec3_f32(var_1 + _wgslsmith_f_op_vec3_f32(trunc(var_1)))))));
    let var_3 = Struct_5(Struct_1(!((var_1.x < -233f) | global3.a), global2[_wgslsmith_index_u32(arg_2.x | global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(arg_2.x, 29u)], 29u)], 29u)], 0u, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.d.x + 426f), _wgslsmith_f_op_f32(max(1085f, -668f)), _wgslsmith_f_op_f32(step(-199f, 301f)), _wgslsmith_f_op_f32(max(var_1.x, 173f))), global3.d)), countOneBits(-68970i), _wgslsmith_mod_i32(~min(min(2147483647i, 0i), firstLeadingBit(-2147483647i)), firstTrailingBit(-2147483647i)), !(!select(vec3<bool>(global3.a, global0[_wgslsmith_index_u32(21206u, 30u)], true), !vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 30u)], false, true), !vec3<bool>(true, arg_1, arg_1))));
    return _wgslsmith_f_op_f32(-1051f + -1384f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(~(min(vec4<i32>(-55520i, 1601i, 2147483647i, -12476i), vec4<i32>(-2147483647i, -2147483647i, 0i, 5297i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(61189u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.c, 29u)], 29u)], 101015u, global3.c), vec4<u32>(22136u, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], 1u, 108895u)) % vec4<u32>(32u))));
    global1 = array<Struct_4, 22>();
    var var_1 = _wgslsmith_div_vec3_i32(var_0.zyy, var_0.zyw);
    var var_2 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(global3.b, 54445u, global2[_wgslsmith_index_u32(0u, 29u)]))), (countOneBits(vec3<u32>(global3.b, 4294967295u, 42561u)) ^ reverseBits(vec3<u32>(59691u, global3.b, 1u))) >> ((~vec3<u32>(global3.b, global2[_wgslsmith_index_u32(1u, 29u)], u_input.a.x) ^ ~vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global3.c)) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1122f))) - _wgslsmith_f_op_f32(func_1(vec2<f32>(593f, 292f), !global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 30u)], vec3<u32>(1u, u_input.a.x, global2[_wgslsmith_index_u32(0u, 29u)]) << (max(vec3<u32>(62687u, 10978u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], 29u)], 8243u, 4294967295u)) % vec3<u32>(32u))))), 1000f);
    let var_4 = -1072f;
    var_1 = _wgslsmith_mult_vec3_i32(var_0.yzw, -var_0.yzx);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, ~_wgslsmith_div_i32(1i, 27275i), 404f, (-(~0i) | -_wgslsmith_dot_vec4_i32(var_0, var_0)) ^ _wgslsmith_sub_i32(var_1.x, -var_0.x));
}

