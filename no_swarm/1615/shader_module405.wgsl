struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(179f, 759f));
    let var_1 = _wgslsmith_mult_i32(u_input.c, u_input.b);
    let var_2 = all(select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false), any(vec3<bool>(false, true, false))), vec2<bool>(true, true), vec2<bool>(false, true)));
    let var_3 = ~vec3<u32>(u_input.a, 119046u, _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, 72723u, 91831u))), vec3<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_div_u32(42456u, u_input.a))));
    global1 = array<vec4<bool>, 17>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -1145f));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    var var_0 = _wgslsmith_mult_u32(~(~23219u), ~4294967295u);
    var_0 = countOneBits(u_input.a);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(356f - 1360f), -1133f)) * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1666f)) * -1000f)))));
    return Struct_1(~(~(~vec2<u32>(35226u, u_input.a))), select(vec2<i32>(-firstTrailingBit(2147483647i), u_input.b), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(-1i, -24956i)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-14249i, -12495i))), vec2<i32>(15604i, ~u_input.c)), !vec2<bool>(u_input.a >= u_input.a, true)), false && !(true && any(global1[_wgslsmith_index_u32(258u, 17u)])));
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = vec3<i32>(-1i) * -(~vec3<i32>(u_input.b, var_0.b.x, -1i));
    global1 = array<vec4<bool>, 17>();
    var var_2 = _wgslsmith_f_op_f32(max(357f, 113f));
    return Struct_4(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a, var_0.a.x, 29755u, 1u)), ~(~vec4<u32>(0u, u_input.a, var_0.a.x, 1u))), 16u)], ~vec3<i32>(14478i, 19927i, 0i & -var_1.x), Struct_3(global0[_wgslsmith_index_u32(10706u, 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-454f, -485f, var_0.c)) + _wgslsmith_f_op_f32(-184f - _wgslsmith_f_op_f32(-301f + 208f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4) -> Struct_2 {
    var var_0 = arg_2.a;
    var_0 = func_1(var_0.a.c).c.a;
    var var_1 = !(!select(vec3<bool>(func_1(var_0.a.c).a.a.c, arg_2.c.a.a.c | arg_1.c, true), vec3<bool>(false, var_0.a.a.x < arg_2.a.a.a.x, func_1(false).c.a.a.c), var_0.c.c));
    var var_2 = Struct_3(func_1(var_1.x).a, 1029f);
    var var_3 = _wgslsmith_mod_vec4_i32(abs(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-51982i, 3786i, arg_2.c.a.d.x, 0i), vec4<i32>(9948i, u_input.c, arg_1.b.x, var_0.a.b.x), true) & select(vec4<i32>(-41023i, 8443i, 5277i, arg_1.b.x), vec4<i32>(var_0.c.b.x, arg_2.c.a.a.b.x, 30011i, -2147483647i), true), -vec4<i32>(1i, -2147483647i, -2147483647i, 1i))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, var_2.a.c.b.x, u_input.c, arg_2.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(24867i, -24952i, var_2.a.d.x, var_2.a.c.b.x), vec4<i32>(u_input.b, 1i, -53736i, 1503i))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.b.x, -1i, -7836i, 4787i), vec4<i32>(var_2.a.c.b.x, u_input.c, u_input.c, -1i)), vec4<i32>(var_0.a.b.x, 10931i, 24636i, -1i))) & min(vec4<i32>(~arg_2.c.a.d.x, ~38116i, -4590i, max(-2147483647i, 2147483647i)), ~vec4<i32>(39161i, -12225i, var_2.a.c.b.x, arg_2.b.x)));
    return Struct_2(Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.a.x, 977u) | vec3<u32>(1u, var_2.a.a.a.x, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.a.a.x, 1u, u_input.a), vec3<u32>(1u, var_0.a.a.x, 1u))), arg_0), vec2<i32>(1i, min(0i, u_input.c)) | max(_wgslsmith_mult_vec2_i32(vec2<i32>(var_3.x, u_input.b), arg_1.b), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 2147483647i), arg_2.a.a.b)), !(!var_0.c.c)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1380f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a.b.x, _wgslsmith_f_op_f32(trunc(1416f)))) + -742f), arg_2.a.b.x, var_0.b.x), func_1(var_1.x).a.a, vec3<i32>(-1i, (var_3.x | -18802i) | -var_0.c.b.x, abs(1i)));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = arg_1.b.wyz;
    let var_1 = abs(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~arg_2, select(countOneBits(vec3<u32>(20282u, 60933u, arg_2.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.c.a.x, u_input.a, arg_1.a.a.x), vec3<u32>(arg_1.a.a.x, arg_2.x, u_input.a)), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_1.c.c, arg_0), arg_0))), ~vec3<u32>(26472u, arg_1.a.a.x, countOneBits(arg_2.x))));
    let var_2 = -2147483647i;
    global1 = array<vec4<bool>, 17>();
    let var_3 = vec4<u32>(35575u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~arg_1.a.a, ~(arg_2.xy | vec2<u32>(20899u, var_1.x))), reverseBits(select(vec2<u32>(1u, 23061u), vec2<u32>(arg_2.x, 4294967295u), vec2<bool>(true, arg_0))) & vec2<u32>(u_input.a, 17978u | u_input.a)), arg_1.c.a.x, max(_wgslsmith_div_u32(4294967295u, 1u), u_input.a));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    let var_0 = vec3<f32>(585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(true, func_4(~u_input.a, Struct_1(vec2<u32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.c), true), func_1(false)), vec3<u32>(func_2().a.x, firstTrailingBit(u_input.a), _wgslsmith_sub_u32(u_input.a, 4294967295u)), vec3<i32>(7678i, -12591i, -3881i)))), -1026f);
    global0 = array<Struct_2, 16>();
    let var_1 = ~(~vec4<u32>(u_input.a, firstTrailingBit(u_input.a), _wgslsmith_div_u32(u_input.a, firstLeadingBit(4294967295u)), 41043u | max(u_input.a, u_input.a)));
    var var_2 = vec2<bool>(var_0.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(587f * 447f) - var_0.x)), -u_input.c < firstLeadingBit(1i));
    let var_3 = func_4(1u, Struct_1(~var_1.zy, _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.b, -20548i), ~func_2().b), any(select(select(vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x)), vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false)))), Struct_4(global0[_wgslsmith_index_u32(0u, 16u)], vec3<i32>(1i, u_input.c, u_input.c), Struct_3(global0[_wgslsmith_index_u32(var_1.x << (u_input.a % 32u), 16u)], var_0.x)));
    let var_4 = _wgslsmith_f_op_f32(var_0.x * var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1078f, _wgslsmith_f_op_f32(round(var_0.x)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(999f + var_0.x), _wgslsmith_div_f32(501f, var_3.b.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_4)), _wgslsmith_f_op_f32(var_3.b.x + 665f))), _wgslsmith_f_op_f32(func_4(31695u, var_3.c, Struct_4(Struct_2(Struct_1(vec2<u32>(18962u, 1u), vec2<i32>(49550i, -2147483647i), var_2.x), vec4<f32>(var_4, -718f, 1645f, var_4), Struct_1(vec2<u32>(4294967295u, 4294967295u), var_3.a.b, var_3.c.c), vec3<i32>(30895i, -57002i, var_3.c.b.x)), vec3<i32>(u_input.c, -1i, var_3.d.x), Struct_3(Struct_2(var_3.a, var_3.b, Struct_1(var_1.xy, var_3.a.b, var_3.a.c), var_3.d), var_4))).b.x * var_4)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1671f + _wgslsmith_f_op_f32(step(var_3.b.x, _wgslsmith_f_op_f32(abs(871f)))))), var_0);
}

