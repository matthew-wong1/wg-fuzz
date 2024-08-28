struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_3,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global1: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(1i, 0i, 0i), vec3<i32>(0i, 40907i, -1i), vec3<i32>(-67619i, 5620i, i32(-2147483648)), vec3<i32>(33632i, 0i, -9160i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(2147483647i, -1i, -25813i), vec3<i32>(-9816i, i32(-2147483648), 42788i), vec3<i32>(i32(-2147483648), 27054i, i32(-2147483648)), vec3<i32>(-18415i, i32(-2147483648), 32348i), vec3<i32>(23870i, 1i, i32(-2147483648)), vec3<i32>(15233i, -3510i, -37778i), vec3<i32>(40604i, 2147483647i, -1i), vec3<i32>(17656i, 0i, -1i), vec3<i32>(50970i, -1i, 1i), vec3<i32>(0i, 36451i, -60601i), vec3<i32>(15279i, i32(-2147483648), 15498i), vec3<i32>(-1i, i32(-2147483648), 40880i), vec3<i32>(0i, -59512i, 12170i), vec3<i32>(11246i, 17139i, -7413i), vec3<i32>(1i, 61849i, -4814i), vec3<i32>(i32(-2147483648), 29019i, 20584i), vec3<i32>(1i, 25864i, 10799i), vec3<i32>(44841i, -36966i, -9436i), vec3<i32>(1i, 84850i, -18117i), vec3<i32>(-32669i, 17240i, -1i), vec3<i32>(i32(-2147483648), 5216i, -11492i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    global1 = array<vec3<i32>, 27>();
    var var_0 = u_input.b;
    global0 = array<vec3<bool>, 15>();
    let var_1 = true;
    global0 = array<vec3<bool>, 15>();
    return _wgslsmith_mod_u32(4485u, _wgslsmith_clamp_u32(1u, 10515u << (1u % 32u), ~0u));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_u32(~1u, ~_wgslsmith_mult_u32(1u, 14014u), _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_sub_u32(21121u, func_3(arg_0, true))), 0u));
    var_0 = _wgslsmith_div_u32(0u, countOneBits(1u));
    var var_1 = countOneBits(min(firstLeadingBit(u_input.b.x), _wgslsmith_clamp_i32(reverseBits(-2147483647i), 43018i, reverseBits(arg_0)))) <= firstTrailingBit(min(36632i, -1i));
    let var_2 = all(vec3<bool>(true == any(vec3<bool>(true, true, true)), false, true));
    global0 = array<vec3<bool>, 15>();
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_f_op_f32(floor(-126f)))))), 147f));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> vec3<u32> {
    let var_0 = vec4<i32>(-(~(32989i & u_input.b.x) ^ 0i), u_input.b.x, u_input.b.x & min(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, u_input.b.x), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, -27362i))), 0i);
    let var_1 = func_2(var_0.x);
    var var_2 = true;
    var_2 = all(global0[_wgslsmith_index_u32(1u, 15u)]);
    let var_3 = arg_0.x;
    return ~(~(~(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3, var_3, arg_0.x), vec3<u32>(var_3, var_3, 24151u)) << ((vec3<u32>(38539u, arg_0.x, 6570u) << (vec3<u32>(62783u, 40962u, arg_0.x) % vec3<u32>(32u))) % vec3<u32>(32u)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = func_1(arg_1, all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true))) && true).x;
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-801f + -1489f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -774f) + _wgslsmith_f_op_f32(sign(2687f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-619f + _wgslsmith_f_op_f32(f32(-1f) * -1190f)) - -568f)), _wgslsmith_clamp_u32(~reverseBits(5169u), ~arg_1.x, _wgslsmith_add_u32(26161u, countOneBits(~58689u))), abs(_wgslsmith_clamp_u32(~arg_0.x & arg_1.x, 1u, var_0)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(trunc(-209f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1126f, var_1.a.x, -542f, _wgslsmith_f_op_f32(abs(637f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1093f, var_1.a.x, var_1.a.x, -1737f))), _wgslsmith_div_vec4_f32(vec4<f32>(-699f, var_1.a.x, var_1.a.x, 785f), vec4<f32>(309f, -1000f, 2542f, -116f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-872f, var_1.a.x, var_1.e, var_1.a.x)) - vec4<f32>(-230f, 722f, 452f, var_1.e)))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e, _wgslsmith_f_op_f32(f32(-1f) * -719f), _wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_f_op_f32(var_2.x + 788f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.e, var_2.x, var_1.e, var_1.a.x))))), u_input.b.zx, var_2.wy));
    var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(func_2(min(countOneBits(-2147483647i), _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(var_0, 27u)], u_input.b))).a.x, _wgslsmith_f_op_f32(round(576f)), _wgslsmith_f_op_f32(-1320f + _wgslsmith_f_op_f32(f32(-1f) * -712f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(max(var_2.x, -477f)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-753f, -246f), _wgslsmith_div_f32(var_1.a.x, var_1.e)))))));
    return Struct_1(var_3.a.a, max(~vec2<i32>(1i, min(var_3.a.b.x, -7553i)), abs(vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(var_3.a.b.x, -1938i)))), vec2<f32>(_wgslsmith_f_op_f32(142f * var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(step(var_2.x, 1249f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(func_1(vec4<u32>(1u, 1u, 1u, 1u), false), _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 71947u, 4294967295u, 37910u), vec4<u32>(0u, 1u, 44396u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(53736u, 43622u, 0u, 4294967295u), select(vec4<u32>(32374u, 70002u, 8464u, 22042u), vec4<u32>(37527u, 4294967295u, 1u, 1u), false)))));
    var var_1 = true;
    global0 = array<vec3<bool>, 15>();
    let var_2 = -697f;
    var_1 = all(select(vec3<bool>(all(vec4<bool>(false, true, true, false)), false, true), select(select(global0[_wgslsmith_index_u32(116484u, 15u)], global0[_wgslsmith_index_u32(38523u, 15u)], vec3<bool>(false, true, true)), global0[_wgslsmith_index_u32(~57875u, 15u)], select(vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(0u, 15u)], vec3<bool>(true, true, true))), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true))))) == false;
    global1 = array<vec3<i32>, 27>();
    global0 = array<vec3<bool>, 15>();
    let var_3 = var_0.a.c.x;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_mod_u32(31657u, 1u), _wgslsmith_add_u32(~4294967295u, 27067u), max(11418u, 1u) << (1u % 32u), 1u), true), _wgslsmith_mod_vec3_i32(max(u_input.b, -vec3<i32>(53062i, u_input.b.x, 2147483647i) >> (firstTrailingBit(vec3<u32>(1u, 40526u, 0u)) % vec3<u32>(32u))), u_input.b), abs(vec2<u32>(0u, ~15123u)), firstLeadingBit(~vec4<i32>(u_input.a.x, max(u_input.b.x, -72218i), u_input.a.x, var_0.a.b.x)));
}

