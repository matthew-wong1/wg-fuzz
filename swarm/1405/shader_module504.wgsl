struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-341f, 682f);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-1082f, -416f, -442f, 2915f), vec4<i32>(58548i, -37823i, 1i, -1i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1352f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 833f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1774f, 1738f, -1749f, -2286f) - vec4<f32>(global0.x, global0.x, 1174f, -1560f)) * _wgslsmith_f_op_vec4_f32(abs(global1.a)))))), _wgslsmith_add_vec4_i32(select(~vec4<i32>(22784i, -20460i, -7413i, 0i), vec4<i32>(~global1.b.x, global1.b.x, reverseBits(11028i), 45402i), false), max(global1.b, -(global1.b & vec4<i32>(-1i, u_input.a, 17998i, -25325i)))));
    let var_0 = 0i << (select(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(4294967295u, 9410u)), ~(~vec2<u32>(78472u, 703u))), reverseBits(~4294967295u), !arg_0.a.x & all(!arg_0.a)) % 32u);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global0.x, -1120f, 1215f)))) + global1.a), ~abs(global1.b));
    var var_1 = Struct_1(vec4<f32>(global1.a.x, global1.a.x, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global0.x)), global1.b);
    var var_2 = ~(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, _wgslsmith_div_i32(u_input.a, -6544i)), var_1.b.x));
    return _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(1u, 1u, 1u)), reverseBits(~firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 4294967295u)))) << (1u % 32u);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global0 = global1.a.zw;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.a.x)), global0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.yw * global1.a.xx) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.yx) * _wgslsmith_div_vec2_f32(vec2<f32>(314f, global1.a.x), vec2<f32>(global1.a.x, global0.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1242f, global1.a.x)))))))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(global1.a)), ~(max(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a, global1.b.x, arg_0), vec4<i32>(1i, global1.b.x, u_input.a, u_input.a)), ~vec4<i32>(2147483647i, arg_0, u_input.a, arg_0)) | ~global1.b));
    let var_1 = vec2<u32>(38555u, (~(~22768u) | func_3(Struct_2(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)))) >> (max(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 0u, 4294967295u)), ~vec3<u32>(26217u, 4367u, 4294967295u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(49700u, 4294967295u), vec2<u32>(28420u, 0u)), ~50127u)) % 32u));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), 453f, _wgslsmith_div_f32(var_0.a.x, 1017f), _wgslsmith_f_op_f32(849f * 1000f))))), global1.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(vec4<bool>(true, ~13330u == firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 17049u, 48070u), vec4<u32>(27786u, 74987u, 4294967295u, 67959u))), true, true));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(21769u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 14537u)), ~4294967295u, ~0u, ~21150u) ^ firstLeadingBit(~vec4<u32>(4294967295u, 0u, 30367u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, ~1u, select(5901u, 4294967295u, var_0.a.x), 52456u), reverseBits(vec4<u32>(0u, 22959u, 4294967295u, 42700u)))), ~vec4<u32>(1u, 1u, 1u, 1u));
    global1 = func_2(_wgslsmith_mod_i32(u_input.a ^ -1i, arg_2.b.x), Struct_2(var_0.a));
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec3_i32(arg_0.b.wyw, vec3<i32>(-46810i, 48862i, arg_1.x)), global1.b.x, _wgslsmith_dot_vec3_i32(~arg_1.zyz, arg_2.b.wxw)), vec3<i32>(i32(-1i) * -68634i, arg_2.b.x >> (0u % 32u), _wgslsmith_sub_i32(-28623i, u_input.a)) & _wgslsmith_add_vec3_i32(~global1.b.wwz, ~vec3<i32>(0i, arg_0.b.x, 0i))) & ~vec3<i32>(16988i, arg_2.b.x, func_2(arg_1.x, Struct_2(var_0.a)).b.x >> (_wgslsmith_div_u32(1u, 52605u) % 32u));
    let var_3 = ~(~(~countOneBits(vec2<u32>(62222u, 1u)))) & _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(~38034u, func_3(var_0))), vec2<u32>(abs(~4294967295u), 4013u));
    return !var_0.a;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_2(select(func_4(func_2(~global1.b.x, arg_0), abs(global1.b), func_2(global1.b.x, arg_3)), arg_3.a, arg_3.a));
    global0 = _wgslsmith_f_op_vec2_f32(floor(global1.a.ww));
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(~4294967295u, 1u, func_3(Struct_2(vec4<bool>(true, true, false, arg_0.a.x))), ~7723u), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(47894u, 1u, 7863u, 5564u))), ~vec4<u32>(1u, 1u, 1u, 1u)), select(reverseBits(~(~vec4<u32>(1u, 61215u, 24724u, 1u))), ~abs(vec4<u32>(62834u, 31036u, 4294967295u, 46545u)) ^ vec4<u32>(11526u, select(1u, 1u, true), firstTrailingBit(4294967295u), reverseBits(27758u)), vec4<bool>(!all(arg_3.a), func_4(Struct_1(vec4<f32>(global0.x, -295f, -121f, global0.x), vec4<i32>(global1.b.x, 75735i, -9180i, 28181i)), vec4<i32>(global1.b.x, -62082i, -1i, global1.b.x), func_2(-1i, arg_0)).x, arg_3.a.x, true)));
    global1 = func_2(global1.b.x, arg_3);
    return abs(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, -vec4<i32>(-func_1(Struct_2(vec4<bool>(true, true, false, true)), vec2<bool>(true, false), -2547f, Struct_2(vec4<bool>(true, false, true, true))), _wgslsmith_mod_i32(global1.b.x, global1.b.x) & max(-16600i, 1i), _wgslsmith_add_i32(global1.b.x ^ 2147483647i, global1.b.x), _wgslsmith_mult_i32(global1.b.x, global1.b.x)));
    global1 = func_2(firstLeadingBit(-global1.b.x), Struct_2(!func_4(func_2(u_input.a, Struct_2(vec4<bool>(false, true, false, true))), global1.b, Struct_1(global1.a, vec4<i32>(-24551i, u_input.a, -27720i, u_input.a)))));
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.a.x)), global1.a.x), _wgslsmith_f_op_f32(global1.a.x * 606f)))));
    global0 = vec2<f32>(global0.x, global1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1509f)) + _wgslsmith_f_op_f32(sign(global1.a.x))), 13737u, max(firstTrailingBit(min(select(vec3<u32>(108052u, 47984u, 0u), vec3<u32>(39880u, 4803u, 19452u), false), firstLeadingBit(vec3<u32>(35176u, 1u, 1u)))), ~(~(~vec3<u32>(0u, 1u, 75284u)))));
}

