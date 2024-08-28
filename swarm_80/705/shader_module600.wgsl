struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<bool>(false, false), vec3<f32>(-999f, 1000f, 990f), 2147483647i, -912f, false), Struct_1(vec2<bool>(false, true), vec3<f32>(671f, 1080f, -823f), 30303i, -805f, true), Struct_1(vec2<bool>(true, false), vec3<f32>(210f, -281f, -757f), 7417i, 488f, false), Struct_1(vec2<bool>(false, true), vec3<f32>(240f, 2728f, 243f), 1i, 507f, true), Struct_1(vec2<bool>(true, true), vec3<f32>(341f, -1623f, 496f), i32(-2147483648), 522f, false), Struct_1(vec2<bool>(false, true), vec3<f32>(237f, 371f, -297f), 2147483647i, -2715f, false), Struct_1(vec2<bool>(false, false), vec3<f32>(-1267f, 480f, -1129f), 0i, 1000f, false), Struct_1(vec2<bool>(false, true), vec3<f32>(-1767f, -780f, -707f), 2147483647i, 211f, false), Struct_1(vec2<bool>(false, true), vec3<f32>(-1288f, 1080f, -750f), -13836i, -954f, true), Struct_1(vec2<bool>(true, false), vec3<f32>(235f, -1000f, 1000f), 1i, -139f, true), Struct_1(vec2<bool>(true, true), vec3<f32>(246f, 619f, -848f), -27817i, -2527f, false), Struct_1(vec2<bool>(true, true), vec3<f32>(776f, 1120f, 1000f), i32(-2147483648), -1146f, false));

var<private> global2: vec2<bool>;

var<private> global3: vec2<bool> = vec2<bool>(false, true);

var<private> global4: array<vec2<i32>, 24>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = Struct_1(select(select(!vec2<bool>(true, global2.x), !select(vec2<bool>(false, global2.x), vec2<bool>(false, true), global3.x), select(vec2<bool>(true, true), !vec2<bool>(false, global2.x), select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, true), global2.x))), select(vec2<bool>(all(vec4<bool>(false, global2.x, true, global3.x)), u_input.c < 11816u), select(vec2<bool>(true, global2.x), select(vec2<bool>(false, global3.x), vec2<bool>(false, true), false), all(vec2<bool>(global2.x, global3.x))), true), !(true || all(vec2<bool>(false, false)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1058f, 1252f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1560f), _wgslsmith_f_op_f32(ceil(-1112f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(312f, -492f)) - -1740f), _wgslsmith_f_op_f32(min(-741f, _wgslsmith_f_op_f32(-149f + 2479f))))), _wgslsmith_mod_i32(global0.x, u_input.a.x & u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-561f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(935f - 401f) * _wgslsmith_f_op_f32(766f - 216f))))), all(select(!vec3<bool>(global2.x, global2.x, false), !select(vec3<bool>(true, global3.x, true), vec3<bool>(true, true, global3.x), global2.x), vec3<bool>(true, global3.x, false))));
    let var_1 = var_0;
    let var_2 = -1928f;
    global3 = select(var_1.a, select(var_0.a, !select(!vec2<bool>(var_1.e, false), vec2<bool>(true, true), true && global3.x), vec2<bool>(true, !all(vec4<bool>(false, true, var_0.a.x, global2.x)))), var_1.a);
    let var_3 = global1[_wgslsmith_index_u32(u_input.b.x, 12u)];
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -331f)));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(select(select(vec2<bool>(u_input.c < u_input.c, global2.x), vec2<bool>(global3.x, global2.x), !select(vec2<bool>(false, true), vec2<bool>(true, global2.x), vec2<bool>(true, global3.x))), select(select(vec2<bool>(true, true), select(vec2<bool>(global2.x, global3.x), vec2<bool>(true, true), true), all(vec3<bool>(global3.x, global3.x, true))), select(!vec2<bool>(true, global3.x), !vec2<bool>(global3.x, true), !global2.x), any(!vec2<bool>(global3.x, true))), global2.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1515f, -1402f) * -247f)), _wgslsmith_f_op_f32(func_3()), 1633f), _wgslsmith_dot_vec4_i32((select(vec4<i32>(-1665i, u_input.a.x, u_input.a.x, -8242i), vec4<i32>(-17552i, 1413i, -49631i, u_input.a.x), global3.x) & (vec4<i32>(global0.x, u_input.a.x, u_input.a.x, global0.x) | vec4<i32>(0i, 2147483647i, u_input.a.x, u_input.a.x))) ^ vec4<i32>(global0.x, -u_input.a.x, -15184i, abs(u_input.a.x)), firstTrailingBit(-vec4<i32>(2147483647i, u_input.a.x, 2147483647i, global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1674f), !global3.x);
    var var_1 = global1[_wgslsmith_index_u32(~(~u_input.b.x), 12u)];
    let var_2 = u_input.b.x;
    var var_3 = select(!(!vec4<bool>(any(var_0.a), false, var_1.e, true)), vec4<bool>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_0.c, global0.x, 0i)) != countOneBits(u_input.a.x), global2.x, all(!var_0.a) == all(select(vec3<bool>(var_0.a.x, false, false), vec3<bool>(var_0.e, false, false), vec3<bool>(true, global2.x, false))), any(vec3<bool>(true, true == global3.x, true))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d, var_1.b.x))) != var_0.d, (any(vec3<bool>(global3.x, global3.x, true)) | global3.x) == true, true, select(!global2.x, global2.x, var_0.a.x)));
    var_0 = Struct_1(!(!(!select(var_0.a, vec2<bool>(global3.x, global3.x), var_1.a))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -824f) * -1002f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(651f, var_0.b.x)))), var_3.x)), _wgslsmith_f_op_f32(-354f * -1000f), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(-var_1.b.x)))), 27020i, 925f, var_1.e);
    return (i32(-1i) * -abs(0i >> (var_2 % 32u))) | ~(u_input.a.x & global0.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    global3 = select(arg_3.a, select(select(select(arg_3.a, vec2<bool>(global3.x, arg_1.a.x), true), !(!vec2<bool>(global3.x, global2.x)), !select(arg_0.yz, vec2<bool>(arg_1.a.x, false), vec2<bool>(arg_0.x, true))), arg_0.zx, arg_3.e), func_2() != abs(-global0.x | -global0.x));
    let var_0 = countOneBits(_wgslsmith_mult_u32(~(arg_2 >> (4294967295u % 32u)), 6576u));
    global1 = array<Struct_1, 12>();
    global1 = array<Struct_1, 12>();
    global3 = vec2<bool>(global3.x, false);
    return countOneBits(max(1u, arg_2)) << (_wgslsmith_add_u32(u_input.c, ~(~firstTrailingBit(0u))) % 32u);
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    var var_0 = 738f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(exp2(arg_2.b.x)))));
    global3 = arg_2.a;
    return all(arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, u_input.b.x, ~9557u), ~(vec4<u32>(u_input.b.x, 50597u, 9548u, 4294967295u) | vec4<u32>(53188u, 36708u, 3218u, u_input.b.x))), reverseBits(~u_input.c), u_input.b.x & ~u_input.b.x, 0u);
    let var_1 = global1[_wgslsmith_index_u32(35023u, 12u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(774f)) - var_1.b.x))) * var_1.d);
    var var_3 = select(vec4<bool>(func_4(func_1(vec3<bool>(false, false, global3.x), global1[_wgslsmith_index_u32(u_input.b.x, 12u)], var_0.x, Struct_1(vec2<bool>(true, false), vec3<f32>(var_1.b.x, -487f, -1159f), -8392i, var_2, false)), global4[_wgslsmith_index_u32(~var_0.x, 24u)], global1[_wgslsmith_index_u32(~u_input.c, 12u)]) | !any(vec4<bool>(false, true, global3.x, var_1.a.x)), global3.x, global3.x, !(!global2.x)), vec4<bool>(!(!(!var_1.e)), true, global2.x, all(select(select(vec3<bool>(var_1.e, false, global3.x), vec3<bool>(false, global2.x, false), global3.x), !vec3<bool>(true, var_1.e, true), true))), !select(select(!vec4<bool>(true, false, global2.x, false), !vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(global2.x, false, true, global2.x)), vec4<bool>(!global2.x, any(vec3<bool>(false, false, false)), global2.x, any(vec4<bool>(true, false, var_1.a.x, true))), _wgslsmith_f_op_f32(trunc(-664f)) > var_1.d));
    let var_4 = Struct_1(var_3.zz, var_1.b, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-628f, 536f), _wgslsmith_f_op_f32(-454f * -350f))))), any(vec3<bool>(true || global3.x, global3.x, global3.x)));
    let var_5 = var_0.x;
    var_0 = vec4<u32>(~(~84432u), 1u, u_input.c & ~_wgslsmith_mult_u32(~u_input.b.x, 19280u), 1u);
    var var_6 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, 4294967295u) ^ ~39612u, _wgslsmith_mult_u32(53327u, func_1(!var_3.xwx, var_4, ~var_0.x, global1[_wgslsmith_index_u32(4294967295u, 12u)]))), ~11029u), 12u)];
    var var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_4.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1045f + 579f))), reverseBits(_wgslsmith_sub_vec2_i32(-vec2<i32>(48218i, var_1.c), min(abs(vec2<i32>(82476i, var_1.c)), ~global0.yz))), ~(~_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_clamp_u32(1u, 3996u, 96053u))), vec4<u32>(0u, ~(~0u >> (firstTrailingBit(4294967295u) % 32u)), 1u, 5268u), vec4<i32>(~global0.x, abs(countOneBits(var_1.c)), _wgslsmith_dot_vec3_i32(~u_input.a, u_input.a), _wgslsmith_clamp_i32(0i, 55539i, -min(var_6.c, 2147483647i))));
}

