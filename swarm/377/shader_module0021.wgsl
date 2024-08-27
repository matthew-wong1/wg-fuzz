struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28>;

var<private> global1: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(-13008i, -25124i), vec2<i32>(-46468i, 5161i), vec2<i32>(1060i, 8179i), vec2<i32>(-31281i, -63222i), vec2<i32>(-34394i, -1i), vec2<i32>(0i, 10156i), vec2<i32>(0i, 2147483647i), vec2<i32>(-18399i, 2147483647i), vec2<i32>(-1i, 15222i), vec2<i32>(1574i, -11510i), vec2<i32>(-45388i, -1i), vec2<i32>(-29789i, 4000i), vec2<i32>(2097i, 2147483647i), vec2<i32>(-3561i, -1i), vec2<i32>(-39972i, 0i), vec2<i32>(i32(-2147483648), 63987i), vec2<i32>(0i, 1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, 22529i), vec2<i32>(0i, 5664i), vec2<i32>(-18090i, 0i), vec2<i32>(-17158i, 7297i), vec2<i32>(19261i, -7500i), vec2<i32>(-39303i, 1i), vec2<i32>(-24698i, 16752i));

var<private> global2: Struct_1;

var<private> global3: i32 = 4922i;

var<private> global4: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> vec4<f32> {
    global1 = array<vec2<i32>, 25>();
    var var_0 = Struct_2(true, true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-global2.b)))));
    let var_2 = vec3<i32>(-global2.a, _wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(38388i, -10940i, global2.a), vec3<i32>(16659i, -1i, 1i)), max(vec3<i32>(global2.a, 1i, 2147483647i), vec3<i32>(-2147483647i, global2.a, global2.a))), 1i >> (arg_1 % 32u)), global2.a);
    var_0 = Struct_2(var_0.a, -1302f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(765f, -1159f, var_1.x, -804f) - vec4<f32>(arg_0.x, 1463f, 712f, var_1.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, -244f, _wgslsmith_div_f32(240f, 1083f), _wgslsmith_f_op_f32(select(657f, -950f, var_0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(127f, 1056f, global2.c.x, 924f) * vec4<f32>(-1516f, arg_0.x, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, -462f, global2.b, -2478f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.c.x), 913f)) > 199f, !all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), !all(vec3<bool>(any(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, false, true)), global2.a == 2147483647i)), !all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true))));
    var var_1 = arg_3;
    global0 = array<vec2<u32>, 28>();
    global1 = array<vec2<i32>, 25>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-212f, var_1.b, 1819f), vec3<f32>(-858f, global2.b, 945f))) * _wgslsmith_f_op_vec3_f32(exp2(arg_0.xwx))));
    return _wgslsmith_f_op_vec2_f32(-var_2.yx);
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    global2 = Struct_1(abs(global2.a), global2.b, _wgslsmith_f_op_vec2_f32(sign(global2.c)));
    global2 = Struct_1(~global2.a, global2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.c)));
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_sub_i32(~(-1i), _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-47036i, 46464i, -29939i, global2.a), vec4<i32>(global2.a, global2.a, 1i, global2.a)), ~vec4<i32>(-1i, 0i, global2.a, 46342i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-944f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1971f))))), global2.c);
    let var_2 = Struct_3(Struct_2(min(global2.a << (118109u % 32u), var_1.a) == var_1.a, arg_0.x), -(~vec4<i32>(max(global2.a, var_1.a), var_1.a, -2147483647i, global2.a)), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(1030f, global2.b), u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, global2.b, var_1.c.x, -1163f))))), var_1.b, vec4<i32>(global2.a, -20681i, ~var_1.a ^ -var_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2.a, var_1.a, var_1.a), min(vec4<i32>(global2.a, global2.a, global2.a, global2.a), vec4<i32>(-2897i, var_1.a, -49093i, -20370i)))), Struct_1(~countOneBits(12833i), -154f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.c.x, 1939f), vec2<f32>(var_1.b, 196f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(747f, global2.b, global2.c.x), vec3<f32>(-2582f, var_1.b, global2.c.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1167f, var_1.c.x, -1361f) + vec3<f32>(global2.b, 360f, global2.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-214f, -1196f, 399f)))))));
    return var_2;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_3 {
    global1 = array<vec2<i32>, 25>();
    var var_0 = Struct_1(~(-(_wgslsmith_dot_vec2_i32(arg_0.b.zy, global1[_wgslsmith_index_u32(62984u, 25u)]) | global2.a)), _wgslsmith_f_op_f32(trunc(func_2(!(!vec4<bool>(false, arg_2.a.a, arg_0.a.b, arg_2.a.b))).d.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-730f, -406f), global2.c) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1250f, 1137f))))))));
    var var_1 = arg_0.a.b;
    var var_2 = _wgslsmith_div_i32(arg_0.b.x, var_0.a);
    let var_3 = Struct_1(firstLeadingBit(~(i32(-1i) * -10903i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d.x - arg_2.c.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + arg_0.c.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x + 1511f))))), vec2<f32>(_wgslsmith_f_op_f32(-236f * 800f), -1949f));
    return arg_0;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_5(func_2(!vec4<bool>(any(vec3<bool>(true, false, true)), all(vec2<bool>(false, true)), any(vec4<bool>(true, false, false, true)), false)), ~select(0u, u_input.a.x >> (u_input.a.x % 32u), true) > 78482u, func_2(vec4<bool>(true, ~u_input.a.x == abs(0u), false, !any(vec3<bool>(false, true, false)))), ~min(vec3<u32>(abs(4294967295u), abs(1u), u_input.a.x), select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<u32>(0u, 0u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(9685u, 0u, 1u)), true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-443f - func_2(select(!vec4<bool>(true, true, var_0.a.b, true), vec4<bool>(var_0.a.b, false, var_0.a.a, var_0.a.b), func_5(Struct_3(var_0.a, var_0.b, vec2<f32>(1581f, 208f), var_0.d), false, var_0, vec3<u32>(u_input.a.x, 4294967295u, 0u)).a.b)).d.x));
    global1 = array<vec2<i32>, 25>();
    let var_2 = true;
    global2 = Struct_1(-(var_0.b.x | var_0.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -682f), _wgslsmith_f_op_f32(-var_0.d.x)))));
    return Struct_1(~1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(865f))), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(-select(27982i, -15000i, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-652f, 312f), vec2<f32>(global2.b, global2.c.x))));
    global2 = func_1(-(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, global2.a, -8664i, global2.a)), vec4<i32>(global2.a, -1i, 0i, 23966i)) & 0i));
    var var_0 = _wgslsmith_f_op_f32(-func_1(_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-23811i, global2.a, global2.a), vec3<i32>(-15382i, global2.a, -16222i)), _wgslsmith_div_vec3_i32(-vec3<i32>(global2.a, -36858i, -2147483647i), vec3<i32>(global2.a, global2.a, global2.a) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))))).b);
    global3 = func_2(!vec4<bool>(true, func_1(global2.a).b <= -579f, true, true)).b.x;
    var var_1 = countOneBits(firstLeadingBit(u_input.a.x));
    var var_2 = _wgslsmith_div_f32(-692f, global2.c.x);
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - global2.c.x));
    var var_3 = vec4<u32>(~abs(~65815u) >> (_wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 0u, 11370u, 4294967295u)) % 32u)) % 32u), 1u, min(0u, 0u), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~countOneBits(global2.a), _wgslsmith_add_i32(~_wgslsmith_sub_i32(global2.a, 2147483647i), ~global2.a), abs(select(global2.a, -2147483647i, false))), vec3<i32>(~(-2147483647i), ~global2.a, global2.a), min(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(37899i, 577i, global2.a) | vec3<i32>(global2.a, global2.a, global2.a), _wgslsmith_div_vec3_i32(vec3<i32>(16742i, 2147483647i, global2.a), vec3<i32>(0i, -1i, global2.a))), min(vec3<i32>(-1i, global2.a, -2147483647i) ^ vec3<i32>(8377i, -1i, -18873i), min(vec3<i32>(-2147483647i, global2.a, -1i), vec3<i32>(global2.a, global2.a, -2147483647i)))), _wgslsmith_div_vec3_i32(vec3<i32>(func_2(vec4<bool>(true, false, false, false)).b.x, -12958i, -1i | global2.a), ~(-vec3<i32>(global2.a, global2.a, 45475i)))), func_1(7829i).a, global2.a);
}

