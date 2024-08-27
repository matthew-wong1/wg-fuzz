struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
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

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(34165u, vec2<bool>(false, true), 1146f), Struct_1(27807u, vec2<bool>(false, true), -193f), Struct_1(1u, vec2<bool>(false, false), -761f), Struct_1(4294967295u, vec2<bool>(false, true), 883f), Struct_1(0u, vec2<bool>(false, false), 230f), Struct_1(0u, vec2<bool>(false, true), 860f), Struct_1(4294967295u, vec2<bool>(false, false), -1652f), Struct_1(0u, vec2<bool>(false, false), 1000f), Struct_1(0u, vec2<bool>(true, true), -906f), Struct_1(4777u, vec2<bool>(true, true), 830f), Struct_1(0u, vec2<bool>(true, false), 415f), Struct_1(68274u, vec2<bool>(true, true), 126f), Struct_1(7815u, vec2<bool>(true, true), 351f), Struct_1(4294967295u, vec2<bool>(true, false), -1078f), Struct_1(7490u, vec2<bool>(false, true), -301f), Struct_1(40983u, vec2<bool>(false, true), 270f), Struct_1(4294967295u, vec2<bool>(false, true), -1258f), Struct_1(9747u, vec2<bool>(true, true), -602f), Struct_1(42372u, vec2<bool>(true, false), 668f), Struct_1(1u, vec2<bool>(true, false), -607f), Struct_1(4294967295u, vec2<bool>(true, false), 948f), Struct_1(1u, vec2<bool>(false, true), 1245f), Struct_1(1532u, vec2<bool>(true, true), 1809f), Struct_1(20988u, vec2<bool>(false, false), 864f), Struct_1(66776u, vec2<bool>(false, true), -963f), Struct_1(1u, vec2<bool>(true, true), -179f), Struct_1(32158u, vec2<bool>(false, false), -910f), Struct_1(0u, vec2<bool>(false, true), -2665f), Struct_1(1u, vec2<bool>(true, true), 1079f), Struct_1(4294967295u, vec2<bool>(true, false), -1496f), Struct_1(30670u, vec2<bool>(true, true), -2130f), Struct_1(4294967295u, vec2<bool>(false, false), 305f));

var<private> global1: vec2<i32>;

var<private> global2: array<vec4<bool>, 25>;

var<private> global3: array<Struct_1, 31>;

var<private> global4: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-u_input.a.zy, countOneBits(select(u_input.a.xy, u_input.a.yx, false) | (vec2<i32>(0i, -8923i) << (vec2<u32>(u_input.b.x, u_input.e.x) % vec2<u32>(32u))))), abs(vec2<i32>(-1i) * -(~vec2<i32>(u_input.a.x, u_input.c))));
    global4 = u_input.e.x;
    global2 = array<vec4<bool>, 25>();
    global3 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1414f, -1922f), vec2<f32>(859f, 842f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(818f, 789f), vec2<f32>(-319f, -379f))))))), vec2<f32>(678f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f)), _wgslsmith_f_op_f32(step(130f, -801f))))), !vec2<bool>(all(global2[_wgslsmith_index_u32(u_input.b.x, 25u)]) || true, any(vec2<bool>(false, false)))));
    return select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(u_input.b.x < u_input.e.x, false)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec2<bool>(true, all(vec3<bool>(true, true, false))), vec2<bool>(true, true)), var_0 <= countOneBits(var_0)), select(select(vec2<bool>(true, all(vec3<bool>(true, false, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), select(vec2<bool>(global1.x != var_0, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(10185u, func_3(), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(341f, -2199f, true)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1248f, 1000f))))));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0));
    global0 = array<Struct_1, 32>();
    let var_3 = Struct_1(u_input.e.x, vec2<bool>(var_0.b.x, var_1.b.x), _wgslsmith_div_f32(-488f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1504f)) - _wgslsmith_f_op_f32(ceil(361f)))))));
    return Struct_1(u_input.b.x, vec2<bool>(!any(select(var_3.b, vec2<bool>(false, true), var_1.b.x)), var_0.b.x), _wgslsmith_f_op_f32(-var_1.c));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<bool> {
    var var_0 = vec3<u32>(0u, ~firstTrailingBit(66264u), ~_wgslsmith_mod_u32(~107982u, 1u));
    global4 = arg_1.x;
    var var_1 = func_2(arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 1242f, -610f, _wgslsmith_f_op_f32(trunc(arg_0.c)))))));
    let var_2 = Struct_1(~(arg_1.x ^ ~(~33732u)), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.c))));
    let var_3 = Struct_1(_wgslsmith_mult_u32(arg_0.a, max(0u, max(~var_0.x, 131891u))), select(!select(!vec2<bool>(var_1.b.x, var_2.b.x), !vec2<bool>(var_1.b.x, var_1.b.x), vec2<bool>(arg_0.b.x, true)), select(var_1.b, arg_0.b, vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c)))) - var_2.c));
    return select(vec2<bool>(arg_0.a > ~arg_1.x, true), vec2<bool>(var_3.b.x, var_2.b.x), vec2<bool>(select(arg_0.b.x, !var_3.b.x, func_3().x), select(true, true, any(vec2<bool>(var_3.b.x, var_1.b.x))) | (func_3().x && true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(~arg_1.a, func_3(), arg_0.c);
    var var_1 = !arg_0.b.x;
    var var_2 = (select(vec4<i32>(~22900i, _wgslsmith_div_i32(u_input.c, -52767i), -32589i & u_input.a.x, global1.x), abs(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 37148i, -15612i, u_input.c), vec4<i32>(-1i, -29485i, -1i, global1.x))), !vec4<bool>(false, var_0.b.x, false, false)) << (vec4<u32>(firstTrailingBit(1u), 66840u, 24170u, arg_0.a) % vec4<u32>(32u))) << (~(~(~firstTrailingBit(u_input.e))) % vec4<u32>(32u));
    var var_3 = global1.x;
    var_2 = (vec4<i32>(-1i) * -vec4<i32>(global1.x ^ -3702i, reverseBits(u_input.c), 1i, _wgslsmith_mod_i32(42595i, -5028i))) >> ((~vec4<u32>(~var_0.a, 21596u, ~arg_0.a, 0u) >> (u_input.e % vec4<u32>(32u))) % vec4<u32>(32u));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1088f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.c + arg_2.c))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - 1497f) + 1873f), arg_1.c, arg_2.c, -922f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))) || any(!vec3<bool>(true, select(false, true, true), true));
    let var_1 = func_4(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], Struct_1(~(~u_input.e.x), select(select(select(vec2<bool>(var_0, true), vec2<bool>(true, true), false), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, var_0)), select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), var_0)), func_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 32u)], vec2<u32>(0u, 4294967295u)), var_0), 1f), global0[_wgslsmith_index_u32(u_input.e.x, 32u)]);
    let var_2 = _wgslsmith_clamp_vec4_i32(~select(vec4<i32>(u_input.d, u_input.a.x, u_input.d, -43763i) | vec4<i32>(global1.x, global1.x, 18116i, u_input.c), firstLeadingBit(vec4<i32>(u_input.a.x, global1.x, u_input.c, -1i)), global2[_wgslsmith_index_u32(1u, 25u)]) >> (vec4<u32>(countOneBits(u_input.e.x & var_1.a), 70029u, func_2(var_1.c, vec4<f32>(var_1.c, var_1.c, var_1.c, var_1.c)).a ^ abs(u_input.e.x), select(_wgslsmith_dot_vec3_u32(u_input.e.xwy, vec3<u32>(var_1.a, u_input.e.x, u_input.e.x)), ~4074u, true)) % vec4<u32>(32u)), (min(vec4<i32>(-2147483647i, u_input.c, u_input.d, 0i) | vec4<i32>(2147483647i, global1.x, global1.x, global1.x), firstTrailingBit(vec4<i32>(2147483647i, global1.x, 8925i, -42907i))) >> (select(vec4<u32>(var_1.a, var_1.a, 29306u, 50978u), u_input.e, !global2[_wgslsmith_index_u32(var_1.a, 25u)]) % vec4<u32>(32u))) ^ vec4<i32>(reverseBits(-global1.x), countOneBits(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c, 2147483647i), ~u_input.c), -5164i), _wgslsmith_add_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(u_input.c, global1.x), global1.x, global1.x, -46105i), -(select(vec4<i32>(35389i, global1.x, global1.x, 0i), vec4<i32>(0i, -2147483647i, 2147483647i, 27903i), global2[_wgslsmith_index_u32(1u, 25u)]) & ~vec4<i32>(u_input.a.x, 1i, 6552i, 0i))));
    global1 = var_2.yx;
    global0 = array<Struct_1, 32>();
    var var_3 = ~vec3<i32>(firstLeadingBit(global1.x), 1i, -(i32(-1i) * -50361i));
    global3 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

