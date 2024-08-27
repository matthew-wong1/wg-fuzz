struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: i32;

var<private> global2: array<bool, 12>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_3(!vec3<bool>(arg_0, !(!arg_0), _wgslsmith_mult_i32(u_input.b, u_input.b) > -u_input.b), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-672f, -145f)) + arg_2)))), Struct_2(Struct_1(vec2<i32>(31649i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -9304i, -3829i), vec4<i32>(-1i, u_input.b, u_input.b, u_input.b))))));
    global1 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, min(var_0.c.a.a.x, -38434i)), 53620i);
    let var_1 = var_0.c.a;
    var var_2 = 54533u;
    let var_3 = Struct_1(firstTrailingBit(firstTrailingBit(var_0.c.a.a)));
    return var_0.c;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec3<f32> {
    let var_0 = -_wgslsmith_add_i32(arg_0.a.a.x ^ u_input.b, _wgslsmith_div_i32(1i, _wgslsmith_add_i32(7579i, abs(21028i))));
    var var_1 = vec3<i32>(u_input.b, arg_0.a.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(u_input.b) & max(var_0, var_0), ~(2147483647i & arg_0.a.a.x), 2147483647i, ~func_1(arg_2.x, arg_1.x, arg_1.xw).a.a.x), vec4<i32>(-11699i, _wgslsmith_sub_i32(i32(-1i) * -45387i, var_0), arg_0.a.a.x, -func_1(false, -883f, vec2<f32>(-1292f, arg_1.x)).a.a.x)));
    let var_2 = vec3<u32>(u_input.a, 7992u, u_input.a | ~_wgslsmith_mult_u32(~55578u, _wgslsmith_dot_vec4_u32(vec4<u32>(18355u, u_input.a, 206u, u_input.a), vec4<u32>(u_input.a, 71647u, 1u, u_input.a))));
    var var_3 = Struct_1((vec2<i32>(-1i) * -arg_0.a.a) & func_1(!(!global2[_wgslsmith_index_u32(57518u, 12u)]), -263f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_1.zz, arg_1.ww)), arg_1.wz)).a.a);
    global0 = ~(~(~1u));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -488f));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<f32>) -> f32 {
    let var_0 = arg_1;
    var var_1 = Struct_2(func_1(!(var_0.a.x && true) & (_wgslsmith_f_op_f32(-2711f - 1000f) < _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(func_1(true, -456f, vec2<f32>(-852f, 431f)).a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1164f, arg_1.b.x, arg_0, -502f)), !arg_1.a.yz, arg_1.a)).x, vec2<f32>(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_div_f32(1144f, arg_1.b.x)), _wgslsmith_f_op_f32(step(var_0.b.x, arg_0)))).a);
    var_1 = func_1(all(vec2<bool>(true, global2[_wgslsmith_index_u32(~firstLeadingBit(0u), 12u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + 242f), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.yx * var_0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b))));
    var var_2 = Struct_3(arg_1.a, arg_2.yx, Struct_2(var_0.c.a));
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(4294967295u, u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u) & vec3<u32>(70349u, 16515u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(55053u, u_input.a, u_input.a))), u_input.a, _wgslsmith_div_u32(~(1u & u_input.a), 45749u << ((4294967295u | u_input.a) % 32u)), 65258u), abs(countOneBits(~(vec4<u32>(u_input.a, 1u, 5270u, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * arg_0)), arg_1.a.x)) * arg_0));
}

fn func_2() -> Struct_3 {
    global2 = array<bool, 12>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-102f, Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 12u)], true, global2[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 12u)], true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-116f, -1313f)), func_1(true, 1032f, vec2<f32>(-344f, 129f))), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec2<i32>(14806i, -59510i))), _wgslsmith_div_vec4_f32(vec4<f32>(-228f, 478f, -1000f, -924f), vec4<f32>(-1308f, 481f, 687f, -690f)), vec2<bool>(false, global2[_wgslsmith_index_u32(18336u, 12u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 12u)], true, true), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], true, global2[_wgslsmith_index_u32(u_input.a, 12u)])))))) - 1105f), _wgslsmith_f_op_f32(floor(638f)));
    global0 = _wgslsmith_add_u32(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(22785u, u_input.a, 4294967295u, u_input.a), vec4<u32>(20198u, u_input.a, 36095u, 101477u))) | abs(1u), u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -398f) * vec2<f32>(-554f, 875f)) - vec2<f32>(var_0.x, var_0.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, 535f), vec2<f32>(var_0.x, 1350f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -473f)))), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec2<i32>(15691i, 16720i))), vec4<f32>(var_0.x, var_0.x, -2064f, -391f), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 12u)], true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(3440u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)]))).x, _wgslsmith_f_op_f32(floor(var_0.x))), select(!vec2<bool>(global2[_wgslsmith_index_u32(48594u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 12u)], true), vec2<bool>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<bool>(true, true)), vec2<bool>(true, true))))));
    let var_2 = Struct_4(Struct_1(_wgslsmith_div_vec2_i32(abs(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(0i, u_input.b)) & vec2<i32>(0i, u_input.b)), Struct_2(func_1(!global2[_wgslsmith_index_u32(u_input.a, 12u)] & any(vec4<bool>(true, global2[_wgslsmith_index_u32(69393u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(1066f, Struct_3(vec3<bool>(true, false, false), var_1, Struct_2(Struct_1(vec2<i32>(-11019i, -5554i)))), vec3<f32>(var_1.x, 447f, var_0.x))))), vec2<f32>(var_1.x, var_1.x)).a), _wgslsmith_sub_u32(~48150u, u_input.a), !global2[_wgslsmith_index_u32(~(~(0u >> (1u % 32u))), 12u)], var_1);
    return Struct_3(select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 12u)], true | global2[_wgslsmith_index_u32(u_input.a, 12u)], var_2.d), select(select(vec3<bool>(true, true, true), !vec3<bool>(true, true, var_2.d), !vec3<bool>(true, true, var_2.d)), !select(vec3<bool>(var_2.d, global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<bool>(var_2.d, false, var_2.d), vec3<bool>(var_2.d, false, var_2.d)), vec3<bool>(-40345i <= u_input.b, false, false)), !(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 12u)], var_2.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(650f, _wgslsmith_f_op_f32(floor(var_1.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1106f, var_1.x), var_1, vec2<bool>(false, false))), vec2<f32>(var_2.e.x, -415f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-989f, 984f) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 1325f), var_2.e)))), var_2.b);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3, arg_3: u32) -> vec4<bool> {
    global2 = array<bool, 12>();
    var var_0 = arg_2.c;
    global2 = array<bool, 12>();
    global2 = array<bool, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.b.x, 1413f), vec2<f32>(arg_2.b.x, -202f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.x, 241f) - vec2<f32>(-1835f, _wgslsmith_f_op_f32(-575f - 1000f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-316f, -250f), vec2<f32>(arg_2.b.x, arg_2.b.x))), _wgslsmith_f_op_vec2_f32(-arg_2.b), arg_2.a.zz)))) - arg_2.b));
    return select(!(!(!select(vec4<bool>(arg_2.a.x, arg_2.a.x, global2[_wgslsmith_index_u32(42479u, 12u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 12u)], true, false, arg_2.a.x), arg_2.a.x))), vec4<bool>(true, true, true, !((0i > arg_0.a.a.x) & global2[_wgslsmith_index_u32(1u, 12u)])), arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 12>();
    let var_0 = ~_wgslsmith_div_vec4_u32(~(~countOneBits(vec4<u32>(u_input.a, u_input.a, 0u, 25790u))), countOneBits(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    var var_1 = select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 12u)], global2[_wgslsmith_index_u32(var_0.x, 12u)], all(func_5(func_1(global2[_wgslsmith_index_u32(1u, 12u)], -700f, vec2<f32>(232f, 1151f)), abs(65535u), func_2(), _wgslsmith_add_u32(35170u, u_input.a))), true), !select(select(select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(1u, 12u)]), vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(12926u, 12u)]), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 12u)], false, false, global2[_wgslsmith_index_u32(20665u, 12u)]), select(false, global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(1u, 12u)])), vec4<bool>(true, global2[_wgslsmith_index_u32(~u_input.a, 12u)], false && global2[_wgslsmith_index_u32(u_input.a, 12u)], true), vec4<bool>(select(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)]), true, !global2[_wgslsmith_index_u32(0u, 12u)], all(vec3<bool>(false, true, global2[_wgslsmith_index_u32(1u, 12u)])))), false);
    global1 = -8455i;
    var var_2 = Struct_2(func_2().c.a);
    var var_3 = firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(~var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(74691u, u_input.a, 14932u), var_0.xxx))), 1u));
    var_2 = func_2().c;
    var var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(firstTrailingBit(var_2.a.a), vec2<i32>(u_input.b, func_1(any(var_1.xx), -138f, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1217f, 1473f)))).a.a.x)));
}

