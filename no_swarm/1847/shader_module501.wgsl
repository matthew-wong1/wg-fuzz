struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-238f, 254f, 966f), vec3<f32>(1379f, 1000f, -513f), vec3<f32>(-763f, 1272f, 445f), vec3<f32>(-432f, 1733f, 256f), vec3<f32>(660f, 423f, -1000f));

var<private> global1: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(true, true, vec2<u32>(0u, 1u)), Struct_4(true, true, vec2<u32>(4294967295u, 65165u)), Struct_4(true, true, vec2<u32>(4294967295u, 38979u)), Struct_4(false, false, vec2<u32>(31950u, 1u)), Struct_4(false, false, vec2<u32>(4294967295u, 0u)), Struct_4(true, false, vec2<u32>(42566u, 1u)), Struct_4(false, false, vec2<u32>(20008u, 0u)), Struct_4(false, true, vec2<u32>(43220u, 86837u)), Struct_4(false, true, vec2<u32>(111919u, 1u)), Struct_4(true, true, vec2<u32>(4294967295u, 36156u)), Struct_4(false, true, vec2<u32>(18373u, 4294967295u)), Struct_4(true, true, vec2<u32>(4294967295u, 0u)), Struct_4(false, true, vec2<u32>(8361u, 29801u)), Struct_4(false, false, vec2<u32>(44837u, 15156u)), Struct_4(false, false, vec2<u32>(0u, 13161u)), Struct_4(false, false, vec2<u32>(58485u, 41168u)), Struct_4(false, false, vec2<u32>(4294967295u, 71698u)), Struct_4(true, true, vec2<u32>(1u, 0u)), Struct_4(false, true, vec2<u32>(1u, 4294967295u)));

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec3<bool> {
    let var_0 = 1i;
    global1 = array<Struct_4, 19>();
    var var_1 = Struct_2(-499f, !(false && all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(sign(1000f)));
    let var_2 = _wgslsmith_div_u32(29341u, global2.b & 1u);
    var var_3 = Struct_2(495f, 756f != _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-359f, var_1.a))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a * var_1.a))))))));
    return select(vec3<bool>(!global2.a, var_1.b, all(select(!vec4<bool>(var_1.b, false, var_3.b, global2.a), vec4<bool>(true, true, true, true), var_1.a > var_1.c))), vec3<bool>(!(1332i < var_0), var_3.b || !all(vec2<bool>(global2.a, false)), var_1.b), -1465f < _wgslsmith_f_op_f32(step(var_3.a, _wgslsmith_f_op_f32(exp2(var_3.c)))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = true;
    var var_1 = Struct_2(702f, global2.a, _wgslsmith_div_f32(-570f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1574f)) * 805f) - -171f)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1654f, var_1.c))) + _wgslsmith_f_op_f32(-1316f - 612f))), true, _wgslsmith_f_op_f32(-102f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))));
    global0 = array<vec3<f32>, 5>();
    var var_2 = false;
    return Struct_2(var_1.c, !(all(func_3(arg_0.x)) & false), _wgslsmith_f_op_f32(abs(-588f)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(exp2(arg_0.b));
    let var_1 = Struct_2(520f, 1i >= u_input.a.x, arg_0.b);
    global0 = array<vec3<f32>, 5>();
    let var_2 = global2.a;
    let var_3 = min(firstLeadingBit(vec4<u32>(global2.c, ~12154u | arg_2, 48070u, 40663u)), _wgslsmith_add_vec4_u32(select(firstTrailingBit(vec4<u32>(90643u, 11217u, global2.c, 4294967295u)), vec4<u32>(arg_2, 4294967295u, global2.c, global2.b), vec4<bool>(arg_0.a.b, arg_0.a.b, false, global2.a)), ~vec4<u32>(4294967295u, global2.c, global2.b, arg_2)) >> (vec4<u32>(1u, ~arg_2, ~global2.b, global2.b) % vec4<u32>(32u)));
    return global1[_wgslsmith_index_u32(var_3.x, 19u)];
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = func_4(Struct_3(func_2(~(~vec4<i32>(35612i, u_input.b, u_input.a.x, u_input.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f) + func_2(u_input.a).a)))), !select(select(select(vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), vec4<bool>(true, global2.a, true, global2.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false)), select(vec4<bool>(global2.a, global2.a, false, global2.a), vec4<bool>(global2.a, false, true, arg_0.a), vec4<bool>(global2.a, global2.a, false, global2.a)), vec4<bool>(global2.a, true, true, arg_0.a)), select(vec4<bool>(global2.a, global2.a, global2.a, false), select(vec4<bool>(false, arg_0.a, true, arg_0.a), vec4<bool>(true, true, false, false), false), !vec4<bool>(true, arg_0.a, true, false)), select(!vec4<bool>(arg_0.a, arg_0.a, global2.a, false), !vec4<bool>(true, false, arg_0.a, global2.a), true)), ~29003u);
    var var_1 = (-reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b), vec4<i32>(2147483647i, -14686i, -4032i, -27083i))) | -9325i) ^ firstTrailingBit(u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-110f)) - _wgslsmith_f_op_f32(ceil(-1109f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 1108f)) + _wgslsmith_f_op_f32(floor(-1124f))) + _wgslsmith_f_op_f32(select(-134f, 1f, false)))));
    global0 = array<vec3<f32>, 5>();
    var_0 = func_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2))), arg_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-625f)), var_2))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), -1207f) * -603f)), select(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false)), vec4<bool>(arg_0.a, true, global2.a, _wgslsmith_f_op_f32(f32(-1f) * -1139f) != _wgslsmith_f_op_f32(step(var_2, var_2))), !vec4<bool>(arg_0.a, true, true, var_2 < 1517f)), ~((~global2.b & (arg_0.b >> (global2.c % 32u))) >> (1u % 32u)));
    return countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b, firstTrailingBit(4294967295u), ~_wgslsmith_clamp_u32(95515u, 36094u, 0u), firstLeadingBit(arg_0.b) & firstTrailingBit(26640u)), ~firstLeadingBit(~vec4<u32>(82497u, arg_0.b, global2.b, 1u))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_2 {
    global0 = array<vec3<f32>, 5>();
    let var_0 = vec4<bool>(arg_0, !global2.a, false, false);
    let var_1 = func_4(arg_3, select(!select(!var_0, var_0, select(vec4<bool>(global2.a, arg_0, arg_0, global2.a), var_0, false)), !vec4<bool>(false, false, any(vec4<bool>(arg_3.a.b, global2.a, false, arg_0)), !var_0.x), var_0), ~arg_2.x);
    global1 = array<Struct_4, 19>();
    let var_2 = -26948i;
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(2147483647i);
    let var_1 = func_5(true, 974f, ~func_1(Struct_1(global2.a, _wgslsmith_div_u32(27409u, global2.c), global2.c)), Struct_3(func_2(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, -1i, u_input.b), 44941i, select(0i, u_input.a.x, true), min(u_input.b, u_input.b))), -109f));
    global2 = Struct_1(false, (global2.c & 4294967295u) ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(func_1(Struct_1(var_1.b, global2.b, 1u)), vec4<u32>(global2.c, global2.c, global2.b, 90378u)), 4294967295u), global2.b);
    global2 = Struct_1(any(select(select(!vec4<bool>(global2.a, true, false, var_1.b), !vec4<bool>(global2.a, var_1.b, var_1.b, false), any(vec2<bool>(var_1.b, global2.a))), !(!vec4<bool>(global2.a, true, false, false)), select(vec4<bool>(var_1.b, false, global2.a, global2.a), select(vec4<bool>(var_1.b, false, true, var_1.b), vec4<bool>(global2.a, global2.a, false, true), vec4<bool>(false, false, var_1.b, false)), var_1.c > 668f))), global2.b, global2.b);
    let var_2 = vec2<bool>(!(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(floor(580f))) < 762f), func_2(u_input.a << (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2.b, global2.b, global2.b), vec4<u32>(global2.b, global2.c, global2.b, 5437u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.c, 19486u, 40447u, 0u), vec4<u32>(global2.b, 920u, 0u, global2.b)), _wgslsmith_div_vec4_u32(vec4<u32>(global2.c, 21064u, global2.c, 4294967295u), vec4<u32>(global2.b, global2.c, global2.c, global2.c))) % vec4<u32>(32u))).b);
    global1 = array<Struct_4, 19>();
    let var_3 = -1280i;
    var var_4 = firstLeadingBit(min(~(~1u), _wgslsmith_mult_u32(~global2.b, _wgslsmith_add_u32(global2.b, global2.c))));
    let var_5 = Struct_1(false || any(!vec4<bool>(var_2.x, var_1.b, true, var_2.x)), _wgslsmith_add_u32(~firstLeadingBit(select(global2.b, 5808u, false)), ~global2.c), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -694f, var_1.a) * global0[_wgslsmith_index_u32(global2.b, 5u)]) * _wgslsmith_f_op_vec3_f32(vec3<f32>(2250f, var_1.a, var_1.c) + vec3<f32>(-652f, var_1.a, -1307f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(924f, -543f, -142f))))), func_2(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_3, -1i, u_input.b, -20211i), abs(vec4<i32>(17980i, var_3, var_3, u_input.b)))).c, vec4<u32>(_wgslsmith_mult_u32(var_5.c, ~global2.b), min(0u, 2632u), 1u, ~max(~var_5.b, ~var_5.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * -974f))) * func_2(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, -1i, var_3), vec4<i32>(u_input.b, var_3, var_3, -17717i))).a), ~(~reverseBits(~11115u)));
}

