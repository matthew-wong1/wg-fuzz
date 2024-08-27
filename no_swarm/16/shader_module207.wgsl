struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(26409u, 111543u, 25927u, 0u), vec4<u32>(4294967295u, 0u, 2740u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 9431u, 0u, 25174u), vec4<u32>(0u, 33750u, 12208u, 68183u), vec4<u32>(4294967295u, 21509u, 23426u, 892u), vec4<u32>(77751u, 0u, 4294967295u, 4294967295u), vec4<u32>(22636u, 1u, 17145u, 31853u), vec4<u32>(1u, 32549u, 0u, 18129u), vec4<u32>(0u, 4294967295u, 73962u, 4294967295u), vec4<u32>(4294967295u, 0u, 108681u, 0u), vec4<u32>(24219u, 1u, 0u, 1u), vec4<u32>(1u, 0u, 28261u, 16808u), vec4<u32>(0u, 0u, 58130u, 51366u), vec4<u32>(25086u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 11435u, 74301u, 88084u), vec4<u32>(4294967295u, 0u, 10241u, 0u), vec4<u32>(42402u, 1u, 70181u, 1u), vec4<u32>(0u, 4294967295u, 4332u, 0u), vec4<u32>(1905u, 1u, 4294967295u, 0u), vec4<u32>(59046u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 22436u, 116953u, 1u), vec4<u32>(4294967295u, 0u, 70349u, 63087u), vec4<u32>(16696u, 0u, 19489u, 1u));

var<private> global2: f32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: vec2<u32>) -> vec4<f32> {
    global1 = array<vec4<u32>, 24>();
    let var_0 = arg_1;
    var var_1 = abs(_wgslsmith_add_i32(34927i, 1i));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - -284f));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(862f, var_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2512f - 1440f), _wgslsmith_f_op_f32(-1087f * var_0.b.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -2102f)))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-681f, 4058f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1010f)) + 255f))), var_0.a, vec4<bool>(false, !arg_0, all(!vec4<bool>(arg_0, true, false, arg_0)), !(!arg_0 || true))));
}

fn func_2() -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(func_3(select(all(vec2<bool>(true, true)), true, true), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-1257f * 318f), 383f, _wgslsmith_f_op_f32(step(-2352f, -1775f)), 356f), Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-210f, -296f), vec2<f32>(-3123f, -1064f)))), vec2<u32>(0u, u_input.e.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1514f)), _wgslsmith_div_f32(570f, -1067f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1451f, 1151f) - vec2<f32>(1907f, 970f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1140f, -1047f)))), vec2<u32>(60390u | (u_input.e.x & 30785u), ~(~9456u)))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1273f * -1991f), _wgslsmith_f_op_f32(f32(-1f) * -431f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-552f, -708f)))), abs(abs(vec2<u32>(1u, 1u))));
    var_0 = Struct_4(var_0.a, var_0.b, u_input.e);
    var var_1 = !select(vec2<bool>(!all(vec3<bool>(false, false, false)), true), !vec2<bool>(all(vec4<bool>(true, false, true, false)), select(true, true, false)), !vec2<bool>(true, all(vec2<bool>(false, false))));
    global1 = array<vec4<u32>, 24>();
    var var_2 = Struct_1(_wgslsmith_clamp_i32(-u_input.a.x ^ _wgslsmith_add_i32(~u_input.b.x, min(u_input.c, 1i)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(firstLeadingBit(u_input.d), ~u_input.b.x), u_input.d), 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1160f))) * _wgslsmith_f_op_f32(-var_0.b.a.x)), abs(9816u), var_0.c.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(max(var_2.b, var_0.b.a.x))))) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.a.x - _wgslsmith_f_op_f32(trunc(var_2.b)))));
}

fn func_1() -> Struct_1 {
    var var_0 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), func_2())), vec3<bool>(true, true, true), select(vec3<bool>(true, !select(false, true, false), all(vec2<bool>(true, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false != (u_input.e.x == 4294967295u), true, true)));
    global1 = array<vec4<u32>, 24>();
    var_0 = !vec3<bool>(true, any(var_0.zz), !all(!vec3<bool>(var_0.x, var_0.x, false)));
    global0 = false;
    global0 = false;
    return Struct_1(u_input.b.x & _wgslsmith_div_i32(_wgslsmith_div_i32(select(2147483647i, u_input.b.x, var_0.x), ~5061i), 58823i), -628f, u_input.e.x, u_input.e.x);
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = -327f;
    var var_1 = ~(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, u_input.a.x, arg_0) << (vec3<u32>(arg_2.c, u_input.e.x, 4294967295u) % vec3<u32>(32u)), max(u_input.b, vec3<i32>(-2147483647i, arg_0, u_input.b.x))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, arg_1.x), _wgslsmith_sub_vec3_u32(vec3<u32>(31151u, u_input.e.x, 50480u), vec3<u32>(1u, arg_1.x, 3853u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.c, 1383u, 13392u), vec3<u32>(u_input.e.x, 48761u, 30674u))) % vec3<u32>(32u))) & firstLeadingBit(_wgslsmith_div_vec3_i32(~u_input.b, firstLeadingBit(u_input.b)));
    let var_2 = !select(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), true, false), select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), true), vec3<bool>(true, arg_2.d > u_input.e.x, false), false), true);
    var_1 = -vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, arg_0), -_wgslsmith_sub_i32(0i, -20915i)), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(57764i, 0i), var_1.zz)), 2147483647i >> ((arg_2.d >> (arg_1.x % 32u)) % 32u));
    var var_3 = _wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(reverseBits(4294967295u), 24u)], ~(vec4<u32>(_wgslsmith_div_u32(1u, arg_1.x), u_input.e.x, u_input.e.x, arg_1.x) ^ global1[_wgslsmith_index_u32(arg_1.x, 24u)]));
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(171f, arg_2.b)) - _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(f32(-1f) * -374f))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b * -954f), -237f)), -685f), 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.b * 1034f), -1563f, var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b + 742f), 1000f))), arg_2.b, -534f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 929f;
    global1 = array<vec4<u32>, 24>();
    let x = u_input.a;
    s_output = func_4(reverseBits(_wgslsmith_sub_i32(-1i, u_input.c)), _wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(min(vec2<u32>(1u, u_input.e.x), vec2<u32>(1u, u_input.e.x)), abs(vec2<u32>(61677u, 4294967295u))), vec2<u32>(abs(u_input.e.x), max(55676u, 1u) << (_wgslsmith_add_u32(u_input.e.x, 38407u) % 32u))), func_1());
}

