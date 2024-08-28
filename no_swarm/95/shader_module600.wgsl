struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_2 = Struct_2(1u, vec2<u32>(1u, 94194u));

var<private> global2: Struct_1 = Struct_1(vec2<i32>(2147483647i, 40339i));

var<private> global3: array<vec2<f32>, 14>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = 23038i;
    global0 = vec3<i32>(-global0.x, _wgslsmith_sub_i32(var_0, global0.x), ~var_0);
    global3 = array<vec2<f32>, 14>();
    var var_1 = max(~_wgslsmith_div_vec4_u32(~firstLeadingBit(u_input.b), u_input.b), firstLeadingBit(vec4<u32>(u_input.b.x, _wgslsmith_div_u32(1u & global1.b.x, ~global1.b.x), global1.a, u_input.b.x)));
    global2 = Struct_1(vec2<i32>(-global0.x, _wgslsmith_clamp_i32(-1i, -1i, 0i) << (var_1.x % 32u)));
    return Struct_3(Struct_2(u_input.a.x, ~(firstTrailingBit(var_1.xz) >> (abs(global1.b) % vec2<u32>(32u)))), !any(arg_0.yw), Struct_1(-(~_wgslsmith_mult_vec2_i32(global0.yy, global2.a))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_5 {
    var var_0 = _wgslsmith_mod_i32(global0.x << (0u % 32u), -3039i);
    var var_1 = 1000f;
    var var_2 = vec4<bool>(!arg_0.b == ((_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(4294967295u, 13349u, global1.a, global1.a)) << (abs(arg_0.a.b.x) % 32u)) == arg_0.a.a), true, all(select(select(!vec3<bool>(arg_0.b, false, arg_0.b), select(vec3<bool>(false, false, true), vec3<bool>(arg_0.b, true, false), vec3<bool>(arg_0.b, arg_0.b, false)), vec3<bool>(true, false, false)), select(vec3<bool>(arg_0.b, arg_0.b, true), !vec3<bool>(false, arg_0.b, arg_0.b), true), true)), any(!vec2<bool>(arg_0.b || arg_0.b, func_2(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b)).b)));
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -847f))), _wgslsmith_f_op_f32(round(1212f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(663f - 3680f), _wgslsmith_f_op_f32(f32(-1f) * -1437f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-2352f)))), -1384f, true)), vec3<u32>(~u_input.b.x, global1.b.x, u_input.a.x) << (vec3<u32>(~firstLeadingBit(4294967295u), u_input.b.x, ~_wgslsmith_dot_vec2_u32(arg_0.a.b, vec2<u32>(4294967295u, global1.a))) % vec3<u32>(32u)), firstLeadingBit(select(global0.zz, -global2.a, arg_0.a.b.x == 26523u)));
    let var_4 = Struct_1(min(global0.xy, arg_0.c.a));
    return Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-244f, _wgslsmith_f_op_f32(floor(-700f)), _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(ceil(var_3.a.x))) - vec4<f32>(1000f, var_3.a.x, 1000f, _wgslsmith_f_op_f32(-var_3.a.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(var_3.b + _wgslsmith_f_op_f32(-var_3.a.x)), var_3.b) + _wgslsmith_div_vec3_f32(var_3.a, vec3<f32>(_wgslsmith_f_op_f32(var_3.a.x + var_3.b), _wgslsmith_f_op_f32(-var_3.b), -730f))), arg_0, -var_3.d.x);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: i32, arg_3: i32) -> vec4<bool> {
    let var_0 = Struct_1(arg_0.c.c.a);
    var var_1 = vec4<bool>(arg_0.c.b, !func_3(Struct_3(arg_0.c.a, !arg_0.c.b, func_2(vec4<bool>(arg_0.c.b, true, false, true)).c), ~_wgslsmith_mod_vec4_u32(u_input.b, u_input.b)).c.b, !(!arg_0.c.b), func_2(select(vec4<bool>(true, arg_0.c.b, true, any(vec2<bool>(arg_0.c.b, arg_0.c.b))), vec4<bool>(arg_0.c.b, arg_0.c.b && false, !arg_0.c.b, arg_0.c.b), vec4<bool>(arg_0.c.b, arg_0.c.b & true, false, 336f <= arg_0.a.x))).b);
    let var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32((_wgslsmith_mod_vec2_u32(u_input.a.zz, vec2<u32>(u_input.b.x, 1u)) << (global1.b % vec2<u32>(32u))) | _wgslsmith_add_vec2_u32(vec2<u32>(0u, 5044u), vec2<u32>(global1.a, 0u)), vec2<u32>(~(~1u), global1.a)), 1u, select(_wgslsmith_dot_vec4_u32(firstTrailingBit(~u_input.b), vec4<u32>(func_3(arg_0.c, vec4<u32>(arg_1.x, arg_0.c.a.b.x, arg_0.c.a.a, 1u)).c.a.b.x, firstLeadingBit(global1.b.x), _wgslsmith_sub_u32(global1.a, 38243u), 1u)), min(global1.a, func_3(func_3(arg_0.c, vec4<u32>(arg_0.c.a.a, global1.b.x, u_input.b.x, arg_0.c.a.b.x)).c, _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, 62279u, u_input.a.x, 1u))).c.a.b.x), !(var_0.a.x == 16119i) && true));
    let var_3 = -1i;
    let var_4 = 1i;
    return select(!select(!select(vec4<bool>(arg_0.c.b, var_1.x, arg_0.c.b, true), vec4<bool>(arg_0.c.b, true, arg_0.c.b, false), var_1.x), !(!vec4<bool>(arg_0.c.b, true, true, arg_0.c.b)), vec4<bool>(false, var_1.x && true, any(var_1.wyw), any(var_1.wx))), select(vec4<bool>(false, false, true, !(-1i > global0.x)), select(select(!vec4<bool>(var_1.x, true, true, arg_0.c.b), vec4<bool>(var_1.x, arg_0.c.b, false, true), !vec4<bool>(true, false, var_1.x, true)), vec4<bool>(var_1.x, !var_1.x, true, true), -var_4 >= arg_2), select(!select(vec4<bool>(arg_0.c.b, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, arg_0.c.b, false), vec4<bool>(arg_0.c.b, true, arg_0.c.b, false)), !(!vec4<bool>(var_1.x, true, arg_0.c.b, arg_0.c.b)), !vec4<bool>(true, true, var_1.x, true))), arg_0.c.b | any(select(vec2<bool>(arg_0.c.b, arg_0.c.b), select(var_1.yy, var_1.wx, var_1.x), vec2<bool>(false, true))));
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1799f) * 1000f)), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(0u, global1.b), arg_0.x, Struct_1(global2.a)), vec4<u32>(global1.b.x, u_input.a.x, 59933u, global1.a)).b.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1273f, -563f)))), -1387f), 579f, select(~(vec3<u32>(58614u, u_input.b.x, 14818u) >> (vec3<u32>(25843u, 1u, 0u) % vec3<u32>(32u))), ~vec3<u32>(u_input.b.x, min(1u, 0u), 20875u), !(!(!arg_0.x))), -vec2<i32>(func_2(vec4<bool>(arg_0.x, false, false, arg_0.x)).c.a.x, min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global2.a.x, global2.a.x), vec3<i32>(2147483647i, global2.a.x, -7622i)))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.x, -624f, var_0.a.x, 495f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b, -459f, var_0.a.x, 1000f), vec4<f32>(797f, var_0.b, -190f, 1281f)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b, var_0.a.x, -1309f, -1542f), vec4<f32>(-1320f, -1219f, var_0.b, 621f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1385f, var_0.a.x, var_0.a.x, var_0.a.x))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.a.x), vec4<f32>(var_0.b, 817f, -249f, -294f)))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b, var_0.a.x, -987f, 1000f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), -152f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, func_3(Struct_3(Struct_2(4294967295u, vec2<u32>(u_input.b.x, 2636u)), true, Struct_1(vec2<i32>(global0.x, u_input.c))), u_input.b).b.x, -408f))), Struct_3(Struct_2(select(u_input.b.x >> (var_0.c.x % 32u), ~var_0.c.x, any(vec4<bool>(false, arg_0.x, true, true))), reverseBits(vec2<u32>(global1.b.x, global1.a))), arg_0.x, Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 26678i), vec2<i32>(2147483647i, u_input.c)))), min(_wgslsmith_div_i32(-30900i, global0.x), var_0.d.x));
    var var_2 = func_3(var_1.c, vec4<u32>(6350u, ~u_input.b.x, 0u, reverseBits(~_wgslsmith_clamp_u32(u_input.a.x, var_0.c.x, 4294967295u))));
    let var_3 = var_0.b;
    let var_4 = func_2(arg_0).c;
    return var_1.c.c;
}

fn func_1(arg_0: i32) -> f32 {
    global3 = array<vec2<f32>, 14>();
    let var_0 = u_input.a;
    global2 = func_5(!func_4(func_3(func_2(vec4<bool>(true, false, true, false)), _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(1u, var_0.x, 31056u, 0u))), global1.b, u_input.c, 2147483647i));
    var var_1 = var_0 >> (select(vec3<u32>(_wgslsmith_mult_u32(~u_input.b.x, countOneBits(0u)), 0u | ~var_0.x, ~_wgslsmith_mod_u32(u_input.a.x, 26532u)), ~(~var_0), vec3<bool>(func_3(Struct_3(Struct_2(50988u, u_input.b.ww), true, Struct_1(vec2<i32>(arg_0, u_input.c))), countOneBits(u_input.b)).c.b, _wgslsmith_f_op_f32(step(1000f, 1229f)) < _wgslsmith_f_op_f32(ceil(1444f)), true)) % vec3<u32>(32u));
    let var_2 = select(!vec3<bool>(false, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false)), true), vec3<bool>(true, select(any(vec4<bool>(true, true, true, true)), 1u == global1.a, false), func_3(func_2(vec4<bool>(false, false, true, false)), ~u_input.b).c.b | (14177u >= _wgslsmith_add_u32(var_0.x, 1699u))), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-861f, _wgslsmith_f_op_f32(-157f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(711f + 557f))) - _wgslsmith_f_op_f32(-639f - _wgslsmith_f_op_f32(max(-132f, 1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(125f - 467f), _wgslsmith_f_op_f32(-1000f * -214f))), _wgslsmith_f_op_f32(func_1(0i)))) * -171f);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = u_input.a;
    var var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, -629f, 1048f, 981f), vec4<f32>(var_0, 350f, var_0, var_1)) + _wgslsmith_div_vec4_f32(vec4<f32>(-826f, -1537f, var_1, var_0), vec4<f32>(var_0, var_1, 1573f, -250f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -1557f, var_0))))) - vec4<f32>(var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(255f + -293f))), var_0, func_3(Struct_3(Struct_2(1u, vec2<u32>(112522u, 25433u)), false, Struct_1(global0.xz)), ~vec4<u32>(1u, 1u, 24108u, global1.a)).a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_1, 131f), vec3<f32>(1561f, 588f, 970f), vec3<bool>(true, false, false)))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_1)) * vec3<f32>(var_1, var_0, -1172f))))), Struct_3(func_3(Struct_3(Struct_2(global1.a, global1.b), false, Struct_1(global0.zy)), u_input.b).c.a, !(true && (u_input.c <= global2.a.x)), func_3(Struct_3(func_2(vec4<bool>(false, false, true, true)).a, global2.a.x > -74281i, func_2(vec4<bool>(true, false, true, true)).c), vec4<u32>(~4294967295u, ~global1.b.x, _wgslsmith_sub_u32(global1.a, 4294967295u), firstLeadingBit(u_input.b.x))).c.c), 16439i);
    let var_4 = _wgslsmith_mod_i32(-48814i, var_3.d);
    global1 = Struct_2(~42592u, var_2.yx);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(func_4(func_3(Struct_3(var_3.c.a, var_3.c.b, Struct_1(global0.yx)), u_input.b), select(reverseBits(vec2<u32>(u_input.b.x, 9277u)), _wgslsmith_mult_vec2_u32(u_input.a.xz, var_2.zx), var_3.c.b), 33894i, countOneBits(~var_3.c.c.a.x))).c.a.x);
}

