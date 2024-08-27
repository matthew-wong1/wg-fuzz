struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(1i, -1i, 57499i), vec3<i32>(742i, -15389i, 1i), vec3<i32>(0i, -51182i, 0i), vec3<i32>(1i, 2147483647i, -32881i), vec3<i32>(-50312i, i32(-2147483648), 0i), vec3<i32>(0i, -44200i, -47169i), vec3<i32>(-15237i, -1i, 1i), vec3<i32>(0i, 0i, -36725i), vec3<i32>(1i, 16619i, -8919i));

var<private> global1: array<vec3<f32>, 17>;

var<private> global2: Struct_1 = Struct_1(4294967295u, 1u, vec2<bool>(false, false), vec3<i32>(1i, -1i, 0i), 2147483647i);

var<private> global3: Struct_4 = Struct_4(Struct_3(-991f, Struct_2(Struct_1(6712u, 39613u, vec2<bool>(true, false), vec3<i32>(2147483647i, -1326i, -54132i), -35005i), false, vec4<u32>(4294967295u, 15393u, 24233u, 39848u), Struct_1(0u, 0u, vec2<bool>(false, false), vec3<i32>(-1i, -2583i, i32(-2147483648)), 0i), Struct_1(4294967295u, 19480u, vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -24509i, -1i), -7204i)), vec4<u32>(59427u, 14533u, 52627u, 1u), Struct_1(4294967295u, 4294967295u, vec2<bool>(true, true), vec3<i32>(-714i, 43011i, i32(-2147483648)), 2228i)), vec4<f32>(1096f, 508f, 1645f, -462f), vec4<i32>(i32(-2147483648), 36485i, -1i, 54733i), vec4<i32>(-19473i, 0i, -11270i, i32(-2147483648)));

var<private> global4: i32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    global3 = Struct_4(Struct_3(global3.a.a, Struct_2(global3.a.d, all(select(vec2<bool>(false, arg_0.c.x), global3.a.d.c, false)), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.a, 78384u, 29818u, 1u), ~global3.a.c), Struct_1(15173u, reverseBits(global3.a.b.a.a), !global2.c, global3.a.d.d, -arg_0.d.x), Struct_1(arg_1.a, ~global3.a.c.x, arg_1.c, vec3<i32>(arg_1.d.x, -8604i, arg_0.e), 20443i)), global3.a.c, Struct_1(arg_0.b, global2.a, select(!vec2<bool>(global3.a.d.c.x, global2.c.x), global3.a.b.d.c, select(arg_1.c, arg_0.c, vec2<bool>(global2.c.x, false))), firstTrailingBit(arg_0.d), 0i)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.a) * _wgslsmith_f_op_f32(f32(-1f) * -180f)) + _wgslsmith_f_op_f32(f32(-1f) * -502f)), global3.a.a, 1151f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.a.a, global3.a.a)))))), abs(~(_wgslsmith_div_vec4_i32(global3.c, vec4<i32>(10500i, 0i, -1i, 1i)) | arg_2)), -max(-firstLeadingBit(arg_2), -vec4<i32>(1i, arg_0.e, 24482i, -2147483647i)));
    global3 = Struct_4(global3.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global3.a.a)), _wgslsmith_f_op_f32(abs(-196f)), _wgslsmith_f_op_f32(step(1000f, global3.b.x)), 1000f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.b), _wgslsmith_div_vec4_f32(global3.b, global3.b), vec4<bool>(false, arg_0.c.x, global2.c.x, false)))))), vec4<i32>(~2147483647i, _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(arg_2, u_input.a), ~(-30719i) | (40144i | arg_2.x)), countOneBits(max(15753i, ~global3.a.d.e)), arg_1.d.x), -vec4<i32>(~(arg_2.x & 5169i), 0i, -1i, arg_0.d.x));
    global3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), Struct_2(Struct_1(~4294967295u, 104786u, !vec2<bool>(arg_1.c.x, true), -vec3<i32>(arg_0.e, global3.d.x, 27326i), arg_2.x), false, min(global3.a.c << (global3.a.c % vec4<u32>(32u)), ~vec4<u32>(global2.b, arg_1.b, 4294967295u, 50870u)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.a, 0u), global3.a.b.c.xwy), 0u, global2.c, vec3<i32>(global3.c.x, u_input.a.x, arg_2.x), _wgslsmith_clamp_i32(1i, global3.a.b.e.e, arg_2.x)), Struct_1(global2.b, ~global2.a, vec2<bool>(arg_1.c.x, arg_0.c.x), global0[_wgslsmith_index_u32(global3.a.c.x, 9u)] ^ u_input.a.wwy, _wgslsmith_div_i32(-18432i, 10109i))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b, 40523u, arg_0.a, u_input.d), vec4<u32>(2182u, global3.a.d.b, arg_0.a, arg_0.a)) & vec4<u32>(global2.b, 1u, 38483u, 0u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.b, 1u, 4294967295u, 1u), vec4<u32>(u_input.d, 51737u, 3234u, u_input.b)), global3.a.b.c), Struct_1(global2.b, _wgslsmith_clamp_u32(arg_0.b, 8081u << (arg_0.b % 32u), 0u), vec2<bool>(true, !arg_1.c.x), vec3<i32>(26718i, -13502i, ~2190i), arg_1.e)), _wgslsmith_div_vec4_f32(global3.b, global3.b), _wgslsmith_clamp_vec4_i32(arg_2, reverseBits(vec4<i32>(1i, _wgslsmith_div_i32(54080i, -1i), i32(-1i) * -1i, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(~arg_0.e, u_input.c >> (arg_1.b % 32u), _wgslsmith_div_i32(arg_2.x, arg_2.x), i32(-1i) * -33643i), countOneBits(reverseBits(arg_2)))), global3.c << (vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2.b, 4294967295u), vec2<u32>(18121u, global3.a.b.e.b) | global3.a.c.xy), 49597u, abs(_wgslsmith_add_u32(u_input.d, arg_0.a)), _wgslsmith_mult_u32(arg_0.b, countOneBits(global3.a.d.a))) % vec4<u32>(32u)));
    global4 = _wgslsmith_dot_vec3_i32(countOneBits(max(vec3<i32>(1i, u_input.c >> (45519u % 32u), global2.d.x), max(-vec3<i32>(28043i, arg_0.e, u_input.a.x), -arg_1.d))), -(reverseBits(vec3<i32>(arg_2.x, 14912i, 0i)) | abs(-vec3<i32>(1i, global3.c.x, 1i))));
    global0 = array<vec3<i32>, 9>();
    return false;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = arg_0;
    var var_1 = global3.b;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x * _wgslsmith_div_f32(-778f, var_0)));
    var var_3 = abs(61092u);
    global3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -1025f) * _wgslsmith_div_f32(1000f, global3.b.x)), global3.a.b, abs(vec4<u32>(global2.b << (24422u % 32u), u_input.b, u_input.d, u_input.b)), Struct_1(abs(0u << (u_input.d % 32u)), _wgslsmith_mult_u32(4294967295u & global2.a, u_input.b), vec2<bool>(true, func_3(global3.a.b.e, Struct_1(4294967295u, 1u, global2.c, global0[_wgslsmith_index_u32(19093u, 9u)], global2.e), vec4<i32>(global3.d.x, 8936i, u_input.c, u_input.c))), vec3<i32>(global2.d.x << (0u % 32u), global2.d.x & -1i, global2.e), u_input.c)), _wgslsmith_div_vec4_f32(global3.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_0)), -1584f, _wgslsmith_div_f32(-599f, -1000f), -1212f))), global3.d, -(~max(u_input.a, vec4<i32>(-2147483647i, -11133i, u_input.a.x, global3.d.x))));
    return _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2)) + _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(var_2 + 151f)))));
}

fn func_1() -> Struct_4 {
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3.a.a, _wgslsmith_f_op_f32(exp2(global3.b.x))))))));
    var var_2 = vec3<bool>(true, (firstLeadingBit(6337u) != u_input.d) & !(true | (true || global3.a.d.c.x)), !any(select(vec3<bool>(global2.c.x, global2.c.x, global2.c.x), !vec3<bool>(global2.c.x, false, true), false)));
    return Struct_4(global3.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global3.b))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.a.a, -594f, 986f, global3.b.x), global3.b)), vec4<bool>(func_3(Struct_1(7498u, global3.a.c.x, global2.c, vec3<i32>(u_input.c, global2.e, -34735i), -36110i), global3.a.b.e, vec4<i32>(global2.d.x, 9676i, -9576i, global3.d.x)), global2.c.x == true, any(vec2<bool>(true, global2.c.x)), false))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-global3.a.a), -1657f, global3.a.a))), vec4<bool>(global3.a.b.a.c.x, all(!vec3<bool>(true, true, global3.a.d.c.x)), func_3(Struct_1(1u, 1u, var_2.xy, vec3<i32>(1i, -55630i, -2147483647i), global3.c.x), Struct_1(13563u, global3.a.c.x, var_2.zx, global0[_wgslsmith_index_u32(u_input.b, 9u)], global3.d.x), ~u_input.a), true))), select((global3.d & global3.c) & u_input.a, u_input.a, select(!vec4<bool>(global2.c.x, true, true, global2.c.x), select(vec4<bool>(false, var_2.x, true, false), select(vec4<bool>(global2.c.x, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), global2.e != 0i), select(!vec4<bool>(global2.c.x, false, global3.a.d.c.x, global2.c.x), !vec4<bool>(true, var_2.x, var_2.x, global3.a.b.d.c.x), any(vec2<bool>(var_2.x, true))))), ~vec4<i32>(-42262i, -15097i, -54369i, -u_input.a.x) >> (_wgslsmith_sub_vec4_u32(select(~global3.a.c, global3.a.c >> (global3.a.c % vec4<u32>(32u)), !vec4<bool>(true, false, true, global3.a.b.d.c.x)), vec4<u32>(global3.a.d.a >> (1u % 32u), 2623u & u_input.d, _wgslsmith_div_u32(global3.a.b.c.x, 1u), global3.a.c.x)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = func_1();
    global1 = array<vec3<f32>, 17>();
    let var_2 = global3.a.b;
    global4 = u_input.c;
    var var_3 = global3.a.d.c.x;
    let var_4 = var_1.b;
    var var_5 = Struct_5(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1410f)), -1258f))), global3.a.d, _wgslsmith_mult_vec4_i32(countOneBits(var_1.c), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -var_1.c, ~(~var_1.c))), func_1().a.b);
    let var_6 = vec3<u32>(1u, _wgslsmith_clamp_u32(select(18460u, min(abs(var_5.a.a.b.d.b), 0u), !(!var_1.a.b.e.c.x)), select(var_2.a.a, _wgslsmith_add_u32(45559u, global2.a), global2.c.x) << (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 56581u, var_0), var_1.a.c)) % 32u), 4294967295u), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, -1i >> (func_1().a.d.b % 32u), 54733i));
}

