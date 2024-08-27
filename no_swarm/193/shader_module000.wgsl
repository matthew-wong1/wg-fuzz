struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(78563u, 0u, 50778u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(37635u, 13735u, 1u), vec3<u32>(3541u, 2582u, 30720u), vec3<u32>(0u, 61322u, 14853u), vec3<u32>(49813u, 0u, 1u), vec3<u32>(70272u, 0u, 29081u), vec3<u32>(31037u, 0u, 42753u), vec3<u32>(5467u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 571u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(36552u, 0u, 54430u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(53886u, 1u, 1u), vec3<u32>(10899u, 1u, 26291u), vec3<u32>(0u, 4294967295u, 69041u), vec3<u32>(6235u, 4294967295u, 8272u), vec3<u32>(0u, 63353u, 112836u), vec3<u32>(0u, 4294967295u, 39304u), vec3<u32>(4294967295u, 56234u, 13565u), vec3<u32>(7484u, 7983u, 0u), vec3<u32>(0u, 1u, 6392u), vec3<u32>(3600u, 0u, 4294967295u), vec3<u32>(84518u, 17589u, 32239u), vec3<u32>(1u, 6509u, 28315u), vec3<u32>(0u, 19543u, 32936u), vec3<u32>(10639u, 0u, 20423u), vec3<u32>(4294967295u, 1u, 22403u), vec3<u32>(1u, 72750u, 56523u));

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-1000f, -357f), -1i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    global0 = array<vec3<u32>, 29>();
    var var_0 = 39110u;
    let var_1 = select(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-42212i, u_input.c, 2147483647i, -1i), vec4<i32>(global1.b, -1i, u_input.c, -9373i)), abs(vec4<i32>(global1.b, 10245i, global1.b, u_input.c))), abs(vec4<i32>(u_input.c, global1.b, -1i, global1.b) >> (vec4<u32>(u_input.b, 44436u, u_input.a, 8479u) % vec4<u32>(32u)))), abs(vec4<i32>(u_input.c, global1.b, -14432i, _wgslsmith_sub_i32(u_input.c, -18522i)))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -54748i, -21545i), firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, global1.b), vec2<i32>(global1.b, 0i)))), -1i, 11403i, abs(global1.b)), select(select(!arg_0, arg_0, arg_0), vec4<bool>(arg_0.x, any(vec2<bool>(arg_0.x, true)) & !arg_0.x, !select(arg_0.x, false, false), all(vec4<bool>(true, arg_0.x, arg_0.x, false))), true));
    let var_2 = false;
    global0 = array<vec3<u32>, 29>();
    return _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(224f + global1.a.x)));
}

fn func_2() -> f32 {
    global0 = array<vec3<u32>, 29>();
    global0 = array<vec3<u32>, 29>();
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-173f, -234f, global1.a.x, -1000f)))))), vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(-869f - -2183f)), -1668f))));
    var var_1 = vec4<i32>(global1.b, i32(-1i) * -60132i, firstLeadingBit(-(global1.b | u_input.c)), ~global1.b) & ~vec4<i32>(-reverseBits(2147483647i), -1i, -46547i, _wgslsmith_mod_i32(-29337i, u_input.c) ^ 11666i);
    var var_2 = -(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(-var_1.yw, var_1.yx), select(vec2<i32>(-14131i, 1i), vec2<i32>(var_1.x, u_input.c), true)) << (select(abs(_wgslsmith_add_vec2_u32(vec2<u32>(47704u, u_input.b), vec2<u32>(u_input.b, u_input.a))), vec2<u32>(_wgslsmith_mult_u32(1u, 75185u), _wgslsmith_div_u32(u_input.b, u_input.a)), select(vec2<bool>(true, false), vec2<bool>(true, true), true)) % vec2<u32>(32u)));
    return 2493f;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_1(vec2<f32>(2649f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global1.a.x))))), var_0.b);
    var_0 = arg_1;
    let var_3 = true;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(func_2())), var_2.a.x);
}

fn func_4(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.a.x, global1.a.x)) - vec3<f32>(596f, arg_0, 528f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1764f + arg_0)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(1f * global1.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_0, -1564f)), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(func_1(1179f, Struct_1(global1.a, arg_1.x))))))));
    global0 = array<vec3<u32>, 29>();
    var var_1 = Struct_1(global1.a, global1.b);
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -598f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.a.x, arg_0), _wgslsmith_f_op_vec2_f32(select(var_1.a, vec2<f32>(arg_0, -229f), vec2<bool>(false, true)))) * var_0.yx)), 2147483647i & -arg_1.x);
    var var_2 = !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-626f, -1000f)), 1570f) - vec2<f32>(_wgslsmith_f_op_f32(max(1339f, var_1.a.x)), _wgslsmith_f_op_f32(-1169f + var_0.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 480f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-350f, var_0.x)))))), select(i32(-1i) * -69243i, arg_1.x, true) ^ u_input.c);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec3<u32>, 29>();
    global0 = array<vec3<u32>, 29>();
    let var_0 = 2147483647i;
    var var_1 = all(vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, true)) & false;
    let var_2 = min(~vec2<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, u_input.b), vec2<u32>(1u, u_input.b), false), vec2<u32>(u_input.b, 0u)), u_input.a), firstTrailingBit(vec2<u32>(71935u, u_input.a)));
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a, abs(24943i));
    let var_1 = vec3<bool>(!all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false))), true, 1i != ((max(1i, arg_1.b) & 1i) << ((_wgslsmith_mult_u32(u_input.b, u_input.a) ^ countOneBits(u_input.a)) % 32u)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-993f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-951f - -2356f))))), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(_wgslsmith_f_op_f32(select(global1.a.x, _wgslsmith_f_op_f32(func_1(-196f, Struct_1(vec2<f32>(499f, global1.a.x), global1.b))), true)), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.b, 1i), ~vec2<i32>(31322i, -28276i)))), func_4(249f, vec2<i32>(-2147483647i, ~global1.b) & select(~vec2<i32>(u_input.c, 21174i), vec2<i32>(u_input.c, -33717i), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    var var_1 = vec2<f32>(1847f, -284f);
    global1 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1114f, -382f), -910f)), var_0.b));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)), func_5(Struct_1(vec2<f32>(_wgslsmith_div_f32(-870f, var_1.x), var_1.x), (var_0.b | var_0.b) << (~u_input.a % 32u))).a.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1266f));
    let var_3 = Struct_1(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1208f * _wgslsmith_f_op_f32(func_2()))))), 41365i);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-420f, var_1.x)))) - global1.a) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a.x, var_3.a.x)) - 490f), 420f)), select(var_0.b, global1.b, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    var_4 = func_5(Struct_1(vec2<f32>(global1.a.x, -1040f), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-1i, min(-2147483647i, -1314i), _wgslsmith_mod_i32(var_0.b, 0i)), u_input.c | _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b, 5877i, -2147483647i, -2147483647i), vec4<i32>(u_input.c, var_0.b, var_4.b, var_3.b)))));
    let var_5 = func_5(func_4(_wgslsmith_f_op_f32(step(var_4.a.x, 340f)), abs(~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, var_0.b), vec2<i32>(-8930i, var_0.b)))));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x))) + var_4.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~vec4<u32>(69405u, u_input.b, u_input.a, u_input.a) << (vec4<u32>(4294967295u, 80363u, 18499u, 2936u) % vec4<u32>(32u))), vec3<u32>(15121u, 61921u, 87521u));
}

