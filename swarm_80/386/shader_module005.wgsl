struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: Struct_3 = Struct_3(false);

var<private> global2: Struct_1 = Struct_1(44267u, -3104f, 4294967295u, 896f, vec4<i32>(-780i, -12405i, 2147483647i, 27377i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> vec3<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(320f * -1000f))) * arg_2.d.b), -297f);
    var var_1 = true;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -873f), _wgslsmith_f_op_f32(1783f * var_0.x)))), vec2<f32>(arg_2.c.d, 487f)) - vec2<f32>(_wgslsmith_f_op_f32(arg_2.c.d * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1245f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.b + arg_2.c.b)))));
    let var_2 = _wgslsmith_mult_vec3_i32(~abs(vec3<i32>(-21958i, i32(-1i) * -2147483647i, arg_2.d.e.x)), vec3<i32>(-1i, arg_2.c.e.x, max(1i, global0[_wgslsmith_index_u32(max(~4294967295u, u_input.a.x & arg_1.x), 24u)])));
    let var_3 = Struct_2(~firstLeadingBit(_wgslsmith_sub_vec3_i32(select(arg_3.zxw, arg_3.yyx, vec3<bool>(global1.a, arg_0.x, false)), global2.e.zzz)), arg_0.x, arg_2.c, arg_2.d, arg_0.x);
    return arg_0;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = abs(vec4<u32>(~max(9289u, u_input.c | arg_0.x), (arg_0.x ^ (0u >> (u_input.a.x % 32u))) << (~(~arg_0.x) % 32u), select(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, arg_0.x, global2.a, u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c, 0u, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, global2.c, u_input.c))), firstTrailingBit(abs(27846u)), false), ~global2.a));
    var var_1 = 0u;
    let var_2 = _wgslsmith_mult_u32(~(~(~(1u | global2.a))), _wgslsmith_clamp_u32(global2.c, _wgslsmith_mult_u32(_wgslsmith_div_u32(abs(var_0.x), _wgslsmith_mod_u32(var_0.x, var_0.x)), global2.c), u_input.a.x));
    global1 = Struct_3(global1.a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(207f)) + -1000f) - _wgslsmith_f_op_f32(-global2.d))));
    return select(vec4<bool>(!select(func_3(vec3<bool>(false, true, false), vec2<u32>(113804u, global2.a), Struct_2(global2.e.yxz, arg_2.x, Struct_1(global2.a, global2.d, 53851u, global2.d, global2.e), Struct_1(var_2, global2.b, global2.c, -307f, global2.e), true), vec4<i32>(u_input.b, u_input.b, global2.e.x, global0[_wgslsmith_index_u32(1u, 24u)])).x, arg_2.x, arg_1.x), !select(arg_1.x, all(vec4<bool>(arg_2.x, false, arg_2.x, global1.a)), false), global2.b < _wgslsmith_f_op_f32(sign(global2.b)), any(!(!arg_1))), select(select(select(select(vec4<bool>(true, arg_1.x, arg_2.x, global1.a), vec4<bool>(arg_1.x, false, arg_2.x, arg_2.x), vec4<bool>(global1.a, true, false, false)), !vec4<bool>(arg_2.x, arg_2.x, arg_1.x, arg_2.x), arg_1.x), vec4<bool>(func_3(vec3<bool>(arg_1.x, arg_1.x, global1.a), vec2<u32>(global2.a, 210173u), Struct_2(global2.e.zzx, false, Struct_1(1u, -1654f, var_2, global2.b, global2.e), Struct_1(18197u, global2.d, global2.a, global2.d, vec4<i32>(u_input.b, u_input.d, -1i, 0i)), false), global2.e).x, all(vec2<bool>(true, global1.a)), !arg_1.x, arg_1.x || false), vec4<bool>(true, true, global2.b == global2.d, global1.a)), select(vec4<bool>(arg_1.x && arg_1.x, arg_2.x | false, arg_2.x && false, all(vec3<bool>(arg_2.x, arg_2.x, false))), select(vec4<bool>(true, true, arg_2.x, arg_1.x), vec4<bool>(arg_2.x, true, arg_1.x, false), vec4<bool>(arg_2.x, false, arg_1.x, false)), !(global2.d > -408f)), !vec4<bool>(func_3(arg_1, arg_0.zz, Struct_2(global2.e.zwx, false, Struct_1(var_0.x, global2.d, 5033u, global2.b, vec4<i32>(global0[_wgslsmith_index_u32(45564u, 24u)], 44261i, -8595i, 0i)), Struct_1(arg_0.x, global2.d, arg_0.x, -251f, vec4<i32>(global2.e.x, -15941i, 15815i, -1i)), true), global2.e).x, -1155f == global2.d, false, arg_1.x)), vec4<bool>(true, arg_2.x, any(arg_1), all(select(select(vec4<bool>(arg_1.x, false, false, arg_2.x), vec4<bool>(global1.a, true, false, false), arg_1.x), select(vec4<bool>(true, true, false, arg_2.x), vec4<bool>(arg_1.x, false, true, true), global1.a), false))));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> i32 {
    let var_0 = global2.a;
    let var_1 = Struct_3(any(select(!select(vec4<bool>(global1.a, true, false, global1.a), vec4<bool>(global1.a, global1.a, true, true), vec4<bool>(false, global1.a, true, global1.a)), select(select(vec4<bool>(true, false, global1.a, global1.a), vec4<bool>(global1.a, false, true, global1.a), global1.a), !vec4<bool>(global1.a, global1.a, false, global1.a), true), func_4(~vec3<u32>(109132u, u_input.c, u_input.a.x), func_3(vec3<bool>(global1.a, false, false), u_input.a, Struct_2(vec3<i32>(-44080i, global2.e.x, global2.e.x), true, Struct_1(u_input.c, 162f, u_input.c, 746f, global2.e), Struct_1(1u, 1351f, 1u, 1000f, global2.e), global1.a), global2.e), vec2<bool>(true, global1.a)))));
    global0 = array<i32, 24>();
    var var_2 = Struct_2(vec3<i32>(0i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(71613u, 68346u, 4294967295u), ~vec3<u32>(0u, u_input.a.x, 4294967295u)) % 32u), global2.e.x, ~6169i), !(!(-1i == _wgslsmith_clamp_i32(u_input.b, global0[_wgslsmith_index_u32(9067u, 24u)], -2147483647i))), Struct_1(max(_wgslsmith_div_u32(u_input.a.x, ~15273u), _wgslsmith_mod_u32(~33730u, 19364u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) + _wgslsmith_f_op_f32(global2.b - -419f))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c, _wgslsmith_mult_u32(34988u, 16034u)), _wgslsmith_mult_u32(u_input.a.x, countOneBits(25338u))), global2.b, global2.e), Struct_1(1792u, 299f, 121825u, arg_1.x, global2.e), all(vec2<bool>((global2.c != 4294967295u) | var_1.a, true)));
    global1 = var_1;
    return var_2.c.e.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_1(global2.c, _wgslsmith_f_op_f32(981f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x)))), global2.c, 1331f, vec4<i32>(-func_2(select(16846i, 2147483647i, true), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(201f, global2.b, global2.b, arg_0.x), vec4<f32>(229f, global2.b, 1000f, 622f)))), -(global2.e.x ^ global2.e.x), _wgslsmith_dot_vec3_i32(max(~global2.e.xzx, vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 24u)], global2.e.x, u_input.b)), global2.e.xwx), _wgslsmith_add_i32(-1i >> (global2.c % 32u), -select(u_input.d, u_input.b, arg_1.x))));
    global1 = Struct_3(!(!global1.a) & true);
    var var_1 = ~select(_wgslsmith_add_u32(~(~1u), _wgslsmith_clamp_u32(1u, 4294967295u, 0u) >> (1u % 32u)), abs(abs(global2.a ^ global2.a)), func_4(~select(vec3<u32>(global2.a, global2.c, 2432u), vec3<u32>(var_0.c, var_0.c, 1u), vec3<bool>(true, true, false)), !func_4(vec3<u32>(global2.c, 4275u, 65282u), vec3<bool>(arg_1.x, global1.a, arg_1.x), vec2<bool>(global1.a, arg_1.x)).wyx, select(!arg_1, vec2<bool>(arg_1.x, global1.a), select(arg_1, vec2<bool>(arg_1.x, false), arg_1))).x);
    let var_2 = var_0.e.ywx;
    var var_3 = var_0.d;
    return Struct_3(-19868i < (i32(-1i) * -(var_2.x | var_0.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.b, -444f))))), select(!(!(!vec2<bool>(true, global1.a))), select(vec2<bool>(global1.a, true), vec2<bool>(true, true), select(vec2<bool>(global1.a, true), !vec2<bool>(false, global1.a), global1.a)), !vec2<bool>(true || global1.a, global1.a | global1.a)));
    var var_0 = Struct_3(!func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-336f, global2.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-310f, global2.b) - vec2<f32>(444f, global2.b))), vec2<bool>(func_3(vec3<bool>(global1.a, true, global1.a), u_input.a, Struct_2(vec3<i32>(u_input.b, -2147483647i, u_input.b), global1.a, Struct_1(u_input.c, 429f, 4294967295u, global2.b, global2.e), Struct_1(global2.c, 448f, global2.a, global2.b, global2.e), global1.a), global2.e).x, false)).a);
    var var_1 = vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(~abs(abs(u_input.a.x)), 24u)], 20839i) | _wgslsmith_add_vec3_i32(global2.e.zxy, ~vec3<i32>(66687i, 68413i, _wgslsmith_dot_vec2_i32(vec2<i32>(17280i, global0[_wgslsmith_index_u32(global2.a, 24u)]), vec2<i32>(global0[_wgslsmith_index_u32(global2.c, 24u)], global2.e.x))));
    let var_2 = Struct_2(global2.e.zzy, false, Struct_1(1u, 1000f, _wgslsmith_mod_u32(abs(~1u), 1u), _wgslsmith_f_op_f32(1217f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global2.b, global2.d, var_0.a))))), _wgslsmith_add_vec4_i32(select(global2.e, select(vec4<i32>(34000i, -2147483647i, global0[_wgslsmith_index_u32(85881u, 24u)], global2.e.x), global2.e, vec4<bool>(false, false, true, global1.a)), !var_0.a), global2.e)), Struct_1(global2.c, _wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-873f + -532f) + global2.b)), global2.c, _wgslsmith_f_op_f32(-397f - _wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(global2.b * -690f))), global2.e), true);
    let var_3 = -(i32(-1i) * -(~(-58487i))) > _wgslsmith_mod_i32(1i, firstTrailingBit(-max(var_2.d.e.x, global0[_wgslsmith_index_u32(4294967295u, 24u)])));
    var var_4 = true;
    let var_5 = Struct_1(~_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.c, 1u, var_2.c.a), ~vec3<u32>(global2.a, global2.a, 23398u))), _wgslsmith_f_op_f32(global2.d * _wgslsmith_f_op_f32(-global2.d)), ~(~u_input.c) | _wgslsmith_mod_u32(41060u, ~9005u >> ((global2.a & 0u) % 32u)), -1288f, max(vec4<i32>(var_1.x, -var_2.d.e.x, _wgslsmith_dot_vec2_i32(var_2.c.e.zw & var_1.xz, reverseBits(var_1.zy)), i32(-1i) * -1i), ~(~(~var_2.c.e))));
    global0 = array<i32, 24>();
    global1 = Struct_3(!var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-var_2.c.e.x, 30670i), reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 1842u, u_input.c, 1u), min(vec4<u32>(1u, var_2.d.a, 2148u, var_5.a), vec4<u32>(u_input.a.x, 75173u, u_input.c, u_input.a.x))) & vec4<u32>(_wgslsmith_div_u32(global2.a, 58724u), ~1u, var_5.c, 1u)), firstTrailingBit(~abs(vec3<u32>(5360u, 85943u, 0u))), vec4<u32>(u_input.c, ~1u << ((var_2.c.c ^ u_input.c) % 32u), 27784u, u_input.a.x | abs(global2.c)), global2.e.x);
}

