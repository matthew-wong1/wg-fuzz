struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(-45920i, 0i), true);

var<private> global1: array<bool, 32> = array<bool, 32>(true, false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, true, true, true, true, true, true, false, false, true, false, true, true, true, true, false, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    global1 = array<bool, 32>();
    var var_0 = Struct_1(firstTrailingBit(~max(vec3<i32>(1i, global0.a.x, arg_0.x), firstLeadingBit(vec3<i32>(arg_0.x, 1i, global0.a.x)))), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(trunc(-320f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -327f))));
    let var_1 = min(u_input.a.x, ~(~u_input.a.x) ^ abs(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x))) > 42604u;
    global0 = Struct_3(vec2<i32>(~abs(var_0.a.x), select(_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(-26038i, -20586i, global0.a.x, 18341i)) >> (_wgslsmith_sub_u32(u_input.a.x, 8422u) % 32u), global0.a.x, false)), !any(!select(vec2<bool>(var_1, false), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], false), var_0.b)));
    var var_2 = -26269i;
    return _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1644f, arg_1.x))), var_0.c.x, arg_2.a.x <= _wgslsmith_clamp_i32(-2147483647i, arg_0.x, 0i))), _wgslsmith_div_f32(1002f, _wgslsmith_f_op_f32(-var_0.c.x)))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_3(global0.a, false);
    global1 = array<bool, 32>();
    global0 = Struct_3(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.a, global0.a, vec2<i32>(var_0.a.x, -2147483647i)), -global0.a) ^ reverseBits(global0.a), vec2<i32>(countOneBits(select(global0.a.x, global0.a.x, global0.b)), -1i), vec2<i32>(var_0.a.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, var_0.a.x), var_0.a.x))), !global1[_wgslsmith_index_u32(57879u, 32u)]);
    global1 = array<bool, 32>();
    var_0 = Struct_3(vec2<i32>(-1i, firstLeadingBit(_wgslsmith_add_i32(-5942i, 10351i) >> (firstLeadingBit(6547u) % 32u))), global0.b);
    return Struct_3(~(-max(vec2<i32>(-8666i, global0.a.x), -var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2488f, 1444f)) * _wgslsmith_f_op_f32(-1000f * 1911f))) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(~vec4<i32>(1i, 42497i, 1i, global0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1061f, -275f, 195f, -1000f)), Struct_1(vec3<i32>(var_0.a.x, var_0.a.x, -29233i), false, vec3<f32>(-103f, -868f, 149f)))), _wgslsmith_f_op_f32(abs(-163f)))));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    let var_0 = func_2(1u);
    var var_1 = Struct_3(vec2<i32>(global0.a.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-global0.a, _wgslsmith_sub_vec2_i32(vec2<i32>(global0.a.x, var_0.a.x), vec2<i32>(var_0.a.x, global0.a.x))), _wgslsmith_mod_i32(abs(1i), _wgslsmith_sub_i32(global0.a.x, var_0.a.x)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), vec4<i32>(var_0.a.x, -24759i, 2147483647i, -15567i)))), (~u_input.a.x < u_input.a.x) & !global0.b);
    let var_2 = vec3<u32>(50245u, u_input.a.x, min(1u, min(_wgslsmith_div_u32(arg_0, 1u), 44075u) >> (18780u % 32u)));
    let var_3 = !(!vec2<bool>(1241f <= _wgslsmith_f_op_f32(floor(1000f)), all(select(vec2<bool>(global0.b, global1[_wgslsmith_index_u32(8475u, 32u)]), vec2<bool>(true, true), vec2<bool>(false, false)))));
    global1 = array<bool, 32>();
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 44295u;
    let var_1 = _wgslsmith_mult_vec3_u32(~reverseBits(vec3<u32>(~u_input.a.x, 1710u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a))), func_1(u_input.a.x));
    let var_2 = Struct_3(~_wgslsmith_clamp_vec2_i32(vec2<i32>(~global0.a.x, min(-836i, -43694i)), firstTrailingBit(~global0.a), reverseBits(global0.a)), !global0.b);
    var var_3 = Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-36772i, var_2.a.x, 15413i), vec3<i32>(global0.a.x, 29209i, global0.a.x)), -abs(vec3<i32>(-2147483647i, -65733i, -1i))) << (vec3<u32>(0u, ~1u, _wgslsmith_div_u32(u_input.a.x, ~u_input.a.x)) % vec3<u32>(32u)), !all(!(!vec2<bool>(global0.b, global1[_wgslsmith_index_u32(3019u, 32u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(136f, -607f, -323f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(820f, -560f, 527f) * vec3<f32>(1695f, 440f, 272f)) + _wgslsmith_div_vec3_f32(vec3<f32>(1393f, 1387f, -1903f), vec3<f32>(-477f, 175f, 322f)))) * vec3<f32>(-328f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(360f - -279f), _wgslsmith_f_op_f32(1225f + -1152f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1945f + -896f)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(-1026f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -666f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.c.x))) + var_3.c.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1279f, var_3.c.x), var_3.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.c.x)) + _wgslsmith_f_op_f32(729f * var_3.c.x))), _wgslsmith_f_op_f32(var_3.c.x - _wgslsmith_f_op_f32(-var_3.c.x)), _wgslsmith_f_op_f32(var_3.c.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_3.c.x, -968f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1104f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(u_input.a & countOneBits(vec3<u32>(27152u, 4294967295u, 44289u)), u_input.a), -930f, firstLeadingBit(0u), vec2<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-16676i, global0.a.x), _wgslsmith_clamp_i32(var_3.a.x, -11470i, 0i)), _wgslsmith_dot_vec2_i32(abs(var_3.a.zz), firstLeadingBit(vec2<i32>(62413i, 18957i))))));
}

