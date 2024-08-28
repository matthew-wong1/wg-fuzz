struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 581f;

var<private> global1: array<Struct_4, 5>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: u32) -> i32 {
    var var_0 = ~abs(-abs(abs(vec4<i32>(0i, arg_2.x, arg_0.x, arg_0.x))));
    var var_1 = !(!vec2<bool>(select(true, true, select(true, false, false)), false));
    global1 = array<Struct_4, 5>();
    let var_2 = vec2<f32>(1130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -838f) + _wgslsmith_f_op_f32(ceil(345f)))))));
    var var_3 = vec3<bool>(!var_1.x, !all(!vec2<bool>(var_1.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_f_op_f32(min(var_2.x, var_2.x)))) < _wgslsmith_f_op_f32(-var_2.x));
    return select(-u_input.a, arg_2.x, var_1.x);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: bool) -> vec4<i32> {
    global1 = array<Struct_4, 5>();
    global1 = array<Struct_4, 5>();
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1165f))));
    var var_1 = select(vec2<bool>(all(vec3<bool>(true, true, true)), arg_2.c.x <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(197f - arg_0.d)))), arg_2.b, arg_2.b);
    var_1 = arg_2.b;
    return ~arg_0.c;
}

fn func_1() -> Struct_2 {
    let var_0 = reverseBits(vec3<i32>(_wgslsmith_mod_i32(func_2(vec2<i32>(u_input.a, -1i), vec2<i32>(1i, 17049i), vec4<i32>(53833i, 1i, u_input.a, 22142i), 1u), _wgslsmith_mod_i32(u_input.a, u_input.a)), min(1i, 1i), abs(~u_input.a))) << (firstLeadingBit(max(vec3<u32>(min(18463u, u_input.c), u_input.b, 1u), reverseBits(vec3<u32>(u_input.b, u_input.b, 1u)))) % vec3<u32>(32u));
    var var_1 = Struct_3(Struct_1(false), Struct_1(all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(var_0.x, 2147483647i, u_input.a, u_input.a)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-35805i, var_0.x, var_0.x, var_0.x), vec4<i32>(u_input.a, 1775i, u_input.a, 0i)) & (func_3(Struct_3(Struct_1(false), Struct_1(false), vec4<i32>(u_input.a, u_input.a, -72531i, var_0.x), 573f), var_0.zy, Struct_2(47692u, vec2<bool>(false, true), vec2<f32>(602f, 1284f)), true) >> (vec4<u32>(u_input.c, 1u, u_input.c, u_input.b) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1021f))));
    var var_2 = -(~var_1.c.x);
    var_1 = Struct_3(Struct_1(true & var_1.a.a), var_1.a, ~var_1.c, _wgslsmith_f_op_f32(725f - var_1.d));
    var var_3 = u_input.a;
    return Struct_2(~0u, vec2<bool>(var_1.b.a, var_1.b.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2190f, 152f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1378f), _wgslsmith_f_op_f32(f32(-1f) * -336f)), !(!var_1.a.a))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = arg_2;
    global1 = array<Struct_4, 5>();
    var var_1 = Struct_3(Struct_1(false), arg_1.a, arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(856f - _wgslsmith_f_op_f32(-arg_0.c.x)) + arg_1.d));
    var var_2 = Struct_2(~_wgslsmith_div_u32(_wgslsmith_mult_u32(16903u >> (0u % 32u), 1u), ~(~21910u)), vec2<bool>(any(arg_0.b), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1135f, _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_vec2_f32(-arg_2.wz)) + arg_0.c));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-703f, _wgslsmith_f_op_f32(-arg_0.c.x)))))));
    return vec4<i32>(u_input.a, 52659i, _wgslsmith_add_i32(1i, -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.c.x, arg_1.c.x), var_1.c.zz), vec2<i32>(arg_1.c.x, u_input.a))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -func_4(func_1(), Struct_3(Struct_1(false), Struct_1(false), min(vec4<i32>(u_input.a, 50289i, -46687i, -1i), vec4<i32>(-13490i, 1i, -1i, u_input.a)), _wgslsmith_f_op_f32(-1317f + -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-446f, 1336f, 654f, -1193f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1336f, -724f, -411f, 610f))), ~(~vec2<u32>(7120u, 0u))) | max(-func_4(Struct_2(u_input.b, vec2<bool>(true, true), vec2<f32>(1065f, -994f)), Struct_3(Struct_1(false), Struct_1(true), vec4<i32>(4637i, u_input.a, u_input.a, -1i), -261f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(822f, 464f, 761f, 743f)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, 1u))), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, 2147483647i, 0i, u_input.a), func_4(Struct_2(u_input.c, vec2<bool>(false, false), vec2<f32>(-754f, 396f)), Struct_3(Struct_1(false), Struct_1(true), vec4<i32>(u_input.a, -1i, u_input.a, 1i), 701f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-435f, 712f, -684f, -469f)), min(vec2<u32>(33085u, 1u), vec2<u32>(11327u, u_input.b)))));
    let var_1 = Struct_3(Struct_1(abs(reverseBits(31351i)) > abs(abs(var_0.x))), Struct_1(true), ~_wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(var_0, var_0), select(vec4<i32>(var_0.x, 6088i, u_input.a, -1i), ~var_0, false)), -747f);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, -107f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1257f, var_1.d), vec2<f32>(var_1.d, -101f)))))));
    var var_3 = var_1;
    let var_4 = var_3.a.a;
    global1 = array<Struct_4, 5>();
    global1 = array<Struct_4, 5>();
    var var_5 = vec2<bool>(var_1.b.a, all(select(select(!vec4<bool>(var_3.b.a, true, var_3.a.a, false), select(vec4<bool>(var_3.a.a, var_3.b.a, var_3.b.a, var_3.a.a), vec4<bool>(var_1.b.a, var_1.b.a, var_1.b.a, var_3.a.a), var_3.a.a), var_1.b.a), !select(vec4<bool>(false, var_3.a.a, true, var_1.b.a), vec4<bool>(var_1.a.a, false, false, true), true), !(!vec4<bool>(var_3.b.a, false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(func_4(Struct_2(u_input.c, vec2<bool>(var_5.x, true), var_2), Struct_3(var_3.b, Struct_1(var_1.b.a), var_1.c, var_3.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.d, -856f, var_3.d)), vec2<u32>(u_input.c, 39913u) >> (vec2<u32>(u_input.b, 9811u) % vec2<u32>(32u))).x << (_wgslsmith_sub_u32(u_input.b, reverseBits(u_input.b)) % 32u)));
}

