struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, -894f, -1695f);

var<private> global1: Struct_2;

var<private> global2: array<vec4<i32>, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec2<i32> {
    global2 = array<vec4<i32>, 13>();
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, 1182f, global0.x));
    var var_0 = Struct_3(-509f, Struct_1(0u, false, countOneBits(select(global1.b, ~global1.b, true))));
    var var_1 = _wgslsmith_dot_vec4_i32(countOneBits(global2[_wgslsmith_index_u32(22377u, 13u)]), vec4<i32>(~(~u_input.b.x), -1i, ~countOneBits(2147483647i), ~global1.b & 1i) & firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.a, var_0.b.a, var_0.b.a), vec3<u32>(1u, var_0.b.a, 41511u)), var_0.b.a, ~97658u), 13u)]));
    var var_2 = -vec2<i32>(global1.c, (-global1.c >> ((27834u << (var_0.b.a % 32u)) % 32u)) | _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b.x, 63777i), abs(var_0.b.c)));
    return vec2<i32>(-2147483647i, i32(-1i) * -49008i) >> (((vec2<u32>(4294967295u, var_0.b.a) | (vec2<u32>(var_0.b.a, 75550u) << (select(vec2<u32>(6137u, var_0.b.a), vec2<u32>(var_0.b.a, 0u), vec2<bool>(false, var_0.b.b)) % vec2<u32>(32u)))) >> ((vec2<u32>(var_0.b.a, _wgslsmith_dot_vec2_u32(vec2<u32>(2034u, var_0.b.a), vec2<u32>(var_0.b.a, var_0.b.a))) | ~vec2<u32>(var_0.b.a, var_0.b.a)) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(171f, global0.x), 1204f)), abs(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(global1.b, arg_1.c))) << ((~arg_1.a | countOneBits(51824u ^ arg_1.a)) % 32u), abs(arg_1.c));
    let var_1 = u_input.b;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-366f + 556f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-195f, -1942f))))), global0.x, 331f);
    var var_2 = arg_0.zx;
    global1 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - var_0.a)) + var_0.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(var_0.a - var_0.a)))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_1 {
    global2 = array<vec4<i32>, 13>();
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -374f)), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(_wgslsmith_div_f32(global1.a, -1583f), -1349f))), Struct_1(arg_1.x, all(arg_2.yy), -(~1i)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(global0.x)), -1i, -2147483647i);
    global2 = array<vec4<i32>, 13>();
    global2 = array<vec4<i32>, 13>();
    return Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(countOneBits(~vec2<u32>(1u, arg_1.x))), _wgslsmith_mult_vec2_u32(abs(arg_1), ~(~arg_1))), all(vec2<bool>(true, arg_2.x || !var_0.b.b)), ~countOneBits(1i));
}

fn func_1() -> Struct_1 {
    global2 = array<vec4<i32>, 13>();
    global2 = array<vec4<i32>, 13>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.x)), global1.a)), global1.c, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, 2147483647i), 2147483647i));
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(-global1.a);
    return func_4(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), Struct_1(1u, all(vec2<bool>(true, true)), _wgslsmith_dot_vec2_i32(func_2(), u_input.b.yx << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))))), vec2<u32>(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 8147u), reverseBits(vec2<u32>(32446u, 0u))), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 30124u))))), vec4<bool>(any(vec3<bool>(true, true, all(vec2<bool>(false, false)))), true, true, select(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))), false, true)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_3 {
    global2 = array<vec4<i32>, 13>();
    global1 = Struct_2(1f, _wgslsmith_mod_i32(max(arg_2.b.c & arg_0.c, func_2().x), abs(arg_2.b.c)), _wgslsmith_mod_i32(arg_2.b.c, reverseBits(-7723i)));
    global2 = array<vec4<i32>, 13>();
    global2 = array<vec4<i32>, 13>();
    var var_0 = -global1.c;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)))), arg_2.b);
}

fn func_6(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1071f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-804f * global0.x)))))), vec2<u32>(~func_5(Struct_1(arg_0.b.a, arg_0.b.b, arg_0.b.c), vec2<bool>(false, false), arg_0).b.a, _wgslsmith_mod_u32(arg_0.b.a, ~75985u)) | select(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b.a, arg_0.b.a), vec2<u32>(22736u, arg_0.b.a)) | vec2<u32>(arg_0.b.a, 62449u), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.b.a, arg_0.b.a), vec2<u32>(arg_0.b.a, arg_0.b.a)) & _wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_0.b.a), vec2<u32>(3009u, arg_0.b.a)), !select(vec2<bool>(false, true), vec2<bool>(arg_0.b.b, arg_0.b.b), vec2<bool>(arg_0.b.b, arg_0.b.b))), vec4<bool>(_wgslsmith_mult_u32(~arg_0.b.a, arg_0.b.a ^ 10514u) != _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.b.a, arg_0.b.a, arg_0.b.a, 1u), vec4<u32>(arg_0.b.a, 6588u, arg_0.b.a, arg_0.b.a) | vec4<u32>(arg_0.b.a, 1u, 0u, arg_0.b.a)), func_1().b, false, arg_0.b.b));
    var var_1 = 1u;
    var var_2 = false;
    let var_3 = Struct_1(var_0.a, (_wgslsmith_dot_vec2_i32(u_input.d.zy, select(vec2<i32>(0i, global1.c), u_input.c, var_0.b)) << (countOneBits(func_4(966f, vec2<u32>(var_0.a, 0u), vec4<bool>(arg_0.b.b, arg_0.b.b, arg_0.b.b, arg_0.b.b)).a) % 32u)) < min(~(-20457i), arg_0.b.c), -reverseBits(abs(0i)));
    var var_4 = vec3<i32>(0i, global1.b, 2147483647i);
    return select(select(!select(vec4<bool>(false, arg_0.b.b, var_3.b, false), !vec4<bool>(var_0.b, true, false, var_0.b), vec4<bool>(var_3.b, true, false, false)), select(!vec4<bool>(true, var_3.b, false, true), !select(vec4<bool>(var_3.b, false, true, true), vec4<bool>(arg_0.b.b, false, var_3.b, true), true), true), !(!select(vec4<bool>(false, arg_0.b.b, arg_0.b.b, false), vec4<bool>(false, false, arg_0.b.b, true), var_0.b))), select(!select(select(vec4<bool>(true, arg_0.b.b, false, var_3.b), vec4<bool>(var_0.b, false, var_3.b, false), vec4<bool>(false, arg_0.b.b, var_3.b, false)), !vec4<bool>(false, false, var_3.b, false), false), !(!vec4<bool>(false, false, true, arg_0.b.b)), any(!(!vec4<bool>(false, arg_0.b.b, var_0.b, var_3.b)))), vec4<bool>(var_0.b, !(975f != arg_0.a), var_3.b, any(vec3<bool>(true, true, 1u < var_3.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_1(), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !all(vec3<bool>(true, true, false))), Struct_3(global1.a, func_4(global0.x, vec2<u32>(40314u, 49378u), vec4<bool>(false, false, true, true)))));
    var var_1 = func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 1228f) * _wgslsmith_div_f32(-506f, _wgslsmith_div_f32(698f, 1350f))), vec2<u32>(~_wgslsmith_mult_u32(12921u, 52386u), ~(~4294967295u)), func_6(Struct_3(func_5(Struct_1(26949u, var_0.x, global1.b), var_0.wz, Struct_3(global1.a, Struct_1(3638u, var_0.x, u_input.d.x))).a, func_1()))), vec2<bool>(any(!select(var_0.ww, vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x))), true), Struct_3(-827f, func_4(_wgslsmith_f_op_f32(sign(2477f)), ~(~vec2<u32>(0u, 31342u)), !vec4<bool>(var_0.x, var_0.x, true, true))));
    var var_2 = ~(~(~var_1.b.a));
    let var_3 = 4936u;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, func_5(Struct_1(var_3, var_0.x, 30431i), !vec2<bool>(var_1.b.b, var_0.x), Struct_3(var_1.a, Struct_1(0u, var_1.b.b, 23188i))).a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0.x, 873f)), global1.a, true)))));
    let var_5 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(23326i, global1.b), ~abs(global1.c)) >> (~(~var_3) % 32u), global1.c, firstTrailingBit(func_1().c), ~(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a);
}

