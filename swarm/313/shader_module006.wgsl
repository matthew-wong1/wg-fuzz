struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-322f, 514f), vec2<f32>(-1342f, -641f), vec2<f32>(-366f, 651f), vec2<f32>(-356f, -457f), vec2<f32>(-1000f, -1000f), vec2<f32>(533f, 1000f), vec2<f32>(-515f, -499f), vec2<f32>(-816f, 933f), vec2<f32>(-729f, -2447f), vec2<f32>(869f, -1208f), vec2<f32>(-1154f, 642f), vec2<f32>(-918f, -1847f), vec2<f32>(559f, 552f), vec2<f32>(943f, 1406f));

var<private> global3: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    global1 = min(~(~_wgslsmith_add_u32(~1u, global0.b)), ~1u);
    global2 = array<vec2<f32>, 14>();
    let var_0 = -(u_input.a << (vec3<u32>(1u, ~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, 52075u, 0u), vec3<u32>(u_input.d, arg_1.b, 33116u))) % vec3<u32>(32u)));
    let var_1 = arg_0.x;
    let var_2 = arg_1;
    return var_2.b;
}

fn func_2(arg_0: bool) -> vec4<f32> {
    var var_0 = !select(select(vec3<bool>(!global0.d, true != global0.d, global0.d), select(vec3<bool>(false, true, arg_0), select(vec3<bool>(false, global0.d, false), vec3<bool>(true, false, true), global0.d), select(vec3<bool>(false, arg_0, global3.d), vec3<bool>(true, global0.d, true), false)), select(vec3<bool>(global3.d, global3.d, global3.d), vec3<bool>(true, true, false), all(vec2<bool>(true, false)))), !vec3<bool>(all(vec4<bool>(arg_0, global3.d, arg_0, false)), any(vec4<bool>(false, false, arg_0, arg_0)), all(vec2<bool>(global3.d, false))), !vec3<bool>(select(arg_0, false, arg_0), true, true));
    var var_1 = global0.a.x;
    let var_2 = firstLeadingBit(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(global0.b, 1u) & 0u, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global3.b, global3.b, 50009u), 1u), ~global3.b));
    global1 = 16951u;
    var var_3 = !(func_3(vec3<i32>(-44834i, ~global0.c.x, _wgslsmith_mult_i32(global0.c.x, 209i)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1634f, -1804f, global3.a.x) * global0.a), 8946u, min(u_input.a, global0.c), global0.d), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) >= _wgslsmith_div_u32(global3.b, ~(~global3.b)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-152f, -312f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1211f)))), global3.a.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-218f, global3.a.x, 164f, 188f) * vec4<f32>(global0.a.x, global0.a.x, global3.a.x, global3.a.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, global0.a.x, global0.a.x, global3.a.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, -601f, global3.a.x, global3.a.x) - vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 1061f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, global3.a.x, -2493f, -1436f), vec4<f32>(global3.a.x, global0.a.x, -127f, global3.a.x)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global1 = _wgslsmith_mod_u32(3395u, _wgslsmith_clamp_u32(~u_input.d, 104474u, 45762u));
    global0 = arg_2;
    var var_0 = arg_2;
    var var_1 = arg_2;
    global3 = arg_2;
    return 1u;
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2;
    var var_1 = ~vec2<u32>(arg_2.b, ~countOneBits(min(963u, u_input.d)));
    global1 = var_1.x;
    var var_2 = firstLeadingBit(vec3<u32>(~abs(_wgslsmith_sub_u32(10159u, var_1.x)), 1819u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(43558u, global3.b, var_0.b)), vec3<u32>(var_0.b, 1u, ~4154u))));
    let var_3 = !(!(!select(select(vec4<bool>(false, arg_2.d, global0.d, global3.d), vec4<bool>(global0.d, arg_2.d, false, true), true), select(vec4<bool>(false, global3.d, global0.d, global3.d), vec4<bool>(true, global0.d, arg_2.d, false), false), true)));
    return _wgslsmith_f_op_f32(min(-845f, 973f));
}

fn func_1() -> Struct_1 {
    global3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_5(func_4(select(vec2<bool>(true, true), vec2<bool>(false, false), false), ~(-42594i), Struct_1(vec3<f32>(-704f, global0.a.x, 458f), 58994u, vec3<i32>(2147483647i, global0.c.x, 2147483647i), true), _wgslsmith_f_op_vec4_f32(func_2(global3.d))), global2[_wgslsmith_index_u32(global3.b, 14u)], Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2610f, global0.a.x, global3.a.x), vec3<f32>(-1618f, 273f, global0.a.x))), 1u, min(u_input.a, vec3<i32>(global0.c.x, -2147483647i, -1i)), true))), global0.a.x, 1143f), countOneBits(11381u), vec3<i32>(_wgslsmith_add_i32(-19617i, _wgslsmith_mod_i32(1i, abs(2373i))), 81196i, ~u_input.b), select(!(all(vec4<bool>(true, global0.d, false, true)) || true), false, ~global0.b == 33512u));
    let var_0 = ~max(_wgslsmith_add_vec3_u32(~vec3<u32>(42453u, u_input.d, u_input.d), vec3<u32>(global3.b, 68938u, global0.b)), ~vec3<u32>(global3.b, 17968u, global0.b) & select(vec3<u32>(4294967295u, global0.b, global0.b), vec3<u32>(1u, global3.b, global3.b), global0.d)) >> (vec3<u32>(~_wgslsmith_mod_u32(global0.b << (global0.b % 32u), ~4294967295u), 1u, 101389u) % vec3<u32>(32u));
    global1 = 40447u;
    global1 = 80518u;
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(var_0, var_0), 1u, u_input.d), abs(~abs(var_0 | var_0)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_f_op_f32(277f + global0.a.x), global3.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.a.x, 1046f)), _wgslsmith_f_op_f32(global3.a.x - 163f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.d, 59017u), ~u_input.d), ~vec3<i32>(-25027i, firstLeadingBit(global3.c.x), abs(global3.c.x)), select(u_input.d < _wgslsmith_mod_u32(_wgslsmith_mod_u32(84640u, global3.b), countOneBits(4294967295u)), _wgslsmith_f_op_vec4_f32(func_2(true)).x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, global3.a.x, global3.d))), true));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    var var_0 = !vec2<bool>(arg_3, all(vec4<bool>(func_1().d, all(vec2<bool>(false, true)), true, global3.d)));
    let var_1 = global0.a.x;
    global0 = Struct_1(arg_2.a, abs(abs(global0.b)), _wgslsmith_sub_vec3_i32(~(global3.c << (~vec3<u32>(15576u, 37939u, global0.b) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(global3.c.x, 0i, arg_2.c.x), min(global0.c, vec3<i32>(arg_1.x, global3.c.x, -1i))) | (~u_input.a & vec3<i32>(u_input.a.x, u_input.a.x, 24259i))), true);
    var var_2 = global3.a.x;
    var var_3 = func_1();
    return var_3.c.x | global3.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + -845f)), global3.a.x), u_input.a.zx, func_1(), true);
    global1 = ~_wgslsmith_mult_u32(abs(global3.b), ~(global0.b << (u_input.d % 32u)));
    var var_1 = select(vec3<bool>(true, (global3.a.x < global3.a.x) || true, !(!func_1().d)), select(vec3<bool>(any(vec3<bool>(false, false, false)), all(select(vec4<bool>(true, global3.d, false, false), vec4<bool>(false, global0.d, global3.d, global3.d), global3.d)), true), !vec3<bool>(false, true, all(vec4<bool>(false, global3.d, false, global0.d))), select(vec3<bool>(global3.a.x >= global3.a.x, false, global0.d), select(select(vec3<bool>(global0.d, global3.d, true), vec3<bool>(false, true, global3.d), global0.d), select(vec3<bool>(global0.d, global0.d, global3.d), vec3<bool>(false, global0.d, global3.d), vec3<bool>(false, global0.d, true)), vec3<bool>(true, false, false)), vec3<bool>(false & global0.d, 7626u > global3.b, true))), !vec3<bool>(true, func_1().d, global3.d));
    let var_2 = 2147483647i;
    global3 = Struct_1(vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.x)) * 1711f), _wgslsmith_f_op_f32(-global3.a.x), var_1.x)), 1171f), global3.b, global3.c, var_1.x);
    let var_3 = func_1();
    global2 = array<vec2<f32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~(vec2<u32>(15066u, 4294967295u) | vec2<u32>(global3.b, 58653u))), max(select(vec2<u32>(14243u, global3.b), _wgslsmith_mod_vec2_u32(vec2<u32>(14024u, 1u), vec2<u32>(u_input.d, 27500u)), vec2<bool>(false, false)), max(vec2<u32>(u_input.d, u_input.d), vec2<u32>(19064u, 66114u)) ^ min(vec2<u32>(1u, 68962u), vec2<u32>(0u, 43103u)))));
}

