struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(415f, -1032f, -200f);

var<private> global1: vec3<i32> = vec3<i32>(0i, 61988i, 15238i);

var<private> global2: f32 = -1142f;

var<private> global3: array<bool, 8> = array<bool, 8>(true, true, false, true, true, false, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = ~abs(vec2<i32>(global1.x, 0i));
    var var_1 = Struct_1(select(!vec4<bool>(!global3[_wgslsmith_index_u32(36285u, 8u)], true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(49863u, 0u, 2745u, 1u), vec4<u32>(1u, 66222u, 38488u, 1u)), 8u)], global3[_wgslsmith_index_u32(87242u, 8u)] != global3[_wgslsmith_index_u32(1u, 8u)]), !(!select(vec4<bool>(false, global3[_wgslsmith_index_u32(9534u, 8u)], false, global3[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<bool>(global3[_wgslsmith_index_u32(33393u, 8u)], false, global3[_wgslsmith_index_u32(1u, 8u)], true), global3[_wgslsmith_index_u32(4596u, 8u)])), select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(2954u, 8u)], true, true), vec4<bool>(true, any(vec2<bool>(global3[_wgslsmith_index_u32(0u, 8u)], false)), arg_0 > 530f, all(vec4<bool>(global3[_wgslsmith_index_u32(48059u, 8u)], global3[_wgslsmith_index_u32(100195u, 8u)], true, true))), vec4<bool>(true, true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-394f)), global0.x, global0.x), vec2<bool>(true, false));
    let var_2 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -427f) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.x))), true, var_1.a.x, var_1.c.x | true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - 543f), global0.x, 1000f)), vec2<bool>(!any(var_1.a.yxz), all(select(select(var_1.a.yx, vec2<bool>(var_1.c.x, var_1.c.x), global3[_wgslsmith_index_u32(7187u, 8u)]), var_1.a.zw, true))));
    let var_3 = var_2;
    var_0 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(abs(~select(vec2<i32>(-32595i, -19252i), vec2<i32>(var_0.x, u_input.c), false))), ~(~max(countOneBits(global1.xx), firstTrailingBit(u_input.b.yx))), vec2<i32>(abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1.x, u_input.c, var_0.x, -235i), reverseBits(vec4<i32>(global1.x, u_input.c, 2147483647i, -31021i)))), ~firstLeadingBit(var_0.x)));
    return !var_3.c.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> vec3<f32> {
    let var_0 = -5745i;
    var var_1 = vec4<bool>(all(vec2<bool>(func_3(_wgslsmith_f_op_f32(max(-743f, global0.x))), global3[_wgslsmith_index_u32(34621u, 8u)])), true, -26450i >= firstLeadingBit(global1.x), select(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-242f, 813f)))), true, true));
    let var_2 = Struct_1(select(!select(select(vec4<bool>(var_1.x, false, false, global3[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(var_1.x, true, global3[_wgslsmith_index_u32(arg_0.x, 8u)], global3[_wgslsmith_index_u32(arg_0.x, 8u)]), vec4<bool>(false, var_1.x, global3[_wgslsmith_index_u32(arg_0.x, 8u)], true)), !vec4<bool>(arg_1, global3[_wgslsmith_index_u32(arg_0.x, 8u)], global3[_wgslsmith_index_u32(25266u, 8u)], false), select(vec4<bool>(arg_1, arg_1, global3[_wgslsmith_index_u32(16402u, 8u)], false), vec4<bool>(global3[_wgslsmith_index_u32(arg_0.x, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)], false, false), vec4<bool>(true, global3[_wgslsmith_index_u32(arg_0.x, 8u)], false, arg_1))), vec4<bool>(var_1.x, any(!vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(arg_0.x, 8u)])), any(vec2<bool>(arg_1, global3[_wgslsmith_index_u32(1u, 8u)])), -1533f < global0.x), arg_1), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1049f, global0.x)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1908f, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -553f, global0.x) + vec3<f32>(282f, 516f, global0.x))))))), !var_1.wz);
    var var_3 = var_2;
    let var_4 = vec2<u32>(countOneBits(~(~arg_0.x)) ^ arg_0.x, abs(34599u) & _wgslsmith_dot_vec2_u32(~select(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(50535u, 15519u), var_3.c), vec2<u32>(~12463u, firstLeadingBit(4294967295u))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1388f, 1000f, global0.x) * var_2.b))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    return arg_2;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_sub_i32(-(global1.x | global1.x), u_input.a.x);
    var var_1 = func_4(Struct_1(vec4<bool>(!(global0.x <= global0.x), _wgslsmith_div_u32(1u, 32230u) < _wgslsmith_dot_vec3_u32(vec3<u32>(47127u, 1u, 33923u), vec3<u32>(26105u, 15098u, 1u)), true, _wgslsmith_f_op_f32(f32(-1f) * -471f) == global0.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -647f, -1000f) * vec3<f32>(global0.x, global0.x, 433f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(1u, 1u, 4294967295u), true))), func_3(_wgslsmith_f_op_f32(trunc(global0.x))))), !(!vec2<bool>(global3[_wgslsmith_index_u32(11835u, 8u)], false))), !any(select(!vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(56440u, 8u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(488u, 8u)], true, global3[_wgslsmith_index_u32(42397u, 8u)], global3[_wgslsmith_index_u32(61832u, 8u)]), vec4<bool>(global3[_wgslsmith_index_u32(9413u, 8u)], global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(46309u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)]), global3[_wgslsmith_index_u32(33804u, 8u)]), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(58971u, 8u)], true, global3[_wgslsmith_index_u32(4294967295u, 8u)]))), Struct_1(!select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(20185u, 8u)], global3[_wgslsmith_index_u32(45103u, 8u)], true), vec4<bool>(true, false, true, true), vec4<bool>(global3[_wgslsmith_index_u32(68073u, 8u)], global3[_wgslsmith_index_u32(1686u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(4117u, 8u)])), !vec4<bool>(true, false, global3[_wgslsmith_index_u32(24008u, 8u)], true), !vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 8u)], false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(443f, _wgslsmith_f_op_f32(sign(-275f)), _wgslsmith_f_op_f32(select(791f, 934f, false)))), vec2<bool>(!select(false, true, true), global3[_wgslsmith_index_u32(firstLeadingBit(41169u), 8u)])));
    let var_2 = vec4<u32>(21557u, 21490u, (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8373u, 29525u, 51982u), select(vec4<u32>(26625u, 45625u, 46373u, 24128u), vec4<u32>(1u, 0u, 15101u, 36834u), vec4<bool>(global3[_wgslsmith_index_u32(1u, 8u)], var_1.a.x, false, var_1.c.x))) ^ 55717u) << (4294967295u % 32u), 0u);
    let var_3 = Struct_1(var_1.a, vec3<f32>(-349f, _wgslsmith_f_op_f32(global0.x - -1315f), _wgslsmith_f_op_f32(select(717f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-513f))), true))), !vec2<bool>(any(select(var_1.a, var_1.a, true)), var_1.c.x));
    var var_4 = select(27532u, var_2.x, !(!any(!vec3<bool>(false, false, global3[_wgslsmith_index_u32(var_2.x, 8u)]))));
    return 56793u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = countOneBits(~vec2<u32>(~func_1(), _wgslsmith_mod_u32(select(1u, 23924u, global3[_wgslsmith_index_u32(1u, 8u)]), 48477u)));
    let var_2 = Struct_1(vec4<bool>(func_3(539f), all(vec3<bool>(false, true, !global3[_wgslsmith_index_u32(0u, 8u)])), global3[_wgslsmith_index_u32(38660u, 8u)], all(vec3<bool>(global3[_wgslsmith_index_u32(var_1.x, 8u)], false, true))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(562f, -995f, global0.x)))))), select(vec2<bool>(false, false), !(!(!vec2<bool>(global3[_wgslsmith_index_u32(var_1.x, 8u)], global3[_wgslsmith_index_u32(var_1.x, 8u)]))), true));
    var_1 = vec2<u32>(_wgslsmith_add_u32(var_1.x, ~4294967295u), 33516u);
    global1 = _wgslsmith_clamp_vec3_i32(select(min(select(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(global1.x, u_input.d, u_input.a.x)), vec3<i32>(-1i, 1i, global1.x), false), u_input.b), -(~vec3<i32>(u_input.c, u_input.d, 1i)) & vec3<i32>(global1.x & u_input.c, global1.x, firstLeadingBit(global1.x)), var_2.b.x == global0.x), u_input.b, ~vec3<i32>(1i, firstTrailingBit(_wgslsmith_div_i32(-2147483647i, 2147483647i)), i32(-1i) * -2147483647i));
    let var_3 = true;
    global2 = global0.x;
    let var_4 = 48116i;
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, var_1.x, countOneBits(~(countOneBits(vec2<u32>(var_1.x, var_1.x)) ^ max(vec2<u32>(18785u, var_1.x), vec2<u32>(1u, var_1.x)))), -1i, -(vec4<i32>(var_4 >> (var_1.x % 32u), var_4, 1i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 1i, var_4, 1i), ~vec4<i32>(28035i, u_input.d, -1i, var_4))));
}

