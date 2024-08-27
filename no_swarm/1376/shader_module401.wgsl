struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(3264u, 0u), vec2<u32>(23138u, 39244u), vec2<u32>(63546u, 70904u), vec2<u32>(0u, 0u), vec2<u32>(0u, 12625u), vec2<u32>(4294967295u, 74970u), vec2<u32>(4294967295u, 1u), vec2<u32>(43150u, 33465u), vec2<u32>(1u, 7228u), vec2<u32>(80715u, 3110u), vec2<u32>(4294967295u, 46633u));

var<private> global1: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = !vec3<bool>(_wgslsmith_add_i32(-global1.b, 1i) <= u_input.b.x, false, global1.d.x || (global1.a != 859f));
    global0 = array<vec2<u32>, 11>();
    var var_1 = ~_wgslsmith_mod_i32(~global1.b, 1i);
    global0 = array<vec2<u32>, 11>();
    var var_2 = 1i;
    return Struct_1(global1.a, max(global1.b, -_wgslsmith_add_i32(-1i >> (1u % 32u), _wgslsmith_add_i32(-33566i, 1i))), !global1.c, select(!vec2<bool>(global1.c.x, true), select(!(!global1.c.xw), !(!global1.d), any(select(global1.c.ywx, global1.c.yyz, global1.d.x))), !(!global1.d)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(690f, 249f, -636f) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a, 1078f, 143f)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.e.x, global1.a, global1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e.x, global1.e.x, 2251f) * vec3<f32>(-940f, -384f, -729f))))))));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4, arg_3: vec3<bool>) -> vec4<bool> {
    global0 = array<vec2<u32>, 11>();
    var var_0 = arg_0;
    let var_1 = Struct_4(!((arg_0.b.a.x | abs(-50883i)) == (_wgslsmith_dot_vec2_i32(arg_2.b.a.xy, var_0.b.a.zy) << (~4949u % 32u))), Struct_2(vec3<i32>(1i, u_input.b.x, _wgslsmith_div_i32(6847i & u_input.b.x, arg_0.c.b.b)), Struct_1(_wgslsmith_f_op_f32(trunc(975f)), _wgslsmith_mod_i32(var_0.e.d.b, u_input.a), select(vec4<bool>(var_0.c.d.c.x, arg_3.x, arg_3.x, global1.c.x), select(vec4<bool>(arg_2.a, arg_3.x, var_0.c.d.d.x, arg_2.d.c.b.c.x), vec4<bool>(true, var_0.d.d.x, global1.c.x, global1.c.x), vec4<bool>(var_0.e.d.d.x, true, var_0.d.d.x, arg_2.a)), false & arg_0.c.d.c.x), vec2<bool>(true, true), vec3<f32>(-1045f, global1.a, _wgslsmith_f_op_f32(-647f - -431f))), vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.c.x)) - -965f), _wgslsmith_f_op_f32(-235f * -409f), _wgslsmith_f_op_f32(arg_2.d.c.c.x - _wgslsmith_f_op_f32(-global1.e.x))), func_2()), 592f, arg_0);
    let var_2 = Struct_5(-arg_2.d.e.a.zy, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(23229u, 781u, 4294967295u) | max(87246u, 37080u), ~(~41207u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-arg_2.d.c.a.zy, u_input.b), vec2<i32>(arg_2.d.c.a.x, u_input.b.x) | -vec2<i32>(u_input.a, arg_2.b.a.x)), _wgslsmith_clamp_i32(reverseBits(global1.b >> (21164u % 32u)), 11449i, -2147483647i)), ~(-select(vec3<i32>(global1.b, global1.b, u_input.b.x), -var_1.b.a, !arg_0.b.d.d.x)));
    var var_3 = Struct_1(420f, max(_wgslsmith_clamp_i32(1i, abs(1i | u_input.a), -4056i), 45669i), var_0.c.b.c, arg_3.zz, _wgslsmith_f_op_vec3_f32(-arg_0.e.c.zyz));
    return var_3.c;
}

fn func_1() -> i32 {
    let var_0 = func_2();
    var var_1 = Struct_3(global1.a, Struct_2(select(vec3<i32>(2147483647i, var_0.b, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -17906i, 0i), vec3<i32>(0i, global1.b, global1.b)), vec3<bool>(true, true, false)) >> (~(~vec3<u32>(4294967295u, 57812u, 0u)) % vec3<u32>(32u)), var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, global1.a, 1774f, var_0.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(587f, -1523f, -625f, 1641f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(215f, global1.e.x, var_0.e.x, -111f) + vec4<f32>(var_0.a, -1000f, 249f, var_0.a)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-906f, var_0.e.x, var_0.e.x, 271f))))), var_0), Struct_2(-(vec3<i32>(-1i) * -vec3<i32>(global1.b, 54852i, -2147483647i)), Struct_1(-1588f, countOneBits(2147483647i), func_3(Struct_3(var_0.e.x, Struct_2(vec3<i32>(u_input.a, global1.b, var_0.b), var_0, vec4<f32>(global1.e.x, 474f, 143f, var_0.a), var_0), Struct_2(vec3<i32>(1i, -1i, global1.b), Struct_1(205f, -1i, vec4<bool>(var_0.c.x, true, false, true), global1.c.xx, global1.e), vec4<f32>(var_0.e.x, -142f, var_0.a, 295f), var_0), var_0, Struct_2(vec3<i32>(-2147483647i, 2147483647i, var_0.b), var_0, vec4<f32>(var_0.e.x, -876f, 1206f, -289f), Struct_1(264f, 2147483647i, global1.c, vec2<bool>(false, global1.d.x), vec3<f32>(282f, var_0.e.x, global1.e.x)))), _wgslsmith_f_op_f32(595f - var_0.e.x), Struct_4(false, Struct_2(vec3<i32>(global1.b, u_input.b.x, var_0.b), var_0, vec4<f32>(1216f, var_0.a, global1.a, -1386f), var_0), global1.e.x, Struct_3(1665f, Struct_2(vec3<i32>(u_input.b.x, var_0.b, 32046i), var_0, vec4<f32>(var_0.e.x, -832f, 1323f, -212f), Struct_1(global1.e.x, -25677i, vec4<bool>(false, var_0.c.x, false, false), vec2<bool>(false, global1.c.x), global1.e)), Struct_2(vec3<i32>(-8107i, -2147483647i, global1.b), Struct_1(var_0.a, 2147483647i, var_0.c, global1.d, global1.e), vec4<f32>(var_0.e.x, 1000f, var_0.e.x, 244f), var_0), Struct_1(131f, var_0.b, vec4<bool>(false, true, false, false), vec2<bool>(false, true), var_0.e), Struct_2(vec3<i32>(var_0.b, 14266i, var_0.b), Struct_1(-1000f, var_0.b, global1.c, vec2<bool>(var_0.d.x, var_0.c.x), vec3<f32>(var_0.a, var_0.e.x, 943f)), vec4<f32>(781f, var_0.e.x, var_0.a, global1.a), Struct_1(var_0.a, u_input.b.x, vec4<bool>(global1.c.x, false, global1.d.x, global1.d.x), vec2<bool>(true, var_0.d.x), global1.e)))), !global1.c.xww), var_0.c.xy, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, global1.a, var_0.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-420f, 1211f, global1.a) + global1.e))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global1.a)), global1.a, 355f, var_0.a)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a)) + 127f), _wgslsmith_clamp_i32(~8309i, -1713i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b, 15566i, u_input.b.x, 34493i), vec4<i32>(var_0.b, var_0.b, global1.b, -2147483647i))), select(var_0.c, vec4<bool>(global1.c.x, false, true, true), vec4<bool>(global1.c.x, var_0.d.x, var_0.c.x, true)), var_0.d, vec3<f32>(var_0.e.x, 1639f, _wgslsmith_f_op_f32(1226f * 682f)))), func_2(), Struct_2(vec3<i32>(firstLeadingBit(2147483647i) << (0u % 32u), ~_wgslsmith_add_i32(-9851i, 2147483647i), var_0.b), var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, var_0.a, global1.e.x, -976f) + vec4<f32>(-1000f, global1.a, 622f, global1.a)) * vec4<f32>(241f, -524f, 321f, 328f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1204f, 438f, global1.a, var_0.a)))), var_0));
    let var_2 = var_1.e;
    let var_3 = 61956u;
    let var_4 = var_2.b.c;
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(func_1(), u_input.a);
    var var_1 = _wgslsmith_sub_u32(~(~72021u >> (~4294967295u % 32u)), abs(4523u)) ^ _wgslsmith_clamp_u32(~countOneBits(abs(721u)), select(~select(46263u, 40071u, global1.d.x), 77928u, -global1.b >= -53729i), 1u);
    var var_2 = min(vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(38439u, 0u, 35055u)), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(1u, 1u, 26704u)), select(vec3<u32>(33906u, 1u, 42836u), vec3<u32>(15552u, 16134u, 1u), vec3<bool>(true, true, true)))), 1u, _wgslsmith_sub_u32(1u, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(88090u, 17955u))))), ~(~vec4<u32>(firstLeadingBit(75799u), 1u, _wgslsmith_clamp_u32(0u, 0u, 89263u), ~11313u)));
    var_1 = var_2.x ^ ~(32241u << (~(~0u) % 32u));
    let var_3 = Struct_5(-(abs(u_input.b) ^ countOneBits(vec2<i32>(global1.b, -55232i))) ^ -u_input.b, 4294967295u, 17528i >> (~_wgslsmith_mod_u32(min(var_2.x, var_2.x), countOneBits(var_2.x)) % 32u), _wgslsmith_add_vec3_i32(vec3<i32>(84350i, firstLeadingBit(countOneBits(23569i)), firstTrailingBit(abs(-1i))), select(~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global1.b, -21047i), vec3<i32>(-23704i, -39805i, u_input.a)), vec3<i32>(reverseBits(-1i), 30519i, firstTrailingBit(u_input.b.x)), global1.d.x)));
    var var_4 = global1.a <= _wgslsmith_f_op_f32(ceil(-729f));
    global0 = array<vec2<u32>, 11>();
    var var_5 = Struct_4(~38914u > _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, 4294967295u, 36501u, var_3.b) >> (~vec4<u32>(var_2.x, var_3.b, 4294967295u, var_2.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(6593u, 22509u, var_3.b, 57107u), vec4<u32>(4294967295u, 4294967295u, 13722u, 1u), vec4<bool>(false, true, false, global1.d.x)), select(vec4<u32>(var_3.b, 1u, var_2.x, 39499u), vec4<u32>(35302u, 39254u, var_2.x, var_2.x), global1.c))), Struct_2(~select(~var_3.d, _wgslsmith_sub_vec3_i32(var_3.d, var_3.d), !global1.d.x), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.e.x)))), ~(-90697i), select(!vec4<bool>(global1.c.x, global1.d.x, global1.d.x, global1.d.x), !vec4<bool>(global1.d.x, global1.d.x, false, false), vec4<bool>(false, global1.c.x, global1.c.x, true)), !vec2<bool>(global1.c.x, global1.d.x), global1.e), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.e.x, -593f, 668f, 382f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, -1389f, global1.e.x, global1.e.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a, -1197f, -500f, global1.e.x), vec4<f32>(global1.e.x, global1.e.x, 682f, global1.e.x), vec4<bool>(true, global1.c.x, global1.c.x, global1.c.x)))))), Struct_1(_wgslsmith_f_op_f32(sign(global1.e.x)), _wgslsmith_mod_i32(~2147483647i, global1.b << (4294967295u % 32u)), global1.c, global1.d, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global1.e))))), global1.a, Struct_3(global1.e.x, Struct_2(abs(select(vec3<i32>(var_3.d.x, global1.b, var_3.d.x), var_3.d, global1.d.x)), func_2(), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, 1000f, global1.e.x)))), Struct_1(_wgslsmith_f_op_f32(340f * 968f), -69744i, func_3(Struct_3(1373f, Struct_2(vec3<i32>(-2147483647i, 18750i, var_3.d.x), Struct_1(368f, var_3.a.x, vec4<bool>(false, global1.c.x, false, true), vec2<bool>(false, global1.c.x), vec3<f32>(170f, -2076f, 289f)), vec4<f32>(1658f, 330f, global1.e.x, global1.e.x), Struct_1(-2312f, 11086i, global1.c, global1.d, global1.e)), Struct_2(var_3.d, Struct_1(global1.a, 26091i, vec4<bool>(global1.c.x, global1.c.x, false, global1.c.x), global1.d, vec3<f32>(global1.e.x, 1530f, -931f)), vec4<f32>(global1.e.x, 665f, -232f, -170f), Struct_1(1963f, var_3.c, global1.c, vec2<bool>(true, true), vec3<f32>(-194f, global1.e.x, 1586f))), Struct_1(global1.a, u_input.a, global1.c, global1.d, vec3<f32>(global1.e.x, global1.e.x, global1.e.x)), Struct_2(var_3.d, Struct_1(global1.a, -2147483647i, vec4<bool>(global1.c.x, global1.c.x, false, global1.c.x), global1.c.zz, vec3<f32>(global1.e.x, global1.a, 1000f)), vec4<f32>(555f, 1000f, -1364f, 307f), Struct_1(-1200f, -37475i, vec4<bool>(true, false, global1.d.x, global1.d.x), global1.d, vec3<f32>(1849f, global1.a, global1.e.x)))), global1.e.x, Struct_4(true, Struct_2(var_3.d, Struct_1(180f, 9506i, vec4<bool>(global1.d.x, false, true, global1.c.x), vec2<bool>(global1.d.x, global1.d.x), vec3<f32>(498f, -468f, global1.e.x)), vec4<f32>(977f, global1.a, 580f, -1019f), Struct_1(-192f, global1.b, vec4<bool>(global1.c.x, true, global1.d.x, global1.d.x), vec2<bool>(global1.d.x, global1.c.x), vec3<f32>(-651f, 822f, -977f))), global1.e.x, Struct_3(global1.e.x, Struct_2(var_3.d, Struct_1(global1.e.x, 60254i, global1.c, global1.c.yy, global1.e), vec4<f32>(global1.e.x, global1.a, 1561f, global1.e.x), Struct_1(global1.e.x, -2147483647i, global1.c, vec2<bool>(global1.c.x, true), vec3<f32>(2118f, global1.e.x, 619f))), Struct_2(var_3.d, Struct_1(global1.a, 12772i, global1.c, global1.d, vec3<f32>(-785f, 2461f, global1.a)), vec4<f32>(global1.e.x, 1007f, global1.e.x, 898f), Struct_1(-164f, 2147483647i, vec4<bool>(global1.c.x, false, true, global1.d.x), global1.c.zy, global1.e)), Struct_1(global1.a, global1.b, global1.c, vec2<bool>(global1.d.x, global1.d.x), global1.e), Struct_2(var_3.d, Struct_1(global1.e.x, u_input.a, global1.c, vec2<bool>(global1.d.x, global1.d.x), vec3<f32>(-905f, global1.e.x, global1.e.x)), vec4<f32>(global1.e.x, global1.e.x, global1.a, -377f), Struct_1(1293f, -2147483647i, global1.c, global1.d, global1.e)))), vec3<bool>(false, global1.c.x, true)), !vec2<bool>(true, global1.d.x), global1.e)), Struct_2(-(var_3.d << (var_2.ywy % vec3<u32>(32u))), Struct_1(-1860f, -var_3.d.x, !vec4<bool>(true, global1.d.x, false, true), !vec2<bool>(false, global1.d.x), _wgslsmith_div_vec3_f32(global1.e, global1.e)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.e.x, global1.e.x, -1000f, -225f))), vec4<f32>(global1.a, global1.a, global1.a, -553f), !global1.c)), func_2()), Struct_1(_wgslsmith_f_op_f32(global1.a + global1.e.x), global1.b, vec4<bool>(global1.c.x, global1.c.x, true, global1.d.x), select(vec2<bool>(true, true), func_3(Struct_3(global1.e.x, Struct_2(vec3<i32>(global1.b, u_input.b.x, var_3.d.x), Struct_1(global1.a, global1.b, vec4<bool>(true, true, false, false), vec2<bool>(false, true), vec3<f32>(global1.e.x, -439f, global1.a)), vec4<f32>(global1.e.x, global1.e.x, global1.a, global1.e.x), Struct_1(-317f, 26734i, vec4<bool>(false, global1.c.x, true, global1.d.x), vec2<bool>(global1.d.x, global1.d.x), vec3<f32>(global1.a, 1061f, global1.e.x))), Struct_2(var_3.d, Struct_1(global1.a, -2147483647i, global1.c, vec2<bool>(false, global1.d.x), global1.e), vec4<f32>(global1.e.x, 348f, 1000f, 894f), Struct_1(global1.a, 2147483647i, vec4<bool>(global1.c.x, global1.d.x, true, true), global1.d, global1.e)), Struct_1(global1.e.x, 11458i, global1.c, global1.d, vec3<f32>(global1.a, global1.a, 764f)), Struct_2(vec3<i32>(64220i, u_input.b.x, 33846i), Struct_1(global1.a, global1.b, global1.c, global1.c.zz, vec3<f32>(global1.e.x, -1000f, global1.a)), vec4<f32>(global1.e.x, -226f, global1.a, global1.a), Struct_1(global1.e.x, -13123i, global1.c, vec2<bool>(global1.d.x, true), vec3<f32>(global1.e.x, -812f, 1098f)))), global1.e.x, Struct_4(global1.d.x, Struct_2(vec3<i32>(-27438i, -3549i, global1.b), Struct_1(global1.a, u_input.b.x, vec4<bool>(global1.c.x, true, global1.c.x, global1.c.x), global1.d, vec3<f32>(1333f, 897f, global1.a)), vec4<f32>(-1156f, global1.a, global1.a, 930f), Struct_1(global1.a, u_input.a, vec4<bool>(global1.c.x, global1.c.x, true, global1.d.x), vec2<bool>(true, global1.c.x), global1.e)), global1.e.x, Struct_3(global1.a, Struct_2(vec3<i32>(var_3.d.x, 2147483647i, var_3.a.x), Struct_1(-2327f, -5187i, global1.c, vec2<bool>(true, global1.d.x), global1.e), vec4<f32>(-1301f, global1.a, 771f, -148f), Struct_1(global1.a, global1.b, global1.c, vec2<bool>(true, false), vec3<f32>(-526f, -740f, 1000f))), Struct_2(vec3<i32>(-2147483647i, -2759i, u_input.a), Struct_1(global1.a, -1i, vec4<bool>(global1.c.x, global1.d.x, false, false), global1.d, vec3<f32>(global1.e.x, 1052f, global1.e.x)), vec4<f32>(198f, 1146f, 994f, -374f), Struct_1(global1.e.x, var_3.c, global1.c, global1.c.ww, global1.e)), Struct_1(-727f, 2147483647i, global1.c, vec2<bool>(true, global1.d.x), vec3<f32>(1090f, global1.e.x, global1.a)), Struct_2(var_3.d, Struct_1(global1.e.x, u_input.b.x, vec4<bool>(global1.c.x, true, false, true), vec2<bool>(true, global1.d.x), vec3<f32>(global1.e.x, 1183f, -995f)), vec4<f32>(global1.e.x, -1000f, 300f, global1.e.x), Struct_1(-1121f, var_3.a.x, vec4<bool>(global1.c.x, true, true, global1.d.x), vec2<bool>(false, global1.d.x), global1.e)))), global1.c.yyx).wx, func_3(Struct_3(global1.e.x, Struct_2(vec3<i32>(u_input.a, u_input.b.x, 20737i), Struct_1(global1.e.x, 1i, vec4<bool>(global1.d.x, false, global1.d.x, global1.c.x), global1.d, global1.e), vec4<f32>(global1.a, -1250f, global1.a, -1238f), Struct_1(-828f, -2147483647i, vec4<bool>(global1.d.x, global1.d.x, global1.c.x, global1.c.x), vec2<bool>(true, false), global1.e)), Struct_2(vec3<i32>(global1.b, global1.b, var_3.a.x), Struct_1(global1.e.x, u_input.b.x, global1.c, global1.d, global1.e), vec4<f32>(322f, global1.e.x, 326f, global1.e.x), Struct_1(global1.e.x, -70393i, global1.c, vec2<bool>(false, true), global1.e)), Struct_1(global1.a, var_3.a.x, global1.c, global1.d, vec3<f32>(global1.a, 467f, global1.a)), Struct_2(var_3.d, Struct_1(global1.e.x, global1.b, vec4<bool>(global1.d.x, true, true, true), global1.d, global1.e), vec4<f32>(822f, -1527f, -924f, -146f), Struct_1(global1.a, 42834i, global1.c, global1.c.zw, global1.e))), global1.e.x, Struct_4(global1.d.x, Struct_2(vec3<i32>(var_3.a.x, global1.b, -48971i), Struct_1(-1516f, var_3.c, vec4<bool>(global1.d.x, false, global1.c.x, true), global1.c.zy, global1.e), vec4<f32>(global1.e.x, global1.e.x, global1.a, global1.e.x), Struct_1(global1.e.x, global1.b, global1.c, global1.c.xz, vec3<f32>(525f, -129f, -146f))), 2464f, Struct_3(498f, Struct_2(var_3.d, Struct_1(-1000f, var_3.a.x, global1.c, global1.d, vec3<f32>(global1.e.x, global1.a, -226f)), vec4<f32>(-996f, -1077f, 464f, -2321f), Struct_1(-649f, 57680i, global1.c, vec2<bool>(global1.c.x, true), vec3<f32>(-1000f, global1.a, global1.e.x))), Struct_2(var_3.d, Struct_1(global1.a, u_input.b.x, global1.c, global1.c.wy, global1.e), vec4<f32>(global1.e.x, 1000f, 1065f, -1191f), Struct_1(-998f, 13378i, vec4<bool>(false, false, global1.c.x, global1.d.x), vec2<bool>(global1.c.x, false), vec3<f32>(global1.a, 735f, 1100f))), Struct_1(431f, var_3.a.x, global1.c, global1.c.wx, global1.e), Struct_2(var_3.d, Struct_1(global1.a, 1i, global1.c, vec2<bool>(false, global1.d.x), vec3<f32>(-461f, 1000f, global1.e.x)), vec4<f32>(-792f, 1261f, global1.a, 414f), Struct_1(global1.a, 2147483647i, global1.c, global1.c.ww, vec3<f32>(global1.e.x, -180f, -237f))))), global1.c.zzw).ww), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.e)) * _wgslsmith_f_op_vec3_f32(-global1.e))), Struct_2(_wgslsmith_sub_vec3_i32(var_3.d, firstTrailingBit(var_3.d)), func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, -669f, -1170f, global1.e.x)), func_2())));
    let var_6 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-16480i << (var_3.b % 32u), var_3.d.x), _wgslsmith_add_vec2_i32(-var_3.a, -vec2<i32>(var_3.d.x, -1i))), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.a.yy, global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~var_3.b, ~22274u), 11u)] & (_wgslsmith_sub_vec2_u32(select(global0[_wgslsmith_index_u32(0u, 11u)], vec2<u32>(var_3.b, var_3.b), global1.c.x), vec2<u32>(var_2.x, 97156u)) & global0[_wgslsmith_index_u32(~var_2.x, 11u)]), u_input.a, ~var_2.xxx);
}

