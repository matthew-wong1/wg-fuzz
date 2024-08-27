struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<i32>(17704i, -45129i, -31946i), vec4<bool>(true, true, true, false), vec3<u32>(12827u, 55605u, 1u), true, vec3<i32>(i32(-2147483648), 1i, 0i)), Struct_1(vec3<i32>(-768i, 2147483647i, -32550i), vec4<bool>(false, true, false, true), vec3<u32>(33520u, 89200u, 29847u), false, vec3<i32>(i32(-2147483648), -1i, 2147483647i)), Struct_1(vec3<i32>(10062i, -1i, 772i), vec4<bool>(false, true, true, true), vec3<u32>(1u, 93892u, 10749u), true, vec3<i32>(2147483647i, i32(-2147483648), 16887i)), Struct_1(vec3<i32>(-33612i, -7839i, -40559i), vec4<bool>(true, true, true, false), vec3<u32>(14413u, 13361u, 0u), false, vec3<i32>(2147483647i, -1i, -20885i)), Struct_1(vec3<i32>(49223i, i32(-2147483648), 1i), vec4<bool>(false, false, true, false), vec3<u32>(36391u, 16282u, 4294967295u), true, vec3<i32>(0i, -1i, 1i)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 77329i), vec4<bool>(true, true, false, false), vec3<u32>(1u, 33375u, 1u), false, vec3<i32>(61688i, 2147483647i, 61337i)), Struct_1(vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec4<bool>(false, false, true, false), vec3<u32>(0u, 60961u, 1u), false, vec3<i32>(i32(-2147483648), -1i, -1i)), Struct_1(vec3<i32>(-1i, 1i, -1i), vec4<bool>(true, false, true, false), vec3<u32>(51324u, 1u, 4248u), true, vec3<i32>(23567i, i32(-2147483648), -16397i)), Struct_1(vec3<i32>(41510i, 0i, 2147483647i), vec4<bool>(false, true, false, false), vec3<u32>(0u, 0u, 34842u), true, vec3<i32>(-1i, -11409i, 45670i)), Struct_1(vec3<i32>(2147483647i, 1i, 0i), vec4<bool>(true, true, false, false), vec3<u32>(4294967295u, 3413u, 0u), true, vec3<i32>(-7491i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 1i), vec4<bool>(true, false, true, false), vec3<u32>(42706u, 4294967295u, 33678u), true, vec3<i32>(1i, 10540i, -1082i)), Struct_1(vec3<i32>(2147483647i, -8120i, i32(-2147483648)), vec4<bool>(false, false, true, true), vec3<u32>(523u, 0u, 1u), true, vec3<i32>(30654i, 0i, 71671i)), Struct_1(vec3<i32>(-42822i, -1i, 2147483647i), vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, 45783u, 4294967295u), true, vec3<i32>(i32(-2147483648), 55424i, 19321i)));

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(14425u, vec4<bool>(false, false, true, true), Struct_2(vec4<bool>(true, false, false, false)), true), Struct_3(28469u, vec4<bool>(false, true, false, true), Struct_2(vec4<bool>(true, true, false, true)), true), Struct_3(45999u, vec4<bool>(true, false, true, true), Struct_2(vec4<bool>(false, true, true, false)), true), Struct_3(0u, vec4<bool>(true, true, true, true), Struct_2(vec4<bool>(false, false, false, false)), false), Struct_3(0u, vec4<bool>(true, false, true, false), Struct_2(vec4<bool>(false, false, false, true)), true), Struct_3(22536u, vec4<bool>(true, false, false, false), Struct_2(vec4<bool>(true, false, false, false)), false), Struct_3(29456u, vec4<bool>(true, false, false, false), Struct_2(vec4<bool>(true, true, false, false)), true), Struct_3(4294967295u, vec4<bool>(true, false, false, true), Struct_2(vec4<bool>(false, true, false, false)), true), Struct_3(55638u, vec4<bool>(true, false, false, true), Struct_2(vec4<bool>(false, false, true, true)), false), Struct_3(10103u, vec4<bool>(false, true, true, false), Struct_2(vec4<bool>(true, false, true, false)), true), Struct_3(4294967295u, vec4<bool>(false, true, false, true), Struct_2(vec4<bool>(false, false, true, false)), true), Struct_3(6168u, vec4<bool>(true, true, false, true), Struct_2(vec4<bool>(true, false, false, false)), false), Struct_3(0u, vec4<bool>(false, true, false, true), Struct_2(vec4<bool>(false, true, true, true)), false), Struct_3(4294967295u, vec4<bool>(true, false, false, true), Struct_2(vec4<bool>(false, true, true, true)), true), Struct_3(4294967295u, vec4<bool>(true, false, true, false), Struct_2(vec4<bool>(false, false, true, true)), false), Struct_3(42592u, vec4<bool>(true, true, false, true), Struct_2(vec4<bool>(false, true, false, false)), false), Struct_3(29662u, vec4<bool>(false, true, true, true), Struct_2(vec4<bool>(true, true, true, false)), true), Struct_3(64218u, vec4<bool>(true, false, true, false), Struct_2(vec4<bool>(false, false, false, false)), false), Struct_3(1u, vec4<bool>(false, true, false, false), Struct_2(vec4<bool>(true, false, true, true)), false), Struct_3(3270u, vec4<bool>(false, false, true, true), Struct_2(vec4<bool>(true, false, false, true)), true), Struct_3(1u, vec4<bool>(true, true, true, false), Struct_2(vec4<bool>(true, false, true, false)), true), Struct_3(1u, vec4<bool>(false, true, false, true), Struct_2(vec4<bool>(true, true, true, true)), false), Struct_3(1u, vec4<bool>(false, false, true, false), Struct_2(vec4<bool>(true, false, false, true)), false), Struct_3(1u, vec4<bool>(true, false, true, false), Struct_2(vec4<bool>(false, false, true, true)), true), Struct_3(41212u, vec4<bool>(false, true, false, true), Struct_2(vec4<bool>(true, false, false, true)), true), Struct_3(31539u, vec4<bool>(false, false, true, false), Struct_2(vec4<bool>(false, true, false, true)), false), Struct_3(76746u, vec4<bool>(false, true, false, true), Struct_2(vec4<bool>(false, false, true, false)), false), Struct_3(0u, vec4<bool>(true, false, false, false), Struct_2(vec4<bool>(false, true, true, false)), true));

var<private> global2: array<vec2<f32>, 32>;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<i32>(46984i, -35037i, -1i), vec4<bool>(true, true, false, true), vec3<u32>(1u, 94509u, 4294967295u), false, vec3<i32>(63841i, -2762i, -49572i)), Struct_1(vec3<i32>(-51054i, -5745i, -1i), vec4<bool>(false, true, false, true), vec3<u32>(0u, 0u, 4294967295u), false, vec3<i32>(5740i, 0i, -1i)), Struct_1(vec3<i32>(0i, 6696i, i32(-2147483648)), vec4<bool>(true, false, false, true), vec3<u32>(16214u, 4294967295u, 17683u), false, vec3<i32>(54664i, -1i, 17630i)), Struct_1(vec3<i32>(-21424i, -40464i, 2147483647i), vec4<bool>(false, true, false, false), vec3<u32>(55403u, 0u, 4294967295u), false, vec3<i32>(1i, 1i, -1i)), Struct_1(vec3<i32>(-1i, -1i, 21653i), vec4<bool>(false, false, false, true), vec3<u32>(33845u, 1u, 14399u), true, vec3<i32>(-4876i, 16616i, 2147483647i)), Struct_1(vec3<i32>(-17229i, -1i, 16209i), vec4<bool>(true, false, false, false), vec3<u32>(921u, 4294967295u, 64353u), false, vec3<i32>(0i, 0i, 69721i)));

var<private> global4: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_div_vec4_i32(~(-(vec4<i32>(-38662i, u_input.a, u_input.a, 0i) | -vec4<i32>(u_input.a, -48503i, u_input.a, 43553i))), vec4<i32>(0i, _wgslsmith_clamp_i32(-2147483647i, -26438i, u_input.a), select(-u_input.a, -2147483647i, true), 29422i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-408f)))) * 112f);
    var_1 = -671f;
    global0 = array<Struct_1, 13>();
    global4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1772f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1299f)), 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2616f) * _wgslsmith_f_op_f32(-701f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -401f) * _wgslsmith_f_op_f32(floor(-446f)))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1037f - _wgslsmith_f_op_f32(step(-806f, _wgslsmith_div_f32(-1230f, -306f)))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = Struct_2(!select(vec4<bool>(true, arg_3.a.x, !arg_3.a.x, any(vec2<bool>(arg_3.a.x, arg_3.a.x))), vec4<bool>(all(vec3<bool>(arg_3.a.x, false, arg_3.a.x)), arg_3.a.x, u_input.b >= u_input.b, any(arg_3.a)), !(!arg_3.a)));
    var var_1 = any(select(!(!select(arg_3.a, arg_3.a, var_0.a)), !arg_3.a, var_0.a));
    var var_2 = 0i;
    global4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(573f - arg_0.x), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)))) + arg_0.x)));
    var var_3 = ~abs(vec2<u32>(u_input.b, ~_wgslsmith_sub_u32(u_input.b, u_input.c.x)));
    return false;
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<u32>, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_2;
    var var_1 = ~(var_0.x << (~(~1u) % 32u)) == 14874u;
    let var_2 = global1[_wgslsmith_index_u32(arg_2.x, 28u)];
    let var_3 = u_input.a;
    global3 = array<Struct_1, 6>();
    return 29943u;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> vec4<bool> {
    let var_0 = vec3<u32>(~u_input.c.x, func_4(vec3<u32>(~23946u, 50288u ^ u_input.d, u_input.d & 4294967295u), !(!func_3(global2[_wgslsmith_index_u32(4294967295u, 32u)], -27493i, -37353i, Struct_2(vec4<bool>(false, true, false, true)))), min(abs(~vec4<u32>(4328u, u_input.c.x, u_input.d, u_input.b)), vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(24296u, u_input.c.x, 0u, 45311u), vec4<u32>(u_input.d, 4831u, u_input.c.x, u_input.b)), countOneBits(u_input.d), ~77498u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x + -432f), -1059f) + vec4<f32>(_wgslsmith_f_op_f32(step(1283f, -1540f)), _wgslsmith_f_op_f32(-2054f - -1071f), -1806f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 4294967295u);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(select(647f, 610f, func_3(_wgslsmith_f_op_vec2_f32(min(global2[_wgslsmith_index_u32(u_input.c.x, 32u)], arg_0.wy)), ~1i, countOneBits(u_input.a), Struct_2(vec4<bool>(false, true, false, true))))), u_input.b < _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, 17944u, 1u), vec4<u32>(1u, 1u, var_0.x, var_0.x)))));
    let var_2 = 13068i;
    var var_3 = Struct_1(vec3<i32>(u_input.a, ~u_input.a, _wgslsmith_mod_i32(_wgslsmith_mod_i32(39009i, -1i), abs(-2147483647i)) << (u_input.d % 32u)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec4<bool>(false, true, false, false)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, true, false)), var_0.x < 15900u, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, true)), vec3<u32>(u_input.b, max(~u_input.d, _wgslsmith_mod_u32(105615u, u_input.b)), 1u) ^ _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(var_0, vec3<u32>(0u, 0u, u_input.d)), abs(vec3<u32>(var_0.x, 4294967295u, 4294967295u)) >> (reverseBits(var_0) % vec3<u32>(32u))), select(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global2[_wgslsmith_index_u32(var_0.x, 32u)]))), _wgslsmith_div_i32(-1i, u_input.a) & 0i, 2147483647i, Struct_2(vec4<bool>(true, true, true, true))), all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(false, false, false, true), true)), ~var_2 != -u_input.a), max(vec3<i32>(abs(~u_input.a), _wgslsmith_mult_i32(u_input.a >> (u_input.b % 32u), 1i), _wgslsmith_div_i32(firstTrailingBit(2147483647i), -75889i)), -(~(vec3<i32>(var_2, -24490i, var_2) | vec3<i32>(2147483647i, 34750i, -35199i)))));
    var var_4 = ~(-1i);
    return vec4<bool>(var_3.d, true, !var_3.b.x, select(!(!var_3.b.x), true, -541f == _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-544f, 554f)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>) -> f32 {
    global4 = _wgslsmith_f_op_f32(min(-360f, 340f));
    var var_0 = Struct_1(vec3<i32>(arg_1.x, arg_1.x, min(_wgslsmith_mod_i32(arg_1.x, 20188i), firstLeadingBit(-9823i))) << (abs(vec3<u32>(u_input.c.x ^ arg_0.a, arg_0.a, select(arg_0.a, 4294967295u, true))) % vec3<u32>(32u)), arg_0.b, abs(select(min(vec3<u32>(arg_0.a, u_input.b, 83252u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 16781u), vec3<u32>(1u, 95363u, 1954u))), vec3<u32>(~arg_0.a, 28404u, ~18882u), all(func_2(vec4<f32>(-118f, -543f, 930f, 282f), 1287f).yy))), false, arg_1 | vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, 45076i), -63646i, arg_1.x));
    global3 = array<Struct_1, 6>();
    global1 = array<Struct_3, 28>();
    var var_1 = Struct_2(vec4<bool>(false, true, !arg_0.d, arg_0.b.x));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-946f - 2105f)))), 1f) - _wgslsmith_f_op_f32(select(-469f, -2287f, func_2(_wgslsmith_div_vec4_f32(vec4<f32>(543f, 1363f, -257f, 547f), vec4<f32>(-117f, -623f, 662f, -2654f)), _wgslsmith_f_op_f32(min(-1192f, 1000f))).x && var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1295f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1490f) + -460f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2120f + _wgslsmith_f_op_f32(390f - -1284f))), -1000f)), -1157f);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -1915f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0.x))))) * _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(min(342f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1556f), _wgslsmith_f_op_f32(func_1()), true)))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_5(Struct_3(select(u_input.b, 26807u, var_1.x != var_1.x), !func_2(vec4<f32>(var_1.x, -153f, 673f, var_0.x), var_1.x), Struct_2(func_2(vec4<f32>(var_0.x, var_1.x, var_0.x, var_1.x), var_1.x)), firstTrailingBit(-45242i) >= u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, -59227i), vec3<i32>(u_input.a, -14527i, 1i)) & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), firstTrailingBit(vec3<i32>(2147483647i, -395i, -3133i))))), var_0.x));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1407f, -446f, var_1.x) + var_1.wzz) * _wgslsmith_f_op_vec3_f32(var_1.wyz + var_1.xww)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_1.yzz * vec3<f32>(var_1.x, -2061f, var_0.x)))), vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(var_0.x - -841f)), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(var_1.x, 601f))))));
    let var_3 = _wgslsmith_div_u32(0u, firstLeadingBit(func_4((vec3<u32>(u_input.c.x, 0u, 4294967295u) | vec3<u32>(1552u, 39425u, u_input.c.x)) >> (vec3<u32>(u_input.b, 80901u, u_input.b) % vec3<u32>(32u)), 9996i <= firstTrailingBit(-24781i), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 7482u, 0u, 23801u), vec4<u32>(27044u, u_input.c.x, 4294967295u, u_input.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1)) * _wgslsmith_f_op_vec4_f32(abs(var_1))))));
    var var_4 = 0u;
    var var_5 = ~firstTrailingBit(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, 1u, 400u, var_3) << (vec4<u32>(11446u, u_input.b, 1u, var_3) % vec4<u32>(32u))), (vec4<u32>(var_3, u_input.b, u_input.c.x, 85464u) << (vec4<u32>(u_input.b, 36379u, 4294967295u, 56333u) % vec4<u32>(32u))) << ((vec4<u32>(var_3, 109521u, var_3, 4294967295u) ^ vec4<u32>(u_input.c.x, 0u, 4294967295u, var_3)) % vec4<u32>(32u))));
    let var_6 = -1928f;
    let var_7 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.www, var_1.xxw, vec3<bool>(true, true, false))) + vec3<f32>(-810f, 1000f, -952f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, var_6, var_1.x))))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -272f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x - 1150f), _wgslsmith_f_op_f32(ceil(157f))))))), ~_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -26088i), vec2<i32>(var_7, 49801i))) ^ vec2<i32>(reverseBits(1i), var_7));
}

