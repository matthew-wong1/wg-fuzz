struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(Struct_3(vec2<f32>(-478f, 451f), Struct_1(1i)), Struct_3(vec2<f32>(477f, -368f), Struct_1(i32(-2147483648)))), Struct_4(Struct_3(vec2<f32>(142f, 1000f), Struct_1(i32(-2147483648))), Struct_3(vec2<f32>(-1142f, 612f), Struct_1(1i))), Struct_4(Struct_3(vec2<f32>(-1030f, 804f), Struct_1(8104i)), Struct_3(vec2<f32>(-108f, 200f), Struct_1(i32(-2147483648)))));

var<private> global3: array<u32, 19> = array<u32, 19>(1u, 4294967295u, 0u, 27836u, 1u, 26355u, 2527u, 4294967295u, 4294967295u, 4294967295u, 20097u, 4294967295u, 15028u, 0u, 1u, 40918u, 36853u, 1u, 102652u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1230f - _wgslsmith_f_op_f32(f32(-1f) * -381f)), 642f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2035f, 655f) + 2081f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(914f * -1093f)), _wgslsmith_f_op_f32(f32(-1f) * -1217f), _wgslsmith_f_op_f32(-532f + -963f)), true)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -637f) + _wgslsmith_div_f32(527f, -1175f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1129f)), _wgslsmith_f_op_f32(-584f - 181f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(197f * 524f))), _wgslsmith_f_op_f32(ceil(1420f))));
    var var_1 = var_0.x;
    global1 = select(!select(!(!vec4<bool>(global1.x, global1.x, true, global1.x)), !select(vec4<bool>(false, global1.x, true, true), vec4<bool>(true, false, global1.x, true), vec4<bool>(false, true, global1.x, true)), !(!global1.x)), vec4<bool>(any(vec3<bool>(global1.x, !global1.x, any(vec4<bool>(global1.x, false, true, true)))), global1.x, true, true | global1.x), global1.x);
    var var_2 = true;
    global2 = array<Struct_4, 3>();
    return any(global1.yzw);
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> bool {
    var var_0 = Struct_4(arg_2.a, arg_2.b);
    var var_1 = arg_1.a;
    global1 = !vec4<bool>(false, any(vec4<bool>(true, true, global1.x && arg_3.b, !arg_3.b)), global1.x, func_3(arg_2.a.b, Struct_1(var_1.b.a & -2147483647i), var_1.b.a, arg_1.b.b));
    global1 = !(!select(!(!vec4<bool>(true, true, true, arg_3.b)), vec4<bool>(any(vec4<bool>(arg_3.b, global1.x, false, global1.x)), func_3(Struct_1(2147483647i), var_0.b.b, var_1.b.a, Struct_1(u_input.b.x)), u_input.a > global3[_wgslsmith_index_u32(0u, 19u)], true), global1.x));
    var var_2 = vec2<f32>(1f, 1f);
    return arg_3.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>) -> vec2<f32> {
    global1 = vec4<bool>((-2659i ^ (_wgslsmith_mod_i32(u_input.b.x, u_input.d) ^ _wgslsmith_mod_i32(u_input.b.x, -1i))) > (u_input.d & arg_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f + -596f)), _wgslsmith_f_op_f32(1013f - -1028f), !(!global1.x))) < 359f, !all(select(!global1.zyz, select(global1.xwx, global1.zxw, global1.xyy), func_2(-23179i, Struct_4(Struct_3(vec2<f32>(-1133f, -1236f), Struct_1(u_input.b.x)), Struct_3(vec2<f32>(-341f, 1000f), Struct_1(15476i))), global2[_wgslsmith_index_u32(arg_0.x, 3u)], Struct_2(vec3<f32>(3352f, -1402f, 124f), global1.x, arg_0.x)))), true);
    global2 = array<Struct_4, 3>();
    let var_0 = select(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(8071u, u_input.a) >> (arg_0.x % 32u), 19u)] == ~_wgslsmith_add_u32(arg_0.x, 1u), global1.x, !(!select(global1.x, false, true))), select(vec3<bool>((false && global1.x) & global1.x, true, global1.x), vec3<bool>(_wgslsmith_add_i32(12812i, -211i) >= _wgslsmith_add_i32(-1i, arg_1.x), global1.x, false), global1.wwz), false);
    global1 = !(!select(!(!vec4<bool>(var_0.x, false, false, global1.x)), select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), all(vec3<bool>(true, true, global1.x))), !select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, false, global1.x), var_0.x)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-226f * 1510f), -1455f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-910f, -1055f))))))), Struct_1(reverseBits(-1i)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_1.a - vec2<f32>(446f, -1000f)))) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1779f)) * _wgslsmith_f_op_f32(abs(-2168f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))), var_1.a.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_div_f32(-1726f, arg_0.x);
    global0 = abs(_wgslsmith_sub_u32(1u, 0u)) >= u_input.e;
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.e, global3[_wgslsmith_index_u32(46633u, 19u)]), ~vec4<u32>(global3[_wgslsmith_index_u32(u_input.e, 19u)], 0u, global3[_wgslsmith_index_u32(u_input.a, 19u)], 30470u)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 19u)], 19u)], 19u)], 19u)], 19u)], 4294967295u, 30955u), global3[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a), 19u)], 1u, _wgslsmith_div_u32(u_input.a, 5046u)), reverseBits(vec4<u32>(0u, 0u, global3[_wgslsmith_index_u32(14858u, 19u)], u_input.e) & (vec4<u32>(1u, u_input.a, 4294967295u, 4294967295u) << (vec4<u32>(0u, 26560u, 36495u, 25129u) % vec4<u32>(32u))))), ~(~max(u_input.a, global3[_wgslsmith_index_u32(u_input.a, 19u)])) << (_wgslsmith_mult_u32(abs(u_input.e), abs(u_input.e)) % 32u));
    var var_2 = _wgslsmith_sub_u32(1u, global3[_wgslsmith_index_u32(~(firstLeadingBit(~u_input.a) ^ ~global3[_wgslsmith_index_u32(u_input.a, 19u)]), 19u)]);
    var var_3 = !(!(!global1.zwy));
    return vec3<u32>(min(17748u, _wgslsmith_div_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 19u)], 19u)], 19u)], 1u) | global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(1u, 19u)], 4294967295u), global3[_wgslsmith_index_u32(u_input.e, 19u)], _wgslsmith_clamp_u32(u_input.e, global3[_wgslsmith_index_u32(57111u, 19u)], global3[_wgslsmith_index_u32(7362u, 19u)])), 19u)]), global3[_wgslsmith_index_u32(min(51328u, reverseBits(~(~70849u))), 19u)], 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(max(min(vec3<u32>(4294967295u, 107696u, 4294967295u), vec3<u32>(9217u, 0u, global3[_wgslsmith_index_u32(u_input.a, 19u)]) & vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 19u)], 19u)], 28386u, 47102u)) << (func_4(_wgslsmith_f_op_vec2_f32(func_1(vec2<u32>(global3[_wgslsmith_index_u32(17756u, 19u)], 11350u), vec4<i32>(u_input.b.x, -13448i, u_input.d, u_input.c.x))), 294f, Struct_1(u_input.d), true) % vec3<u32>(32u)), abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(3644u, 4294967295u, 31493u), ~vec3<u32>(u_input.e, 51854u, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-681f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 897f)) * _wgslsmith_f_op_f32(f32(-1f) * -589f))));
}

