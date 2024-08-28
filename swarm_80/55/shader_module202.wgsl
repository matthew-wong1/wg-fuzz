struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: u32 = 75925u;

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_1(24100i, vec3<i32>(-102i, 2147483647i, -29967i), 0i, -24437i, true)), Struct_3(Struct_1(-8493i, vec3<i32>(-1i, 33127i, 0i), i32(-2147483648), 29815i, false)), Struct_3(Struct_1(-2869i, vec3<i32>(17873i, -1i, 37549i), 43828i, -1i, false)), Struct_3(Struct_1(-1i, vec3<i32>(-1i, -6442i, 0i), -37832i, -46847i, false)), Struct_3(Struct_1(0i, vec3<i32>(46944i, 21158i, -1i), 83218i, 4580i, true)), Struct_3(Struct_1(0i, vec3<i32>(1i, 2147483647i, i32(-2147483648)), 0i, 10047i, true)), Struct_3(Struct_1(22143i, vec3<i32>(17722i, 32634i, 1i), -5818i, -42130i, true)), Struct_3(Struct_1(-41115i, vec3<i32>(2147483647i, 22776i, -8242i), 0i, 1i, true)), Struct_3(Struct_1(-1i, vec3<i32>(45188i, i32(-2147483648), -27960i), -44522i, -1i, false)), Struct_3(Struct_1(73273i, vec3<i32>(-33353i, 24724i, -1i), -1i, -1479i, false)), Struct_3(Struct_1(45221i, vec3<i32>(-37233i, 28538i, 27751i), 1i, i32(-2147483648), true)), Struct_3(Struct_1(i32(-2147483648), vec3<i32>(4534i, 2147483647i, 19688i), 0i, 46605i, true)), Struct_3(Struct_1(53014i, vec3<i32>(0i, -7295i, -1i), i32(-2147483648), i32(-2147483648), false)), Struct_3(Struct_1(-24000i, vec3<i32>(-4541i, -5962i, 9380i), -1i, 2147483647i, false)), Struct_3(Struct_1(-1i, vec3<i32>(12485i, 20199i, 28658i), 0i, 4519i, true)), Struct_3(Struct_1(59645i, vec3<i32>(0i, 30588i, 8154i), 41109i, 0i, false)));

var<private> global3: Struct_5 = Struct_5(vec3<u32>(1u, 100798u, 38959u), Struct_4(vec2<f32>(1299f, 521f), Struct_1(1830i, vec3<i32>(0i, -1i, 39856i), -12788i, 0i, true), Struct_1(i32(-2147483648), vec3<i32>(1i, 0i, 0i), 1i, 0i, true)), false, -1440f);

var<private> global4: Struct_4;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    let var_0 = ~vec2<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c.x, global3.a.x) | u_input.c.x, _wgslsmith_add_u32(global3.a.x, ~0u)));
    return ~abs(u_input.c.x);
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global4.a * global3.b.a), global0.a, global4.c.e && any(!vec3<bool>(global3.c, true, true)))), Struct_1(min(_wgslsmith_clamp_i32(35699i, -47329i, global3.b.b.c), _wgslsmith_div_i32(_wgslsmith_sub_i32(global3.b.c.a, 1i), global0.c.d)), vec3<i32>(_wgslsmith_add_i32(global4.b.a, global4.b.b.x), ~27805i, abs(min(-69882i, 1i))), ~(-_wgslsmith_add_i32(u_input.b, global3.b.c.d)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 4818i), global3.b.b.b.yz), ~global3.b.c.b.yz), vec2<i32>(-1i, 1i)), global4.c.e), Struct_1(select(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.b), 1i), _wgslsmith_mult_i32(countOneBits(-64830i), _wgslsmith_div_i32(-2147483647i, u_input.b)), all(vec2<bool>(true, true))), vec3<i32>(u_input.a.x << (u_input.c.x % 32u), firstTrailingBit(global0.c.d), global3.b.c.d), global4.c.a, global0.c.c, global0.b.e));
    var var_1 = _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(global3.b.b.d, global0.c.a, _wgslsmith_clamp_i32(select(0i, var_0.b.c, true), ~(-1i), -22557i))), ~(~global3.b.c.b));
    global0 = global3.b;
    global1 = ~abs(select(_wgslsmith_add_u32(4294967295u, min(u_input.c.x, global3.a.x)), global3.a.x, true));
    return !vec4<bool>(all(select(select(vec4<bool>(true, global4.c.e, false, global4.c.e), vec4<bool>(global4.c.e, var_0.b.e, global3.b.b.e, global0.c.e), vec4<bool>(true, global0.c.e, global3.c, arg_0)), !vec4<bool>(global3.c, false, true, false), vec4<bool>(var_0.c.e, true, false, true))), all(!(!vec2<bool>(global4.c.e, true))), (all(vec3<bool>(arg_0, global4.b.e, true)) | true) && all(select(vec3<bool>(arg_0, var_0.b.e, global3.c), vec3<bool>(false, arg_0, arg_0), global0.b.e)), global4.c.e || !(global0.b.e & false));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: vec4<bool>) -> u32 {
    global2 = array<Struct_3, 16>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-858f, _wgslsmith_f_op_f32(abs(global0.a.x))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.b.a.x), _wgslsmith_f_op_f32(1321f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.b.a.x)) * _wgslsmith_f_op_f32(floor(-342f)))))));
    let var_1 = Struct_3(arg_2.c);
    var var_2 = Struct_3(var_1.a);
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.x, -543f)), _wgslsmith_f_op_vec2_f32(max(global0.a, global0.a))))), Struct_1(_wgslsmith_dot_vec2_i32(global0.c.b.zy, global0.b.b.yz), -reverseBits(global4.b.b), -var_1.a.d, 2147483647i, true), global4.c);
    return 42919u;
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~u_input.c.x, func_2(u_input.a.x, true, vec3<bool>(true, global0.b.e, global0.b.e)), ~global3.a.x), 29291u, 51874u, 4294967295u >> (0u % 32u)), vec4<u32>(func_4(~global3.a.x, false, Struct_2(vec4<u32>(1u, 1u, u_input.c.x, global3.a.x), global0.b.e, global0.b, global3.a.x, global0.c.b.xz), func_3(global3.c)), 1u | u_input.c.x, 1u, _wgslsmith_add_u32(global3.a.x, 4294967295u) << (~u_input.c.x % 32u))), !any(vec4<bool>(global4.b.e && true, func_3(false).x, true, -31547i >= global0.c.c)), Struct_1(~1i, global0.c.b, global3.b.c.c, global4.c.c, !(false && global3.c) & (_wgslsmith_f_op_f32(-global4.a.x) <= _wgslsmith_f_op_f32(1193f + global3.d))), _wgslsmith_sub_u32(~_wgslsmith_add_u32(u_input.c.x, ~u_input.c.x), ~0u), global4.c.b.xy);
    global4 = global3.b;
    let var_1 = (any(vec3<bool>(var_0.d >= 4294967295u, true, all(vec2<bool>(var_0.c.e, false)))) & false) || !global4.c.e;
    global4 = global3.b;
    let var_2 = true;
    return vec3<bool>(true, var_0.c.e, var_0.c.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(select(func_1(), select(select(vec3<bool>(true, false, global3.c), vec3<bool>(global4.b.e, true, false), vec3<bool>(true, global3.b.b.e, false)), func_3(global0.b.e).wzx, !global0.c.e), all(vec2<bool>(true, true))));
    var_0 = !(global0.b.e || true);
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1061f, global4.a.x, 499f, global4.a.x)));
    global1 = abs(~(global3.a.x >> (select(u_input.c.x, countOneBits(36306u), all(vec3<bool>(true, false, global3.b.b.e))) % 32u)));
    global3 = Struct_5(reverseBits(vec3<u32>(_wgslsmith_add_u32(34514u, max(global3.a.x, u_input.c.x)), _wgslsmith_mult_u32(u_input.c.x, 2636u) << ((global3.a.x ^ global3.a.x) % 32u), reverseBits(33876u))), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(244f, global3.d) + var_1.xz)))), global4.b, global4.c), select(any(!select(vec4<bool>(global0.b.e, true, global4.c.e, false), vec4<bool>(false, true, false, global0.c.e), false)), !(!(false | global3.b.b.e)), func_3(-34576i == -global0.b.b.x).x), _wgslsmith_div_f32(global0.a.x, -315f));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(198f, var_1.x, 374f, 250f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, -228f, var_1.x, -1403f))) + vec4<f32>(_wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(step(966f, global0.a.x)), -903f, _wgslsmith_f_op_f32(f32(-1f) * -263f)))));
    let var_3 = Struct_2(vec4<u32>(2586u, _wgslsmith_mult_u32(firstTrailingBit(countOneBits(71231u)), ~(~u_input.c.x)), _wgslsmith_dot_vec3_u32(~(~global3.a), ~(~global3.a)), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c.x, 26246u), global3.a.x) | u_input.c.x), ((38017u & global3.a.x) | ~(~1u)) >= ~firstLeadingBit(global3.a.x ^ global3.a.x), global4.b, ~global3.a.x, abs(min(-firstLeadingBit(global4.b.b.yy), -abs(vec2<i32>(-2147483647i, u_input.b)))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(639f + _wgslsmith_f_op_f32(-228f - _wgslsmith_f_op_f32(trunc(global4.a.x)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-921f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-385f, var_1.x) * global4.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, global0.a.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_1.x * var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -894f)))))), 66134u);
}

