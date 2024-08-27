struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30>;

var<private> global1: Struct_2;

var<private> global2: f32 = -1470f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> bool {
    global1 = Struct_2(select(select(arg_0.a, select(global1.a, global1.a, vec3<bool>(true, false, global1.b.a)), vec3<bool>(any(arg_0.a), global1.a.x, !arg_0.a.x)), vec3<bool>((false || global1.b.a) && all(vec4<bool>(global1.b.a, arg_0.a.x, false, true)), arg_1 != 41128u, arg_0.b.a), true), Struct_1(all(vec4<bool>(!global1.b.a, true, arg_0.a.x, all(vec4<bool>(true, global1.b.a, false, false)))), arg_1, arg_1, 90273u));
    let var_0 = arg_0;
    global1 = Struct_2(var_0.a, Struct_1((var_0.a.x && (0u < global1.b.b)) | true, 4294967295u, 20859u, 1u));
    let var_1 = true;
    return true;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -1487f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(241f - -220f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-582f, arg_0.x, global1.b.a)) + _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + _wgslsmith_f_op_f32(max(847f, arg_0.x))))));
    let var_1 = Struct_2(!select(!(!vec3<bool>(global1.a.x, true, true)), select(vec3<bool>(global1.b.a, true, global1.a.x), !vec3<bool>(global1.a.x, global1.a.x, true), !global1.a), global1.a), global1.b);
    return Struct_2(!global1.a, Struct_1(func_3(var_1, var_1.b.b) == false, _wgslsmith_div_u32(global1.b.d, global1.b.b), ~(~(~1u)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_1.b.b, 4294967295u, global1.b.d)), select(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(78523u, u_input.a.x, u_input.a.x) ^ vec3<u32>(var_1.b.b, var_1.b.c, u_input.a.x), false))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(arg_0.a, global1.b.c, 0u, u_input.a.x);
    global2 = 415f;
    let var_1 = vec2<bool>(true, !all(vec3<bool>(all(vec2<bool>(false, arg_0.a)), true, false && arg_2.b.a)));
    global0 = array<vec4<i32>, 30>();
    global1 = Struct_2(vec3<bool>(all(!global1.a), ~_wgslsmith_mod_i32(-47404i, 2147483647i) == ~_wgslsmith_clamp_i32(24459i, 38449i, 38597i), !(!arg_1.a)), func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -681f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1247f, 357f) + vec2<f32>(-941f, -1324f))), vec2<f32>(_wgslsmith_f_op_f32(-146f * -1876f), -1753f)))).b);
    return arg_2;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = ~arg_2.b.c;
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1095f, 361f) - vec2<f32>(-800f, 141f))), _wgslsmith_div_vec2_f32(vec2<f32>(-939f, -703f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1912f, -163f))), global1.a.zy)))).b;
    let var_2 = select(arg_1.b.d, var_1.d, select(true, func_3(func_4(Struct_1(true, 31192u, arg_2.b.d, 27051u), var_1, Struct_2(arg_1.a, Struct_1(arg_1.b.a, 2995u, 25093u, arg_2.b.b))), abs(arg_1.b.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(24745u, u_input.a.x, 0u, global1.b.c), vec4<u32>(arg_2.b.d, arg_1.b.c, u_input.a.x, 1u)) <= 1u)) ^ ~firstLeadingBit(var_1.c);
    var var_3 = 1i;
    global1 = func_4(Struct_1(true, arg_1.b.d, _wgslsmith_div_u32(arg_2.b.d, var_2 | ~1u), var_1.c), func_4(global1.b, Struct_1(false, firstLeadingBit(_wgslsmith_div_u32(global1.b.c, global1.b.b)), ~func_2(vec2<f32>(-162f, -611f)).b.c, var_2), arg_1).b, Struct_2(arg_2.a, func_4(func_4(Struct_1(false, 1u, var_2, 4294967295u), global1.b, Struct_2(vec3<bool>(arg_2.b.a, arg_2.a.x, arg_2.b.a), arg_2.b)).b, func_4(Struct_1(var_1.a, 57073u, 1u, 54456u), func_4(var_1, Struct_1(arg_2.b.a, 0u, 7142u, arg_2.b.b), Struct_2(arg_2.a, arg_1.b)).b, arg_2).b, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(592f, -374f) + vec2<f32>(1006f, 1413f)))).b));
    return arg_2.b;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1957f), -139f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1093f + -963f) + _wgslsmith_f_op_f32(-1122f - 440f))))));
    let var_1 = func_5(_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), func_4(Struct_1(arg_1.d > ~u_input.a.x, _wgslsmith_add_u32(~arg_0.b.d, reverseBits(u_input.a.x)), 0u, _wgslsmith_add_u32(u_input.a.x, ~global1.b.b)), arg_0.b, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -517f)))), arg_0);
    let var_2 = arg_0;
    var var_3 = arg_2.wyw;
    let var_4 = -1i;
    return func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 773f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 518f))), 433f))).b;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: i32) -> f32 {
    let var_0 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-2147483647i, arg_3), -arg_3, countOneBits(arg_3)), select(vec3<i32>(0i, 27882i, arg_3) | vec3<i32>(-1i, arg_3, 1i), select(vec3<i32>(39329i, 19423i, 25345i), vec3<i32>(5454i, arg_3, arg_3), arg_0.a), arg_2)) << (_wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, 4113u, 1u)), vec3<u32>(global1.b.b, global1.b.b, 30890u)), ~(select(vec3<u32>(101420u, global1.b.d, u_input.a.x), vec3<u32>(4981u, 132817u, u_input.a.x), arg_0.a) << (min(vec3<u32>(0u, 1u, 0u), vec3<u32>(arg_0.b.b, u_input.a.x, 0u)) % vec3<u32>(32u)))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-788f, 143f)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 848f;
    let var_0 = u_input.a.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(Struct_2(!global1.a, global1.b), Struct_2(vec3<bool>(global1.a.x, false, true), func_1(Struct_2(global1.a, global1.b), global1.b, global0[_wgslsmith_index_u32(global1.b.d, 30u)], vec3<bool>(false, false, global1.a.x))), func_4(func_2(vec2<f32>(-1074f, 917f)).b, func_5(global0[_wgslsmith_index_u32(0u, 30u)], Struct_2(global1.a, global1.b), Struct_2(vec3<bool>(true, global1.b.a, global1.b.a), global1.b)), func_4(global1.b, global1.b, Struct_2(global1.a, global1.b))).a, -(9230i >> (global1.b.d % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(439f, -1069f)))) - 760f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    global1 = func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -2561f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(509f, var_1))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, -1812f)))) - vec2<f32>(_wgslsmith_f_op_f32(round(-625f)), _wgslsmith_f_op_f32(min(var_1, 909f)))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) * -582f);
    let var_3 = Struct_2(!func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-1601f, -1623f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, 288f)))).a, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-422f, -800f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-996f, var_2)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, var_2, min(vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-10915i, -14945i), _wgslsmith_add_i32(2147483647i, -2147483647i)), ~reverseBits(vec2<i32>(29569i, 23012i)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f - var_2)), var_1))), countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a.x), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(var_3.b.d, u_input.a.x, 4294967295u)), vec3<u32>(var_3.b.b, 1u, 111u) & vec3<u32>(14926u, u_input.a.x, 4057u), ~vec3<u32>(var_3.b.c, global1.b.b, 30497u)), abs(vec3<u32>(global1.b.d, u_input.a.x, 0u) & vec3<u32>(27402u, u_input.a.x, 1u)))));
}

