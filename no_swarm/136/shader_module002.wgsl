struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(-4572i, 1i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), 6366i, -1i, i32(-2147483648)), vec4<i32>(1i, 1i, 1i, i32(-2147483648)), vec4<i32>(46880i, 0i, 0i, 0i), vec4<i32>(-11327i, 0i, 1i, -46i), vec4<i32>(1i, 0i, 1i, 22695i), vec4<i32>(-1i, 2147483647i, -7675i, -26551i), vec4<i32>(2147483647i, 2147483647i, 8150i, -4563i), vec4<i32>(27191i, -1i, 2212i, 2147483647i), vec4<i32>(53707i, 1i, 30951i, -1i), vec4<i32>(-1i, 5028i, 3502i, i32(-2147483648)), vec4<i32>(-51882i, 51887i, i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, 39230i, 21157i, 1750i), vec4<i32>(2147483647i, 21661i, i32(-2147483648), -47344i), vec4<i32>(36626i, -1i, -1i, -65160i), vec4<i32>(-46821i, -16600i, 8395i, -1i), vec4<i32>(-17565i, 0i, -1i, 33853i), vec4<i32>(1i, 1i, 2147483647i, -30733i), vec4<i32>(62746i, -1i, -28103i, -1i), vec4<i32>(62063i, -1i, 2147483647i, 1322i), vec4<i32>(i32(-2147483648), 11828i, -23655i, 8481i), vec4<i32>(1i, -16547i, 29905i, 1i), vec4<i32>(-1i, 2147483647i, 1i, 1i), vec4<i32>(2562i, -1i, 0i, 38275i), vec4<i32>(51082i, 1i, 1i, -1i), vec4<i32>(-1i, -5035i, 23741i, 0i), vec4<i32>(40075i, i32(-2147483648), i32(-2147483648), -16989i), vec4<i32>(1876i, 0i, 1i, 14876i), vec4<i32>(-12568i, 0i, i32(-2147483648), -21963i), vec4<i32>(5624i, -25005i, 24819i, 53694i), vec4<i32>(2147483647i, 44984i, 2147483647i, -11964i), vec4<i32>(1i, 10422i, 0i, 2147483647i));

var<private> global2: array<Struct_3, 8>;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<i32>(-49848i, 4650i), vec3<bool>(true, false, true), 23192u), Struct_1(vec2<i32>(21822i, -31143i), vec3<bool>(false, false, false), 4294967295u), Struct_1(vec2<i32>(2147483647i, -60528i), vec3<bool>(false, true, false), 68537u), Struct_1(vec2<i32>(2147483647i, 90433i), vec3<bool>(true, false, true), 1u), Struct_1(vec2<i32>(22213i, 26787i), vec3<bool>(false, false, false), 50229u), Struct_1(vec2<i32>(43302i, 0i), vec3<bool>(false, false, false), 13682u), Struct_1(vec2<i32>(1i, 47765i), vec3<bool>(false, true, false), 38400u), Struct_1(vec2<i32>(-47024i, i32(-2147483648)), vec3<bool>(true, true, false), 51296u), Struct_1(vec2<i32>(-1i, 77385i), vec3<bool>(false, false, true), 27426u), Struct_1(vec2<i32>(-1i, -21865i), vec3<bool>(false, true, true), 0u), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec3<bool>(true, false, false), 0u), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec3<bool>(false, false, false), 4294967295u), Struct_1(vec2<i32>(i32(-2147483648), -49798i), vec3<bool>(false, false, true), 29389u), Struct_1(vec2<i32>(-942i, i32(-2147483648)), vec3<bool>(true, false, false), 1u), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec3<bool>(false, false, false), 94103u), Struct_1(vec2<i32>(2147483647i, 0i), vec3<bool>(false, true, false), 4294967295u), Struct_1(vec2<i32>(0i, 0i), vec3<bool>(true, false, true), 1u), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<bool>(false, false, false), 1u), Struct_1(vec2<i32>(-14399i, i32(-2147483648)), vec3<bool>(true, false, true), 4294967295u), Struct_1(vec2<i32>(-25294i, -1i), vec3<bool>(false, true, false), 0u), Struct_1(vec2<i32>(0i, -5655i), vec3<bool>(true, true, false), 51484u), Struct_1(vec2<i32>(i32(-2147483648), -19911i), vec3<bool>(true, false, false), 15643u), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec3<bool>(true, true, true), 17439u), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec3<bool>(false, true, true), 0u), Struct_1(vec2<i32>(-15190i, -1i), vec3<bool>(false, false, true), 2279u), Struct_1(vec2<i32>(2730i, 1i), vec3<bool>(true, true, false), 11325u), Struct_1(vec2<i32>(-24695i, -1i), vec3<bool>(false, false, false), 1u), Struct_1(vec2<i32>(-1i, 3768i), vec3<bool>(false, false, true), 0u), Struct_1(vec2<i32>(41946i, 2147483647i), vec3<bool>(false, true, false), 55716u), Struct_1(vec2<i32>(-27885i, 4181i), vec3<bool>(false, false, false), 4294967295u), Struct_1(vec2<i32>(0i, -25316i), vec3<bool>(true, true, true), 21333u), Struct_1(vec2<i32>(0i, 2147483647i), vec3<bool>(true, false, false), 1u));

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    global2 = array<Struct_3, 8>();
    var var_1 = ~global1[_wgslsmith_index_u32(0u, 32u)];
    global1 = array<vec4<i32>, 32>();
    let var_2 = vec4<bool>(false, any(vec4<bool>(global0.b.x && true, all(!var_0.b.yx), global0.b.x, global4.e.b.x)), any(select(vec4<bool>(all(var_0.b), any(vec4<bool>(arg_0.b.x, true, arg_0.b.x, global0.b.x)), true, true), !select(vec4<bool>(true, arg_0.b.x, global4.e.b.x, true), vec4<bool>(true, false, global0.b.x, arg_0.b.x), vec4<bool>(true, false, global4.e.b.x, var_0.b.x)), any(select(arg_0.b.xx, global0.b.zx, vec2<bool>(false, var_0.b.x))))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(28256i, firstLeadingBit(var_1.x)), _wgslsmith_mult_i32(-1i, 1i)) != _wgslsmith_mult_i32(-(var_0.a.x | var_1.x), ~(-5040i) & global4.e.a.x));
    return 20841i;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -arg_3.a.x, -func_3(Struct_1(vec2<i32>(global0.a.x, global0.a.x), global0.b, arg_1.x))), _wgslsmith_div_vec3_i32(vec3<i32>(~abs(global4.a.x), -12508i, global4.b), _wgslsmith_sub_vec3_i32(vec3<i32>(~arg_3.a.x, 1i, _wgslsmith_div_i32(42588i, -1i)), -vec3<i32>(-1i, -5908i, -1i) << (vec3<u32>(arg_3.c, 49560u, 25754u) % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(sign(arg_0))) - vec4<f32>(1372f, arg_0.x, _wgslsmith_f_op_f32(step(-178f, 1319f)), _wgslsmith_f_op_f32(-155f - arg_0.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0, arg_0)) + vec4<f32>(arg_0.x, arg_0.x, -937f, 1422f)), arg_0)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-652f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) * _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-969f + arg_0.x) * -1087f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(670f, -849f))))));
    let var_2 = global2[_wgslsmith_index_u32(~(~arg_1.x), 8u)];
    global1 = array<vec4<i32>, 32>();
    var var_3 = select(vec2<bool>(!any(select(global0.b.zz, vec2<bool>(false, false), arg_3.b.x)), false), select(!vec2<bool>(select(global0.b.x, arg_2, arg_3.b.x), true), vec2<bool>(false, all(select(global4.e.b, global4.e.b, arg_2))), vec2<bool>(arg_3.b.x, !any(vec2<bool>(false, true)))), vec2<bool>(arg_3.b.x, !all(vec2<bool>(true, global0.b.x))));
    return Struct_1(vec2<i32>(-1i, 15012i), vec3<bool>(true, true, global0.b.x), select(~(~(~0u)), ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, u_input.a.x, 4294967295u), ~u_input.a.x), any(!select(vec4<bool>(global4.e.b.x, true, false, var_3.x), vec4<bool>(arg_3.b.x, true, false, true), global0.b.x))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: i32) -> i32 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1619f, 475f, 1751f, 1000f)), true))))), global4.c, false, Struct_1(vec2<i32>(max(-global0.a.x, 7786i), 46024i), vec3<bool>(true, true, true), max(global4.c.x, ~(~global0.c))));
    let var_1 = _wgslsmith_div_vec4_i32(max(global1[_wgslsmith_index_u32(5353u, 32u)], vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.a.x, 1i, -1i, 1i), vec4<i32>(-23363i, -2147483647i, global4.e.a.x, global0.a.x)), vec4<i32>(arg_2, arg_2, -1i, -34029i)), firstTrailingBit(abs(0i)), var_0.a.x, -7952i)), -(~global1[_wgslsmith_index_u32(var_0.c, 32u)]));
    global1 = array<vec4<i32>, 32>();
    var var_2 = firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global4.d, u_input.a.x), ~_wgslsmith_div_u32(var_0.c, 7401u)), ~(_wgslsmith_sub_vec2_u32(u_input.a.zx, vec2<u32>(var_0.c, var_0.c)) | ~vec2<u32>(4294967295u, 110073u))));
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1104f), _wgslsmith_f_op_f32(sign(-936f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-507f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -734f))), 471f), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-439f, 1049f), _wgslsmith_f_op_f32(f32(-1f) * -1111f))), -1262f, 2232f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1000f))))), false)), select(abs(vec4<u32>(global4.e.c, var_0.c, 0u << (var_0.c % 32u), min(global0.c, 60736u))), firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(86036u, 11518u, global0.c, 0u), vec4<u32>(1u, 0u, 33603u, 0u))), select(select(vec4<bool>(false, arg_1.x, true, false), vec4<bool>(var_0.b.x, false, global0.b.x, var_0.b.x), !vec4<bool>(var_0.b.x, arg_1.x, true, global4.e.b.x)), vec4<bool>(global4.e.b.x, false, select(global4.e.b.x, global4.e.b.x, false), 38237i != global0.a.x), true)), any(select(!select(vec4<bool>(false, false, global4.e.b.x, arg_1.x), vec4<bool>(false, false, false, true), vec4<bool>(true, false, global4.e.b.x, var_0.b.x)), select(!vec4<bool>(true, var_0.b.x, true, true), !vec4<bool>(arg_1.x, var_0.b.x, false, false), true), select(vec4<bool>(var_0.b.x, true, true, false), !vec4<bool>(arg_1.x, false, arg_1.x, false), select(vec4<bool>(arg_1.x, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(var_0.b.x, arg_1.x, global4.e.b.x, arg_1.x))))), Struct_1((-var_0.a & (vec2<i32>(var_0.a.x, global4.e.a.x) >> (global4.c.zw % vec2<u32>(32u)))) << (~u_input.a.zx % vec2<u32>(32u)), vec3<bool>(1u <= _wgslsmith_add_u32(4294967295u, var_0.c), true, select(!var_0.b.x, global0.b.x, true)), u_input.a.x));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<i32>(global4.b ^ func_1(vec3<i32>(10560i, 1i, -17042i), !vec2<bool>(true, global4.e.b.x), _wgslsmith_div_i32(global4.b, 0i)), -13138i), func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 2003f, 1037f, -495f)))), vec4<f32>(_wgslsmith_f_op_f32(103f + -1000f), _wgslsmith_div_f32(1045f, 1354f), -1165f, _wgslsmith_f_op_f32(-978f + 752f)))), firstLeadingBit(global4.c), true, func_2(vec4<f32>(_wgslsmith_f_op_f32(abs(1110f)), -460f, _wgslsmith_f_op_f32(1404f + -759f), 1f), global4.c, all(vec2<bool>(true, true)), func_2(vec4<f32>(250f, 1061f, 1135f, 171f), ~global4.c, global4.e.a.x <= global0.a.x, func_2(vec4<f32>(182f, -249f, 1000f, -2064f), vec4<u32>(u_input.a.x, global0.c, 4294967295u, 53651u), global4.e.b.x, Struct_1(vec2<i32>(global4.e.a.x, global0.a.x), vec3<bool>(global0.b.x, false, global4.e.b.x), u_input.a.x))))).b, global4.e.c);
    global1 = array<vec4<i32>, 32>();
    let var_1 = global0.a;
    var var_2 = global0.c;
    var var_3 = Struct_2(~max(vec3<i32>(firstTrailingBit(var_0.a.x), -73755i, -5233i), ~select(vec3<i32>(72321i, global0.a.x, global4.b), global4.a, vec3<bool>(global0.b.x, var_0.b.x, global0.b.x))), var_0.a.x, vec4<u32>(abs(reverseBits(global4.c.x)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(12304u, global0.c, global4.e.c), max(global4.c.zyz, vec3<u32>(1u, 71138u, u_input.a.x))), func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-956f, 602f, 210f, 1067f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 186f, -668f, 190f) * vec4<f32>(458f, -2513f, -1553f, 597f)))), ~global4.c, var_0.b.x, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1152f, -1000f, -1023f, -186f)), countOneBits(vec4<u32>(u_input.a.x, 13241u, 34529u, 0u)), var_0.b.x, global3[_wgslsmith_index_u32(~3893u, 32u)])).c, abs(~95724u)), 90250u, Struct_1(global0.a, var_0.b, u_input.a.x));
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(469f, -738f, -213f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(917f, -1656f, -1199f), vec3<f32>(-1734f, 1144f, -1000f)))))), all(!var_0.b.zz) && true)), var_3.e);
    var var_5 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(global0.a, -(vec2<i32>(19768i, -2147483647i) ^ vec2<i32>(var_3.e.a.x, -7156i))) << (~vec2<u32>(global0.c, ~var_4.b.c) % vec2<u32>(32u)), global4.a);
}

