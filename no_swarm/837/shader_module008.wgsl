struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: u32 = 33726u;

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    var var_0 = Struct_4(~u_input.a, 67225i);
    global0 = array<vec2<bool>, 24>();
    global0 = array<vec2<bool>, 24>();
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1645f, -219f, 617f));
    return 2147483647i;
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    global0 = array<vec2<bool>, 24>();
    let var_0 = func_3();
    let var_1 = !vec4<bool>(71428i <= firstTrailingBit(-u_input.d.x), arg_0.x, _wgslsmith_mod_u32(0u & u_input.c.x, u_input.b.x) > 2185u, any(global0[_wgslsmith_index_u32(u_input.a, 24u)]));
    global1 = ~930u;
    var var_2 = ~(~(~max(var_0, select(2147483647i, var_0, var_1.x))));
    return Struct_3(max(-vec2<i32>(var_0, var_0), -(~u_input.d ^ (u_input.d & vec2<i32>(2147483647i, 2147483647i)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    global1 = ~u_input.b.x;
    let var_0 = Struct_2(arg_1.b, arg_1.b, select(!(!select(vec4<bool>(arg_1.b.b, arg_1.b.b, true, true), vec4<bool>(arg_1.c.x, arg_1.a.b, true, arg_1.c.x), vec4<bool>(false, arg_1.b.b, arg_1.a.b, false))), vec4<bool>(true && !arg_1.a.b, arg_1.c.x, any(arg_1.c.yww), arg_1.b.b), arg_1.c));
    let var_1 = Struct_1(var_0.b.a, all(!select(vec3<bool>(true, arg_1.a.b, var_0.b.b), var_0.c.wwz, vec3<bool>(false, true, false))) || !var_0.a.b, arg_1.b.c, firstTrailingBit(_wgslsmith_div_u32(var_0.a.d, _wgslsmith_div_u32(~60930u, var_0.a.d))));
    var var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(-31880i, arg_0.a.x, -2147483647i), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -22655i, arg_0.a.x), vec3<i32>(u_input.e, arg_0.a.x, arg_0.a.x), vec3<i32>(u_input.e, -32077i, arg_1.a.a))), max(vec3<i32>(~(-28978i), -arg_0.a.x, arg_0.a.x), -_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_1.a, arg_1.b.a), vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)))) ^ _wgslsmith_mod_vec3_i32(firstTrailingBit(abs(-vec3<i32>(30649i, arg_0.a.x, arg_0.a.x))), -(-vec3<i32>(var_0.a.a, -1i, var_1.a) >> (_wgslsmith_mod_vec3_u32(u_input.b, u_input.b) % vec3<u32>(32u))));
    let var_3 = var_0.c.wy;
    return 4294967295u;
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> u32 {
    var var_0 = ~(20264u >> (~arg_0.a % 32u));
    var_0 = 4294967295u;
    var_0 = 4294967295u;
    global1 = 31939u;
    var var_1 = Struct_4(~_wgslsmith_clamp_u32(1u, ~(~11141u), ~_wgslsmith_mult_u32(111941u, arg_0.a)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i & arg_1, -arg_1, 0i), vec3<i32>(36550i & arg_1, 27549i, reverseBits(arg_0.b))));
    return ~reverseBits(func_4(func_2(vec3<bool>(true, false, true)), Struct_2(Struct_1(var_1.b, true, 642f, 1985u), Struct_1(var_1.b, true, -666f, 4294967295u), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec3_i32(firstLeadingBit(-countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, -38586i, -1i), vec3<i32>(u_input.e, 28522i, u_input.d.x)))), vec3<i32>(u_input.e | _wgslsmith_div_i32(0i, 13546i), u_input.e, u_input.d.x) >> (~u_input.c % vec3<u32>(32u)));
    let var_1 = -1i;
    var var_2 = var_0.x;
    var var_3 = Struct_1(abs(_wgslsmith_mult_i32(~41527i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -1i, var_1) & var_0, var_0 >> (vec3<u32>(7621u, 0u, u_input.a) % vec3<u32>(32u))))), all(select(vec2<bool>(all(vec3<bool>(true, arg_1, arg_1)), false), global0[_wgslsmith_index_u32(u_input.b.x, 24u)], false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1216f))), ~_wgslsmith_mod_u32(0u, func_4(Struct_3(vec2<i32>(u_input.d.x, var_0.x)), Struct_2(Struct_1(var_1, true, -685f, u_input.b.x), Struct_1(var_1, true, -1000f, u_input.b.x), vec4<bool>(false, true, false, false)))));
    global2 = var_0.x;
    return Struct_1(~(~_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1, 0i), var_0.zy)), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1708f))), ~(~(30786u << ((arg_2.x >> (var_3.d % 32u)) % 32u))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(2147483647i, ~arg_0.a), u_input.e, u_input.e);
    global2 = arg_1.a.x;
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(func_4(arg_1, Struct_2(Struct_1(9474i, true, -1790f, 4294967295u), arg_0, vec4<bool>(true, true, false, arg_0.b))), ~u_input.b.x, countOneBits(u_input.c.x), 1u), abs(vec4<u32>(arg_0.d, 0u, u_input.b.x, u_input.b.x))), arg_0.d, ~arg_0.d, firstTrailingBit(1u) << (func_5(vec4<u32>(49081u, 25124u, 73158u, 1u), true, firstLeadingBit(vec2<u32>(1u, arg_0.d))).d % 32u));
    global0 = array<vec2<bool>, 24>();
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, arg_0.c, arg_0.c, 801f), vec4<f32>(arg_0.c, -641f, 429f, arg_2.x), vec4<bool>(arg_0.b, true, arg_0.b, true)))))))));
    return Struct_1(_wgslsmith_div_i32(arg_1.a.x, arg_0.a) | max(3397i, -_wgslsmith_div_i32(6693i, -12422i)), any(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_0.d, 78139u), ~22144u), 24u)]), 1000f, 29771u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_6(func_5(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x), u_input.a, func_1(Struct_4(19204u, 1i), u_input.d.x) << ((u_input.c.x >> (1u % 32u)) % 32u), ~(~u_input.c.x)), true, abs(~(~u_input.b.xy))), func_2(select(!(!vec3<bool>(var_0, false, true)), select(!vec3<bool>(var_0, false, var_0), vec3<bool>(true, true, true), select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, false, var_0), var_0)), vec3<bool>(!var_0, var_0, any(vec3<bool>(var_0, var_0, var_0))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(1000f + 2557f), _wgslsmith_f_op_f32(min(1000f, -348f)), _wgslsmith_f_op_f32(1193f - 153f)))))));
    global0 = array<vec2<bool>, 24>();
    var var_2 = vec3<bool>(false, _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f + var_1.c))) <= 1f, func_6(func_5(vec4<u32>(var_1.d << (u_input.a % 32u), u_input.b.x, var_1.d, ~1u), true, _wgslsmith_add_vec2_u32(~u_input.c.xy, ~vec2<u32>(var_1.d, var_1.d))), Struct_3(u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(169f, var_1.c, -460f), vec3<f32>(1000f, var_1.c, 2447f))))).b);
    global1 = 1u;
    let var_3 = vec4<f32>(var_1.c, 1000f, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)));
    var var_4 = vec3<bool>(all(!(!select(vec4<bool>(var_1.b, var_0, var_2.x, true), vec4<bool>(var_1.b, false, var_0, false), false))), abs(select(var_1.d, _wgslsmith_div_u32(64680u, var_1.d), true)) == 23064u, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~func_6(var_1, func_2(vec3<bool>(false, true, var_2.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-539f, var_1.c, -839f)))).d | u_input.b.x, ~(i32(-1i) * -(16624i ^ u_input.d.x)), _wgslsmith_add_i32(-_wgslsmith_mult_i32(-5136i, 38764i & u_input.e), -1i), vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, func_6(Struct_1(9273i, false, 206f, var_1.d), Struct_3(vec2<i32>(u_input.e, 2147483647i)), _wgslsmith_f_op_vec3_f32(-var_3.yxy)).a), u_input.d.x | _wgslsmith_mod_i32(min(14738i, 5276i), 28192i), _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(-2508i, var_1.a))));
}

