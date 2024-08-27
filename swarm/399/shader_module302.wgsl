struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(-35744i, 2147483647i), false, vec2<i32>(-74064i, 1i), vec2<f32>(-217f, -1178f), 63659i), Struct_2(Struct_1(94641i, 0i), false, vec2<i32>(2147483647i, 27920i), vec2<f32>(-376f, 778f), i32(-2147483648)), Struct_2(Struct_1(1i, 0i), false, vec2<i32>(0i, -9339i), vec2<f32>(-310f, -1511f), -600i), Struct_2(Struct_1(-30460i, 2147483647i), false, vec2<i32>(-6734i, 34160i), vec2<f32>(-435f, 183f), 0i), Struct_2(Struct_1(1i, 60421i), true, vec2<i32>(-30767i, 1i), vec2<f32>(-1017f, -1000f), -56249i), Struct_2(Struct_1(24835i, 17532i), false, vec2<i32>(0i, 0i), vec2<f32>(-1444f, -375f), 0i), Struct_2(Struct_1(-31018i, -13524i), false, vec2<i32>(2147483647i, -1i), vec2<f32>(249f, 1949f), 0i), Struct_2(Struct_1(-50760i, 34680i), false, vec2<i32>(1i, -54956i), vec2<f32>(917f, -805f), 9026i), Struct_2(Struct_1(-1514i, -48478i), false, vec2<i32>(-42721i, i32(-2147483648)), vec2<f32>(587f, 1332f), i32(-2147483648)), Struct_2(Struct_1(i32(-2147483648), 0i), false, vec2<i32>(-177i, 1i), vec2<f32>(-133f, 115f), -15188i), Struct_2(Struct_1(-1i, 13940i), false, vec2<i32>(11805i, 2147483647i), vec2<f32>(-1000f, 544f), 8397i), Struct_2(Struct_1(0i, i32(-2147483648)), false, vec2<i32>(32600i, -1i), vec2<f32>(489f, 555f), 0i), Struct_2(Struct_1(-49910i, 20979i), false, vec2<i32>(i32(-2147483648), 0i), vec2<f32>(1000f, -2100f), 1i), Struct_2(Struct_1(0i, -1i), false, vec2<i32>(-19778i, -1i), vec2<f32>(-1000f, -328f), 1i), Struct_2(Struct_1(2147483647i, 2147483647i), false, vec2<i32>(-1i, 1024i), vec2<f32>(-854f, -200f), -9014i), Struct_2(Struct_1(-1i, -1i), true, vec2<i32>(1i, 10773i), vec2<f32>(1396f, -207f), -14998i), Struct_2(Struct_1(i32(-2147483648), -1i), false, vec2<i32>(-1i, i32(-2147483648)), vec2<f32>(-448f, -785f), -1i), Struct_2(Struct_1(-1i, -1i), false, vec2<i32>(10029i, i32(-2147483648)), vec2<f32>(-1946f, 2632f), -1i));

var<private> global2: f32 = 1609f;

var<private> global3: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(320f, -1251f), vec2<f32>(1009f, 453f), vec2<f32>(-1185f, -1655f), vec2<f32>(-1008f, 1260f), vec2<f32>(190f, -1000f), vec2<f32>(-759f, -402f), vec2<f32>(-472f, -1000f), vec2<f32>(363f, -445f), vec2<f32>(143f, -1352f), vec2<f32>(1279f, -1233f), vec2<f32>(-152f, 1578f), vec2<f32>(1112f, 1842f), vec2<f32>(405f, 574f), vec2<f32>(509f, 1625f), vec2<f32>(-959f, 1309f), vec2<f32>(2312f, 1000f), vec2<f32>(-947f, 1024f), vec2<f32>(1529f, 809f), vec2<f32>(-1000f, 710f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32) -> u32 {
    let var_0 = u_input.c;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-850f + arg_1.d.x));
    var var_1 = !select(select(vec4<bool>(true, arg_0.x, false, true), !(!vec4<bool>(true, true, true, arg_0.x)), arg_1.c.x != _wgslsmith_add_i32(-2147483647i, u_input.d)), vec4<bool>(!arg_0.x, arg_0.x, select(false, false, arg_1.b || false), arg_0.x), vec4<bool>(true, any(select(vec2<bool>(false, arg_0.x), vec2<bool>(false, false), arg_0.x)), all(select(vec4<bool>(false, true, arg_0.x, false), vec4<bool>(false, arg_0.x, false, true), vec4<bool>(false, true, arg_1.b, false))), false));
    let var_2 = firstLeadingBit(~(~vec3<i32>(~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1.c.x, arg_1.c.x), vec3<i32>(34574i, 44144i, u_input.d)), arg_1.e)));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-919f, 805f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(209f, 465f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.x, 322f) * vec2<f32>(arg_2, 375f))) - _wgslsmith_f_op_vec2_f32(exp2(arg_1.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.d.x, arg_1.d.x))), _wgslsmith_div_vec2_f32(arg_1.d, arg_1.d))))));
    return u_input.c;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    var var_0 = (!(!any(vec2<bool>(false, false))) | any(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))) || (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(abs(arg_0.x)), false)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x >= -1941f))));
    var_0 = select(false, false, (firstLeadingBit(func_3(vec2<bool>(false, false), Struct_2(Struct_1(u_input.a, u_input.d), true, vec2<i32>(u_input.a, u_input.a), arg_0.yw, u_input.d), -805f)) <= 4294967295u) && false);
    var var_1 = Struct_1(0i, -2147483647i);
    global3 = array<vec2<f32>, 19>();
    var var_2 = global1[_wgslsmith_index_u32(u_input.e, 18u)];
    return all(select(select(select(!vec3<bool>(true, var_2.b, false), !vec3<bool>(true, var_2.b, true), vec3<bool>(var_2.b, var_2.b, false)), select(vec3<bool>(true, var_2.b, true), vec3<bool>(var_2.b, var_2.b, false), var_2.d.x <= 479f), false), !select(select(vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, var_2.b), vec3<bool>(true, false, false)), all(!(!vec2<bool>(var_2.b, true)))));
}

fn func_1() -> Struct_3 {
    global1 = array<Struct_2, 18>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.b, 18u)];
    global1 = array<Struct_2, 18>();
    var var_1 = (_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, 1i), reverseBits(vec3<i32>(0i, 0i, var_0.a.b) & vec3<i32>(u_input.d, -59i, var_0.e))) >> (0u % 32u)) == 2409i;
    var var_2 = !(!(!vec3<bool>(func_2(vec4<f32>(var_0.d.x, 1046f, -1935f, var_0.d.x)), true, false)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.d.x, 156f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1433f, -1018f, var_0.d.x) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, -200f, var_0.d.x), vec3<f32>(-1000f, -626f, 923f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(880f)), _wgslsmith_f_op_f32(abs(-1591f)), -498f))), Struct_2(Struct_1(-8996i << ((u_input.c & u_input.b) % 32u), -_wgslsmith_mult_i32(u_input.d, var_0.c.x)), func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d.x, var_0.d.x, -821f, var_0.d.x)))), abs(countOneBits(var_0.c)) & var_0.c, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, var_0.d.x)))))), _wgslsmith_sub_i32(var_0.a.b, i32(-1i) * -2147483647i)), Struct_2(Struct_1(6156i, _wgslsmith_div_i32(-2862i, -2147483647i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, 2147483647i, var_0.e, u_input.a), vec4<i32>(-19422i, 64117i, 0i, var_0.e))), true, var_0.c | vec2<i32>(abs(var_0.e), _wgslsmith_add_i32(u_input.a, u_input.d)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x - -984f), _wgslsmith_f_op_f32(min(767f, 1755f))), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.d.x)), var_0.d.x), vec2<bool>(!var_0.b, select(true, true, var_0.b)))), ~(~2147483647i)), 0i, !select(vec3<bool>(all(vec4<bool>(false, true, var_0.b, var_0.b)), true, true), vec3<bool>(var_2.x, all(var_2.xz), false), vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(func_1().d, abs(u_input.a)), arg_3.e.x, arg_2.c, arg_2.d, arg_0.d);
    global2 = _wgslsmith_f_op_f32(-664f * _wgslsmith_f_op_f32(ceil(var_0.d.x)));
    var var_1 = ~(-abs(abs(select(vec3<i32>(u_input.a, var_0.a.b, var_0.e), vec3<i32>(arg_0.b.e, 1i, var_0.a.a), arg_3.e))));
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.d.x, 555f, var_0.d.x, 209f))) + vec4<f32>(arg_3.b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1854f), _wgslsmith_f_op_f32(f32(-1f) * -954f), -619f)) - vec4<f32>(_wgslsmith_f_op_f32(arg_3.b.d.x + _wgslsmith_f_op_f32(-arg_0.c.d.x)), arg_3.c.d.x, -3014f, 204f)));
    global0 = -972f;
    return Struct_2(var_0.a, false, arg_2.c, vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.d.x)))), -18537i);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_2.b.a;
    let var_1 = false;
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(arg_1.c.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 47126u), arg_0.ywz) % 32u), var_0.b, -(~arg_1.a.a), ~func_4(arg_2, true, arg_1, Struct_3(arg_2.a, global1[_wgslsmith_index_u32(arg_0.x, 18u)], Struct_2(arg_1.a, true, arg_1.c, vec2<f32>(-1018f, 1410f), u_input.a), u_input.d, arg_2.e)).a.b), vec4<i32>(~2147483647i, ~(~u_input.d), -var_0.b, -func_1().d)), ~arg_2.d | u_input.a);
    let var_2 = arg_2.a;
    global3 = array<vec2<f32>, 19>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(3756u, 27082u, 1u, u_input.c), vec4<u32>(102177u, u_input.b, u_input.c, u_input.b)) & vec4<u32>(3226u, 26981u, u_input.c, 87863u)), func_4(func_1(), false, Struct_2(func_1().b.a, true | func_1().b.b, -select(vec2<i32>(u_input.d, u_input.a), vec2<i32>(u_input.d, -20204i), vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(655f, -1878f))), ~u_input.d), Struct_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(761f, -1511f, -1500f))), func_1().c, func_1().c, _wgslsmith_mult_i32(-15980i, u_input.a), select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), all(vec4<bool>(true, false, true, true))))), func_1());
    global1 = array<Struct_2, 18>();
    let var_1 = func_1().e.zz;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1005f, _wgslsmith_f_op_f32(trunc(291f)))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.d.x)))))));
    let var_3 = -301f;
    let var_4 = Struct_2(Struct_1(~(-u_input.a), var_0.b.a.a), all(select(vec4<bool>(var_1.x && var_1.x, func_1().b.b, var_0.c.b, true), vec4<bool>(var_1.x, any(vec2<bool>(var_0.b.b, var_0.e.x)), true, var_1.x == false), vec4<bool>(false, true, var_1.x, true))), (-(var_0.b.c << (vec2<u32>(4294967295u, 10149u) % vec2<u32>(32u))) & ~abs(var_0.b.c)) & var_0.b.c, vec2<f32>(950f, var_2), abs(i32(-1i) * -u_input.a));
    global2 = var_3;
    var var_5 = vec2<bool>(true, true);
    var var_6 = -40700i;
    let x = u_input.a;
    s_output = StorageBuffer(-699f, var_0.b.d, _wgslsmith_clamp_vec3_i32(firstTrailingBit(reverseBits(firstTrailingBit(vec3<i32>(0i, u_input.d, 1i)))), vec3<i32>(5826i >> ((78731u ^ u_input.c) % 32u), u_input.d, 1i), ~(-select(vec3<i32>(-2147483647i, var_4.e, 0i), vec3<i32>(-14771i, var_0.c.c.x, -1i), vec3<bool>(var_0.b.b, false, var_1.x)))), var_0.c.d);
}

