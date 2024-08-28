struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-1968f, -1000f, 1372f), 74126u, vec3<bool>(false, true, false), true, Struct_1(vec3<i32>(29262i, i32(-2147483648), 2147483647i), vec3<u32>(4294967295u, 44964u, 1u), -1i, 1i));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(0i, -33235i, 1i), vec3<u32>(8160u, 61451u, 40020u), i32(-2147483648), -1157i);

var<private> global2: u32;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2, arg_3: vec4<f32>) -> i32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.yy - vec2<f32>(global0.a.x, 512f)) - arg_3.xw))) + _wgslsmith_div_vec2_f32(var_0.a.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2353f, 173f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1289f, -1130f))))));
    let var_2 = Struct_2(global0.a, ~(~1u), !vec3<bool>(!(u_input.c.x >= 58313u), any(!vec4<bool>(global0.c.x, false, arg_2.d, true)), false), true, global0.e);
    var var_3 = arg_2.c.x;
    var_3 = false;
    return -2147483647i;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> i32 {
    global1 = arg_2.e;
    var var_0 = all(select(!(!vec4<bool>(arg_2.c.x, arg_1, true, true)), !select(vec4<bool>(true, arg_0.c.x, false, arg_1), vec4<bool>(false, global0.d, arg_1, arg_1), global0.d), !vec4<bool>(false, true, arg_0.c.x, true))) & false;
    var_0 = true;
    global1 = Struct_1(~vec3<i32>(u_input.d, -func_3(vec4<u32>(17297u, global0.b, 4294967295u, 32273u), -21606i, arg_2, vec4<f32>(arg_2.a.x, 1000f, 860f, arg_2.a.x)), -27399i), vec3<u32>(global1.b.x, 75231u, ~countOneBits(arg_2.b) << (global0.e.b.x % 32u)), 0i, 2147483647i);
    let var_1 = arg_1;
    return -select(abs(-u_input.d), _wgslsmith_div_i32(arg_2.e.a.x, firstTrailingBit(~u_input.a)), true && any(global0.c.xy));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_1(min(global0.e.a, vec3<i32>(firstTrailingBit(global3.d), -_wgslsmith_clamp_i32(global3.d, 0i, 2147483647i), 3100i)), _wgslsmith_div_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global1.b.x, 0u), global0.e.b)), u_input.c.yyz) & global1.b, ~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(min(select(global3.d, 1i, arg_0), -19180i), -(~43106i)), reverseBits(vec2<i32>(func_2(Struct_2(vec3<f32>(global0.a.x, global0.a.x, global0.a.x), global0.b, vec3<bool>(global0.d, false, arg_0), false, global0.e), true, Struct_2(global0.a, 0u, vec3<bool>(global0.d, global0.d, false), false, global0.e)), _wgslsmith_div_i32(0i, global0.e.a.x)))));
    var var_1 = Struct_1(global1.a, countOneBits(countOneBits(vec3<u32>(115864u, 1u, var_0.b.x) >> ((vec3<u32>(var_0.b.x, 0u, 24156u) | vec3<u32>(u_input.b, 18404u, 45349u)) % vec3<u32>(32u)))), select(firstTrailingBit(reverseBits(52663i & global1.d)), global1.d, true), min(-15346i, -1i));
    let var_2 = var_1.c;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -341f, _wgslsmith_f_op_f32(-285f + arg_1.x))), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(~global0.e.b.x, ~4294967295u), 0u), global0.c, 11075i < ~(-_wgslsmith_add_i32(var_1.a.x, global0.e.d)), Struct_1(~vec3<i32>(-global0.e.a.x, _wgslsmith_sub_i32(global3.c, -4649i), _wgslsmith_mod_i32(var_1.c, 15888i)), (var_1.b << (var_1.b % vec3<u32>(32u))) & vec3<u32>(select(global1.b.x, 6814u, false), global3.b.x, var_1.b.x), func_3(~(~vec4<u32>(global3.b.x, 93727u, u_input.b, 1u)), ~4101i, Struct_2(vec3<f32>(arg_1.x, 211f, global0.a.x), _wgslsmith_dot_vec2_u32(var_1.b.zz, var_0.b.yz), select(global0.c, vec3<bool>(true, true, true), global0.d), all(global0.c), Struct_1(vec3<i32>(-1i, 14004i, u_input.a), vec3<u32>(0u, global0.e.b.x, 4294967295u), -2147483647i, 5823i)), vec4<f32>(_wgslsmith_div_f32(143f, arg_1.x), _wgslsmith_f_op_f32(-1015f * global0.a.x), global0.a.x, 1827f)), -_wgslsmith_sub_i32(_wgslsmith_mod_i32(global3.a.x, 1i), global3.d ^ 0i)));
    global0 = Struct_2(vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.a.x, arg_1.x, arg_0)) - arg_1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) * _wgslsmith_f_op_f32(min(arg_1.x, 1101f)))), _wgslsmith_f_op_f32(2261f + 1000f)), 4294967295u, !select(!var_3.c, !var_3.c, vec3<bool>(true, global1.b.x >= u_input.b, true)), any(!(!select(global0.c, vec3<bool>(arg_0, false, arg_0), global0.c))), global0.e);
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(205f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a.x), 867f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + global0.a.x))), 1u, !vec3<bool>(global0.d, all(var_3.c), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 781f))) <= _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, 541f) * _wgslsmith_f_op_f32(-var_3.a.x))), global0.e);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    var var_0 = arg_2;
    global1 = func_1(true || !any(vec3<bool>(arg_0.d, arg_1.d, true)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a * _wgslsmith_f_op_vec3_f32(select(global0.a, global0.a, arg_0.c))))))).e;
    var var_1 = arg_1.e;
    var_0 = !((all(select(vec4<bool>(global0.d, arg_2, global0.c.x, global0.c.x), vec4<bool>(global0.d, false, false, arg_2), global0.c.x)) || global0.c.x) && all(vec3<bool>(true, false, true)));
    var_0 = arg_0.c.x;
    return Struct_1(select(min(vec3<i32>(global0.e.d, global3.a.x, var_1.a.x) << (global3.b % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(var_1.a, vec3<i32>(arg_0.e.c, var_1.a.x, -11273i), global3.a)), global1.a, arg_1.c) >> (firstTrailingBit(arg_1.e.b) % vec3<u32>(32u)), arg_0.e.b, _wgslsmith_div_i32(-2147483647i, global3.c) & max(819i, global0.e.c), var_1.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2, 1474f)), _wgslsmith_f_op_f32(1000f * 830f)) + arg_0.a.x)));
    let var_1 = true;
    let var_2 = global0.e;
    var var_3 = vec3<u32>(~(~(~98080u)) << (_wgslsmith_mult_u32(arg_0.b, 0u) % 32u), global1.b.x, ~arg_1);
    var var_4 = select(_wgslsmith_mod_u32(global0.e.b.x >> (29104u % 32u), firstLeadingBit(global3.b.x)), max(1u, _wgslsmith_clamp_u32(~func_4(arg_0, arg_0, true).b.x, arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(19975u, global1.b.x, 48129u), global0.e.b))), all(!select(vec3<bool>(false, var_1, global0.d), func_1(arg_0.d, vec3<f32>(arg_0.a.x, arg_0.a.x, arg_2)).c, vec3<bool>(true, global0.d, arg_0.d))));
    return func_1(global1.b.x <= var_3.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(arg_0.a.x + -1294f), _wgslsmith_f_op_f32(f32(-1f) * -749f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.a))), reverseBits(_wgslsmith_sub_u32(u_input.e.x, 40544u) & (global3.b.x & global1.b.x)), select(!vec3<bool>(global0.c.x, true, false), vec3<bool>(!global0.d, false, any(vec4<bool>(false, false, true, global0.d))), vec3<bool>(any(global0.c.yz), global0.c.x & false, global0.c.x)), true, func_4(func_1(!global0.d, vec3<f32>(2115f, -1110f, global0.a.x)), func_1(func_1(global0.c.x, global0.a).d, _wgslsmith_f_op_vec3_f32(abs(global0.a))), true)), ~(~global0.e.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(166f, global0.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1661f), _wgslsmith_f_op_f32(-1364f * 1000f), all(global0.c))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -749f)))));
    var var_1 = -176f;
    var var_2 = countOneBits(global0.e.b.x);
    var var_3 = func_1(global0.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(min(1412f, 318f)))), -130f, -659f)));
    var_0 = func_1(false, vec3<f32>(_wgslsmith_f_op_f32(-func_1(!global0.d, _wgslsmith_f_op_vec3_f32(select(global0.a, var_0.a, true))).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), 331f));
    global3 = Struct_1(abs(-firstLeadingBit(~vec3<i32>(global1.a.x, var_3.e.c, -2147483647i))), _wgslsmith_div_vec3_u32(vec3<u32>(29758u, 0u, abs(var_0.b) << (_wgslsmith_div_u32(var_0.e.b.x, u_input.e.x) % 32u)), ~global1.b), -reverseBits(-33989i), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, 0u, 1u);
}

