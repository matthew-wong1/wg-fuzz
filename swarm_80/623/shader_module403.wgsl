struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
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

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -17511i);

var<private> global1: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(-1i, Struct_1(false), Struct_1(true), Struct_2(Struct_1(true)), vec3<bool>(false, false, true)), Struct_4(-6739i, Struct_1(true), Struct_1(true), Struct_2(Struct_1(true)), vec3<bool>(false, true, false)), Struct_4(-34103i, Struct_1(false), Struct_1(false), Struct_2(Struct_1(false)), vec3<bool>(true, false, true)), Struct_4(-11227i, Struct_1(true), Struct_1(true), Struct_2(Struct_1(false)), vec3<bool>(true, true, true)), Struct_4(-38308i, Struct_1(false), Struct_1(true), Struct_2(Struct_1(true)), vec3<bool>(true, true, true)), Struct_4(-1i, Struct_1(true), Struct_1(true), Struct_2(Struct_1(true)), vec3<bool>(false, true, true)), Struct_4(1375i, Struct_1(false), Struct_1(false), Struct_2(Struct_1(true)), vec3<bool>(true, true, false)), Struct_4(2064i, Struct_1(false), Struct_1(false), Struct_2(Struct_1(true)), vec3<bool>(true, false, false)), Struct_4(0i, Struct_1(false), Struct_1(true), Struct_2(Struct_1(true)), vec3<bool>(true, false, true)), Struct_4(-10128i, Struct_1(true), Struct_1(true), Struct_2(Struct_1(true)), vec3<bool>(true, true, false)), Struct_4(30811i, Struct_1(false), Struct_1(true), Struct_2(Struct_1(false)), vec3<bool>(false, false, false)), Struct_4(42174i, Struct_1(false), Struct_1(false), Struct_2(Struct_1(false)), vec3<bool>(true, true, true)), Struct_4(-1i, Struct_1(false), Struct_1(true), Struct_2(Struct_1(false)), vec3<bool>(true, false, false)), Struct_4(-21723i, Struct_1(true), Struct_1(false), Struct_2(Struct_1(true)), vec3<bool>(true, false, true)), Struct_4(354i, Struct_1(false), Struct_1(true), Struct_2(Struct_1(true)), vec3<bool>(true, false, true)), Struct_4(-4042i, Struct_1(true), Struct_1(false), Struct_2(Struct_1(false)), vec3<bool>(false, false, false)), Struct_4(13281i, Struct_1(true), Struct_1(true), Struct_2(Struct_1(true)), vec3<bool>(false, true, true)), Struct_4(2147483647i, Struct_1(false), Struct_1(true), Struct_2(Struct_1(true)), vec3<bool>(false, false, false)), Struct_4(25627i, Struct_1(false), Struct_1(false), Struct_2(Struct_1(true)), vec3<bool>(true, false, true)), Struct_4(i32(-2147483648), Struct_1(false), Struct_1(true), Struct_2(Struct_1(true)), vec3<bool>(true, false, false)), Struct_4(27627i, Struct_1(true), Struct_1(true), Struct_2(Struct_1(false)), vec3<bool>(false, true, false)), Struct_4(-26104i, Struct_1(false), Struct_1(true), Struct_2(Struct_1(false)), vec3<bool>(true, false, false)), Struct_4(31762i, Struct_1(true), Struct_1(true), Struct_2(Struct_1(true)), vec3<bool>(true, true, false)));

var<private> global2: Struct_4;

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> vec3<i32> {
    let var_0 = ~(~(~abs(u_input.c)));
    var var_1 = vec4<f32>(arg_0, 1380f, arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(180f, -999f))))));
    let var_2 = var_0.xw;
    global1 = array<Struct_4, 23>();
    let var_3 = global3.x;
    return arg_1;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> vec3<f32> {
    global2 = Struct_4(_wgslsmith_sub_i32(-1i, u_input.a.x), arg_2.a, arg_2.a, arg_2, global2.e);
    global1 = array<Struct_4, 23>();
    global3 = !(!select(select(vec4<bool>(true, false, true, false), !vec4<bool>(arg_1.a, global2.b.a, arg_2.a.a, arg_1.a), true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, arg_2.a.a), arg_0.x), !(!global2.d.a.a)));
    global1 = array<Struct_4, 23>();
    var var_0 = ~vec3<i32>(-2147483647i, global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 63469i, -45843i, 14107i), vec4<i32>(u_input.a.x, -1i, global2.a, global0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, -78005i, 1i), vec3<i32>(1086i, 44740i, u_input.e)), reverseBits(u_input.d)), min(-vec3<i32>(global2.a, global0.x, global2.a), func_3(1000f, vec3<i32>(-1i, global2.a, -1i)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-565f, 522f, -1244f), vec3<f32>(102f, -643f, 926f), false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(695f, 147f, -242f)), _wgslsmith_f_op_f32(select(-1220f, 1000f, arg_2.a.a)) > _wgslsmith_div_f32(-1190f, -665f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1036f, -405f, -1291f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-308f, -985f, -343f)))))));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = firstLeadingBit(vec4<u32>(u_input.c.x, _wgslsmith_div_u32(60517u, 22278u), 32395u, 4294967295u));
    let var_1 = Struct_3(419f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(484f, 338f, 1282f), vec3<f32>(909f, 452f, -2110f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-780f, -1000f, 1253f) * vec3<f32>(996f, 1346f, -134f))) - _wgslsmith_f_op_vec3_f32(func_2(!vec3<bool>(global2.e.x, global2.d.a.a, true), Struct_1(true), global2.d, ~arg_0.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-234f, -413f, -1693f)))))));
    global2 = Struct_4(-42751i, global2.b, Struct_1(global2.e.x), global2.d, vec3<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.c.x)) + _wgslsmith_f_op_f32(-498f - var_1.c.x)) != _wgslsmith_f_op_f32(-var_1.b.x), all(vec4<bool>(global3.x, true, global2.e.x, any(global2.e)))));
    global1 = array<Struct_4, 23>();
    let var_2 = global0.x;
    return var_1.a;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: f32) -> Struct_4 {
    var var_0 = global2.d;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(138f, -1136f, arg_2, 233f), vec4<f32>(-1000f, -1572f, 1461f, arg_2)))))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-111f, -642f, 127f, 422f), vec4<f32>(159f, 391f, 722f, 112f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, -706f, -1000f, 1000f), vec4<f32>(arg_2, 1212f, -796f, -692f)))))));
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.c.x), u_input.c.zxw) << (4294967295u % 32u), ((u_input.c.x | u_input.c.x) << (9589u % 32u)) | u_input.c.x, 7387u, _wgslsmith_add_u32(reverseBits(~u_input.c.x), 0u)), ~vec4<u32>(~u_input.c.x, ~(~1u), _wgslsmith_dot_vec3_u32(u_input.c.zzy ^ vec3<u32>(u_input.c.x, 6662u, u_input.c.x), firstLeadingBit(u_input.c.wzy)), u_input.c.x)), 23u)];
    var var_2 = select(all(!(!select(vec4<bool>(true, true, false, global2.c.a), vec4<bool>(false, global2.b.a, global3.x, global3.x), var_0.a.a))), var_0.a.a, !all(select(vec2<bool>(true, true), vec2<bool>(true, false), any(global3.xwx))));
    var var_3 = _wgslsmith_clamp_i32(~(-u_input.a.x), global2.a, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-38176i, arg_0), -1i, u_input.e | select(38210i, 1i, false)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 12956i, 52632i), -vec3<i32>(global2.a, global0.x, arg_1.x)))));
    return Struct_4(global2.a << (u_input.c.x % 32u), var_0.a, var_0.a, Struct_2(global2.c), global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_sub_i32(abs(global2.a), _wgslsmith_div_i32(~4001i, i32(-1i) * -global0.x)), ~vec4<i32>(firstTrailingBit(u_input.e), -5584i, u_input.a.x, u_input.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c.zx))), _wgslsmith_div_f32(-262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1347f))))));
    global2 = Struct_4(var_0.a, global2.b, global2.c, global2.d, vec3<bool>(any(func_4(404i, max(vec4<i32>(-22130i, u_input.e, -30990i, -1i), vec4<i32>(global0.x, 0i, var_0.a, var_0.a)), _wgslsmith_f_op_f32(min(336f, 1003f))).e), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c.wzx, vec3<u32>(21462u, u_input.c.x, 38364u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.c.x, 1u), u_input.c.yyy, u_input.c.zyx)) < u_input.c.x, var_0.b.a));
    var var_1 = select(vec3<bool>(global2.d.a.a, true, all(select(global3.yw, !var_0.e.yx, global2.e.zz))), global3.yzz, global2.e);
    var var_2 = Struct_2(Struct_1(true));
    var var_3 = -1707f;
    global1 = array<Struct_4, 23>();
    var var_4 = func_4(global2.a, min(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, 28622i, -19953i, global0.x), vec4<i32>(u_input.e, -16542i, -2147483647i, global2.a))) >> (u_input.c % vec4<u32>(32u)), select(-vec4<i32>(2147483647i, 1i, 2147483647i, global2.a), abs(countOneBits(vec4<i32>(global0.x, -15228i, -3455i, 1i))), vec4<bool>(all(vec4<bool>(false, var_1.x, global2.c.a, var_0.c.a)), false, all(vec3<bool>(var_1.x, false, var_2.a.a)), all(vec3<bool>(false, false, var_2.a.a))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(166f)), _wgslsmith_f_op_f32(sign(-1310f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-594f, 134f, var_1.x)))))))).d;
    var var_5 = Struct_5(global2.d.a.a, vec3<i32>(i32(-1i) * -25639i, -func_3(1072f, vec3<i32>(var_0.a, 1i, u_input.a.x)).x, _wgslsmith_clamp_i32(var_0.a & u_input.e, 2147483647i, _wgslsmith_mod_i32(6947i, global2.a))) ^ _wgslsmith_add_vec3_i32(-min(vec3<i32>(-29252i, global0.x, 12430i), vec3<i32>(var_0.a, 13952i, 24718i)), -select(vec3<i32>(-56379i, -39185i, 1i), vec3<i32>(u_input.e, -33191i, -19249i), vec3<bool>(global2.c.a, global3.x, true))), abs(select(u_input.c.x, u_input.c.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

