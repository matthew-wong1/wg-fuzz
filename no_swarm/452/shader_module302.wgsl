struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = !select(vec2<bool>(any(vec3<bool>(true, true, false)), !any(vec2<bool>(true, true))), vec2<bool>(reverseBits(u_input.a.x) < select(arg_0, 0i, true), true), vec2<bool>(select(false, all(vec2<bool>(true, true)), any(vec3<bool>(false, false, true))), true));
    var var_1 = Struct_2(Struct_1(0u, countOneBits(_wgslsmith_mod_u32(_wgslsmith_add_u32(36975u, 14299u), _wgslsmith_mod_u32(107422u, 23720u))), -219f, select(!select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), !(!vec4<bool>(var_0.x, true, false, false)), true), ~_wgslsmith_div_u32(reverseBits(0u), ~1u)));
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.a, var_1.a.e, 24633u, (~var_1.a.a | (var_1.a.b >> (var_1.a.b % 32u))) >> (49462u % 32u)), firstTrailingBit(vec4<u32>(1u, ~_wgslsmith_div_u32(var_1.a.e, 1u), 27705u & ~var_1.a.a, ~1u)));
    var var_3 = Struct_1(69716u, 20840u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2117f + var_1.a.c) * _wgslsmith_f_op_f32(1719f - var_1.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c)))), vec4<bool>(all(!var_1.a.d.xx) == true, true, true, false), ~(var_1.a.b | ~var_2.x));
    var var_4 = Struct_2(var_1.a);
    return ~min(_wgslsmith_sub_u32(24973u, ~var_3.b), 14812u);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = vec4<bool>(true, true, arg_0, false);
    var var_1 = Struct_1(func_3(u_input.a.x), _wgslsmith_mult_u32(~select(~5602u, 16687u, true), ~1u), _wgslsmith_f_op_f32(sign(581f)), var_0, 4294967295u);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1612f, -1053f)))))));
    global0 = _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(abs(var_1.c)))));
    global0 = var_1.c;
    return Struct_2(Struct_1(_wgslsmith_add_u32(4294967295u, var_1.b), ~(var_1.a << (4294967295u % 32u)), _wgslsmith_f_op_f32(var_1.c + var_1.c), select(!var_1.d, !var_0, var_0.x || !arg_0), var_1.e));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global0 = arg_0.a.c;
    let var_0 = firstTrailingBit(abs(~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(arg_0.a.b, 37531u, 1u)))));
    let var_1 = func_2(any(arg_1.a.d), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 6266i, arg_2), -_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, arg_2, -28467i)), vec3<i32>(29809i, 0i, 1i), vec3<i32>(u_input.a.x, u_input.a.x, arg_2))));
    let var_2 = all(!func_2(true, vec3<i32>(-u_input.a.x, u_input.a.x >> (0u % 32u), ~(-2147483647i))).a.d.yxz);
    global0 = -462f;
    return Struct_2(Struct_1(_wgslsmith_mod_u32(~82930u, ~arg_1.a.a) >> (func_3(select(-2147483647i, u_input.a.x, true)) % 32u), _wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.zz), vec2<u32>(var_1.a.b, 8041u)), _wgslsmith_f_op_f32(step(arg_1.a.c, _wgslsmith_f_op_f32(var_1.a.c * _wgslsmith_f_op_f32(round(986f))))), vec4<bool>(!(3656u < arg_0.a.b), arg_1.a.b >= _wgslsmith_clamp_u32(var_1.a.e, 22424u, var_0.x), true | !var_2, arg_1.a.d.x), 0u));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = 45768u;
    return func_2(arg_1, vec3<i32>(u_input.a.x, u_input.a.x, 0i)).a;
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = vec3<bool>(true | !(!(true & arg_0.a.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -2767f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), arg_0.a.c)), (arg_0.a.d.x & (901f != _wgslsmith_f_op_f32(170f + arg_0.a.c))) && false);
    let var_1 = func_5(func_4(func_2(_wgslsmith_f_op_f32(-arg_0.a.c) <= _wgslsmith_f_op_f32(-1023f * arg_0.a.c), vec3<i32>(-1i, _wgslsmith_div_i32(-25886i, u_input.a.x), u_input.a.x)), func_2(arg_0.a.d.x, abs(firstTrailingBit(vec3<i32>(2147483647i, -12343i, -1i)))), max(-11157i, ~(-2147483647i))), false, func_4(arg_0, Struct_2(arg_0.a), u_input.a.x).a.d.wx, vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), vec2<i32>(-2147483647i, u_input.a.x))), 2147483647i, ~24178i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-1i, 1i), u_input.a.x, 1i, countOneBits(u_input.a.x)), -vec4<i32>(1i, 2147483647i, -47861i, u_input.a.x))));
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(-1468f)), -825f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + arg_0.a.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c * 2697f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(round(-2804f)), _wgslsmith_f_op_f32(sign(arg_0.a.c)), -709f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c, var_1.c, var_1.c, -103f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-198f, 1318f, var_1.c, -1787f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-371f, -1000f, 709f, arg_0.a.c), vec4<f32>(982f, 674f, arg_0.a.c, 119f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1859f, arg_0.a.c, var_1.c, -793f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-890f, 2097f, var_1.c, 1644f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2011f, -1663f, 2089f, var_1.c)))))));
    var_0 = !arg_0.a.d.zww;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 13639u), vec2<u32>(11504u, 1u)), firstTrailingBit(59087u)) & ~(~83259u), _wgslsmith_f_op_f32(f32(-1f) * -697f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(34190u, 55785u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c))), _wgslsmith_div_vec4_f32(vec4<f32>(378f, -623f, var_0.a.c, var_0.a.c), vec4<f32>(-2710f, -2353f, var_0.a.c, -762f))))) - vec4<f32>(var_0.a.c, _wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(1u, var_0.a.e, -1924f, var_0.a.d, var_0.a.e)))), _wgslsmith_f_op_f32(var_0.a.c + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = !(!select(!var_0.a.d.wyz, func_5(Struct_2(var_0.a), all(vec4<bool>(var_0.a.d.x, false, true, true)), func_2(true, vec3<i32>(-2440i, u_input.a.x, u_input.a.x)).a.d.wx, vec4<i32>(-22591i, u_input.a.x, 0i, -41949i)).d.wyx, func_4(Struct_2(var_0.a), Struct_2(Struct_1(59613u, var_0.a.e, 211f, var_0.a.d, 1u)), 0i).a.d.xxw));
    var_0 = func_2(!(!(false || func_4(Struct_2(var_0.a), Struct_2(Struct_1(var_0.a.b, 1u, var_1.x, vec4<bool>(false, false, true, false), 4294967295u)), -2147483647i).a.d.x)), (select(_wgslsmith_div_vec3_i32(vec3<i32>(64135i, 1i, u_input.a.x), vec3<i32>(42420i, u_input.a.x, 1i)), vec3<i32>(u_input.a.x, u_input.a.x, 1i), func_4(Struct_2(var_0.a), Struct_2(Struct_1(4294967295u, 38371u, var_1.x, var_0.a.d, 0u)), u_input.a.x).a.d.zyz) >> (firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.b, var_0.a.a, var_0.a.b), vec3<u32>(var_0.a.b, 0u, var_0.a.a))) % vec3<u32>(32u))) ^ vec3<i32>(u_input.a.x, 2147483647i, -2147483647i));
    var var_3 = Struct_2(Struct_1((max(var_0.a.b, 0u) | _wgslsmith_add_u32(57735u, var_0.a.b)) << (35787u % 32u), var_0.a.b, var_0.a.c, func_4(Struct_2(func_2(true, vec3<i32>(2147483647i, 37032i, u_input.a.x)).a), func_4(func_2(var_0.a.d.x, vec3<i32>(11727i, u_input.a.x, u_input.a.x)), Struct_2(var_0.a), 1i), _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, u_input.a.x), 1i)).a.d, var_0.a.b));
    var var_4 = !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(6823u, var_0.a.e, 1407f, var_3.a.d, var_0.a.e)))), func_2(true, vec3<i32>(u_input.a.x, -1i, u_input.a.x)).a.c) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1751f) * _wgslsmith_f_op_f32(func_1(Struct_2(var_3.a))))) < 554f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a.x, -2147483647i, 2147483647i >> (0u % 32u)), 0i, -vec4<i32>(firstLeadingBit(u_input.a.x >> (12866u % 32u)), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-27029i, u_input.a.x, 2147483647i, -2147483647i) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, 39316i, -1i)), ~(u_input.a.x << (var_0.a.e % 32u))), 0i, var_0.a.e);
}

