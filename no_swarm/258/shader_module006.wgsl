struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(0u, 35207u), vec2<u32>(4294967295u, 13802u), vec2<u32>(64842u, 21988u), vec2<u32>(1u, 22323u), vec2<u32>(24171u, 33065u), vec2<u32>(21000u, 0u), vec2<u32>(1u, 20373u), vec2<u32>(4294967295u, 114671u), vec2<u32>(4294967295u, 26127u), vec2<u32>(0u, 30413u), vec2<u32>(0u, 9179u), vec2<u32>(0u, 61422u), vec2<u32>(1u, 4294967295u), vec2<u32>(24253u, 1u), vec2<u32>(48716u, 37286u), vec2<u32>(1404u, 21906u), vec2<u32>(0u, 0u), vec2<u32>(20487u, 29475u), vec2<u32>(87518u, 24018u), vec2<u32>(1u, 1u), vec2<u32>(26115u, 18667u), vec2<u32>(2362u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(27696u, 11405u), vec2<u32>(1u, 72689u));

var<private> global1: Struct_4 = Struct_4(-1i, Struct_2(vec2<bool>(true, true), Struct_1(vec4<f32>(-1827f, -668f, -1000f, -628f), true)));

var<private> global2: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(25494u, 1u, 40497u, 7621u), vec4<u32>(36200u, 29803u, 25874u, 9405u), vec4<u32>(0u, 4294967295u, 40297u, 0u), vec4<u32>(64912u, 24999u, 10756u, 373u), vec4<u32>(43456u, 48630u, 40773u, 1u), vec4<u32>(1u, 27814u, 24327u, 13418u), vec4<u32>(28869u, 73915u, 91259u, 0u), vec4<u32>(21940u, 4294967295u, 18678u, 19605u), vec4<u32>(1u, 6445u, 4294967295u, 1u), vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(30336u, 1u, 3482u, 0u), vec4<u32>(4294967295u, 4294967295u, 37866u, 68811u), vec4<u32>(4294967295u, 79950u, 26218u, 1u), vec4<u32>(17714u, 1u, 39634u, 1u), vec4<u32>(0u, 53993u, 2856u, 91767u), vec4<u32>(0u, 4632u, 1u, 45883u), vec4<u32>(62975u, 0u, 48881u, 43116u), vec4<u32>(4294967295u, 1u, 48604u, 12531u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(100728u, 57485u, 4294967295u, 42507u), vec4<u32>(13290u, 4294967295u, 16847u, 190u), vec4<u32>(1u, 9711u, 1u, 13108u), vec4<u32>(1u, 4294967295u, 0u, 91762u), vec4<u32>(4294967295u, 4294967295u, 58362u, 16504u), vec4<u32>(31390u, 4294967295u, 1u, 1u));

var<private> global3: Struct_2 = Struct_2(vec2<bool>(false, false), Struct_1(vec4<f32>(-366f, 1000f, 858f, 1003f), false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: u32) -> u32 {
    var var_0 = vec3<bool>(any(vec3<bool>(global1.b.b.b, all(!vec4<bool>(true, global3.a.x, false, true)), arg_0)), !(-6524i < arg_1.x), false);
    global0 = array<vec2<u32>, 25>();
    var var_1 = ~abs(u_input.a);
    let var_2 = Struct_2(global3.a, Struct_1(vec4<f32>(-191f, global1.b.b.a.x, global1.b.b.a.x, global3.b.a.x), true));
    global2 = array<vec4<u32>, 25>();
    return 27449u;
}

fn func_2() -> bool {
    let var_0 = global1.b.b;
    global0 = array<vec2<u32>, 25>();
    var var_1 = _wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(~(~(~(~1u))), 25u)], reverseBits(vec4<u32>(func_3(global3.b.b, vec4<i32>(global1.a, -2147483647i, 2147483647i, u_input.a), 53339u), _wgslsmith_add_u32(0u, 33155u), 7728u, 1u) & vec4<u32>(4294967295u, abs(19745u), max(11162u, 4294967295u), 1u)));
    var_1 = vec4<u32>(~var_1.x, 0u >> (var_1.x % 32u), ~1u, 33041u);
    var var_2 = reverseBits(-reverseBits(firstLeadingBit(vec2<i32>(u_input.a, global1.a))));
    return global1.b.b.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b.b.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0.b.a - global3.b.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1058f, arg_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -447f), _wgslsmith_f_op_f32(-global1.b.b.a.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_0.b.a, global3.b.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-797f)), _wgslsmith_f_op_f32(-308f * 751f), _wgslsmith_f_op_f32(f32(-1f) * -511f), arg_2.a.x) - _wgslsmith_f_op_vec4_f32(global1.b.b.a + vec4<f32>(1423f, 1000f, 239f, -441f))), false))));
    let var_1 = firstTrailingBit(select(max(_wgslsmith_div_vec2_i32(~vec2<i32>(-2147483647i, -2147483647i), firstLeadingBit(vec2<i32>(arg_2.b, 2147483647i))), select(vec2<i32>(-4940i, 1i), countOneBits(vec2<i32>(-34225i, -2147483647i)), global1.b.b.b)), max(vec2<i32>(-15168i, global1.a), select(vec2<i32>(-37288i, u_input.a), vec2<i32>(global1.a, 5113i) << (arg_3.xy % vec2<u32>(32u)), !arg_0.b.b)), arg_1.xy));
    global0 = array<vec2<u32>, 25>();
    return Struct_1(global1.b.b.a, _wgslsmith_f_op_f32(min(-971f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-383f, 1213f) - 121f))) < global1.b.b.a.x);
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_1) -> Struct_4 {
    var var_0 = func_4(Struct_2(vec2<bool>(arg_1.b.a.x, any(global3.a)), Struct_1(vec4<f32>(arg_1.b.b.a.x, 910f, 1493f, _wgslsmith_div_f32(897f, 1065f)), func_2())), vec3<bool>(all(vec2<bool>(false, any(global3.a))), any(select(arg_1.b.a, global3.a, !global3.a.x)), true), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b.b.a.xwx) * vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(step(arg_3.a.x, arg_2)), _wgslsmith_f_op_f32(min(global1.b.b.a.x, -506f)))), countOneBits(select(_wgslsmith_dot_vec2_i32(vec2<i32>(-58628i, u_input.a), vec2<i32>(1i, u_input.a)), arg_1.a, arg_1.a != -32547i))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~17308u, arg_0), 14581u, ~(~arg_0)), abs(vec3<u32>(24099u, ~0u, firstLeadingBit(4294967295u)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.b.a.x)))) - 951f), _wgslsmith_f_op_f32(-func_4(global1.b, select(vec3<bool>(global1.b.a.x, var_0.b, true), vec3<bool>(arg_3.b, false, var_0.b), !vec3<bool>(arg_1.b.a.x, arg_3.b, true)), Struct_3(_wgslsmith_f_op_vec3_f32(-arg_3.a.wyz), -arg_1.a), ~vec3<u32>(1u, 1u, 51350u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(37566u, 4294967295u, arg_0), vec3<u32>(7650u, arg_0, 100853u), vec3<u32>(arg_0, arg_0, 0u))).a.x));
    global2 = array<vec4<u32>, 25>();
    var var_2 = Struct_2(arg_1.b.a, Struct_1(_wgslsmith_f_op_vec4_f32(global3.b.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-770f, 829f, arg_1.b.b.a.x, arg_2), arg_3.a)))), true));
    let var_3 = !(!vec3<bool>(true, 4294967295u < (4294967295u ^ arg_0), arg_1.b.b.a.x == _wgslsmith_f_op_f32(arg_1.b.b.a.x - var_1.x)));
    return Struct_4(arg_1.a, global1.b);
}

fn func_5(arg_0: Struct_4) -> bool {
    let var_0 = global1.b.b.a.x;
    let var_1 = false;
    let var_2 = func_1(1u, func_1(abs(93925u), arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(713f))))), global1.b.b), _wgslsmith_f_op_f32(-235f * _wgslsmith_f_op_f32(round(852f))), global3.b).b.b;
    global0 = array<vec2<u32>, 25>();
    let var_3 = firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(1u, 75147u), ~(~_wgslsmith_mult_u32(0u, 47229u)), 4294967295u));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b.a.ywx;
    global2 = array<vec4<u32>, 25>();
    global2 = array<vec4<u32>, 25>();
    global3 = Struct_2(select(vec2<bool>(false, func_5(func_1(77221u, Struct_4(-45617i, global1.b), -604f, Struct_1(global3.b.a, false)))), vec2<bool>(true, false), (u_input.a ^ (global1.a ^ 5317i)) < u_input.a), func_1(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(41212u, 0u, 328u), 1u), abs(1u)), Struct_4(-reverseBits(u_input.a), func_1(38939u, Struct_4(-1i, global1.b), _wgslsmith_f_op_f32(-global1.b.b.a.x), global1.b.b).b), global1.b.b.a.x, func_1(92566u, func_1(1u, func_1(21925u, Struct_4(u_input.a, global1.b), global1.b.b.a.x, global1.b.b), 431f, func_4(global1.b, vec3<bool>(global1.b.b.b, global1.b.a.x, global3.b.b), Struct_3(vec3<f32>(global3.b.a.x, global3.b.a.x, -605f), global1.a), vec3<u32>(94747u, 98803u, 31874u))), var_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.b.b.a.x, global1.b.b.a.x, 1164f, global1.b.b.a.x))), false)).b.b).b.b);
    global0 = array<vec2<u32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(628f - global3.b.a.x), -vec2<i32>(_wgslsmith_mult_i32(select(u_input.a, -1420i, false), max(-9141i, u_input.a)), (global1.a ^ u_input.a) << (1u % 32u)), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(48439i, 12133i, 0i) << (select(vec3<u32>(0u, 13286u, 1u), vec3<u32>(0u, 0u, 1u), vec3<bool>(global1.b.b.b, false, true)) % vec3<u32>(32u)), vec3<i32>(0i, -1i, u_input.a))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-319f, global1.b.b.a.x, _wgslsmith_f_op_f32(var_0.x * -566f), 585f))));
}

