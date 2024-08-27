struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(true, Struct_2(Struct_1(vec4<u32>(31480u, 0u, 1u, 74901u), vec4<u32>(12905u, 2352u, 1u, 0u), vec2<i32>(0i, -1i), vec3<u32>(0u, 4294967295u, 4294967295u), 1i), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<bool>(false, true, false), Struct_1(vec4<u32>(0u, 90082u, 46130u, 31336u), vec4<u32>(0u, 77968u, 42921u, 0u), vec2<i32>(2147483647i, -19881i), vec3<u32>(30405u, 11067u, 62151u), -1i)), vec2<u32>(15356u, 4294967295u));

var<private> global1: f32 = -605f;

var<private> global2: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(1i, 26425i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, -37757i, 1774i, 2147483647i), vec4<i32>(36811i, 0i, 8263i, -1i), vec4<i32>(29948i, -4546i, 12599i, 1i), vec4<i32>(-19215i, 2147483647i, -29329i, 2147483647i), vec4<i32>(49040i, 2147483647i, 15822i, 2147483647i), vec4<i32>(-10357i, 0i, 3077i, 1i), vec4<i32>(7446i, -42384i, -7730i, 2147483647i), vec4<i32>(5175i, -29035i, 2147483647i, -13230i), vec4<i32>(-1733i, 2147483647i, 14888i, 1i), vec4<i32>(77040i, -76296i, 76453i, 0i), vec4<i32>(1268i, -25938i, -12404i, 0i), vec4<i32>(-2710i, 3042i, 0i, -20400i), vec4<i32>(1960i, -45808i, 16152i, 0i), vec4<i32>(2147483647i, 2147483647i, 0i, 1i), vec4<i32>(-21935i, -1i, 2147483647i, 1434i), vec4<i32>(i32(-2147483648), 9078i, i32(-2147483648), -12976i), vec4<i32>(-623i, 2147483647i, -1i, 2147483647i), vec4<i32>(2147483647i, 2595i, 0i, i32(-2147483648)), vec4<i32>(10810i, 13577i, -39834i, -67545i), vec4<i32>(16916i, 69345i, 18118i, 0i), vec4<i32>(-16140i, -30024i, -6554i, 3749i), vec4<i32>(53602i, 2147483647i, i32(-2147483648), 69413i), vec4<i32>(-53358i, 1i, 2147483647i, 61569i), vec4<i32>(41419i, -1i, 1i, -1i), vec4<i32>(-1394i, 1i, 58006i, 47891i), vec4<i32>(0i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(19092i, 1i, 15865i, 16703i));

var<private> global3: vec2<i32>;

var<private> global4: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = Struct_3(~firstTrailingBit(_wgslsmith_mult_vec4_i32(-global2[_wgslsmith_index_u32(57658u, 28u)], vec4<i32>(-32733i, arg_0.x, global3.x, 76402i))), Struct_1(vec4<u32>(~1u ^ global0.b.b.x, (56036u << (global0.b.a.d.x % 32u)) << (~global0.c.x % 32u), 11466u, min(~global0.b.d.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 0u, global0.b.d.a.x, 69163u), vec4<u32>(arg_2.d.x, 0u, arg_2.d.x, global0.c.x)))), arg_2.b, arg_2.c >> (global0.c % vec2<u32>(32u)), vec3<u32>(~global0.c.x, u_input.d, _wgslsmith_clamp_u32(45523u, _wgslsmith_div_u32(global0.b.b.x, global0.c.x), u_input.c.x << (4294967295u % 32u))), _wgslsmith_mult_i32(firstLeadingBit(-1i), countOneBits(~global0.b.a.c.x))), _wgslsmith_dot_vec3_u32(global0.b.d.b.wwz, _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.d, 19258u, 0u), arg_2.b.zyz)), global0.b.d.a.x, vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), arg_1));
    var var_1 = min(arg_0.x, global3.x);
    var var_2 = -abs(vec2<i32>(_wgslsmith_add_i32(arg_2.c.x, -1i) & arg_0.x, 32762i));
    var_2 = firstTrailingBit(~abs(vec2<i32>(global0.b.a.c.x, -2147483647i)));
    var_0 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, arg_2.b.x), u_input.a.yy, false) ^ var_0.b.d.xz, vec2<u32>(~u_input.d, var_0.b.b.x)), var_0.c), 28u)], Struct_1(~firstTrailingBit(vec4<u32>(118015u, arg_2.d.x, arg_2.b.x, global0.b.a.d.x)), vec4<u32>(global0.c.x, ~global0.b.a.a.x << (global0.b.a.a.x % 32u), 0u, 4294967295u), countOneBits(-vec2<i32>(-2147483647i, arg_0.x)), ~global0.b.b, -min(0i, -39219i)), global0.b.a.a.x, _wgslsmith_dot_vec4_u32(arg_2.b, global0.b.d.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.e))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2296f, var_0.e.x), vec2<f32>(arg_1, var_0.e.x))))));
    return var_0.b.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_5) -> bool {
    let var_0 = true;
    let var_1 = false;
    var var_2 = ~(~(global0.b.a.b >> (func_3(firstTrailingBit(arg_2.e.a.zwx), _wgslsmith_f_op_f32(-590f + -1685f), global0.b.d) % vec4<u32>(32u))));
    let var_3 = Struct_5(-1032f > arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, arg_2.d.x)) * _wgslsmith_f_op_f32(426f + arg_1)), _wgslsmith_f_op_f32(ceil(-142f)))), 21988i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.e.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b, arg_2.d.x) * arg_2.e.e))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 215f) - _wgslsmith_f_op_f32(-arg_1)), -526f)), arg_2.e);
    let var_4 = _wgslsmith_sub_vec2_i32(arg_2.e.a.zz, reverseBits(arg_2.e.b.c)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(~var_2.x, 1486u), ~_wgslsmith_add_vec2_u32(~arg_2.e.b.d.xz, vec2<u32>(arg_2.e.b.b.x, var_3.e.b.a.x))) % vec2<u32>(32u));
    return true;
}

fn func_1(arg_0: f32) -> vec4<bool> {
    let var_0 = global3.x;
    var var_1 = !(any(global0.b.c) | func_2(global2[_wgslsmith_index_u32(global0.b.d.a.x, 28u)], _wgslsmith_f_op_f32(f32(-1f) * -238f), Struct_5(global0.b.c.x && global0.a, _wgslsmith_f_op_f32(arg_0 - 1116f), 0i, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, arg_0))), Struct_3(vec4<i32>(-62701i, -2147483647i, global0.b.a.e, 22312i), Struct_1(vec4<u32>(global0.c.x, global0.b.d.d.x, global0.c.x, 17139u), global0.b.a.a, global0.b.a.c, u_input.a, global0.b.a.c.x), 57105u, u_input.a.x, vec2<f32>(arg_0, -1000f)))));
    global2 = array<vec4<i32>, 28>();
    let var_2 = Struct_5(false & select(true, true, func_2(abs(vec4<i32>(global0.b.a.c.x, global0.b.a.e, -1i, -2147483647i)), -1059f, Struct_5(global0.b.c.x, 901f, 30129i, vec2<f32>(872f, arg_0), Struct_3(vec4<i32>(global3.x, 19911i, global0.b.a.c.x, u_input.b), Struct_1(vec4<u32>(u_input.e, u_input.d, u_input.e, global0.c.x), global0.b.a.b, vec2<i32>(12800i, u_input.b), vec3<u32>(47785u, 7616u, u_input.d), 1i), global0.b.d.d.x, u_input.e, vec2<f32>(arg_0, 624f))))), _wgslsmith_f_op_f32(-1016f * 279f), u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 177f) * vec2<f32>(1849f, -790f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1615f, -1590f), vec2<f32>(arg_0, -109f), global0.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, arg_0))))), Struct_3(-abs(global2[_wgslsmith_index_u32(100828u, 28u)]) << (global0.b.a.a % vec4<u32>(32u)), global0.b.a, 1u, ~21018u, vec2<f32>(_wgslsmith_f_op_f32(min(506f, arg_0)), -229f)));
    var var_3 = global0.b.d;
    return select(vec4<bool>(var_2.a, _wgslsmith_clamp_i32(~0i, ~global3.x, -9380i) <= 24508i, true, _wgslsmith_f_op_f32(round(arg_0)) >= _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-854f - var_2.b))), select(vec4<bool>(!global0.b.c.x, !var_2.a | any(global0.b.c.zz), true, true & (u_input.b <= var_2.e.a.x)), select(vec4<bool>(all(vec2<bool>(global0.b.c.x, global0.a)), var_2.e.d <= 0u, true, true | var_2.a), !select(vec4<bool>(true, var_2.a, false, var_2.a), vec4<bool>(var_2.a, global0.a, global0.a, true), global0.a), vec4<bool>(1i < global0.b.d.c.x, any(vec3<bool>(global0.b.c.x, true, false)), any(vec4<bool>(true, true, global0.a, true)), all(global0.b.c.xz))), select(select(!vec4<bool>(false, true, global0.b.c.x, false), vec4<bool>(false, true, true, global0.a), vec4<bool>(global0.b.c.x, global0.a, true, false)), vec4<bool>(all(vec4<bool>(false, false, var_2.a, global0.b.c.x)), global3.x != var_2.e.a.x, true, var_2.a), vec4<bool>(false, false | global0.b.c.x, all(vec4<bool>(global0.a, global0.b.c.x, var_2.a, false)), true))), ~(~_wgslsmith_dot_vec4_u32(var_3.b, vec4<u32>(u_input.a.x, 72805u, var_3.a.x, var_3.b.x))) >= 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, false, global0.a | !any(vec3<bool>(global0.b.c.x, true, true)), global0.a);
    let var_1 = global0.c.x;
    global3 = -vec2<i32>(u_input.b ^ _wgslsmith_mod_i32(u_input.b, ~(-18084i)), global3.x);
    var_0 = select(vec4<bool>(false, all(select(func_1(-1181f), !vec4<bool>(true, false, false, var_0.x), var_0.x)), true, !func_2(vec4<i32>(-1i, global0.b.a.e, global0.b.d.e, 32674i), _wgslsmith_f_op_f32(-143f * -602f), Struct_5(true, -1000f, global3.x, vec2<f32>(-164f, 749f), Struct_3(global2[_wgslsmith_index_u32(u_input.d, 28u)], global0.b.a, u_input.a.x, 1u, vec2<f32>(-605f, 1116f))))), !vec4<bool>(var_0.x, !any(global0.b.c), select(u_input.e, global0.b.d.b.x, true) <= min(43202u, global0.b.b.x), var_0.x), true);
    var var_2 = global0.b;
    global1 = _wgslsmith_f_op_f32(ceil(-423f));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b), -vec3<i32>(-2147483647i, global0.b.d.c.x, var_2.d.e), _wgslsmith_div_vec3_i32(vec3<i32>(16670i, u_input.b, global0.b.d.e), vec3<i32>(1i, var_2.d.c.x, 2147483647i))), vec3<i32>(~0i, _wgslsmith_clamp_i32(global3.x, u_input.b, var_2.a.e), u_input.b)), abs(-u_input.b));
}

