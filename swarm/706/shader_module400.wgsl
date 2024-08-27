struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10>;

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(-986f, true, vec3<f32>(131f, 1796f, -105f), i32(-2147483648)));

var<private> global4: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-3835i, -13630i), vec2<i32>(-4371i, -47868i), vec2<i32>(1i, -1i), vec2<i32>(-50834i, -57641i), vec2<i32>(0i, -38002i), vec2<i32>(2147483647i, -1i), vec2<i32>(-3109i, 1i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<i32>) -> vec3<bool> {
    let var_0 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(~_wgslsmith_sub_u32(max(44452u, 0u), ~u_input.d), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, u_input.d), 10u)], min(global0[_wgslsmith_index_u32(65084u, 10u)], global0[_wgslsmith_index_u32(u_input.d, 10u)])) & _wgslsmith_mult_u32(u_input.d & 39365u, 1u))), 1u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -851f), _wgslsmith_div_f32(-244f, var_0.a)), _wgslsmith_f_op_vec2_f32(var_0.c.xx + _wgslsmith_f_op_vec2_f32(var_0.c.yz + var_0.c.xy)))), var_0.c.zx, arg_2)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.xz) - vec2<f32>(863f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) + _wgslsmith_f_op_f32(ceil(-411f))))));
    let var_2 = vec4<u32>(~(~_wgslsmith_clamp_u32(0u, u_input.d >> (4294967295u % 32u), 37461u)), 1u, 38010u, 20360u);
    global0 = array<vec2<u32>, 10>();
    global1 = u_input.d;
    return select(vec3<bool>(arg_2, var_0.b, arg_2), !(!(!(!vec3<bool>(var_0.b, arg_2, arg_2)))), !vec3<bool>(select(any(vec3<bool>(true, true, true)), var_0.b, false), false, var_0.d < countOneBits(1i)));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    let var_1 = !select(vec3<bool>(true, true, true), select(func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), vec2<i32>(49111i, 19083i)), u_input.b, true, ~vec4<i32>(u_input.a, u_input.b.x, u_input.c, u_input.c)), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), true);
    var var_2 = Struct_2(_wgslsmith_mult_vec4_u32(~countOneBits(~vec4<u32>(u_input.d, 102054u, 57649u, 74685u)), vec4<u32>(~u_input.d, u_input.d, u_input.d, select(abs(0u), 79779u, all(vec3<bool>(true, var_1.x, true))))), select(max(vec3<u32>(_wgslsmith_add_u32(u_input.d, 1u), 0u, u_input.d ^ 93897u), select(vec3<u32>(u_input.d, u_input.d, 1u), vec3<u32>(u_input.d, 4294967295u, 0u) >> (vec3<u32>(1914u, u_input.d, 54047u) % vec3<u32>(32u)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x), false))), abs(firstLeadingBit(max(vec3<u32>(u_input.d, 4294967295u, u_input.d), vec3<u32>(9480u, 4294967295u, 66306u)))), true), global3[_wgslsmith_index_u32(u_input.d, 1u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.d, 17751u), 1u)], !vec4<bool>(var_1.x, ~u_input.d >= ~61674u, true, var_1.x));
    return var_2.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.c.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.c, vec3<f32>(arg_2.c.a, -2063f, arg_1.d.a), arg_2.e.zyx)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1743f, -1093f, arg_2.c.a)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.c.c.x)))), true | all(vec3<bool>(!arg_1.c.b, arg_2.d.b, arg_0.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_2.d.c * vec3<f32>(1000f, arg_0.c.x, 948f)), arg_1.c.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(873f, 705f, arg_2.c.c.x))), arg_1.e.x)), arg_3.a.x);
    let var_2 = reverseBits(arg_2.b);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1669f, func_2().c.x)));
    var var_4 = !arg_1.e.zy;
    return global4[_wgslsmith_index_u32(u_input.d, 9u)];
}

fn func_1() -> vec2<i32> {
    global3 = array<Struct_1, 1>();
    var var_0 = vec3<u32>(4294967295u, u_input.d & ~(~u_input.d ^ _wgslsmith_sub_u32(u_input.d, 1u)), ~u_input.d | _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(24884u, u_input.d, 4294967295u)), 10u)], ~vec2<u32>(u_input.d, u_input.d)));
    let var_1 = ~vec4<i32>(-(~u_input.c) & reverseBits(_wgslsmith_div_i32(u_input.c, u_input.b.x)), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.e.x, 2147483647i), abs(~23818i)), _wgslsmith_sub_i32(19318i, -u_input.a) ^ -37427i, u_input.e.x);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1770f, 1330f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2489f))))));
    var var_3 = (func_4(Struct_1(-1737f, all(vec4<bool>(false, false, true, true)), vec3<f32>(var_2.x, var_2.x, var_2.x), i32(-1i) * -1i), Struct_2(abs(vec4<u32>(4294967295u, 70785u, u_input.d, 1u)), ~vec3<u32>(24348u, u_input.d, 60583u), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(87886u, u_input.d), 1u)], global3[_wgslsmith_index_u32(~u_input.d, 1u)], vec4<bool>(true, true, true, true)), Struct_2(abs(vec4<u32>(u_input.d, 10469u, u_input.d, var_0.x)), vec3<u32>(16638u, u_input.d, u_input.d), global3[_wgslsmith_index_u32(min(var_0.x, u_input.d), 1u)], func_2(), vec4<bool>(false, false, false, false)), Struct_3(_wgslsmith_add_vec2_i32(global4[_wgslsmith_index_u32(1u, 9u)], vec2<i32>(u_input.e.x, u_input.b.x)))) | vec2<i32>(-35093i | var_1.x, firstLeadingBit(-6894i))) >> (var_0.zy % vec2<u32>(32u));
    return firstTrailingBit(vec2<i32>(max(_wgslsmith_dot_vec4_i32(var_1, vec4<i32>(2147483647i, u_input.c, -2147483647i, var_3.x)) | _wgslsmith_div_i32(var_1.x, -2147483647i), 0i), -2147483647i));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().a * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -403f)), 1294f))));
    return countOneBits(1u);
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: i32) -> Struct_2 {
    global4 = array<vec2<i32>, 9>();
    global0 = array<vec2<u32>, 10>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -607f)))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-439f - 801f), _wgslsmith_div_f32(2345f, 1054f))))));
    let var_0 = vec4<bool>(false, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, 4294967295u, arg_1), ~vec4<u32>(arg_1, 0u, arg_1, 60133u) & vec4<u32>(0u, arg_1, u_input.d, u_input.d)) < arg_1, true, true);
    global4 = array<vec2<i32>, 9>();
    return Struct_2(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 4294967295u, 0u, 9623u) | ~vec4<u32>(54683u, 1726u, 4294967295u, arg_1), vec4<u32>(28205u, u_input.d, _wgslsmith_add_u32(0u, arg_1), _wgslsmith_add_u32(0u, 113269u))), vec3<u32>(arg_1 ^ _wgslsmith_mult_u32(18144u, u_input.d), arg_1, 57590u) << (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 4294967295u, 23595u), vec3<u32>(1u, arg_1, 4294967295u)), reverseBits(vec3<u32>(1u, u_input.d, 1u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_1, 0u), ~vec3<u32>(2722u, 35523u, arg_1), vec3<u32>(17205u, arg_1, 0u) >> (vec3<u32>(arg_1, 4294967295u, 4294967295u) % vec3<u32>(32u)))) % vec3<u32>(32u)), func_2(), func_2(), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_div_u32(u_input.d, _wgslsmith_sub_u32(4294967295u, ~8642u)) < u_input.d) && true;
    let var_1 = func_6(u_input.e.x, func_5(-_wgslsmith_sub_vec2_i32(func_1(), ~u_input.e), select(func_3(vec2<i32>(u_input.c, -3758i) | u_input.e, _wgslsmith_mult_vec2_i32(u_input.e, vec2<i32>(u_input.a, -2147483647i)), func_2().b, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -1i, -17897i, -21302i), vec4<i32>(-1i, 2147483647i, 19586i, 1i), vec4<i32>(26562i, 2147483647i, u_input.c, u_input.c))).xx, vec2<bool>(u_input.c != u_input.b.x, true), !func_3(u_input.e, vec2<i32>(-47114i, u_input.a), var_0, vec4<i32>(1i, 2147483647i, u_input.c, u_input.a)).yz)), ~_wgslsmith_mult_i32(u_input.c, ~(1i >> (u_input.d % 32u))));
    let var_2 = select(!select(func_3(~vec2<i32>(u_input.c, 0i), abs(u_input.b), !var_0, vec4<i32>(-2147483647i, -50431i, var_1.c.d, u_input.a)).xz, !vec2<bool>(var_0, false), select(var_1.e.wx, select(vec2<bool>(false, var_0), vec2<bool>(true, var_1.d.b), var_1.c.b), !var_1.c.b)), !select(vec2<bool>(var_1.e.x, var_1.c.b), var_1.e.zy, any(vec4<bool>(var_0, true, true, var_0))), var_1.e.x);
    var var_3 = var_1.c.c.x;
    let var_4 = 4294967295u;
    var var_5 = var_1.d;
    let var_6 = min(vec2<i32>(-9351i, _wgslsmith_mod_i32(~_wgslsmith_div_i32(-5195i, -54321i), -1i)), ~_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(1i, _wgslsmith_mult_i32(0i, 9046i))));
    let var_7 = Struct_2(var_1.a, ~vec3<u32>(select(var_4, var_1.b.x, false), 4209u, ~54159u) << (~var_1.b % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -761f), var_5.c.x))), var_1.d.b, var_5.c, min(var_5.d, min(-22323i, _wgslsmith_div_i32(-19234i, u_input.b.x)))), var_1.c, var_1.e);
    global4 = array<vec2<i32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

